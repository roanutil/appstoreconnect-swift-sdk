// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BundleIDCapabilityResponse: Codable, Hashable, Sendable {
	/// BundleIdCapability
	public var data: BundleIDCapability
	public var links: DocumentLinks

	public init(data: BundleIDCapability, links: DocumentLinks) {
		self.data = data
		self.links = links
	}
}
