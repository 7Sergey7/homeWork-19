//
//  main.swift
//  homeWork 19
//
//  Created by Seroj on 08.07.22.
//

import Foundation

/* homeWork 19.1
 Ստեղծել բազային (base) class Person հետևյալ փրոփրտիով name, Ստեղծել class Chef որը կժառանգվի Person -ից և ունի հետևյալ փրոփրտիները restaurant, phoneNumber, Ստեղծել class Developer որը կժառանգվի Person -ից և ունի հետևյալ փրոփրտիները office, phoneNumber: Ստեղծել  Chef և Developer կլասներոց հինգական էկզեմպլյար դրանք տեղադրել մասիվի մեջ (բոլորը նույն մասիվի մեջ) ցիկլով անցնել էկզեմպլյարների վրայով և տպել էկզեմպլյարների name փրոփրտին, աշխատանքի վայրը և հեռախոսահամարը։
 */

class Person {
    
    var name: String
    
    init (name: String) {
        self.name = name
    }
}

class Chef: Person {
    
    var restaurant: String
    var phoneNumber: String

    init(restaurant: String, phoneNumber: String, name: String) {
        self.restaurant = restaurant
        self.phoneNumber = phoneNumber
        super.init(name: name)
    }
}

class Developer: Person {
    
    var office: String
    var phoneNumber: String
    
    init(office: String, phoneNumber: String, name: String) {
        self.office = office
        self.phoneNumber = phoneNumber
        super.init(name: name)
    }
}

let chef1 = Chef(restaurant: "Sherep", phoneNumber: "077993842", name: "Armen")
let chef2 = Chef(restaurant: "Corona", phoneNumber: "093787765", name: "Marat")
let chef3 = Chef(restaurant: "Cosmos", phoneNumber: "033667787", name: "Alik")
let chef4 = Chef(restaurant: "Tashir", phoneNumber: "044127765", name: "Goga")
let chef5 = Chef(restaurant: "Dvin", phoneNumber: "095779912", name: "Edik")

let dev1 = Developer(office: "MentorMate", phoneNumber: "099887767", name: "Aharon")
let dev2 = Developer(office: "Hyperlink", phoneNumber: "077654598", name: "Astxik")
let dev3 = Developer(office: "Netguru", phoneNumber: "033565643", name: "Mamikon")
let dev4 = Developer(office: "INOXOFT", phoneNumber: "099349909", name: "Alina")
let dev5 = Developer(office: "Scopic", phoneNumber: "077889909", name: "Axasik")

let allInOne: [Person] = [chef1, chef2, chef3, chef4, chef5, dev1, dev2, dev3, dev4, dev5]

for iter in allInOne {
    if iter is Chef {
        let myChef = iter as! Chef
        print("phoneNumber: \(myChef.phoneNumber) | name: \(myChef.name) | restaurant: \(myChef.restaurant)n")
        
    }
        
    
    if iter is Developer {
        let myDev = iter as? Developer
        print("office: \(myDev?.office) | name: \(myDev!.name) | phoneNumber: \(myDev?.phoneNumber)")
    }
}

/* homeWork 19.2
 Ստեղծել մասիվ Any որը պետք է պարունակի swift -ի բազային տիպերով ստեղծված արժեքներ Int, Double, Float, String
  ցիկլով տպել այդ արժեքները։
 */

var arr: [Any] = [1, 1.3, 1.2, "string"]

for item in arr {
    print(item)
}

/* homeWork 19.3
 Int-ի համար գրել Extension
 - plus(r: Int)
 - minus(r: Int)
 */

extension Int {
    
    func plus(r: Int) -> Int {
        return self + r
    }
    
    func minus(r: Int) -> Int {
        return self - r
    }
}

var someInt = 2

print(someInt.plus(r: 5))
print(someInt.minus(r: someInt))

/*
 Double համար գրել Extension
 - plus(r: Double)
 - minus(r: Double)
 */

extension Double {
    
    func plus(r: Double) -> Double {
        return self + r
    }
    
    func minus(r: Double) -> Double {
        return self - r
    }
}

var someDouble = 1.2

print(someDouble.plus(r: 1))
print(someDouble.minus(r: 0.5))

