// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppPreOrder: Codable, Hashable, Identifiable, Sendable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable, Hashable, Sendable {
		case appPreOrders
	}

	public struct Attributes: Codable, Hashable, Sendable {
		public var preOrderAvailableDate: String?
		public var appReleaseDate: String?

		public init(preOrderAvailableDate: String? = nil, appReleaseDate: String? = nil) {
			self.preOrderAvailableDate = preOrderAvailableDate
			self.appReleaseDate = appReleaseDate
		}
	}

	public struct Relationships: Codable, Hashable, Sendable {
		public var app: App?

		public struct App: Codable, Hashable, Sendable {
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
					case apps
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

		public init(app: App? = nil) {
			self.app = app
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
