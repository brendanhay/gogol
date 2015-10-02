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
-- -- | Programmatic access to YouTube features.
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
    , module Network.Google.Resource.YouTube.LiveBroadcasts.Bind_direct

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

    -- ** CaptionSnippetTrackKind
    , CaptionSnippetTrackKind (..)

    -- ** ContentRatingMpaaRating
    , ContentRatingMpaaRating (..)

    -- ** ContentRatingMccaaRating
    , ContentRatingMccaaRating (..)

    -- ** IngestionInfo
    , IngestionInfo
    , ingestionInfo
    , iiBackupIngestionAddress
    , iiIngestionAddress
    , iiStreamName

    -- ** ContentRatingChfilmRating
    , ContentRatingChfilmRating (..)

    -- ** SubscriptionSubscriberSnippet
    , SubscriptionSubscriberSnippet
    , subscriptionSubscriberSnippet
    , sssChannelId
    , sssThumbnails
    , sssTitle
    , sssDescription

    -- ** VideoSnippetLiveBroadcastContent
    , VideoSnippetLiveBroadcastContent (..)

    -- ** ChannelConversionPingContext
    , ChannelConversionPingContext (..)

    -- ** ChannelAuditDetails
    , ChannelAuditDetails
    , channelAuditDetails
    , cadContentIdClaimsGoodStanding
    , cadOverallGoodStanding
    , cadCopyrightStrikesGoodStanding
    , cadCommUnityGuidelinesGoodStanding

    -- ** ContentRatingCceRating
    , ContentRatingCceRating (..)

    -- ** LiveBroadcastStatusLifeCycleStatus
    , LiveBroadcastStatusLifeCycleStatus (..)

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

    -- ** VideoContentDetailsDefinition
    , VideoContentDetailsDefinition (..)

    -- ** ContentRatingEefilmRating
    , ContentRatingEefilmRating (..)

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

    -- ** YouTubeCommentThreadsListOrder
    , YouTubeCommentThreadsListOrder (..)

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

    -- ** ContentRatingFskRating
    , ContentRatingFskRating (..)

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

    -- ** YouTubeCaptionsDownloadTfmt
    , YouTubeCaptionsDownloadTfmt (..)

    -- ** ContentRatingRcnofRating
    , ContentRatingRcnofRating (..)

    -- ** CaptionSnippetFailureReason
    , CaptionSnippetFailureReason (..)

    -- ** ActivityContentDetailsRecommendation
    , ActivityContentDetailsRecommendation
    , activityContentDetailsRecommendation
    , acdrResourceId
    , acdrSeedResourceId
    , acdrReason

    -- ** ContentRatingMekuRating
    , ContentRatingMekuRating (..)

    -- ** ResourceId
    , ResourceId
    , resourceId
    , riKind
    , riChannelId
    , riVideoId
    , riPlayListId

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

    -- ** VideoProcessingDetailsProcessingFailureReason
    , VideoProcessingDetailsProcessingFailureReason (..)

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

    -- ** YouTubeSearchListChannelType
    , YouTubeSearchListChannelType (..)

    -- ** CaptionSnippetAudioTrackType
    , CaptionSnippetAudioTrackType (..)

    -- ** ChannelContentDetailsRelatedPlayLists
    , ChannelContentDetailsRelatedPlayLists
    , channelContentDetailsRelatedPlayLists
    , ccdrplFavorites
    , ccdrplWatchHistory
    , ccdrplWatchLater
    , ccdrplUploads
    , ccdrplLikes

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

    -- ** ContentRatingCccRating
    , ContentRatingCccRating (..)

    -- ** ActivityContentDetailsFavorite
    , ActivityContentDetailsFavorite
    , activityContentDetailsFavorite
    , acdfResourceId

    -- ** VideoTopicDetails
    , VideoTopicDetails
    , videoTopicDetails
    , vtdTopicIds
    , vtdRelevantTopicIds

    -- ** ContentRatingAnatelRating
    , ContentRatingAnatelRating (..)

    -- ** PromotedItemIdType
    , PromotedItemIdType (..)

    -- ** ContentRatingPefilmRating
    , ContentRatingPefilmRating (..)

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

    -- ** ChannelStatusPrivacyStatus
    , ChannelStatusPrivacyStatus (..)

    -- ** ContentRatingSmsaRating
    , ContentRatingSmsaRating (..)

    -- ** YouTubeSearchListEventType
    , YouTubeSearchListEventType (..)

    -- ** ContentRatingCnaRating
    , ContentRatingCnaRating (..)

    -- ** ContentRatingChvrsRating
    , ContentRatingChvrsRating (..)

    -- ** ContentRatingIncaaRating
    , ContentRatingIncaaRating (..)

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

    -- ** YouTubeSearchListVideoEmbeddable
    , YouTubeSearchListVideoEmbeddable (..)

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

    -- ** ContentRatingCatvfrRating
    , ContentRatingCatvfrRating (..)

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

    -- ** VideoSuggestionsProcessingHints
    , VideoSuggestionsProcessingHints (..)

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

    -- ** ContentRatingCbfcRating
    , ContentRatingCbfcRating (..)

    -- ** ContentRatingKfcbRating
    , ContentRatingKfcbRating (..)

    -- ** PageInfo
    , PageInfo
    , pageInfo
    , piResultsPerPage
    , piTotalResults

    -- ** LiveStreamConfigurationIssueSeverity
    , LiveStreamConfigurationIssueSeverity (..)

    -- ** ContentRatingLsfRating
    , ContentRatingLsfRating (..)

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

    -- ** ContentRatingBfvcRating
    , ContentRatingBfvcRating (..)

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

    -- ** ChannelContentDetails
    , ChannelContentDetails
    , channelContentDetails
    , ccdRelatedPlayLists
    , ccdGooglePlusUserId

    -- ** YouTubeSearchListVideoType
    , YouTubeSearchListVideoType (..)

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

    -- ** VideoAgeGatingVideoGameRating
    , VideoAgeGatingVideoGameRating (..)

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

    -- ** ContentRatingIcaaRating
    , ContentRatingIcaaRating (..)

    -- ** CommentSnippetViewerRating
    , CommentSnippetViewerRating (..)

    -- ** YouTubeLiveBroadcastsTransitionBroadcastStatus
    , YouTubeLiveBroadcastsTransitionBroadcastStatus (..)

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

    -- ** ChannelSectionTargeting
    , ChannelSectionTargeting
    , channelSectionTargeting
    , cstRegions
    , cstCountries
    , cstLanguages

    -- ** ContentRatingMoctwRating
    , ContentRatingMoctwRating (..)

    -- ** ContentRatingBmukkRating
    , ContentRatingBmukkRating (..)

    -- ** ChannelSectionListResponse
    , ChannelSectionListResponse
    , channelSectionListResponse
    , cslrEtag
    , cslrKind
    , cslrItems
    , cslrVisitorId
    , cslrEventId

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

    -- ** YouTubeSearchListVideoLicense
    , YouTubeSearchListVideoLicense (..)

    -- ** VideoGetRatingResponse
    , VideoGetRatingResponse
    , videoGetRatingResponse
    , vgrrEtag
    , vgrrKind
    , vgrrItems
    , vgrrVisitorId
    , vgrrEventId

    -- ** ContentRatingFcbmRating
    , ContentRatingFcbmRating (..)

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

    -- ** I18nRegion
    , I18nRegion
    , i18nRegion
    , irEtag
    , irSnippet
    , irKind
    , irId

    -- ** LiveStreamHealthStatusStatus
    , LiveStreamHealthStatusStatus (..)

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

    -- ** ChannelId
    , ChannelId
    , channelId
    , ciValue

    -- ** VideoAbuseReportReasonSnippet
    , VideoAbuseReportReasonSnippet
    , videoAbuseReportReasonSnippet
    , varrsSecondaryReasons
    , varrsLabel

    -- ** ContentRatingCzfilmRating
    , ContentRatingCzfilmRating (..)

    -- ** VideoProcessingDetailsProcessingProgress
    , VideoProcessingDetailsProcessingProgress
    , videoProcessingDetailsProcessingProgress
    , vpdppTimeLeftMs
    , vpdppPartsTotal
    , vpdppPartsProcessed

    -- ** Caption
    , Caption
    , caption
    , capEtag
    , capSnippet
    , capKind
    , capId

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

    -- ** LiveBroadcastStatusLiveBroadcastPriority
    , LiveBroadcastStatusLiveBroadcastPriority (..)

    -- ** ContentRatingNbcRating
    , ContentRatingNbcRating (..)

    -- ** PlayListLocalizations
    , PlayListLocalizations
    , playListLocalizations

    -- ** YouTubeLiveBroadcastsListBroadcastStatus
    , YouTubeLiveBroadcastsListBroadcastStatus (..)

    -- ** VideoStatusRejectionReason
    , VideoStatusRejectionReason (..)

    -- ** MonitorStreamInfo
    , MonitorStreamInfo
    , monitorStreamInfo
    , msiBroadcastStreamDelayMs
    , msiEmbedHTML
    , msiEnableMonitorStream

    -- ** ContentRatingRussiaRating
    , ContentRatingRussiaRating (..)

    -- ** YouTubeSearchListVideoDuration
    , YouTubeSearchListVideoDuration (..)

    -- ** YouTubeSearchListSafeSearch
    , YouTubeSearchListSafeSearch (..)

    -- ** ContentRatingCicfRating
    , ContentRatingCicfRating (..)

    -- ** ContentRatingFmocRating
    , ContentRatingFmocRating (..)

    -- ** InvideoTiming
    , InvideoTiming
    , invideoTiming
    , itDurationMs
    , itOffsetMs
    , itType

    -- ** VideoCategory
    , VideoCategory
    , videoCategory
    , vcEtag
    , vcSnippet
    , vcKind
    , vcId

    -- ** VideoRatingRating
    , VideoRatingRating (..)

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

    -- ** ChannelStatusLongUploadsStatus
    , ChannelStatusLongUploadsStatus (..)

    -- ** VideoLocalizations
    , VideoLocalizations
    , videoLocalizations

    -- ** InvideoPositionCornerPosition
    , InvideoPositionCornerPosition (..)

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

    -- ** LiveBroadcastStatusRecordingStatus
    , LiveBroadcastStatusRecordingStatus (..)

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

    -- ** ContentRatingCscfRating
    , ContentRatingCscfRating (..)

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

    -- ** ContentRatingTvpgRating
    , ContentRatingTvpgRating (..)

    -- ** VideoContentDetailsCaption
    , VideoContentDetailsCaption (..)

    -- ** WatchSettings
    , WatchSettings
    , watchSettings
    , wsFeaturedPlayListId
    , wsBackgRoundColor
    , wsTextColor

    -- ** ContentRatingSmaisRating
    , ContentRatingSmaisRating (..)

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

    -- ** VideoSuggestionsProcessingWarnings
    , VideoSuggestionsProcessingWarnings (..)

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

    -- ** VideoFileDetailsVideoStreamRotation
    , VideoFileDetailsVideoStreamRotation (..)

    -- ** ContentRatingYtRating
    , ContentRatingYtRating (..)

    -- ** VideoStatistics
    , VideoStatistics
    , videoStatistics
    , vsLikeCount
    , vsCommentCount
    , vsFavoriteCount
    , vsDislikeCount
    , vsViewCount

    -- ** ContentRatingRtcRating
    , ContentRatingRtcRating (..)

    -- ** ContentRatingBbfcRating
    , ContentRatingBbfcRating (..)

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

    -- ** PlayListItemStatus
    , PlayListItemStatus
    , playListItemStatus
    , plisPrivacyStatus

    -- ** YouTubeSearchListOrder
    , YouTubeSearchListOrder (..)

    -- ** VideoProcessingDetailsProcessingStatus
    , VideoProcessingDetailsProcessingStatus (..)

    -- ** ContentRatingCNCRating
    , ContentRatingCNCRating (..)

    -- ** ContentRatingSkfilmRating
    , ContentRatingSkfilmRating (..)

    -- ** ChannelSectionSnippetType
    , ChannelSectionSnippetType (..)

    -- ** CaptionSnippetStatus
    , CaptionSnippetStatus (..)

    -- ** ActivityContentDetailsPromotedItemCtaType
    , ActivityContentDetailsPromotedItemCtaType (..)

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

    -- ** VideoAbuseReport
    , VideoAbuseReport
    , videoAbuseReport
    , varSecondaryReasonId
    , varReasonId
    , varVideoId
    , varLanguage
    , varComments

    -- ** YouTubeCommentThreadsListTextFormat
    , YouTubeCommentThreadsListTextFormat (..)

    -- ** CaptionListResponse
    , CaptionListResponse
    , captionListResponse
    , clrlEtag
    , clrlKind
    , clrlItems
    , clrlVisitorId
    , clrlEventId

    -- ** ContentRatingKmrbRating
    , ContentRatingKmrbRating (..)

    -- ** ContentRatingOflcRating
    , ContentRatingOflcRating (..)

    -- ** YouTubeVideosRateRating
    , YouTubeVideosRateRating (..)

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

    -- ** ChannelSectionLocalizations
    , ChannelSectionLocalizations
    , channelSectionLocalizations

    -- ** ContentRatingNbcplRating
    , ContentRatingNbcplRating (..)

    -- ** VideoConversionPings
    , VideoConversionPings
    , videoConversionPings
    , vcpPings

    -- ** ContentRatingRteRating
    , ContentRatingRteRating (..)

    -- ** ContentRatingGrfilmRating
    , ContentRatingGrfilmRating (..)

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

    -- ** LocalizedString
    , LocalizedString
    , localizedString
    , lsValue
    , lsLanguage

    -- ** ContentRatingIlfilmRating
    , ContentRatingIlfilmRating (..)

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

    -- ** VideoStatusUploadStatus
    , VideoStatusUploadStatus (..)

    -- ** ContentRatingIfcoRating
    , ContentRatingIfcoRating (..)

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

    -- ** ContentRatingResorteviolenciaRating
    , ContentRatingResorteviolenciaRating (..)

    -- ** PlayListItemStatusPrivacyStatus
    , PlayListItemStatusPrivacyStatus (..)

    -- ** SubscriptionContentDetailsActivityType
    , SubscriptionContentDetailsActivityType (..)

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

    -- ** ContentRatingMibacRating
    , ContentRatingMibacRating (..)

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

    -- ** ContentRatingMedietilsynetRating
    , ContentRatingMedietilsynetRating (..)

    -- ** YouTubeSearchListVideoDefinition
    , YouTubeSearchListVideoDefinition (..)

    -- ** ContentRatingMccypRating
    , ContentRatingMccypRating (..)

    -- ** ActivityContentDetailsSocialType
    , ActivityContentDetailsSocialType (..)

    -- ** PlayListLocalization
    , PlayListLocalization
    , playListLocalization
    , pllTitle
    , pllDescription

    -- ** ContentRatingEgfilmRating
    , ContentRatingEgfilmRating (..)

    -- ** Activity
    , Activity
    , activity
    , aEtag
    , aSnippet
    , aKind
    , aContentDetails
    , aId

    -- ** ContentRatingNkclvRating
    , ContentRatingNkclvRating (..)

    -- ** ChannelBannerResource
    , ChannelBannerResource
    , channelBannerResource
    , cbrEtag
    , cbrKind
    , cbrURL

    -- ** LiveBroadcastTopicSnippet
    , LiveBroadcastTopicSnippet
    , liveBroadcastTopicSnippet
    , lbtsName
    , lbtsReleaseDate

    -- ** ContentRatingFpbRating
    , ContentRatingFpbRating (..)

    -- ** ContentRatingNfrcRating
    , ContentRatingNfrcRating (..)

    -- ** ContentRatingEirinRating
    , ContentRatingEirinRating (..)

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

    -- ** ChannelSectionSnippetStyle
    , ChannelSectionSnippetStyle (..)

    -- ** VideoAgeGating
    , VideoAgeGating
    , videoAgeGating
    , vagAlcoholContent
    , vagRestricted
    , vagVideoGameRating

    -- ** VideoSuggestionsEditorSuggestions
    , VideoSuggestionsEditorSuggestions (..)

    -- ** LocalizedProperty
    , LocalizedProperty
    , localizedProperty
    , lpDefault
    , lpLocalized
    , lpDefaultLanguage

    -- ** ContentRatingMocRating
    , ContentRatingMocRating (..)

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

    -- ** SubscriptionContentDetails
    , SubscriptionContentDetails
    , subscriptionContentDetails
    , scdActivityType
    , scdTotalItemCount
    , scdNewItemCount

    -- ** PlayListStatusPrivacyStatus
    , PlayListStatusPrivacyStatus (..)

    -- ** YouTubeSearchListVideoDimension
    , YouTubeSearchListVideoDimension (..)

    -- ** LanguageTag
    , LanguageTag
    , languageTag
    , ltValue

    -- ** ActivitySnippetType
    , ActivitySnippetType (..)

    -- ** LiveBroadcastTopic
    , LiveBroadcastTopic
    , liveBroadcastTopic
    , lbtSnippet
    , lbtUnmatched
    , lbtType

    -- ** ContentRatingCsaRating
    , ContentRatingCsaRating (..)

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

    -- ** Subscription
    , Subscription
    , subscription
    , subEtag
    , subSubscriberSnippet
    , subSnippet
    , subKind
    , subContentDetails
    , subId

    -- ** I18nRegionSnippet
    , I18nRegionSnippet
    , i18nRegionSnippet
    , irsName
    , irsGl

    -- ** VideoFileDetailsFileType
    , VideoFileDetailsFileType (..)

    -- ** ContentRatingKijkwijzerRating
    , ContentRatingKijkwijzerRating (..)

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

    -- ** ContentRatingMtrcbRating
    , ContentRatingMtrcbRating (..)

    -- ** ContentRatingFcoRating
    , ContentRatingFcoRating (..)

    -- ** ActivityContentDetailsRecommendationReason
    , ActivityContentDetailsRecommendationReason (..)

    -- ** Comment
    , Comment
    , comment
    , ccEtag
    , ccSnippet
    , ccKind
    , ccId

    -- ** CommentSnippetModerationStatus
    , CommentSnippetModerationStatus (..)

    -- ** YouTubeSearchListVideoCaption
    , YouTubeSearchListVideoCaption (..)

    -- ** VideoSuggestionsProcessingErrors
    , VideoSuggestionsProcessingErrors (..)

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

    -- ** YouTubeVideosListMyRating
    , YouTubeVideosListMyRating (..)

    -- ** YouTubeSearchListVideoSyndicated
    , YouTubeSearchListVideoSyndicated (..)

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

    -- ** CdnSettingsIngestionType
    , CdnSettingsIngestionType (..)

    -- ** ContentRatingDjctqRatingReasons
    , ContentRatingDjctqRatingReasons (..)

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

    -- ** ContentRatingNfvcbRating
    , ContentRatingNfvcbRating (..)

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

    -- ** VideoStatusLicense
    , VideoStatusLicense (..)

    -- ** ContentRatingAgcomRating
    , ContentRatingAgcomRating (..)

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

    -- ** LiveStreamStatusStreamStatus
    , LiveStreamStatusStreamStatus (..)

    -- ** ContentRatingCatvRating
    , ContentRatingCatvRating (..)

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

    -- ** YouTubeVideosListChart
    , YouTubeVideosListChart (..)

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

    -- ** VideoStatusFailureReason
    , VideoStatusFailureReason (..)

    -- ** YouTubeCommentsListTextFormat
    , YouTubeCommentsListTextFormat (..)

    -- ** YouTubeCommentThreadsListModerationStatus
    , YouTubeCommentThreadsListModerationStatus (..)

    -- ** ContentRatingDjctqRating
    , ContentRatingDjctqRating (..)

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

    -- ** ContentRatingMdaRating
    , ContentRatingMdaRating (..)

    -- ** ContentRatingAcbRating
    , ContentRatingAcbRating (..)
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
import           Network.Google.Resource.YouTube.LiveBroadcasts.Bind_direct
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
       :<|> LiveBroadcastsBind_directResource
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
