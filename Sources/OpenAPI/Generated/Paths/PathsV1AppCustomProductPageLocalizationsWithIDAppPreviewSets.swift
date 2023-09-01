// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppCustomProductPageLocalizations.WithID {
	public var appPreviewSets: AppPreviewSets {
		AppPreviewSets(path: path + "/appPreviewSets")
	}

	public struct AppPreviewSets {
		/// Path: `/v1/appCustomProductPageLocalizations/{id}/appPreviewSets`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppPreviewSetsResponse> {
			Request(method: "GET", path: path, query: parameters?.asQuery, id: "appCustomProductPageLocalizations-appPreviewSets-get_to_many_related")
		}

		public struct GetParameters {
			public var filterPreviewType: [FilterPreviewType]?
			public var filterAppStoreVersionExperimentTreatmentLocalization: [String]?
			public var filterAppStoreVersionLocalization: [String]?
			public var fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]?
			public var fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]?
			public var fieldsAppPreviews: [FieldsAppPreviews]?
			public var fieldsAppPreviewSets: [FieldsAppPreviewSets]?
			public var fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]?
			public var limit: Int?
			public var limitAppPreviews: Int?
			public var include: [Include]?

			public enum FilterPreviewType: String, Codable, CaseIterable, Hashable, Sendable {
				case iphone67 = "IPHONE_67"
				case iphone61 = "IPHONE_61"
				case iphone65 = "IPHONE_65"
				case iphone58 = "IPHONE_58"
				case iphone55 = "IPHONE_55"
				case iphone47 = "IPHONE_47"
				case iphone40 = "IPHONE_40"
				case iphone35 = "IPHONE_35"
				case ipadPro3gen129 = "IPAD_PRO_3GEN_129"
				case ipadPro3gen11 = "IPAD_PRO_3GEN_11"
				case ipadPro129 = "IPAD_PRO_129"
				case ipad105 = "IPAD_105"
				case ipad97 = "IPAD_97"
				case desktop = "DESKTOP"
				case appleTv = "APPLE_TV"
			}

			public enum FieldsAppCustomProductPageLocalizations: String, Codable, CaseIterable, Hashable, Sendable {
				case appCustomProductPageVersion
				case appPreviewSets
				case appScreenshotSets
				case locale
				case promotionalText
			}

			public enum FieldsAppStoreVersionExperimentTreatmentLocalizations: String, Codable, CaseIterable, Hashable, Sendable {
				case appPreviewSets
				case appScreenshotSets
				case appStoreVersionExperimentTreatment
				case locale
			}

			public enum FieldsAppPreviews: String, Codable, CaseIterable, Hashable, Sendable {
				case appPreviewSet
				case assetDeliveryState
				case fileName
				case fileSize
				case mimeType
				case previewFrameTimeCode
				case previewImage
				case sourceFileChecksum
				case uploadOperations
				case uploaded
				case videoURL = "videoUrl"
			}

			public enum FieldsAppPreviewSets: String, Codable, CaseIterable, Hashable, Sendable {
				case appCustomProductPageLocalization
				case appPreviews
				case appStoreVersionExperimentTreatmentLocalization
				case appStoreVersionLocalization
				case previewType
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
				case appCustomProductPageLocalization
				case appPreviews
				case appStoreVersionExperimentTreatmentLocalization
				case appStoreVersionLocalization
			}

			public init(filterPreviewType: [FilterPreviewType]? = nil, filterAppStoreVersionExperimentTreatmentLocalization: [String]? = nil, filterAppStoreVersionLocalization: [String]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]? = nil, fieldsAppPreviews: [FieldsAppPreviews]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]? = nil, limit: Int? = nil, limitAppPreviews: Int? = nil, include: [Include]? = nil) {
				self.filterPreviewType = filterPreviewType
				self.filterAppStoreVersionExperimentTreatmentLocalization = filterAppStoreVersionExperimentTreatmentLocalization
				self.filterAppStoreVersionLocalization = filterAppStoreVersionLocalization
				self.fieldsAppCustomProductPageLocalizations = fieldsAppCustomProductPageLocalizations
				self.fieldsAppStoreVersionExperimentTreatmentLocalizations = fieldsAppStoreVersionExperimentTreatmentLocalizations
				self.fieldsAppPreviews = fieldsAppPreviews
				self.fieldsAppPreviewSets = fieldsAppPreviewSets
				self.fieldsAppStoreVersionLocalizations = fieldsAppStoreVersionLocalizations
				self.limit = limit
				self.limitAppPreviews = limitAppPreviews
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterPreviewType, forKey: "filter[previewType]")
				encoder.encode(filterAppStoreVersionExperimentTreatmentLocalization, forKey: "filter[appStoreVersionExperimentTreatmentLocalization]")
				encoder.encode(filterAppStoreVersionLocalization, forKey: "filter[appStoreVersionLocalization]")
				encoder.encode(fieldsAppCustomProductPageLocalizations, forKey: "fields[appCustomProductPageLocalizations]")
				encoder.encode(fieldsAppStoreVersionExperimentTreatmentLocalizations, forKey: "fields[appStoreVersionExperimentTreatmentLocalizations]")
				encoder.encode(fieldsAppPreviews, forKey: "fields[appPreviews]")
				encoder.encode(fieldsAppPreviewSets, forKey: "fields[appPreviewSets]")
				encoder.encode(fieldsAppStoreVersionLocalizations, forKey: "fields[appStoreVersionLocalizations]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitAppPreviews, forKey: "limit[appPreviews]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
