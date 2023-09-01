// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppEventScreenshots {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appEventScreenshots/{id}`
		public let path: String

		public func get(fieldsAppEventScreenshots: [FieldsAppEventScreenshots]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.AppEventScreenshotResponse> {
			Request(method: "GET", path: path, query: makeGetQuery(fieldsAppEventScreenshots, include), id: "appEventScreenshots-get_instance")
		}

		private func makeGetQuery(_ fieldsAppEventScreenshots: [FieldsAppEventScreenshots]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsAppEventScreenshots, forKey: "fields[appEventScreenshots]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsAppEventScreenshots: String, Codable, CaseIterable, Hashable, Sendable {
			case appEventAssetType
			case appEventLocalization
			case assetDeliveryState
			case assetToken
			case fileName
			case fileSize
			case imageAsset
			case uploadOperations
			case uploaded
		}

		public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
			case appEventLocalization
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppEventScreenshotUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AppEventScreenshotResponse> {
			Request(method: "PATCH", path: path, body: body, id: "appEventScreenshots-update_instance")
		}

		public var delete: Request<Void> {
			Request(method: "DELETE", path: path, id: "appEventScreenshots-delete_instance")
		}
	}
}
