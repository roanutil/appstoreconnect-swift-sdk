// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppClipDomainStatusResponse: Codable, Hashable, Sendable {
	/// AppClipDomainStatus
	public var data: AppClipDomainStatus
	public var links: DocumentLinks

	public init(data: AppClipDomainStatus, links: DocumentLinks) {
		self.data = data
		self.links = links
	}
}
