// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BetaTesters.WithID.Relationships {
	public var builds: Builds {
		Builds(path: path + "/builds")
	}

	public struct Builds {
		/// Path: `/v1/betaTesters/{id}/relationships/builds`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaTesterBuildsLinkagesResponse> {
			Request(method: "GET", path: path, query: makeGetQuery(limit), id: "betaTesters-builds-get_to_many_relationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.BetaTesterBuildsLinkagesRequest) -> Request<Void> {
			Request(method: "POST", path: path, body: body, id: "betaTesters-builds-create_to_many_relationship")
		}

		public func delete(_ body: AppStoreConnect_Swift_SDK.BetaTesterBuildsLinkagesRequest) -> Request<Void> {
			Request(method: "DELETE", path: path, body: body, id: "betaTesters-builds-delete_to_many_relationship")
		}
	}
}
