// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V2.InAppPurchases.WithID.Relationships {
	public var inAppPurchaseAvailability: InAppPurchaseAvailability {
		InAppPurchaseAvailability(path: path + "/inAppPurchaseAvailability")
	}

	public struct InAppPurchaseAvailability {
		/// Path: `/v2/inAppPurchases/{id}/relationships/inAppPurchaseAvailability`
		public let path: String
	}
}
