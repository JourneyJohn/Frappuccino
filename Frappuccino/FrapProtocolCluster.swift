//
//  FrapProtocolCluster.swift
//  Frappuccino
//
//  Created by John on 2021/5/13.
//

import UIKit

public protocol FrapListCellProtocol {
    
    static var cellIdentifier: String { get }
}

public extension FrapListCellProtocol {
    
    static var cellIdentifier: String {
        get {
            String(reflecting: Self.self)
        }
    }
}
