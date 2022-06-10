//
//  DispatchQueueProtocol.swift
//
//  Created by Adam Neuses on 2022/06/10.
//
import Foundation

/// A protocol to allow for more testable code and better code coverage.
///
/// When running Unit Tests, code inside of a `DispatchQueue.main.async` block won't be
/// executed before XCTAsserts check the state of the app. Instead of using `DispatchQueue.main.async`,
/// extend the `DispatchQueue` to implement this protocol, then create a property of this type and set that to
/// `DispatchQueue.main` in debug/release code.
///
/// Then set it to a [`DispatchQueueFake`](x-source-tag://DispatchQueueFake) object for test code.
///
/// ```swift
/// private(set) var dispatchQueue = DispatchQueue.main
///
/// self.dispatchQueue.asyncQueue {
///     ...
/// }
///
/// #if DEBUG
/// public func unit_test_setDispatchQueueToFake() {
///    self.dispatchQueue = DispatchQueueFake()
/// }
/// #endif
/// ```
///
/// - Tag: DispatchQueueProtocol
@objc
public protocol DispatchQueueProtocol {
    func asyncQueue(_ block: @escaping () -> Void)
}
