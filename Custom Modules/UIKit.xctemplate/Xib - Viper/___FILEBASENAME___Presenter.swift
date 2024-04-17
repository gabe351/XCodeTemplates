import Foundation

// MARK:- Protocol

protocol ___FILEBASENAME___Protocol: AnyObject {

    var view: ___VARIABLE_productName:identifier___ViewProtocol? { get set }

    var interactor: ___VARIABLE_productName:identifier___InteractorProtocol? { get set }

    var router: ___VARIABLE_productName:identifier___RouterProtocol? { get set }
}

// MARK:- Implementation

class ___FILEBASENAME___: ___FILEBASENAME___Protocol {

    weak var view: ___VARIABLE_productName:identifier___ViewProtocol?
    var interactor: ___VARIABLE_productName:identifier___InteractorProtocol?
    var router: ___VARIABLE_productName:identifier___RouterProtocol?

    init(
    ) {}
}
