import UIKit

protocol ___VARIABLE_productName:identifier___ViewProtocol: AnyObject {

    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol? { get set }

}

// MARK:- ViewController

class ___FILEBASENAME___: UIViewController {

    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?

    init() {
        super.init(nibName: "___FILEBASENAME___", bundle: nil)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// MARK:- View Implementation
extension ___FILEBASENAME___: ___VARIABLE_productName:identifier___ViewProtocol {

}
