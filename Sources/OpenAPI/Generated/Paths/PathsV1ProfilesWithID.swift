// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Profiles {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/profiles/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.ProfileResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "profiles-get_instance")
		}

		public struct GetParameters {
			public var fieldsProfiles: [FieldsProfiles]?
			public var include: [Include]?
			public var fieldsCertificates: [FieldsCertificates]?
			public var fieldsDevices: [FieldsDevices]?
			public var fieldsBundleIDs: [FieldsBundleIDs]?
			public var limitCertificates: Int?
			public var limitDevices: Int?

			public enum FieldsProfiles: String, Codable, CaseIterable, Hashable, Sendable {
				case bundleID = "bundleId"
				case certificates
				case createdDate
				case devices
				case expirationDate
				case name
				case platform
				case profileContent
				case profileState
				case profileType
				case uuid
			}

			public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
				case bundleID = "bundleId"
				case certificates
				case devices
			}

			public enum FieldsCertificates: String, Codable, CaseIterable, Hashable, Sendable {
				case certificateContent
				case certificateType
				case csrContent
				case displayName
				case expirationDate
				case name
				case platform
				case serialNumber
			}

			public enum FieldsDevices: String, Codable, CaseIterable, Hashable, Sendable {
				case addedDate
				case deviceClass
				case model
				case name
				case platform
				case status
				case udid
			}

			public enum FieldsBundleIDs: String, Codable, CaseIterable, Hashable, Sendable {
				case app
				case bundleIDCapabilities = "bundleIdCapabilities"
				case identifier
				case name
				case platform
				case profiles
				case seedID = "seedId"
			}

			public init(fieldsProfiles: [FieldsProfiles]? = nil, include: [Include]? = nil, fieldsCertificates: [FieldsCertificates]? = nil, fieldsDevices: [FieldsDevices]? = nil, fieldsBundleIDs: [FieldsBundleIDs]? = nil, limitCertificates: Int? = nil, limitDevices: Int? = nil) {
				self.fieldsProfiles = fieldsProfiles
				self.include = include
				self.fieldsCertificates = fieldsCertificates
				self.fieldsDevices = fieldsDevices
				self.fieldsBundleIDs = fieldsBundleIDs
				self.limitCertificates = limitCertificates
				self.limitDevices = limitDevices
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsProfiles, forKey: "fields[profiles]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsCertificates, forKey: "fields[certificates]")
				encoder.encode(fieldsDevices, forKey: "fields[devices]")
				encoder.encode(fieldsBundleIDs, forKey: "fields[bundleIds]")
				encoder.encode(limitCertificates, forKey: "limit[certificates]")
				encoder.encode(limitDevices, forKey: "limit[devices]")
				return encoder.items
			}
		}

		public var delete: Request<Void> {
			Request(method: "DELETE", path: path, id: "profiles-delete_instance")
		}
	}
}
