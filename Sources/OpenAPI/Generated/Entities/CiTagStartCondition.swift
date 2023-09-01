// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CiTagStartCondition: Codable, Hashable, Sendable {
	public var source: CiTagPatterns?
	public var filesAndFoldersRule: CiFilesAndFoldersRule?
	public var isAutoCancel: Bool?

	public init(source: CiTagPatterns? = nil, filesAndFoldersRule: CiFilesAndFoldersRule? = nil, isAutoCancel: Bool? = nil) {
		self.source = source
		self.filesAndFoldersRule = filesAndFoldersRule
		self.isAutoCancel = isAutoCancel
	}

	private enum CodingKeys: String, CodingKey {
		case source
		case filesAndFoldersRule
		case isAutoCancel = "autoCancel"
	}
}
