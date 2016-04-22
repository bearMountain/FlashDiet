

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blueColor()
        
        addButton()
    }
    
    func addButton() {
        let button = UIButton(type: .Custom)
        button.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        button.setTitle("Push Me", forState: .Normal)
        button.addTarget(self, action: #selector(ViewController.buttonPressed), forControlEvents: .TouchUpInside)
        
        view.addSubview(button)
    }
    
    func buttonPressed() {
        self.presentViewController(NewRecordVC(), animated: true) {
            
        }
    }

}

