// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Subscriptions.WithID {
	public var prices: Prices {
		Prices(path: path + "/prices")
	}

	public struct Prices {
		/// Path: `/v1/subscriptions/{id}/prices`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionPricesResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "subscriptions-prices-get_to_many_related")
		}

		public struct GetParameters {
			public var filterSubscriptionPricePoint: [String]?
			public var filterTerritory: [String]?
			public var fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]?
			public var fieldsSubscriptionPrices: [FieldsSubscriptionPrices]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsSubscriptionPricePoints: String, Codable, CaseIterable, Hashable, Sendable {
				case customerPrice
				case equalizations
				case proceeds
				case proceedsYear2
				case subscription
				case territory
			}

			public enum FieldsSubscriptionPrices: String, Codable, CaseIterable, Hashable, Sendable {
				case preserveCurrentPrice
				case preserved
				case startDate
				case subscription
				case subscriptionPricePoint
				case territory
			}

			public enum FieldsTerritories: String, Codable, CaseIterable, Hashable, Sendable {
				case currency
			}

			public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
				case subscriptionPricePoint
				case territory
			}

			public init(filterSubscriptionPricePoint: [String]? = nil, filterTerritory: [String]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]? = nil, fieldsSubscriptionPrices: [FieldsSubscriptionPrices]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterSubscriptionPricePoint = filterSubscriptionPricePoint
				self.filterTerritory = filterTerritory
				self.fieldsSubscriptionPricePoints = fieldsSubscriptionPricePoints
				self.fieldsSubscriptionPrices = fieldsSubscriptionPrices
				self.fieldsTerritories = fieldsTerritories
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterSubscriptionPricePoint, forKey: "filter[subscriptionPricePoint]")
				encoder.encode(filterTerritory, forKey: "filter[territory]")
				encoder.encode(fieldsSubscriptionPricePoints, forKey: "fields[subscriptionPricePoints]")
				encoder.encode(fieldsSubscriptionPrices, forKey: "fields[subscriptionPrices]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
