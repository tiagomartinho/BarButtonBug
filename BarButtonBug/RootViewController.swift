import UIKit

class RootViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addSomething))
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(deleteSomething))
        title = "RootVC"
        view.backgroundColor = .red
    }
    
    @objc func addSomething() {
    }
    
    @objc func deleteSomething() {
    }
}
