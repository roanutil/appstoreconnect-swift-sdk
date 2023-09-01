// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppPreOrderCreateRequest: Codable, Hashable, Sendable {
	public var data: Data

	public struct Data: Codable, Hashable, Sendable {
		public var type: `Type`
		public var attributes: Attributes?
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable, Hashable, Sendable {
			case appPreOrders
		}

		public struct Attributes: Codable, Hashable, Sendable {
			public var appReleaseDate: String?

			public init(appReleaseDate: String? = nil) {
				self.appReleaseDate = appReleaseDate
			}
		}

		public struct Relationships: Codable, Hashable, Sendable {
			public var app: App

			public struct App: Codable, Hashable, Sendable {
				public var data: Data

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

				public init(data: Data) {
					self.data = data
				}
			}

			public init(app: App) {
				self.app = app
			}
		}

		public init(type: `Type`, attributes: Attributes? = nil, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}
	}

	public init(data: Data) {
		self.data = data
	}
}
