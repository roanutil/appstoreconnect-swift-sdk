// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppCustomProductPageLocalizationCreateRequest: Codable, Hashable, Sendable {
	public var data: Data

	public struct Data: Codable, Hashable, Sendable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable, Hashable, Sendable {
			case appCustomProductPageLocalizations
		}

		public struct Attributes: Codable, Hashable, Sendable {
			public var locale: String
			public var promotionalText: String?

			public init(locale: String, promotionalText: String? = nil) {
				self.locale = locale
				self.promotionalText = promotionalText
			}
		}

		public struct Relationships: Codable, Hashable, Sendable {
			public var appCustomProductPageVersion: AppCustomProductPageVersion

			public struct AppCustomProductPageVersion: Codable, Hashable, Sendable {
				public var data: Data

				public struct Data: Codable, Hashable, Identifiable, Sendable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable, Hashable, Sendable {
						case appCustomProductPageVersions
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

			public init(appCustomProductPageVersion: AppCustomProductPageVersion) {
				self.appCustomProductPageVersion = appCustomProductPageVersion
			}
		}

		public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}
	}

	public init(data: Data) {
		self.data = data
	}
}
