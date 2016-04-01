

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    //MARK: - UIApplication Methods
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        setupWindow()
        setupRootVC()
        return true
    }
    
    //MARK: - Internal
    func setupWindow() {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.makeKeyAndVisible()
    }
    
    func setupRootVC() {
        window?.rootViewController = ViewController()
    }

}

