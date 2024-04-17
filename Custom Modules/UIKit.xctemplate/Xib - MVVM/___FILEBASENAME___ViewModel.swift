import Foundation

// MARK:- Protocol

protocol ___FILEBASENAME___Protocol: AnyObject {

}

// MARK:- Implementation

class ___FILEBASENAME___: ___FILEBASENAME___Protocol {
    let model: ___VARIABLE_productName:identifier___Model

    init(model: ___VARIABLE_productName:identifier___Model) {
        self.model = model
    }
}

// MARK:- Factory

class ___FILEBASENAME___Factory {
    static func defaultViewModel() -> ___FILEBASENAME___Protocol {
        return ___FILEBASENAME___(model: ___VARIABLE_productName:identifier___Model())
    }
}

