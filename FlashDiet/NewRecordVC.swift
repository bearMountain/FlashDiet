



import UIKit

class NewRecordVC: UIViewController {
    
    //MARK: - ViewLifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(newRecordView)
    }
    
    //MARK: - Layout
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        newRecordView.frame = view.bounds
    }
    
    //MARK: - Private
    let newRecordView = NewRecordView()
    
    
}

class NewRecordView : UIView {
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .whiteColor()
        
        addImageView()
        
        addDoneButton()
        
        addRankingsButtons()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Layout
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let imageSide = frame.size.width - sideImageMargin*2.0
        imageView.frame = CGRect(x: sideImageMargin, y: topImageMargin, width: imageSide, height: imageSide)
        
        
        let buttonX = frame.size.width-doneButtonRightMargin-doneButtonSize.width
        let buttonY = frame.size.height-doneButtonBottomMargin-doneButtonSize.height
        
        doneButton.frame = CGRect(x: buttonX, y: buttonY, width: doneButtonSize.width, height:doneButtonSize.height)
        
        let stackY = imageView.frame.origin.y + imageView.frame.size.height + stackViewVertSpace
        
        stackView.frame = CGRect(x: imageView.frame.origin.x, y: stackY, width: imageView.frame.size.width, height: stackViewHeight)
    
    }
    
    //MARK: - Private
    // Objects
    let imageView = UIImageView()
    let doneButton = UIButton(type: .Custom)
    let stackView = UIStackView()
    
    // Constants
    let topImageMargin: CGFloat = 50
    let sideImageMargin: CGFloat = 20
    let doneButtonRightMargin: CGFloat = 40
    let doneButtonBottomMargin: CGFloat = 20
    let doneButtonSize: CGSize = CGSize(width: 100, height: 50)
    let stackViewVertSpace: CGFloat = 40
    let stackViewHeight: CGFloat = 100
    let buttonWidth = 70
    
    func addImageView() {
        addSubview(imageView)
        imageView.backgroundColor = .redColor()
    }
    
    func addDoneButton() {
        addSubview(doneButton)
        doneButton.setTitle("Done", forState: .Normal)
        doneButton.backgroundColor = .purpleColor()
    }
    
    func addRankingsButtons() {
        addSubview(stackView)
        stackView.backgroundColor = .blueColor()
        stackView.axis = .Horizontal
        
        let b1 = UIButton(type: .Custom)
        b1.addTarget(self, action: #selector(NewRecordView.b1Tapped), forControlEvents: .TouchUpInside)
//        b1.frame = CGRect(x: 0, y: 0, width: buttonWidth, height: stackViewHeight)
        b1.frame = CGRect(x: 0, y: 0, width: buttonWidth, height: 100)
        b1.setTitle("Bad", forState: .Normal)
        
    }
    func b1Tapped() {
        
    }
    
}











