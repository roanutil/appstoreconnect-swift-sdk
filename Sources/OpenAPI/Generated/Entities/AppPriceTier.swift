// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

@available(*, deprecated, message: "Deprecated")
public struct AppPriceTier: Codable, Hashable, Identifiable, Sendable {
	public var type: `Type`
	public var id: String
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable, Hashable, Sendable {
		case appPriceTiers
	}

	public struct Relationships: Codable, Hashable, Sendable {
		/// - warning: Deprecated.
		public var pricePoints: PricePoints?

		@available(*, deprecated, message: "Deprecated")
		public struct PricePoints: Codable, Hashable, Sendable {
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
					case appPricePoints
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

		public init(pricePoints: PricePoints? = nil) {
			self.pricePoints = pricePoints
		}
	}

	public init(type: `Type`, id: String, relationships: Relationships? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.relationships = relationships
		self.links = links
	}
}
