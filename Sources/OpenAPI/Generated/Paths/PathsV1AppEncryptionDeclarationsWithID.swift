// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppEncryptionDeclarations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appEncryptionDeclarations/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppEncryptionDeclarationResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "appEncryptionDeclarations-get_instance")
		}

		public struct GetParameters {
			public var fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]?
			public var include: [Include]?
			public var fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments]?
			public var fieldsApps: [FieldsApps]?
			public var limitBuilds: Int?

			public enum FieldsAppEncryptionDeclarations: String, Codable, CaseIterable, Hashable, Sendable {
				case app
				case appDescription
				case appEncryptionDeclarationDocument
				case appEncryptionDeclarationState
				case availableOnFrenchStore
				case builds
				case codeValue
				case containsProprietaryCryptography
				case containsThirdPartyCryptography
				case createdDate
				case documentName
				case documentType
				case documentURL = "documentUrl"
				case exempt
				case platform
				case uploadedDate
				case usesEncryption
			}

			public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
				case app
				case appEncryptionDeclarationDocument
				case builds
			}

			public enum FieldsAppEncryptionDeclarationDocuments: String, Codable, CaseIterable, Hashable, Sendable {
				case appEncryptionDeclaration
				case assetDeliveryState
				case assetToken
				case downloadURL = "downloadUrl"
				case fileName
				case fileSize
				case sourceFileChecksum
				case uploadOperations
				case uploaded
			}

			public enum FieldsApps: String, Codable, CaseIterable, Hashable, Sendable {
				case appAvailability
				case appClips
				case appCustomProductPages
				case appEvents
				case appInfos
				case appPricePoints
				case appPriceSchedule
				case appStoreVersionExperimentsV2
				case appStoreVersions
				case availableInNewTerritories
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case betaTesters
				case builds
				case bundleID = "bundleId"
				case ciProduct
				case contentRightsDeclaration
				case customerReviews
				case endUserLicenseAgreement
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case isOrEverWasMadeForKids
				case name
				case perfPowerMetrics
				case preOrder
				case preReleaseVersions
				case pricePoints
				case prices
				case primaryLocale
				case promotedPurchases
				case reviewSubmissions
				case sku
				case subscriptionGracePeriod
				case subscriptionGroups
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
			}

			public init(fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]? = nil, include: [Include]? = nil, fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments]? = nil, fieldsApps: [FieldsApps]? = nil, limitBuilds: Int? = nil) {
				self.fieldsAppEncryptionDeclarations = fieldsAppEncryptionDeclarations
				self.include = include
				self.fieldsAppEncryptionDeclarationDocuments = fieldsAppEncryptionDeclarationDocuments
				self.fieldsApps = fieldsApps
				self.limitBuilds = limitBuilds
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppEncryptionDeclarations, forKey: "fields[appEncryptionDeclarations]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppEncryptionDeclarationDocuments, forKey: "fields[appEncryptionDeclarationDocuments]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(limitBuilds, forKey: "limit[builds]")
				return encoder.items
			}
		}
	}
}
