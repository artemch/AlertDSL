//
//  Action.swift
//  AlertDSL
//
//  Created by Artem Chabannyi on 25.03.2021.
//

import Foundation
import UIKit

public struct Action: AlertComponent {
    public let title: String?
    public let style: UIAlertAction.Style
    public let handler: (() -> Void)?
    
    public init(title: String?, style: UIAlertAction.Style = .default, handler: (() -> Void)? = nil) {
        self.title = title
        self.style = style
        self.handler = handler
    }
}

public extension Action {
    static func cancel(title: String?, handler: (() -> Void)? = nil) -> Action {
        return Self.init(title: title, style: .cancel, handler: handler)
    }
    
    static func destructive(title: String?, handler: (() -> Void)? = nil) -> Action {
        return Self.init(title: title, style: .destructive, handler: handler)
    }
}
