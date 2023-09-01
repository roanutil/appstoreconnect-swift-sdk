// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CiPullRequestStartCondition: Codable, Hashable, Sendable {
	public var source: CiBranchPatterns?
	public var destination: CiBranchPatterns?
	public var filesAndFoldersRule: CiFilesAndFoldersRule?
	public var isAutoCancel: Bool?

	public init(source: CiBranchPatterns? = nil, destination: CiBranchPatterns? = nil, filesAndFoldersRule: CiFilesAndFoldersRule? = nil, isAutoCancel: Bool? = nil) {
		self.source = source
		self.destination = destination
		self.filesAndFoldersRule = filesAndFoldersRule
		self.isAutoCancel = isAutoCancel
	}

	private enum CodingKeys: String, CodingKey {
		case source
		case destination
		case filesAndFoldersRule
		case isAutoCancel = "autoCancel"
	}
}
