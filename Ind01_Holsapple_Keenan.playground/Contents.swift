// Ind01_Holsapple_Keenan.playground
// Indivdiual 01 Assignment: Practicing Object Oriented Programming in Playground model of Swift
 
class Cash{
   
    // initializing array for fixed cash values
    let comparisonArrMoneyOptions:[Double] = [50.0, 20.0, 10.0, 5.0, 1.0, 0.25, 0.1, 0.05, 0.01]
    
    //property to be taken in from functions at bottom
    var moneyAmount: Double 
    
    // declaration of getter
    func getBillCountArr() -> [Int]{
        
        // empty array that will return remainder values
        
        
        var i = 0
        var billCountArr = [Int](repeating: 0, count: 9)
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

    // Setter function that reads in array value and returns moneyAmount as object of class with
    // new computed value
    func setMoneyAmount(cashCountArr: [Int]){
        
        // increment for while loop declaration
        var i = 0
        
        // if statement that determines if array size inputed from line is less than 9
        if cashCountArr.count < 9{
            moneyAmount = -1
        }
        // performs normal execution of function with valid array size
        else{
            
            // loop increments at size of array (predefined)
            while i < 9{
            
                // algorithm that adds on previous moneyAmount by the multiple of how many dollar bills exist
                moneyAmount = moneyAmount + (Double(cashCountArr[i]) * comparisonArrMoneyOptions[i])
            
                // increment of loop
                i += 1
                
            }
        }
            
    }
    
        
    // //constructor for moneyAmount property
    init(moneyAmount: Double){
        self.moneyAmount = moneyAmount
    }
}

// section for testing values of getter in class
var cash1 = Cash(moneyAmount: -1)
var cash1Getter = cash1.getBillCountArr()

var cash2 = Cash(moneyAmount: 0)
var cash2Getter = cash2.getBillCountArr()

var cash3 = Cash(moneyAmount: 84.26)
var cash3Getter = cash3.getBillCountArr()

var cash4 = Cash(moneyAmount: 32.59)
var cash4Getter = cash4.getBillCountArr()

var cash5 = Cash(moneyAmount: 69.89)
var cash5Getter = cash5.getBillCountArr()

var cash6 = Cash(moneyAmount: 95.12)
var cash6Getter = cash6.getBillCountArr()

// print statements for the getter tests
print("*************************************")
print("Printed Values for testing getters:")
print("*************************************")
print(cash1Getter)
print(cash2Getter)
print(cash3Getter)
print(cash4Getter)
print(cash5Getter)
print(cash6Getter)

// defining arrays that will be used in setter tests
let testSetterArr1 = [0, 6, 4, 2, 8, 4]
let testSetterArr2 = [1, 5, 2, 3, 1, 4, 6, 3, 0]
let testSetterArr3 = [3, 4, 2, 5, 9, 1, 5, 4, 3]
let testSetterArr4 = [4, 2, 5, 3, 2, 7, 5, 8, 2]
let testSetterArr5 = [3, 5, 6, 2, 4, 7, 2, 8, 6]
let testSetterArr6 = [6, 3, 2, 7, 8, 3, 2, 6, 7]

print("*************************************")
print("Printed Values for testing setters:")
print("*************************************")

// setter testing assignments
let cash1Setter: () = cash1.setMoneyAmount(cashCountArr: testSetterArr1)
print("Cash amount after first array setter: ", cash1.moneyAmount)
// performs getter with new money amount on object variable
cash1Getter = cash1.getBillCountArr()
print(cash1Getter)

let cash2Setter: () = cash2.setMoneyAmount(cashCountArr: testSetterArr2)
print("Cash amount after second array setter: ", cash2.moneyAmount)
cash2Getter = cash2.getBillCountArr()
print(cash2Getter)

let cash3Setter: () = cash3.setMoneyAmount(cashCountArr: testSetterArr3)
print("Cash amount after third array setter: ", cash3.moneyAmount)
cash3Getter = cash3.getBillCountArr()
print(cash3Getter)

let cash4Setter: () = cash4.setMoneyAmount(cashCountArr: testSetterArr4)
print("Cash amount after fourth array setter: ", cash4.moneyAmount)
cash4Getter = cash4.getBillCountArr()
print(cash4Getter)

let cash5Setter: () = cash5.setMoneyAmount(cashCountArr: testSetterArr5)
print("Cash amount after fifth array setter: ", cash5.moneyAmount)
cash5Getter = cash5.getBillCountArr()
print(cash5Getter)

let cash6Setter: () = cash6.setMoneyAmount(cashCountArr: testSetterArr6)
print("Cash amount after sixth array setter: ", cash6.moneyAmount)
cash6Getter = cash6.getBillCountArr()
print(cash6Getter)
