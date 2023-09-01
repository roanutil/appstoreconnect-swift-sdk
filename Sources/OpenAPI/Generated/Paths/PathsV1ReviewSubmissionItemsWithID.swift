// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.ReviewSubmissionItems {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/reviewSubmissionItems/{id}`
		public let path: String

		public func patch(_ body: AppStoreConnect_Swift_SDK.ReviewSubmissionItemUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.ReviewSubmissionItemResponse> {
			Request(method: "PATCH", path: path, body: body, id: "reviewSubmissionItems-update_instance")
		}

		public var delete: Request<Void> {
			Request(method: "DELETE", path: path, id: "reviewSubmissionItems-delete_instance")
		}
	}
}
