

class Cash{
   
    // initializing array for fixed cash values
    let comparisonArrMoneyOptions:[Double] = [50.0, 20.0, 10.0, 5.0, 1.0, 0.25, 0.1, 0.05, 0.01]
    
    //property to be taken in from functions at bottom
    var moneyAmount: Double
    
    // declaration of getter
    func getBillCountArr() -> [Int]{
        
        // empty array that will return remainder values
        
        
        var i = 0
        var billCountArr = [0,0,0,0,0,0,0,0,0]
        let emptyIntArr = [Int]()
        

        //while loop occurs for number of size in fixed array
        while i < 9{
            
            
            // performs a division check to see how many bills can fit inside of a given amount
            //will also round to floor for int value return in array
            billCountArr[i] = Int(moneyAmount / comparisonArrMoneyOptions[i])
            
            
            // subtracts overall amount from money amount to optimise change
            moneyAmount = moneyAmount - (Double(billCountArr[i]) * comparisonArrMoneyOptions[i])
            
            //while loop incrememnt
            i += 1
            
            // error if money amount entered is 0
            if moneyAmount < 0{
                return emptyIntArr
            }
            
        }
        
        // returns integer values
        return billCountArr
    }

        // set(cashCountArr){
        //     var i = 0
            
        //     while i < 8{
        //         i += 1
                
        //     }
                
        // }
    
        
        //constructor for moneyAmount property
        init(moneyAmount: Double){
            self.moneyAmount = moneyAmount
        }
}

// section for testing values of getter in class
var cash1 = Cash(moneyAmount: -1)
var cash1Getter = cash1.getBillCountArr()
print(cash1Getter)

var cash2 = Cash(moneyAmount: 0)
var cash2Getter = cash2.getBillCountArr()
print(cash2Getter)

var cash3 = Cash(moneyAmount: 84.26)
var cash3Getter = cash3.getBillCountArr()
print(cash3Getter)

var cash4 = Cash(moneyAmount: 32.59)
var cash4Getter = cash4.getBillCountArr()
print(cash4Getter)

var cash5 = Cash(moneyAmount: 69.89)
var cash5Getter = cash5.getBillCountArr()
print(cash5Getter)

var cash6 = Cash(moneyAmount: 95.12)
var cash6Getter = cash6.getBillCountArr()
print(cash6Getter)

// section for testing setter quantities of class
//TOOD: need to add printouts for get assignments (probably needs more code on setter part)
//let testSetterArr1 = [1, 0, 3, 2, 5, 8]
//let testSetterArr2 = [1, 5, 2, 3, 1, 4, 6, 3, 0]
//let testSetterArr3 = [3, 4, 2, 5, 9, 1, 5, 4, 3]
//let testSetterArr4 = [4, 2, 5, 3, 2, 7, 5, 8, 2]
//let testSetterArr5 = [3, 5, 6, 2, 4, 7, 2, 8, 6]
//let testSetterArr6 = [6, 3, 2, 7, 8, 3, 2, 6, 7]
