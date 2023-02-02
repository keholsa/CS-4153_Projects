import UIKit

class Cash{
   
    // initializing array for fixed cash values
    let comparisonArrMoneyOptions:[Double] = [50.0, 20.0, 10.0, 5.0, 1.0, 0.25, 0.1, 0.05, 0.01]
    
    //property to be taken in from functions at bottom
    var moneyAmount: Double
    {
        // declaration fo getter
        get{
            
            // declaration of increment at 0 for while loop
            var i = 0
            
            // empty array that will return remainder values
            var billCountArr = [Double]()
            
            // while loop occurs for number of size in fixed array
            while i < 8{
                
                // performs a remainder check to see how many bills can fit inside of a given amount
                billCountArr[i] = self.moneyAmount.truncatingRemainder(dividingBy: comparisonArrMoneyOptions[i])
                
                // subtracts overall amount from money amount to optimise change
                moneyAmount = moneyAmount - (billCountArr[i] * comparisonArrMoneyOptions[i])
                i += 1
                
            }
            return billCountArr
        }
        set(cashCountArr){
            var i = 0
            
            while i < 8{
                i += 1
                
            }
                
        }
    }
        
        //constructor for moneyAmount property
        init(moneyAmount: Double){
            self.moneyAmount = moneyAmount
        }
}

// section for testing values of getter in class
//var cash1 = Cash(moneyAmount: -1)
//print(String(format: "%.2f", cash1.moneyAmount)
//var cash2 = Cash(moneyAmount: 0)
//print(String(format: "%.2f", cash2.moneyAmount)
//var cash3 = Cash(moneyAmout: 10.35)
//print(String(format: "%.2f", cash3.moneyAmount)
//var cash4 = Cash(moneyAmount: 32.59)
//print(String(format: "%.2f", cash4.moneyAmount)
//var cash5 = Cash(moneyAmount: 69.89)
//print(String(format: "%.2f", cash5.moneyAmount)
//var cash6 = Cash(moneyAmount: 95.11)
//print(String(format: "%.2f", cash6.moneyAmount)

// section for testing setter quantities of class
//TOOD: need to add printouts for get assignments (probably needs more code on setter part)
//let testSetterArr1 = [1, 0, 3, 2, 5, 8]
//let testSetterArr2 = [1, 5, 2, 3, 1, 4, 6, 3, 0]
//let testSetterArr3 = [3, 4, 2, 5, 9, 1, 5, 4, 3]
//let testSetterArr4 = [4, 2, 5, 3, 2, 7, 5, 8, 2]
//let testSetterArr5 = [3, 5, 6, 2, 4, 7, 2, 8, 6]
//let testSetterArr6 = [6, 3, 2, 7, 8, 3, 2, 6, 7]
