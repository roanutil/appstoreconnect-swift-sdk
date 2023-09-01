// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SubscriptionAvailability: Codable, Hashable, Identifiable, Sendable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable, Hashable, Sendable {
		case subscriptionAvailabilities
	}

	public struct Attributes: Codable, Hashable, Sendable {
		public var isAvailableInNewTerritories: Bool?

		public init(isAvailableInNewTerritories: Bool? = nil) {
			self.isAvailableInNewTerritories = isAvailableInNewTerritories
		}

		private enum CodingKeys: String, CodingKey {
			case isAvailableInNewTerritories = "availableInNewTerritories"
		}
	}

	public struct Relationships: Codable, Hashable, Sendable {
		public var subscription: Subscription?
		public var availableTerritories: AvailableTerritories?

		public struct Subscription: Codable, Hashable, Sendable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable, Hashable, Sendable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				private enum CodingKeys: String, CodingKey {
					case this = "self"
					case related
				}
			}

			public struct Data: Codable, Hashable, Identifiable, Sendable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable, Hashable, Sendable {
					case subscriptions
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}
			}

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}
		}

		public struct AvailableTerritories: Codable, Hashable, Sendable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable, Hashable, Sendable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				private enum CodingKeys: String, CodingKey {
					case this = "self"
					case related
				}
			}

			public struct Datum: Codable, Hashable, Identifiable, Sendable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable, Hashable, Sendable {
					case territories
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}
			}

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}
		}

		public init(subscription: Subscription? = nil, availableTerritories: AvailableTerritories? = nil) {
			self.subscription = subscription
			self.availableTerritories = availableTerritories
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}
}
