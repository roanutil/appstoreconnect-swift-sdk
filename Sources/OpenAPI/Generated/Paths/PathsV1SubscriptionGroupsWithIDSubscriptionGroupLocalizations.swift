// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.SubscriptionGroups.WithID {
	public var subscriptionGroupLocalizations: SubscriptionGroupLocalizations {
		SubscriptionGroupLocalizations(path: path + "/subscriptionGroupLocalizations")
	}

	public struct SubscriptionGroupLocalizations {
		/// Path: `/v1/subscriptionGroups/{id}/subscriptionGroupLocalizations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionGroupLocalizationsResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "subscriptionGroups-subscriptionGroupLocalizations-get_to_many_related")
		}

		public struct GetParameters {
			public var fieldsSubscriptionGroups: [FieldsSubscriptionGroups]?
			public var fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]?
			public var limit: Int?
			public var include: [Include]?

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
				case subscriptionGroup
			}

			public init(fieldsSubscriptionGroups: [FieldsSubscriptionGroups]? = nil, fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsSubscriptionGroups = fieldsSubscriptionGroups
				self.fieldsSubscriptionGroupLocalizations = fieldsSubscriptionGroupLocalizations
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsSubscriptionGroups, forKey: "fields[subscriptionGroups]")
				encoder.encode(fieldsSubscriptionGroupLocalizations, forKey: "fields[subscriptionGroupLocalizations]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
