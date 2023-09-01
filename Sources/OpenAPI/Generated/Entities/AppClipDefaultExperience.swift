// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppClipDefaultExperience: Codable, Hashable, Identifiable, Sendable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable, Hashable, Sendable {
		case appClipDefaultExperiences
	}

	public struct Attributes: Codable, Hashable, Sendable {
		public var action: AppClipAction?

		public init(action: AppClipAction? = nil) {
			self.action = action
		}
	}

	public struct Relationships: Codable, Hashable, Sendable {
		public var appClip: AppClip?
		public var releaseWithAppStoreVersion: ReleaseWithAppStoreVersion?
		public var appClipDefaultExperienceLocalizations: AppClipDefaultExperienceLocalizations?
		public var appClipAppStoreReviewDetail: AppClipAppStoreReviewDetail?

		public struct AppClip: Codable, Hashable, Sendable {
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
					case appClips
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

		public struct ReleaseWithAppStoreVersion: Codable, Hashable, Sendable {
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
					case appStoreVersions
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

		public struct AppClipDefaultExperienceLocalizations: Codable, Hashable, Sendable {
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
					case appClipDefaultExperienceLocalizations
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

		public struct AppClipAppStoreReviewDetail: Codable, Hashable, Sendable {
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
					case appClipAppStoreReviewDetails
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

		public init(appClip: AppClip? = nil, releaseWithAppStoreVersion: ReleaseWithAppStoreVersion? = nil, appClipDefaultExperienceLocalizations: AppClipDefaultExperienceLocalizations? = nil, appClipAppStoreReviewDetail: AppClipAppStoreReviewDetail? = nil) {
			self.appClip = appClip
			self.releaseWithAppStoreVersion = releaseWithAppStoreVersion
			self.appClipDefaultExperienceLocalizations = appClipDefaultExperienceLocalizations
			self.appClipAppStoreReviewDetail = appClipAppStoreReviewDetail
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
