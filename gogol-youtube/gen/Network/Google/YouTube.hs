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
    -- * Resources
      YouTube
    , GuideCategoriesAPI
    , GuideCategoriesList
    , ChannelBannersAPI
    , ChannelBannersInsert
    , I18nLanguagesAPI
    , I18nLanguagesList
    , VideosAPI
    , VideosInsert
    , VideosList
    , VideosRate
    , VideosReportAbuse
    , VideosDelete
    , VideosUpdate
    , VideosGetRating
    , LiveBroadcastsAPI
    , LiveBroadcastsControl
    , LiveBroadcastsTransition
    , LiveBroadcastsInsert
    , LiveBroadcastsList
    , LiveBroadcastsBind
    , LiveBroadcastsBind_direct
    , LiveBroadcastsDelete
    , LiveBroadcastsUpdate
    , CaptionsAPI
    , CaptionsInsert
    , CaptionsList
    , CaptionsDownload
    , CaptionsDelete
    , CaptionsUpdate
    , I18nRegionsAPI
    , I18nRegionsList
    , VideoAbuseReportReasonsAPI
    , VideoAbuseReportReasonsList
    , ChannelsAPI
    , ChannelsList
    , ChannelsUpdate
    , ActivitiesAPI
    , ActivitiesInsert
    , ActivitiesList
    , WatermarksAPI
    , WatermarksSet
    , WatermarksUnset
    , CommentThreadsAPI
    , CommentThreadsInsert
    , CommentThreadsList
    , CommentThreadsUpdate
    , ThumbnailsAPI
    , ThumbnailsSet
    , VideoCategoriesAPI
    , VideoCategoriesList
    , PlaylistsAPI
    , PlaylistsInsert
    , PlaylistsList
    , PlaylistsDelete
    , PlaylistsUpdate
    , CommentsAPI
    , CommentsInsert
    , CommentsSetModerationStatus
    , CommentsList
    , CommentsMarkAsSpam
    , CommentsDelete
    , CommentsUpdate
    , PlaylistItemsAPI
    , PlaylistItemsInsert
    , PlaylistItemsList
    , PlaylistItemsDelete
    , PlaylistItemsUpdate
    , SubscriptionsAPI
    , SubscriptionsInsert
    , SubscriptionsList
    , SubscriptionsDelete
    , SearchAPI
    , SearchList
    , ChannelSectionsAPI
    , ChannelSectionsInsert
    , ChannelSectionsList
    , ChannelSectionsDelete
    , ChannelSectionsUpdate
    , LiveStreamsAPI
    , LiveStreamsInsert
    , LiveStreamsList
    , LiveStreamsDelete
    , LiveStreamsUpdate

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

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

{- $resources
TODO
-}

type YouTube =
     ChannelBannersAPI :<|>
       I18nLanguagesAPI :<|>
         VideosAPI :<|>
           LiveBroadcastsAPI :<|>
             CaptionsAPI :<|>
               I18nRegionsAPI :<|>
                 VideoAbuseReportReasonsAPI :<|>
                   ChannelsAPI :<|>
                     ActivitiesAPI :<|>
                       WatermarksAPI :<|>
                         CommentThreadsAPI :<|>
                           ThumbnailsAPI :<|>
                             VideoCategoriesAPI :<|>
                               PlaylistsAPI :<|>
                                 CommentsAPI :<|>
                                   PlaylistItemsAPI :<|>
                                     SubscriptionsAPI :<|>
                                       SearchAPI :<|>
                                         ChannelSectionsAPI :<|>
                                           LiveStreamsAPI :<|>
                                             GuideCategoriesAPI

type GuideCategoriesAPI = GuideCategoriesList

-- | Returns a list of categories that can be associated with YouTube
-- channels.
type GuideCategoriesList =
     "youtube" :> "v3" :> "guideCategories" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "regionCode" Text
       :> QueryParam "userIp" Text
       :> QueryParam "hl" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ChannelBannersAPI = ChannelBannersInsert

-- | Uploads a channel banner image to YouTube. This method represents the
-- first two steps in a three-step process to update the banner image for a
-- channel: - Call the channelBanners.insert method to upload the binary
-- image data to YouTube. The image must have a 16:9 aspect ratio and be at
-- least 2120x1192 pixels. - Extract the url property\'s value from the
-- response that the API returns for step 1. - Call the channels.update
-- method to update the channel\'s branding settings. Set the
-- brandingSettings.image.bannerExternalUrl property\'s value to the URL
-- obtained in step 2.
type ChannelBannersInsert =
     "youtube" :> "v3" :> "channelBanners" :> "insert" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type I18nLanguagesAPI = I18nLanguagesList

-- | Returns a list of application languages that the YouTube website
-- supports.
type I18nLanguagesList =
     "youtube" :> "v3" :> "i18nLanguages" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "hl" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type VideosAPI =
     VideosList :<|>
       VideosRate :<|>
         VideosReportAbuse :<|>
           VideosDelete :<|>
             VideosUpdate :<|> VideosGetRating :<|> VideosInsert

-- | Uploads a video to YouTube and optionally sets the video\'s metadata.
type VideosInsert =
     "youtube" :> "v3" :> "videos" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "stabilize" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "notifySubscribers" Bool
       :> QueryParam "autoLevels" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a list of videos that match the API request parameters.
type VideosList =
     "youtube" :> "v3" :> "videos" :>
       QueryParam "chart" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "regionCode" Text
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "myRating" Text
       :> QueryParam "hl" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "videoCategoryId" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Add a like or dislike rating to a video or remove a rating from a video.
type VideosRate =
     "youtube" :> "v3" :> "videos" :> "rate" :>
       QueryParam "quotaUser" Text
       :> QueryParam "rating" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Report abuse for a video.
type VideosReportAbuse =
     "youtube" :> "v3" :> "videos" :> "reportAbuse" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a YouTube video.
type VideosDelete =
     "youtube" :> "v3" :> "videos" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a video\'s metadata.
type VideosUpdate =
     "youtube" :> "v3" :> "videos" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves the ratings that the authorized user gave to a list of
-- specified videos.
type VideosGetRating =
     "youtube" :> "v3" :> "videos" :> "getRating" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type LiveBroadcastsAPI =
     LiveBroadcastsTransition :<|>
       LiveBroadcastsInsert :<|>
         LiveBroadcastsList :<|>
           LiveBroadcastsBind :<|>
             LiveBroadcastsBind_direct :<|>
               LiveBroadcastsDelete :<|>
                 LiveBroadcastsUpdate :<|> LiveBroadcastsControl

-- | Controls the settings for a slate that can be displayed in the broadcast
-- stream.
type LiveBroadcastsControl =
     "youtube" :> "v3" :> "liveBroadcasts" :> "control" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "id" Text
       :> QueryParam "displaySlate" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "walltime" UTCTime
       :> QueryParam "offsetTimeMs" Word64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Changes the status of a YouTube live broadcast and initiates any
-- processes associated with the new status. For example, when you
-- transition a broadcast\'s status to testing, YouTube starts to transmit
-- video to that broadcast\'s monitor stream. Before calling this method,
-- you should confirm that the value of the status.streamStatus property
-- for the stream bound to your broadcast is active.
type LiveBroadcastsTransition =
     "youtube" :> "v3" :> "liveBroadcasts" :> "transition"
       :> QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "broadcastStatus" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates a broadcast.
type LiveBroadcastsInsert =
     "youtube" :> "v3" :> "liveBroadcasts" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a list of YouTube broadcasts that match the API request
-- parameters.
type LiveBroadcastsList =
     "youtube" :> "v3" :> "liveBroadcasts" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "mine" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "broadcastStatus" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "id" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Binds a YouTube broadcast to a stream or removes an existing binding
-- between a broadcast and a stream. A broadcast can only be bound to one
-- video stream, though a video stream may be bound to more than one
-- broadcast.
type LiveBroadcastsBind =
     "youtube" :> "v3" :> "liveBroadcasts" :> "bind" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "streamId" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Binds a YouTube broadcast to a stream or removes an existing binding
-- between a broadcast and a stream. A broadcast can only be bound to one
-- video stream, though a video stream may be bound to more than one
-- broadcast.
type LiveBroadcastsBind_direct =
     "youtube" :> "v3" :> "liveBroadcasts" :> "bind" :>
       "direct"
       :> QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "streamId" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a broadcast.
type LiveBroadcastsDelete =
     "youtube" :> "v3" :> "liveBroadcasts" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a broadcast. For example, you could modify the broadcast
-- settings defined in the liveBroadcast resource\'s contentDetails object.
type LiveBroadcastsUpdate =
     "youtube" :> "v3" :> "liveBroadcasts" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CaptionsAPI =
     CaptionsList :<|>
       CaptionsDownload :<|>
         CaptionsDelete :<|>
           CaptionsUpdate :<|> CaptionsInsert

-- | Uploads a caption track.
type CaptionsInsert =
     "youtube" :> "v3" :> "captions" :>
       QueryParam "onBehalfOf" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "sync" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a list of caption tracks that are associated with a specified
-- video. Note that the API response does not contain the actual captions
-- and that the captions.download method provides the ability to retrieve a
-- caption track.
type CaptionsList =
     "youtube" :> "v3" :> "captions" :>
       QueryParam "onBehalfOf" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "videoId" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Downloads a caption track. The caption track is returned in its original
-- format unless the request specifies a value for the tfmt parameter and
-- in its original language unless the request specifies a value for the
-- tlang parameter.
type CaptionsDownload =
     "youtube" :> "v3" :> "captions" :> Capture "id" Text
       :> QueryParam "onBehalfOf" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "tlang" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "tfmt" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a specified caption track.
type CaptionsDelete =
     "youtube" :> "v3" :> "captions" :>
       QueryParam "onBehalfOf" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a caption track. When updating a caption track, you can change
-- the track\'s draft status, upload a new caption file for the track, or
-- both.
type CaptionsUpdate =
     "youtube" :> "v3" :> "captions" :>
       QueryParam "onBehalfOf" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "sync" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type I18nRegionsAPI = I18nRegionsList

-- | Returns a list of content regions that the YouTube website supports.
type I18nRegionsList =
     "youtube" :> "v3" :> "i18nRegions" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "hl" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type VideoAbuseReportReasonsAPI =
     VideoAbuseReportReasonsList

-- | Returns a list of abuse reasons that can be used for reporting abusive
-- videos.
type VideoAbuseReportReasonsList =
     "youtube" :> "v3" :> "videoAbuseReportReasons" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "hl" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ChannelsAPI = ChannelsUpdate :<|> ChannelsList

-- | Returns a collection of zero or more channel resources that match the
-- request criteria.
type ChannelsList =
     "youtube" :> "v3" :> "channels" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "mine" Bool
       :> QueryParam "forUsername" Text
       :> QueryParam "userIp" Text
       :> QueryParam "hl" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "categoryId" Text
       :> QueryParam "id" Text
       :> QueryParam "mySubscribers" Bool
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "managedByMe" Bool
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a channel\'s metadata. Note that this method currently only
-- supports updates to the channel resource\'s brandingSettings and
-- invideoPromotion objects and their child properties.
type ChannelsUpdate =
     "youtube" :> "v3" :> "channels" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ActivitiesAPI =
     ActivitiesList :<|> ActivitiesInsert

-- | Posts a bulletin for a specific channel. (The user submitting the
-- request must be authorized to act on the channel\'s behalf.) Note: Even
-- though an activity resource can contain information about actions like a
-- user rating a video or marking a video as a favorite, you need to use
-- other API methods to generate those activity resources. For example, you
-- would use the API\'s videos.rate() method to rate a video and the
-- playlistItems.insert() method to mark a video as a favorite.
type ActivitiesInsert =
     "youtube" :> "v3" :> "activities" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a list of channel activity events that match the request
-- criteria. For example, you can retrieve events associated with a
-- particular channel, events associated with the user\'s subscriptions and
-- Google+ friends, or the YouTube home page feed, which is customized for
-- each user.
type ActivitiesList =
     "youtube" :> "v3" :> "activities" :>
       QueryParam "publishedAfter" UTCTime
       :> QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "home" Bool
       :> QueryParam "mine" Bool
       :> QueryParam "regionCode" Text
       :> QueryParam "userIp" Text
       :> QueryParam "channelId" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "publishedBefore" UTCTime
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type WatermarksAPI =
     WatermarksUnset :<|> WatermarksSet

-- | Uploads a watermark image to YouTube and sets it for a channel.
type WatermarksSet =
     "youtube" :> "v3" :> "watermarks" :> "set" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "channelId" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a channel\'s watermark image.
type WatermarksUnset =
     "youtube" :> "v3" :> "watermarks" :> "unset" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "channelId" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CommentThreadsAPI =
     CommentThreadsList :<|>
       CommentThreadsUpdate :<|> CommentThreadsInsert

-- | Creates a new top-level comment. To add a reply to an existing comment,
-- use the comments.insert method instead.
type CommentThreadsInsert =
     "youtube" :> "v3" :> "commentThreads" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a list of comment threads that match the API request parameters.
type CommentThreadsList =
     "youtube" :> "v3" :> "commentThreads" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "moderationStatus" Text
       :> QueryParam "userIp" Text
       :> QueryParam "searchTerms" Text
       :> QueryParam "channelId" Text
       :> QueryParam "allThreadsRelatedToChannelId" Text
       :> QueryParam "videoId" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "order" Text
       :> QueryParam "textFormat" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Modifies the top-level comment in a comment thread.
type CommentThreadsUpdate =
     "youtube" :> "v3" :> "commentThreads" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ThumbnailsAPI = ThumbnailsSet

-- | Uploads a custom video thumbnail to YouTube and sets it for a video.
type ThumbnailsSet =
     "youtube" :> "v3" :> "thumbnails" :> "set" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "videoId" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type VideoCategoriesAPI = VideoCategoriesList

-- | Returns a list of categories that can be associated with YouTube videos.
type VideoCategoriesList =
     "youtube" :> "v3" :> "videoCategories" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "regionCode" Text
       :> QueryParam "userIp" Text
       :> QueryParam "hl" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PlaylistsAPI =
     PlaylistsList :<|>
       PlaylistsDelete :<|>
         PlaylistsUpdate :<|> PlaylistsInsert

-- | Creates a playlist.
type PlaylistsInsert =
     "youtube" :> "v3" :> "playlists" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a collection of playlists that match the API request parameters.
-- For example, you can retrieve all playlists that the authenticated user
-- owns, or you can retrieve one or more playlists by their unique IDs.
type PlaylistsList =
     "youtube" :> "v3" :> "playlists" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "mine" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "channelId" Text
       :> QueryParam "hl" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "id" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a playlist.
type PlaylistsDelete =
     "youtube" :> "v3" :> "playlists" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Modifies a playlist. For example, you could change a playlist\'s title,
-- description, or privacy status.
type PlaylistsUpdate =
     "youtube" :> "v3" :> "playlists" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CommentsAPI =
     CommentsSetModerationStatus :<|>
       CommentsList :<|>
         CommentsMarkAsSpam :<|>
           CommentsDelete :<|>
             CommentsUpdate :<|> CommentsInsert

-- | Creates a reply to an existing comment. Note: To create a top-level
-- comment, use the commentThreads.insert method.
type CommentsInsert =
     "youtube" :> "v3" :> "comments" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Sets the moderation status of one or more comments. The API request must
-- be authorized by the owner of the channel or video associated with the
-- comments.
type CommentsSetModerationStatus =
     "youtube" :> "v3" :> "comments" :>
       "setModerationStatus"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "banAuthor" Bool
       :> QueryParam "moderationStatus" Text
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a list of comments that match the API request parameters.
type CommentsList =
     "youtube" :> "v3" :> "comments" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "textFormat" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "parentId" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Expresses the caller\'s opinion that one or more comments should be
-- flagged as spam.
type CommentsMarkAsSpam =
     "youtube" :> "v3" :> "comments" :> "markAsSpam" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a comment.
type CommentsDelete =
     "youtube" :> "v3" :> "comments" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Modifies a comment.
type CommentsUpdate =
     "youtube" :> "v3" :> "comments" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PlaylistItemsAPI =
     PlaylistItemsList :<|>
       PlaylistItemsDelete :<|>
         PlaylistItemsUpdate :<|> PlaylistItemsInsert

-- | Adds a resource to a playlist.
type PlaylistItemsInsert =
     "youtube" :> "v3" :> "playlistItems" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a collection of playlist items that match the API request
-- parameters. You can retrieve all of the playlist items in a specified
-- playlist or retrieve one or more playlist items by their unique IDs.
type PlaylistItemsList =
     "youtube" :> "v3" :> "playlistItems" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "videoId" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "playlistId" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a playlist item.
type PlaylistItemsDelete =
     "youtube" :> "v3" :> "playlistItems" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Modifies a playlist item. For example, you could update the item\'s
-- position in the playlist.
type PlaylistItemsUpdate =
     "youtube" :> "v3" :> "playlistItems" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type SubscriptionsAPI =
     SubscriptionsList :<|>
       SubscriptionsDelete :<|> SubscriptionsInsert

-- | Adds a subscription for the authenticated user\'s channel.
type SubscriptionsInsert =
     "youtube" :> "v3" :> "subscriptions" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns subscription resources that match the API request criteria.
type SubscriptionsList =
     "youtube" :> "v3" :> "subscriptions" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "mine" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "channelId" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "id" Text
       :> QueryParam "mySubscribers" Bool
       :> QueryParam "forChannelId" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "order" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a subscription.
type SubscriptionsDelete =
     "youtube" :> "v3" :> "subscriptions" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type SearchAPI = SearchList

-- | Returns a collection of search results that match the query parameters
-- specified in the API request. By default, a search result set identifies
-- matching video, channel, and playlist resources, but you can also
-- configure queries to only retrieve a specific type of resource.
type SearchList =
     "youtube" :> "v3" :> "search" :>
       QueryParam "publishedAfter" UTCTime
       :> QueryParam "videoDefinition" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "videoDuration" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "videoCaption" Text
       :> QueryParam "videoLicense" Text
       :> QueryParam "regionCode" Text
       :> QueryParam "forDeveloper" Bool
       :> QueryParam "location" Text
       :> QueryParam "locationRadius" Text
       :> QueryParam "userIp" Text
       :> QueryParam "forContentOwner" Bool
       :> QueryParam "channelId" Text
       :> QueryParam "q" Text
       :> QueryParam "forMine" Bool
       :> QueryParam "videoEmbeddable" Text
       :> QueryParam "eventType" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "videoCategoryId" Text
       :> QueryParam "topicId" Text
       :> QueryParam "key" Text
       :> QueryParam "safeSearch" Text
       :> QueryParam "videoSyndicated" Text
       :> QueryParam "relatedToVideoId" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "type" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "channelType" Text
       :> QueryParam "relevanceLanguage" Text
       :> QueryParam "order" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "publishedBefore" UTCTime
       :> QueryParam "videoType" Text
       :> QueryParam "videoDimension" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ChannelSectionsAPI =
     ChannelSectionsList :<|>
       ChannelSectionsDelete :<|>
         ChannelSectionsUpdate :<|> ChannelSectionsInsert

-- | Adds a channelSection for the authenticated user\'s channel.
type ChannelSectionsInsert =
     "youtube" :> "v3" :> "channelSections" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns channelSection resources that match the API request criteria.
type ChannelSectionsList =
     "youtube" :> "v3" :> "channelSections" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "mine" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "channelId" Text
       :> QueryParam "hl" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a channelSection.
type ChannelSectionsDelete =
     "youtube" :> "v3" :> "channelSections" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update a channelSection.
type ChannelSectionsUpdate =
     "youtube" :> "v3" :> "channelSections" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type LiveStreamsAPI =
     LiveStreamsList :<|>
       LiveStreamsDelete :<|>
         LiveStreamsUpdate :<|> LiveStreamsInsert

-- | Creates a video stream. The stream enables you to send your video to
-- YouTube, which can then broadcast the video to your audience.
type LiveStreamsInsert =
     "youtube" :> "v3" :> "liveStreams" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a list of video streams that match the API request parameters.
type LiveStreamsList =
     "youtube" :> "v3" :> "liveStreams" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "mine" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "id" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a video stream.
type LiveStreamsDelete =
     "youtube" :> "v3" :> "liveStreams" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "id" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a video stream. If the properties that you want to change cannot
-- be updated, then you need to create a new stream with the proper
-- settings.
type LiveStreamsUpdate =
     "youtube" :> "v3" :> "liveStreams" :>
       QueryParam "quotaUser" Text
       :> QueryParam "part" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "onBehalfOfContentOwner" Text
       :> QueryParam "key" Text
       :> QueryParam "onBehalfOfContentOwnerChannel" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
