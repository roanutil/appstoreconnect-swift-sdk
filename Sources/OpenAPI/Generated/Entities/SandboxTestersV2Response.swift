// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SandboxTestersV2Response: Codable, Hashable, Sendable {
	public var data: [SandboxTesterV2]
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public init(data: [SandboxTesterV2], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.links = links
		self.meta = meta
	}
}
