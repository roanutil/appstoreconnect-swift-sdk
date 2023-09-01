// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.InAppPurchasePriceSchedules.WithID {
	public var manualPrices: ManualPrices {
		ManualPrices(path: path + "/manualPrices")
	}

	public struct ManualPrices {
		/// Path: `/v1/inAppPurchasePriceSchedules/{id}/manualPrices`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.InAppPurchasePricesResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "inAppPurchasePriceSchedules-manualPrices-get_to_many_related")
		}

		public struct GetParameters {
			public var filterTerritory: [String]?
			public var fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints]?
			public var fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsInAppPurchasePricePoints: String, Codable, CaseIterable, Hashable, Sendable {
				case customerPrice
				case inAppPurchaseV2
				case priceTier
				case proceeds
				case territory
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

			public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
				case inAppPurchasePricePoint
				case territory
			}

			public init(filterTerritory: [String]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterTerritory = filterTerritory
				self.fieldsInAppPurchasePricePoints = fieldsInAppPurchasePricePoints
				self.fieldsInAppPurchasePrices = fieldsInAppPurchasePrices
				self.fieldsTerritories = fieldsTerritories
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterTerritory, forKey: "filter[territory]")
				encoder.encode(fieldsInAppPurchasePricePoints, forKey: "fields[inAppPurchasePricePoints]")
				encoder.encode(fieldsInAppPurchasePrices, forKey: "fields[inAppPurchasePrices]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
