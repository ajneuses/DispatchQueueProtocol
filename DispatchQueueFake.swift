//
//  DispatchQueueFake.swift
//
//  Created by Adam Neuses on 2022/06/10.
//
import Foundation

/// A _Fake_ testing double that runs code inside the `asyncQueue` block immdiately.
///
/// This file and all other files in the `TestingResources` folder are added to
/// __EXCLUDED_SOURCE_FILE_NAMES__ in the Build Settings of the CountryEnergyTracker target.
///
/// It should only be used for testing purposes
///
/// - Tag: DispatchQueueFake
final class DispatchQueueFake: DispatchQueueProtocol {
    func asyncQueue(_ block: @escaping () -> Void) {
        block()
    }
}
