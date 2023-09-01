// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ProfileCreateRequest: Codable, Hashable, Sendable {
	public var data: Data

	public struct Data: Codable, Hashable, Sendable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable, Hashable, Sendable {
			case profiles
		}

		public struct Attributes: Codable, Hashable, Sendable {
			public var name: String
			public var profileType: ProfileType

			public enum ProfileType: String, Codable, CaseIterable, Hashable, Sendable {
				case iosAppDevelopment = "IOS_APP_DEVELOPMENT"
				case iosAppStore = "IOS_APP_STORE"
				case iosAppAdhoc = "IOS_APP_ADHOC"
				case iosAppInhouse = "IOS_APP_INHOUSE"
				case macAppDevelopment = "MAC_APP_DEVELOPMENT"
				case macAppStore = "MAC_APP_STORE"
				case macAppDirect = "MAC_APP_DIRECT"
				case tvosAppDevelopment = "TVOS_APP_DEVELOPMENT"
				case tvosAppStore = "TVOS_APP_STORE"
				case tvosAppAdhoc = "TVOS_APP_ADHOC"
				case tvosAppInhouse = "TVOS_APP_INHOUSE"
				case macCatalystAppDevelopment = "MAC_CATALYST_APP_DEVELOPMENT"
				case macCatalystAppStore = "MAC_CATALYST_APP_STORE"
				case macCatalystAppDirect = "MAC_CATALYST_APP_DIRECT"
			}

			public init(name: String, profileType: ProfileType) {
				self.name = name
				self.profileType = profileType
			}
		}

		public struct Relationships: Codable, Hashable, Sendable {
			public var bundleID: BundleID
			public var devices: Devices?
			public var certificates: Certificates

			public struct BundleID: Codable, Hashable, Sendable {
				public var data: Data

				public struct Data: Codable, Hashable, Identifiable, Sendable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable, Hashable, Sendable {
						case bundleIDs = "bundleIds"
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

			public struct Devices: Codable, Hashable, Sendable {
				public var data: [Datum]?

				public struct Datum: Codable, Hashable, Identifiable, Sendable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable, Hashable, Sendable {
						case devices
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}
				}

				public init(data: [Datum]? = nil) {
					self.data = data
				}
			}

			public struct Certificates: Codable, Hashable, Sendable {
				public var data: [Datum]

				public struct Datum: Codable, Hashable, Identifiable, Sendable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable, Hashable, Sendable {
						case certificates
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}
				}

				public init(data: [Datum]) {
					self.data = data
				}
			}

			public init(bundleID: BundleID, devices: Devices? = nil, certificates: Certificates) {
				self.bundleID = bundleID
				self.devices = devices
				self.certificates = certificates
			}

			private enum CodingKeys: String, CodingKey {
				case bundleID = "bundleId"
				case devices
				case certificates
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
