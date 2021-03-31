//
//  AlertComponent.swift
//  AlertDSL
//
//  Created by Artem Chabannyi on 25.03.2021.
//

import Foundation
import UIKit

public protocol AlertComponentConvertible {
    func asAlertComponents() -> [AlertComponent]
}

public protocol AlertComponent: AlertComponentConvertible {}

public extension AlertComponent {
    func asAlertComponents() -> [AlertComponent] {
        return [self]
    }
}

extension Array: AlertComponentConvertible where Element == AlertComponent {
    public func asAlertComponents() -> [AlertComponent] {
        return self
    }
}
