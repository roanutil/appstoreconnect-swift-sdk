// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Builds.WithID {
	public var appStoreVersion: AppStoreVersion {
		AppStoreVersion(path: path + "/appStoreVersion")
	}

	public struct AppStoreVersion {
		/// Path: `/v1/builds/{id}/appStoreVersion`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "builds-appStoreVersion-get_to_one_related")
		}

		public struct GetParameters {
			public var fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]?
			public var fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]?
			public var fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions]?
			public var fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages]?
			public var fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]?
			public var fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases]?
			public var fieldsBuilds: [FieldsBuilds]?
			public var fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]?
			public var limitAppStoreVersionLocalizations: Int?
			public var limitAppStoreVersionExperiments: Int?
			public var limitAppStoreVersionExperimentsV2: Int?
			public var include: [Include]?

			public enum FieldsAppStoreVersionExperiments: String, Codable, CaseIterable, Hashable, Sendable {
				case app
				case appStoreVersionExperimentTreatments
				case controlVersions
				case endDate
				case latestControlVersion
				case name
				case platform
				case reviewRequired
				case startDate
				case started
				case state
				case trafficProportion
			}

			public enum FieldsAgeRatingDeclarations: String, Codable, CaseIterable, Hashable, Sendable {
				case alcoholTobaccoOrDrugUseOrReferences
				case contests
				case gambling
				case gamblingAndContests
				case gamblingSimulated
				case horrorOrFearThemes
				case kidsAgeBand
				case matureOrSuggestiveThemes
				case medicalOrTreatmentInformation
				case profanityOrCrudeHumor
				case seventeenPlus
				case sexualContentGraphicAndNudity
				case sexualContentOrNudity
				case unrestrictedWebAccess
				case violenceCartoonOrFantasy
				case violenceRealistic
				case violenceRealisticProlongedGraphicOrSadistic
			}

			public enum FieldsAppStoreVersionSubmissions: String, Codable, CaseIterable, Hashable, Sendable {
				case appStoreVersion
			}

			public enum FieldsAppStoreReviewDetails: String, Codable, CaseIterable, Hashable, Sendable {
				case appStoreReviewAttachments
				case appStoreVersion
				case contactEmail
				case contactFirstName
				case contactLastName
				case contactPhone
				case demoAccountName
				case demoAccountPassword
				case demoAccountRequired
				case notes
			}

			public enum FieldsAppStoreVersions: String, Codable, CaseIterable, Hashable, Sendable {
				case ageRatingDeclaration
				case app
				case appClipDefaultExperience
				case appStoreReviewDetail
				case appStoreState
				case appStoreVersionExperiments
				case appStoreVersionExperimentsV2
				case appStoreVersionLocalizations
				case appStoreVersionPhasedRelease
				case appStoreVersionSubmission
				case build
				case copyright
				case createdDate
				case customerReviews
				case downloadable
				case earliestReleaseDate
				case platform
				case releaseType
				case routingAppCoverage
				case versionString
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

			public enum FieldsRoutingAppCoverages: String, Codable, CaseIterable, Hashable, Sendable {
				case appStoreVersion
				case assetDeliveryState
				case fileName
				case fileSize
				case sourceFileChecksum
				case uploadOperations
				case uploaded
			}

			public enum FieldsAppClipDefaultExperiences: String, Codable, CaseIterable, Hashable, Sendable {
				case action
				case appClip
				case appClipAppStoreReviewDetail
				case appClipDefaultExperienceLocalizations
				case appClipDefaultExperienceTemplate
				case releaseWithAppStoreVersion
			}

			public enum FieldsAppStoreVersionPhasedReleases: String, Codable, CaseIterable, Hashable, Sendable {
				case appStoreVersion
				case currentDayNumber
				case phasedReleaseState
				case startDate
				case totalPauseDuration
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

			public enum FieldsAppStoreVersionLocalizations: String, Codable, CaseIterable, Hashable, Sendable {
				case appPreviewSets
				case appScreenshotSets
				case appStoreVersion
				case description
				case keywords
				case locale
				case marketingURL = "marketingUrl"
				case promotionalText
				case supportURL = "supportUrl"
				case whatsNew
			}

			public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
				case ageRatingDeclaration
				case app
				case appClipDefaultExperience
				case appStoreReviewDetail
				case appStoreVersionExperiments
				case appStoreVersionExperimentsV2
				case appStoreVersionLocalizations
				case appStoreVersionPhasedRelease
				case appStoreVersionSubmission
				case build
				case routingAppCoverage
			}

			public init(fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]? = nil, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]? = nil, fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions]? = nil, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]? = nil, fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]? = nil, limitAppStoreVersionLocalizations: Int? = nil, limitAppStoreVersionExperiments: Int? = nil, limitAppStoreVersionExperimentsV2: Int? = nil, include: [Include]? = nil) {
				self.fieldsAppStoreVersionExperiments = fieldsAppStoreVersionExperiments
				self.fieldsAgeRatingDeclarations = fieldsAgeRatingDeclarations
				self.fieldsAppStoreVersionSubmissions = fieldsAppStoreVersionSubmissions
				self.fieldsAppStoreReviewDetails = fieldsAppStoreReviewDetails
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.fieldsApps = fieldsApps
				self.fieldsRoutingAppCoverages = fieldsRoutingAppCoverages
				self.fieldsAppClipDefaultExperiences = fieldsAppClipDefaultExperiences
				self.fieldsAppStoreVersionPhasedReleases = fieldsAppStoreVersionPhasedReleases
				self.fieldsBuilds = fieldsBuilds
				self.fieldsAppStoreVersionLocalizations = fieldsAppStoreVersionLocalizations
				self.limitAppStoreVersionLocalizations = limitAppStoreVersionLocalizations
				self.limitAppStoreVersionExperiments = limitAppStoreVersionExperiments
				self.limitAppStoreVersionExperimentsV2 = limitAppStoreVersionExperimentsV2
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppStoreVersionExperiments, forKey: "fields[appStoreVersionExperiments]")
				encoder.encode(fieldsAgeRatingDeclarations, forKey: "fields[ageRatingDeclarations]")
				encoder.encode(fieldsAppStoreVersionSubmissions, forKey: "fields[appStoreVersionSubmissions]")
				encoder.encode(fieldsAppStoreReviewDetails, forKey: "fields[appStoreReviewDetails]")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsRoutingAppCoverages, forKey: "fields[routingAppCoverages]")
				encoder.encode(fieldsAppClipDefaultExperiences, forKey: "fields[appClipDefaultExperiences]")
				encoder.encode(fieldsAppStoreVersionPhasedReleases, forKey: "fields[appStoreVersionPhasedReleases]")
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				encoder.encode(fieldsAppStoreVersionLocalizations, forKey: "fields[appStoreVersionLocalizations]")
				encoder.encode(limitAppStoreVersionLocalizations, forKey: "limit[appStoreVersionLocalizations]")
				encoder.encode(limitAppStoreVersionExperiments, forKey: "limit[appStoreVersionExperiments]")
				encoder.encode(limitAppStoreVersionExperimentsV2, forKey: "limit[appStoreVersionExperimentsV2]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
