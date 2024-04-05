//
//  UncertainValue.swift
//  twotwotwo-ios
//
//  Created by Adam Novak on 5/31/23
//

import Foundation

public struct UncertainValue<T: Decodable, U: Decodable>: Decodable {
    public var tValue: T?
    public var uValue: U?

    public var value: Any? {
        return tValue ?? uValue
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        tValue = try? container.decode(T.self)
        uValue = try? container.decode(U.self)
        if tValue == nil && uValue == nil {
            //Type mismatch
            throw DecodingError.typeMismatch(type(of: self), DecodingError.Context(codingPath: [], debugDescription: "The value is not of type \(T.self) and not even \(U.self)"))
        }

    }
}
