//
//  TipCalculatorModel.swift
//  TipCaculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//
import Foundation
class TipCalculatorModel {
    
    var total: Double
    var taxPct: Double
    var subtotal: Double{
    
        get {
        return total / (taxPct + 1)
    }
    }
    
    //3
    init(total:Double , taxPct:Double){
        self.total = total
        self.taxPct = taxPct
    }
    
    //4
    func calcTipWithTipPct(tipPct:Double) -> (tipAmt:Double, total:Double){
        let tipAmt = subtotal * tipPct
        let finalTotal = total + tipAmt
        return (tipAmt, finalTotal)
    }
    
    //1
    func returnPossibleTips() -> [Int: (tipAmt:Double, total:Double)] {
        
        let possibleTipsInferred = [0.15,0.18,0.20]
        let possibleTipsExplicit:[Double] = [0.15 , 0.18,0.20]
       
        var retval = Dictionary<Int, (tipAmt:Double, total:Double)>()
        var numberOfItem = possibleTipsInferred.count
        //2
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            //3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
        
    }

}
