// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct TerritoriesResponse: Codable, Hashable, Sendable {
	public var data: [Territory]
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public init(data: [Territory], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.links = links
		self.meta = meta
	}
}
