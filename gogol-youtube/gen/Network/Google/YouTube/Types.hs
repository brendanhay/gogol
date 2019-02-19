{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
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
    , iiBackupIngestionAddress
    , iiIngestionAddress
    , iiStreamName

    -- * ChannelAuditDetails
    , ChannelAuditDetails
    , channelAuditDetails
    , cadContentIdClaimsGoodStanding
    , cadOverallGoodStanding
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

    -- * LiveBroadcastStatusLifeCycleStatus
    , LiveBroadcastStatusLifeCycleStatus (..)

    -- * CaptionSnippetFailureReason
    , CaptionSnippetFailureReason (..)

    -- * LiveChatPollClosedDetails
    , LiveChatPollClosedDetails
    , liveChatPollClosedDetails
    , lcpcdPollId

    -- * PromotedItem
    , PromotedItem
    , promotedItem
    , piCustomMessage
    , piPromotedByContentOwner
    , piId
    , piTiming

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

    -- * CaptionsDownloadTfmt
    , CaptionsDownloadTfmt (..)

    -- * PromotedItemIdType
    , PromotedItemIdType (..)

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

    -- * LiveBroadcastStatus
    , LiveBroadcastStatus
    , liveBroadcastStatus
    , lbsLiveBroadcastPriority
    , lbsRecordingStatus
    , lbsLifeCycleStatus
    , lbsPrivacyStatus

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
    , vsLicense

    -- * ContentRatingKfcbRating
    , ContentRatingKfcbRating (..)

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

    -- * LiveChatPollEditedDetails
    , LiveChatPollEditedDetails
    , liveChatPollEditedDetails
    , lcpedPrompt
    , lcpedItems
    , lcpedId

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
    , chaInvideoPromotion
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
    , scesAmountMicros
    , scesMessageType
    , scesChannelId
    , scesCommentText
    , scesNonprofit
    , scesCurrency
    , scesIsSuperChatForGood

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
    , lcmsLiveChatId
    , lcmsPublishedAt
    , lcmsPollOpenedDetails
    , lcmsPollVotedDetails
    , lcmsUserBannedDetails
    , lcmsTextMessageDetails
    , lcmsPollClosedDetails
    , lcmsMessageRetractedDetails
    , lcmsSuperChatDetails
    , lcmsPollEditedDetails
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

    -- * Nonprofit
    , Nonprofit
    , nonprofit
    , nNonprofitId
    , nNonprofitLegalName

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

    -- * LiveChatModeratorSnippet
    , LiveChatModeratorSnippet
    , liveChatModeratorSnippet
    , lLiveChatId
    , lModeratorDetails

    -- * ContentRatingCscfRating
    , ContentRatingCscfRating (..)

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

    -- * Sponsor
    , Sponsor
    , sponsor
    , sEtag
    , sSnippet
    , sKind

    -- * LiveChatMessageDeletedDetails
    , LiveChatMessageDeletedDetails
    , liveChatMessageDeletedDetails
    , lcmddDeletedMessageId

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

    -- * NonprofitId
    , NonprofitId
    , nonprofitId
    , niValue

    -- * VideoContentDetailsCaption
    , VideoContentDetailsCaption (..)

    -- * LiveBroadcastStatistics
    , LiveBroadcastStatistics
    , liveBroadcastStatistics
    , lbsTotalChatCount
    , lbsConcurrentViewers

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

    -- * GuideCategorySnippet
    , GuideCategorySnippet
    , guideCategorySnippet
    , gcsChannelId
    , gcsTitle

    -- * ContentRatingKmrbRating
    , ContentRatingKmrbRating (..)

    -- * ContentRatingOflcRating
    , ContentRatingOflcRating (..)

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

    -- * ChannelSectionLocalizations
    , ChannelSectionLocalizations
    , channelSectionLocalizations
    , cslAddtional

    -- * ContentRatingIlfilmRating
    , ContentRatingIlfilmRating (..)

    -- * SubscriptionListResponse
    , SubscriptionListResponse
    , subscriptionListResponse
    , subEtag
    , subTokenPagination
    , subNextPageToken
    , subPageInfo
    , subKind
    , subItems
    , subVisitorId
    , subEventId
    , subPrevPageToken

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

    -- * PromotedItemId
    , PromotedItemId
    , promotedItemId
    , piiRecentlyUploadedBy
    , piiVideoId
    , piiWebsiteURL
    , piiType

    -- * CommentThreadsListTextFormat
    , CommentThreadsListTextFormat (..)

    -- * LocalizedString
    , LocalizedString
    , localizedString
    , lsValue
    , lsLanguage

    -- * ContentRatingIfcoRating
    , ContentRatingIfcoRating (..)

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

    -- * GuideCategory
    , GuideCategory
    , guideCategory
    , gcEtag
    , gcSnippet
    , gcKind
    , gcId

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

    -- * LiveChatPollItem
    , LiveChatPollItem
    , liveChatPollItem
    , lcpiItemId
    , lcpiDescription

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

    -- * SponsorListResponse
    , SponsorListResponse
    , sponsorListResponse
    , spoEtag
    , spoTokenPagination
    , spoNextPageToken
    , spoPageInfo
    , spoKind
    , spoItems
    , spoVisitorId
    , spoEventId

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

    -- * InvideoPromotion
    , InvideoPromotion
    , invideoPromotion
    , ipUseSmartTiming
    , ipItems
    , ipDefaultTiming
    , ipPosition

    -- * InvideoBranding
    , InvideoBranding
    , invideoBranding
    , ibImageURL
    , ibTargetChannelId
    , ibTiming
    , ibImageBytes
    , ibPosition

    -- * SponsorsListFilter
    , SponsorsListFilter (..)

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

    -- * ContentRatingMccypRating
    , ContentRatingMccypRating (..)

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

    -- * LiveChatPollOpenedDetails
    , LiveChatPollOpenedDetails
    , liveChatPollOpenedDetails
    , lcpodPrompt
    , lcpodItems
    , lcpodId

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

    -- * ContentRatingMtrcbRating
    , ContentRatingMtrcbRating (..)

    -- * ContentRatingFcoRating
    , ContentRatingFcoRating (..)

    -- * GuideCategoryListResponse
    , GuideCategoryListResponse
    , guideCategoryListResponse
    , gclrEtag
    , gclrTokenPagination
    , gclrNextPageToken
    , gclrPageInfo
    , gclrKind
    , gclrItems
    , gclrVisitorId
    , gclrEventId
    , gclrPrevPageToken

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
    , ssEtag
    , ssSubscriberSnippet
    , ssSnippet
    , ssKind
    , ssContentDetails
    , ssId

    -- * SearchListVideoSyndicated
    , SearchListVideoSyndicated (..)

    -- * ContentRatingDjctqRatingReasonsItem
    , ContentRatingDjctqRatingReasonsItem (..)

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
    , plisDescription
    , plisPosition

    -- * VideoProjectDetails
    , VideoProjectDetails
    , videoProjectDetails
    , vpdTags

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

    -- * SponsorSnippet
    , SponsorSnippet
    , sponsorSnippet
    , sCumulativeDurationMonths
    , sChannelId
    , sSponsorDetails
    , sSponsorSince

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

    -- * LiveChatPollVotedDetails
    , LiveChatPollVotedDetails
    , liveChatPollVotedDetails
    , lcpvdPollId
    , lcpvdItemId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types.Product
import           Network.Google.YouTube.Types.Sum

-- | Default request referring to version 'v3' of the YouTube Data API. This contains the host and root path used as a starting point for constructing service requests.
youTubeService :: ServiceConfig
youTubeService
  = defaultService (ServiceId "youtube:v3")
      "www.googleapis.com"

-- | Manage your YouTube videos
youTubeUploadScope :: Proxy '["https://www.googleapis.com/auth/youtube.upload"]
youTubeUploadScope = Proxy

-- | Manage your YouTube account
youTubeScope :: Proxy '["https://www.googleapis.com/auth/youtube"]
youTubeScope = Proxy

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
