// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CiTestResultsResponse: Codable, Hashable, Sendable {
	public var data: [CiTestResult]
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public init(data: [CiTestResult], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.links = links
		self.meta = meta
	}
}
