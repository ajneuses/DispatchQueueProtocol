//
//  ExtDispatchQueue.swift
//
//  Created by Adam Neuses on 2022/06/10.
//
import Foundation

extension DispatchQueue: DispatchQueueProtocol {
    public func asyncQueue(_ block: @escaping () -> Void) {
        self.async {
            block()
        }
    }
}
