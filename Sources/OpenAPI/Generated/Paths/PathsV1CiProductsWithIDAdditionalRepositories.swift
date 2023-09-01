// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiProducts.WithID {
	public var additionalRepositories: AdditionalRepositories {
		AdditionalRepositories(path: path + "/additionalRepositories")
	}

	public struct AdditionalRepositories {
		/// Path: `/v1/ciProducts/{id}/additionalRepositories`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.ScmRepositoriesResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "ciProducts-additionalRepositories-get_to_many_related")
		}

		public struct GetParameters {
			public var filterID: [String]?
			public var fieldsScmGitReferences: [FieldsScmGitReferences]?
			public var fieldsScmProviders: [FieldsScmProviders]?
			public var fieldsScmRepositories: [FieldsScmRepositories]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsScmGitReferences: String, Codable, CaseIterable, Hashable, Sendable {
				case canonicalName
				case isDeleted
				case kind
				case name
				case repository
			}

			public enum FieldsScmProviders: String, Codable, CaseIterable, Hashable, Sendable {
				case repositories
				case scmProviderType
				case url
			}

			public enum FieldsScmRepositories: String, Codable, CaseIterable, Hashable, Sendable {
				case defaultBranch
				case gitReferences
				case httpCloneURL = "httpCloneUrl"
				case lastAccessedDate
				case ownerName
				case pullRequests
				case repositoryName
				case scmProvider
				case sshCloneURL = "sshCloneUrl"
			}

			public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
				case defaultBranch
				case scmProvider
			}

			public init(filterID: [String]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences]? = nil, fieldsScmProviders: [FieldsScmProviders]? = nil, fieldsScmRepositories: [FieldsScmRepositories]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterID = filterID
				self.fieldsScmGitReferences = fieldsScmGitReferences
				self.fieldsScmProviders = fieldsScmProviders
				self.fieldsScmRepositories = fieldsScmRepositories
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterID, forKey: "filter[id]")
				encoder.encode(fieldsScmGitReferences, forKey: "fields[scmGitReferences]")
				encoder.encode(fieldsScmProviders, forKey: "fields[scmProviders]")
				encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
