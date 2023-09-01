// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BetaTesters.WithID {
	public var builds: Builds {
		Builds(path: path + "/builds")
	}

	public struct Builds {
		/// Path: `/v1/betaTesters/{id}/builds`
		public let path: String

		public func get(fieldsBuilds: [FieldsBuilds]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.BuildsResponse> {
			Request(method: "GET", path: path, query: makeGetQuery(fieldsBuilds, limit), id: "betaTesters-builds-get_to_many_related")
		}

		private func makeGetQuery(_ fieldsBuilds: [FieldsBuilds]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsBuilds, forKey: "fields[builds]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
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
	}
}
