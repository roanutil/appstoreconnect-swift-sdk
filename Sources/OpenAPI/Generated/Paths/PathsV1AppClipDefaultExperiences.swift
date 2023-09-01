// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appClipDefaultExperiences: AppClipDefaultExperiences {
		AppClipDefaultExperiences(path: path + "/appClipDefaultExperiences")
	}

	public struct AppClipDefaultExperiences {
		/// Path: `/v1/appClipDefaultExperiences`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppClipDefaultExperienceCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppClipDefaultExperienceResponse> {
			Request(method: "POST", path: path, body: body, id: "appClipDefaultExperiences-create_instance")
		}
	}
}
