// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BuildBundles.WithID {
	public var appClipDomainDebugStatus: AppClipDomainDebugStatus {
		AppClipDomainDebugStatus(path: path + "/appClipDomainDebugStatus")
	}

	public struct AppClipDomainDebugStatus {
		/// Path: `/v1/buildBundles/{id}/appClipDomainDebugStatus`
		public let path: String

		public func get(fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses]? = nil) -> Request<AppStoreConnect_Swift_SDK.AppClipDomainStatusResponse> {
			Request(method: "GET", path: path, query: makeGetQuery(fieldsAppClipDomainStatuses), id: "buildBundles-appClipDomainDebugStatus-get_to_one_related")
		}

		private func makeGetQuery(_ fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAppClipDomainStatuses, forKey: "fields[appClipDomainStatuses]", explode: false)
			return encoder.items
		}

		public enum FieldsAppClipDomainStatuses: String, Codable, CaseIterable, Hashable, Sendable {
			case domains
			case lastUpdatedDate
		}
	}
}
