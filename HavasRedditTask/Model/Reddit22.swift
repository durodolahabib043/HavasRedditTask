//
//  Reddit22.swift
//  HavasRedditTask
//
//  Created by Habib Durodola on 2021-03-10.
//

import Foundation

// MARK: - Reddit22

struct Reddit22: Codable {
    let kind: String?
    let data: Reddit22Data?
}

// MARK: - Reddit22Data

struct Reddit22Data: Codable {
    let modhash: String?
    let dist: Int?
    let children: [Child]?
    let after: String?
    let before: JSONNull?
}

// MARK: - Child

struct Child: Codable {
    let kind: Kind?
    let data: ChildData?
}

// MARK: - ChildData

struct ChildData: Codable {
    let approvedAtUTC: JSONNull?
    let subreddit, selftext, authorFullname: String?
    let saved: Bool?
    let modReasonTitle: JSONNull?
    let gilded: Int?
    let clicked: Bool?
    let title: String?
    let linkFlairRichtext: [FlairRichtext]?
    let subredditNamePrefixed: String?
    let hidden: Bool?
    let pwls: Int?
    let linkFlairCSSClass: String?
    let downs: Int?
    let thumbnailHeight: Int?
    let topAwardedType: String?
    let hideScore: Bool?
    let name: String?
    let quarantine: Bool?
    let linkFlairTextColor: String?
    let upvoteRatio: Double?
    let authorFlairBackgroundColor: String?
    let subredditType: String?
    let ups, totalAwardsReceived: Int?
    let mediaEmbed: MediaEmbed?
    let thumbnailWidth: Int?
    let authorFlairTemplateID: String?
    let isOriginalContent: Bool?
    let userReports: [JSONAny]?
    let secureMedia: Media?
    let isRedditMediaDomain, isMeta: Bool?
    let category: JSONNull?
    let secureMediaEmbed: MediaEmbed?
    let linkFlairText: String?
    let canModPost: Bool?
    let score: Int?
    let approvedBy: JSONNull?
    let authorPremium: Bool?
    let thumbnail: String?
    let edited: Edited? ////
    let authorFlairCSSClass: String?
    let authorFlairRichtext: [FlairRichtext]?
    let gildings: Gildings?
    let postHint: String?
    let contentCategories: [String]?
    let isSelf: Bool?
    let modNote: JSONNull?
    let created: Int?
    let linkFlairType: String?
    let wls: Int?
    let removedByCategory, bannedBy: JSONNull?
    let authorFlairType: String?
    let domain: String?
    let allowLiveComments: Bool?
    let selftextHTML: String?
    let likes: JSONNull?
    let suggestedSort: String?
    let bannedAtUTC: JSONNull?
    let urlOverriddenByDest: String?
    let viewCount: JSONNull?
    let archived, noFollow, isCrosspostable, pinned: Bool?
    let over18: Bool?
    let preview: DataPreview?
    let allAwardings: [AllAwarding]?
    let awarders: [JSONAny]?
    let mediaOnly, canGild, spoiler, locked: Bool?
    let authorFlairText: String?
    let treatmentTags: [JSONAny]?
    let visited: Bool?
    let removedBy, numReports: JSONNull?
    let distinguished: String?
    let subredditID: String?
    let modReasonBy, removalReason: JSONNull?
    let linkFlairBackgroundColor: String?
    let id: String?
    let isRobotIndexable: Bool?
    let reportReasons: JSONNull?
    let author: String?
    let discussionType: String?
    let numComments: Int?
    let sendReplies: Bool?
    let whitelistStatus: String?
    let contestMode: Bool?
    let modReports: [JSONAny]?
    let authorPatreonFlair: Bool?
    let authorFlairTextColor: FlairTextColor?
    let permalink: String?
    let parentWhitelistStatus: String? /// sd
    let stickied: Bool?
    let url: String?
    let subredditSubscribers, createdUTC, numCrossposts: Int?
    let media: Media?
    let isVideo: Bool?
    let linkFlairTemplateID: String?
    let isGallery: Bool?
    let mediaMetadata: [String: MediaMetadatum]?
    let galleryData: GalleryData?
    let crosspostParentList: [CrosspostParentList]?
    let crosspostParent: String?

    enum CodingKeys: String, CodingKey {
        case approvedAtUTC = "approved_at_utc"
        case subreddit, selftext
        case authorFullname = "author_fullname"
        case saved
        case modReasonTitle = "mod_reason_title"
        case gilded, clicked, title
        case linkFlairRichtext = "link_flair_richtext"
        case subredditNamePrefixed = "subreddit_name_prefixed"
        case hidden, pwls
        case linkFlairCSSClass = "link_flair_css_class"
        case downs
        case thumbnailHeight = "thumbnail_height"
        case topAwardedType = "top_awarded_type"
        case hideScore = "hide_score"
        case name, quarantine
        case linkFlairTextColor = "link_flair_text_color"
        case upvoteRatio = "upvote_ratio"
        case authorFlairBackgroundColor = "author_flair_background_color"
        case subredditType = "subreddit_type"
        case ups
        case totalAwardsReceived = "total_awards_received"
        case mediaEmbed = "media_embed"
        case thumbnailWidth = "thumbnail_width"
        case authorFlairTemplateID = "author_flair_template_id"
        case isOriginalContent = "is_original_content"
        case userReports = "user_reports"
        case secureMedia = "secure_media"
        case isRedditMediaDomain = "is_reddit_media_domain"
        case isMeta = "is_meta"
        case category
        case secureMediaEmbed = "secure_media_embed"
        case linkFlairText = "link_flair_text"
        case canModPost = "can_mod_post"
        case score
        case approvedBy = "approved_by"
        case authorPremium = "author_premium"
        case thumbnail, edited
        case authorFlairCSSClass = "author_flair_css_class"
        case authorFlairRichtext = "author_flair_richtext"
        case gildings
        case postHint = "post_hint"
        case contentCategories = "content_categories"
        case isSelf = "is_self"
        case modNote = "mod_note"
        case created
        case linkFlairType = "link_flair_type"
        case wls
        case removedByCategory = "removed_by_category"
        case bannedBy = "banned_by"
        case authorFlairType = "author_flair_type"
        case domain
        case allowLiveComments = "allow_live_comments"
        case selftextHTML = "selftext_html"
        case likes
        case suggestedSort = "suggested_sort"
        case bannedAtUTC = "banned_at_utc"
        case urlOverriddenByDest = "url_overridden_by_dest"
        case viewCount = "view_count"
        case archived
        case noFollow = "no_follow"
        case isCrosspostable = "is_crosspostable"
        case pinned
        case over18 = "over_18"
        case preview
        case allAwardings = "all_awardings"
        case awarders
        case mediaOnly = "media_only"
        case canGild = "can_gild"
        case spoiler, locked
        case authorFlairText = "author_flair_text"
        case treatmentTags = "treatment_tags"
        case visited
        case removedBy = "removed_by"
        case numReports = "num_reports"
        case distinguished
        case subredditID = "subreddit_id"
        case modReasonBy = "mod_reason_by"
        case removalReason = "removal_reason"
        case linkFlairBackgroundColor = "link_flair_background_color"
        case id
        case isRobotIndexable = "is_robot_indexable"
        case reportReasons = "report_reasons"
        case author
        case discussionType = "discussion_type"
        case numComments = "num_comments"
        case sendReplies = "send_replies"
        case whitelistStatus = "whitelist_status"
        case contestMode = "contest_mode"
        case modReports = "mod_reports"
        case authorPatreonFlair = "author_patreon_flair"
        case authorFlairTextColor = "author_flair_text_color"
        case permalink
        case parentWhitelistStatus = "parent_whitelist_status"
        case stickied, url
        case subredditSubscribers = "subreddit_subscribers"
        case createdUTC = "created_utc"
        case numCrossposts = "num_crossposts"
        case media
        case isVideo = "is_video"
        case linkFlairTemplateID = "link_flair_template_id"
        case isGallery = "is_gallery"
        case mediaMetadata = "media_metadata"
        case galleryData = "gallery_data"
        case crosspostParentList = "crosspost_parent_list"
        case crosspostParent = "crosspost_parent"
    }
}

// MARK: - AllAwarding

struct AllAwarding: Codable {
    let giverCoinReward: Int?
    let subredditID: String?
    let isNew: Bool?
    let daysOfDripExtension, coinPrice: Int?
    let id: String?
    let pennyDonate: Int?
    let awardSubType: String?
    let coinReward: Int?
    let iconURL: String?
    let daysOfPremium: Int?
    let tiersByRequiredAwardings: [String: TiersByRequiredAwarding]?
    let resizedIcons: [ResizedIcon]
    let iconWidth, staticIconWidth: Int?
    let startDate: JSONNull?
    let isEnabled: Bool?
    let awardingsRequiredToGrantBenefits: Int?
    let allAwardingDescription: String?
    let endDate: JSONNull?
    let subredditCoinReward, count, staticIconHeight: Int?
    let name: String?
    let resizedStaticIcons: [ResizedIcon]
    let iconFormat: String?
    let iconHeight: Int?
    let pennyPrice: Int?
    let awardType: String?
    let staticIconURL: String?

    enum CodingKeys: String, CodingKey {
        case giverCoinReward = "giver_coin_reward"
        case subredditID = "subreddit_id"
        case isNew = "is_new"
        case daysOfDripExtension = "days_of_drip_extension"
        case coinPrice = "coin_price"
        case id
        case pennyDonate = "penny_donate"
        case awardSubType = "award_sub_type"
        case coinReward = "coin_reward"
        case iconURL = "icon_url"
        case daysOfPremium = "days_of_premium"
        case tiersByRequiredAwardings = "tiers_by_required_awardings"
        case resizedIcons = "resized_icons"
        case iconWidth = "icon_width"
        case staticIconWidth = "static_icon_width"
        case startDate = "start_date"
        case isEnabled = "is_enabled"
        case awardingsRequiredToGrantBenefits = "awardings_required_to_grant_benefits"
        case allAwardingDescription = "description"
        case endDate = "end_date"
        case subredditCoinReward = "subreddit_coin_reward"
        case count
        case staticIconHeight = "static_icon_height"
        case name
        case resizedStaticIcons = "resized_static_icons"
        case iconFormat = "icon_format"
        case iconHeight = "icon_height"
        case pennyPrice = "penny_price"
        case awardType = "award_type"
        case staticIconURL = "static_icon_url"
    }
}

enum AwardSubType: String, Codable {
    case appreciation = "APPRECIATION"
    case community = "COMMUNITY"
    case global = "GLOBAL"
    case group = "GROUP"
    case premium = "PREMIUM"
}

enum AwardType: String, Codable {
    case community
    case global
}

enum Format: String, Codable {
    case apng = "APNG"
    case png = "PNG"
}

// MARK: - ResizedIcon

struct ResizedIcon: Codable {
    let url: String?
    let width, height: Int?
    let format: String?
}

// MARK: - TiersByRequiredAwarding

struct TiersByRequiredAwarding: Codable {
    let resizedIcons: [ResizedIcon]?
    let awardingsRequired: Int?
    let staticIcon: ResizedIcon?
    let resizedStaticIcons: [ResizedIcon]?
    let icon: ResizedIcon?

    enum CodingKeys: String, CodingKey {
        case resizedIcons = "resized_icons"
        case awardingsRequired = "awardings_required"
        case staticIcon = "static_icon"
        case resizedStaticIcons = "resized_static_icons"
        case icon
    }
}

// MARK: - FlairRichtext

struct FlairRichtext: Codable {
    let e: String?
    let t: String?
}

enum AuthorFlairType: String, Codable {
    case richtext
    case text
}

enum FlairTextColor: String, Codable {
    case dark
    case light
}

// MARK: - CrosspostParentList

struct CrosspostParentList: Codable {
    let approvedAtUTC: JSONNull?
    let subreddit, selftext, authorFullname: String?
    let saved: Bool?
    let modReasonTitle: JSONNull?
    let gilded: Int?
    let clicked: Bool?
    let title: String?
    let linkFlairRichtext: [JSONAny]?
    let subredditNamePrefixed: String?
    let hidden: Bool?
    let linkFlairCSSClass: JSONNull?
    let pwls: Int?
    let downs, thumbnailHeight: Int?
    let topAwardedType: String?
    let hideScore: Bool?
    let name: String?
    let quarantine: Bool?
    let linkFlairTextColor: String?
    let upvoteRatio: Double?
    let authorFlairBackgroundColor: JSONNull?
    let subredditType: String?
    let ups, totalAwardsReceived: Int?
    let mediaEmbed: MediaEmbed?
    let thumbnailWidth: Int?
    let authorFlairTemplateID: JSONNull?
    let isOriginalContent: Bool?
    let userReports: [JSONAny]?
    let secureMedia: Media?
    let isRedditMediaDomain, isMeta: Bool?
    let category: JSONNull?
    let secureMediaEmbed: MediaEmbed?
    let linkFlairText: JSONNull?
    let canModPost: Bool?
    let score: Int?
    let approvedBy: JSONNull?
    let authorPremium: Bool?
    let thumbnail: String?
    let edited: Edited?
    let authorFlairCSSClass: JSONNull?
    let authorFlairRichtext: [JSONAny]?
    let gildings: MediaEmbed?
    let postHint: String?
    let contentCategories: [String]?
    let isSelf: Bool?
    let modNote: JSONNull?
    let created: Int?
    let linkFlairType: String?
    let removedByCategory, bannedBy: JSONNull?
    let wls: Int?
    let authorFlairType: String?
    let domain: String?
    let allowLiveComments: Bool?
    let selftextHTML, likes, suggestedSort, bannedAtUTC: JSONNull?
    let urlOverriddenByDest: String?
    let viewCount: JSONNull?
    let archived, noFollow, isCrosspostable, pinned: Bool?
    let over18: Bool?
    let preview: CrosspostParentListPreview
    let allAwardings, awarders: [JSONAny]?
    let mediaOnly, canGild, spoiler, locked: Bool?
    let authorFlairText: JSONNull?
    let treatmentTags: [JSONAny]
    let visited: Bool?
    let removedBy, numReports: JSONNull?
    let distinguished: String?
    let subredditID: String?
    let modReasonBy, removalReason: JSONNull?
    let linkFlairBackgroundColor, id: String?
    let isRobotIndexable: Bool?
    let reportReasons: JSONNull?
    let author: String?
    let discussionType: String?
    let numComments: Int?
    let sendReplies: Bool?
    let whitelistStatus: String?
    let contestMode: Bool?
    let modReports: [JSONAny]
    let authorPatreonFlair: Bool?
    let authorFlairTextColor: JSONNull?
    let permalink: String?
    let parentWhitelistStatus: String?
    let stickied: Bool?
    let url: String?
    let subredditSubscribers, createdUTC, numCrossposts: Int?
    let media: Media?
    let isVideo: Bool?

    enum CodingKeys: String, CodingKey {
        case approvedAtUTC = "approved_at_utc"
        case subreddit, selftext
        case authorFullname = "author_fullname"
        case saved
        case modReasonTitle = "mod_reason_title"
        case gilded, clicked, title
        case linkFlairRichtext = "link_flair_richtext"
        case subredditNamePrefixed = "subreddit_name_prefixed"
        case hidden, pwls
        case linkFlairCSSClass = "link_flair_css_class"
        case downs
        case thumbnailHeight = "thumbnail_height"
        case topAwardedType = "top_awarded_type"
        case hideScore = "hide_score"
        case name, quarantine
        case linkFlairTextColor = "link_flair_text_color"
        case upvoteRatio = "upvote_ratio"
        case authorFlairBackgroundColor = "author_flair_background_color"
        case subredditType = "subreddit_type"
        case ups
        case totalAwardsReceived = "total_awards_received"
        case mediaEmbed = "media_embed"
        case thumbnailWidth = "thumbnail_width"
        case authorFlairTemplateID = "author_flair_template_id"
        case isOriginalContent = "is_original_content"
        case userReports = "user_reports"
        case secureMedia = "secure_media"
        case isRedditMediaDomain = "is_reddit_media_domain"
        case isMeta = "is_meta"
        case category
        case secureMediaEmbed = "secure_media_embed"
        case linkFlairText = "link_flair_text"
        case canModPost = "can_mod_post"
        case score
        case approvedBy = "approved_by"
        case authorPremium = "author_premium"
        case thumbnail, edited
        case authorFlairCSSClass = "author_flair_css_class"
        case authorFlairRichtext = "author_flair_richtext"
        case gildings
        case postHint = "post_hint"
        case contentCategories = "content_categories"
        case isSelf = "is_self"
        case modNote = "mod_note"
        case created
        case linkFlairType = "link_flair_type"
        case wls
        case removedByCategory = "removed_by_category"
        case bannedBy = "banned_by"
        case authorFlairType = "author_flair_type"
        case domain
        case allowLiveComments = "allow_live_comments"
        case selftextHTML = "selftext_html"
        case likes
        case suggestedSort = "suggested_sort"
        case bannedAtUTC = "banned_at_utc"
        case urlOverriddenByDest = "url_overridden_by_dest"
        case viewCount = "view_count"
        case archived
        case noFollow = "no_follow"
        case isCrosspostable = "is_crosspostable"
        case pinned
        case over18 = "over_18"
        case preview
        case allAwardings = "all_awardings"
        case awarders
        case mediaOnly = "media_only"
        case canGild = "can_gild"
        case spoiler, locked
        case authorFlairText = "author_flair_text"
        case treatmentTags = "treatment_tags"
        case visited
        case removedBy = "removed_by"
        case numReports = "num_reports"
        case distinguished
        case subredditID = "subreddit_id"
        case modReasonBy = "mod_reason_by"
        case removalReason = "removal_reason"
        case linkFlairBackgroundColor = "link_flair_background_color"
        case id
        case isRobotIndexable = "is_robot_indexable"
        case reportReasons = "report_reasons"
        case author
        case discussionType = "discussion_type"
        case numComments = "num_comments"
        case sendReplies = "send_replies"
        case whitelistStatus = "whitelist_status"
        case contestMode = "contest_mode"
        case modReports = "mod_reports"
        case authorPatreonFlair = "author_patreon_flair"
        case authorFlairTextColor = "author_flair_text_color"
        case permalink
        case parentWhitelistStatus = "parent_whitelist_status"
        case stickied, url
        case subredditSubscribers = "subreddit_subscribers"
        case createdUTC = "created_utc"
        case numCrossposts = "num_crossposts"
        case media
        case isVideo = "is_video"
    }
}

// MARK: - MediaEmbed

struct MediaEmbed: Codable {}

// MARK: - CrosspostParentListPreview

struct CrosspostParentListPreview: Codable {
    let images: [PurpleImage]?
    let enabled: Bool?
}

// MARK: - PurpleImage

struct PurpleImage: Codable {
    let source: ResizedIcon?
    let resolutions: [ResizedIcon]?
    let variants: MediaEmbed?
    let id: String?
}

enum SubredditType: String, Codable {
    case subredditTypePublic = "public"
}

enum Edited: Codable {
    case bool(Bool)
    case integer(Int)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Bool.self) {
            self = .bool(x)
            return
        }
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        throw DecodingError.typeMismatch(Edited.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Edited"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .bool(x):
            try container.encode(x)
        case let .integer(x):
            try container.encode(x)
        }
    }
}

// MARK: - GalleryData

struct GalleryData: Codable {
    let items: [Item]?
}

// MARK: - Item

struct Item: Codable {
    let mediaID: String?
    let id: Int?

    enum CodingKeys: String, CodingKey {
        case mediaID = "media_id"
        case id
    }
}

// MARK: - Gildings

struct Gildings: Codable {
    let gid1, gid2, gid3: Int?

    enum CodingKeys: String, CodingKey {
        case gid1 = "gid_1"
        case gid2 = "gid_2"
        case gid3 = "gid_3"
    }
}

enum LinkFlairBackgroundColor: String, Codable {
    case dadada = "#dadada"
    case empty = ""
    case the014980 = "#014980"
    case the94E044 = "#94e044"
}

// MARK: - Media

struct Media: Codable {
    let redditVideo: RedditVideo?

    enum CodingKeys: String, CodingKey {
        case redditVideo = "reddit_video"
    }
}

// MARK: - RedditVideo

struct RedditVideo: Codable {
    let bitrateKbps: Int?
    let fallbackURL: String?
    let height, width: Int?
    let scrubberMediaURL: String?
    let dashURL: String?
    let duration: Int?
    let hlsURL: String?
    let isGIF: Bool?
    let transcodingStatus: String?

    enum CodingKeys: String, CodingKey {
        case bitrateKbps = "bitrate_kbps"
        case fallbackURL = "fallback_url"
        case height, width
        case scrubberMediaURL = "scrubber_media_url"
        case dashURL = "dash_url"
        case duration
        case hlsURL = "hls_url"
        case isGIF = "is_gif"
        case transcodingStatus = "transcoding_status"
    }
}

// MARK: - MediaMetadatum

struct MediaMetadatum: Codable {
    let status, e, m: String?
    let p: [S]?
    let s: S?
    let id: String?
}

// MARK: - S

struct S: Codable {
    let y, x: Int?
    let u: String?
}

enum WhitelistStatus: String, Codable {
    case allAds = "all_ads"
    case noAds = "no_ads"
    case promoAdultNsfw = "promo_adult_nsfw"
    case someAds = "some_ads"
}

// MARK: - DataPreview

struct DataPreview: Codable {
    let images: [FluffyImage]?
    let enabled: Bool?
}

// MARK: - FluffyImage

struct FluffyImage: Codable {
    let source: ResizedIcon?
    let resolutions: [ResizedIcon]?
    let variants: Variants?
    let id: String?
}

// MARK: - Variants

struct Variants: Codable {
    let obfuscated, nsfw: Nsfw?
}

// MARK: - Nsfw

struct Nsfw: Codable {
    let source: ResizedIcon?
    let resolutions: [ResizedIcon]?
}

enum Kind: String, Codable {
    case t3
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {
    public static func == (_: JSONNull, _: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue _: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {
    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: value)
        }
    }
}
