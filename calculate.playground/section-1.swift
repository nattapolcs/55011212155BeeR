// Playground - noun: a place where people can play

//import UIKit

//var str = "Hello, playground"

class calculates {
    
    
    func Cal(num1:Double,num2:Double,type:Double) -> Double{
       
       var ans:Double=0
       var result:String = ""
        
        if(type == 1){
            ans=num1+num2
        }
        if(type == 2){
            ans=num1-num2
        }
        if(type == 3){
            ans=num1*num2
        }
        if(type == 4){
            ans=num1/num2
            
        }
        if(type == 5){
            ans=num1%num2
        }
        
        return ans
    }
}
// 1= sum
// 2= del
// 3= mul
// 4= div
// 5= mod
let valuse = calculates()
valuse.Cal(5, num2: 5, type: 2)
