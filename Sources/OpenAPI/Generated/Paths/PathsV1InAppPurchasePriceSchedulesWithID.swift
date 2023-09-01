// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.InAppPurchasePriceSchedules {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/inAppPurchasePriceSchedules/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.InAppPurchasePriceScheduleResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "inAppPurchasePriceSchedules-get_instance")
		}

		public struct GetParameters {
			public var fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules]?
			public var include: [Include]?
			public var fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var limitAutomaticPrices: Int?
			public var limitManualPrices: Int?

			public enum FieldsInAppPurchasePriceSchedules: String, Codable, CaseIterable, Hashable, Sendable {
				case automaticPrices
				case baseTerritory
				case inAppPurchase
				case manualPrices
			}

			public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
				case automaticPrices
				case baseTerritory
				case inAppPurchase
				case manualPrices
			}

			public enum FieldsInAppPurchasePrices: String, Codable, CaseIterable, Hashable, Sendable {
				case endDate
				case inAppPurchasePricePoint
				case inAppPurchaseV2
				case manual
				case startDate
				case territory
			}

			public enum FieldsTerritories: String, Codable, CaseIterable, Hashable, Sendable {
				case currency
			}

			public init(fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules]? = nil, include: [Include]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limitAutomaticPrices: Int? = nil, limitManualPrices: Int? = nil) {
				self.fieldsInAppPurchasePriceSchedules = fieldsInAppPurchasePriceSchedules
				self.include = include
				self.fieldsInAppPurchasePrices = fieldsInAppPurchasePrices
				self.fieldsTerritories = fieldsTerritories
				self.limitAutomaticPrices = limitAutomaticPrices
				self.limitManualPrices = limitManualPrices
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsInAppPurchasePriceSchedules, forKey: "fields[inAppPurchasePriceSchedules]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsInAppPurchasePrices, forKey: "fields[inAppPurchasePrices]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(limitAutomaticPrices, forKey: "limit[automaticPrices]")
				encoder.encode(limitManualPrices, forKey: "limit[manualPrices]")
				return encoder.items
			}
		}
	}
}
