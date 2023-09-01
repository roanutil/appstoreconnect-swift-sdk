// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appPreviewSets: AppPreviewSets {
		AppPreviewSets(path: path + "/appPreviewSets")
	}

	public struct AppPreviewSets {
		/// Path: `/v1/appPreviewSets`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppPreviewSetCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppPreviewSetResponse> {
			Request(method: "POST", path: path, body: body, id: "appPreviewSets-create_instance")
		}
	}
}
