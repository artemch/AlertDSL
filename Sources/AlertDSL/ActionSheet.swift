//
//  ActionSheet.swift
//  AlertDSL
//
//  Created by Artem Chabannyi on 25.03.2021.
//

import Foundation
import UIKit

public struct ActionSheet {
    public let alertController: UIAlertController
    
    public init(@ActionSheetBuilder build: () -> [AlertComponent]) {
        self.alertController = buildAlertController(build(), preferredStyle: .actionSheet)
    }
    
    @discardableResult
    public func present(on viewController: UIViewController, animated: Bool = true) -> ActionSheet {
        viewController.present(self.alertController, animated: animated)
        return self
    }
}

@_functionBuilder
public struct ActionSheetBuilder {
    
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
