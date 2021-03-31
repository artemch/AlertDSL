//
//  AlertControllerBuilder.swift
//  AlertDSL
//
//  Created by Artem Chabannyi on 25.03.2021.
//

import Foundation
import UIKit

internal func buildAlertController(
    _ components: [AlertComponent],
    preferredStyle: UIAlertController.Style
) -> UIAlertController {
    let alertController = UIAlertController(title: nil, message: nil, preferredStyle: preferredStyle)
    let title = components.compactMap { $0 as? Title }.last
    alertController.title = title?.title
    let message = components.compactMap { $0 as? Message }.last
    alertController.message = message?.message
    let actions = components.compactMap { $0 as? Action }.map { (action: Action) -> UIAlertAction in
        let handler = action.handler
        return UIAlertAction(title: action.title, style: action.style, handler: { _ in handler?() })
    }
    actions.forEach {
        alertController.addAction($0)
    }
    return alertController
}
