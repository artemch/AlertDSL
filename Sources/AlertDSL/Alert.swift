//
//  Alert.swift
//  AlertDSL
//
//  Created by Artem Chabannyi on 25.03.2021.
//

import Foundation
import UIKit

public struct Alert {
    
    public let alertController: UIAlertController
    
    public init(@AlertBuilder build: () -> [AlertComponent]) {
        self.alertController = buildAlertController(build(), preferredStyle: .alert)
    }
    
    @discardableResult
    public func present(on viewController: UIViewController, animated: Bool = true) -> Alert {
        viewController.present(self.alertController, animated: animated)
        return self
    }
}

@_functionBuilder
public struct AlertBuilder {
    
    public static func buildBlock(_ components: AlertComponentConvertible...) -> [AlertComponent] {
        components.flatMap { $0.asAlertComponents() }
    }
    
    public static func buildIf(_ value: AlertComponentConvertible?) -> AlertComponentConvertible {
        value ?? []
    }
    
    public static func buildEither(first: AlertComponentConvertible) -> AlertComponentConvertible {
        first
    }

    public static func buildEither(second: AlertComponentConvertible) -> AlertComponentConvertible {
        second
    }
}
