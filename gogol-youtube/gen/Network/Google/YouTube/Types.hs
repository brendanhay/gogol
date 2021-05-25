{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTube.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTube.Types
    (
    -- * Service Configuration
      youTubeService

    -- * OAuth Scopes
    , youTubeUploadScope
    , youTubeScope
    , youTubeChannelMembershipsCreatorScope
    , youTubePartnerScope
    , youTubeForceSslScope
    , youTubeReadOnlyScope
    , youTubePartnerChannelAuditScope

    -- * LiveChatMessageAuthorDetails
    , LiveChatMessageAuthorDetails
    , liveChatMessageAuthorDetails
    , lcmadIsVerified
    , lcmadIsChatOwner
    , lcmadChannelId
    , lcmadProFileImageURL
    , lcmadIsChatModerator
    , lcmadDisplayName
    , lcmadIsChatSponsor
    , lcmadChannelURL

    -- * ContentRatingCceRating
    , ContentRatingCceRating (..)

    -- * ContentRatingChfilmRating
    , ContentRatingChfilmRating (..)

    -- * SubscriptionSubscriberSnippet
    , SubscriptionSubscriberSnippet
    , subscriptionSubscriberSnippet
    , sssChannelId
    , sssThumbnails
    , sssTitle
    , sssDescription

    -- * ContentRatingMccaaRating
    , ContentRatingMccaaRating (..)

    -- * VideosListChart
    , VideosListChart (..)

    -- * IngestionInfo
    , IngestionInfo
    , ingestionInfo
    , iiRtmpsIngestionAddress
    , iiBackupIngestionAddress
    , iiIngestionAddress
    , iiRtmpsBackupIngestionAddress
    , iiStreamName

    -- * ChannelAuditDetails
    , ChannelAuditDetails
    , channelAuditDetails
    , cadContentIdClaimsGoodStanding
    , cadCopyrightStrikesGoodStanding
    , cadCommUnityGuidelinesGoodStanding

    -- * Thumbnail
    , Thumbnail
    , thumbnail
    , tHeight
    , tURL
    , tWidth

    -- * ContentRatingMpaaRating
    , ContentRatingMpaaRating (..)

    -- * CaptionSnippetTrackKind
    , CaptionSnippetTrackKind (..)

    -- * VideoSnippetLiveBroadcastContent
    , VideoSnippetLiveBroadcastContent (..)

    -- * ChannelConversionPingContext
    , ChannelConversionPingContext (..)

    -- * LiveChatTextMessageDetails
    , LiveChatTextMessageDetails
    , liveChatTextMessageDetails
    , lctmdMessageText

    -- * ActivityContentDetailsRecommendation
    , ActivityContentDetailsRecommendation
    , activityContentDetailsRecommendation
    , acdrResourceId
    , acdrSeedResourceId
    , acdrReason

    -- * LiveChatMessageRetractedDetails
    , LiveChatMessageRetractedDetails
    , liveChatMessageRetractedDetails
    , lcmrdRetractedMessageId

    -- * ContentRatingRcnofRating
    , ContentRatingRcnofRating (..)

    -- * PlayListListResponse
    , PlayListListResponse
    , playListListResponse
    , pllrEtag
    , pllrTokenPagination
    , pllrNextPageToken
    , pllrPageInfo
    , pllrKind
    , pllrItems
    , pllrVisitorId
    , pllrEventId
    , pllrPrevPageToken

    -- * VideoStatusPrivacyStatus
    , VideoStatusPrivacyStatus (..)

    -- * ChannelSectionSnippet
    , ChannelSectionSnippet
    , channelSectionSnippet
    , cssStyle
    , cssChannelId
    , cssLocalized
    , cssTitle
    , cssType
    , cssPosition
    , cssDefaultLanguage

    -- * ChannelStatus
    , ChannelStatus
    , channelStatus
    , csIsLinked
    , csLongUploadsStatus
    , csPrivacyStatus
    , csSelfDeclaredMadeForKids
    , csMadeForKids

    -- * LiveBroadcastStatusLifeCycleStatus
    , LiveBroadcastStatusLifeCycleStatus (..)

    -- * CaptionSnippetFailureReason
    , CaptionSnippetFailureReason (..)

    -- * ThirdPartyLinksDeleteType
    , ThirdPartyLinksDeleteType (..)

    -- * LiveChatUserBannedMessageDetailsBanType
    , LiveChatUserBannedMessageDetailsBanType (..)

    -- * VideoProcessingDetailsProcessingFailureReason
    , VideoProcessingDetailsProcessingFailureReason (..)

    -- * InvideoPositionType
    , InvideoPositionType (..)

    -- * LiveStreamSnippet
    , LiveStreamSnippet
    , liveStreamSnippet
    , lssPublishedAt
    , lssChannelId
    , lssIsDefaultStream
    , lssTitle
    , lssDescription

    -- * ContentRatingFskRating
    , ContentRatingFskRating (..)

    -- * SearchResult
    , SearchResult
    , searchResult
    , srEtag
    , srSnippet
    , srKind
    , srId

    -- * ContentRatingMekuRating
    , ContentRatingMekuRating (..)

    -- * MembershipsLevel
    , MembershipsLevel
    , membershipsLevel
    , mlEtag
    , mlSnippet
    , mlKind
    , mlId

    -- * TokenPagination
    , TokenPagination
    , tokenPagination

    -- * ResourceId
    , ResourceId
    , resourceId
    , riKind
    , riChannelId
    , riVideoId
    , riPlayListId

    -- * VideoContentDetailsDefinition
    , VideoContentDetailsDefinition (..)

    -- * ContentRatingEefilmRating
    , ContentRatingEefilmRating (..)

    -- * SearchListResponse
    , SearchListResponse
    , searchListResponse
    , slrEtag
    , slrTokenPagination
    , slrNextPageToken
    , slrRegionCode
    , slrPageInfo
    , slrKind
    , slrItems
    , slrVisitorId
    , slrEventId
    , slrPrevPageToken

    -- * LiveBroadcastStatusPrivacyStatus
    , LiveBroadcastStatusPrivacyStatus (..)

    -- * PlayListStatus
    , PlayListStatus
    , playListStatus
    , plsPrivacyStatus

    -- * LiveChatMessageListResponse
    , LiveChatMessageListResponse
    , liveChatMessageListResponse
    , lcmlrOfflineAt
    , lcmlrEtag
    , lcmlrTokenPagination
    , lcmlrNextPageToken
    , lcmlrPageInfo
    , lcmlrKind
    , lcmlrItems
    , lcmlrVisitorId
    , lcmlrPollingIntervalMillis
    , lcmlrEventId

    -- * ChannelListResponse
    , ChannelListResponse
    , channelListResponse
    , clrEtag
    , clrTokenPagination
    , clrNextPageToken
    , clrPageInfo
    , clrKind
    , clrItems
    , clrVisitorId
    , clrEventId
    , clrPrevPageToken

    -- * ContentRatingPefilmRating
    , ContentRatingPefilmRating (..)

    -- * ChannelProFileDetails
    , ChannelProFileDetails
    , channelProFileDetails
    , cpfdChannelId
    , cpfdProFileImageURL
    , cpfdDisplayName
    , cpfdChannelURL

    -- * SuperChatEventListResponse
    , SuperChatEventListResponse
    , superChatEventListResponse
    , scelrEtag
    , scelrTokenPagination
    , scelrNextPageToken
    , scelrPageInfo
    , scelrKind
    , scelrItems
    , scelrVisitorId
    , scelrEventId

    -- * VideoAbuseReportReasonListResponse
    , VideoAbuseReportReasonListResponse
    , videoAbuseReportReasonListResponse
    , varrlrEtag
    , varrlrKind
    , varrlrItems
    , varrlrVisitorId
    , varrlrEventId

    -- * CdnSettingsResolution
    , CdnSettingsResolution (..)

    -- * LiveChatUserBannedMessageDetails
    , LiveChatUserBannedMessageDetails
    , liveChatUserBannedMessageDetails
    , lcubmdBanType
    , lcubmdBannedUserDetails
    , lcubmdBanDurationSeconds

    -- * SearchResultSnippetLiveBroadcastContent
    , SearchResultSnippetLiveBroadcastContent (..)

    -- * LiveBroadcastContentDetails
    , LiveBroadcastContentDetails
    , liveBroadcastContentDetails
    , lbcdEnableContentEncryption
    , lbcdEnableLowLatency
    , lbcdLatencyPreference
    , lbcdEnableAutoStop
    , lbcdClosedCaptionsType
    , lbcdEnableEmbed
    , lbcdStartWithSlate
    , lbcdProjection
    , lbcdMonitorStream
    , lbcdStereoLayout
    , lbcdBoundStreamId
    , lbcdRecordFromStart
    , lbcdMesh
    , lbcdEnableClosedCaptions
    , lbcdEnableAutoStart
    , lbcdBoundStreamLastUpdateTimeMs
    , lbcdEnableDvr

    -- * ContentRatingAnatelRating
    , ContentRatingAnatelRating (..)

    -- * SearchListOrder
    , SearchListOrder (..)

    -- * ChannelSection
    , ChannelSection
    , channelSection
    , csEtag
    , csSnippet
    , csKind
    , csContentDetails
    , csTargeting
    , csId
    , csLocalizations

    -- * ContentRatingCccRating
    , ContentRatingCccRating (..)

    -- * ChannelContentDetailsRelatedPlayLists
    , ChannelContentDetailsRelatedPlayLists
    , channelContentDetailsRelatedPlayLists
    , ccdrplFavorites
    , ccdrplWatchHistory
    , ccdrplWatchLater
    , ccdrplUploads
    , ccdrplLikes

    -- * LiveStream
    , LiveStream
    , liveStream
    , lsStatus
    , lsEtag
    , lsSnippet
    , lsKind
    , lsContentDetails
    , lsId
    , lsCdn

    -- * ActivityContentDetailsFavorite
    , ActivityContentDetailsFavorite
    , activityContentDetailsFavorite
    , acdfResourceId

    -- * VideoContentDetails
    , VideoContentDetails
    , videoContentDetails
    , vcdCountryRestriction
    , vcdHasCustomThumbnail
    , vcdDefinition
    , vcdDimension
    , vcdCaption
    , vcdRegionRestriction
    , vcdProjection
    , vcdDuration
    , vcdContentRating
    , vcdLicensedContent

    -- * CaptionSnippetAudioTrackType
    , CaptionSnippetAudioTrackType (..)

    -- * ImageSettings
    , ImageSettings
    , imageSettings
    , isBannerMobileLowImageURL
    , isBannerTabletExtraHdImageURL
    , isSmallBrandedBannerImageImapScript
    , isBannerTvHighImageURL
    , isBannerMobileHdImageURL
    , isBannerTvMediumImageURL
    , isBannerTvImageURL
    , isBannerTabletImageURL
    , isBannerMobileImageURL
    , isTrackingImageURL
    , isBannerMobileMediumHdImageURL
    , isLargeBrandedBannerImageURL
    , isBannerExternalURL
    , isBackgRoundImageURL
    , isSmallBrandedBannerImageURL
    , isBannerImageURL
    , isWatchIconImageURL
    , isBannerTvLowImageURL
    , isBannerMobileExtraHdImageURL
    , isLargeBrandedBannerImageImapScript
    , isBannerTabletLowImageURL
    , isBannerTabletHdImageURL

    -- * MembersListMode
    , MembersListMode (..)

    -- * VideoTopicDetails
    , VideoTopicDetails
    , videoTopicDetails
    , vtdTopicIds
    , vtdRelevantTopicIds
    , vtdTopicCategories

    -- * ActivityContentDetailsComment
    , ActivityContentDetailsComment
    , activityContentDetailsComment
    , acdcResourceId

    -- * ChannelStatusPrivacyStatus
    , ChannelStatusPrivacyStatus (..)

    -- * ThirdPartyLink
    , ThirdPartyLink
    , thirdPartyLink
    , tplStatus
    , tplEtag
    , tplSnippet
    , tplKind
    , tplLinkingToken

    -- * LiveBroadcastStatus
    , LiveBroadcastStatus
    , liveBroadcastStatus
    , lbsLiveBroadcastPriority
    , lbsRecordingStatus
    , lbsLifeCycleStatus
    , lbsPrivacyStatus
    , lbsSelfDeclaredMadeForKids
    , lbsMadeForKids

    -- * ActivityContentDetailsUpload
    , ActivityContentDetailsUpload
    , activityContentDetailsUpload
    , acduVideoId

    -- * ActivityContentDetailsPlayListItem
    , ActivityContentDetailsPlayListItem
    , activityContentDetailsPlayListItem
    , acdpliResourceId
    , acdpliPlayListId
    , acdpliPlayListItemId

    -- * SuperStickerMetadata
    , SuperStickerMetadata
    , superStickerMetadata
    , ssmAltText
    , ssmStickerId
    , ssmAltTextLanguage

    -- * ActivityContentDetailsSocial
    , ActivityContentDetailsSocial
    , activityContentDetailsSocial
    , acdsResourceId
    , acdsImageURL
    , acdsAuthor
    , acdsReferenceURL
    , acdsType

    -- * VideoSuggestionsEditorSuggestionsItem
    , VideoSuggestionsEditorSuggestionsItem (..)

    -- * ContentRatingCatvfrRating
    , ContentRatingCatvfrRating (..)

    -- * ContentRatingCnaRating
    , ContentRatingCnaRating (..)

    -- * LiveChatBan
    , LiveChatBan
    , liveChatBan
    , lcbEtag
    , lcbSnippet
    , lcbKind
    , lcbId

    -- * ThirdPartyLinkStatusLinkStatus
    , ThirdPartyLinkStatusLinkStatus (..)

    -- * ContentRatingChvrsRating
    , ContentRatingChvrsRating (..)

    -- * ActivityContentDetailsSubscription
    , ActivityContentDetailsSubscription
    , activityContentDetailsSubscription
    , aResourceId

    -- * ActivityContentDetailsLike
    , ActivityContentDetailsLike
    , activityContentDetailsLike
    , acdlResourceId

    -- * PlayListContentDetails
    , PlayListContentDetails
    , playListContentDetails
    , plcdItemCount

    -- * ContentRatingIncaaRating
    , ContentRatingIncaaRating (..)

    -- * ContentRatingSmsaRating
    , ContentRatingSmsaRating (..)

    -- * LiveChatSuperChatDetails
    , LiveChatSuperChatDetails
    , liveChatSuperChatDetails
    , lcscdUserComment
    , lcscdAmountMicros
    , lcscdAmountDisplayString
    , lcscdCurrency
    , lcscdTier

    -- * PageInfo
    , PageInfo
    , pageInfo
    , piResultsPerPage
    , piTotalResults

    -- * ContentRatingCbfcRating
    , ContentRatingCbfcRating (..)

    -- * VideoStatus
    , VideoStatus
    , videoStatus
    , vsFailureReason
    , vsPublicStatsViewable
    , vsRejectionReason
    , vsPublishAt
    , vsUploadStatus
    , vsPrivacyStatus
    , vsEmbeddable
    , vsSelfDeclaredMadeForKids
    , vsLicense
    , vsMadeForKids

    -- * ContentRatingKfcbRating
    , ContentRatingKfcbRating (..)

    -- * TestItemTestItemSnippet
    , TestItemTestItemSnippet
    , testItemTestItemSnippet

    -- * VideoFileDetails
    , VideoFileDetails
    , videoFileDetails
    , vfdBitrateBps
    , vfdCreationTime
    , vfdDurationMs
    , vfdFileSize
    , vfdFileType
    , vfdContainer
    , vfdVideoStreams
    , vfdAudioStreams
    , vfdFileName

    -- * ThumbnailSetResponse
    , ThumbnailSetResponse
    , thumbnailSetResponse
    , tsrEtag
    , tsrKind
    , tsrItems
    , tsrVisitorId
    , tsrEventId

    -- * LiveStreamConfigurationIssueSeverity
    , LiveStreamConfigurationIssueSeverity (..)

    -- * LiveBroadcastListResponse
    , LiveBroadcastListResponse
    , liveBroadcastListResponse
    , lblrEtag
    , lblrTokenPagination
    , lblrNextPageToken
    , lblrPageInfo
    , lblrKind
    , lblrItems
    , lblrVisitorId
    , lblrEventId
    , lblrPrevPageToken

    -- * ThirdPartyLinkSnippetType
    , ThirdPartyLinkSnippetType (..)

    -- * ChannelContentDetails
    , ChannelContentDetails
    , channelContentDetails
    , ccdRelatedPlayLists

    -- * SearchListVideoDefinition
    , SearchListVideoDefinition (..)

    -- * ActivityContentDetailsChannelItem
    , ActivityContentDetailsChannelItem
    , activityContentDetailsChannelItem
    , acdciResourceId

    -- * VideoListResponse
    , VideoListResponse
    , videoListResponse
    , vlrEtag
    , vlrTokenPagination
    , vlrNextPageToken
    , vlrPageInfo
    , vlrKind
    , vlrItems
    , vlrVisitorId
    , vlrEventId
    , vlrPrevPageToken

    -- * VideoMonetizationDetails
    , VideoMonetizationDetails
    , videoMonetizationDetails
    , vmdAccess

    -- * VideoAgeGatingVideoGameRating
    , VideoAgeGatingVideoGameRating (..)

    -- * ContentRatingLsfRating
    , ContentRatingLsfRating (..)

    -- * VideoSuggestionsTagSuggestion
    , VideoSuggestionsTagSuggestion
    , videoSuggestionsTagSuggestion
    , vstsTag
    , vstsCategoryRestricts

    -- * ContentRatingMpaatRating
    , ContentRatingMpaatRating (..)

    -- * AbuseType
    , AbuseType
    , abuseType
    , atId

    -- * LiveChatModeratorListResponse
    , LiveChatModeratorListResponse
    , liveChatModeratorListResponse
    , lEtag
    , lTokenPagination
    , lNextPageToken
    , lPageInfo
    , lKind
    , lItems
    , lVisitorId
    , lEventId
    , lPrevPageToken

    -- * ActivitySnippet
    , ActivitySnippet
    , activitySnippet
    , asPublishedAt
    , asChannelTitle
    , asChannelId
    , asThumbnails
    , asGroupId
    , asTitle
    , asType
    , asDescription

    -- * ChannelTopicDetails
    , ChannelTopicDetails
    , channelTopicDetails
    , ctdTopicIds
    , ctdTopicCategories

    -- * LiveChatBanSnippetType
    , LiveChatBanSnippetType (..)

    -- * ContentRatingBfvcRating
    , ContentRatingBfvcRating (..)

    -- * VideoCategoryListResponse
    , VideoCategoryListResponse
    , videoCategoryListResponse
    , vclrEtag
    , vclrTokenPagination
    , vclrNextPageToken
    , vclrPageInfo
    , vclrKind
    , vclrItems
    , vclrVisitorId
    , vclrEventId
    , vclrPrevPageToken

    -- * VideoProcessingDetails
    , VideoProcessingDetails
    , videoProcessingDetails
    , vpdProcessingFailureReason
    , vpdProcessingIssuesAvailability
    , vpdProcessingProgress
    , vpdThumbnailsAvailability
    , vpdTagSuggestionsAvailability
    , vpdProcessingStatus
    , vpdEditorSuggestionsAvailability
    , vpdFileDetailsAvailability

    -- * CommentThreadSnippet
    , CommentThreadSnippet
    , commentThreadSnippet
    , ctsIsPublic
    , ctsChannelId
    , ctsCanReply
    , ctsVideoId
    , ctsTotalReplyCount
    , ctsTopLevelComment

    -- * SearchListVideoDuration
    , SearchListVideoDuration (..)

    -- * SearchListVideoCaption
    , SearchListVideoCaption (..)

    -- * VideosListMyRating
    , VideosListMyRating (..)

    -- * ChannelSectionListResponse
    , ChannelSectionListResponse
    , channelSectionListResponse
    , cslrEtag
    , cslrKind
    , cslrItems
    , cslrVisitorId
    , cslrEventId

    -- * CommentSnippetViewerRating
    , CommentSnippetViewerRating (..)

    -- * SuperChatEvent
    , SuperChatEvent
    , superChatEvent
    , sceEtag
    , sceSnippet
    , sceKind
    , sceId

    -- * VideoAbuseReportReason
    , VideoAbuseReportReason
    , videoAbuseReportReason
    , varrEtag
    , varrSnippet
    , varrKind
    , varrId

    -- * LiveStreamConfigurationIssue
    , LiveStreamConfigurationIssue
    , liveStreamConfigurationIssue
    , lsciSeverity
    , lsciReason
    , lsciType
    , lsciDescription

    -- * LiveChatMessage
    , LiveChatMessage
    , liveChatMessage
    , lcmEtag
    , lcmSnippet
    , lcmKind
    , lcmAuthorDetails
    , lcmId

    -- * Channel
    , Channel
    , channel
    , chaStatus
    , chaEtag
    , chaAuditDetails
    , chaContentOwnerDetails
    , chaSnippet
    , chaKind
    , chaTopicDetails
    , chaContentDetails
    , chaConversionPings
    , chaBrandingSettings
    , chaId
    , chaStatistics
    , chaLocalizations

    -- * ChannelSectionTargeting
    , ChannelSectionTargeting
    , channelSectionTargeting
    , cstRegions
    , cstCountries
    , cstLanguages

    -- * ContentRatingFcbmRating
    , ContentRatingFcbmRating (..)

    -- * LiveStreamListResponse
    , LiveStreamListResponse
    , liveStreamListResponse
    , lslrEtag
    , lslrTokenPagination
    , lslrNextPageToken
    , lslrPageInfo
    , lslrKind
    , lslrItems
    , lslrVisitorId
    , lslrEventId
    , lslrPrevPageToken

    -- * TestItem
    , TestItem
    , testItem
    , tiSnippet
    , tiGaia
    , tiFeaturedPart
    , tiId

    -- * LiveBroadcastsListBroadcastStatus
    , LiveBroadcastsListBroadcastStatus (..)

    -- * ContentRatingMoctwRating
    , ContentRatingMoctwRating (..)

    -- * ContentRatingBmukkRating
    , ContentRatingBmukkRating (..)

    -- * ChannelLocalizations
    , ChannelLocalizations
    , channelLocalizations
    , clAddtional

    -- * PlayListSnippet
    , PlayListSnippet
    , playListSnippet
    , plsPublishedAt
    , plsChannelTitle
    , plsChannelId
    , plsThumbnails
    , plsLocalized
    , plsTitle
    , plsThumbnailVideoId
    , plsDescription
    , plsTags
    , plsDefaultLanguage

    -- * ContentRatingIcaaRating
    , ContentRatingIcaaRating (..)

    -- * VideoGetRatingResponse
    , VideoGetRatingResponse
    , videoGetRatingResponse
    , vgrrEtag
    , vgrrKind
    , vgrrItems
    , vgrrVisitorId
    , vgrrEventId

    -- * SuperChatEventSnippet
    , SuperChatEventSnippet
    , superChatEventSnippet
    , scesDisplayString
    , scesSupporterDetails
    , scesCreatedAt
    , scesSuperStickerMetadata
    , scesAmountMicros
    , scesMessageType
    , scesChannelId
    , scesCommentText
    , scesCurrency
    , scesIsSuperStickerEvent

    -- * VideoAbuseReportReasonSnippet
    , VideoAbuseReportReasonSnippet
    , videoAbuseReportReasonSnippet
    , varrsSecondaryReasons
    , varrsLabel

    -- * VideoStatusRejectionReason
    , VideoStatusRejectionReason (..)

    -- * Caption
    , Caption
    , caption
    , capEtag
    , capSnippet
    , capKind
    , capId

    -- * VideoContentDetailsRegionRestriction
    , VideoContentDetailsRegionRestriction
    , videoContentDetailsRegionRestriction
    , vcdrrAllowed
    , vcdrrBlocked

    -- * InvideoTiming
    , InvideoTiming
    , invideoTiming
    , itDurationMs
    , itOffSetMs
    , itType

    -- * PlayListLocalizations
    , PlayListLocalizations
    , playListLocalizations
    , pllAddtional

    -- * ContentRatingCzfilmRating
    , ContentRatingCzfilmRating (..)

    -- * VideoProcessingDetailsProcessingProgress
    , VideoProcessingDetailsProcessingProgress
    , videoProcessingDetailsProcessingProgress
    , vpdppTimeLeftMs
    , vpdppPartsTotal
    , vpdppPartsProcessed

    -- * ChannelSnippet
    , ChannelSnippet
    , channelSnippet
    , csPublishedAt
    , csCountry
    , csThumbnails
    , csLocalized
    , csCustomURL
    , csTitle
    , csDescription
    , csDefaultLanguage

    -- * ThumbnailDetails
    , ThumbnailDetails
    , thumbnailDetails
    , tdMedium
    , tdMaxres
    , tdDefault
    , tdStandard
    , tdHigh

    -- * MonitorStreamInfo
    , MonitorStreamInfo
    , monitorStreamInfo
    , msiBroadcastStreamDelayMs
    , msiEmbedHTML
    , msiEnableMonitorStream

    -- * LiveChatMessageSnippet
    , LiveChatMessageSnippet
    , liveChatMessageSnippet
    , lcmsMessageDeletedDetails
    , lcmsSuperStickerDetails
    , lcmsLiveChatId
    , lcmsPublishedAt
    , lcmsUserBannedDetails
    , lcmsTextMessageDetails
    , lcmsMessageRetractedDetails
    , lcmsSuperChatDetails
    , lcmsType
    , lcmsAuthorChannelId
    , lcmsFanFundingEventDetails
    , lcmsHasDisplayContent
    , lcmsDisplayMessage

    -- * ContentRatingRussiaRating
    , ContentRatingRussiaRating (..)

    -- * ContentRatingCicfRating
    , ContentRatingCicfRating (..)

    -- * ContentRatingFmocRating
    , ContentRatingFmocRating (..)

    -- * LiveBroadcastsTransitionBroadcastStatus
    , LiveBroadcastsTransitionBroadcastStatus (..)

    -- * I18nRegion
    , I18nRegion
    , i18nRegion
    , irEtag
    , irSnippet
    , irKind
    , irId

    -- * ChannelStatistics
    , ChannelStatistics
    , channelStatistics
    , csCommentCount
    , csSubscriberCount
    , csVideoCount
    , csHiddenSubscriberCount
    , csViewCount

    -- * LiveChatFanFundingEventDetails
    , LiveChatFanFundingEventDetails
    , liveChatFanFundingEventDetails
    , lcffedUserComment
    , lcffedAmountMicros
    , lcffedAmountDisplayString
    , lcffedCurrency

    -- * ContentRatingNbcRating
    , ContentRatingNbcRating (..)

    -- * LiveBroadcastStatusLiveBroadcastPriority
    , LiveBroadcastStatusLiveBroadcastPriority (..)

    -- * LiveStreamHealthStatusStatus
    , LiveStreamHealthStatusStatus (..)

    -- * ActivityContentDetails
    , ActivityContentDetails
    , activityContentDetails
    , acdPromotedItem
    , acdChannelItem
    , acdBulletin
    , acdFavorite
    , acdUpload
    , acdComment
    , acdSocial
    , acdSubscription
    , acdPlayListItem
    , acdLike
    , acdRecommendation

    -- * LiveBroadcastContentDetailsLatencyPreference
    , LiveBroadcastContentDetailsLatencyPreference (..)

    -- * VideoCategory
    , VideoCategory
    , videoCategory
    , vcEtag
    , vcSnippet
    , vcKind
    , vcId

    -- * VideoRatingRating
    , VideoRatingRating (..)

    -- * VideoSuggestionsProcessingWarningsItem
    , VideoSuggestionsProcessingWarningsItem (..)

    -- * VideoLocalizations
    , VideoLocalizations
    , videoLocalizations
    , vlAddtional

    -- * ChannelSectionContentDetails
    , ChannelSectionContentDetails
    , channelSectionContentDetails
    , cscdChannels
    , cscdPlayLists

    -- * InvideoPositionCornerPosition
    , InvideoPositionCornerPosition (..)

    -- * Video
    , Video
    , video
    , vStatus
    , vEtag
    , vProjectDetails
    , vRecordingDetails
    , vSnippet
    , vKind
    , vTopicDetails
    , vContentDetails
    , vAgeGating
    , vFileDetails
    , vSuggestions
    , vId
    , vStatistics
    , vLocalizations
    , vLiveStreamingDetails
    , vPlayer
    , vProcessingDetails
    , vMonetizationDetails

    -- * LiveBroadcast
    , LiveBroadcast
    , liveBroadcast
    , lbStatus
    , lbEtag
    , lbSnippet
    , lbKind
    , lbContentDetails
    , lbId
    , lbStatistics

    -- * ChannelStatusLongUploadsStatus
    , ChannelStatusLongUploadsStatus (..)

    -- * LiveChatModerator
    , LiveChatModerator
    , liveChatModerator
    , livEtag
    , livSnippet
    , livKind
    , livId

    -- * LiveStreamContentDetails
    , LiveStreamContentDetails
    , liveStreamContentDetails
    , lscdClosedCaptionsIngestionURL
    , lscdIsReusable

    -- * ThirdPartyLinkStatus
    , ThirdPartyLinkStatus
    , thirdPartyLinkStatus
    , tplsLinkStatus

    -- * LiveChatModeratorSnippet
    , LiveChatModeratorSnippet
    , liveChatModeratorSnippet
    , lLiveChatId
    , lModeratorDetails

    -- * ContentRatingCscfRating
    , ContentRatingCscfRating (..)

    -- * ThirdPartyLinksListType
    , ThirdPartyLinksListType (..)

    -- * LiveBroadcastStatusRecordingStatus
    , LiveBroadcastStatusRecordingStatus (..)

    -- * VideoFileDetailsVideoStreamRotation
    , VideoFileDetailsVideoStreamRotation (..)

    -- * PropertyValue
    , PropertyValue
    , propertyValue
    , pvProperty
    , pvValue

    -- * ContentRatingRtcRating
    , ContentRatingRtcRating (..)

    -- * LevelDetails
    , LevelDetails
    , levelDetails
    , ldDisplayName

    -- * VideoSnippet
    , VideoSnippet
    , videoSnippet
    , vsDefaultAudioLanguage
    , vsPublishedAt
    , vsChannelTitle
    , vsChannelId
    , vsThumbnails
    , vsLocalized
    , vsCategoryId
    , vsTitle
    , vsLiveBroadcastContent
    , vsDescription
    , vsTags
    , vsDefaultLanguage

    -- * CommentThreadsListModerationStatus
    , CommentThreadsListModerationStatus (..)

    -- * LiveBroadcastSnippet
    , LiveBroadcastSnippet
    , liveBroadcastSnippet
    , lbsActualEndTime
    , lbsLiveChatId
    , lbsPublishedAt
    , lbsScheduledEndTime
    , lbsChannelId
    , lbsScheduledStartTime
    , lbsThumbnails
    , lbsTitle
    , lbsActualStartTime
    , lbsIsDefaultBroadcast
    , lbsDescription

    -- * ContentRatingSmaisRating
    , ContentRatingSmaisRating (..)

    -- * AccessPolicy
    , AccessPolicy
    , accessPolicy
    , apException
    , apAllowed

    -- * LiveChatMessageDeletedDetails
    , LiveChatMessageDeletedDetails
    , liveChatMessageDeletedDetails
    , lcmddDeletedMessageId

    -- * RelatedEntity
    , RelatedEntity
    , relatedEntity
    , reEntity

    -- * ContentRatingYtRating
    , ContentRatingYtRating (..)

    -- * CommentThreadListResponse
    , CommentThreadListResponse
    , commentThreadListResponse
    , ctlrEtag
    , ctlrTokenPagination
    , ctlrNextPageToken
    , ctlrPageInfo
    , ctlrKind
    , ctlrItems
    , ctlrVisitorId
    , ctlrEventId

    -- * MembershipsDurationAtLevel
    , MembershipsDurationAtLevel
    , membershipsDurationAtLevel
    , mdalMemberTotalDurationMonths
    , mdalMemberSince
    , mdalLevel

    -- * WatchSettings
    , WatchSettings
    , watchSettings
    , wsFeaturedPlayListId
    , wsBackgRoundColor
    , wsTextColor

    -- * CdnSettings
    , CdnSettings
    , cdnSettings
    , csIngestionInfo
    , csFrameRate
    , csFormat
    , csResolution
    , csIngestionType

    -- * VideoContentDetailsCaption
    , VideoContentDetailsCaption (..)

    -- * LiveBroadcastStatistics
    , LiveBroadcastStatistics
    , liveBroadcastStatistics
    , lbsTotalChatCount

    -- * SubscriptionsListOrder
    , SubscriptionsListOrder (..)

    -- * VideoCategorySnippet
    , VideoCategorySnippet
    , videoCategorySnippet
    , vcsAssignable
    , vcsChannelId
    , vcsTitle

    -- * I18nLanguage
    , I18nLanguage
    , i18nLanguage
    , ilEtag
    , ilSnippet
    , ilKind
    , ilId

    -- * ContentRatingBbfcRating
    , ContentRatingBbfcRating (..)

    -- * VideoStatistics
    , VideoStatistics
    , videoStatistics
    , vsLikeCount
    , vsCommentCount
    , vsFavoriteCount
    , vsDislikeCount
    , vsViewCount

    -- * ActivityListResponse
    , ActivityListResponse
    , activityListResponse
    , alrEtag
    , alrTokenPagination
    , alrNextPageToken
    , alrPageInfo
    , alrKind
    , alrItems
    , alrVisitorId
    , alrEventId
    , alrPrevPageToken

    -- * ContentRatingTvpgRating
    , ContentRatingTvpgRating (..)

    -- * CommentsListTextFormat
    , CommentsListTextFormat (..)

    -- * VideosRateRating
    , VideosRateRating (..)

    -- * ActivityContentDetailsBulletin
    , ActivityContentDetailsBulletin
    , activityContentDetailsBulletin
    , acdbResourceId

    -- * LiveBroadcastContentDetailsProjection
    , LiveBroadcastContentDetailsProjection (..)

    -- * CaptionSnippetStatus
    , CaptionSnippetStatus (..)

    -- * VideoAbuseReport
    , VideoAbuseReport
    , videoAbuseReport
    , varSecondaryReasonId
    , varReasonId
    , varVideoId
    , varLanguage
    , varComments

    -- * ContentRatingSkfilmRating
    , ContentRatingSkfilmRating (..)

    -- * ChannelSectionSnippetType
    , ChannelSectionSnippetType (..)

    -- * LiveBroadcastsListBroadcastType
    , LiveBroadcastsListBroadcastType (..)

    -- * ContentRatingFpbRatingReasonsItem
    , ContentRatingFpbRatingReasonsItem (..)

    -- * VideoProcessingDetailsProcessingStatus
    , VideoProcessingDetailsProcessingStatus (..)

    -- * ActivityContentDetailsPromotedItemCtaType
    , ActivityContentDetailsPromotedItemCtaType (..)

    -- * VideoFileDetailsAudioStream
    , VideoFileDetailsAudioStream
    , videoFileDetailsAudioStream
    , vfdasBitrateBps
    , vfdasVendor
    , vfdasCodec
    , vfdasChannelCount

    -- * I18nRegionListResponse
    , I18nRegionListResponse
    , i18nRegionListResponse
    , irlrEtag
    , irlrKind
    , irlrItems
    , irlrVisitorId
    , irlrEventId

    -- * SearchListChannelType
    , SearchListChannelType (..)

    -- * ContentRatingKmrbRating
    , ContentRatingKmrbRating (..)

    -- * ContentRatingOflcRating
    , ContentRatingOflcRating (..)

    -- * MembershipsDuration
    , MembershipsDuration
    , membershipsDuration
    , mdMemberTotalDurationMonths
    , mdMemberSince

    -- * ContentRatingCNCRating
    , ContentRatingCNCRating (..)

    -- * CaptionListResponse
    , CaptionListResponse
    , captionListResponse
    , cEtag
    , cKind
    , cItems
    , cVisitorId
    , cEventId

    -- * PlayListItemStatus
    , PlayListItemStatus
    , playListItemStatus
    , plisPrivacyStatus

    -- * InvideoPosition
    , InvideoPosition
    , invideoPosition
    , ipCornerPosition
    , ipType

    -- * ContentRatingEcbmctRating
    , ContentRatingEcbmctRating (..)

    -- * VideoContentDetailsProjection
    , VideoContentDetailsProjection (..)

    -- * ContentRatingGrfilmRating
    , ContentRatingGrfilmRating (..)

    -- * LiveChatSuperStickerDetails
    , LiveChatSuperStickerDetails
    , liveChatSuperStickerDetails
    , lcssdSuperStickerMetadata
    , lcssdAmountMicros
    , lcssdAmountDisplayString
    , lcssdCurrency
    , lcssdTier

    -- * LiveBroadcastContentDetailsStereoLayout
    , LiveBroadcastContentDetailsStereoLayout (..)

    -- * CommentThreadsListOrder
    , CommentThreadsListOrder (..)

    -- * LiveStreamHealthStatus
    , LiveStreamHealthStatus
    , liveStreamHealthStatus
    , lshsStatus
    , lshsConfigurationIssues
    , lshsLastUpdateTimeSeconds

    -- * Xgafv
    , Xgafv (..)

    -- * ChannelSectionLocalizations
    , ChannelSectionLocalizations
    , channelSectionLocalizations
    , cslAddtional

    -- * ContentRatingIlfilmRating
    , ContentRatingIlfilmRating (..)

    -- * SubscriptionListResponse
    , SubscriptionListResponse
    , subscriptionListResponse
    , sEtag
    , sTokenPagination
    , sNextPageToken
    , sPageInfo
    , sKind
    , sItems
    , sVisitorId
    , sEventId
    , sPrevPageToken

    -- * ContentRatingNbcplRating
    , ContentRatingNbcplRating (..)

    -- * VideoStatusUploadStatus
    , VideoStatusUploadStatus (..)

    -- * VideoLocalization
    , VideoLocalization
    , videoLocalization
    , vlTitle
    , vlDescription

    -- * ContentRatingRteRating
    , ContentRatingRteRating (..)

    -- * CommentListResponse
    , CommentListResponse
    , commentListResponse
    , comEtag
    , comTokenPagination
    , comNextPageToken
    , comPageInfo
    , comKind
    , comItems
    , comVisitorId
    , comEventId

    -- * VideoPlayer
    , VideoPlayer
    , videoPlayer
    , vpEmbedHeight
    , vpEmbedWidth
    , vpEmbedHTML

    -- * CommentThreadsListTextFormat
    , CommentThreadsListTextFormat (..)

    -- * LocalizedString
    , LocalizedString
    , localizedString
    , lsValue
    , lsLanguage

    -- * ContentRatingIfcoRating
    , ContentRatingIfcoRating (..)

    -- * MembershipsLevelSnippet
    , MembershipsLevelSnippet
    , membershipsLevelSnippet
    , mlsLevelDetails
    , mlsCreatorChannelId

    -- * PlayListItemListResponse
    , PlayListItemListResponse
    , playListItemListResponse
    , plilrEtag
    , plilrTokenPagination
    , plilrNextPageToken
    , plilrPageInfo
    , plilrKind
    , plilrItems
    , plilrVisitorId
    , plilrEventId
    , plilrPrevPageToken

    -- * CommentsSetModerationStatusModerationStatus
    , CommentsSetModerationStatusModerationStatus (..)

    -- * SearchResultSnippet
    , SearchResultSnippet
    , searchResultSnippet
    , srsPublishedAt
    , srsChannelTitle
    , srsChannelId
    , srsThumbnails
    , srsTitle
    , srsLiveBroadcastContent
    , srsDescription

    -- * ActivityContentDetailsSocialType
    , ActivityContentDetailsSocialType (..)

    -- * ContentRatingMedietilsynetRating
    , ContentRatingMedietilsynetRating (..)

    -- * PlayListItemStatusPrivacyStatus
    , PlayListItemStatusPrivacyStatus (..)

    -- * SubscriptionContentDetailsActivityType
    , SubscriptionContentDetailsActivityType (..)

    -- * ContentRatingFpbRating
    , ContentRatingFpbRating (..)

    -- * LiveBroadcastContentDetailsClosedCaptionsType
    , LiveBroadcastContentDetailsClosedCaptionsType (..)

    -- * SearchListVideoDimension
    , SearchListVideoDimension (..)

    -- * ContentRatingNkclvRating
    , ContentRatingNkclvRating (..)

    -- * Activity
    , Activity
    , activity
    , aEtag
    , aSnippet
    , aKind
    , aContentDetails
    , aId

    -- * InvideoBranding
    , InvideoBranding
    , invideoBranding
    , ibImageURL
    , ibTargetChannelId
    , ibTiming
    , ibImageBytes
    , ibPosition

    -- * ChannelBannerResource
    , ChannelBannerResource
    , channelBannerResource
    , cbrEtag
    , cbrKind
    , cbrURL

    -- * SearchListVideoType
    , SearchListVideoType (..)

    -- * I18nLanguageListResponse
    , I18nLanguageListResponse
    , i18nLanguageListResponse
    , illrEtag
    , illrKind
    , illrItems
    , illrVisitorId
    , illrEventId

    -- * PlayListPlayer
    , PlayListPlayer
    , playListPlayer
    , plpEmbedHTML

    -- * CommentSnippetAuthorChannelId
    , CommentSnippetAuthorChannelId
    , commentSnippetAuthorChannelId
    , csaciValue

    -- * ContentRatingMibacRating
    , ContentRatingMibacRating (..)

    -- * ContentRatingResorteviolenciaRating
    , ContentRatingResorteviolenciaRating (..)

    -- * ContentRatingEgfilmRating
    , ContentRatingEgfilmRating (..)

    -- * ChannelBrandingSettings
    , ChannelBrandingSettings
    , channelBrandingSettings
    , cbsImage
    , cbsHints
    , cbsChannel
    , cbsWatch

    -- * CommentThread
    , CommentThread
    , commentThread
    , ctEtag
    , ctSnippet
    , ctKind
    , ctReplies
    , ctId

    -- * PlayListLocalization
    , PlayListLocalization
    , playListLocalization
    , pllTitle
    , pllDescription

    -- * ChannelToStoreLinkDetails
    , ChannelToStoreLinkDetails
    , channelToStoreLinkDetails
    , ctsldStoreURL
    , ctsldStoreName

    -- * ContentRatingMccypRating
    , ContentRatingMccypRating (..)

    -- * MemberSnippet
    , MemberSnippet
    , memberSnippet
    , msMemberDetails
    , msCreatorChannelId
    , msMembershipsDetails

    -- * LiveChatBanSnippet
    , LiveChatBanSnippet
    , liveChatBanSnippet
    , lcbsLiveChatId
    , lcbsBannedUserDetails
    , lcbsBanDurationSeconds
    , lcbsType

    -- * PlayListStatusPrivacyStatus
    , PlayListStatusPrivacyStatus (..)

    -- * SubscriptionContentDetails
    , SubscriptionContentDetails
    , subscriptionContentDetails
    , scdActivityType
    , scdTotalItemCount
    , scdNewItemCount

    -- * ContentRatingCsaRating
    , ContentRatingCsaRating (..)

    -- * ChannelConversionPings
    , ChannelConversionPings
    , channelConversionPings
    , ccpPings

    -- * LocalizedProperty
    , LocalizedProperty
    , localizedProperty
    , lpDefault
    , lpLocalized
    , lpDefaultLanguage

    -- * ChannelSectionSnippetStyle
    , ChannelSectionSnippetStyle (..)

    -- * ThirdPartyLinkSnippet
    , ThirdPartyLinkSnippet
    , thirdPartyLinkSnippet
    , tplsChannelToStoreLink
    , tplsType

    -- * Member
    , Member
    , member
    , mEtag
    , mSnippet
    , mKind

    -- * ChannelLocalization
    , ChannelLocalization
    , channelLocalization
    , clTitle
    , clDescription

    -- * PlayListItemContentDetails
    , PlayListItemContentDetails
    , playListItemContentDetails
    , plicdStartAt
    , plicdNote
    , plicdVideoPublishedAt
    , plicdVideoId
    , plicdEndAt

    -- * ContentRatingEirinRating
    , ContentRatingEirinRating (..)

    -- * VideoSuggestionsProcessingHintsItem
    , VideoSuggestionsProcessingHintsItem (..)

    -- * VideoAgeGating
    , VideoAgeGating
    , videoAgeGating
    , vagAlcoholContent
    , vagRestricted
    , vagVideoGameRating

    -- * ContentRatingNfrcRating
    , ContentRatingNfrcRating (..)

    -- * ActivitySnippetType
    , ActivitySnippetType (..)

    -- * ContentRatingMocRating
    , ContentRatingMocRating (..)

    -- * SearchListVideoEmbeddable
    , SearchListVideoEmbeddable (..)

    -- * ContentRatingMcstRating
    , ContentRatingMcstRating (..)

    -- * LanguageTag
    , LanguageTag
    , languageTag
    , ltValue

    -- * SearchListEventType
    , SearchListEventType (..)

    -- * VideoFileDetailsVideoStream
    , VideoFileDetailsVideoStream
    , videoFileDetailsVideoStream
    , vfdvsHeightPixels
    , vfdvsBitrateBps
    , vfdvsVendor
    , vfdvsRotation
    , vfdvsFrameRateFps
    , vfdvsCodec
    , vfdvsAspectRatio
    , vfdvsWidthPixels

    -- * ChannelConversionPing
    , ChannelConversionPing
    , channelConversionPing
    , ccpContext
    , ccpConversionURL

    -- * PlayListItem
    , PlayListItem
    , playListItem
    , pliStatus
    , pliEtag
    , pliSnippet
    , pliKind
    , pliContentDetails
    , pliId

    -- * ContentRatingMenaMpaaRating
    , ContentRatingMenaMpaaRating (..)

    -- * ActivityContentDetailsRecommendationReason
    , ActivityContentDetailsRecommendationReason (..)

    -- * ContentRatingKijkwijzerRating
    , ContentRatingKijkwijzerRating (..)

    -- * VideoSuggestionsProcessingErrorsItem
    , VideoSuggestionsProcessingErrorsItem (..)

    -- * VideoFileDetailsFileType
    , VideoFileDetailsFileType (..)

    -- * MembershipsDetails
    , MembershipsDetails
    , membershipsDetails
    , mdHighestAccessibleLevel
    , mdMembershipsDurationAtLevels
    , mdMembershipsDuration
    , mdAccessibleLevels
    , mdHighestAccessibleLevelDisplayName

    -- * ContentRatingMtrcbRating
    , ContentRatingMtrcbRating (..)

    -- * ContentRatingFcoRating
    , ContentRatingFcoRating (..)

    -- * CaptionSnippet
    , CaptionSnippet
    , captionSnippet
    , csFailureReason
    , csStatus
    , csLastUpdated
    , csTrackKind
    , csIsDraft
    , csIsCC
    , csVideoId
    , csName
    , csIsLarge
    , csLanguage
    , csIsAutoSynced
    , csIsEasyReader
    , csAudioTrackType

    -- * CdnSettingsFrameRate
    , CdnSettingsFrameRate (..)

    -- * Comment
    , Comment
    , comment
    , ccEtag
    , ccSnippet
    , ccKind
    , ccId

    -- * I18nRegionSnippet
    , I18nRegionSnippet
    , i18nRegionSnippet
    , irsName
    , irsGl

    -- * LiveStreamConfigurationIssueType
    , LiveStreamConfigurationIssueType (..)

    -- * SearchListSafeSearch
    , SearchListSafeSearch (..)

    -- * Subscription
    , Subscription
    , subscription
    , subEtag
    , subSubscriberSnippet
    , subSnippet
    , subKind
    , subContentDetails
    , subId

    -- * SearchListVideoSyndicated
    , SearchListVideoSyndicated (..)

    -- * ContentRatingDjctqRatingReasonsItem
    , ContentRatingDjctqRatingReasonsItem (..)

    -- * Entity
    , Entity
    , entity
    , eTypeId
    , eURL
    , eId

    -- * AbuseReport
    , AbuseReport
    , abuseReport
    , arSubject
    , arRelatedEntities
    , arAbuseTypes
    , arDescription

    -- * VideoRecordingDetails
    , VideoRecordingDetails
    , videoRecordingDetails
    , vrdLocation
    , vrdLocationDescription
    , vrdRecordingDate

    -- * CdnSettingsIngestionType
    , CdnSettingsIngestionType (..)

    -- * InvideoTimingType
    , InvideoTimingType (..)

    -- * VideoRating
    , VideoRating
    , videoRating
    , vRating
    , vVideoId

    -- * ContentRatingAgcomRating
    , ContentRatingAgcomRating (..)

    -- * CommentSnippet
    , CommentSnippet
    , commentSnippet
    , cViewerRating
    , cPublishedAt
    , cAuthorChannelURL
    , cModerationStatus
    , cLikeCount
    , cChannelId
    , cTextOriginal
    , cVideoId
    , cTextDisplay
    , cAuthorProFileImageURL
    , cAuthorDisplayName
    , cUpdatedAt
    , cAuthorChannelId
    , cCanRate
    , cParentId

    -- * LiveStreamStatus
    , LiveStreamStatus
    , liveStreamStatus
    , lssStreamStatus
    , lssHealthStatus

    -- * VideoSuggestions
    , VideoSuggestions
    , videoSuggestions
    , vsProcessingErrors
    , vsProcessingHints
    , vsEditorSuggestions
    , vsProcessingWarnings
    , vsTagSuggestions

    -- * CommentSnippetModerationStatus
    , CommentSnippetModerationStatus (..)

    -- * MembershipsLevelListResponse
    , MembershipsLevelListResponse
    , membershipsLevelListResponse
    , mllrEtag
    , mllrKind
    , mllrItems
    , mllrVisitorId
    , mllrEventId

    -- * PlayListItemSnippet
    , PlayListItemSnippet
    , playListItemSnippet
    , plisResourceId
    , plisPublishedAt
    , plisChannelTitle
    , plisChannelId
    , plisThumbnails
    , plisTitle
    , plisPlayListId
    , plisVideoOwnerChannelTitle
    , plisVideoOwnerChannelId
    , plisDescription
    , plisPosition

    -- * VideoProjectDetails
    , VideoProjectDetails
    , videoProjectDetails

    -- * SearchListVideoLicense
    , SearchListVideoLicense (..)

    -- * ContentRating
    , ContentRating
    , contentRating
    , crFpbRatingReasons
    , crPefilmRating
    , crCccRating
    , crAnatelRating
    , crMpaaRating
    , crCceRating
    , crMccaaRating
    , crChfilmRating
    , crIcaaRating
    , crFcbmRating
    , crBmukkRating
    , crMoctwRating
    , crNfvcbRating
    , crDjctqRatingReasons
    , crAgcomRating
    , crCnaRating
    , crCatvfrRating
    , crCbfcRating
    , crKfcbRating
    , crSmsaRating
    , crChvrsRating
    , crIncaaRating
    , crMcstRating
    , crNfrcRating
    , crCsaRating
    , crMocRating
    , crEirinRating
    , crFskRating
    , crEefilmRating
    , crRcnofRating
    , crMekuRating
    , crIlfilmRating
    , crIfcoRating
    , crNbcplRating
    , crGrfilmRating
    , crRteRating
    , crAcbRating
    , crCatvRating
    , crMdaRating
    , crNmcRating
    , crDjctqRating
    , crSmaisRating
    , crCscfRating
    , crTvpgRating
    , crRtcRating
    , crYtRating
    , crBbfcRating
    , crMenaMpaaRating
    , crKijkwijzerRating
    , crMtrcbRating
    , crFcoRating
    , crCicfRating
    , crCzfilmRating
    , crNbcRating
    , crFmocRating
    , crRussiaRating
    , crEgfilmRating
    , crResorteviolenciaRating
    , crMibacRating
    , crMedietilsynetRating
    , crMccypRating
    , crNkclvRating
    , crFpbRating
    , crLsfRating
    , crBfvcRating
    , crMpaatRating
    , crEcbmctRating
    , crCNCRating
    , crSkfilmRating
    , crOflcRating
    , crKmrbRating

    -- * PlayList
    , PlayList
    , playList
    , plStatus
    , plEtag
    , plSnippet
    , plKind
    , plContentDetails
    , plId
    , plLocalizations
    , plPlayer

    -- * LiveChatMessageSnippetType
    , LiveChatMessageSnippetType (..)

    -- * LiveStreamStatusStreamStatus
    , LiveStreamStatusStreamStatus (..)

    -- * VideoStatusLicense
    , VideoStatusLicense (..)

    -- * ContentRatingNfvcbRating
    , ContentRatingNfvcbRating (..)

    -- * ChannelSettings
    , ChannelSettings
    , channelSettings
    , cShowRelatedChannels
    , cDefaultTab
    , cFeaturedChannelsTitle
    , cCountry
    , cProFileColor
    , cModerateComments
    , cKeywords
    , cUnsubscribedTrailer
    , cTrackingAnalyticsAccountId
    , cFeaturedChannelsURLs
    , cShowBrowseView
    , cTitle
    , cDescription
    , cDefaultLanguage

    -- * SubscriptionSnippet
    , SubscriptionSnippet
    , subscriptionSnippet
    , ssResourceId
    , ssPublishedAt
    , ssChannelTitle
    , ssChannelId
    , ssThumbnails
    , ssTitle
    , ssDescription

    -- * VideoLiveStreamingDetails
    , VideoLiveStreamingDetails
    , videoLiveStreamingDetails
    , vlsdActualEndTime
    , vlsdConcurrentViewers
    , vlsdScheduledEndTime
    , vlsdScheduledStartTime
    , vlsdActualStartTime
    , vlsdActiveLiveChatId

    -- * ContentRatingMdaRating
    , ContentRatingMdaRating (..)

    -- * ContentRatingNmcRating
    , ContentRatingNmcRating (..)

    -- * ActivityContentDetailsPromotedItem
    , ActivityContentDetailsPromotedItem
    , activityContentDetailsPromotedItem
    , acdpiDestinationURL
    , acdpiClickTrackingURL
    , acdpiForecastingURL
    , acdpiDescriptionText
    , acdpiCtaType
    , acdpiVideoId
    , acdpiAdTag
    , acdpiCreativeViewURL
    , acdpiImpressionURL
    , acdpiCustomCtaButtonText

    -- * ContentRatingAcbRating
    , ContentRatingAcbRating (..)

    -- * ContentRatingDjctqRating
    , ContentRatingDjctqRating (..)

    -- * GeoPoint
    , GeoPoint
    , geoPoint
    , gpLatitude
    , gpAltitude
    , gpLongitude

    -- * CommentThreadReplies
    , CommentThreadReplies
    , commentThreadReplies
    , ctrComments

    -- * ChannelSectionLocalization
    , ChannelSectionLocalization
    , channelSectionLocalization
    , cslTitle

    -- * VideoAbuseReportSecondaryReason
    , VideoAbuseReportSecondaryReason
    , videoAbuseReportSecondaryReason
    , varsrId
    , varsrLabel

    -- * VideoStatusFailureReason
    , VideoStatusFailureReason (..)

    -- * ChannelContentOwnerDetails
    , ChannelContentOwnerDetails
    , channelContentOwnerDetails
    , ccodTimeLinked
    , ccodContentOwner

    -- * I18nLanguageSnippet
    , I18nLanguageSnippet
    , i18nLanguageSnippet
    , ilsHl
    , ilsName

    -- * ContentRatingCatvRating
    , ContentRatingCatvRating (..)

    -- * MemberListResponse
    , MemberListResponse
    , memberListResponse
    , mlrEtag
    , mlrTokenPagination
    , mlrNextPageToken
    , mlrPageInfo
    , mlrKind
    , mlrItems
    , mlrVisitorId
    , mlrEventId
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types.Product
import Network.Google.YouTube.Types.Sum

-- | Default request referring to version 'v3' of the YouTube Data API v3. This contains the host and root path used as a starting point for constructing service requests.
youTubeService :: ServiceConfig
youTubeService
  = defaultService (ServiceId "youtube:v3")
      "youtube.googleapis.com"

-- | Manage your YouTube videos
youTubeUploadScope :: Proxy '["https://www.googleapis.com/auth/youtube.upload"]
youTubeUploadScope = Proxy

-- | Manage your YouTube account
youTubeScope :: Proxy '["https://www.googleapis.com/auth/youtube"]
youTubeScope = Proxy

-- | See a list of your current active channel members, their current level,
-- and when they became a member
youTubeChannelMembershipsCreatorScope :: Proxy '["https://www.googleapis.com/auth/youtube.channel-memberships.creator"]
youTubeChannelMembershipsCreatorScope = Proxy

-- | View and manage your assets and associated content on YouTube
youTubePartnerScope :: Proxy '["https://www.googleapis.com/auth/youtubepartner"]
youTubePartnerScope = Proxy

-- | See, edit, and permanently delete your YouTube videos, ratings, comments
-- and captions
youTubeForceSslScope :: Proxy '["https://www.googleapis.com/auth/youtube.force-ssl"]
youTubeForceSslScope = Proxy

-- | View your YouTube account
youTubeReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/youtube.readonly"]
youTubeReadOnlyScope = Proxy

-- | View private information of your YouTube channel relevant during the
-- audit process with a YouTube partner
youTubePartnerChannelAuditScope :: Proxy '["https://www.googleapis.com/auth/youtubepartner-channel-audit"]
youTubePartnerChannelAuditScope = Proxy
