// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var ciXcodeVersions: CiXcodeVersions {
		CiXcodeVersions(path: path + "/ciXcodeVersions")
	}

	public struct CiXcodeVersions {
		/// Path: `/v1/ciXcodeVersions`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.CiXcodeVersionsResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "ciXcodeVersions-get_collection")
		}

		public struct GetParameters {
			public var fieldsCiXcodeVersions: [FieldsCiXcodeVersions]?
			public var limit: Int?
			public var include: [Include]?
			public var fieldsCiMacOsVersions: [FieldsCiMacOsVersions]?
			public var limitMacOsVersions: Int?

			public enum FieldsCiXcodeVersions: String, Codable, CaseIterable, Hashable, Sendable {
				case macOsVersions
				case name
				case testDestinations
				case version
			}

			public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
				case macOsVersions
			}

			public enum FieldsCiMacOsVersions: String, Codable, CaseIterable, Hashable, Sendable {
				case name
				case version
				case xcodeVersions
			}

			public init(fieldsCiXcodeVersions: [FieldsCiXcodeVersions]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions]? = nil, limitMacOsVersions: Int? = nil) {
				self.fieldsCiXcodeVersions = fieldsCiXcodeVersions
				self.limit = limit
				self.include = include
				self.fieldsCiMacOsVersions = fieldsCiMacOsVersions
				self.limitMacOsVersions = limitMacOsVersions
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsCiXcodeVersions, forKey: "fields[ciXcodeVersions]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsCiMacOsVersions, forKey: "fields[ciMacOsVersions]")
				encoder.encode(limitMacOsVersions, forKey: "limit[macOsVersions]")
				return encoder.items
			}
		}
	}
}
