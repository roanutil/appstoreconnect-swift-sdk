// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct InAppPurchaseAvailabilityResponse: Codable, Hashable, Sendable {
	/// InAppPurchaseAvailability
	public var data: InAppPurchaseAvailability
	public var included: [Territory]?
	public var links: DocumentLinks

	public init(data: InAppPurchaseAvailability, included: [Territory]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}
}
