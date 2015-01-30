// Playground - noun: a place where people can play

//import UIKit
//var str = "Hello, playground"

class namePet {
    func pet(name : String){
        
        var petname = ["dog","cat","ant"]
        var foodpet = ["ตับ","ปลา","น้ำหวาน"]
        var index = -99
        
        for(var i=0;i < petname.count;i++){
            if(name==petname[i]){
                index=i
                break
            }
        }
        
        if (index == -99){
            println("Not Have Animal in zoo ")
        }
        
        println("\(name) eat \(foodpet[index])")
        
    }
    //////////////////////
    
    let pet : Dictionary<String,String> = ["ant":"sugar","dog":"กระดูก","cow":"หญ้า"]
    let input:String
    let indexs = -99
    init(user:String){
        self.input=user
        
    }
    
    func call() -> String{
        
        var ans:String = "not have animal"
        for(key,value) in pet{
            if(key == input){
                ans = value
            }
        }
    return ans
    }
    ////////////////////////////////
    func pet2(name : String){
        
        var petname = ["dog","cat","ant"]
        var foodpet = ["ตับ","ปลา","น้ำหวาน"]
        var index=0
        for(var i=0;i<petname.count;i++){
            if(name==petname[i]){
                index=i
                break
            }
            
        }
        println("\(name) eat \(foodpet[index])")
        
    }
    
}

//let name=namePet()
//name.pet("cat")
////////////////////////
let start = namePet(user: "cow")
start.call()
start.pet2("dog")
