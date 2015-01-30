// Playground - noun: a place where people can play

//import UIKit

//var str = "Hello, playground"


class namePet {
   func pet(name : String){
        
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

    let pet : Dictionary<String,String> = ["Ant":"น้ำหวาน","Cow":"หญ้า","Dog":"กระดูก"]
    let input:String
    
    init(user:String){
        self.input=user
    }
    
    func cal() -> String {
        
        var ans:String = " "
        for(key,value) in pet{
            if(key==input){
                ans=value
            }
        }
        return ans
    }
}


//let names=namePet()
//names.pet("cat")
//names.pet2("")
let start = namePet(user: "Ant")
start.cal()

