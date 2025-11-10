
class beerManager {
    
    static let shared = beerManager()
    
    private init () {}
    
    let totalAmountBeerOne = 5
    let totalAmpuntBeerTwo = 20
    let totalAmountBeerThree = 25
    
    var beers : [Beer] = [
        Beer(name: "Corona Extra", price: 5.0, totalAmount: 5, soldQuantity: 0, totalSold: 0),
        Beer(name: "Kriek Lambic Cherry", price: 6.0, totalAmount: 20, soldQuantity: 0, totalSold: 0),
        Beer(name: "Kronenbourg 1664 Blanc", price: 5.5, totalAmount: 25, soldQuantity: 0, totalSold: 0)
    ]
    
    func open() {
        self.beers[0].totalAmount = self.totalAmountBeerOne
        self.beers[1].totalAmount = self.totalAmpuntBeerTwo
        self.beers[2].totalAmount = self.totalAmountBeerThree
        
        self.beers[0].totalSold = 0
        self.beers[1].totalSold = 0
        self.beers[2].totalSold = 0
    }
    
    func dayIncome() -> String {
        
        let dayIncome = Double(self.beers[0].totalSold) * self.beers[0].price + Double(self.beers[1].totalSold) * self.beers[1].price + Double(self.beers[2].totalSold) * self.beers[2].price
        
        let text = """
            Total sold : 
            \(beers[0].name) : \(beers[0].totalSold) bottles
            \(beers[1].name) : \(beers[1].totalSold) bottles
            \(beers[2].name) : \(beers[2].totalSold) bottles
            Total income per day : \(dayIncome)
            """
        
        return text
    }
    
    func sellBeer() -> String {
        var text = ""
        var soldPrice = 0.0
        
        for beer in beers {
            beer.sellBeer()
            
            text = text + "\(beer.name) : \(beer.soldQuantity) * \(beer.price) = \(beer.getSoldPrice())$\n"
            soldPrice = soldPrice + beer.getSoldPrice()
        }
        
        beers[0].soldQuantity = 0
        beers[1].soldQuantity = 0
        beers[2].soldQuantity = 0
        
        return text + "Total amount : \(soldPrice)"
        
    }
    
}
