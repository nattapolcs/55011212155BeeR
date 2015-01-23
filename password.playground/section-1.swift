// Playground - noun: a place where people can play

//import UIKit

//var str = "Hello, playground"


class userpassword {
    
    let UserAndPassword:[String:String]=["beer":"123456","kuroky":"5555","xboct":"9999"]
    let userInput:String
    
    init(user:String){
        self.userInput=user
    }
    
    func cal() -> String {
        
        var ans:String = " "
        for(key,value) in UserAndPassword{
            if(key==userInput){
                ans=value
            }
        }
        return ans
    }
    
}

let start = userpassword(user: "beer")
start.cal()


println()

