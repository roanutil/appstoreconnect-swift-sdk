// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var preReleaseVersions: PreReleaseVersions {
		PreReleaseVersions(path: path + "/preReleaseVersions")
	}

	public struct PreReleaseVersions {
		/// Path: `/v1/preReleaseVersions`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.PreReleaseVersionsResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "preReleaseVersions-get_collection")
		}

		public struct GetParameters {
			public var filterBuildsExpired: [String]?
			public var filterBuildsProcessingState: [FilterBuildsProcessingState]?
			public var filterBuildsVersion: [String]?
			public var filterPlatform: [FilterPlatform]?
			public var filterVersion: [String]?
			public var filterApp: [String]?
			public var filterBuilds: [String]?
			public var sort: [Sort]?
			public var fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?
			public var limit: Int?
			public var include: [Include]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsBuilds: [FieldsBuilds]?
			public var limitBuilds: Int?

			public enum FilterBuildsProcessingState: String, Codable, CaseIterable, Hashable, Sendable {
				case processing = "PROCESSING"
				case failed = "FAILED"
				case invalid = "INVALID"
				case valid = "VALID"
			}

			public enum FilterPlatform: String, Codable, CaseIterable, Hashable, Sendable {
				case ios = "IOS"
				case macOs = "MAC_OS"
				case tvOs = "TV_OS"
			}

			public enum Sort: String, Codable, CaseIterable, Hashable, Sendable {
				case version
				case minusversion = "-version"
			}

			public enum FieldsPreReleaseVersions: String, Codable, CaseIterable, Hashable, Sendable {
				case app
				case builds
				case platform
				case version
			}

			public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
				case app
				case builds
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

			public enum FieldsBuilds: String, Codable, CaseIterable, Hashable, Sendable {
				case app
				case appEncryptionDeclaration
				case appStoreVersion
				case betaAppReviewSubmission
				case betaBuildLocalizations
				case betaGroups
				case buildAudienceType
				case buildBetaDetail
				case buildBundles
				case computedMinMacOsVersion
				case diagnosticSignatures
				case expirationDate
				case expired
				case iconAssetToken
				case icons
				case individualTesters
				case lsMinimumSystemVersion
				case minOsVersion
				case perfPowerMetrics
				case preReleaseVersion
				case processingState
				case uploadedDate
				case usesNonExemptEncryption
				case version
			}

			public init(filterBuildsExpired: [String]? = nil, filterBuildsProcessingState: [FilterBuildsProcessingState]? = nil, filterBuildsVersion: [String]? = nil, filterPlatform: [FilterPlatform]? = nil, filterVersion: [String]? = nil, filterApp: [String]? = nil, filterBuilds: [String]? = nil, sort: [Sort]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, limitBuilds: Int? = nil) {
				self.filterBuildsExpired = filterBuildsExpired
				self.filterBuildsProcessingState = filterBuildsProcessingState
				self.filterBuildsVersion = filterBuildsVersion
				self.filterPlatform = filterPlatform
				self.filterVersion = filterVersion
				self.filterApp = filterApp
				self.filterBuilds = filterBuilds
				self.sort = sort
				self.fieldsPreReleaseVersions = fieldsPreReleaseVersions
				self.limit = limit
				self.include = include
				self.fieldsApps = fieldsApps
				self.fieldsBuilds = fieldsBuilds
				self.limitBuilds = limitBuilds
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterBuildsExpired, forKey: "filter[builds.expired]")
				encoder.encode(filterBuildsProcessingState, forKey: "filter[builds.processingState]")
				encoder.encode(filterBuildsVersion, forKey: "filter[builds.version]")
				encoder.encode(filterPlatform, forKey: "filter[platform]")
				encoder.encode(filterVersion, forKey: "filter[version]")
				encoder.encode(filterApp, forKey: "filter[app]")
				encoder.encode(filterBuilds, forKey: "filter[builds]")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				encoder.encode(limitBuilds, forKey: "limit[builds]")
				return encoder.items
			}
		}
	}
}
