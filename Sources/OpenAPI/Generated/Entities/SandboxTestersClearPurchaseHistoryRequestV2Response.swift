// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SandboxTestersClearPurchaseHistoryRequestV2Response: Codable, Hashable, Sendable {
	/// SandboxTestersClearPurchaseHistoryRequestV2
	public var data: SandboxTestersClearPurchaseHistoryRequestV2
	public var links: DocumentLinks

	public init(data: SandboxTestersClearPurchaseHistoryRequestV2, links: DocumentLinks) {
		self.data = data
		self.links = links
	}
}
