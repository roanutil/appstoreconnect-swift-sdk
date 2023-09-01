// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.SubscriptionPromotionalOffers.WithID {
	public var prices: Prices {
		Prices(path: path + "/prices")
	}

	public struct Prices {
		/// Path: `/v1/subscriptionPromotionalOffers/{id}/prices`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionPromotionalOfferPricesResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "subscriptionPromotionalOffers-prices-get_to_many_related")
		}

		public struct GetParameters {
			public var filterTerritory: [String]?
			public var fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var fieldsSubscriptionPromotionalOfferPrices: [FieldsSubscriptionPromotionalOfferPrices]?
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

			public enum FieldsTerritories: String, Codable, CaseIterable, Hashable, Sendable {
				case currency
			}

			public enum FieldsSubscriptionPromotionalOfferPrices: String, Codable, CaseIterable, Hashable, Sendable {
				case subscriptionPricePoint
				case territory
			}

			public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
				case subscriptionPricePoint
				case territory
			}

			public init(filterTerritory: [String]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, fieldsSubscriptionPromotionalOfferPrices: [FieldsSubscriptionPromotionalOfferPrices]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterTerritory = filterTerritory
				self.fieldsSubscriptionPricePoints = fieldsSubscriptionPricePoints
				self.fieldsTerritories = fieldsTerritories
				self.fieldsSubscriptionPromotionalOfferPrices = fieldsSubscriptionPromotionalOfferPrices
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterTerritory, forKey: "filter[territory]")
				encoder.encode(fieldsSubscriptionPricePoints, forKey: "fields[subscriptionPricePoints]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(fieldsSubscriptionPromotionalOfferPrices, forKey: "fields[subscriptionPromotionalOfferPrices]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
