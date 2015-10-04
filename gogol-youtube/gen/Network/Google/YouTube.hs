{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.YouTube
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Programmatic access to YouTube features.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference>
module Network.Google.YouTube
    (
    -- * API
      YouTubeAPI
    , youTubeAPI
    , youTubeURL

    -- * Service Methods

    -- * REST Resources

    -- ** YouTubeActivitiesInsert
    , module Network.Google.Resource.YouTube.Activities.Insert

    -- ** YouTubeActivitiesList
    , module Network.Google.Resource.YouTube.Activities.List

    -- ** YouTubeCaptionsDelete
    , module Network.Google.Resource.YouTube.Captions.Delete

    -- ** YouTubeCaptionsDownload
    , module Network.Google.Resource.YouTube.Captions.Download

    -- ** YouTubeCaptionsInsert
    , module Network.Google.Resource.YouTube.Captions.Insert

    -- ** YouTubeCaptionsList
    , module Network.Google.Resource.YouTube.Captions.List

    -- ** YouTubeCaptionsUpdate
    , module Network.Google.Resource.YouTube.Captions.Update

    -- ** YouTubeChannelBannersInsert
    , module Network.Google.Resource.YouTube.ChannelBanners.Insert

    -- ** YouTubeChannelSectionsDelete
    , module Network.Google.Resource.YouTube.ChannelSections.Delete

    -- ** YouTubeChannelSectionsInsert
    , module Network.Google.Resource.YouTube.ChannelSections.Insert

    -- ** YouTubeChannelSectionsList
    , module Network.Google.Resource.YouTube.ChannelSections.List

    -- ** YouTubeChannelSectionsUpdate
    , module Network.Google.Resource.YouTube.ChannelSections.Update

    -- ** YouTubeChannelsList
    , module Network.Google.Resource.YouTube.Channels.List

    -- ** YouTubeChannelsUpdate
    , module Network.Google.Resource.YouTube.Channels.Update

    -- ** YouTubeCommentThreadsInsert
    , module Network.Google.Resource.YouTube.CommentThreads.Insert

    -- ** YouTubeCommentThreadsList
    , module Network.Google.Resource.YouTube.CommentThreads.List

    -- ** YouTubeCommentThreadsUpdate
    , module Network.Google.Resource.YouTube.CommentThreads.Update

    -- ** YouTubeCommentsDelete
    , module Network.Google.Resource.YouTube.Comments.Delete

    -- ** YouTubeCommentsInsert
    , module Network.Google.Resource.YouTube.Comments.Insert

    -- ** YouTubeCommentsList
    , module Network.Google.Resource.YouTube.Comments.List

    -- ** YouTubeCommentsMarkAsSpam
    , module Network.Google.Resource.YouTube.Comments.MarkAsSpam

    -- ** YouTubeCommentsSetModerationStatus
    , module Network.Google.Resource.YouTube.Comments.SetModerationStatus

    -- ** YouTubeCommentsUpdate
    , module Network.Google.Resource.YouTube.Comments.Update

    -- ** YouTubeGuideCategoriesList
    , module Network.Google.Resource.YouTube.GuideCategories.List

    -- ** YouTubeI18nLanguagesList
    , module Network.Google.Resource.YouTube.I18nLanguages.List

    -- ** YouTubeI18nRegionsList
    , module Network.Google.Resource.YouTube.I18nRegions.List

    -- ** YouTubeLiveBroadcastsBind
    , module Network.Google.Resource.YouTube.LiveBroadcasts.Bind

    -- ** YouTubeLiveBroadcastsBind_direct
    , module Network.Google.Resource.YouTube.LiveBroadcasts.BindDirect

    -- ** YouTubeLiveBroadcastsControl
    , module Network.Google.Resource.YouTube.LiveBroadcasts.Control

    -- ** YouTubeLiveBroadcastsDelete
    , module Network.Google.Resource.YouTube.LiveBroadcasts.Delete

    -- ** YouTubeLiveBroadcastsInsert
    , module Network.Google.Resource.YouTube.LiveBroadcasts.Insert

    -- ** YouTubeLiveBroadcastsList
    , module Network.Google.Resource.YouTube.LiveBroadcasts.List

    -- ** YouTubeLiveBroadcastsTransition
    , module Network.Google.Resource.YouTube.LiveBroadcasts.Transition

    -- ** YouTubeLiveBroadcastsUpdate
    , module Network.Google.Resource.YouTube.LiveBroadcasts.Update

    -- ** YouTubeLiveStreamsDelete
    , module Network.Google.Resource.YouTube.LiveStreams.Delete

    -- ** YouTubeLiveStreamsInsert
    , module Network.Google.Resource.YouTube.LiveStreams.Insert

    -- ** YouTubeLiveStreamsList
    , module Network.Google.Resource.YouTube.LiveStreams.List

    -- ** YouTubeLiveStreamsUpdate
    , module Network.Google.Resource.YouTube.LiveStreams.Update

    -- ** YouTubePlayListItemsDelete
    , module Network.Google.Resource.YouTube.PlayListItems.Delete

    -- ** YouTubePlayListItemsInsert
    , module Network.Google.Resource.YouTube.PlayListItems.Insert

    -- ** YouTubePlayListItemsList
    , module Network.Google.Resource.YouTube.PlayListItems.List

    -- ** YouTubePlayListItemsUpdate
    , module Network.Google.Resource.YouTube.PlayListItems.Update

    -- ** YouTubePlayListsDelete
    , module Network.Google.Resource.YouTube.PlayLists.Delete

    -- ** YouTubePlayListsInsert
    , module Network.Google.Resource.YouTube.PlayLists.Insert

    -- ** YouTubePlayListsList
    , module Network.Google.Resource.YouTube.PlayLists.List

    -- ** YouTubePlayListsUpdate
    , module Network.Google.Resource.YouTube.PlayLists.Update

    -- ** YouTubeSearchList
    , module Network.Google.Resource.YouTube.Search.List

    -- ** YouTubeSubscriptionsDelete
    , module Network.Google.Resource.YouTube.Subscriptions.Delete

    -- ** YouTubeSubscriptionsInsert
    , module Network.Google.Resource.YouTube.Subscriptions.Insert

    -- ** YouTubeSubscriptionsList
    , module Network.Google.Resource.YouTube.Subscriptions.List

    -- ** YouTubeThumbnailsSet
    , module Network.Google.Resource.YouTube.Thumbnails.Set

    -- ** YouTubeVideoAbuseReportReasonsList
    , module Network.Google.Resource.YouTube.VideoAbuseReportReasons.List

    -- ** YouTubeVideoCategoriesList
    , module Network.Google.Resource.YouTube.VideoCategories.List

    -- ** YouTubeVideosDelete
    , module Network.Google.Resource.YouTube.Videos.Delete

    -- ** YouTubeVideosGetRating
    , module Network.Google.Resource.YouTube.Videos.GetRating

    -- ** YouTubeVideosInsert
    , module Network.Google.Resource.YouTube.Videos.Insert

    -- ** YouTubeVideosList
    , module Network.Google.Resource.YouTube.Videos.List

    -- ** YouTubeVideosRate
    , module Network.Google.Resource.YouTube.Videos.Rate

    -- ** YouTubeVideosReportAbuse
    , module Network.Google.Resource.YouTube.Videos.ReportAbuse

    -- ** YouTubeVideosUpdate
    , module Network.Google.Resource.YouTube.Videos.Update

    -- ** YouTubeWatermarksSet
    , module Network.Google.Resource.YouTube.Watermarks.Set

    -- ** YouTubeWatermarksUnset
    , module Network.Google.Resource.YouTube.Watermarks.Unset

    -- * Types

    -- ** Thumbnail
    , Thumbnail
    , thumbnail
    , tHeight
    , tURL
    , tWidth

    -- ** VideoDefinition
    , VideoDefinition (..)

    -- ** IngestionInfo
    , IngestionInfo
    , ingestionInfo
    , iiBackupIngestionAddress
    , iiIngestionAddress
    , iiStreamName

    -- ** Chart
    , Chart (..)

    -- ** FailureReason
    , FailureReason (..)

    -- ** Rotation
    , Rotation (..)

    -- ** PefilmRating
    , PefilmRating (..)

    -- ** SubscriptionSubscriberSnippet
    , SubscriptionSubscriberSnippet
    , subscriptionSubscriberSnippet
    , sssChannelId
    , sssThumbnails
    , sssTitle
    , sssDescription

    -- ** CccRating
    , CccRating (..)

    -- ** AnatelRating
    , AnatelRating (..)

    -- ** ChannelAuditDetails
    , ChannelAuditDetails
    , channelAuditDetails
    , cadContentIdClaimsGoodStanding
    , cadOverallGoodStanding
    , cadCopyrightStrikesGoodStanding
    , cadCommUnityGuidelinesGoodStanding

    -- ** ProcessingFailureReason
    , ProcessingFailureReason (..)

    -- ** Style
    , Style (..)

    -- ** ChannelSectionSnippet
    , ChannelSectionSnippet
    , channelSectionSnippet
    , cssStyle
    , cssChannelId
    , cssLocalized
    , cssTitle
    , cssType
    , cssPosition
    , cssDefaultLanguage

    -- ** InvideoPositionType
    , InvideoPositionType (..)

    -- ** YouTubeCommentsSetModerationStatusModerationStatus
    , YouTubeCommentsSetModerationStatusModerationStatus (..)

    -- ** PromotedItem
    , PromotedItem
    , promotedItem
    , piCustomMessage
    , piPromotedByContentOwner
    , piId
    , piTiming

    -- ** Rating
    , Rating (..)

    -- ** VideoDuration
    , VideoDuration (..)

    -- ** TrackKind
    , TrackKind (..)

    -- ** VideoStatusPrivacyStatus
    , VideoStatusPrivacyStatus (..)

    -- ** PlayListListResponse
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

    -- ** SearchListResponse
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

    -- ** TokenPagination
    , TokenPagination
    , tokenPagination

    -- ** CaptionSnippetFailureReason
    , CaptionSnippetFailureReason (..)

    -- ** Context
    , Context (..)

    -- ** ActivityContentDetailsRecommendation
    , ActivityContentDetailsRecommendation
    , activityContentDetailsRecommendation
    , acdrResourceId
    , acdrSeedResourceId
    , acdrReason

    -- ** VideoCaption
    , VideoCaption (..)

    -- ** ResourceId
    , ResourceId
    , resourceId
    , riKind
    , riChannelId
    , riVideoId
    , riPlayListId

    -- ** ProcessingWarningsItem
    , ProcessingWarningsItem (..)

    -- ** SearchResult
    , SearchResult
    , searchResult
    , srEtag
    , srSnippet
    , srKind
    , srId

    -- ** ChannelStatus
    , ChannelStatus
    , channelStatus
    , csIsLinked
    , csLongUploadsStatus
    , csPrivacyStatus

    -- ** LiveBroadcastStatusPrivacyStatus
    , LiveBroadcastStatusPrivacyStatus (..)

    -- ** LiveStreamSnippet
    , LiveStreamSnippet
    , liveStreamSnippet
    , lssPublishedAt
    , lssChannelId
    , lssIsDefaultStream
    , lssTitle
    , lssDescription

    -- ** PlayListStatus
    , PlayListStatus
    , playListStatus
    , plsPrivacyStatus

    -- ** MpaaRating
    , MpaaRating (..)

    -- ** VideoContentDetails
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

    -- ** ChannelListResponse
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

    -- ** CceRating
    , CceRating (..)

    -- ** VideoAbuseReportReasonListResponse
    , VideoAbuseReportReasonListResponse
    , videoAbuseReportReasonListResponse
    , varrlrEtag
    , varrlrKind
    , varrlrItems
    , varrlrVisitorId
    , varrlrEventId

    -- ** LiveBroadcastContentDetails
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

    -- ** MccaaRating
    , MccaaRating (..)

    -- ** ChfilmRating
    , ChfilmRating (..)

    -- ** ActivityContentDetailsFavorite
    , ActivityContentDetailsFavorite
    , activityContentDetailsFavorite
    , acdfResourceId

    -- ** VideoTopicDetails
    , VideoTopicDetails
    , videoTopicDetails
    , vtdTopicIds
    , vtdRelevantTopicIds

    -- ** VideoLicense
    , VideoLicense (..)

    -- ** PromotedItemIdType
    , PromotedItemIdType (..)

    -- ** LiveStream
    , LiveStream
    , liveStream
    , lsStatus
    , lsEtag
    , lsSnippet
    , lsKind
    , lsContentDetails
    , lsId
    , lsCdn

    -- ** ChannelSection
    , ChannelSection
    , channelSection
    , csEtag
    , csSnippet
    , csKind
    , csContentDetails
    , csTargeting
    , csId
    , csLocalizations

    -- ** LiveBroadcastTopicDetails
    , LiveBroadcastTopicDetails
    , liveBroadcastTopicDetails
    , lbtdTopics

    -- ** SearchResultSnippetLiveBroadcastContent
    , SearchResultSnippetLiveBroadcastContent (..)

    -- ** RelatedPlayLists
    , RelatedPlayLists
    , relatedPlayLists
    , rplFavorites
    , rplWatchHistory
    , rplWatchLater
    , rplUploads
    , rplLikes

    -- ** ImageSettings
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

    -- ** ActivityType
    , ActivityType (..)

    -- ** IcaaRating
    , IcaaRating (..)

    -- ** FcbmRating
    , FcbmRating (..)

    -- ** ActivityContentDetailsUpload
    , ActivityContentDetailsUpload
    , activityContentDetailsUpload
    , acduVideoId

    -- ** PlayListContentDetails
    , PlayListContentDetails
    , playListContentDetails
    , plcdItemCount

    -- ** ActivityContentDetailsSocial
    , ActivityContentDetailsSocial
    , activityContentDetailsSocial
    , acdsResourceId
    , acdsImageURL
    , acdsAuthor
    , acdsReferenceURL
    , acdsType

    -- ** ActivityContentDetailsSubscription
    , ActivityContentDetailsSubscription
    , activityContentDetailsSubscription
    , aResourceId

    -- ** ActivityContentDetailsComment
    , ActivityContentDetailsComment
    , activityContentDetailsComment
    , acdcResourceId

    -- ** ActivityContentDetailsLike
    , ActivityContentDetailsLike
    , activityContentDetailsLike
    , acdlResourceId

    -- ** BmukkRating
    , BmukkRating (..)

    -- ** ViewerRating
    , ViewerRating (..)

    -- ** VideoFileDetails
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

    -- ** Definition
    , Definition (..)

    -- ** MoctwRating
    , MoctwRating (..)

    -- ** LiveBroadcastStatus
    , LiveBroadcastStatus
    , liveBroadcastStatus
    , lbsLiveBroadcastPriority
    , lbsRecordingStatus
    , lbsLifeCycleStatus
    , lbsPrivacyStatus

    -- ** ThumbnailSetResponse
    , ThumbnailSetResponse
    , thumbnailSetResponse
    , tsrEtag
    , tsrKind
    , tsrItems
    , tsrVisitorId
    , tsrEventId

    -- ** ActivityContentDetailsPlayListItem
    , ActivityContentDetailsPlayListItem
    , activityContentDetailsPlayListItem
    , acdpliResourceId
    , acdpliPlayListId
    , acdpliPlayListItemId

    -- ** VideoStatus
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

    -- ** PageInfo
    , PageInfo
    , pageInfo
    , piResultsPerPage
    , piTotalResults

    -- ** ActivityContentDetailsChannelItem
    , ActivityContentDetailsChannelItem
    , activityContentDetailsChannelItem
    , acdciResourceId

    -- ** LiveBroadcastListResponse
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

    -- ** VideoProcessingDetails
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

    -- ** NfvcbRating
    , NfvcbRating (..)

    -- ** ChannelContentDetails
    , ChannelContentDetails
    , channelContentDetails
    , ccdRelatedPlayLists
    , ccdGooglePlusUserId

    -- ** ModerationStatus
    , ModerationStatus (..)

    -- ** LiveBroadcastTopicType
    , LiveBroadcastTopicType (..)

    -- ** ActivitySnippet
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

    -- ** VideoListResponse
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

    -- ** VideoSuggestionsTagSuggestion
    , VideoSuggestionsTagSuggestion
    , videoSuggestionsTagSuggestion
    , vstsTag
    , vstsCategoryRestricts

    -- ** AgcomRating
    , AgcomRating (..)

    -- ** StreamStatus
    , StreamStatus (..)

    -- ** CommentThreadSnippet
    , CommentThreadSnippet
    , commentThreadSnippet
    , ctsIsPublic
    , ctsChannelId
    , ctsCanReply
    , ctsVideoId
    , ctsTotalReplyCount
    , ctsTopLevelComment

    -- ** ChannelTopicDetails
    , ChannelTopicDetails
    , channelTopicDetails
    , ctdTopicIds

    -- ** VideoCategoryListResponse
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

    -- ** VideoMonetizationDetails
    , VideoMonetizationDetails
    , videoMonetizationDetails
    , vmdAccess

    -- ** CnaRating
    , CnaRating (..)

    -- ** MyRating
    , MyRating (..)

    -- ** EditorSuggestionsItem
    , EditorSuggestionsItem (..)

    -- ** CatvfrRating
    , CatvfrRating (..)

    -- ** CbfcRating
    , CbfcRating (..)

    -- ** LiveStreamConfigurationIssue
    , LiveStreamConfigurationIssue
    , liveStreamConfigurationIssue
    , lsciSeverity
    , lsciReason
    , lsciType
    , lsciDescription

    -- ** ChannelLocalizations
    , ChannelLocalizations
    , channelLocalizations

    -- ** VideoAbuseReportReason
    , VideoAbuseReportReason
    , videoAbuseReportReason
    , varrEtag
    , varrSnippet
    , varrKind
    , varrId

    -- ** Severity
    , Severity (..)

    -- ** ChannelSectionTargeting
    , ChannelSectionTargeting
    , channelSectionTargeting
    , cstRegions
    , cstCountries
    , cstLanguages

    -- ** KfcbRating
    , KfcbRating (..)

    -- ** ChannelSectionListResponse
    , ChannelSectionListResponse
    , channelSectionListResponse
    , cslrEtag
    , cslrKind
    , cslrItems
    , cslrVisitorId
    , cslrEventId

    -- ** SmsaRating
    , SmsaRating (..)

    -- ** LiveBroadcastPriority
    , LiveBroadcastPriority (..)

    -- ** PlayListSnippet
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

    -- ** Channel
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

    -- ** VideoGetRatingResponse
    , VideoGetRatingResponse
    , videoGetRatingResponse
    , vgrrEtag
    , vgrrKind
    , vgrrItems
    , vgrrVisitorId
    , vgrrEventId

    -- ** ChvrsRating
    , ChvrsRating (..)

    -- ** LiveStreamListResponse
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

    -- ** RejectionReason
    , RejectionReason (..)

    -- ** IncaaRating
    , IncaaRating (..)

    -- ** BroadcastStatus
    , BroadcastStatus (..)

    -- ** I18nRegion
    , I18nRegion
    , i18nRegion
    , irEtag
    , irSnippet
    , irKind
    , irId

    -- ** LiveStreamHealthStatusStatus
    , LiveStreamHealthStatusStatus (..)

    -- ** Caption
    , Caption (..)

    -- ** ActivityContentDetails
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

    -- ** ChannelStatistics
    , ChannelStatistics
    , channelStatistics
    , csCommentCount
    , csSubscriberCount
    , csVideoCount
    , csHiddenSubscriberCount
    , csViewCount

    -- ** LongUploadsStatus
    , LongUploadsStatus (..)

    -- ** ChannelId
    , ChannelId
    , channelId
    , ciValue

    -- ** VideoAbuseReportReasonSnippet
    , VideoAbuseReportReasonSnippet
    , videoAbuseReportReasonSnippet
    , varrsSecondaryReasons
    , varrsLabel

    -- ** ProcessingHintsItem
    , ProcessingHintsItem (..)

    -- ** VideoProcessingDetailsProcessingProgress
    , VideoProcessingDetailsProcessingProgress
    , videoProcessingDetailsProcessingProgress
    , vpdppTimeLeftMs
    , vpdppPartsTotal
    , vpdppPartsProcessed

    -- ** FileType
    , FileType (..)

    -- ** Caption
    , Caption
    , caption
    , capEtag
    , capSnippet
    , capKind
    , capId

    -- ** NfrcRating
    , NfrcRating (..)

    -- ** VideoContentDetailsRegionRestriction
    , VideoContentDetailsRegionRestriction
    , videoContentDetailsRegionRestriction
    , vcdrrAllowed
    , vcdrrBlocked

    -- ** ThumbnailDetails
    , ThumbnailDetails
    , thumbnailDetails
    , tdMedium
    , tdMaxres
    , tdDefault
    , tdStandard
    , tdHigh

    -- ** ChannelSnippet
    , ChannelSnippet
    , channelSnippet
    , csPublishedAt
    , csCountry
    , csThumbnails
    , csLocalized
    , csTitle
    , csDescription
    , csDefaultLanguage

    -- ** PlayListLocalizations
    , PlayListLocalizations
    , playListLocalizations

    -- ** YouTubeLiveBroadcastsListBroadcastStatus
    , YouTubeLiveBroadcastsListBroadcastStatus (..)

    -- ** CsaRating
    , CsaRating (..)

    -- ** MocRating
    , MocRating (..)

    -- ** CtaType
    , CtaType (..)

    -- ** MonitorStreamInfo
    , MonitorStreamInfo
    , monitorStreamInfo
    , msiBroadcastStreamDelayMs
    , msiEmbedHTML
    , msiEnableMonitorStream

    -- ** EirinRating
    , EirinRating (..)

    -- ** InvideoTiming
    , InvideoTiming
    , invideoTiming
    , itDurationMs
    , itOffsetMs
    , itType

    -- ** CornerPosition
    , CornerPosition (..)

    -- ** FskRating
    , FskRating (..)

    -- ** VideoCategory
    , VideoCategory
    , videoCategory
    , vcEtag
    , vcSnippet
    , vcKind
    , vcId

    -- ** VideoRatingRating
    , VideoRatingRating (..)

    -- ** EefilmRating
    , EefilmRating (..)

    -- ** RecordingStatus
    , RecordingStatus (..)

    -- ** LiveBroadcast
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

    -- ** ChannelSectionContentDetails
    , ChannelSectionContentDetails
    , channelSectionContentDetails
    , cscdChannels
    , cscdPlayLists

    -- ** VideoLocalizations
    , VideoLocalizations
    , videoLocalizations

    -- ** RcnofRating
    , RcnofRating (..)

    -- ** Video
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

    -- ** MekuRating
    , MekuRating (..)

    -- ** LiveStreamContentDetails
    , LiveStreamContentDetails
    , liveStreamContentDetails
    , lscdClosedCaptionsIngestionURL
    , lscdIsReusable

    -- ** VideoCategorySnippet
    , VideoCategorySnippet
    , videoCategorySnippet
    , vcsAssignable
    , vcsChannelId
    , vcsTitle

    -- ** VideoEmbeddable
    , VideoEmbeddable (..)

    -- ** IlfilmRating
    , IlfilmRating (..)

    -- ** IfcoRating
    , IfcoRating (..)

    -- ** CommentThreadListResponse
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

    -- ** PropertyValue
    , PropertyValue
    , propertyValue
    , pvProperty
    , pvValue

    -- ** I18nLanguage
    , I18nLanguage
    , i18nLanguage
    , ilEtag
    , ilSnippet
    , ilKind
    , ilId

    -- ** WatchSettings
    , WatchSettings
    , watchSettings
    , wsFeaturedPlayListId
    , wsBackgRoundColor
    , wsTextColor

    -- ** VideoSnippet
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

    -- ** AccessPolicy
    , AccessPolicy
    , accessPolicy
    , apException
    , apAllowed

    -- ** ActivityListResponse
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

    -- ** CdnSettings
    , CdnSettings
    , cdnSettings
    , csIngestionInfo
    , csFormat
    , csIngestionType

    -- ** EventType
    , EventType (..)

    -- ** Reason
    , Reason (..)

    -- ** NbcplRating
    , NbcplRating (..)

    -- ** VideoStatistics
    , VideoStatistics
    , videoStatistics
    , vsLikeCount
    , vsCommentCount
    , vsFavoriteCount
    , vsDislikeCount
    , vsViewCount

    -- ** GrfilmRating
    , GrfilmRating (..)

    -- ** RteRating
    , RteRating (..)

    -- ** LiveBroadcastSnippet
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

    -- ** LiveBroadcastStatistics
    , LiveBroadcastStatistics
    , liveBroadcastStatistics
    , lbsTotalChatCount
    , lbsConcurrentViewers

    -- ** GuideCategorySnippet
    , GuideCategorySnippet
    , guideCategorySnippet
    , gcsChannelId
    , gcsTitle

    -- ** I18nRegionListResponse
    , I18nRegionListResponse
    , i18nRegionListResponse
    , irlrEtag
    , irlrKind
    , irlrItems
    , irlrVisitorId
    , irlrEventId

    -- ** AcbRating
    , AcbRating (..)

    -- ** PlayListItemStatus
    , PlayListItemStatus
    , playListItemStatus
    , plisPrivacyStatus

    -- ** YouTubeSearchListOrder
    , YouTubeSearchListOrder (..)

    -- ** ChannelSectionSnippetType
    , ChannelSectionSnippetType (..)

    -- ** CaptionSnippetStatus
    , CaptionSnippetStatus (..)

    -- ** CatvRating
    , CatvRating (..)

    -- ** ProcessingStatus
    , ProcessingStatus (..)

    -- ** MdaRating
    , MdaRating (..)

    -- ** DjctqRating
    , DjctqRating (..)

    -- ** UploadStatus
    , UploadStatus (..)

    -- ** InvideoPosition
    , InvideoPosition
    , invideoPosition
    , ipCornerPosition
    , ipType

    -- ** VideoFileDetailsAudioStream
    , VideoFileDetailsAudioStream
    , videoFileDetailsAudioStream
    , vfdasBitrateBps
    , vfdasVendor
    , vfdasCodec
    , vfdasChannelCount

    -- ** ActivityContentDetailsBulletin
    , ActivityContentDetailsBulletin
    , activityContentDetailsBulletin
    , acdbResourceId

    -- ** SafeSearch
    , SafeSearch (..)

    -- ** VideoSyndicated
    , VideoSyndicated (..)

    -- ** VideoAbuseReport
    , VideoAbuseReport
    , videoAbuseReport
    , varSecondaryReasonId
    , varReasonId
    , varVideoId
    , varLanguage
    , varComments

    -- ** CaptionListResponse
    , CaptionListResponse
    , captionListResponse
    , clrlEtag
    , clrlKind
    , clrlItems
    , clrlVisitorId
    , clrlEventId

    -- ** LifeCycleStatus
    , LifeCycleStatus (..)

    -- ** PromotedItemId
    , PromotedItemId
    , promotedItemId
    , piiRecentlyUploadedBy
    , piiVideoId
    , piiWebsiteURL
    , piiType

    -- ** SearchResultSnippet
    , SearchResultSnippet
    , searchResultSnippet
    , srsPublishedAt
    , srsChannelTitle
    , srsChannelId
    , srsThumbnails
    , srsTitle
    , srsLiveBroadcastContent
    , srsDescription

    -- ** IngestionType
    , IngestionType (..)

    -- ** VideoConversionPings
    , VideoConversionPings
    , videoConversionPings
    , vcpPings

    -- ** SmaisRating
    , SmaisRating (..)

    -- ** CscfRating
    , CscfRating (..)

    -- ** TvpgRating
    , TvpgRating (..)

    -- ** RtcRating
    , RtcRating (..)

    -- ** VideoLocalization
    , VideoLocalization
    , videoLocalization
    , vlTitle
    , vlDescription

    -- ** PlayListItemListResponse
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

    -- ** LiveStreamHealthStatus
    , LiveStreamHealthStatus
    , liveStreamHealthStatus
    , lshsStatus
    , lshsConfigurationIssues
    , lshsLastUpdateTimeSeconds

    -- ** CommentListResponse
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

    -- ** VideoPlayer
    , VideoPlayer
    , videoPlayer
    , vpEmbedHTML

    -- ** YtRating
    , YtRating (..)

    -- ** LocalizedString
    , LocalizedString
    , localizedString
    , lsValue
    , lsLanguage

    -- ** BbfcRating
    , BbfcRating (..)

    -- ** SubscriptionListResponse
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

    -- ** PrivacyStatus
    , PrivacyStatus (..)

    -- ** GuideCategory
    , GuideCategory
    , guideCategory
    , gcEtag
    , gcSnippet
    , gcKind
    , gcId

    -- ** I18nLanguageListResponse
    , I18nLanguageListResponse
    , i18nLanguageListResponse
    , illrEtag
    , illrKind
    , illrItems
    , illrVisitorId
    , illrEventId

    -- ** PlayListItemStatusPrivacyStatus
    , PlayListItemStatusPrivacyStatus (..)

    -- ** InvideoBranding
    , InvideoBranding
    , invideoBranding
    , ibImageURL
    , ibTargetChannelId
    , ibTiming
    , ibImageBytes
    , ibPosition

    -- ** ChannelBrandingSettings
    , ChannelBrandingSettings
    , channelBrandingSettings
    , cbsImage
    , cbsHints
    , cbsChannel
    , cbsWatch

    -- ** KijkwijzerRating
    , KijkwijzerRating (..)

    -- ** DjctqRatingReasonsItem
    , DjctqRatingReasonsItem (..)

    -- ** InvideoPromotion
    , InvideoPromotion
    , invideoPromotion
    , ipUseSmartTiming
    , ipItems
    , ipDefaultTiming
    , ipPosition

    -- ** PlayListPlayer
    , PlayListPlayer
    , playListPlayer
    , plpEmbedHTML

    -- ** CommentThread
    , CommentThread
    , commentThread
    , ctEtag
    , ctSnippet
    , ctKind
    , ctReplies
    , ctId

    -- ** MtrcbRating
    , MtrcbRating (..)

    -- ** ActivityContentDetailsSocialType
    , ActivityContentDetailsSocialType (..)

    -- ** PlayListLocalization
    , PlayListLocalization
    , playListLocalization
    , pllTitle
    , pllDescription

    -- ** Activity
    , Activity
    , activity
    , aEtag
    , aSnippet
    , aKind
    , aContentDetails
    , aId

    -- ** ChannelBannerResource
    , ChannelBannerResource
    , channelBannerResource
    , cbrEtag
    , cbrKind
    , cbrURL

    -- ** ProcessingErrorsItem
    , ProcessingErrorsItem (..)

    -- ** LiveBroadcastTopicSnippet
    , LiveBroadcastTopicSnippet
    , liveBroadcastTopicSnippet
    , lbtsName
    , lbtsReleaseDate

    -- ** FcoRating
    , FcoRating (..)

    -- ** VideoGameRating
    , VideoGameRating (..)

    -- ** ChannelConversionPings
    , ChannelConversionPings
    , channelConversionPings
    , ccpPings

    -- ** PlayListItemContentDetails
    , PlayListItemContentDetails
    , playListItemContentDetails
    , plicdStartAt
    , plicdNote
    , plicdVideoId
    , plicdEndAt

    -- ** ChannelLocalization
    , ChannelLocalization
    , channelLocalization
    , clTitle
    , clDescription

    -- ** CicfRating
    , CicfRating (..)

    -- ** VideoAgeGating
    , VideoAgeGating
    , videoAgeGating
    , vagAlcoholContent
    , vagRestricted
    , vagVideoGameRating

    -- ** LocalizedProperty
    , LocalizedProperty
    , localizedProperty
    , lpDefault
    , lpLocalized
    , lpDefaultLanguage

    -- ** VideoFileDetailsVideoStream
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

    -- ** CzfilmRating
    , CzfilmRating (..)

    -- ** NbcRating
    , NbcRating (..)

    -- ** SubscriptionContentDetails
    , SubscriptionContentDetails
    , subscriptionContentDetails
    , scdActivityType
    , scdTotalItemCount
    , scdNewItemCount

    -- ** PlayListStatusPrivacyStatus
    , PlayListStatusPrivacyStatus (..)

    -- ** FmocRating
    , FmocRating (..)

    -- ** Localizations
    , Localizations
    , localizations

    -- ** LanguageTag
    , LanguageTag
    , languageTag
    , ltValue

    -- ** ActivitySnippetType
    , ActivitySnippetType (..)

    -- ** LiveBroadcastContent
    , LiveBroadcastContent (..)

    -- ** RussiaRating
    , RussiaRating (..)

    -- ** LiveBroadcastTopic
    , LiveBroadcastTopic
    , liveBroadcastTopic
    , lbtSnippet
    , lbtUnmatched
    , lbtType

    -- ** EgfilmRating
    , EgfilmRating (..)

    -- ** Tfmt
    , Tfmt (..)

    -- ** License
    , License (..)

    -- ** PlayListItem
    , PlayListItem
    , playListItem
    , pliStatus
    , pliEtag
    , pliSnippet
    , pliKind
    , pliContentDetails
    , pliId

    -- ** ChannelConversionPing
    , ChannelConversionPing
    , channelConversionPing
    , ccpContext
    , ccpConversionURL

    -- ** GuideCategoryListResponse
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

    -- ** ResorteviolenciaRating
    , ResorteviolenciaRating (..)

    -- ** Subscription
    , Subscription
    , subscription
    , subEtag
    , subSubscriberSnippet
    , subSnippet
    , subKind
    , subContentDetails
    , subId

    -- ** MibacRating
    , MibacRating (..)

    -- ** I18nRegionSnippet
    , I18nRegionSnippet
    , i18nRegionSnippet
    , irsName
    , irsGl

    -- ** CaptionSnippet
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

    -- ** LiveStreamConfigurationIssueType
    , LiveStreamConfigurationIssueType (..)

    -- ** ChannelType
    , ChannelType (..)

    -- ** MedietilsynetRating
    , MedietilsynetRating (..)

    -- ** MccypRating
    , MccypRating (..)

    -- ** Comment
    , Comment
    , comment
    , ccEtag
    , ccSnippet
    , ccKind
    , ccId

    -- ** NkclvRating
    , NkclvRating (..)

    -- ** FpbRating
    , FpbRating (..)

    -- ** CommentSnippetModerationStatus
    , CommentSnippetModerationStatus (..)

    -- ** LsfRating
    , LsfRating (..)

    -- ** PlayListItemSnippet
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

    -- ** VideoRating
    , VideoRating
    , videoRating
    , vRating
    , vVideoId

    -- ** VideoProjectDetails
    , VideoProjectDetails
    , videoProjectDetails
    , vpdTags

    -- ** Order
    , Order (..)

    -- ** VideoSuggestions
    , VideoSuggestions
    , videoSuggestions
    , vsProcessingErrors
    , vsProcessingHints
    , vsEditorSuggestions
    , vsProcessingWarnings
    , vsTagSuggestions

    -- ** PlayList
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

    -- ** ContentRating
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

    -- ** TextFormat
    , TextFormat (..)

    -- ** CommentSnippet
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

    -- ** BfvcRating
    , BfvcRating (..)

    -- ** VideoRecordingDetails
    , VideoRecordingDetails
    , videoRecordingDetails
    , vrdLocation
    , vrdLocationDescription
    , vrdRecordingDate

    -- ** VideoConversionPingContext
    , VideoConversionPingContext (..)

    -- ** ChannelSettings
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

    -- ** InvideoTimingType
    , InvideoTimingType (..)

    -- ** SubscriptionSnippet
    , SubscriptionSnippet
    , subscriptionSnippet
    , ssResourceId
    , ssPublishedAt
    , ssChannelTitle
    , ssChannelId
    , ssThumbnails
    , ssTitle
    , ssDescription

    -- ** LiveStreamStatus
    , LiveStreamStatus
    , liveStreamStatus
    , lssStreamStatus
    , lssHealthStatus

    -- ** VideoLiveStreamingDetails
    , VideoLiveStreamingDetails
    , videoLiveStreamingDetails
    , vlsdActualEndTime
    , vlsdConcurrentViewers
    , vlsdScheduledEndTime
    , vlsdScheduledStartTime
    , vlsdActualStartTime

    -- ** CommentThreadReplies
    , CommentThreadReplies
    , commentThreadReplies
    , ctrComments

    -- ** ChannelSectionLocalization
    , ChannelSectionLocalization
    , channelSectionLocalization
    , cslTitle

    -- ** YouTubeSubscriptionsListOrder
    , YouTubeSubscriptionsListOrder (..)

    -- ** CNCRating
    , CNCRating (..)

    -- ** AudioTrackType
    , AudioTrackType (..)

    -- ** VideoType
    , VideoType (..)

    -- ** ActivityContentDetailsPromotedItem
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

    -- ** GeoPoint
    , GeoPoint
    , geoPoint
    , gpLatitude
    , gpAltitude
    , gpLongitude

    -- ** SkfilmRating
    , SkfilmRating (..)

    -- ** VideoDimension
    , VideoDimension (..)

    -- ** I18nLanguageSnippet
    , I18nLanguageSnippet
    , i18nLanguageSnippet
    , ilsHl
    , ilsName

    -- ** VideoAbuseReportSecondaryReason
    , VideoAbuseReportSecondaryReason
    , videoAbuseReportSecondaryReason
    , varsrId
    , varsrLabel

    -- ** YouTubeCommentsListTextFormat
    , YouTubeCommentsListTextFormat (..)

    -- ** OflcRating
    , OflcRating (..)

    -- ** KmrbRating
    , KmrbRating (..)

    -- ** VideoConversionPing
    , VideoConversionPing
    , videoConversionPing
    , vcpContext
    , vcpConversionURL

    -- ** ChannelContentOwnerDetails
    , ChannelContentOwnerDetails
    , channelContentOwnerDetails
    , ccodTimeLinked
    , ccodContentOwner
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.YouTube.Activities.Insert
import           Network.Google.Resource.YouTube.Activities.List
import           Network.Google.Resource.YouTube.Captions.Delete
import           Network.Google.Resource.YouTube.Captions.Download
import           Network.Google.Resource.YouTube.Captions.Insert
import           Network.Google.Resource.YouTube.Captions.List
import           Network.Google.Resource.YouTube.Captions.Update
import           Network.Google.Resource.YouTube.ChannelBanners.Insert
import           Network.Google.Resource.YouTube.Channels.List
import           Network.Google.Resource.YouTube.Channels.Update
import           Network.Google.Resource.YouTube.ChannelSections.Delete
import           Network.Google.Resource.YouTube.ChannelSections.Insert
import           Network.Google.Resource.YouTube.ChannelSections.List
import           Network.Google.Resource.YouTube.ChannelSections.Update
import           Network.Google.Resource.YouTube.Comments.Delete
import           Network.Google.Resource.YouTube.Comments.Insert
import           Network.Google.Resource.YouTube.Comments.List
import           Network.Google.Resource.YouTube.Comments.MarkAsSpam
import           Network.Google.Resource.YouTube.Comments.SetModerationStatus
import           Network.Google.Resource.YouTube.Comments.Update
import           Network.Google.Resource.YouTube.CommentThreads.Insert
import           Network.Google.Resource.YouTube.CommentThreads.List
import           Network.Google.Resource.YouTube.CommentThreads.Update
import           Network.Google.Resource.YouTube.GuideCategories.List
import           Network.Google.Resource.YouTube.I18nLanguages.List
import           Network.Google.Resource.YouTube.I18nRegions.List
import           Network.Google.Resource.YouTube.LiveBroadcasts.Bind
import           Network.Google.Resource.YouTube.LiveBroadcasts.BindDirect
import           Network.Google.Resource.YouTube.LiveBroadcasts.Control
import           Network.Google.Resource.YouTube.LiveBroadcasts.Delete
import           Network.Google.Resource.YouTube.LiveBroadcasts.Insert
import           Network.Google.Resource.YouTube.LiveBroadcasts.List
import           Network.Google.Resource.YouTube.LiveBroadcasts.Transition
import           Network.Google.Resource.YouTube.LiveBroadcasts.Update
import           Network.Google.Resource.YouTube.LiveStreams.Delete
import           Network.Google.Resource.YouTube.LiveStreams.Insert
import           Network.Google.Resource.YouTube.LiveStreams.List
import           Network.Google.Resource.YouTube.LiveStreams.Update
import           Network.Google.Resource.YouTube.PlayListItems.Delete
import           Network.Google.Resource.YouTube.PlayListItems.Insert
import           Network.Google.Resource.YouTube.PlayListItems.List
import           Network.Google.Resource.YouTube.PlayListItems.Update
import           Network.Google.Resource.YouTube.PlayLists.Delete
import           Network.Google.Resource.YouTube.PlayLists.Insert
import           Network.Google.Resource.YouTube.PlayLists.List
import           Network.Google.Resource.YouTube.PlayLists.Update
import           Network.Google.Resource.YouTube.Search.List
import           Network.Google.Resource.YouTube.Subscriptions.Delete
import           Network.Google.Resource.YouTube.Subscriptions.Insert
import           Network.Google.Resource.YouTube.Subscriptions.List
import           Network.Google.Resource.YouTube.Thumbnails.Set
import           Network.Google.Resource.YouTube.VideoAbuseReportReasons.List
import           Network.Google.Resource.YouTube.VideoCategories.List
import           Network.Google.Resource.YouTube.Videos.Delete
import           Network.Google.Resource.YouTube.Videos.GetRating
import           Network.Google.Resource.YouTube.Videos.Insert
import           Network.Google.Resource.YouTube.Videos.List
import           Network.Google.Resource.YouTube.Videos.Rate
import           Network.Google.Resource.YouTube.Videos.ReportAbuse
import           Network.Google.Resource.YouTube.Videos.Update
import           Network.Google.Resource.YouTube.Watermarks.Set
import           Network.Google.Resource.YouTube.Watermarks.Unset
import           Network.Google.YouTube.Types

{- $resources
TODO
-}

type YouTubeAPI =
     GuideCategoriesListResource :<|>
       ChannelBannersInsertResource
       :<|> I18nLanguagesListResource
       :<|> VideosInsertResource
       :<|> VideosListResource
       :<|> VideosRateResource
       :<|> VideosReportAbuseResource
       :<|> VideosDeleteResource
       :<|> VideosUpdateResource
       :<|> VideosGetRatingResource
       :<|> LiveBroadcastsControlResource
       :<|> LiveBroadcastsTransitionResource
       :<|> LiveBroadcastsInsertResource
       :<|> LiveBroadcastsListResource
       :<|> LiveBroadcastsBindResource
       :<|> LiveBroadcastsBindDirectResource
       :<|> LiveBroadcastsDeleteResource
       :<|> LiveBroadcastsUpdateResource
       :<|> CaptionsInsertResource
       :<|> CaptionsListResource
       :<|> CaptionsDownloadResource
       :<|> CaptionsDeleteResource
       :<|> CaptionsUpdateResource
       :<|> I18nRegionsListResource
       :<|> VideoAbuseReportReasonsListResource
       :<|> ChannelsListResource
       :<|> ChannelsUpdateResource
       :<|> ActivitiesInsertResource
       :<|> ActivitiesListResource
       :<|> WatermarksSetResource
       :<|> WatermarksUnsetResource
       :<|> CommentThreadsInsertResource
       :<|> CommentThreadsListResource
       :<|> CommentThreadsUpdateResource
       :<|> ThumbnailsSetResource
       :<|> VideoCategoriesListResource
       :<|> PlayListsInsertResource
       :<|> PlayListsListResource
       :<|> PlayListsDeleteResource
       :<|> PlayListsUpdateResource
       :<|> CommentsInsertResource
       :<|> CommentsSetModerationStatusResource
       :<|> CommentsListResource
       :<|> CommentsMarkAsSpamResource
       :<|> CommentsDeleteResource
       :<|> CommentsUpdateResource
       :<|> PlayListItemsInsertResource
       :<|> PlayListItemsListResource
       :<|> PlayListItemsDeleteResource
       :<|> PlayListItemsUpdateResource
       :<|> SubscriptionsInsertResource
       :<|> SubscriptionsListResource
       :<|> SubscriptionsDeleteResource
       :<|> SearchListResource
       :<|> ChannelSectionsInsertResource
       :<|> ChannelSectionsListResource
       :<|> ChannelSectionsDeleteResource
       :<|> ChannelSectionsUpdateResource
       :<|> LiveStreamsInsertResource
       :<|> LiveStreamsListResource
       :<|> LiveStreamsDeleteResource
       :<|> LiveStreamsUpdateResource

youTubeAPI :: Proxy YouTubeAPI
youTubeAPI = Proxy
