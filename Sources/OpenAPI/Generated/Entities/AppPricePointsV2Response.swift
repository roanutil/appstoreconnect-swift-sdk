// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

@available(*, deprecated, message: "Deprecated")
public struct AppPricePointsV2Response: Codable, Hashable, Sendable {
	public var data: [AppPricePointV2]
	public var included: [IncludedItem]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public enum IncludedItem: Codable, Hashable, Sendable {
		case app(App)
		case appPriceTier(AppPriceTier)
		case territory(Territory)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(App.self) {
				self = .app(value)
			} else if let value = try? container.decode(AppPriceTier.self) {
				self = .appPriceTier(value)
			} else if let value = try? container.decode(Territory.self) {
				self = .territory(value)
			} else {
				throw DecodingError.dataCorruptedError(
					in: container,
					debugDescription: "Data could not be decoded as any of the expected types (App, AppPriceTier, Territory)."
				)
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .app(let value): try container.encode(value)
			case .appPriceTier(let value): try container.encode(value)
			case .territory(let value): try container.encode(value)
			}
		}
	}

	public init(data: [AppPricePointV2], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}
}
