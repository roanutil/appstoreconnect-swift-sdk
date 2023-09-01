// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SandboxTesterV2Response: Codable, Hashable, Sendable {
	/// SandboxTesterV2
	public var data: SandboxTesterV2
	public var links: DocumentLinks

	public init(data: SandboxTesterV2, links: DocumentLinks) {
		self.data = data
		self.links = links
	}
}
