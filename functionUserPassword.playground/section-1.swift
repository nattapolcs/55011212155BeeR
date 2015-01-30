// Playground - noun: a place where people can play

//import UIKit
//var str = "Hello, playground"

class idpass {
    var userpassword:Dictionary<String , String> = ["Navi":"123456","Beer":"55011212155","kuroky":"9999999"]
    
    
    func check(name:String){
        if userpassword.isEmpty{
            println("the Username and Password is Empty")
        }else{
            println("the Username and Password is not Empty")
        }
        
    }
    //////////////
    let userInput:String
    let inputPass:String
    
    init(user:String , pass:String){
        self.userInput=user
        self.inputPass=pass
        self.userchang=user
        self.Passchang=pass
    }
    
    func add(user:String,pass:String){
        userpassword[user]=pass
        
    }
    ////////////////
    let userchang:String
    let Passchang:String

    
    func update(Passchang:String,userchang:String) {
        
        if let oldvalue = userpassword.updateValue(Passchang, forKey:userchang){
            println("The old value for data was \(oldvalue).")
            
        }
    }
    
    func delet(userDel:String) {
        
    /*    if let oldvalue = userpassword.updateValue(Passchang, forKey:userchang){
            println("The old value for data was \(oldvalue).")
            
        }
        return ""*/
        userpassword[userDel] = nil
    }
    func ser(user:String){
        for(key,value) in userpassword{
            if(key==user){
                println("Yes\(value)")
            }
        }
        
    }
    
    
}

//let chk=idpass()
//chk.check("")

let start = idpass(user: "Beer",pass: "55555")
//start.add("tttt",pass :"123456")
//start.update("5555", userchang: "Beer")
//start.ser("Beer")
//start.delet("Beer")






