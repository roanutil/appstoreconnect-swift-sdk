// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BetaGroupResponse: Codable, Hashable, Sendable {
	/// BetaGroup
	public var data: BetaGroup
	public var included: [IncludedItem]?
	public var links: DocumentLinks

	public enum IncludedItem: Codable, Hashable, Sendable {
		case app(App)
		case build(Build)
		case betaTester(BetaTester)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(App.self) {
				self = .app(value)
			} else if let value = try? container.decode(Build.self) {
				self = .build(value)
			} else if let value = try? container.decode(BetaTester.self) {
				self = .betaTester(value)
			} else {
				throw DecodingError.dataCorruptedError(
					in: container,
					debugDescription: "Data could not be decoded as any of the expected types (App, Build, BetaTester)."
				)
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .app(let value): try container.encode(value)
			case .build(let value): try container.encode(value)
			case .betaTester(let value): try container.encode(value)
			}
		}
	}

	public init(data: BetaGroup, included: [IncludedItem]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}
}
