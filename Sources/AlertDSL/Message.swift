//
//  Message.swift
//  AlertDSL
//
//  Created by Artem Chabannyi on 25.03.2021.
//

import Foundation

public struct Message: AlertComponent {
    public let message: String?
    
    public init(_ message: String?) {
        self.message = message
    }
}
