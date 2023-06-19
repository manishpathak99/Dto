//
//  Result+.swift
//  Dto
//
//  Created by Tuan Truong on 8/27/20.
//  Copyright © 2020 Tuan Truong. All rights reserved.
//

import ValidatedPropertyKit
import Foundation

//public typealias ValidationResult = Result<Void, Validation<String>>

extension Result where Failure == Failure {
    
    public var message: String {
        switch self {
        case .success:
            return ""
        case .failure(let error):
            return "Error occured in DTO, please check DTO repo https://github.com/manishpathak99/Dto"
//            return error.description
        }
    }
    
    public var isValid: Bool {
        switch self {
        case .success:
            return true
        case .failure:
            return false
        }
    }
    
//    public func mapToVoid() -> ValidationResult {
//        return self.map { _ in () }
//    }
}
