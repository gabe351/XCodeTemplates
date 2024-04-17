//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

// MARK:- ViewController

class ___FILEBASENAME___: UIViewController {
    let viewModel: ___VARIABLE_productName:identifier___ViewModelProtocol

    init(viewModel: ___VARIABLE_productName:identifier___ViewModelProtocol) {
        self.viewModel = viewModel
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

// MARK:- Factory

class ___VARIABLE_productName:identifier___ViewControllerFactory {
    static func newViewController() -> ___FILEBASENAME___ {
        return ___FILEBASENAME___(viewModel: ___VARIABLE_productName:identifier___ViewModelFactory.defaultViewModel())
    }
}

