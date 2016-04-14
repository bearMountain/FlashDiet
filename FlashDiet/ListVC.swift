

import UIKit

class ListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView = UITableView(frame: CGRectZero, style: .Plain)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blueColor()
        view.addSubview(tableView)
        tableView.backgroundColor = .redColor()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "happy")
        cell.textLabel?.text = "I'm a cell"
        
        return cell
    }

}

