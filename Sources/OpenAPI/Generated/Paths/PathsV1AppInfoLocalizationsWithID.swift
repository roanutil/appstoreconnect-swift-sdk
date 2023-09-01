// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppInfoLocalizations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appInfoLocalizations/{id}`
		public let path: String

		public func get(fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.AppInfoLocalizationResponse> {
			Request(method: "GET", path: path, query: makeGetQuery(fieldsAppInfoLocalizations, include), id: "appInfoLocalizations-get_instance")
		}

		private func makeGetQuery(_ fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsAppInfoLocalizations, forKey: "fields[appInfoLocalizations]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsAppInfoLocalizations: String, Codable, CaseIterable, Hashable, Sendable {
			case appInfo
			case locale
			case name
			case privacyChoicesURL = "privacyChoicesUrl"
			case privacyPolicyText
			case privacyPolicyURL = "privacyPolicyUrl"
			case subtitle
		}

		public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
			case appInfo
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppInfoLocalizationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AppInfoLocalizationResponse> {
			Request(method: "PATCH", path: path, body: body, id: "appInfoLocalizations-update_instance")
		}

		public var delete: Request<Void> {
			Request(method: "DELETE", path: path, id: "appInfoLocalizations-delete_instance")
		}
	}
}
