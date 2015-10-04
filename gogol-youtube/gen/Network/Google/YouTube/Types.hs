{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTube.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTube.Types
    (
    -- * Service URL
      youTubeURL

    -- * Thumbnail
    , Thumbnail
    , thumbnail
    , tHeight
    , tURL
    , tWidth

    -- * VideoDefinition
    , VideoDefinition (..)

    -- * IngestionInfo
    , IngestionInfo
    , ingestionInfo
    , iiBackupIngestionAddress
    , iiIngestionAddress
    , iiStreamName

    -- * Chart
    , Chart (..)

    -- * FailureReason
    , FailureReason (..)

    -- * Rotation
    , Rotation (..)

    -- * PefilmRating
    , PefilmRating (..)

    -- * SubscriptionSubscriberSnippet
    , SubscriptionSubscriberSnippet
    , subscriptionSubscriberSnippet
    , sssChannelId
    , sssThumbnails
    , sssTitle
    , sssDescription

    -- * CccRating
    , CccRating (..)

    -- * AnatelRating
    , AnatelRating (..)

    -- * ChannelAuditDetails
    , ChannelAuditDetails
    , channelAuditDetails
    , cadContentIdClaimsGoodStanding
    , cadOverallGoodStanding
    , cadCopyrightStrikesGoodStanding
    , cadCommUnityGuidelinesGoodStanding

    -- * ProcessingFailureReason
    , ProcessingFailureReason (..)

    -- * Style
    , Style (..)

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

    -- * InvideoPositionType
    , InvideoPositionType (..)

    -- * YouTubeCommentsSetModerationStatusModerationStatus
    , YouTubeCommentsSetModerationStatusModerationStatus (..)

    -- * PromotedItem
    , PromotedItem
    , promotedItem
    , piCustomMessage
    , piPromotedByContentOwner
    , piId
    , piTiming

    -- * Rating
    , Rating (..)

    -- * VideoDuration
    , VideoDuration (..)

    -- * TrackKind
    , TrackKind (..)

    -- * VideoStatusPrivacyStatus
    , VideoStatusPrivacyStatus (..)

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

    -- * SearchListResponse
    , SearchListResponse
    , searchListResponse
    , slrEtag
    , slrTokenPagination
    , slrNextPageToken
    , slrPageInfo
    , slrKind
    , slrItems
    , slrVisitorId
    , slrEventId
    , slrPrevPageToken

    -- * TokenPagination
    , TokenPagination
    , tokenPagination

    -- * CaptionSnippetFailureReason
    , CaptionSnippetFailureReason (..)

    -- * Context
    , Context (..)

    -- * ActivityContentDetailsRecommendation
    , ActivityContentDetailsRecommendation
    , activityContentDetailsRecommendation
    , acdrResourceId
    , acdrSeedResourceId
    , acdrReason

    -- * VideoCaption
    , VideoCaption (..)

    -- * ResourceId
    , ResourceId
    , resourceId
    , riKind
    , riChannelId
    , riVideoId
    , riPlayListId

    -- * ProcessingWarningsItem
    , ProcessingWarningsItem (..)

    -- * SearchResult
    , SearchResult
    , searchResult
    , srEtag
    , srSnippet
    , srKind
    , srId

    -- * ChannelStatus
    , ChannelStatus
    , channelStatus
    , csIsLinked
    , csLongUploadsStatus
    , csPrivacyStatus

    -- * LiveBroadcastStatusPrivacyStatus
    , LiveBroadcastStatusPrivacyStatus (..)

    -- * LiveStreamSnippet
    , LiveStreamSnippet
    , liveStreamSnippet
    , lssPublishedAt
    , lssChannelId
    , lssIsDefaultStream
    , lssTitle
    , lssDescription

    -- * PlayListStatus
    , PlayListStatus
    , playListStatus
    , plsPrivacyStatus

    -- * MpaaRating
    , MpaaRating (..)

    -- * VideoContentDetails
    , VideoContentDetails
    , videoContentDetails
    , vcdCountryRestriction
    , vcdDefinition
    , vcdDimension
    , vcdCaption
    , vcdRegionRestriction
    , vcdDuration
    , vcdContentRating
    , vcdLicensedContent

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

    -- * CceRating
    , CceRating (..)

    -- * VideoAbuseReportReasonListResponse
    , VideoAbuseReportReasonListResponse
    , videoAbuseReportReasonListResponse
    , varrlrEtag
    , varrlrKind
    , varrlrItems
    , varrlrVisitorId
    , varrlrEventId

    -- * LiveBroadcastContentDetails
    , LiveBroadcastContentDetails
    , liveBroadcastContentDetails
    , lbcdEnableContentEncryption
    , lbcdEnableLowLatency
    , lbcdEnableEmbed
    , lbcdStartWithSlate
    , lbcdMonitorStream
    , lbcdBoundStreamId
    , lbcdRecordFromStart
    , lbcdEnableClosedCaptions
    , lbcdEnableDvr

    -- * MccaaRating
    , MccaaRating (..)

    -- * ChfilmRating
    , ChfilmRating (..)

    -- * ActivityContentDetailsFavorite
    , ActivityContentDetailsFavorite
    , activityContentDetailsFavorite
    , acdfResourceId

    -- * VideoTopicDetails
    , VideoTopicDetails
    , videoTopicDetails
    , vtdTopicIds
    , vtdRelevantTopicIds

    -- * VideoLicense
    , VideoLicense (..)

    -- * PromotedItemIdType
    , PromotedItemIdType (..)

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

    -- * LiveBroadcastTopicDetails
    , LiveBroadcastTopicDetails
    , liveBroadcastTopicDetails
    , lbtdTopics

    -- * SearchResultSnippetLiveBroadcastContent
    , SearchResultSnippetLiveBroadcastContent (..)

    -- * RelatedPlayLists
    , RelatedPlayLists
    , relatedPlayLists
    , rplFavorites
    , rplWatchHistory
    , rplWatchLater
    , rplUploads
    , rplLikes

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

    -- * ActivityType
    , ActivityType (..)

    -- * IcaaRating
    , IcaaRating (..)

    -- * FcbmRating
    , FcbmRating (..)

    -- * ActivityContentDetailsUpload
    , ActivityContentDetailsUpload
    , activityContentDetailsUpload
    , acduVideoId

    -- * PlayListContentDetails
    , PlayListContentDetails
    , playListContentDetails
    , plcdItemCount

    -- * ActivityContentDetailsSocial
    , ActivityContentDetailsSocial
    , activityContentDetailsSocial
    , acdsResourceId
    , acdsImageURL
    , acdsAuthor
    , acdsReferenceURL
    , acdsType

    -- * ActivityContentDetailsSubscription
    , ActivityContentDetailsSubscription
    , activityContentDetailsSubscription
    , aResourceId

    -- * ActivityContentDetailsComment
    , ActivityContentDetailsComment
    , activityContentDetailsComment
    , acdcResourceId

    -- * ActivityContentDetailsLike
    , ActivityContentDetailsLike
    , activityContentDetailsLike
    , acdlResourceId

    -- * BmukkRating
    , BmukkRating (..)

    -- * ViewerRating
    , ViewerRating (..)

    -- * VideoFileDetails
    , VideoFileDetails
    , videoFileDetails
    , vfdBitrateBps
    , vfdCreationTime
    , vfdRecordingLocation
    , vfdDurationMs
    , vfdFileSize
    , vfdFileType
    , vfdContainer
    , vfdVideoStreams
    , vfdAudioStreams
    , vfdFileName

    -- * Definition
    , Definition (..)

    -- * MoctwRating
    , MoctwRating (..)

    -- * LiveBroadcastStatus
    , LiveBroadcastStatus
    , liveBroadcastStatus
    , lbsLiveBroadcastPriority
    , lbsRecordingStatus
    , lbsLifeCycleStatus
    , lbsPrivacyStatus

    -- * ThumbnailSetResponse
    , ThumbnailSetResponse
    , thumbnailSetResponse
    , tsrEtag
    , tsrKind
    , tsrItems
    , tsrVisitorId
    , tsrEventId

    -- * ActivityContentDetailsPlayListItem
    , ActivityContentDetailsPlayListItem
    , activityContentDetailsPlayListItem
    , acdpliResourceId
    , acdpliPlayListId
    , acdpliPlayListItemId

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

    -- * PageInfo
    , PageInfo
    , pageInfo
    , piResultsPerPage
    , piTotalResults

    -- * ActivityContentDetailsChannelItem
    , ActivityContentDetailsChannelItem
    , activityContentDetailsChannelItem
    , acdciResourceId

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

    -- * NfvcbRating
    , NfvcbRating (..)

    -- * ChannelContentDetails
    , ChannelContentDetails
    , channelContentDetails
    , ccdRelatedPlayLists
    , ccdGooglePlusUserId

    -- * ModerationStatus
    , ModerationStatus (..)

    -- * LiveBroadcastTopicType
    , LiveBroadcastTopicType (..)

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

    -- * VideoSuggestionsTagSuggestion
    , VideoSuggestionsTagSuggestion
    , videoSuggestionsTagSuggestion
    , vstsTag
    , vstsCategoryRestricts

    -- * AgcomRating
    , AgcomRating (..)

    -- * StreamStatus
    , StreamStatus (..)

    -- * CommentThreadSnippet
    , CommentThreadSnippet
    , commentThreadSnippet
    , ctsIsPublic
    , ctsChannelId
    , ctsCanReply
    , ctsVideoId
    , ctsTotalReplyCount
    , ctsTopLevelComment

    -- * ChannelTopicDetails
    , ChannelTopicDetails
    , channelTopicDetails
    , ctdTopicIds

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

    -- * VideoMonetizationDetails
    , VideoMonetizationDetails
    , videoMonetizationDetails
    , vmdAccess

    -- * CnaRating
    , CnaRating (..)

    -- * MyRating
    , MyRating (..)

    -- * EditorSuggestionsItem
    , EditorSuggestionsItem (..)

    -- * CatvfrRating
    , CatvfrRating (..)

    -- * CbfcRating
    , CbfcRating (..)

    -- * LiveStreamConfigurationIssue
    , LiveStreamConfigurationIssue
    , liveStreamConfigurationIssue
    , lsciSeverity
    , lsciReason
    , lsciType
    , lsciDescription

    -- * ChannelLocalizations
    , ChannelLocalizations
    , channelLocalizations

    -- * VideoAbuseReportReason
    , VideoAbuseReportReason
    , videoAbuseReportReason
    , varrEtag
    , varrSnippet
    , varrKind
    , varrId

    -- * Severity
    , Severity (..)

    -- * ChannelSectionTargeting
    , ChannelSectionTargeting
    , channelSectionTargeting
    , cstRegions
    , cstCountries
    , cstLanguages

    -- * KfcbRating
    , KfcbRating (..)

    -- * ChannelSectionListResponse
    , ChannelSectionListResponse
    , channelSectionListResponse
    , cslrEtag
    , cslrKind
    , cslrItems
    , cslrVisitorId
    , cslrEventId

    -- * SmsaRating
    , SmsaRating (..)

    -- * LiveBroadcastPriority
    , LiveBroadcastPriority (..)

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

    -- * Channel
    , Channel
    , channel
    , cStatus
    , cEtag
    , cAuditDetails
    , cContentOwnerDetails
    , cSnippet
    , cKind
    , cTopicDetails
    , cContentDetails
    , cConversionPings
    , cBrandingSettings
    , cId
    , cInvideoPromotion
    , cStatistics
    , cLocalizations

    -- * VideoGetRatingResponse
    , VideoGetRatingResponse
    , videoGetRatingResponse
    , vgrrEtag
    , vgrrKind
    , vgrrItems
    , vgrrVisitorId
    , vgrrEventId

    -- * ChvrsRating
    , ChvrsRating (..)

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

    -- * RejectionReason
    , RejectionReason (..)

    -- * IncaaRating
    , IncaaRating (..)

    -- * BroadcastStatus
    , BroadcastStatus (..)

    -- * I18nRegion
    , I18nRegion
    , i18nRegion
    , irEtag
    , irSnippet
    , irKind
    , irId

    -- * LiveStreamHealthStatusStatus
    , LiveStreamHealthStatusStatus (..)

    -- * Caption
    , Caption (..)

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

    -- * ChannelStatistics
    , ChannelStatistics
    , channelStatistics
    , csCommentCount
    , csSubscriberCount
    , csVideoCount
    , csHiddenSubscriberCount
    , csViewCount

    -- * LongUploadsStatus
    , LongUploadsStatus (..)

    -- * ChannelId
    , ChannelId
    , channelId
    , ciValue

    -- * VideoAbuseReportReasonSnippet
    , VideoAbuseReportReasonSnippet
    , videoAbuseReportReasonSnippet
    , varrsSecondaryReasons
    , varrsLabel

    -- * ProcessingHintsItem
    , ProcessingHintsItem (..)

    -- * VideoProcessingDetailsProcessingProgress
    , VideoProcessingDetailsProcessingProgress
    , videoProcessingDetailsProcessingProgress
    , vpdppTimeLeftMs
    , vpdppPartsTotal
    , vpdppPartsProcessed

    -- * FileType
    , FileType (..)

    -- * Caption
    , Caption
    , caption
    , capEtag
    , capSnippet
    , capKind
    , capId

    -- * NfrcRating
    , NfrcRating (..)

    -- * VideoContentDetailsRegionRestriction
    , VideoContentDetailsRegionRestriction
    , videoContentDetailsRegionRestriction
    , vcdrrAllowed
    , vcdrrBlocked

    -- * ThumbnailDetails
    , ThumbnailDetails
    , thumbnailDetails
    , tdMedium
    , tdMaxres
    , tdDefault
    , tdStandard
    , tdHigh

    -- * ChannelSnippet
    , ChannelSnippet
    , channelSnippet
    , csPublishedAt
    , csCountry
    , csThumbnails
    , csLocalized
    , csTitle
    , csDescription
    , csDefaultLanguage

    -- * PlayListLocalizations
    , PlayListLocalizations
    , playListLocalizations

    -- * YouTubeLiveBroadcastsListBroadcastStatus
    , YouTubeLiveBroadcastsListBroadcastStatus (..)

    -- * CsaRating
    , CsaRating (..)

    -- * MocRating
    , MocRating (..)

    -- * CtaType
    , CtaType (..)

    -- * MonitorStreamInfo
    , MonitorStreamInfo
    , monitorStreamInfo
    , msiBroadcastStreamDelayMs
    , msiEmbedHTML
    , msiEnableMonitorStream

    -- * EirinRating
    , EirinRating (..)

    -- * InvideoTiming
    , InvideoTiming
    , invideoTiming
    , itDurationMs
    , itOffsetMs
    , itType

    -- * CornerPosition
    , CornerPosition (..)

    -- * FskRating
    , FskRating (..)

    -- * VideoCategory
    , VideoCategory
    , videoCategory
    , vcEtag
    , vcSnippet
    , vcKind
    , vcId

    -- * VideoRatingRating
    , VideoRatingRating (..)

    -- * EefilmRating
    , EefilmRating (..)

    -- * RecordingStatus
    , RecordingStatus (..)

    -- * LiveBroadcast
    , LiveBroadcast
    , liveBroadcast
    , lbStatus
    , lbEtag
    , lbSnippet
    , lbKind
    , lbTopicDetails
    , lbContentDetails
    , lbId
    , lbStatistics

    -- * ChannelSectionContentDetails
    , ChannelSectionContentDetails
    , channelSectionContentDetails
    , cscdChannels
    , cscdPlayLists

    -- * VideoLocalizations
    , VideoLocalizations
    , videoLocalizations

    -- * RcnofRating
    , RcnofRating (..)

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
    , vConversionPings
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

    -- * MekuRating
    , MekuRating (..)

    -- * LiveStreamContentDetails
    , LiveStreamContentDetails
    , liveStreamContentDetails
    , lscdClosedCaptionsIngestionURL
    , lscdIsReusable

    -- * VideoCategorySnippet
    , VideoCategorySnippet
    , videoCategorySnippet
    , vcsAssignable
    , vcsChannelId
    , vcsTitle

    -- * VideoEmbeddable
    , VideoEmbeddable (..)

    -- * IlfilmRating
    , IlfilmRating (..)

    -- * IfcoRating
    , IfcoRating (..)

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

    -- * PropertyValue
    , PropertyValue
    , propertyValue
    , pvProperty
    , pvValue

    -- * I18nLanguage
    , I18nLanguage
    , i18nLanguage
    , ilEtag
    , ilSnippet
    , ilKind
    , ilId

    -- * WatchSettings
    , WatchSettings
    , watchSettings
    , wsFeaturedPlayListId
    , wsBackgRoundColor
    , wsTextColor

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

    -- * AccessPolicy
    , AccessPolicy
    , accessPolicy
    , apException
    , apAllowed

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

    -- * CdnSettings
    , CdnSettings
    , cdnSettings
    , csIngestionInfo
    , csFormat
    , csIngestionType

    -- * EventType
    , EventType (..)

    -- * Reason
    , Reason (..)

    -- * NbcplRating
    , NbcplRating (..)

    -- * VideoStatistics
    , VideoStatistics
    , videoStatistics
    , vsLikeCount
    , vsCommentCount
    , vsFavoriteCount
    , vsDislikeCount
    , vsViewCount

    -- * GrfilmRating
    , GrfilmRating (..)

    -- * RteRating
    , RteRating (..)

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

    -- * LiveBroadcastStatistics
    , LiveBroadcastStatistics
    , liveBroadcastStatistics
    , lbsTotalChatCount
    , lbsConcurrentViewers

    -- * GuideCategorySnippet
    , GuideCategorySnippet
    , guideCategorySnippet
    , gcsChannelId
    , gcsTitle

    -- * I18nRegionListResponse
    , I18nRegionListResponse
    , i18nRegionListResponse
    , irlrEtag
    , irlrKind
    , irlrItems
    , irlrVisitorId
    , irlrEventId

    -- * AcbRating
    , AcbRating (..)

    -- * PlayListItemStatus
    , PlayListItemStatus
    , playListItemStatus
    , plisPrivacyStatus

    -- * YouTubeSearchListOrder
    , YouTubeSearchListOrder (..)

    -- * ChannelSectionSnippetType
    , ChannelSectionSnippetType (..)

    -- * CaptionSnippetStatus
    , CaptionSnippetStatus (..)

    -- * CatvRating
    , CatvRating (..)

    -- * ProcessingStatus
    , ProcessingStatus (..)

    -- * MdaRating
    , MdaRating (..)

    -- * DjctqRating
    , DjctqRating (..)

    -- * UploadStatus
    , UploadStatus (..)

    -- * InvideoPosition
    , InvideoPosition
    , invideoPosition
    , ipCornerPosition
    , ipType

    -- * VideoFileDetailsAudioStream
    , VideoFileDetailsAudioStream
    , videoFileDetailsAudioStream
    , vfdasBitrateBps
    , vfdasVendor
    , vfdasCodec
    , vfdasChannelCount

    -- * ActivityContentDetailsBulletin
    , ActivityContentDetailsBulletin
    , activityContentDetailsBulletin
    , acdbResourceId

    -- * SafeSearch
    , SafeSearch (..)

    -- * VideoSyndicated
    , VideoSyndicated (..)

    -- * VideoAbuseReport
    , VideoAbuseReport
    , videoAbuseReport
    , varSecondaryReasonId
    , varReasonId
    , varVideoId
    , varLanguage
    , varComments

    -- * CaptionListResponse
    , CaptionListResponse
    , captionListResponse
    , clrlEtag
    , clrlKind
    , clrlItems
    , clrlVisitorId
    , clrlEventId

    -- * LifeCycleStatus
    , LifeCycleStatus (..)

    -- * PromotedItemId
    , PromotedItemId
    , promotedItemId
    , piiRecentlyUploadedBy
    , piiVideoId
    , piiWebsiteURL
    , piiType

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

    -- * IngestionType
    , IngestionType (..)

    -- * VideoConversionPings
    , VideoConversionPings
    , videoConversionPings
    , vcpPings

    -- * SmaisRating
    , SmaisRating (..)

    -- * CscfRating
    , CscfRating (..)

    -- * TvpgRating
    , TvpgRating (..)

    -- * RtcRating
    , RtcRating (..)

    -- * VideoLocalization
    , VideoLocalization
    , videoLocalization
    , vlTitle
    , vlDescription

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

    -- * LiveStreamHealthStatus
    , LiveStreamHealthStatus
    , liveStreamHealthStatus
    , lshsStatus
    , lshsConfigurationIssues
    , lshsLastUpdateTimeSeconds

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
    , vpEmbedHTML

    -- * YtRating
    , YtRating (..)

    -- * LocalizedString
    , LocalizedString
    , localizedString
    , lsValue
    , lsLanguage

    -- * BbfcRating
    , BbfcRating (..)

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

    -- * PrivacyStatus
    , PrivacyStatus (..)

    -- * GuideCategory
    , GuideCategory
    , guideCategory
    , gcEtag
    , gcSnippet
    , gcKind
    , gcId

    -- * I18nLanguageListResponse
    , I18nLanguageListResponse
    , i18nLanguageListResponse
    , illrEtag
    , illrKind
    , illrItems
    , illrVisitorId
    , illrEventId

    -- * PlayListItemStatusPrivacyStatus
    , PlayListItemStatusPrivacyStatus (..)

    -- * InvideoBranding
    , InvideoBranding
    , invideoBranding
    , ibImageURL
    , ibTargetChannelId
    , ibTiming
    , ibImageBytes
    , ibPosition

    -- * ChannelBrandingSettings
    , ChannelBrandingSettings
    , channelBrandingSettings
    , cbsImage
    , cbsHints
    , cbsChannel
    , cbsWatch

    -- * KijkwijzerRating
    , KijkwijzerRating (..)

    -- * DjctqRatingReasonsItem
    , DjctqRatingReasonsItem (..)

    -- * InvideoPromotion
    , InvideoPromotion
    , invideoPromotion
    , ipUseSmartTiming
    , ipItems
    , ipDefaultTiming
    , ipPosition

    -- * PlayListPlayer
    , PlayListPlayer
    , playListPlayer
    , plpEmbedHTML

    -- * CommentThread
    , CommentThread
    , commentThread
    , ctEtag
    , ctSnippet
    , ctKind
    , ctReplies
    , ctId

    -- * MtrcbRating
    , MtrcbRating (..)

    -- * ActivityContentDetailsSocialType
    , ActivityContentDetailsSocialType (..)

    -- * PlayListLocalization
    , PlayListLocalization
    , playListLocalization
    , pllTitle
    , pllDescription

    -- * Activity
    , Activity
    , activity
    , aEtag
    , aSnippet
    , aKind
    , aContentDetails
    , aId

    -- * ChannelBannerResource
    , ChannelBannerResource
    , channelBannerResource
    , cbrEtag
    , cbrKind
    , cbrURL

    -- * ProcessingErrorsItem
    , ProcessingErrorsItem (..)

    -- * LiveBroadcastTopicSnippet
    , LiveBroadcastTopicSnippet
    , liveBroadcastTopicSnippet
    , lbtsName
    , lbtsReleaseDate

    -- * FcoRating
    , FcoRating (..)

    -- * VideoGameRating
    , VideoGameRating (..)

    -- * ChannelConversionPings
    , ChannelConversionPings
    , channelConversionPings
    , ccpPings

    -- * PlayListItemContentDetails
    , PlayListItemContentDetails
    , playListItemContentDetails
    , plicdStartAt
    , plicdNote
    , plicdVideoId
    , plicdEndAt

    -- * ChannelLocalization
    , ChannelLocalization
    , channelLocalization
    , clTitle
    , clDescription

    -- * CicfRating
    , CicfRating (..)

    -- * VideoAgeGating
    , VideoAgeGating
    , videoAgeGating
    , vagAlcoholContent
    , vagRestricted
    , vagVideoGameRating

    -- * LocalizedProperty
    , LocalizedProperty
    , localizedProperty
    , lpDefault
    , lpLocalized
    , lpDefaultLanguage

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

    -- * CzfilmRating
    , CzfilmRating (..)

    -- * NbcRating
    , NbcRating (..)

    -- * SubscriptionContentDetails
    , SubscriptionContentDetails
    , subscriptionContentDetails
    , scdActivityType
    , scdTotalItemCount
    , scdNewItemCount

    -- * PlayListStatusPrivacyStatus
    , PlayListStatusPrivacyStatus (..)

    -- * FmocRating
    , FmocRating (..)

    -- * Localizations
    , Localizations
    , localizations

    -- * LanguageTag
    , LanguageTag
    , languageTag
    , ltValue

    -- * ActivitySnippetType
    , ActivitySnippetType (..)

    -- * LiveBroadcastContent
    , LiveBroadcastContent (..)

    -- * RussiaRating
    , RussiaRating (..)

    -- * LiveBroadcastTopic
    , LiveBroadcastTopic
    , liveBroadcastTopic
    , lbtSnippet
    , lbtUnmatched
    , lbtType

    -- * EgfilmRating
    , EgfilmRating (..)

    -- * Tfmt
    , Tfmt (..)

    -- * License
    , License (..)

    -- * PlayListItem
    , PlayListItem
    , playListItem
    , pliStatus
    , pliEtag
    , pliSnippet
    , pliKind
    , pliContentDetails
    , pliId

    -- * ChannelConversionPing
    , ChannelConversionPing
    , channelConversionPing
    , ccpContext
    , ccpConversionURL

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

    -- * ResorteviolenciaRating
    , ResorteviolenciaRating (..)

    -- * Subscription
    , Subscription
    , subscription
    , subEtag
    , subSubscriberSnippet
    , subSnippet
    , subKind
    , subContentDetails
    , subId

    -- * MibacRating
    , MibacRating (..)

    -- * I18nRegionSnippet
    , I18nRegionSnippet
    , i18nRegionSnippet
    , irsName
    , irsGl

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

    -- * LiveStreamConfigurationIssueType
    , LiveStreamConfigurationIssueType (..)

    -- * ChannelType
    , ChannelType (..)

    -- * MedietilsynetRating
    , MedietilsynetRating (..)

    -- * MccypRating
    , MccypRating (..)

    -- * Comment
    , Comment
    , comment
    , ccEtag
    , ccSnippet
    , ccKind
    , ccId

    -- * NkclvRating
    , NkclvRating (..)

    -- * FpbRating
    , FpbRating (..)

    -- * CommentSnippetModerationStatus
    , CommentSnippetModerationStatus (..)

    -- * LsfRating
    , LsfRating (..)

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

    -- * VideoRating
    , VideoRating
    , videoRating
    , vRating
    , vVideoId

    -- * VideoProjectDetails
    , VideoProjectDetails
    , videoProjectDetails
    , vpdTags

    -- * Order
    , Order (..)

    -- * VideoSuggestions
    , VideoSuggestions
    , videoSuggestions
    , vsProcessingErrors
    , vsProcessingHints
    , vsEditorSuggestions
    , vsProcessingWarnings
    , vsTagSuggestions

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

    -- * ContentRating
    , ContentRating
    , contentRating
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
    , crCNCRating
    , crSkfilmRating
    , crOflcRating
    , crKmrbRating

    -- * TextFormat
    , TextFormat (..)

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
    , cAuthorProfileImageURL
    , cAuthorDisplayName
    , cUpdatedAt
    , cAuthorChannelId
    , cCanRate
    , cAuthorGoogleplusProfileURL
    , cParentId

    -- * BfvcRating
    , BfvcRating (..)

    -- * VideoRecordingDetails
    , VideoRecordingDetails
    , videoRecordingDetails
    , vrdLocation
    , vrdLocationDescription
    , vrdRecordingDate

    -- * VideoConversionPingContext
    , VideoConversionPingContext (..)

    -- * ChannelSettings
    , ChannelSettings
    , channelSettings
    , cShowRelatedChannels
    , cDefaultTab
    , cFeaturedChannelsTitle
    , cCountry
    , cProfileColor
    , cModerateComments
    , cKeywords
    , cUnsubscribedTrailer
    , cTrackingAnalyticsAccountId
    , cFeaturedChannelsURLs
    , cShowBrowseView
    , cTitle
    , cDescription
    , cDefaultLanguage

    -- * InvideoTimingType
    , InvideoTimingType (..)

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

    -- * LiveStreamStatus
    , LiveStreamStatus
    , liveStreamStatus
    , lssStreamStatus
    , lssHealthStatus

    -- * VideoLiveStreamingDetails
    , VideoLiveStreamingDetails
    , videoLiveStreamingDetails
    , vlsdActualEndTime
    , vlsdConcurrentViewers
    , vlsdScheduledEndTime
    , vlsdScheduledStartTime
    , vlsdActualStartTime

    -- * CommentThreadReplies
    , CommentThreadReplies
    , commentThreadReplies
    , ctrComments

    -- * ChannelSectionLocalization
    , ChannelSectionLocalization
    , channelSectionLocalization
    , cslTitle

    -- * YouTubeSubscriptionsListOrder
    , YouTubeSubscriptionsListOrder (..)

    -- * CNCRating
    , CNCRating (..)

    -- * AudioTrackType
    , AudioTrackType (..)

    -- * VideoType
    , VideoType (..)

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

    -- * GeoPoint
    , GeoPoint
    , geoPoint
    , gpLatitude
    , gpAltitude
    , gpLongitude

    -- * SkfilmRating
    , SkfilmRating (..)

    -- * VideoDimension
    , VideoDimension (..)

    -- * I18nLanguageSnippet
    , I18nLanguageSnippet
    , i18nLanguageSnippet
    , ilsHl
    , ilsName

    -- * VideoAbuseReportSecondaryReason
    , VideoAbuseReportSecondaryReason
    , videoAbuseReportSecondaryReason
    , varsrId
    , varsrLabel

    -- * YouTubeCommentsListTextFormat
    , YouTubeCommentsListTextFormat (..)

    -- * OflcRating
    , OflcRating (..)

    -- * KmrbRating
    , KmrbRating (..)

    -- * VideoConversionPing
    , VideoConversionPing
    , videoConversionPing
    , vcpContext
    , vcpConversionURL

    -- * ChannelContentOwnerDetails
    , ChannelContentOwnerDetails
    , channelContentOwnerDetails
    , ccodTimeLinked
    , ccodContentOwner
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types.Product
import           Network.Google.YouTube.Types.Sum

-- | URL referring to version 'v3' of the YouTube Data API.
youTubeURL :: BaseUrl
youTubeURL
  = BaseUrl Https
      "https://www.googleapis.com/youtube/v3/"
      443
