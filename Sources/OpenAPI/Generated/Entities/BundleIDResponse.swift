// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BundleIDResponse: Codable, Hashable, Sendable {
	/// BundleId
	public var data: BundleID
	public var included: [IncludedItem]?
	public var links: DocumentLinks

	public enum IncludedItem: Codable, Hashable, Sendable {
		case profile(Profile)
		case bundleIDCapability(BundleIDCapability)
		case app(App)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(Profile.self) {
				self = .profile(value)
			} else if let value = try? container.decode(BundleIDCapability.self) {
				self = .bundleIDCapability(value)
			} else if let value = try? container.decode(App.self) {
				self = .app(value)
			} else {
				throw DecodingError.dataCorruptedError(
					in: container,
					debugDescription: "Data could not be decoded as any of the expected types (Profile, BundleIDCapability, App)."
				)
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .profile(let value): try container.encode(value)
			case .bundleIDCapability(let value): try container.encode(value)
			case .app(let value): try container.encode(value)
			}
		}
	}

	public init(data: BundleID, included: [IncludedItem]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}
}
