// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppStoreVersionExperimentTreatmentLocalizationsResponse: Codable, Hashable, Sendable {
	public var data: [AppStoreVersionExperimentTreatmentLocalization]
	public var included: [IncludedItem]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public enum IncludedItem: Codable, Hashable, Sendable {
		case appStoreVersionExperimentTreatment(AppStoreVersionExperimentTreatment)
		case appScreenshotSet(AppScreenshotSet)
		case appPreviewSet(AppPreviewSet)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(AppStoreVersionExperimentTreatment.self) {
				self = .appStoreVersionExperimentTreatment(value)
			} else if let value = try? container.decode(AppScreenshotSet.self) {
				self = .appScreenshotSet(value)
			} else if let value = try? container.decode(AppPreviewSet.self) {
				self = .appPreviewSet(value)
			} else {
				throw DecodingError.dataCorruptedError(
					in: container,
					debugDescription: "Data could not be decoded as any of the expected types (AppStoreVersionExperimentTreatment, AppScreenshotSet, AppPreviewSet)."
				)
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .appStoreVersionExperimentTreatment(let value): try container.encode(value)
			case .appScreenshotSet(let value): try container.encode(value)
			case .appPreviewSet(let value): try container.encode(value)
			}
		}
	}

	public init(data: [AppStoreVersionExperimentTreatmentLocalization], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}
}
