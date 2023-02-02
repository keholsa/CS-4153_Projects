import UIKit

class Cash{
    //placeholder amount? Not really sure what program is supposed to do still...
    let comparisonArrMoneyOptions:[Double] = [50.0, 20.0, 10.0, 5.0, 1.0, 0.25, 0.1, 0.05, 0.01]
    var moneyAmount: Double
    {
        get{
            var i = 0
            
            var billCountArr = [Double]()
            while i < 8{
                billCountArr[i] = self.moneyAmount.truncatingRemainder(dividingBy: comparisonArrMoneyOptions[i])
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


var test = Cash(moneyAmount: 57.6)
