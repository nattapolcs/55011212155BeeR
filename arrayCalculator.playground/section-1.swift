// Playground - noun: a place where people can play

import UIKit

class TipCslculator {
    
    //2
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    //3
    init(total:Double , taxPct:Double){
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    //4
    func calcTipWithTipPct(tipPct:Double) -> Double{
        return subtotal * tipPct
    }
    
    //1
    func returnPossibleTips() -> [Int: Double] {
        
        let possibleTipsInferred = [0.15,0.18,0.20]
        let possibleTipsExplicit:[Double] = [0.15 , 0.18,0.20]
        var numberOfItem = possibleTipsInferred.count
        
        //2
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            //3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    
    }
    
}
//6
let tipCalc = TipCslculator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()