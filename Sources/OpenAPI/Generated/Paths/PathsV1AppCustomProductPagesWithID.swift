// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppCustomProductPages {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appCustomProductPages/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppCustomProductPageResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "appCustomProductPages-get_instance")
		}

		public struct GetParameters {
			public var fieldsAppCustomProductPages: [FieldsAppCustomProductPages]?
			public var include: [Include]?
			public var fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]?
			public var limitAppCustomProductPageVersions: Int?

			public enum FieldsAppCustomProductPages: String, Codable, CaseIterable, Hashable, Sendable {
				case app
				case appCustomProductPageVersions
				case appStoreVersionTemplate
				case customProductPageTemplate
				case name
				case url
				case visible
			}

			public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
				case app
				case appCustomProductPageVersions
			}

			public enum FieldsAppCustomProductPageVersions: String, Codable, CaseIterable, Hashable, Sendable {
				case appCustomProductPage
				case appCustomProductPageLocalizations
				case state
				case version
			}

			public init(fieldsAppCustomProductPages: [FieldsAppCustomProductPages]? = nil, include: [Include]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]? = nil, limitAppCustomProductPageVersions: Int? = nil) {
				self.fieldsAppCustomProductPages = fieldsAppCustomProductPages
				self.include = include
				self.fieldsAppCustomProductPageVersions = fieldsAppCustomProductPageVersions
				self.limitAppCustomProductPageVersions = limitAppCustomProductPageVersions
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppCustomProductPages, forKey: "fields[appCustomProductPages]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppCustomProductPageVersions, forKey: "fields[appCustomProductPageVersions]")
				encoder.encode(limitAppCustomProductPageVersions, forKey: "limit[appCustomProductPageVersions]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppCustomProductPageUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AppCustomProductPageResponse> {
			Request(method: "PATCH", path: path, body: body, id: "appCustomProductPages-update_instance")
		}

		public var delete: Request<Void> {
			Request(method: "DELETE", path: path, id: "appCustomProductPages-delete_instance")
		}
	}
}
