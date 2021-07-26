//
//  ViewController.swift
//  Lesson2
//
//  Created by Cергей Иванович on 21.07.21.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        summOfIntegerAndDecimalPartOfNumber()
        findIsNumberOdd()
        findIsYearLeap()
    }
    
    
    func summOfIntegerAndDecimalPartOfNumber() {
        /* Задача 1. Дается два дробных числа. Нужно найти сумму их целых частей и сумму дробных частей.
         Пример:
         
         Дано:
         число1 = 9.2
         число2 = 1.5
         
         В результате получаем:
         суммаДробныхЧастей: 7
         суммаЦелыхЧастей: 10
         */
        let number1 = 9.2
        let number2 = 1.56
        let summOfInteger = Int(number1) + Int(number2)
        let numberString1 = String(number1)
        let numberString2 = String(number2)
        let massNumber1 = numberString1.components(separatedBy: ".")
        let massNumber2 = numberString2.components(separatedBy: ".")
        let summOfDecimal = Int(massNumber1 [1])! + Int(massNumber2 [1])!
        print ("сумма целых частей \(summOfInteger)")
        print ("сумма дробных частей \(summOfDecimal)")
        
    }
    
    func findIsNumberOdd() {
        /* Задача 2. Дается целое число. Нужно проверить является ли число четным.
         Если четное, то пишем в консоль "Четное", если нечетное, то пишем "Нечетное"
         
         Пример 1:
         
         Дано:
         число = 10
         
         В результате получаем:
         "Четное"
         
         Пример 2:
         Дано:
         число = 9
         
         В результате получаем:
         "Нечетное"
         */
        let number:Double = 7
        if ((number / 2).truncatingRemainder(dividingBy: 1))*10 == 0 { //усечение остатка
            print ("\(Int(number)) - четное")
        } else {print ("\(Int(number)) - нечетное")
            
        }
    }
    
    
    
    func findIsYearLeap() {
        /* Задача 3(очень сложная). Дается целое положительное число, которое представляет собой год, нужно проверить является ли этот год високосным. Если високосный, то выводим в консоль "Високосный", если не високосный, то выводим в консоль "Обычный"
         

         Пример 1:
         
         Дано:
         год = 1980
         
         В результате получаем:
         "Високосный"
         
         Пример 2:
         Дано:
         год = 1978
         
         В результате получаем:
         "Обычный"
         */
   
    //если делится на 400 или 4 и не делится на 100
    
        let Year: Double = 700
        
        if ((Year / 400).truncatingRemainder(dividingBy: 1))*10 == 0 {
            print("\(Int(Year)) - високосный")
        } else {
            if ((Year / 100).truncatingRemainder(dividingBy: 1))*10 == 0 {
                print("\(Int(Year)) - не високосный")
            } else {
                if (Year / 4).truncatingRemainder(dividingBy: 1)*10 == 0  {
                    print("\(Int(Year)) - високосный")
                } else {
                    print("\(Int(Year)) - не високосный")
                }
        }
    }


// 2 вариант
if ((Year / 4).truncatingRemainder(dividingBy: 1)*10 == 0 && (Year / 100).truncatingRemainder(dividingBy: 1)*10 != 0) || (Year / 400).truncatingRemainder(dividingBy: 1)*10 == 0 {
    print("\(Int(Year)) - високосный")
} else
    {
    print("\(Int(Year)) - не високосный")
    }
}
}
