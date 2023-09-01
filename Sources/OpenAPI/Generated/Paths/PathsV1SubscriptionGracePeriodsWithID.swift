// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.SubscriptionGracePeriods {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/subscriptionGracePeriods/{id}`
		public let path: String

		public func get(fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionGracePeriodResponse> {
			Request(method: "GET", path: path, query: makeGetQuery(fieldsSubscriptionGracePeriods), id: "subscriptionGracePeriods-get_instance")
		}

		private func makeGetQuery(_ fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsSubscriptionGracePeriods, forKey: "fields[subscriptionGracePeriods]", explode: false)
			return encoder.items
		}

		public enum FieldsSubscriptionGracePeriods: String, Codable, CaseIterable, Hashable, Sendable {
			case duration
			case optIn
			case renewalType
			case sandboxOptIn
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.SubscriptionGracePeriodUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.SubscriptionGracePeriodResponse> {
			Request(method: "PATCH", path: path, body: body, id: "subscriptionGracePeriods-update_instance")
		}
	}
}
