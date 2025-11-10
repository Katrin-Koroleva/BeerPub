
import UIKit
import SnapKit

private enum Constants {
    static let heightBig : CGFloat = 50
    static let heightSmall : CGFloat = 40
    static let squareButtonSize : CGFloat = 40
    static let resultLabelHeight : CGFloat = 140
    
    static let offsetHeight : CGFloat = 30
    static let offsetWidth : CGFloat = 90
    static let offsetBetweenButtons : CGFloat = 10
    static let safeAreaOffsetHeight : CGFloat = 10
    
    static let labelFrontSize : CGFloat = 16
    
    static let labelColor : UIColor = .cyan
    static let textColor : UIColor = .black
    static let buttonColor : UIColor = .gray
}

final class ViewController: UIViewController {
    
    // labels
    private let headerLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: Constants.labelFrontSize, weight: .bold)
        label.textColor = Constants.textColor
        label.backgroundColor = Constants.labelColor
        label.text = "Girlish FruityBeer Pub"
        return label
    }()
    
    private let beerOneLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: Constants.labelFrontSize, weight: .bold)
        label.textColor = Constants.textColor
        label.backgroundColor = Constants.labelColor
        label.text = "Corona Extra"
        return label
    }()
    
    private let beerOneQuantityLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: Constants.labelFrontSize, weight: .regular)
        label.textColor = Constants.textColor
        label.backgroundColor = Constants.labelColor
        label.text = "Quantiy : 0"
        return label

    }()
    
    private let beerTwoLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: Constants.labelFrontSize, weight: .bold)
        label.textColor = Constants.textColor
        label.backgroundColor = Constants.labelColor
        label.text = "Kriek Lambic Cherry"
        return label
    }()
    
    private let beerTwoQuantityLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: Constants.labelFrontSize, weight: .regular)
        label.textColor = Constants.textColor
        label.backgroundColor = Constants.labelColor
        label.text = "Quantiy : 0"
        return label
    }()
    
    private let beerThreeLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: Constants.labelFrontSize, weight: .bold)
        label.textColor = Constants.textColor
        label.backgroundColor = Constants.labelColor
        label.text = "Kronenbourg 1664 Blanc"
        return label
    }()
    
    private let beerThreeQuantityLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: Constants.labelFrontSize, weight: .regular)
        label.textColor = Constants.textColor
        label.backgroundColor = Constants.labelColor
        label.text = "Quantiy : 0"
        return label
    }()
    
    private let resultLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: Constants.labelFrontSize, weight: .regular)
        label.textColor = Constants.textColor
        label.backgroundColor = Constants.labelColor
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "Press Start Day!"
        return label
    }()
    
    // buttons
    private let sellButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = Constants.buttonColor
        button.clipsToBounds = true
        button.setTitle("Sell", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    private let startDayButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = Constants.buttonColor
        button.clipsToBounds = true
        button.setTitle("Start day", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    private let endDayButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = Constants.buttonColor
        button.clipsToBounds = true
        button.setTitle("End day", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    private let firstRawPlusButton : UIButton = {
       let button = UIButton()
        button.backgroundColor = Constants.buttonColor
        button.clipsToBounds = true
        button.setTitle("+", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    private let firstRawMinusButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = Constants.buttonColor
        button.clipsToBounds = true
        button.setTitle("-", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    private let secondRawPlusButton : UIButton = {
       let button = UIButton()
        button.backgroundColor = Constants.buttonColor
        button.clipsToBounds = true
        button.setTitle("+", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    private let secondRawMinusButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = Constants.buttonColor
        button.clipsToBounds = true
        button.setTitle("-", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    private let thirdRawPlusButton : UIButton = {
       let button = UIButton()
        button.backgroundColor = Constants.buttonColor
        button.clipsToBounds = true
        button.setTitle("+", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    private let thirdRawMinusButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = Constants.buttonColor
        button.clipsToBounds = true
        button.setTitle("-", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configurationUI()
        self.deactivateButtons()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // labels
        // let xHeaderLabel = self.view.frame.width / 2 - Constants.widthBig / 2
        // let yHeaderLabel = self.view.frame.height / 10
        
        // let xLabelOne = self.view.frame.width / 2 - Constants.widthSmall / 2
        // let yLabelOne = self.view.frame.height / 10 + Constants.heightBig + Constants.offsetHeight
        // let yQuantityLabelOne = yLabelOne + Constants.heightSmall
        
        // let xLabelTwo = xLabelOne
        // let yLabelTwo = yLabelOne + 2 * Constants.heightSmall + Constants.offsetHeight
        // let yQuantityLabelTwo = yLabelTwo + Constants.heightSmall
        
        // let xLabelThree = xLabelOne
        // let yLabelThree = yLabelTwo + 2 * Constants.heightSmall + Constants.offsetHeight
        // let yQuantityLabelThree = yLabelThree + Constants.heightSmall
        
        // let xResultLabel = xHeaderLabel
        // let yResultLabel = yLabelThree + 2 * Constants.heightSmall + Constants.offsetHeight
        
        
        // self.headerLabel.frame = CGRect(x: xHeaderLabel, y: yHeaderLabel, width: Constants.widthBig, height: Constants.heightBig)
        
        // self.beerOneLabel.frame = CGRect(x: xLabelOne, y: yLabelOne, width: Constants.widthSmall, height: Constants.heightSmall)
        // self.beerOneQuantityLabel.frame = CGRect(x: xLabelOne, y: yQuantityLabelOne, width: Constants.widthSmall, height: Constants.heightSmall)
        
        // self.beerTwoLabel.frame = CGRect(x: xLabelTwo, y: yLabelTwo, width: Constants.widthSmall, height: Constants.heightSmall)
        // self.beerTwoQuantityLabel.frame = CGRect(x: xLabelTwo, y: yQuantityLabelTwo, width: Constants.widthSmall, height: Constants.heightSmall)
        
        // self.beerThreeLabel.frame = CGRect(x: xLabelThree, y: yLabelThree, width: Constants.widthSmall, height: Constants.heightSmall)
        // self.beerThreeQuantityLabel.frame = CGRect(x: xLabelThree, y: yQuantityLabelThree, width: Constants.widthSmall, height: Constants.heightSmall)
        
        // self.resultLabel.frame = CGRect(x: xResultLabel, y: yResultLabel, width: Constants.widthBig, height: Constants.resultLabelHeight)
        
        // buttons
        // let xButton = xLabelOne
        // let yButton = yResultLabel + Constants.resultLabelHeight + Constants.offsetHeight
        
        // let xButtonStart = xHeaderLabel
        // let xButtonEnd = xButtonStart + Constants.widthSmall + Constants.offsetBetweenButtons
        // let yButtonStartEnd = yResultLabel + Constants.resultLabelHeight + 2 * Constants.offsetHeight + Constants.heightSmall
        
        // let xLeftSqusreButton = ((Constants.widthBig - Constants.widthSmall) / 2) / 2 - ( Constants.squareButtonSize / 2 ) + (self.view.frame.width - Constants.widthBig) / 2
        // let xRightSquareButton = self.view.frame.width - xLeftSqusreButton - Constants.squareButtonSize
        // let yFirstRawButton = yLabelOne + Constants.heightSmall - ( Constants.squareButtonSize / 2 )
        // let ySecondRawButton = yLabelTwo + Constants.heightSmall - ( Constants.squareButtonSize / 2 )
        // let yThirdRawButton = yLabelThree + Constants.heightSmall - ( Constants.squareButtonSize / 2 )
        
        // self.sellButton.frame = CGRect(x: xButton, y: yButton, width: Constants.widthSmall, height: Constants.heightSmall)
        // self.startDayButton.frame = CGRect(x: xButtonStart, y: yButtonStartEnd, width: Constants.widthSmall, height: Constants.heightSmall)
        // self.endDayButton.frame = CGRect(x: xButtonEnd, y: yButtonStartEnd, width: Constants.widthSmall, height: Constants.heightSmall)
        
        // self.firstRawMinusButton.frame = CGRect(x: xLeftSqusreButton, y: yFirstRawButton, width: Constants.squareButtonSize, height: Constants.squareButtonSize)
        // self.firstRawPlusButton.frame = CGRect(x: xRightSquareButton, y: yFirstRawButton, width: Constants.squareButtonSize, height: Constants.squareButtonSize)
        // self.secondRawMinusButton.frame = CGRect(x: xLeftSqusreButton, y: ySecondRawButton, width: Constants.squareButtonSize, height: Constants.squareButtonSize)
        // self.secondRawPlusButton.frame = CGRect(x: xRightSquareButton, y: ySecondRawButton, width: Constants.squareButtonSize, height: Constants.squareButtonSize)
        // self.thirdRawMinusButton.frame = CGRect(x: xLeftSqusreButton, y: yThirdRawButton, width: Constants.squareButtonSize, height: Constants.squareButtonSize)
        // self.thirdRawPlusButton.frame = CGRect(x: xRightSquareButton, y: yThirdRawButton, width: Constants.squareButtonSize, height: Constants.squareButtonSize)
        
    }
    
    private func configurationUI() {
        self.view.backgroundColor = .systemMint
        
        // action buttons
        
        self.view.addSubview(startDayButton)
        let startAction = UIAction{ _ in self.startDayButtonPressed() }
        startDayButton.addAction(startAction, for: .touchUpInside)
        self.startDayButton.snp.makeConstraints { make in
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(Constants.safeAreaOffsetHeight)
            make.left.equalToSuperview().offset(Constants.offsetWidth)
            make.height.equalTo(Constants.heightSmall)
            //make.right.equalTo(endDayButton.snp.left).offset(Constants.offsetBetweenButtons)
            
        }
        
        self.view.addSubview(endDayButton)
        let endAction = UIAction{ _ in self.endDayButtonPressed() }
        endDayButton.addAction(endAction, for: .touchUpInside)
        self.endDayButton.snp.makeConstraints { make in
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(Constants.safeAreaOffsetHeight)
            make.right.equalToSuperview().inset(Constants.offsetWidth)
            make.height.equalTo(Constants.heightSmall)
            make.left.equalTo(startDayButton.snp.right).offset(Constants.offsetBetweenButtons)
            make.width.equalTo(startDayButton)
        }
        
        self.view.addSubview(sellButton)
        let sellAction = UIAction{ _ in self.sellButtonPressed() }
        sellButton.addAction(sellAction, for: .touchUpInside)
        self.sellButton.snp.makeConstraints { make in
            make.width.equalTo(endDayButton)
            make.height.equalTo(Constants.heightSmall)
            make.bottom.equalTo(endDayButton.snp.top).offset(-Constants.offsetHeight)
            make.centerX.equalToSuperview()
        }
        
        // labels
        
        self.view.addSubview(headerLabel)
        self.headerLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(Constants.safeAreaOffsetHeight)
            make.height.equalTo(Constants.heightBig)
            make.right.equalToSuperview().inset(30)
            make.left.equalToSuperview().offset(30)
        }
        
        self.view.addSubview(beerOneLabel)
        self.beerOneLabel.snp.makeConstraints { make in
            make.top.equalTo(headerLabel.snp.bottom).offset(Constants.offsetHeight)
            make.right.equalToSuperview().inset(Constants.offsetWidth)
            make.left.equalToSuperview().offset(Constants.offsetWidth)
            make.height.equalTo(Constants.heightSmall)
        }
        
        self.view.addSubview(beerOneQuantityLabel)
        self.beerOneQuantityLabel.snp.makeConstraints { make in
            make.top.equalTo(beerOneLabel.snp.bottom)
            make.right.equalToSuperview().inset(Constants.offsetWidth)
            make.left.equalToSuperview().offset(Constants.offsetWidth)
            make.height.equalTo(Constants.heightSmall)
        }
        
        self.view.addSubview(beerTwoLabel)
        self.beerTwoLabel.snp.makeConstraints { make in
            make.top.equalTo(beerOneQuantityLabel.snp.bottom).offset(Constants.offsetHeight)
            make.right.equalToSuperview().inset(Constants.offsetWidth)
            make.left.equalToSuperview().offset(Constants.offsetWidth)
            make.height.equalTo(Constants.heightSmall)
        }
        
        self.view.addSubview(beerTwoQuantityLabel)
        self.beerTwoQuantityLabel.snp.makeConstraints { make in
            make.top.equalTo(beerTwoLabel.snp.bottom)
            make.right.equalToSuperview().inset(Constants.offsetWidth)
            make.left.equalToSuperview().offset(Constants.offsetWidth)
            make.height.equalTo(Constants.heightSmall)
        }
        
        self.view.addSubview(beerThreeLabel)
        self.beerThreeLabel.snp.makeConstraints { make in
            make.top.equalTo(beerTwoQuantityLabel.snp.bottom).offset(Constants.offsetHeight)
            make.right.equalToSuperview().inset(Constants.offsetWidth)
            make.left.equalToSuperview().offset(Constants.offsetWidth)
            make.height.equalTo(Constants.heightSmall)
        }
        
        self.view.addSubview(beerThreeQuantityLabel)
        self.beerThreeQuantityLabel.snp.makeConstraints { make in
            make.top.equalTo(beerThreeLabel.snp.bottom)
            make.right.equalToSuperview().inset(Constants.offsetWidth)
            make.left.equalToSuperview().offset(Constants.offsetWidth)
            make.height.equalTo(Constants.heightSmall)
        }
        
        self.view.addSubview(resultLabel)
        self.resultLabel.snp.makeConstraints { make in
            make.bottom.equalTo(sellButton.snp.top).offset(-Constants.offsetHeight)
            make.left.equalToSuperview().offset(30)
            make.right.equalToSuperview().inset(30)
            make.top.equalTo(beerThreeQuantityLabel.snp.bottom).offset(Constants.offsetHeight)
        }
        
        
        // square buttons
        
        self.view.addSubview(firstRawMinusButton)
        let firstRawMinusAction = UIAction { _ in self.firstRawMinusButtonPressed() }
        firstRawMinusButton.addAction(firstRawMinusAction, for : .touchUpInside)
        
        self.firstRawMinusButton.snp.makeConstraints { make in
            make.right.equalTo(beerOneLabel.snp.left).offset(-10)
            make.height.equalTo(Constants.squareButtonSize)
            make.width.equalTo(Constants.squareButtonSize)
            make.top.equalTo(headerLabel.snp.bottom).offset(50)
        }
        
        self.view.addSubview(firstRawPlusButton)
        let firstRawPlusAction = UIAction{ _ in self.firstRawPlusButtonPressed() }
        firstRawPlusButton.addAction(firstRawPlusAction, for: .touchUpInside)
        
        self.firstRawPlusButton.snp.makeConstraints { make in
            make.left.equalTo(beerOneLabel.snp.right).offset(10)
            make.height.equalTo(Constants.squareButtonSize)
            make.width.equalTo(Constants.squareButtonSize)
            make.top.equalTo(headerLabel.snp.bottom).offset(50)
        }
        
        self.view.addSubview(secondRawMinusButton)
        let secondRawMinusAction = UIAction { _ in self.secondRawMinusButtonPressed() }
        secondRawMinusButton.addAction(secondRawMinusAction, for: .touchUpInside)
        
        self.secondRawMinusButton.snp.makeConstraints { make in
            make.height.equalTo(Constants.squareButtonSize)
            make.width.equalTo(Constants.squareButtonSize)
            make.right.equalTo(beerTwoLabel.snp.left).offset(-10)
            make.top.equalTo(beerOneQuantityLabel.snp.bottom).offset(50)
        }
        
        self.view.addSubview(secondRawPlusButton)
        let secondRawPlusAction = UIAction { _ in self.secondRawPlusButtonPressed() }
        secondRawPlusButton.addAction(secondRawPlusAction, for: .touchUpInside)
        self.secondRawPlusButton.snp.makeConstraints { make in
            make.height.equalTo(Constants.squareButtonSize)
            make.width.equalTo(Constants.squareButtonSize)
            make.left.equalTo(beerTwoLabel.snp.right).offset(10)
            make.top.equalTo(beerOneQuantityLabel.snp.bottom).offset(50)
        }
        
        self.view.addSubview(thirdRawMinusButton)
        let thirdRawMinusAction = UIAction { _ in self.thirdRawMinusButtonPressed() }
        thirdRawMinusButton.addAction(thirdRawMinusAction, for: .touchUpInside)
        
        self.thirdRawMinusButton.snp.makeConstraints { make in
            make.height.equalTo(Constants.squareButtonSize)
            make.width.equalTo(Constants.squareButtonSize)
            make.top.equalTo(beerTwoQuantityLabel.snp.bottom).offset(50)
            make.right.equalTo(beerThreeLabel.snp.left).offset(-10)
        }
        
        self.view.addSubview(thirdRawPlusButton)
        let thirdRawPlusAction = UIAction { _ in self.thirdRawPlusButtonPressed() }
        thirdRawPlusButton.addAction(thirdRawPlusAction, for: .touchUpInside)
        
        self.thirdRawPlusButton.snp.makeConstraints { make in
            make.height.equalTo(Constants.squareButtonSize)
            make.width.equalTo(Constants.squareButtonSize)
            make.top.equalTo(beerTwoQuantityLabel.snp.bottom).offset(50)
            make.left.equalTo(beerThreeLabel.snp.right).offset(10)
        }
    }
    
    private func sellButtonPressed() {
        self.resultLabel.text = beerManager.shared.sellBeer()
//        beerManager.shared.beers[0].sellBeer()
        self.beerOneQuantityLabel.text = "Quantity : 0"
        
        print("total amount : \(beerManager.shared.beers[0].totalAmount), soldQuantity : \(beerManager.shared.beers[0].soldQuantity), total sold : \(beerManager.shared.beers[0].totalSold) ")
        
//        beerManager.shared.beers[1].sellBeer()
        self.beerTwoQuantityLabel.text = "Quantity : 0"
        
//        beerManager.shared.beers[2].sellBeer()
        self.beerThreeQuantityLabel.text = "Quantity : 0"
        
    }
    
    private func startDayButtonPressed() {
        self.activateButtons()
        
        beerManager.shared.open()
        
        self.resultLabel.text = "welcome to a new day"
        
        print("Total sold : 1) \(beerManager.shared.beers[0].totalSold) and 2) \(beerManager.shared.beers[1].totalSold) and 3) \(beerManager.shared.beers[2].totalSold)")
        
    }
    
    private func endDayButtonPressed() {
        self.resultLabel.text = beerManager.shared.dayIncome()
        self.deactivateButtons()
    }
    
    private func firstRawPlusButtonPressed() {
        let text = beerManager.shared.beers[0].plusOneBeer()
        self.beerOneQuantityLabel.text = text
        
    }
    
    private func firstRawMinusButtonPressed() {
        let text = beerManager.shared.beers[0].minusOneBeer()
        self.beerOneQuantityLabel.text = text
    }
    
    private func secondRawPlusButtonPressed() {
        self.beerTwoQuantityLabel.text = beerManager.shared.beers[1].plusOneBeer()
        
    }
    
    private func secondRawMinusButtonPressed() {
        self.beerTwoQuantityLabel.text = beerManager.shared.beers[1].minusOneBeer()
        
    }
    
    private func thirdRawPlusButtonPressed() {
        self.beerThreeQuantityLabel.text = beerManager.shared.beers[2].plusOneBeer()
        
    }
    
    private func thirdRawMinusButtonPressed() {
        self.beerThreeQuantityLabel.text = beerManager.shared.beers[2].minusOneBeer()
        
    }
    
    func deactivateButtons() {
        print("deactivateButtons called")
        
        self.startDayButton.isEnabled = true
        self.sellButton.isEnabled = false
        self.endDayButton.isEnabled = false
        
        self.firstRawMinusButton.isEnabled = false
        self.firstRawPlusButton.isEnabled = false
        self.secondRawMinusButton.isEnabled = false
        self.secondRawPlusButton.isEnabled = false
        self.thirdRawMinusButton.isEnabled = false
        self.thirdRawPlusButton.isEnabled = false
    }
    
    func activateButtons() {
        self.startDayButton.isEnabled = false
        self.sellButton.isEnabled = true
        self.endDayButton.isEnabled = true
        
        self.firstRawMinusButton.isEnabled = true
        self.firstRawPlusButton.isEnabled = true
        self.secondRawMinusButton.isEnabled = true
        self.secondRawPlusButton.isEnabled = true
        self.thirdRawMinusButton.isEnabled = true
        self.thirdRawPlusButton.isEnabled = true

    }
}


