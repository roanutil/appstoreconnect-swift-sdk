// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersions.WithID {
	public var appStoreVersionExperiments: AppStoreVersionExperiments {
		AppStoreVersionExperiments(path: path + "/appStoreVersionExperiments")
	}

	public struct AppStoreVersionExperiments {
		/// Path: `/v1/appStoreVersions/{id}/appStoreVersionExperiments`
		public let path: String

		@available(*, deprecated, message: "Deprecated")
		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionExperimentsResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "appStoreVersions-appStoreVersionExperiments-get_to_many_related")
		}

		public struct GetParameters {
			public var filterState: [FilterState]?
			public var fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]?
			public var fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var limit: Int?
			public var limitAppStoreVersionExperimentTreatments: Int?
			public var include: [Include]?

			public enum FilterState: String, Codable, CaseIterable, Hashable, Sendable {
				case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
				case readyForReview = "READY_FOR_REVIEW"
				case waitingForReview = "WAITING_FOR_REVIEW"
				case inReview = "IN_REVIEW"
				case accepted = "ACCEPTED"
				case approved = "APPROVED"
				case rejected = "REJECTED"
				case completed = "COMPLETED"
				case stopped = "STOPPED"
			}

			public enum FieldsAppStoreVersionExperiments: String, Codable, CaseIterable, Hashable, Sendable {
				case appStoreVersion
				case appStoreVersionExperimentTreatments
				case endDate
				case name
				case reviewRequired
				case startDate
				case started
				case state
				case trafficProportion
			}

			public enum FieldsAppStoreVersionExperimentTreatments: String, Codable, CaseIterable, Hashable, Sendable {
				case appIcon
				case appIconName
				case appStoreVersionExperiment
				case appStoreVersionExperimentTreatmentLocalizations
				case appStoreVersionExperimentV2
				case name
				case promotedDate
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

			public enum Include: String, Codable, CaseIterable, Hashable, Sendable {
				case appStoreVersion
				case appStoreVersionExperimentTreatments
			}

			public init(filterState: [FilterState]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, limit: Int? = nil, limitAppStoreVersionExperimentTreatments: Int? = nil, include: [Include]? = nil) {
				self.filterState = filterState
				self.fieldsAppStoreVersionExperiments = fieldsAppStoreVersionExperiments
				self.fieldsAppStoreVersionExperimentTreatments = fieldsAppStoreVersionExperimentTreatments
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.limit = limit
				self.limitAppStoreVersionExperimentTreatments = limitAppStoreVersionExperimentTreatments
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterState, forKey: "filter[state]")
				encoder.encode(fieldsAppStoreVersionExperiments, forKey: "fields[appStoreVersionExperiments]")
				encoder.encode(fieldsAppStoreVersionExperimentTreatments, forKey: "fields[appStoreVersionExperimentTreatments]")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitAppStoreVersionExperimentTreatments, forKey: "limit[appStoreVersionExperimentTreatments]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
