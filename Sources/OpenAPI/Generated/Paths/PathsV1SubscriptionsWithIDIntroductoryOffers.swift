// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Subscriptions.WithID {
	public var introductoryOffers: IntroductoryOffers {
		IntroductoryOffers(path: path + "/introductoryOffers")
	}

	public struct IntroductoryOffers {
		/// Path: `/v1/subscriptions/{id}/introductoryOffers`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionIntroductoryOffersResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "subscriptions-introductoryOffers-get_to_many_related")
		}

		public struct GetParameters {
			public var filterTerritory: [String]?
			public var fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]?
			public var fieldsSubscriptions: [FieldsSubscriptions]?
			public var fieldsSubscriptionIntroductoryOffers: [FieldsSubscriptionIntroductoryOffers]?
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

			public enum FieldsSubscriptions: String, Codable, CaseIterable, Hashable, Sendable {
				case appStoreReviewScreenshot
				case availableInAllTerritories
				case familySharable
				case group
				case groupLevel
				case introductoryOffers
				case name
				case offerCodes
				case pricePoints
				case prices
				case productID = "productId"
				case promotedPurchase
				case promotionalOffers
				case reviewNote
				case state
				case subscriptionAvailability
				case subscriptionLocalizations
				case subscriptionPeriod
			}

			public enum FieldsSubscriptionIntroductoryOffers: String, Codable, CaseIterable, Hashable, Sendable {
				case duration
				case endDate
				case numberOfPeriods
				case offerMode
				case startDate
				case subscription
				case subscriptionPricePoint
				case territory
			}

			public enum FieldsTerritories: String, Codable, CaseIterable, Hashable, Sendable {
				case currency
			}

			public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
				case subscription
				case subscriptionPricePoint
				case territory
			}

			public init(filterTerritory: [String]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsSubscriptionIntroductoryOffers: [FieldsSubscriptionIntroductoryOffers]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterTerritory = filterTerritory
				self.fieldsSubscriptionPricePoints = fieldsSubscriptionPricePoints
				self.fieldsSubscriptions = fieldsSubscriptions
				self.fieldsSubscriptionIntroductoryOffers = fieldsSubscriptionIntroductoryOffers
				self.fieldsTerritories = fieldsTerritories
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterTerritory, forKey: "filter[territory]")
				encoder.encode(fieldsSubscriptionPricePoints, forKey: "fields[subscriptionPricePoints]")
				encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
				encoder.encode(fieldsSubscriptionIntroductoryOffers, forKey: "fields[subscriptionIntroductoryOffers]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
