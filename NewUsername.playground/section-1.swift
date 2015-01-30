// Playground - noun: a place where people can play
//import UIKit
//var str = "Hello, playground"

class IDPASS {
    var userpassword:Dictionary<String , String>=["beer":"123456","bow":"999555111","kok":"789456123"]
    
    func check(name:String){
        if userpassword.isEmpty{
            println("the Username and Password is Empty")
        }else{
            println("the Username and Password is not Empty")
        }
        
    }
    //////
    
    let userInput:String
    let passInput:String
    let userchang:String
    let passchang:String
    
    init(user:String,pass:String){
        self.userInput=user
        self.passInput=pass
        self.userchang=user
        self.passchang=pass
        
    }
    
    func addUser(user:String,pass:String){
        userpassword[user]=pass
    }
    
    /////
    
    func updateData(userchang:String,passchang:String){
        if let oldvalue = userpassword.updateValue(passchang, forKey: userchang){
            println("The old value for data was \(oldvalue).")
        }
    }
    
    func delet(userDel:String){
        userpassword[userDel]=nil
        
    }
    
    func search(user:String){
        for(key,value)in userpassword{
            if(key==user){
                println("YES is \(key)")
            }
        }
    }
    
    func login(user:String,pass:String){
        for(key,value)in userpassword{
            if(user==key && pass==value){
                println("Login complete")
            }else{
                println("Login not complete")
            }
        }
        
    }
    
}

let start = IDPASS(user: " ", pass: " ")
// addUser
start.addUser("navi", pass: "99999")
// updateuser
start.updateData("beer", passchang: "55011212155")
// serach
start.search("navi")
//delete
start.delet("kok")
//login
start.login("beer", pass: "55011212155")




























