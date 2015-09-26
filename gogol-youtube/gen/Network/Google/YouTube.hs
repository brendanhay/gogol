-- |
-- Module      : Network.Google.YouTube
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Programmatic access to YouTube features.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference>
module Network.Google.YouTube
    (
    -- * API Definition
      YouTube



    -- * Types

    -- ** AccessPolicy
    , AccessPolicy
    , accessPolicy
    , apException
    , apAllowed

    -- ** Activity
    , Activity
    , activity
    , aEtag
    , aSnippet
    , aKind
    , aContentDetails
    , aId

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

    -- ** ActivityContentDetailsBulletin
    , ActivityContentDetailsBulletin
    , activityContentDetailsBulletin
    , acdbResourceId

    -- ** ActivityContentDetailsChannelItem
    , ActivityContentDetailsChannelItem
    , activityContentDetailsChannelItem
    , acdciResourceId

    -- ** ActivityContentDetailsComment
    , ActivityContentDetailsComment
    , activityContentDetailsComment
    , acdcResourceId

    -- ** ActivityContentDetailsFavorite
    , ActivityContentDetailsFavorite
    , activityContentDetailsFavorite
    , acdfResourceId

    -- ** ActivityContentDetailsLike
    , ActivityContentDetailsLike
    , activityContentDetailsLike
    , acdlResourceId

    -- ** ActivityContentDetailsPlaylistItem
    , ActivityContentDetailsPlaylistItem
    , activityContentDetailsPlaylistItem
    , acdpiResourceId
    , acdpiPlaylistId
    , acdpiPlaylistItemId

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

    -- ** ActivityContentDetailsPromotedItemCtaType
    , ActivityContentDetailsPromotedItemCtaType (..)

    -- ** ActivityContentDetailsRecommendation
    , ActivityContentDetailsRecommendation
    , activityContentDetailsRecommendation
    , acdrResourceId
    , acdrSeedResourceId
    , acdrReason

    -- ** ActivityContentDetailsRecommendationReason
    , ActivityContentDetailsRecommendationReason (..)

    -- ** ActivityContentDetailsSocial
    , ActivityContentDetailsSocial
    , activityContentDetailsSocial
    , acdsResourceId
    , acdsImageUrl
    , acdsAuthor
    , acdsReferenceUrl
    , acdsType

    -- ** ActivityContentDetailsSocialType
    , ActivityContentDetailsSocialType (..)

    -- ** ActivityContentDetailsSubscription
    , ActivityContentDetailsSubscription
    , activityContentDetailsSubscription
    , aResourceId

    -- ** ActivityContentDetailsUpload
    , ActivityContentDetailsUpload
    , activityContentDetailsUpload
    , acduVideoId

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

    -- ** ActivitySnippetType
    , ActivitySnippetType (..)

    -- ** Caption
    , Caption
    , caption
    , capEtag
    , capSnippet
    , capKind
    , capId

    -- ** CaptionListResponse
    , CaptionListResponse
    , captionListResponse
    , clrEtag
    , clrKind
    , clrItems
    , clrVisitorId
    , clrEventId

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

    -- ** CaptionSnippetAudioTrackType
    , CaptionSnippetAudioTrackType (..)

    -- ** CaptionSnippetFailureReason
    , CaptionSnippetFailureReason (..)

    -- ** CaptionSnippetStatus
    , CaptionSnippetStatus (..)

    -- ** CaptionSnippetTrackKind
    , CaptionSnippetTrackKind (..)

    -- ** CdnSettings
    , CdnSettings
    , cdnSettings
    , csIngestionInfo
    , csFormat
    , csIngestionType

    -- ** CdnSettingsIngestionType
    , CdnSettingsIngestionType (..)

    -- ** Channel
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

    -- ** ChannelAuditDetails
    , ChannelAuditDetails
    , channelAuditDetails
    , cadContentIdClaimsGoodStanding
    , cadOverallGoodStanding
    , cadCopyrightStrikesGoodStanding
    , cadCommunityGuidelinesGoodStanding

    -- ** ChannelBannerResource
    , ChannelBannerResource
    , channelBannerResource
    , cbrEtag
    , cbrKind
    , cbrUrl

    -- ** ChannelBrandingSettings
    , ChannelBrandingSettings
    , channelBrandingSettings
    , cbsImage
    , cbsHints
    , cbsChannel
    , cbsWatch

    -- ** ChannelContentDetails
    , ChannelContentDetails
    , channelContentDetails
    , ccdRelatedPlaylists
    , ccdGooglePlusUserId

    -- ** ChannelContentDetailsRelatedPlaylists
    , ChannelContentDetailsRelatedPlaylists
    , channelContentDetailsRelatedPlaylists
    , ccdrpFavorites
    , ccdrpWatchHistory
    , ccdrpWatchLater
    , ccdrpUploads
    , ccdrpLikes

    -- ** ChannelContentOwnerDetails
    , ChannelContentOwnerDetails
    , channelContentOwnerDetails
    , ccodTimeLinked
    , ccodContentOwner

    -- ** ChannelConversionPing
    , ChannelConversionPing
    , channelConversionPing
    , ccpContext
    , ccpConversionUrl

    -- ** ChannelConversionPingContext
    , ChannelConversionPingContext (..)

    -- ** ChannelConversionPings
    , ChannelConversionPings
    , channelConversionPings
    , ccpPings

    -- ** ChannelId
    , ChannelId
    , channelId
    , ciValue

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

    -- ** ChannelLocalization
    , ChannelLocalization
    , channelLocalization
    , clTitle
    , clDescription

    -- ** ChannelLocalizations
    , ChannelLocalizations
    , channelLocalizations

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

    -- ** ChannelSectionContentDetails
    , ChannelSectionContentDetails
    , channelSectionContentDetails
    , cscdChannels
    , cscdPlaylists

    -- ** ChannelSectionListResponse
    , ChannelSectionListResponse
    , channelSectionListResponse
    , cslrEtag
    , cslrKind
    , cslrItems
    , cslrVisitorId
    , cslrEventId

    -- ** ChannelSectionLocalization
    , ChannelSectionLocalization
    , channelSectionLocalization
    , cslTitle

    -- ** ChannelSectionLocalizations
    , ChannelSectionLocalizations
    , channelSectionLocalizations

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

    -- ** ChannelSectionSnippetStyle
    , ChannelSectionSnippetStyle (..)

    -- ** ChannelSectionSnippetType
    , ChannelSectionSnippetType (..)

    -- ** ChannelSectionTargeting
    , ChannelSectionTargeting
    , channelSectionTargeting
    , cstRegions
    , cstCountries
    , cstLanguages

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

    -- ** ChannelStatistics
    , ChannelStatistics
    , channelStatistics
    , csCommentCount
    , csSubscriberCount
    , csVideoCount
    , csHiddenSubscriberCount
    , csViewCount

    -- ** ChannelStatus
    , ChannelStatus
    , channelStatus
    , csIsLinked
    , csLongUploadsStatus
    , csPrivacyStatus

    -- ** ChannelStatusLongUploadsStatus
    , ChannelStatusLongUploadsStatus (..)

    -- ** ChannelStatusPrivacyStatus
    , ChannelStatusPrivacyStatus (..)

    -- ** ChannelTopicDetails
    , ChannelTopicDetails
    , channelTopicDetails
    , ctdTopicIds

    -- ** Comment
    , Comment
    , comment
    , comEtag
    , comSnippet
    , comKind
    , comId

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

    -- ** CommentSnippetModerationStatus
    , CommentSnippetModerationStatus (..)

    -- ** CommentSnippetViewerRating
    , CommentSnippetViewerRating (..)

    -- ** CommentThread
    , CommentThread
    , commentThread
    , ctEtag
    , ctSnippet
    , ctKind
    , ctReplies
    , ctId

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

    -- ** CommentThreadReplies
    , CommentThreadReplies
    , commentThreadReplies
    , ctrComments

    -- ** CommentThreadSnippet
    , CommentThreadSnippet
    , commentThreadSnippet
    , ctsIsPublic
    , ctsChannelId
    , ctsCanReply
    , ctsVideoId
    , ctsTotalReplyCount
    , ctsTopLevelComment

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

    -- ** ContentRatingAcbRating
    , ContentRatingAcbRating (..)

    -- ** ContentRatingAgcomRating
    , ContentRatingAgcomRating (..)

    -- ** ContentRatingAnatelRating
    , ContentRatingAnatelRating (..)

    -- ** ContentRatingBbfcRating
    , ContentRatingBbfcRating (..)

    -- ** ContentRatingBfvcRating
    , ContentRatingBfvcRating (..)

    -- ** ContentRatingBmukkRating
    , ContentRatingBmukkRating (..)

    -- ** ContentRatingCatvRating
    , ContentRatingCatvRating (..)

    -- ** ContentRatingCatvfrRating
    , ContentRatingCatvfrRating (..)

    -- ** ContentRatingCbfcRating
    , ContentRatingCbfcRating (..)

    -- ** ContentRatingCccRating
    , ContentRatingCccRating (..)

    -- ** ContentRatingCceRating
    , ContentRatingCceRating (..)

    -- ** ContentRatingChfilmRating
    , ContentRatingChfilmRating (..)

    -- ** ContentRatingChvrsRating
    , ContentRatingChvrsRating (..)

    -- ** ContentRatingCicfRating
    , ContentRatingCicfRating (..)

    -- ** ContentRatingCnaRating
    , ContentRatingCnaRating (..)

    -- ** ContentRatingCncRating
    , ContentRatingCncRating (..)

    -- ** ContentRatingCsaRating
    , ContentRatingCsaRating (..)

    -- ** ContentRatingCscfRating
    , ContentRatingCscfRating (..)

    -- ** ContentRatingCzfilmRating
    , ContentRatingCzfilmRating (..)

    -- ** ContentRatingDjctqRating
    , ContentRatingDjctqRating (..)

    -- ** ContentRatingEefilmRating
    , ContentRatingEefilmRating (..)

    -- ** ContentRatingEgfilmRating
    , ContentRatingEgfilmRating (..)

    -- ** ContentRatingEirinRating
    , ContentRatingEirinRating (..)

    -- ** ContentRatingFcbmRating
    , ContentRatingFcbmRating (..)

    -- ** ContentRatingFcoRating
    , ContentRatingFcoRating (..)

    -- ** ContentRatingFmocRating
    , ContentRatingFmocRating (..)

    -- ** ContentRatingFpbRating
    , ContentRatingFpbRating (..)

    -- ** ContentRatingFskRating
    , ContentRatingFskRating (..)

    -- ** ContentRatingGrfilmRating
    , ContentRatingGrfilmRating (..)

    -- ** ContentRatingIcaaRating
    , ContentRatingIcaaRating (..)

    -- ** ContentRatingIfcoRating
    , ContentRatingIfcoRating (..)

    -- ** ContentRatingIlfilmRating
    , ContentRatingIlfilmRating (..)

    -- ** ContentRatingIncaaRating
    , ContentRatingIncaaRating (..)

    -- ** ContentRatingItemDjctqRatingReasons
    , ContentRatingItemDjctqRatingReasons (..)

    -- ** ContentRatingKfcbRating
    , ContentRatingKfcbRating (..)

    -- ** ContentRatingKijkwijzerRating
    , ContentRatingKijkwijzerRating (..)

    -- ** ContentRatingKmrbRating
    , ContentRatingKmrbRating (..)

    -- ** ContentRatingLsfRating
    , ContentRatingLsfRating (..)

    -- ** ContentRatingMccaaRating
    , ContentRatingMccaaRating (..)

    -- ** ContentRatingMccypRating
    , ContentRatingMccypRating (..)

    -- ** ContentRatingMdaRating
    , ContentRatingMdaRating (..)

    -- ** ContentRatingMedietilsynetRating
    , ContentRatingMedietilsynetRating (..)

    -- ** ContentRatingMekuRating
    , ContentRatingMekuRating (..)

    -- ** ContentRatingMibacRating
    , ContentRatingMibacRating (..)

    -- ** ContentRatingMocRating
    , ContentRatingMocRating (..)

    -- ** ContentRatingMoctwRating
    , ContentRatingMoctwRating (..)

    -- ** ContentRatingMpaaRating
    , ContentRatingMpaaRating (..)

    -- ** ContentRatingMtrcbRating
    , ContentRatingMtrcbRating (..)

    -- ** ContentRatingNbcRating
    , ContentRatingNbcRating (..)

    -- ** ContentRatingNbcplRating
    , ContentRatingNbcplRating (..)

    -- ** ContentRatingNfrcRating
    , ContentRatingNfrcRating (..)

    -- ** ContentRatingNfvcbRating
    , ContentRatingNfvcbRating (..)

    -- ** ContentRatingNkclvRating
    , ContentRatingNkclvRating (..)

    -- ** ContentRatingOflcRating
    , ContentRatingOflcRating (..)

    -- ** ContentRatingPefilmRating
    , ContentRatingPefilmRating (..)

    -- ** ContentRatingRcnofRating
    , ContentRatingRcnofRating (..)

    -- ** ContentRatingResorteviolenciaRating
    , ContentRatingResorteviolenciaRating (..)

    -- ** ContentRatingRtcRating
    , ContentRatingRtcRating (..)

    -- ** ContentRatingRteRating
    , ContentRatingRteRating (..)

    -- ** ContentRatingRussiaRating
    , ContentRatingRussiaRating (..)

    -- ** ContentRatingSkfilmRating
    , ContentRatingSkfilmRating (..)

    -- ** ContentRatingSmaisRating
    , ContentRatingSmaisRating (..)

    -- ** ContentRatingSmsaRating
    , ContentRatingSmsaRating (..)

    -- ** ContentRatingTvpgRating
    , ContentRatingTvpgRating (..)

    -- ** ContentRatingYtRating
    , ContentRatingYtRating (..)

    -- ** GeoPoint
    , GeoPoint
    , geoPoint
    , gpLatitude
    , gpAltitude
    , gpLongitude

    -- ** GuideCategory
    , GuideCategory
    , guideCategory
    , gcEtag
    , gcSnippet
    , gcKind
    , gcId

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

    -- ** GuideCategorySnippet
    , GuideCategorySnippet
    , guideCategorySnippet
    , gcsChannelId
    , gcsTitle

    -- ** I18nLanguage
    , I18nLanguage
    , i18nLanguage
    , ilEtag
    , ilSnippet
    , ilKind
    , ilId

    -- ** I18nLanguageListResponse
    , I18nLanguageListResponse
    , i18nLanguageListResponse
    , illrEtag
    , illrKind
    , illrItems
    , illrVisitorId
    , illrEventId

    -- ** I18nLanguageSnippet
    , I18nLanguageSnippet
    , i18nLanguageSnippet
    , ilsHl
    , ilsName

    -- ** I18nRegion
    , I18nRegion
    , i18nRegion
    , irEtag
    , irSnippet
    , irKind
    , irId

    -- ** I18nRegionListResponse
    , I18nRegionListResponse
    , i18nRegionListResponse
    , irlrEtag
    , irlrKind
    , irlrItems
    , irlrVisitorId
    , irlrEventId

    -- ** I18nRegionSnippet
    , I18nRegionSnippet
    , i18nRegionSnippet
    , irsName
    , irsGl

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

    -- ** IngestionInfo
    , IngestionInfo
    , ingestionInfo
    , iiBackupIngestionAddress
    , iiIngestionAddress
    , iiStreamName

    -- ** InvideoBranding
    , InvideoBranding
    , invideoBranding
    , ibImageUrl
    , ibTargetChannelId
    , ibTiming
    , ibImageBytes
    , ibPosition

    -- ** InvideoPosition
    , InvideoPosition
    , invideoPosition
    , ipCornerPosition
    , ipType

    -- ** InvideoPositionCornerPosition
    , InvideoPositionCornerPosition (..)

    -- ** InvideoPositionType
    , InvideoPositionType (..)

    -- ** InvideoPromotion
    , InvideoPromotion
    , invideoPromotion
    , ipUseSmartTiming
    , ipItems
    , ipDefaultTiming
    , ipPosition

    -- ** InvideoTiming
    , InvideoTiming
    , invideoTiming
    , itDurationMs
    , itOffsetMs
    , itType

    -- ** InvideoTimingType
    , InvideoTimingType (..)

    -- ** LanguageTag
    , LanguageTag
    , languageTag
    , ltValue

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

    -- ** LiveBroadcastStatus
    , LiveBroadcastStatus
    , liveBroadcastStatus
    , lbsLiveBroadcastPriority
    , lbsRecordingStatus
    , lbsLifeCycleStatus
    , lbsPrivacyStatus

    -- ** LiveBroadcastStatusLifeCycleStatus
    , LiveBroadcastStatusLifeCycleStatus (..)

    -- ** LiveBroadcastStatusLiveBroadcastPriority
    , LiveBroadcastStatusLiveBroadcastPriority (..)

    -- ** LiveBroadcastStatusPrivacyStatus
    , LiveBroadcastStatusPrivacyStatus (..)

    -- ** LiveBroadcastStatusRecordingStatus
    , LiveBroadcastStatusRecordingStatus (..)

    -- ** LiveBroadcastTopic
    , LiveBroadcastTopic
    , liveBroadcastTopic
    , lbtSnippet
    , lbtUnmatched
    , lbtType

    -- ** LiveBroadcastTopicDetails
    , LiveBroadcastTopicDetails
    , liveBroadcastTopicDetails
    , lbtdTopics

    -- ** LiveBroadcastTopicSnippet
    , LiveBroadcastTopicSnippet
    , liveBroadcastTopicSnippet
    , lbtsName
    , lbtsReleaseDate

    -- ** LiveBroadcastTopicType
    , LiveBroadcastTopicType (..)

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

    -- ** LiveStreamConfigurationIssue
    , LiveStreamConfigurationIssue
    , liveStreamConfigurationIssue
    , lsciSeverity
    , lsciReason
    , lsciType
    , lsciDescription

    -- ** LiveStreamConfigurationIssueSeverity
    , LiveStreamConfigurationIssueSeverity (..)

    -- ** LiveStreamConfigurationIssueType
    , LiveStreamConfigurationIssueType (..)

    -- ** LiveStreamContentDetails
    , LiveStreamContentDetails
    , liveStreamContentDetails
    , lscdClosedCaptionsIngestionUrl
    , lscdIsReusable

    -- ** LiveStreamHealthStatus
    , LiveStreamHealthStatus
    , liveStreamHealthStatus
    , lshsStatus
    , lshsConfigurationIssues
    , lshsLastUpdateTimeSeconds

    -- ** LiveStreamHealthStatusStatus
    , LiveStreamHealthStatusStatus (..)

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

    -- ** LiveStreamSnippet
    , LiveStreamSnippet
    , liveStreamSnippet
    , lssPublishedAt
    , lssChannelId
    , lssIsDefaultStream
    , lssTitle
    , lssDescription

    -- ** LiveStreamStatus
    , LiveStreamStatus
    , liveStreamStatus
    , lssStreamStatus
    , lssHealthStatus

    -- ** LiveStreamStatusStreamStatus
    , LiveStreamStatusStreamStatus (..)

    -- ** LocalizedProperty
    , LocalizedProperty
    , localizedProperty
    , lpDefault
    , lpLocalized
    , lpDefaultLanguage

    -- ** LocalizedString
    , LocalizedString
    , localizedString
    , lsValue
    , lsLanguage

    -- ** MonitorStreamInfo
    , MonitorStreamInfo
    , monitorStreamInfo
    , msiBroadcastStreamDelayMs
    , msiEmbedHtml
    , msiEnableMonitorStream

    -- ** PageInfo
    , PageInfo
    , pageInfo
    , piResultsPerPage
    , piTotalResults

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

    -- ** PlaylistContentDetails
    , PlaylistContentDetails
    , playlistContentDetails
    , pcdItemCount

    -- ** PlaylistItem
    , PlaylistItem
    , playlistItem
    , piStatus
    , piEtag
    , piSnippet
    , piKind
    , piContentDetails
    , piId

    -- ** PlaylistItemContentDetails
    , PlaylistItemContentDetails
    , playlistItemContentDetails
    , picdStartAt
    , picdNote
    , picdVideoId
    , picdEndAt

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

    -- ** PlaylistItemStatus
    , PlaylistItemStatus
    , playlistItemStatus
    , pisPrivacyStatus

    -- ** PlaylistItemStatusPrivacyStatus
    , PlaylistItemStatusPrivacyStatus (..)

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

    -- ** PlaylistLocalization
    , PlaylistLocalization
    , playlistLocalization
    , plTitle
    , plDescription

    -- ** PlaylistLocalizations
    , PlaylistLocalizations
    , playlistLocalizations

    -- ** PlaylistPlayer
    , PlaylistPlayer
    , playlistPlayer
    , ppEmbedHtml

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

    -- ** PlaylistStatus
    , PlaylistStatus
    , playlistStatus
    , psPrivacyStatus

    -- ** PlaylistStatusPrivacyStatus
    , PlaylistStatusPrivacyStatus (..)

    -- ** PromotedItem
    , PromotedItem
    , promotedItem
    , pCustomMessage
    , pPromotedByContentOwner
    , pId
    , pTiming

    -- ** PromotedItemId
    , PromotedItemId
    , promotedItemId
    , piiRecentlyUploadedBy
    , piiVideoId
    , piiWebsiteUrl
    , piiType

    -- ** PromotedItemIdType
    , PromotedItemIdType (..)

    -- ** PropertyValue
    , PropertyValue
    , propertyValue
    , pvProperty
    , pvValue

    -- ** ResourceId
    , ResourceId
    , resourceId
    , riKind
    , riChannelId
    , riVideoId
    , riPlaylistId

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

    -- ** SearchResult
    , SearchResult
    , searchResult
    , srEtag
    , srSnippet
    , srKind
    , srId

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

    -- ** SearchResultSnippetLiveBroadcastContent
    , SearchResultSnippetLiveBroadcastContent (..)

    -- ** Subscription
    , Subscription
    , subscription
    , sEtag
    , sSubscriberSnippet
    , sSnippet
    , sKind
    , sContentDetails
    , sId

    -- ** SubscriptionContentDetails
    , SubscriptionContentDetails
    , subscriptionContentDetails
    , scdActivityType
    , scdTotalItemCount
    , scdNewItemCount

    -- ** SubscriptionContentDetailsActivityType
    , SubscriptionContentDetailsActivityType (..)

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

    -- ** SubscriptionSubscriberSnippet
    , SubscriptionSubscriberSnippet
    , subscriptionSubscriberSnippet
    , sssChannelId
    , sssThumbnails
    , sssTitle
    , sssDescription

    -- ** Thumbnail
    , Thumbnail
    , thumbnail
    , tHeight
    , tUrl
    , tWidth

    -- ** ThumbnailDetails
    , ThumbnailDetails
    , thumbnailDetails
    , tdMedium
    , tdMaxres
    , tdDefault
    , tdStandard
    , tdHigh

    -- ** ThumbnailSetResponse
    , ThumbnailSetResponse
    , thumbnailSetResponse
    , tsrEtag
    , tsrKind
    , tsrItems
    , tsrVisitorId
    , tsrEventId

    -- ** TokenPagination
    , TokenPagination
    , tokenPagination

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

    -- ** VideoAbuseReport
    , VideoAbuseReport
    , videoAbuseReport
    , varSecondaryReasonId
    , varReasonId
    , varVideoId
    , varLanguage
    , varComments

    -- ** VideoAbuseReportReason
    , VideoAbuseReportReason
    , videoAbuseReportReason
    , varrEtag
    , varrSnippet
    , varrKind
    , varrId

    -- ** VideoAbuseReportReasonListResponse
    , VideoAbuseReportReasonListResponse
    , videoAbuseReportReasonListResponse
    , varrlrEtag
    , varrlrKind
    , varrlrItems
    , varrlrVisitorId
    , varrlrEventId

    -- ** VideoAbuseReportReasonSnippet
    , VideoAbuseReportReasonSnippet
    , videoAbuseReportReasonSnippet
    , varrsSecondaryReasons
    , varrsLabel

    -- ** VideoAbuseReportSecondaryReason
    , VideoAbuseReportSecondaryReason
    , videoAbuseReportSecondaryReason
    , varsrId
    , varsrLabel

    -- ** VideoAgeGating
    , VideoAgeGating
    , videoAgeGating
    , vagAlcoholContent
    , vagRestricted
    , vagVideoGameRating

    -- ** VideoAgeGatingVideoGameRating
    , VideoAgeGatingVideoGameRating (..)

    -- ** VideoCategory
    , VideoCategory
    , videoCategory
    , vcEtag
    , vcSnippet
    , vcKind
    , vcId

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

    -- ** VideoCategorySnippet
    , VideoCategorySnippet
    , videoCategorySnippet
    , vcsAssignable
    , vcsChannelId
    , vcsTitle

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

    -- ** VideoContentDetailsCaption
    , VideoContentDetailsCaption (..)

    -- ** VideoContentDetailsDefinition
    , VideoContentDetailsDefinition (..)

    -- ** VideoContentDetailsRegionRestriction
    , VideoContentDetailsRegionRestriction
    , videoContentDetailsRegionRestriction
    , vcdrrAllowed
    , vcdrrBlocked

    -- ** VideoConversionPing
    , VideoConversionPing
    , videoConversionPing
    , vcpContext
    , vcpConversionUrl

    -- ** VideoConversionPingContext
    , VideoConversionPingContext (..)

    -- ** VideoConversionPings
    , VideoConversionPings
    , videoConversionPings
    , vcpPings

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

    -- ** VideoFileDetailsAudioStream
    , VideoFileDetailsAudioStream
    , videoFileDetailsAudioStream
    , vfdasBitrateBps
    , vfdasVendor
    , vfdasCodec
    , vfdasChannelCount

    -- ** VideoFileDetailsFileType
    , VideoFileDetailsFileType (..)

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

    -- ** VideoFileDetailsVideoStreamRotation
    , VideoFileDetailsVideoStreamRotation (..)

    -- ** VideoGetRatingResponse
    , VideoGetRatingResponse
    , videoGetRatingResponse
    , vgrrEtag
    , vgrrKind
    , vgrrItems
    , vgrrVisitorId
    , vgrrEventId

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

    -- ** VideoLiveStreamingDetails
    , VideoLiveStreamingDetails
    , videoLiveStreamingDetails
    , vlsdActualEndTime
    , vlsdConcurrentViewers
    , vlsdScheduledEndTime
    , vlsdScheduledStartTime
    , vlsdActualStartTime

    -- ** VideoLocalization
    , VideoLocalization
    , videoLocalization
    , vlTitle
    , vlDescription

    -- ** VideoLocalizations
    , VideoLocalizations
    , videoLocalizations

    -- ** VideoMonetizationDetails
    , VideoMonetizationDetails
    , videoMonetizationDetails
    , vmdAccess

    -- ** VideoPlayer
    , VideoPlayer
    , videoPlayer
    , vpEmbedHtml

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

    -- ** VideoProcessingDetailsProcessingFailureReason
    , VideoProcessingDetailsProcessingFailureReason (..)

    -- ** VideoProcessingDetailsProcessingProgress
    , VideoProcessingDetailsProcessingProgress
    , videoProcessingDetailsProcessingProgress
    , vpdppTimeLeftMs
    , vpdppPartsTotal
    , vpdppPartsProcessed

    -- ** VideoProcessingDetailsProcessingStatus
    , VideoProcessingDetailsProcessingStatus (..)

    -- ** VideoProjectDetails
    , VideoProjectDetails
    , videoProjectDetails
    , vpdTags

    -- ** VideoRating
    , VideoRating
    , videoRating
    , vrRating
    , vrVideoId

    -- ** VideoRatingRating
    , VideoRatingRating (..)

    -- ** VideoRecordingDetails
    , VideoRecordingDetails
    , videoRecordingDetails
    , vrdLocation
    , vrdLocationDescription
    , vrdRecordingDate

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

    -- ** VideoSnippetLiveBroadcastContent
    , VideoSnippetLiveBroadcastContent (..)

    -- ** VideoStatistics
    , VideoStatistics
    , videoStatistics
    , vsLikeCount
    , vsCommentCount
    , vsFavoriteCount
    , vsDislikeCount
    , vsViewCount

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

    -- ** VideoStatusFailureReason
    , VideoStatusFailureReason (..)

    -- ** VideoStatusLicense
    , VideoStatusLicense (..)

    -- ** VideoStatusPrivacyStatus
    , VideoStatusPrivacyStatus (..)

    -- ** VideoStatusRejectionReason
    , VideoStatusRejectionReason (..)

    -- ** VideoStatusUploadStatus
    , VideoStatusUploadStatus (..)

    -- ** VideoSuggestions
    , VideoSuggestions
    , videoSuggestions
    , vsProcessingErrors
    , vsProcessingHints
    , vsEditorSuggestions
    , vsProcessingWarnings
    , vsTagSuggestions

    -- ** VideoSuggestionsItemEditorSuggestions
    , VideoSuggestionsItemEditorSuggestions (..)

    -- ** VideoSuggestionsItemProcessingErrors
    , VideoSuggestionsItemProcessingErrors (..)

    -- ** VideoSuggestionsItemProcessingHints
    , VideoSuggestionsItemProcessingHints (..)

    -- ** VideoSuggestionsItemProcessingWarnings
    , VideoSuggestionsItemProcessingWarnings (..)

    -- ** VideoSuggestionsTagSuggestion
    , VideoSuggestionsTagSuggestion
    , videoSuggestionsTagSuggestion
    , vstsTag
    , vstsCategoryRestricts

    -- ** VideoTopicDetails
    , VideoTopicDetails
    , videoTopicDetails
    , vtdTopicIds
    , vtdRelevantTopicIds

    -- ** WatchSettings
    , WatchSettings
    , watchSettings
    , wsFeaturedPlaylistId
    , wsBackgroundColor
    , wsTextColor
    ) where

import           Network.Google.YouTube.Types

{- $resources
TODO
-}

type YouTube = ()

youTube :: Proxy YouTube
youTube = Proxy




