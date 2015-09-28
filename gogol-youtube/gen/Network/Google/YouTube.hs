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
    -- * REST Resources

    -- ** YouTube Data API
      YouTube
    , youTube
    , youTubeURL

    -- ** youtube.activities.insert
    , module Network.Google.API.YouTube.Activities.Insert

    -- ** youtube.activities.list
    , module Network.Google.API.YouTube.Activities.List

    -- ** youtube.captions.delete
    , module Network.Google.API.YouTube.Captions.Delete

    -- ** youtube.captions.download
    , module Network.Google.API.YouTube.Captions.Download

    -- ** youtube.captions.insert
    , module Network.Google.API.YouTube.Captions.Insert

    -- ** youtube.captions.list
    , module Network.Google.API.YouTube.Captions.List

    -- ** youtube.captions.update
    , module Network.Google.API.YouTube.Captions.Update

    -- ** youtube.channelBanners.insert
    , module Network.Google.API.YouTube.ChannelBanners.Insert

    -- ** youtube.channelSections.delete
    , module Network.Google.API.YouTube.ChannelSections.Delete

    -- ** youtube.channelSections.insert
    , module Network.Google.API.YouTube.ChannelSections.Insert

    -- ** youtube.channelSections.list
    , module Network.Google.API.YouTube.ChannelSections.List

    -- ** youtube.channelSections.update
    , module Network.Google.API.YouTube.ChannelSections.Update

    -- ** youtube.channels.list
    , module Network.Google.API.YouTube.Channels.List

    -- ** youtube.channels.update
    , module Network.Google.API.YouTube.Channels.Update

    -- ** youtube.commentThreads.insert
    , module Network.Google.API.YouTube.CommentThreads.Insert

    -- ** youtube.commentThreads.list
    , module Network.Google.API.YouTube.CommentThreads.List

    -- ** youtube.commentThreads.update
    , module Network.Google.API.YouTube.CommentThreads.Update

    -- ** youtube.comments.delete
    , module Network.Google.API.YouTube.Comments.Delete

    -- ** youtube.comments.insert
    , module Network.Google.API.YouTube.Comments.Insert

    -- ** youtube.comments.list
    , module Network.Google.API.YouTube.Comments.List

    -- ** youtube.comments.markAsSpam
    , module Network.Google.API.YouTube.Comments.MarkAsSpam

    -- ** youtube.comments.setModerationStatus
    , module Network.Google.API.YouTube.Comments.SetModerationStatus

    -- ** youtube.comments.update
    , module Network.Google.API.YouTube.Comments.Update

    -- ** youtube.guideCategories.list
    , module Network.Google.API.YouTube.GuideCategories.List

    -- ** youtube.i18nLanguages.list
    , module Network.Google.API.YouTube.I18nLanguages.List

    -- ** youtube.i18nRegions.list
    , module Network.Google.API.YouTube.I18nRegions.List

    -- ** youtube.liveBroadcasts.bind
    , module Network.Google.API.YouTube.LiveBroadcasts.Bind

    -- ** youtube.liveBroadcasts.bind_direct
    , module Network.Google.API.YouTube.LiveBroadcasts.Bind_direct

    -- ** youtube.liveBroadcasts.control
    , module Network.Google.API.YouTube.LiveBroadcasts.Control

    -- ** youtube.liveBroadcasts.delete
    , module Network.Google.API.YouTube.LiveBroadcasts.Delete

    -- ** youtube.liveBroadcasts.insert
    , module Network.Google.API.YouTube.LiveBroadcasts.Insert

    -- ** youtube.liveBroadcasts.list
    , module Network.Google.API.YouTube.LiveBroadcasts.List

    -- ** youtube.liveBroadcasts.transition
    , module Network.Google.API.YouTube.LiveBroadcasts.Transition

    -- ** youtube.liveBroadcasts.update
    , module Network.Google.API.YouTube.LiveBroadcasts.Update

    -- ** youtube.liveStreams.delete
    , module Network.Google.API.YouTube.LiveStreams.Delete

    -- ** youtube.liveStreams.insert
    , module Network.Google.API.YouTube.LiveStreams.Insert

    -- ** youtube.liveStreams.list
    , module Network.Google.API.YouTube.LiveStreams.List

    -- ** youtube.liveStreams.update
    , module Network.Google.API.YouTube.LiveStreams.Update

    -- ** youtube.playlistItems.delete
    , module Network.Google.API.YouTube.PlaylistItems.Delete

    -- ** youtube.playlistItems.insert
    , module Network.Google.API.YouTube.PlaylistItems.Insert

    -- ** youtube.playlistItems.list
    , module Network.Google.API.YouTube.PlaylistItems.List

    -- ** youtube.playlistItems.update
    , module Network.Google.API.YouTube.PlaylistItems.Update

    -- ** youtube.playlists.delete
    , module Network.Google.API.YouTube.Playlists.Delete

    -- ** youtube.playlists.insert
    , module Network.Google.API.YouTube.Playlists.Insert

    -- ** youtube.playlists.list
    , module Network.Google.API.YouTube.Playlists.List

    -- ** youtube.playlists.update
    , module Network.Google.API.YouTube.Playlists.Update

    -- ** youtube.search.list
    , module Network.Google.API.YouTube.Search.List

    -- ** youtube.subscriptions.delete
    , module Network.Google.API.YouTube.Subscriptions.Delete

    -- ** youtube.subscriptions.insert
    , module Network.Google.API.YouTube.Subscriptions.Insert

    -- ** youtube.subscriptions.list
    , module Network.Google.API.YouTube.Subscriptions.List

    -- ** youtube.thumbnails.set
    , module Network.Google.API.YouTube.Thumbnails.Set

    -- ** youtube.videoAbuseReportReasons.list
    , module Network.Google.API.YouTube.VideoAbuseReportReasons.List

    -- ** youtube.videoCategories.list
    , module Network.Google.API.YouTube.VideoCategories.List

    -- ** youtube.videos.delete
    , module Network.Google.API.YouTube.Videos.Delete

    -- ** youtube.videos.getRating
    , module Network.Google.API.YouTube.Videos.GetRating

    -- ** youtube.videos.insert
    , module Network.Google.API.YouTube.Videos.Insert

    -- ** youtube.videos.list
    , module Network.Google.API.YouTube.Videos.List

    -- ** youtube.videos.rate
    , module Network.Google.API.YouTube.Videos.Rate

    -- ** youtube.videos.reportAbuse
    , module Network.Google.API.YouTube.Videos.ReportAbuse

    -- ** youtube.videos.update
    , module Network.Google.API.YouTube.Videos.Update

    -- ** youtube.watermarks.set
    , module Network.Google.API.YouTube.Watermarks.Set

    -- ** youtube.watermarks.unset
    , module Network.Google.API.YouTube.Watermarks.Unset

    -- * Types

    -- ** ContentRatingCncRating
    , ContentRatingCncRating (..)

    -- ** VideoProcessingDetailsProcessingFailureReason
    , VideoProcessingDetailsProcessingFailureReason (..)

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

    -- ** VideoProcessingDetailsProcessingStatus
    , VideoProcessingDetailsProcessingStatus (..)

    -- ** InvideoPositionType
    , InvideoPositionType (..)

    -- ** VideoStatistics
    , VideoStatistics
    , videoStatistics
    , vsLikeCount
    , vsCommentCount
    , vsFavoriteCount
    , vsDislikeCount
    , vsViewCount

    -- ** ContentRatingEefilmRating
    , ContentRatingEefilmRating (..)

    -- ** PropertyValue
    , PropertyValue
    , propertyValue
    , pvProperty
    , pvValue

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

    -- ** I18nLanguage
    , I18nLanguage
    , i18nLanguage
    , ilEtag
    , ilSnippet
    , ilKind
    , ilId

    -- ** CdnSettings
    , CdnSettings
    , cdnSettings
    , csIngestionInfo
    , csFormat
    , csIngestionType

    -- ** VideoContentDetailsDefinition
    , VideoContentDetailsDefinition (..)

    -- ** WatchSettings
    , WatchSettings
    , watchSettings
    , wsFeaturedPlaylistId
    , wsBackgroundColor
    , wsTextColor

    -- ** AccessPolicy
    , AccessPolicy
    , accessPolicy
    , apException
    , apAllowed

    -- ** CaptionSnippetStatus
    , CaptionSnippetStatus (..)

    -- ** SearchList'VideoDefinition
    , SearchList'VideoDefinition (..)

    -- ** VideoCategorySnippet
    , VideoCategorySnippet
    , videoCategorySnippet
    , vcsAssignable
    , vcsChannelId
    , vcsTitle

    -- ** CaptionSnippetFailureReason
    , CaptionSnippetFailureReason (..)

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

    -- ** ContentRatingMekuRating
    , ContentRatingMekuRating (..)

    -- ** LiveBroadcastStatistics
    , LiveBroadcastStatistics
    , liveBroadcastStatistics
    , lbsTotalChatCount
    , lbsConcurrentViewers

    -- ** ContentRatingChfilmRating
    , ContentRatingChfilmRating (..)

    -- ** SearchList'VideoDuration
    , SearchList'VideoDuration (..)

    -- ** VideosList'MyRating
    , VideosList'MyRating (..)

    -- ** GuideCategorySnippet
    , GuideCategorySnippet
    , guideCategorySnippet
    , gcsChannelId
    , gcsTitle

    -- ** CaptionListResponse
    , CaptionListResponse
    , captionListResponse
    , clrEtag
    , clrKind
    , clrItems
    , clrVisitorId
    , clrEventId

    -- ** LiveBroadcastsList'BroadcastStatus
    , LiveBroadcastsList'BroadcastStatus (..)

    -- ** ContentRatingSmaisRating
    , ContentRatingSmaisRating (..)

    -- ** PlaylistItemStatus
    , PlaylistItemStatus
    , playlistItemStatus
    , pisPrivacyStatus

    -- ** VideoContentDetailsCaption
    , VideoContentDetailsCaption (..)

    -- ** SearchList'VideoCaption
    , SearchList'VideoCaption (..)

    -- ** CaptionSnippetTrackKind
    , CaptionSnippetTrackKind (..)

    -- ** ContentRatingMpaaRating
    , ContentRatingMpaaRating (..)

    -- ** LiveBroadcastStatusRecordingStatus
    , LiveBroadcastStatusRecordingStatus (..)

    -- ** VideoAbuseReport
    , VideoAbuseReport
    , videoAbuseReport
    , varSecondaryReasonId
    , varReasonId
    , varVideoId
    , varLanguage
    , varComments

    -- ** InvideoPosition
    , InvideoPosition
    , invideoPosition
    , ipCornerPosition
    , ipType

    -- ** I18nRegionListResponse
    , I18nRegionListResponse
    , i18nRegionListResponse
    , irlrEtag
    , irlrKind
    , irlrItems
    , irlrVisitorId
    , irlrEventId

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

    -- ** ContentRatingRtcRating
    , ContentRatingRtcRating (..)

    -- ** VideoTopicDetails
    , VideoTopicDetails
    , videoTopicDetails
    , vtdTopicIds
    , vtdRelevantTopicIds

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

    -- ** PlaylistStatus
    , PlaylistStatus
    , playlistStatus
    , psPrivacyStatus

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

    -- ** LiveBroadcastTopicDetails
    , LiveBroadcastTopicDetails
    , liveBroadcastTopicDetails
    , lbtdTopics

    -- ** VideoAbuseReportReasonListResponse
    , VideoAbuseReportReasonListResponse
    , videoAbuseReportReasonListResponse
    , varrlrEtag
    , varrlrKind
    , varrlrItems
    , varrlrVisitorId
    , varrlrEventId

    -- ** ChannelStatusLongUploadsStatus
    , ChannelStatusLongUploadsStatus (..)

    -- ** ContentRatingCatvRating
    , ContentRatingCatvRating (..)

    -- ** VideoLocalizations
    , VideoLocalizations
    , videoLocalizations

    -- ** VideoSuggestionsItemProcessingWarnings
    , VideoSuggestionsItemProcessingWarnings (..)

    -- ** ActivityContentDetailsFavorite
    , ActivityContentDetailsFavorite
    , activityContentDetailsFavorite
    , acdfResourceId

    -- ** Alt
    , Alt (..)

    -- ** ImageSettings
    , ImageSettings
    , imageSettings
    , isBannerMobileLowImageUrl
    , isBannerTabletExtraHdImageUrl
    , isSmallBrandedBannerImageImapScript
    , isBannerTvHighImageUrl
    , isBannerMobileHdImageUrl
    , isBannerTvMediumImageUrl
    , isBannerTvImageUrl
    , isBannerTabletImageUrl
    , isBannerMobileImageUrl
    , isTrackingImageUrl
    , isBannerMobileMediumHdImageUrl
    , isLargeBrandedBannerImageUrl
    , isBannerExternalUrl
    , isBackgroundImageUrl
    , isSmallBrandedBannerImageUrl
    , isBannerImageUrl
    , isWatchIconImageUrl
    , isBannerTvLowImageUrl
    , isBannerMobileExtraHdImageUrl
    , isLargeBrandedBannerImageImapScript
    , isBannerTabletLowImageUrl
    , isBannerTabletHdImageUrl

    -- ** ChannelListResponse
    , ChannelListResponse
    , channelListResponse
    , cEtag
    , cTokenPagination
    , cNextPageToken
    , cPageInfo
    , cKind
    , cItems
    , cVisitorId
    , cEventId
    , cPrevPageToken

    -- ** I18nLanguageListResponse
    , I18nLanguageListResponse
    , i18nLanguageListResponse
    , illrEtag
    , illrKind
    , illrItems
    , illrVisitorId
    , illrEventId

    -- ** Activity
    , Activity
    , activity
    , aEtag
    , aSnippet
    , aKind
    , aContentDetails
    , aId

    -- ** PlaylistPlayer
    , PlaylistPlayer
    , playlistPlayer
    , ppEmbedHtml

    -- ** InvideoTimingType
    , InvideoTimingType (..)

    -- ** ContentRatingNbcRating
    , ContentRatingNbcRating (..)

    -- ** InvideoPromotion
    , InvideoPromotion
    , invideoPromotion
    , ipUseSmartTiming
    , ipItems
    , ipDefaultTiming
    , ipPosition

    -- ** ChannelBannerResource
    , ChannelBannerResource
    , channelBannerResource
    , cbrEtag
    , cbrKind
    , cbrUrl

    -- ** CommentThread
    , CommentThread
    , commentThread
    , ctEtag
    , ctSnippet
    , ctKind
    , ctReplies
    , ctId

    -- ** VideoStatusRejectionReason
    , VideoStatusRejectionReason (..)

    -- ** ChannelBrandingSettings
    , ChannelBrandingSettings
    , channelBrandingSettings
    , cbsImage
    , cbsHints
    , cbsChannel
    , cbsWatch

    -- ** PlaylistLocalization
    , PlaylistLocalization
    , playlistLocalization
    , plTitle
    , plDescription

    -- ** LiveStreamHealthStatusStatus
    , LiveStreamHealthStatusStatus (..)

    -- ** InvideoBranding
    , InvideoBranding
    , invideoBranding
    , ibImageUrl
    , ibTargetChannelId
    , ibTiming
    , ibImageBytes
    , ibPosition

    -- ** LiveBroadcastStatusLiveBroadcastPriority
    , LiveBroadcastStatusLiveBroadcastPriority (..)

    -- ** LiveBroadcastTopicSnippet
    , LiveBroadcastTopicSnippet
    , liveBroadcastTopicSnippet
    , lbtsName
    , lbtsReleaseDate

    -- ** ContentRatingIcaaRating
    , ContentRatingIcaaRating (..)

    -- ** ChannelLocalization
    , ChannelLocalization
    , channelLocalization
    , clTitle
    , clDescription

    -- ** ContentRatingFcbmRating
    , ContentRatingFcbmRating (..)

    -- ** SubscriptionsList'Order
    , SubscriptionsList'Order (..)

    -- ** VideosList'Chart
    , VideosList'Chart (..)

    -- ** VideoFileDetailsFileType
    , VideoFileDetailsFileType (..)

    -- ** ContentRatingFcoRating
    , ContentRatingFcoRating (..)

    -- ** PlaylistItemContentDetails
    , PlaylistItemContentDetails
    , playlistItemContentDetails
    , picdStartAt
    , picdNote
    , picdVideoId
    , picdEndAt

    -- ** LocalizedProperty
    , LocalizedProperty
    , localizedProperty
    , lpDefault
    , lpLocalized
    , lpDefaultLanguage

    -- ** VideoSuggestionsItemProcessingErrors
    , VideoSuggestionsItemProcessingErrors (..)

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

    -- ** ChannelConversionPings
    , ChannelConversionPings
    , channelConversionPings
    , ccpPings

    -- ** LanguageTag
    , LanguageTag
    , languageTag
    , ltValue

    -- ** LiveStreamConfigurationIssueType
    , LiveStreamConfigurationIssueType (..)

    -- ** VideoAgeGating
    , VideoAgeGating
    , videoAgeGating
    , vagAlcoholContent
    , vagRestricted
    , vagVideoGameRating

    -- ** LiveBroadcastTopic
    , LiveBroadcastTopic
    , liveBroadcastTopic
    , lbtSnippet
    , lbtUnmatched
    , lbtType

    -- ** ActivityContentDetailsRecommendationReason
    , ActivityContentDetailsRecommendationReason (..)

    -- ** ContentRatingMtrcbRating
    , ContentRatingMtrcbRating (..)

    -- ** PlaylistItem
    , PlaylistItem
    , playlistItem
    , piStatus
    , piEtag
    , piSnippet
    , piKind
    , piContentDetails
    , piId

    -- ** ContentRatingEirinRating
    , ContentRatingEirinRating (..)

    -- ** Subscription
    , Subscription
    , subscription
    , sEtag
    , sSubscriberSnippet
    , sSnippet
    , sKind
    , sContentDetails
    , sId

    -- ** VideoSuggestionsItemProcessingHints
    , VideoSuggestionsItemProcessingHints (..)

    -- ** ChannelSectionSnippetStyle
    , ChannelSectionSnippetStyle (..)

    -- ** VideoAgeGatingVideoGameRating
    , VideoAgeGatingVideoGameRating (..)

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

    -- ** ContentRatingMocRating
    , ContentRatingMocRating (..)

    -- ** ChannelConversionPing
    , ChannelConversionPing
    , channelConversionPing
    , ccpContext
    , ccpConversionUrl

    -- ** ContentRatingCsaRating
    , ContentRatingCsaRating (..)

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

    -- ** ContentRatingBfvcRating
    , ContentRatingBfvcRating (..)

    -- ** Comment
    , Comment
    , comment
    , comEtag
    , comSnippet
    , comKind
    , comId

    -- ** I18nRegionSnippet
    , I18nRegionSnippet
    , i18nRegionSnippet
    , irsName
    , irsGl

    -- ** ThumbnailDetails
    , ThumbnailDetails
    , thumbnailDetails
    , tdMedium
    , tdMaxres
    , tdDefault
    , tdStandard
    , tdHigh

    -- ** ContentRatingKfcbRating
    , ContentRatingKfcbRating (..)

    -- ** ChannelStatistics
    , ChannelStatistics
    , channelStatistics
    , csCommentCount
    , csSubscriberCount
    , csVideoCount
    , csHiddenSubscriberCount
    , csViewCount

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

    -- ** SubscriptionContentDetailsActivityType
    , SubscriptionContentDetailsActivityType (..)

    -- ** I18nRegion
    , I18nRegion
    , i18nRegion
    , irEtag
    , irSnippet
    , irKind
    , irId

    -- ** ChannelId
    , ChannelId
    , channelId
    , ciValue

    -- ** ContentRatingCbfcRating
    , ContentRatingCbfcRating (..)

    -- ** ContentRatingMibacRating
    , ContentRatingMibacRating (..)

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

    -- ** ContentRatingCatvfrRating
    , ContentRatingCatvfrRating (..)

    -- ** ContentRatingMedietilsynetRating
    , ContentRatingMedietilsynetRating (..)

    -- ** SearchList'Order
    , SearchList'Order (..)

    -- ** MonitorStreamInfo
    , MonitorStreamInfo
    , monitorStreamInfo
    , msiBroadcastStreamDelayMs
    , msiEmbedHtml
    , msiEnableMonitorStream

    -- ** VideoAbuseReportReasonSnippet
    , VideoAbuseReportReasonSnippet
    , videoAbuseReportReasonSnippet
    , varrsSecondaryReasons
    , varrsLabel

    -- ** ContentRatingMccypRating
    , ContentRatingMccypRating (..)

    -- ** ContentRatingFpbRating
    , ContentRatingFpbRating (..)

    -- ** ContentRatingSmsaRating
    , ContentRatingSmsaRating (..)

    -- ** InvideoTiming
    , InvideoTiming
    , invideoTiming
    , itDurationMs
    , itOffsetMs
    , itType

    -- ** ActivityContentDetailsSocialType
    , ActivityContentDetailsSocialType (..)

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
    , acdPlaylistItem
    , acdLike
    , acdRecommendation

    -- ** CommentsSetModerationStatus'ModerationStatus
    , CommentsSetModerationStatus'ModerationStatus (..)

    -- ** VideoProcessingDetailsProcessingProgress
    , VideoProcessingDetailsProcessingProgress
    , videoProcessingDetailsProcessingProgress
    , vpdppTimeLeftMs
    , vpdppPartsTotal
    , vpdppPartsProcessed

    -- ** ContentRatingNkclvRating
    , ContentRatingNkclvRating (..)

    -- ** VideoConversionPing
    , VideoConversionPing
    , videoConversionPing
    , vcpContext
    , vcpConversionUrl

    -- ** ChannelContentDetailsRelatedPlaylists
    , ChannelContentDetailsRelatedPlaylists
    , channelContentDetailsRelatedPlaylists
    , ccdrpFavorites
    , ccdrpWatchHistory
    , ccdrpWatchLater
    , ccdrpUploads
    , ccdrpLikes

    -- ** CommentThreadReplies
    , CommentThreadReplies
    , commentThreadReplies
    , ctrComments

    -- ** ContentRatingAnatelRating
    , ContentRatingAnatelRating (..)

    -- ** ContentRatingNbcplRating
    , ContentRatingNbcplRating (..)

    -- ** ActivityContentDetailsPromotedItem
    , ActivityContentDetailsPromotedItem
    , activityContentDetailsPromotedItem
    , acdpiDestinationUrl
    , acdpiClickTrackingUrl
    , acdpiForecastingUrl
    , acdpiDescriptionText
    , acdpiCtaType
    , acdpiVideoId
    , acdpiAdTag
    , acdpiCreativeViewUrl
    , acdpiImpressionUrl
    , acdpiCustomCtaButtonText

    -- ** VideoLiveStreamingDetails
    , VideoLiveStreamingDetails
    , videoLiveStreamingDetails
    , vlsdActualEndTime
    , vlsdConcurrentViewers
    , vlsdScheduledEndTime
    , vlsdScheduledStartTime
    , vlsdActualStartTime

    -- ** SearchResultSnippetLiveBroadcastContent
    , SearchResultSnippetLiveBroadcastContent (..)

    -- ** ContentRatingPefilmRating
    , ContentRatingPefilmRating (..)

    -- ** ContentRatingRteRating
    , ContentRatingRteRating (..)

    -- ** ChannelSectionLocalization
    , ChannelSectionLocalization
    , channelSectionLocalization
    , cslTitle

    -- ** GeoPoint
    , GeoPoint
    , geoPoint
    , gpLatitude
    , gpAltitude
    , gpLongitude

    -- ** ChannelContentOwnerDetails
    , ChannelContentOwnerDetails
    , channelContentOwnerDetails
    , ccodTimeLinked
    , ccodContentOwner

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

    -- ** ContentRatingFskRating
    , ContentRatingFskRating (..)

    -- ** LiveBroadcastStatusPrivacyStatus
    , LiveBroadcastStatusPrivacyStatus (..)

    -- ** ActivityContentDetailsPromotedItemCtaType
    , ActivityContentDetailsPromotedItemCtaType (..)

    -- ** SearchList'VideoEmbeddable
    , SearchList'VideoEmbeddable (..)

    -- ** ContentRatingOflcRating
    , ContentRatingOflcRating (..)

    -- ** VideoStatusPrivacyStatus
    , VideoStatusPrivacyStatus (..)

    -- ** ChannelSectionSnippetType
    , ChannelSectionSnippetType (..)

    -- ** ChannelAuditDetails
    , ChannelAuditDetails
    , channelAuditDetails
    , cadContentIdClaimsGoodStanding
    , cadOverallGoodStanding
    , cadCopyrightStrikesGoodStanding
    , cadCommunityGuidelinesGoodStanding

    -- ** SubscriptionSubscriberSnippet
    , SubscriptionSubscriberSnippet
    , subscriptionSubscriberSnippet
    , sssChannelId
    , sssThumbnails
    , sssTitle
    , sssDescription

    -- ** IngestionInfo
    , IngestionInfo
    , ingestionInfo
    , iiBackupIngestionAddress
    , iiIngestionAddress
    , iiStreamName

    -- ** Thumbnail
    , Thumbnail
    , thumbnail
    , tHeight
    , tUrl
    , tWidth

    -- ** SearchList'EventType
    , SearchList'EventType (..)

    -- ** ContentRatingSkfilmRating
    , ContentRatingSkfilmRating (..)

    -- ** ContentRatingKmrbRating
    , ContentRatingKmrbRating (..)

    -- ** LiveBroadcastStatusLifeCycleStatus
    , LiveBroadcastStatusLifeCycleStatus (..)

    -- ** ContentRatingRcnofRating
    , ContentRatingRcnofRating (..)

    -- ** TokenPagination
    , TokenPagination
    , tokenPagination

    -- ** VideoFileDetailsVideoStreamRotation
    , VideoFileDetailsVideoStreamRotation (..)

    -- ** ContentRatingCceRating
    , ContentRatingCceRating (..)

    -- ** PlaylistListResponse
    , PlaylistListResponse
    , playlistListResponse
    , plrEtag
    , plrTokenPagination
    , plrNextPageToken
    , plrPageInfo
    , plrKind
    , plrItems
    , plrVisitorId
    , plrEventId
    , plrPrevPageToken

    -- ** ContentRatingCscfRating
    , ContentRatingCscfRating (..)

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

    -- ** ContentRatingBbfcRating
    , ContentRatingBbfcRating (..)

    -- ** SearchList'VideoSyndicated
    , SearchList'VideoSyndicated (..)

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

    -- ** ChannelStatus
    , ChannelStatus
    , channelStatus
    , csIsLinked
    , csLongUploadsStatus
    , csPrivacyStatus

    -- ** LiveStreamSnippet
    , LiveStreamSnippet
    , liveStreamSnippet
    , lssPublishedAt
    , lssChannelId
    , lssIsDefaultStream
    , lssTitle
    , lssDescription

    -- ** PromotedItem
    , PromotedItem
    , promotedItem
    , pCustomMessage
    , pPromotedByContentOwner
    , pId
    , pTiming

    -- ** ResourceId
    , ResourceId
    , resourceId
    , riKind
    , riChannelId
    , riVideoId
    , riPlaylistId

    -- ** ContentRatingTvpgRating
    , ContentRatingTvpgRating (..)

    -- ** SearchList'SafeSearch
    , SearchList'SafeSearch (..)

    -- ** ActivityContentDetailsRecommendation
    , ActivityContentDetailsRecommendation
    , activityContentDetailsRecommendation
    , acdrResourceId
    , acdrSeedResourceId
    , acdrReason

    -- ** SearchResult
    , SearchResult
    , searchResult
    , srEtag
    , srSnippet
    , srKind
    , srId

    -- ** ContentRatingYtRating
    , ContentRatingYtRating (..)

    -- ** ContentRatingMccaaRating
    , ContentRatingMccaaRating (..)

    -- ** ChannelConversionPingContext
    , ChannelConversionPingContext (..)

    -- ** VideoSnippetLiveBroadcastContent
    , VideoSnippetLiveBroadcastContent (..)

    -- ** LiveBroadcastsTransition'BroadcastStatus
    , LiveBroadcastsTransition'BroadcastStatus (..)

    -- ** InvideoPositionCornerPosition
    , InvideoPositionCornerPosition (..)

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

    -- ** VideoConversionPings
    , VideoConversionPings
    , videoConversionPings
    , vcpPings

    -- ** ContentRatingMdaRating
    , ContentRatingMdaRating (..)

    -- ** PromotedItemId
    , PromotedItemId
    , promotedItemId
    , piiRecentlyUploadedBy
    , piiVideoId
    , piiWebsiteUrl
    , piiType

    -- ** GuideCategory
    , GuideCategory
    , guideCategory
    , gcEtag
    , gcSnippet
    , gcKind
    , gcId

    -- ** VideoRatingRating
    , VideoRatingRating (..)

    -- ** SearchList'VideoLicense
    , SearchList'VideoLicense (..)

    -- ** LiveStreamHealthStatus
    , LiveStreamHealthStatus
    , liveStreamHealthStatus
    , lshsStatus
    , lshsConfigurationIssues
    , lshsLastUpdateTimeSeconds

    -- ** CommentListResponse
    , CommentListResponse
    , commentListResponse
    , clrlEtag
    , clrlTokenPagination
    , clrlNextPageToken
    , clrlPageInfo
    , clrlKind
    , clrlItems
    , clrlVisitorId
    , clrlEventId

    -- ** VideoStatusFailureReason
    , VideoStatusFailureReason (..)

    -- ** ContentRatingDjctqRating
    , ContentRatingDjctqRating (..)

    -- ** PlaylistItemListResponse
    , PlaylistItemListResponse
    , playlistItemListResponse
    , pilrEtag
    , pilrTokenPagination
    , pilrNextPageToken
    , pilrPageInfo
    , pilrKind
    , pilrItems
    , pilrVisitorId
    , pilrEventId
    , pilrPrevPageToken

    -- ** SubscriptionListResponse
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

    -- ** LocalizedString
    , LocalizedString
    , localizedString
    , lsValue
    , lsLanguage

    -- ** VideoLocalization
    , VideoLocalization
    , videoLocalization
    , vlTitle
    , vlDescription

    -- ** VideoPlayer
    , VideoPlayer
    , videoPlayer
    , vpEmbedHtml

    -- ** ContentRatingAcbRating
    , ContentRatingAcbRating (..)

    -- ** LiveStreamStatusStreamStatus
    , LiveStreamStatusStreamStatus (..)

    -- ** ActivityContentDetailsPlaylistItem
    , ActivityContentDetailsPlaylistItem
    , activityContentDetailsPlaylistItem
    , acdpiResourceId
    , acdpiPlaylistId
    , acdpiPlaylistItemId

    -- ** PlaylistLocalizations
    , PlaylistLocalizations
    , playlistLocalizations

    -- ** ContentRatingCicfRating
    , ContentRatingCicfRating (..)

    -- ** CdnSettingsIngestionType
    , CdnSettingsIngestionType (..)

    -- ** PlaylistContentDetails
    , PlaylistContentDetails
    , playlistContentDetails
    , pcdItemCount

    -- ** CommentSnippetModerationStatus
    , CommentSnippetModerationStatus (..)

    -- ** ThumbnailSetResponse
    , ThumbnailSetResponse
    , thumbnailSetResponse
    , tsrEtag
    , tsrKind
    , tsrItems
    , tsrVisitorId
    , tsrEventId

    -- ** ActivityContentDetailsComment
    , ActivityContentDetailsComment
    , activityContentDetailsComment
    , acdcResourceId

    -- ** ContentRatingNfvcbRating
    , ContentRatingNfvcbRating (..)

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

    -- ** ContentRatingFmocRating
    , ContentRatingFmocRating (..)

    -- ** ActivityContentDetailsSocial
    , ActivityContentDetailsSocial
    , activityContentDetailsSocial
    , acdsResourceId
    , acdsImageUrl
    , acdsAuthor
    , acdsReferenceUrl
    , acdsType

    -- ** ContentRatingRussiaRating
    , ContentRatingRussiaRating (..)

    -- ** ActivityContentDetailsSubscription
    , ActivityContentDetailsSubscription
    , activityContentDetailsSubscription
    , aResourceId

    -- ** ActivityContentDetailsUpload
    , ActivityContentDetailsUpload
    , activityContentDetailsUpload
    , acduVideoId

    -- ** ActivityContentDetailsLike
    , ActivityContentDetailsLike
    , activityContentDetailsLike
    , acdlResourceId

    -- ** PageInfo
    , PageInfo
    , pageInfo
    , piResultsPerPage
    , piTotalResults

    -- ** ContentRatingCzfilmRating
    , ContentRatingCzfilmRating (..)

    -- ** VideoConversionPingContext
    , VideoConversionPingContext (..)

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

    -- ** ContentRatingAgcomRating
    , ContentRatingAgcomRating (..)

    -- ** VideoStatusLicense
    , VideoStatusLicense (..)

    -- ** LiveBroadcastStatus
    , LiveBroadcastStatus
    , liveBroadcastStatus
    , lbsLiveBroadcastPriority
    , lbsRecordingStatus
    , lbsLifeCycleStatus
    , lbsPrivacyStatus

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

    -- ** VideoMonetizationDetails
    , VideoMonetizationDetails
    , videoMonetizationDetails
    , vmdAccess

    -- ** CommentThreadsList'ModerationStatus
    , CommentThreadsList'ModerationStatus (..)

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

    -- ** ContentRatingBmukkRating
    , ContentRatingBmukkRating (..)

    -- ** CommentThreadSnippet
    , CommentThreadSnippet
    , commentThreadSnippet
    , ctsIsPublic
    , ctsChannelId
    , ctsCanReply
    , ctsVideoId
    , ctsTotalReplyCount
    , ctsTopLevelComment

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

    -- ** ChannelContentDetails
    , ChannelContentDetails
    , channelContentDetails
    , ccdRelatedPlaylists
    , ccdGooglePlusUserId

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

    -- ** ActivityContentDetailsChannelItem
    , ActivityContentDetailsChannelItem
    , activityContentDetailsChannelItem
    , acdciResourceId

    -- ** VideoSuggestionsTagSuggestion
    , VideoSuggestionsTagSuggestion
    , videoSuggestionsTagSuggestion
    , vstsTag
    , vstsCategoryRestricts

    -- ** ContentRatingMoctwRating
    , ContentRatingMoctwRating (..)

    -- ** ContentRatingItemDjctqRatingReasons
    , ContentRatingItemDjctqRatingReasons (..)

    -- ** ChannelTopicDetails
    , ChannelTopicDetails
    , channelTopicDetails
    , ctdTopicIds

    -- ** ChannelLocalizations
    , ChannelLocalizations
    , channelLocalizations

    -- ** ContentRatingKijkwijzerRating
    , ContentRatingKijkwijzerRating (..)

    -- ** CommentsList'TextFormat
    , CommentsList'TextFormat (..)

    -- ** CommentSnippetViewerRating
    , CommentSnippetViewerRating (..)

    -- ** ContentRatingLsfRating
    , ContentRatingLsfRating (..)

    -- ** VideoAbuseReportReason
    , VideoAbuseReportReason
    , videoAbuseReportReason
    , varrEtag
    , varrSnippet
    , varrKind
    , varrId

    -- ** ContentRatingNfrcRating
    , ContentRatingNfrcRating (..)

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

    -- ** ChannelSectionListResponse
    , ChannelSectionListResponse
    , channelSectionListResponse
    , cslrEtag
    , cslrKind
    , cslrItems
    , cslrVisitorId
    , cslrEventId

    -- ** Channel
    , Channel
    , channel
    , ccStatus
    , ccEtag
    , ccAuditDetails
    , ccContentOwnerDetails
    , ccSnippet
    , ccKind
    , ccTopicDetails
    , ccContentDetails
    , ccConversionPings
    , ccBrandingSettings
    , ccId
    , ccInvideoPromotion
    , ccStatistics
    , ccLocalizations

    -- ** LiveStreamConfigurationIssueSeverity
    , LiveStreamConfigurationIssueSeverity (..)

    -- ** VideosRate'Rating
    , VideosRate'Rating (..)

    -- ** VideoGetRatingResponse
    , VideoGetRatingResponse
    , videoGetRatingResponse
    , vgrrEtag
    , vgrrKind
    , vgrrItems
    , vgrrVisitorId
    , vgrrEventId

    -- ** ChannelSectionTargeting
    , ChannelSectionTargeting
    , channelSectionTargeting
    , cstRegions
    , cstCountries
    , cstLanguages

    -- ** ActivitySnippetType
    , ActivitySnippetType (..)

    -- ** PlaylistStatusPrivacyStatus
    , PlaylistStatusPrivacyStatus (..)

    -- ** LiveBroadcastTopicType
    , LiveBroadcastTopicType (..)

    -- ** SearchList'ChannelType
    , SearchList'ChannelType (..)

    -- ** LiveStreamConfigurationIssue
    , LiveStreamConfigurationIssue
    , liveStreamConfigurationIssue
    , lsciSeverity
    , lsciReason
    , lsciType
    , lsciDescription

    -- ** PlaylistSnippet
    , PlaylistSnippet
    , playlistSnippet
    , psPublishedAt
    , psChannelTitle
    , psChannelId
    , psThumbnails
    , psLocalized
    , psTitle
    , psDescription
    , psTags
    , psDefaultLanguage

    -- ** PlaylistItemSnippet
    , PlaylistItemSnippet
    , playlistItemSnippet
    , pisResourceId
    , pisPublishedAt
    , pisChannelTitle
    , pisChannelId
    , pisThumbnails
    , pisTitle
    , pisPlaylistId
    , pisDescription
    , pisPosition

    -- ** VideoProjectDetails
    , VideoProjectDetails
    , videoProjectDetails
    , vpdTags

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
    , cFeaturedChannelsUrls
    , cShowBrowseView
    , cTitle
    , cDescription
    , cDefaultLanguage

    -- ** VideoSuggestions
    , VideoSuggestions
    , videoSuggestions
    , vsProcessingErrors
    , vsProcessingHints
    , vsEditorSuggestions
    , vsProcessingWarnings
    , vsTagSuggestions

    -- ** VideoRating
    , VideoRating
    , videoRating
    , vRating
    , vVideoId

    -- ** ContentRatingChvrsRating
    , ContentRatingChvrsRating (..)

    -- ** CommentThreadsList'TextFormat
    , CommentThreadsList'TextFormat (..)

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
    , crCncRating
    , crSkfilmRating
    , crOflcRating
    , crKmrbRating

    -- ** VideoSuggestionsItemEditorSuggestions
    , VideoSuggestionsItemEditorSuggestions (..)

    -- ** CaptionsDownload'Tfmt
    , CaptionsDownload'Tfmt (..)

    -- ** ContentRatingResorteviolenciaRating
    , ContentRatingResorteviolenciaRating (..)

    -- ** Playlist
    , Playlist
    , playlist
    , plaStatus
    , plaEtag
    , plaSnippet
    , plaKind
    , plaContentDetails
    , plaId
    , plaLocalizations
    , plaPlayer

    -- ** LiveStreamStatus
    , LiveStreamStatus
    , liveStreamStatus
    , lssStreamStatus
    , lssHealthStatus

    -- ** CommentSnippet
    , CommentSnippet
    , commentSnippet
    , csniViewerRating
    , csniPublishedAt
    , csniAuthorChannelUrl
    , csniModerationStatus
    , csniLikeCount
    , csniChannelId
    , csniTextOriginal
    , csniVideoId
    , csniTextDisplay
    , csniAuthorProfileImageUrl
    , csniAuthorDisplayName
    , csniUpdatedAt
    , csniAuthorChannelId
    , csniCanRate
    , csniAuthorGoogleplusProfileUrl
    , csniParentId

    -- ** PlaylistItemStatusPrivacyStatus
    , PlaylistItemStatusPrivacyStatus (..)

    -- ** ContentRatingCnaRating
    , ContentRatingCnaRating (..)

    -- ** ContentRatingIncaaRating
    , ContentRatingIncaaRating (..)

    -- ** CommentThreadsList'Order
    , CommentThreadsList'Order (..)

    -- ** ContentRatingEgfilmRating
    , ContentRatingEgfilmRating (..)

    -- ** VideoRecordingDetails
    , VideoRecordingDetails
    , videoRecordingDetails
    , vrdLocation
    , vrdLocationDescription
    , vrdRecordingDate

    -- ** ChannelStatusPrivacyStatus
    , ChannelStatusPrivacyStatus (..)

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

    -- ** ContentRatingCccRating
    , ContentRatingCccRating (..)

    -- ** SearchList'VideoDimension
    , SearchList'VideoDimension (..)

    -- ** CaptionSnippetAudioTrackType
    , CaptionSnippetAudioTrackType (..)

    -- ** ContentRatingIfcoRating
    , ContentRatingIfcoRating (..)

    -- ** VideoStatusUploadStatus
    , VideoStatusUploadStatus (..)

    -- ** ContentRatingIlfilmRating
    , ContentRatingIlfilmRating (..)

    -- ** ChannelSectionLocalizations
    , ChannelSectionLocalizations
    , channelSectionLocalizations

    -- ** LiveStreamContentDetails
    , LiveStreamContentDetails
    , liveStreamContentDetails
    , lscdClosedCaptionsIngestionUrl
    , lscdIsReusable

    -- ** SearchList'VideoType
    , SearchList'VideoType (..)

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

    -- ** ContentRatingGrfilmRating
    , ContentRatingGrfilmRating (..)

    -- ** PromotedItemIdType
    , PromotedItemIdType (..)

    -- ** ChannelSectionContentDetails
    , ChannelSectionContentDetails
    , channelSectionContentDetails
    , cscdChannels
    , cscdPlaylists

    -- ** VideoCategory
    , VideoCategory
    , videoCategory
    , vcEtag
    , vcSnippet
    , vcKind
    , vcId
    ) where

import           Network.Google.API.YouTube.Activities.Insert
import           Network.Google.API.YouTube.Activities.List
import           Network.Google.API.YouTube.Captions.Delete
import           Network.Google.API.YouTube.Captions.Download
import           Network.Google.API.YouTube.Captions.Insert
import           Network.Google.API.YouTube.Captions.List
import           Network.Google.API.YouTube.Captions.Update
import           Network.Google.API.YouTube.ChannelBanners.Insert
import           Network.Google.API.YouTube.Channels.List
import           Network.Google.API.YouTube.Channels.Update
import           Network.Google.API.YouTube.ChannelSections.Delete
import           Network.Google.API.YouTube.ChannelSections.Insert
import           Network.Google.API.YouTube.ChannelSections.List
import           Network.Google.API.YouTube.ChannelSections.Update
import           Network.Google.API.YouTube.Comments.Delete
import           Network.Google.API.YouTube.Comments.Insert
import           Network.Google.API.YouTube.Comments.List
import           Network.Google.API.YouTube.Comments.MarkAsSpam
import           Network.Google.API.YouTube.Comments.SetModerationStatus
import           Network.Google.API.YouTube.Comments.Update
import           Network.Google.API.YouTube.CommentThreads.Insert
import           Network.Google.API.YouTube.CommentThreads.List
import           Network.Google.API.YouTube.CommentThreads.Update
import           Network.Google.API.YouTube.GuideCategories.List
import           Network.Google.API.YouTube.I18nLanguages.List
import           Network.Google.API.YouTube.I18nRegions.List
import           Network.Google.API.YouTube.LiveBroadcasts.Bind
import           Network.Google.API.YouTube.LiveBroadcasts.Bind_direct
import           Network.Google.API.YouTube.LiveBroadcasts.Control
import           Network.Google.API.YouTube.LiveBroadcasts.Delete
import           Network.Google.API.YouTube.LiveBroadcasts.Insert
import           Network.Google.API.YouTube.LiveBroadcasts.List
import           Network.Google.API.YouTube.LiveBroadcasts.Transition
import           Network.Google.API.YouTube.LiveBroadcasts.Update
import           Network.Google.API.YouTube.LiveStreams.Delete
import           Network.Google.API.YouTube.LiveStreams.Insert
import           Network.Google.API.YouTube.LiveStreams.List
import           Network.Google.API.YouTube.LiveStreams.Update
import           Network.Google.API.YouTube.PlaylistItems.Delete
import           Network.Google.API.YouTube.PlaylistItems.Insert
import           Network.Google.API.YouTube.PlaylistItems.List
import           Network.Google.API.YouTube.PlaylistItems.Update
import           Network.Google.API.YouTube.Playlists.Delete
import           Network.Google.API.YouTube.Playlists.Insert
import           Network.Google.API.YouTube.Playlists.List
import           Network.Google.API.YouTube.Playlists.Update
import           Network.Google.API.YouTube.Search.List
import           Network.Google.API.YouTube.Subscriptions.Delete
import           Network.Google.API.YouTube.Subscriptions.Insert
import           Network.Google.API.YouTube.Subscriptions.List
import           Network.Google.API.YouTube.Thumbnails.Set
import           Network.Google.API.YouTube.VideoAbuseReportReasons.List
import           Network.Google.API.YouTube.VideoCategories.List
import           Network.Google.API.YouTube.Videos.Delete
import           Network.Google.API.YouTube.Videos.GetRating
import           Network.Google.API.YouTube.Videos.Insert
import           Network.Google.API.YouTube.Videos.List
import           Network.Google.API.YouTube.Videos.Rate
import           Network.Google.API.YouTube.Videos.ReportAbuse
import           Network.Google.API.YouTube.Videos.Update
import           Network.Google.API.YouTube.Watermarks.Set
import           Network.Google.API.YouTube.Watermarks.Unset
import           Network.Google.Prelude
import           Network.Google.YouTube.Types

{- $resources
TODO
-}

type YouTube =
     GuideCategoriesListAPI :<|> ActivitiesInsertAPI :<|>
       PlaylistItemsDeleteAPI
       :<|> VideosInsertAPI
       :<|> LiveBroadcastsListAPI
       :<|> ChannelSectionsInsertAPI
       :<|> PlaylistsInsertAPI
       :<|> CommentsListAPI
       :<|> VideoAbuseReportReasonsListAPI
       :<|> VideoCategoriesListAPI
       :<|> CommentThreadsInsertAPI
       :<|> LiveBroadcastsControlAPI
       :<|> CaptionsDownloadAPI
       :<|> VideosListAPI
       :<|> LiveStreamsDeleteAPI
       :<|> LiveBroadcastsBindAPI
       :<|> LiveBroadcastsTransitionAPI
       :<|> VideosUpdateAPI
       :<|> SubscriptionsListAPI
       :<|> LiveStreamsInsertAPI
       :<|> LiveStreamsUpdateAPI
       :<|> ChannelBannersInsertAPI
       :<|> PlaylistItemsInsertAPI
       :<|> PlaylistItemsUpdateAPI
       :<|> LiveStreamsListAPI
       :<|> CommentsSetModerationStatusAPI
       :<|> ChannelSectionsDeleteAPI
       :<|> SearchListAPI
       :<|> PlaylistsDeleteAPI
       :<|> WatermarksUnsetAPI
       :<|> ActivitiesListAPI
       :<|> CommentsDeleteAPI
       :<|> I18nRegionsListAPI
       :<|> LiveBroadcastsDeleteAPI
       :<|> CommentsMarkAsSpamAPI
       :<|> PlaylistItemsListAPI
       :<|> ChannelSectionsUpdateAPI
       :<|> PlaylistsUpdateAPI
       :<|> PlaylistsListAPI
       :<|> I18nLanguagesListAPI
       :<|> ChannelSectionsListAPI
       :<|> SubscriptionsInsertAPI
       :<|> CommentThreadsUpdateAPI
       :<|> CaptionsDeleteAPI
       :<|> VideosReportAbuseAPI
       :<|> ChannelsListAPI
       :<|> SubscriptionsDeleteAPI
       :<|> VideosGetRatingAPI
       :<|> WatermarksSetAPI
       :<|> ChannelsUpdateAPI
       :<|> CommentThreadsListAPI
       :<|> CaptionsInsertAPI
       :<|> CaptionsUpdateAPI
       :<|> VideosRateAPI
       :<|> VideosDeleteAPI
       :<|> LiveBroadcastsInsertAPI
       :<|> LiveBroadcastsBind_directAPI
       :<|> CommentsInsertAPI
       :<|> CaptionsListAPI
       :<|> ThumbnailsSetAPI
       :<|> LiveBroadcastsUpdateAPI
       :<|> CommentsUpdateAPI

youTube :: Proxy YouTube
youTube = Proxy
