// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Subscriptions {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/subscriptions/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "subscriptions-get_instance")
		}

		public struct GetParameters {
			public var fieldsSubscriptions: [FieldsSubscriptions]?
			public var include: [Include]?
			public var fieldsPromotedPurchases: [FieldsPromotedPurchases]?
			public var fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]?
			public var fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers]?
			public var fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes]?
			public var fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots]?
			public var fieldsSubscriptionAvailabilities: [FieldsSubscriptionAvailabilities]?
			public var fieldsSubscriptionPrices: [FieldsSubscriptionPrices]?
			public var fieldsSubscriptionIntroductoryOffers: [FieldsSubscriptionIntroductoryOffers]?
			public var fieldsSubscriptionLocalizations: [FieldsSubscriptionLocalizations]?
			public var limitIntroductoryOffers: Int?
			public var limitOfferCodes: Int?
			public var limitPrices: Int?
			public var limitPromotionalOffers: Int?
			public var limitSubscriptionLocalizations: Int?

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

			public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
				case appStoreReviewScreenshot
				case group
				case introductoryOffers
				case offerCodes
				case prices
				case promotedPurchase
				case promotionalOffers
				case subscriptionAvailability
				case subscriptionLocalizations
			}

			public enum FieldsPromotedPurchases: String, Codable, CaseIterable, Hashable, Sendable {
				case app
				case enabled
				case inAppPurchaseV2
				case promotionImages
				case state
				case subscription
				case visibleForAllUsers
			}

			public enum FieldsSubscriptionPricePoints: String, Codable, CaseIterable, Hashable, Sendable {
				case customerPrice
				case equalizations
				case proceeds
				case proceedsYear2
				case subscription
				case territory
			}

			public enum FieldsSubscriptionPromotionalOffers: String, Codable, CaseIterable, Hashable, Sendable {
				case duration
				case name
				case numberOfPeriods
				case offerCode
				case offerMode
				case prices
				case subscription
			}

			public enum FieldsSubscriptionOfferCodes: String, Codable, CaseIterable, Hashable, Sendable {
				case active
				case customCodes
				case customerEligibilities
				case duration
				case name
				case numberOfPeriods
				case offerEligibility
				case offerMode
				case oneTimeUseCodes
				case prices
				case subscription
				case totalNumberOfCodes
			}

			public enum FieldsSubscriptionAppStoreReviewScreenshots: String, Codable, CaseIterable, Hashable, Sendable {
				case assetDeliveryState
				case assetToken
				case assetType
				case fileName
				case fileSize
				case imageAsset
				case sourceFileChecksum
				case subscription
				case uploadOperations
				case uploaded
			}

			public enum FieldsSubscriptionAvailabilities: String, Codable, CaseIterable, Hashable, Sendable {
				case availableInNewTerritories
				case availableTerritories
				case subscription
			}

			public enum FieldsSubscriptionPrices: String, Codable, CaseIterable, Hashable, Sendable {
				case preserveCurrentPrice
				case preserved
				case startDate
				case subscription
				case subscriptionPricePoint
				case territory
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

			public enum FieldsSubscriptionLocalizations: String, Codable, CaseIterable, Hashable, Sendable {
				case description
				case locale
				case name
				case state
				case subscription
			}

			public init(fieldsSubscriptions: [FieldsSubscriptions]? = nil, include: [Include]? = nil, fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]? = nil, fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers]? = nil, fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes]? = nil, fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots]? = nil, fieldsSubscriptionAvailabilities: [FieldsSubscriptionAvailabilities]? = nil, fieldsSubscriptionPrices: [FieldsSubscriptionPrices]? = nil, fieldsSubscriptionIntroductoryOffers: [FieldsSubscriptionIntroductoryOffers]? = nil, fieldsSubscriptionLocalizations: [FieldsSubscriptionLocalizations]? = nil, limitIntroductoryOffers: Int? = nil, limitOfferCodes: Int? = nil, limitPrices: Int? = nil, limitPromotionalOffers: Int? = nil, limitSubscriptionLocalizations: Int? = nil) {
				self.fieldsSubscriptions = fieldsSubscriptions
				self.include = include
				self.fieldsPromotedPurchases = fieldsPromotedPurchases
				self.fieldsSubscriptionPricePoints = fieldsSubscriptionPricePoints
				self.fieldsSubscriptionPromotionalOffers = fieldsSubscriptionPromotionalOffers
				self.fieldsSubscriptionOfferCodes = fieldsSubscriptionOfferCodes
				self.fieldsSubscriptionAppStoreReviewScreenshots = fieldsSubscriptionAppStoreReviewScreenshots
				self.fieldsSubscriptionAvailabilities = fieldsSubscriptionAvailabilities
				self.fieldsSubscriptionPrices = fieldsSubscriptionPrices
				self.fieldsSubscriptionIntroductoryOffers = fieldsSubscriptionIntroductoryOffers
				self.fieldsSubscriptionLocalizations = fieldsSubscriptionLocalizations
				self.limitIntroductoryOffers = limitIntroductoryOffers
				self.limitOfferCodes = limitOfferCodes
				self.limitPrices = limitPrices
				self.limitPromotionalOffers = limitPromotionalOffers
				self.limitSubscriptionLocalizations = limitSubscriptionLocalizations
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
				encoder.encode(fieldsSubscriptionPricePoints, forKey: "fields[subscriptionPricePoints]")
				encoder.encode(fieldsSubscriptionPromotionalOffers, forKey: "fields[subscriptionPromotionalOffers]")
				encoder.encode(fieldsSubscriptionOfferCodes, forKey: "fields[subscriptionOfferCodes]")
				encoder.encode(fieldsSubscriptionAppStoreReviewScreenshots, forKey: "fields[subscriptionAppStoreReviewScreenshots]")
				encoder.encode(fieldsSubscriptionAvailabilities, forKey: "fields[subscriptionAvailabilities]")
				encoder.encode(fieldsSubscriptionPrices, forKey: "fields[subscriptionPrices]")
				encoder.encode(fieldsSubscriptionIntroductoryOffers, forKey: "fields[subscriptionIntroductoryOffers]")
				encoder.encode(fieldsSubscriptionLocalizations, forKey: "fields[subscriptionLocalizations]")
				encoder.encode(limitIntroductoryOffers, forKey: "limit[introductoryOffers]")
				encoder.encode(limitOfferCodes, forKey: "limit[offerCodes]")
				encoder.encode(limitPrices, forKey: "limit[prices]")
				encoder.encode(limitPromotionalOffers, forKey: "limit[promotionalOffers]")
				encoder.encode(limitSubscriptionLocalizations, forKey: "limit[subscriptionLocalizations]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.SubscriptionUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.SubscriptionResponse> {
			Request(method: "PATCH", path: path, body: body, id: "subscriptions-update_instance")
		}

		public var delete: Request<Void> {
			Request(method: "DELETE", path: path, id: "subscriptions-delete_instance")
		}
	}
}
