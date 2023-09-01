// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V2 {
	public var sandboxTesters: SandboxTesters {
		SandboxTesters(path: path + "/sandboxTesters")
	}

	public struct SandboxTesters {
		/// Path: `/v2/sandboxTesters`
		public let path: String

		public func get(fieldsSandboxTesters: [FieldsSandboxTesters]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.SandboxTestersV2Response> {
			Request(method: "GET", path: path, query: makeGetQuery(fieldsSandboxTesters, limit), id: "sandboxTesters-get_collection")
		}

		private func makeGetQuery(_ fieldsSandboxTesters: [FieldsSandboxTesters]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsSandboxTesters, forKey: "fields[sandboxTesters]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsSandboxTesters: String, Codable, CaseIterable, Hashable, Sendable {
			case acAccountName
			case applePayCompatible
			case firstName
			case interruptPurchases
			case lastName
			case subscriptionRenewalRate
			case territory
		}
	}
}
