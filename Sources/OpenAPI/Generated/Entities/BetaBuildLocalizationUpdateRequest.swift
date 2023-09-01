// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BetaBuildLocalizationUpdateRequest: Codable, Hashable, Sendable {
	public var data: Data

	public struct Data: Codable, Hashable, Identifiable, Sendable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?

		public enum `Type`: String, Codable, CaseIterable, Hashable, Sendable {
			case betaBuildLocalizations
		}

		public struct Attributes: Codable, Hashable, Sendable {
			public var whatsNew: String?

			public init(whatsNew: String? = nil) {
				self.whatsNew = whatsNew
			}
		}

		public init(type: `Type`, id: String, attributes: Attributes? = nil) {
			self.type = type
			self.id = id
			self.attributes = attributes
		}
	}

	public init(data: Data) {
		self.data = data
	}
}
