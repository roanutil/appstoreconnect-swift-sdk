// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppEventScreenshotUpdateRequest: Codable, Hashable, Sendable {
	public var data: Data

	public struct Data: Codable, Hashable, Identifiable, Sendable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?

		public enum `Type`: String, Codable, CaseIterable, Hashable, Sendable {
			case appEventScreenshots
		}

		public struct Attributes: Codable, Hashable, Sendable {
			public var isUploaded: Bool?

			public init(isUploaded: Bool? = nil) {
				self.isUploaded = isUploaded
			}

			private enum CodingKeys: String, CodingKey {
				case isUploaded = "uploaded"
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
