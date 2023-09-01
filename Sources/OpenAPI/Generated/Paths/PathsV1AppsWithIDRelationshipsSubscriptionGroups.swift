// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Relationships {
	public var subscriptionGroups: SubscriptionGroups {
		SubscriptionGroups(path: path + "/subscriptionGroups")
	}

	public struct SubscriptionGroups {
		/// Path: `/v1/apps/{id}/relationships/subscriptionGroups`
		public let path: String
	}
}
