// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppStoreVersionReleaseRequestResponse: Codable, Hashable, Sendable {
	/// AppStoreVersionReleaseRequest
	public var data: AppStoreVersionReleaseRequest
	public var links: DocumentLinks

	public init(data: AppStoreVersionReleaseRequest, links: DocumentLinks) {
		self.data = data
		self.links = links
	}
}
