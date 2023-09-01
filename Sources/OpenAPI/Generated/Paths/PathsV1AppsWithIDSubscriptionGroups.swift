// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var subscriptionGroups: SubscriptionGroups {
		SubscriptionGroups(path: path + "/subscriptionGroups")
	}

	public struct SubscriptionGroups {
		/// Path: `/v1/apps/{id}/subscriptionGroups`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionGroupsResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "apps-subscriptionGroups-get_to_many_related")
		}

		public struct GetParameters {
			public var filterReferenceName: [String]?
			public var filterSubscriptionsState: [FilterSubscriptionsState]?
			public var sort: [Sort]?
			public var fieldsSubscriptions: [FieldsSubscriptions]?
			public var fieldsSubscriptionGroups: [FieldsSubscriptionGroups]?
			public var fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]?
			public var limit: Int?
			public var limitSubscriptions: Int?
			public var limitSubscriptionGroupLocalizations: Int?
			public var include: [Include]?

			public enum FilterSubscriptionsState: String, Codable, CaseIterable, Hashable, Sendable {
				case missingMetadata = "MISSING_METADATA"
				case readyToSubmit = "READY_TO_SUBMIT"
				case waitingForReview = "WAITING_FOR_REVIEW"
				case inReview = "IN_REVIEW"
				case developerActionNeeded = "DEVELOPER_ACTION_NEEDED"
				case pendingBinaryApproval = "PENDING_BINARY_APPROVAL"
				case approved = "APPROVED"
				case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
				case removedFromSale = "REMOVED_FROM_SALE"
				case rejected = "REJECTED"
			}

			public enum Sort: String, Codable, CaseIterable, Hashable, Sendable {
				case referenceName
				case minusreferenceName = "-referenceName"
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

			public enum FieldsSubscriptionGroups: String, Codable, CaseIterable, Hashable, Sendable {
				case app
				case referenceName
				case subscriptionGroupLocalizations
				case subscriptions
			}

			public enum FieldsSubscriptionGroupLocalizations: String, Codable, CaseIterable, Hashable, Sendable {
				case customAppName
				case locale
				case name
				case state
				case subscriptionGroup
			}

			public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
				case subscriptionGroupLocalizations
				case subscriptions
			}

			public init(filterReferenceName: [String]? = nil, filterSubscriptionsState: [FilterSubscriptionsState]? = nil, sort: [Sort]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsSubscriptionGroups: [FieldsSubscriptionGroups]? = nil, fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]? = nil, limit: Int? = nil, limitSubscriptions: Int? = nil, limitSubscriptionGroupLocalizations: Int? = nil, include: [Include]? = nil) {
				self.filterReferenceName = filterReferenceName
				self.filterSubscriptionsState = filterSubscriptionsState
				self.sort = sort
				self.fieldsSubscriptions = fieldsSubscriptions
				self.fieldsSubscriptionGroups = fieldsSubscriptionGroups
				self.fieldsSubscriptionGroupLocalizations = fieldsSubscriptionGroupLocalizations
				self.limit = limit
				self.limitSubscriptions = limitSubscriptions
				self.limitSubscriptionGroupLocalizations = limitSubscriptionGroupLocalizations
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterReferenceName, forKey: "filter[referenceName]")
				encoder.encode(filterSubscriptionsState, forKey: "filter[subscriptions.state]")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
				encoder.encode(fieldsSubscriptionGroups, forKey: "fields[subscriptionGroups]")
				encoder.encode(fieldsSubscriptionGroupLocalizations, forKey: "fields[subscriptionGroupLocalizations]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitSubscriptions, forKey: "limit[subscriptions]")
				encoder.encode(limitSubscriptionGroupLocalizations, forKey: "limit[subscriptionGroupLocalizations]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
