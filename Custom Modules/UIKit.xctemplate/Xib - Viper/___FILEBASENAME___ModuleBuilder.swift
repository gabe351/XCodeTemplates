import UIKit

protocol ___FILEBASENAME___Protocol: AnyObject {
    /// Creates the module with all needed layers
    static func module() -> UIViewController
}

// MARK:- Protocol
final class ___FILEBASENAME___ {


    static func module() -> UIViewController {

        let interactor = ___VARIABLE_productName:identifier___Interactor()
        let router = ___VARIABLE_productName:identifier___Router()
        let presenter = ___VARIABLE_productName:identifier___Presenter()
        let view = ___VARIABLE_productName:identifier___ViewController()

        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        return view
    }
}
