// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppScreenshotSets.WithID.Relationships {
	public var appScreenshots: AppScreenshots {
		AppScreenshots(path: path + "/appScreenshots")
	}

	public struct AppScreenshots {
		/// Path: `/v1/appScreenshotSets/{id}/relationships/appScreenshots`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AppScreenshotSetAppScreenshotsLinkagesResponse> {
			Request(method: "GET", path: path, query: makeGetQuery(limit), id: "appScreenshotSets-appScreenshots-get_to_many_relationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppScreenshotSetAppScreenshotsLinkagesRequest) -> Request<Void> {
			Request(method: "PATCH", path: path, body: body, id: "appScreenshotSets-appScreenshots-replace_to_many_relationship")
		}
	}
}
