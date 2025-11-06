

import Foundation

class Beer {
    
    var name : String
    var price : Double
    var totalAmount : Int
    var soldQuantity : Int
    var totalSold : Int
    
    init(name: String, price: Double, totalAmount: Int, soldQuantity: Int, totalSold : Int) {
        self.name = name
        self.price = price
        self.totalAmount = totalAmount
        self.soldQuantity = soldQuantity
        self.totalSold = totalSold
    }
    
    func plusOneBeer() -> String {
        if self.totalAmount > 0 {
            self.soldQuantity += 1
            self.totalAmount -= 1
            return "Quantity : \(self.soldQuantity)"
        } else {
            return "No more beer! Come tomorrow"
        }
    }
    
    func minusOneBeer() -> String {
        if self.soldQuantity > 0 {
            self.soldQuantity -= 1
            self.totalAmount += 1
            return "Quantity : \(self.soldQuantity)"
        } else {
            return "Quantity can not be negative"
        }
        
    }
    
    func sellBeer() {
        self.totalSold = self.totalSold + self.soldQuantity
    }
    
    func getSoldPrice() -> Double {
        let total = Double(self.soldQuantity) * self.price
        return total
    }
}
