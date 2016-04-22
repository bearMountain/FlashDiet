



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
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Layout
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let imageSide = frame.size.width - sideImageMargin*2.0
        imageView.frame = CGRect(x: sideImageMargin, y: topImageMargin, width: imageSide, height: imageSide)
    }
    
    //MARK: - Private
    // Objects
    let imageView = UIImageView()
    
    // Constants
    let topImageMargin: CGFloat = 50
    let sideImageMargin: CGFloat = 20
    
    func addImageView() {
        addSubview(imageView)
        imageView.backgroundColor = .redColor()
    }
}











