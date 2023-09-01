// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct HTTPHeader: Codable, Hashable, Sendable {
	public var name: String?
	public var value: String?

	public init(name: String? = nil, value: String? = nil) {
		self.name = name
		self.value = value
	}
}
