// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BetaAppClipInvocationLocalizationResponse: Codable, Hashable, Sendable {
	/// BetaAppClipInvocationLocalization
	public var data: BetaAppClipInvocationLocalization
	public var links: DocumentLinks

	public init(data: BetaAppClipInvocationLocalization, links: DocumentLinks) {
		self.data = data
		self.links = links
	}
}
