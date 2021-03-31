//
//  Title.swift
//  AlertDSL
//
//  Created by Artem Chabannyi on 25.03.2021.
//

import Foundation

public struct Title: AlertComponent {
    public let title: String?
    
    public init(_ title: String?) {
        self.title = title
    }
}
