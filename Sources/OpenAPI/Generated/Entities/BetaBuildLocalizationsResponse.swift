// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BetaBuildLocalizationsResponse: Codable, Hashable, Sendable {
	public var data: [BetaBuildLocalization]
	public var included: [Build]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public init(data: [BetaBuildLocalization], included: [Build]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}
}
