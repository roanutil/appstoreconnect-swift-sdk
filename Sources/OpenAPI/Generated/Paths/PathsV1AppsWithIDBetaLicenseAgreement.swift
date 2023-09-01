// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var betaLicenseAgreement: BetaLicenseAgreement {
		BetaLicenseAgreement(path: path + "/betaLicenseAgreement")
	}

	public struct BetaLicenseAgreement {
		/// Path: `/v1/apps/{id}/betaLicenseAgreement`
		public let path: String

		public func get(fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaLicenseAgreementResponse> {
			Request(method: "GET", path: path, query: makeGetQuery(fieldsBetaLicenseAgreements), id: "apps-betaLicenseAgreement-get_to_one_related")
		}

		private func makeGetQuery(_ fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsBetaLicenseAgreements, forKey: "fields[betaLicenseAgreements]", explode: false)
			return encoder.items
		}

		public enum FieldsBetaLicenseAgreements: String, Codable, CaseIterable, Hashable, Sendable {
			case agreementText
			case app
		}
	}
}
