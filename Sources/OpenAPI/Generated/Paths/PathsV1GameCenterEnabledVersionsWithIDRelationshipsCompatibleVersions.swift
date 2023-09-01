// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterEnabledVersions.WithID.Relationships {
	public var compatibleVersions: CompatibleVersions {
		CompatibleVersions(path: path + "/compatibleVersions")
	}

	public struct CompatibleVersions {
		/// Path: `/v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterEnabledVersionCompatibleVersionsLinkagesResponse> {
			Request(method: "GET", path: path, query: makeGetQuery(limit), id: "gameCenterEnabledVersions-compatibleVersions-get_to_many_relationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.GameCenterEnabledVersionCompatibleVersionsLinkagesRequest) -> Request<Void> {
			Request(method: "POST", path: path, body: body, id: "gameCenterEnabledVersions-compatibleVersions-create_to_many_relationship")
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.GameCenterEnabledVersionCompatibleVersionsLinkagesRequest) -> Request<Void> {
			Request(method: "PATCH", path: path, body: body, id: "gameCenterEnabledVersions-compatibleVersions-replace_to_many_relationship")
		}

		public func delete(_ body: AppStoreConnect_Swift_SDK.GameCenterEnabledVersionCompatibleVersionsLinkagesRequest) -> Request<Void> {
			Request(method: "DELETE", path: path, body: body, id: "gameCenterEnabledVersions-compatibleVersions-delete_to_many_relationship")
		}
	}
}
