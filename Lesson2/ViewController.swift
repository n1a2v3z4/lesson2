//
//  ViewController.swift
//  Lesson2
//
//  Created by Cергей Иванович on 21.07.21.
//

import UIKit

class ViewController: UIViewController {

  
    
   
    var variable: Int = 123
    
    var string: String = "asd\nйцу"  //перевод на новую строку
   
var stringVariable: String = """
    qwe
    sda
    fvxz
    erg
    """
    //все значения с новой строки
    
    var doubleVariable = 1.234
    
    let z: Int8 = 127 // от -128 до 128 = 256
    
    let z1: Int8 = 125
    
    var charVariable: Character = "a"
    
    var boolVariable: Bool = true
    
   
  
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    print (string)
        print (stringVariable)
        
        let equalVariable: Bool =  z != z1 //сравнение
        
        print (equalVariable, z1) //вывод нескольких переменных через пробел
    
      
    
        
        let string1: String = "123"
        let int1: Int = Int(string1)!    //строку переделали в
        print (int1)
        
        
        let double: Double = 123.213234231324232
        let float: Float = Float(double)       //из double перевели во float
        
        print (float)
        
        
        let int2: Int = 123
        let float2: Float = 123
        let double2: Double = Double(int2) / Double(float2)
        print(double2)
    
    
        switch "1234"{
        case "1234": print (1234)
        case "123": print (123)
        default: print ("нет значения")
        }
    
    
    var realName = "Nikolay"
        var name = "Nikolay"
    
        
        switch (realName) {
        case name: let nameFemely = realName + "Xrutskiy"
            print (nameFemely)
        case "nik": "не мое"
        default: "не мое имя"  } //или break вместо default для выхода из switch
    
    
   //  || оператор или.   && оператор и
        
        if !("123" == "123") {  //если они не равны   или 123 != 123
            print ("не равно")
        }
    
   let age = 23
        
        
        switch (age) {
        case 0..<10: print ("ребенок")
        case 10..<18: print ("подросток")
        case 18..<30: print ("молодой")
        case 30..<60: print ("взрослый")
        default:
            print ("пожилой")
        }
    
       
        
    }


}


