// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Builds.WithID.Relationships {
	public var app: App {
		App(path: path + "/app")
	}

	public struct App {
		/// Path: `/v1/builds/{id}/relationships/app`
		public let path: String
	}
}
