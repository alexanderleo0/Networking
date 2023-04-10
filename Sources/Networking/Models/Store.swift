//
// Store.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Store: Codable, JSONEncodable, Hashable {
    
    public var storeID: String
    public var storeName: String
    public var isActive: Double
    public var images: StoreImages


    public init(storeID: String, storeName: String, isActive: Double, images: StoreImages) {
        self.storeID = storeID
        self.storeName = storeName
        self.isActive = isActive
        self.images = images
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case storeID
        case storeName
        case isActive
        case images
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(storeID, forKey: .storeID)
        try container.encode(storeName, forKey: .storeName)
        try container.encode(isActive, forKey: .isActive)
        try container.encode(images, forKey: .images)
    }
}

