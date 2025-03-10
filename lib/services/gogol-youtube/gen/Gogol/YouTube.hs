{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.YouTube
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The YouTube Data API v3 is an API that provides access to YouTube data, such as videos, playlists, and channels.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference>
module Gogol.YouTube
  ( -- * Configuration
    youTubeService,

    -- * OAuth Scopes
    Youtube'FullControl,
    Youtube'ChannelMemberships'Creator,
    Youtube'ForceSsl,
    Youtube'Readonly,
    Youtube'Upload,
    Youtubepartner'FullControl,
    YoutubepartnerChannelAudit'FullControl,

    -- * Resources

    -- ** youtube.abuseReports.insert
    YouTubeAbuseReportsInsertResource,
    YouTubeAbuseReportsInsert (..),
    newYouTubeAbuseReportsInsert,

    -- ** youtube.activities.list
    YouTubeActivitiesListResource,
    YouTubeActivitiesList (..),
    newYouTubeActivitiesList,

    -- ** youtube.captions.delete
    YouTubeCaptionsDeleteResource,
    YouTubeCaptionsDelete (..),
    newYouTubeCaptionsDelete,

    -- ** youtube.captions.download
    YouTubeCaptionsDownloadResource,
    YouTubeCaptionsDownload (..),
    newYouTubeCaptionsDownload,

    -- ** youtube.captions.insert
    YouTubeCaptionsInsertResource,
    YouTubeCaptionsInsert (..),
    newYouTubeCaptionsInsert,

    -- ** youtube.captions.list
    YouTubeCaptionsListResource,
    YouTubeCaptionsList (..),
    newYouTubeCaptionsList,

    -- ** youtube.captions.update
    YouTubeCaptionsUpdateResource,
    YouTubeCaptionsUpdate (..),
    newYouTubeCaptionsUpdate,

    -- ** youtube.channelBanners.insert
    YouTubeChannelBannersInsertResource,
    YouTubeChannelBannersInsert (..),
    newYouTubeChannelBannersInsert,

    -- ** youtube.channelSections.delete
    YouTubeChannelSectionsDeleteResource,
    YouTubeChannelSectionsDelete (..),
    newYouTubeChannelSectionsDelete,

    -- ** youtube.channelSections.insert
    YouTubeChannelSectionsInsertResource,
    YouTubeChannelSectionsInsert (..),
    newYouTubeChannelSectionsInsert,

    -- ** youtube.channelSections.list
    YouTubeChannelSectionsListResource,
    YouTubeChannelSectionsList (..),
    newYouTubeChannelSectionsList,

    -- ** youtube.channelSections.update
    YouTubeChannelSectionsUpdateResource,
    YouTubeChannelSectionsUpdate (..),
    newYouTubeChannelSectionsUpdate,

    -- ** youtube.channels.list
    YouTubeChannelsListResource,
    YouTubeChannelsList (..),
    newYouTubeChannelsList,

    -- ** youtube.channels.update
    YouTubeChannelsUpdateResource,
    YouTubeChannelsUpdate (..),
    newYouTubeChannelsUpdate,

    -- ** youtube.commentThreads.insert
    YouTubeCommentThreadsInsertResource,
    YouTubeCommentThreadsInsert (..),
    newYouTubeCommentThreadsInsert,

    -- ** youtube.commentThreads.list
    YouTubeCommentThreadsListResource,
    YouTubeCommentThreadsList (..),
    newYouTubeCommentThreadsList,

    -- ** youtube.comments.delete
    YouTubeCommentsDeleteResource,
    YouTubeCommentsDelete (..),
    newYouTubeCommentsDelete,

    -- ** youtube.comments.insert
    YouTubeCommentsInsertResource,
    YouTubeCommentsInsert (..),
    newYouTubeCommentsInsert,

    -- ** youtube.comments.list
    YouTubeCommentsListResource,
    YouTubeCommentsList (..),
    newYouTubeCommentsList,

    -- ** youtube.comments.markAsSpam
    YouTubeCommentsMarkAsSpamResource,
    YouTubeCommentsMarkAsSpam (..),
    newYouTubeCommentsMarkAsSpam,

    -- ** youtube.comments.setModerationStatus
    YouTubeCommentsSetModerationStatusResource,
    YouTubeCommentsSetModerationStatus (..),
    newYouTubeCommentsSetModerationStatus,

    -- ** youtube.comments.update
    YouTubeCommentsUpdateResource,
    YouTubeCommentsUpdate (..),
    newYouTubeCommentsUpdate,

    -- ** youtube.i18nLanguages.list
    YouTubeI18nLanguagesListResource,
    YouTubeI18nLanguagesList (..),
    newYouTubeI18nLanguagesList,

    -- ** youtube.i18nRegions.list
    YouTubeI18nRegionsListResource,
    YouTubeI18nRegionsList (..),
    newYouTubeI18nRegionsList,

    -- ** youtube.liveBroadcasts.bind
    YouTubeLiveBroadcastsBindResource,
    YouTubeLiveBroadcastsBind (..),
    newYouTubeLiveBroadcastsBind,

    -- ** youtube.liveBroadcasts.delete
    YouTubeLiveBroadcastsDeleteResource,
    YouTubeLiveBroadcastsDelete (..),
    newYouTubeLiveBroadcastsDelete,

    -- ** youtube.liveBroadcasts.insert
    YouTubeLiveBroadcastsInsertResource,
    YouTubeLiveBroadcastsInsert (..),
    newYouTubeLiveBroadcastsInsert,

    -- ** youtube.liveBroadcasts.insertCuepoint
    YouTubeLiveBroadcastsInsertCuepointResource,
    YouTubeLiveBroadcastsInsertCuepoint (..),
    newYouTubeLiveBroadcastsInsertCuepoint,

    -- ** youtube.liveBroadcasts.list
    YouTubeLiveBroadcastsListResource,
    YouTubeLiveBroadcastsList (..),
    newYouTubeLiveBroadcastsList,

    -- ** youtube.liveBroadcasts.transition
    YouTubeLiveBroadcastsTransitionResource,
    YouTubeLiveBroadcastsTransition (..),
    newYouTubeLiveBroadcastsTransition,

    -- ** youtube.liveBroadcasts.update
    YouTubeLiveBroadcastsUpdateResource,
    YouTubeLiveBroadcastsUpdate (..),
    newYouTubeLiveBroadcastsUpdate,

    -- ** youtube.liveChatBans.delete
    YouTubeLiveChatBansDeleteResource,
    YouTubeLiveChatBansDelete (..),
    newYouTubeLiveChatBansDelete,

    -- ** youtube.liveChatBans.insert
    YouTubeLiveChatBansInsertResource,
    YouTubeLiveChatBansInsert (..),
    newYouTubeLiveChatBansInsert,

    -- ** youtube.liveChatMessages.delete
    YouTubeLiveChatMessagesDeleteResource,
    YouTubeLiveChatMessagesDelete (..),
    newYouTubeLiveChatMessagesDelete,

    -- ** youtube.liveChatMessages.insert
    YouTubeLiveChatMessagesInsertResource,
    YouTubeLiveChatMessagesInsert (..),
    newYouTubeLiveChatMessagesInsert,

    -- ** youtube.liveChatMessages.list
    YouTubeLiveChatMessagesListResource,
    YouTubeLiveChatMessagesList (..),
    newYouTubeLiveChatMessagesList,

    -- ** youtube.liveChatMessages.transition
    YouTubeLiveChatMessagesTransitionResource,
    YouTubeLiveChatMessagesTransition (..),
    newYouTubeLiveChatMessagesTransition,

    -- ** youtube.liveChatModerators.delete
    YouTubeLiveChatModeratorsDeleteResource,
    YouTubeLiveChatModeratorsDelete (..),
    newYouTubeLiveChatModeratorsDelete,

    -- ** youtube.liveChatModerators.insert
    YouTubeLiveChatModeratorsInsertResource,
    YouTubeLiveChatModeratorsInsert (..),
    newYouTubeLiveChatModeratorsInsert,

    -- ** youtube.liveChatModerators.list
    YouTubeLiveChatModeratorsListResource,
    YouTubeLiveChatModeratorsList (..),
    newYouTubeLiveChatModeratorsList,

    -- ** youtube.liveStreams.delete
    YouTubeLiveStreamsDeleteResource,
    YouTubeLiveStreamsDelete (..),
    newYouTubeLiveStreamsDelete,

    -- ** youtube.liveStreams.insert
    YouTubeLiveStreamsInsertResource,
    YouTubeLiveStreamsInsert (..),
    newYouTubeLiveStreamsInsert,

    -- ** youtube.liveStreams.list
    YouTubeLiveStreamsListResource,
    YouTubeLiveStreamsList (..),
    newYouTubeLiveStreamsList,

    -- ** youtube.liveStreams.update
    YouTubeLiveStreamsUpdateResource,
    YouTubeLiveStreamsUpdate (..),
    newYouTubeLiveStreamsUpdate,

    -- ** youtube.members.list
    YouTubeMembersListResource,
    YouTubeMembersList (..),
    newYouTubeMembersList,

    -- ** youtube.membershipsLevels.list
    YouTubeMembershipsLevelsListResource,
    YouTubeMembershipsLevelsList (..),
    newYouTubeMembershipsLevelsList,

    -- ** youtube.playlistImages.delete
    YouTubePlaylistImagesDeleteResource,
    YouTubePlaylistImagesDelete (..),
    newYouTubePlaylistImagesDelete,

    -- ** youtube.playlistImages.insert
    YouTubePlaylistImagesInsertResource,
    YouTubePlaylistImagesInsert (..),
    newYouTubePlaylistImagesInsert,

    -- ** youtube.playlistImages.list
    YouTubePlaylistImagesListResource,
    YouTubePlaylistImagesList (..),
    newYouTubePlaylistImagesList,

    -- ** youtube.playlistImages.update
    YouTubePlaylistImagesUpdateResource,
    YouTubePlaylistImagesUpdate (..),
    newYouTubePlaylistImagesUpdate,

    -- ** youtube.playlistItems.delete
    YouTubePlaylistItemsDeleteResource,
    YouTubePlaylistItemsDelete (..),
    newYouTubePlaylistItemsDelete,

    -- ** youtube.playlistItems.insert
    YouTubePlaylistItemsInsertResource,
    YouTubePlaylistItemsInsert (..),
    newYouTubePlaylistItemsInsert,

    -- ** youtube.playlistItems.list
    YouTubePlaylistItemsListResource,
    YouTubePlaylistItemsList (..),
    newYouTubePlaylistItemsList,

    -- ** youtube.playlistItems.update
    YouTubePlaylistItemsUpdateResource,
    YouTubePlaylistItemsUpdate (..),
    newYouTubePlaylistItemsUpdate,

    -- ** youtube.playlists.delete
    YouTubePlaylistsDeleteResource,
    YouTubePlaylistsDelete (..),
    newYouTubePlaylistsDelete,

    -- ** youtube.playlists.insert
    YouTubePlaylistsInsertResource,
    YouTubePlaylistsInsert (..),
    newYouTubePlaylistsInsert,

    -- ** youtube.playlists.list
    YouTubePlaylistsListResource,
    YouTubePlaylistsList (..),
    newYouTubePlaylistsList,

    -- ** youtube.playlists.update
    YouTubePlaylistsUpdateResource,
    YouTubePlaylistsUpdate (..),
    newYouTubePlaylistsUpdate,

    -- ** youtube.search.list
    YouTubeSearchListResource,
    YouTubeSearchList (..),
    newYouTubeSearchList,

    -- ** youtube.subscriptions.delete
    YouTubeSubscriptionsDeleteResource,
    YouTubeSubscriptionsDelete (..),
    newYouTubeSubscriptionsDelete,

    -- ** youtube.subscriptions.insert
    YouTubeSubscriptionsInsertResource,
    YouTubeSubscriptionsInsert (..),
    newYouTubeSubscriptionsInsert,

    -- ** youtube.subscriptions.list
    YouTubeSubscriptionsListResource,
    YouTubeSubscriptionsList (..),
    newYouTubeSubscriptionsList,

    -- ** youtube.superChatEvents.list
    YouTubeSuperChatEventsListResource,
    YouTubeSuperChatEventsList (..),
    newYouTubeSuperChatEventsList,

    -- ** youtube.tests.insert
    YouTubeTestsInsertResource,
    YouTubeTestsInsert (..),
    newYouTubeTestsInsert,

    -- ** youtube.thirdPartyLinks.delete
    YouTubeThirdPartyLinksDeleteResource,
    YouTubeThirdPartyLinksDelete (..),
    newYouTubeThirdPartyLinksDelete,

    -- ** youtube.thirdPartyLinks.insert
    YouTubeThirdPartyLinksInsertResource,
    YouTubeThirdPartyLinksInsert (..),
    newYouTubeThirdPartyLinksInsert,

    -- ** youtube.thirdPartyLinks.list
    YouTubeThirdPartyLinksListResource,
    YouTubeThirdPartyLinksList (..),
    newYouTubeThirdPartyLinksList,

    -- ** youtube.thirdPartyLinks.update
    YouTubeThirdPartyLinksUpdateResource,
    YouTubeThirdPartyLinksUpdate (..),
    newYouTubeThirdPartyLinksUpdate,

    -- ** youtube.thumbnails.set
    YouTubeThumbnailsSetResource,
    YouTubeThumbnailsSet (..),
    newYouTubeThumbnailsSet,

    -- ** youtube.videoAbuseReportReasons.list
    YouTubeVideoAbuseReportReasonsListResource,
    YouTubeVideoAbuseReportReasonsList (..),
    newYouTubeVideoAbuseReportReasonsList,

    -- ** youtube.videoCategories.list
    YouTubeVideoCategoriesListResource,
    YouTubeVideoCategoriesList (..),
    newYouTubeVideoCategoriesList,

    -- ** youtube.videoTrainability.get
    YouTubeVideoTrainabilityGetResource,
    YouTubeVideoTrainabilityGet (..),
    newYouTubeVideoTrainabilityGet,

    -- ** youtube.videos.delete
    YouTubeVideosDeleteResource,
    YouTubeVideosDelete (..),
    newYouTubeVideosDelete,

    -- ** youtube.videos.getRating
    YouTubeVideosGetRatingResource,
    YouTubeVideosGetRating (..),
    newYouTubeVideosGetRating,

    -- ** youtube.videos.insert
    YouTubeVideosInsertResource,
    YouTubeVideosInsert (..),
    newYouTubeVideosInsert,

    -- ** youtube.videos.list
    YouTubeVideosListResource,
    YouTubeVideosList (..),
    newYouTubeVideosList,

    -- ** youtube.videos.rate
    YouTubeVideosRateResource,
    YouTubeVideosRate (..),
    newYouTubeVideosRate,

    -- ** youtube.videos.reportAbuse
    YouTubeVideosReportAbuseResource,
    YouTubeVideosReportAbuse (..),
    newYouTubeVideosReportAbuse,

    -- ** youtube.videos.update
    YouTubeVideosUpdateResource,
    YouTubeVideosUpdate (..),
    newYouTubeVideosUpdate,

    -- ** youtube.watermarks.set
    YouTubeWatermarksSetResource,
    YouTubeWatermarksSet (..),
    newYouTubeWatermarksSet,

    -- ** youtube.watermarks.unset
    YouTubeWatermarksUnsetResource,
    YouTubeWatermarksUnset (..),
    newYouTubeWatermarksUnset,

    -- ** youtube.youtube.v3.updateCommentThreads
    YouTubeYoutubeV3UpdateCommentThreadsResource,
    YouTubeYoutubeV3UpdateCommentThreads (..),
    newYouTubeYoutubeV3UpdateCommentThreads,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AbuseReport
    AbuseReport (..),
    newAbuseReport,

    -- ** AbuseType
    AbuseType (..),
    newAbuseType,

    -- ** AccessPolicy
    AccessPolicy (..),
    newAccessPolicy,

    -- ** Activity
    Activity (..),
    newActivity,

    -- ** ActivityContentDetails
    ActivityContentDetails (..),
    newActivityContentDetails,

    -- ** ActivityContentDetailsBulletin
    ActivityContentDetailsBulletin (..),
    newActivityContentDetailsBulletin,

    -- ** ActivityContentDetailsChannelItem
    ActivityContentDetailsChannelItem (..),
    newActivityContentDetailsChannelItem,

    -- ** ActivityContentDetailsComment
    ActivityContentDetailsComment (..),
    newActivityContentDetailsComment,

    -- ** ActivityContentDetailsFavorite
    ActivityContentDetailsFavorite (..),
    newActivityContentDetailsFavorite,

    -- ** ActivityContentDetailsLike
    ActivityContentDetailsLike (..),
    newActivityContentDetailsLike,

    -- ** ActivityContentDetailsPlaylistItem
    ActivityContentDetailsPlaylistItem (..),
    newActivityContentDetailsPlaylistItem,

    -- ** ActivityContentDetailsPromotedItem
    ActivityContentDetailsPromotedItem (..),
    newActivityContentDetailsPromotedItem,

    -- ** ActivityContentDetailsPromotedItem_CtaType
    ActivityContentDetailsPromotedItem_CtaType (..),

    -- ** ActivityContentDetailsRecommendation
    ActivityContentDetailsRecommendation (..),
    newActivityContentDetailsRecommendation,

    -- ** ActivityContentDetailsRecommendation_Reason
    ActivityContentDetailsRecommendation_Reason (..),

    -- ** ActivityContentDetailsSocial
    ActivityContentDetailsSocial (..),
    newActivityContentDetailsSocial,

    -- ** ActivityContentDetailsSocial_Type
    ActivityContentDetailsSocial_Type (..),

    -- ** ActivityContentDetailsSubscription
    ActivityContentDetailsSubscription (..),
    newActivityContentDetailsSubscription,

    -- ** ActivityContentDetailsUpload
    ActivityContentDetailsUpload (..),
    newActivityContentDetailsUpload,

    -- ** ActivityListResponse
    ActivityListResponse (..),
    newActivityListResponse,

    -- ** ActivitySnippet
    ActivitySnippet (..),
    newActivitySnippet,

    -- ** ActivitySnippet_Type
    ActivitySnippet_Type (..),

    -- ** Caption
    Caption (..),
    newCaption,

    -- ** CaptionListResponse
    CaptionListResponse (..),
    newCaptionListResponse,

    -- ** CaptionSnippet
    CaptionSnippet (..),
    newCaptionSnippet,

    -- ** CaptionSnippet_AudioTrackType
    CaptionSnippet_AudioTrackType (..),

    -- ** CaptionSnippet_FailureReason
    CaptionSnippet_FailureReason (..),

    -- ** CaptionSnippet_Status
    CaptionSnippet_Status (..),

    -- ** CaptionSnippet_TrackKind
    CaptionSnippet_TrackKind (..),

    -- ** CdnSettings
    CdnSettings (..),
    newCdnSettings,

    -- ** CdnSettings_FrameRate
    CdnSettings_FrameRate (..),

    -- ** CdnSettings_IngestionType
    CdnSettings_IngestionType (..),

    -- ** CdnSettings_Resolution
    CdnSettings_Resolution (..),

    -- ** Channel
    Channel (..),
    newChannel,

    -- ** Channel_Localizations
    Channel_Localizations (..),
    newChannel_Localizations,

    -- ** ChannelAuditDetails
    ChannelAuditDetails (..),
    newChannelAuditDetails,

    -- ** ChannelBannerResource
    ChannelBannerResource (..),
    newChannelBannerResource,

    -- ** ChannelBrandingSettings
    ChannelBrandingSettings (..),
    newChannelBrandingSettings,

    -- ** ChannelContentDetails
    ChannelContentDetails (..),
    newChannelContentDetails,

    -- ** ChannelContentDetails_RelatedPlaylists
    ChannelContentDetails_RelatedPlaylists (..),
    newChannelContentDetails_RelatedPlaylists,

    -- ** ChannelContentOwnerDetails
    ChannelContentOwnerDetails (..),
    newChannelContentOwnerDetails,

    -- ** ChannelConversionPing
    ChannelConversionPing (..),
    newChannelConversionPing,

    -- ** ChannelConversionPing_Context
    ChannelConversionPing_Context (..),

    -- ** ChannelConversionPings
    ChannelConversionPings (..),
    newChannelConversionPings,

    -- ** ChannelListResponse
    ChannelListResponse (..),
    newChannelListResponse,

    -- ** ChannelLocalization
    ChannelLocalization (..),
    newChannelLocalization,

    -- ** ChannelProfileDetails
    ChannelProfileDetails (..),
    newChannelProfileDetails,

    -- ** ChannelSection
    ChannelSection (..),
    newChannelSection,

    -- ** ChannelSection_Localizations
    ChannelSection_Localizations (..),
    newChannelSection_Localizations,

    -- ** ChannelSectionContentDetails
    ChannelSectionContentDetails (..),
    newChannelSectionContentDetails,

    -- ** ChannelSectionListResponse
    ChannelSectionListResponse (..),
    newChannelSectionListResponse,

    -- ** ChannelSectionLocalization
    ChannelSectionLocalization (..),
    newChannelSectionLocalization,

    -- ** ChannelSectionSnippet
    ChannelSectionSnippet (..),
    newChannelSectionSnippet,

    -- ** ChannelSectionSnippet_Style
    ChannelSectionSnippet_Style (..),

    -- ** ChannelSectionSnippet_Type
    ChannelSectionSnippet_Type (..),

    -- ** ChannelSectionTargeting
    ChannelSectionTargeting (..),
    newChannelSectionTargeting,

    -- ** ChannelSettings
    ChannelSettings (..),
    newChannelSettings,

    -- ** ChannelSnippet
    ChannelSnippet (..),
    newChannelSnippet,

    -- ** ChannelStatistics
    ChannelStatistics (..),
    newChannelStatistics,

    -- ** ChannelStatus
    ChannelStatus (..),
    newChannelStatus,

    -- ** ChannelStatus_LongUploadsStatus
    ChannelStatus_LongUploadsStatus (..),

    -- ** ChannelStatus_PrivacyStatus
    ChannelStatus_PrivacyStatus (..),

    -- ** ChannelToStoreLinkDetails
    ChannelToStoreLinkDetails (..),
    newChannelToStoreLinkDetails,

    -- ** ChannelToStoreLinkDetailsBillingDetails
    ChannelToStoreLinkDetailsBillingDetails (..),
    newChannelToStoreLinkDetailsBillingDetails,

    -- ** ChannelToStoreLinkDetailsBillingDetails_BillingStatus
    ChannelToStoreLinkDetailsBillingDetails_BillingStatus (..),

    -- ** ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails
    ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails (..),
    newChannelToStoreLinkDetailsMerchantAffiliateProgramDetails,

    -- ** ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status
    ChannelToStoreLinkDetailsMerchantAffiliateProgramDetails_Status (..),

    -- ** ChannelTopicDetails
    ChannelTopicDetails (..),
    newChannelTopicDetails,

    -- ** Comment
    Comment (..),
    newComment,

    -- ** CommentListResponse
    CommentListResponse (..),
    newCommentListResponse,

    -- ** CommentSnippet
    CommentSnippet (..),
    newCommentSnippet,

    -- ** CommentSnippet_ModerationStatus
    CommentSnippet_ModerationStatus (..),

    -- ** CommentSnippet_ViewerRating
    CommentSnippet_ViewerRating (..),

    -- ** CommentSnippetAuthorChannelId
    CommentSnippetAuthorChannelId (..),
    newCommentSnippetAuthorChannelId,

    -- ** CommentThread
    CommentThread (..),
    newCommentThread,

    -- ** CommentThreadListResponse
    CommentThreadListResponse (..),
    newCommentThreadListResponse,

    -- ** CommentThreadReplies
    CommentThreadReplies (..),
    newCommentThreadReplies,

    -- ** CommentThreadSnippet
    CommentThreadSnippet (..),
    newCommentThreadSnippet,

    -- ** ContentRating
    ContentRating (..),
    newContentRating,

    -- ** ContentRating_AcbRating
    ContentRating_AcbRating (..),

    -- ** ContentRating_AgcomRating
    ContentRating_AgcomRating (..),

    -- ** ContentRating_AnatelRating
    ContentRating_AnatelRating (..),

    -- ** ContentRating_BbfcRating
    ContentRating_BbfcRating (..),

    -- ** ContentRating_BfvcRating
    ContentRating_BfvcRating (..),

    -- ** ContentRating_BmukkRating
    ContentRating_BmukkRating (..),

    -- ** ContentRating_CatvRating
    ContentRating_CatvRating (..),

    -- ** ContentRating_CatvfrRating
    ContentRating_CatvfrRating (..),

    -- ** ContentRating_CbfcRating
    ContentRating_CbfcRating (..),

    -- ** ContentRating_CccRating
    ContentRating_CccRating (..),

    -- ** ContentRating_CceRating
    ContentRating_CceRating (..),

    -- ** ContentRating_ChfilmRating
    ContentRating_ChfilmRating (..),

    -- ** ContentRating_ChvrsRating
    ContentRating_ChvrsRating (..),

    -- ** ContentRating_CicfRating
    ContentRating_CicfRating (..),

    -- ** ContentRating_CnaRating
    ContentRating_CnaRating (..),

    -- ** ContentRating_CncRating
    ContentRating_CncRating (..),

    -- ** ContentRating_CsaRating
    ContentRating_CsaRating (..),

    -- ** ContentRating_CscfRating
    ContentRating_CscfRating (..),

    -- ** ContentRating_CzfilmRating
    ContentRating_CzfilmRating (..),

    -- ** ContentRating_DjctqRating
    ContentRating_DjctqRating (..),

    -- ** ContentRating_DjctqRatingReasonsItem
    ContentRating_DjctqRatingReasonsItem (..),

    -- ** ContentRating_EcbmctRating
    ContentRating_EcbmctRating (..),

    -- ** ContentRating_EefilmRating
    ContentRating_EefilmRating (..),

    -- ** ContentRating_EgfilmRating
    ContentRating_EgfilmRating (..),

    -- ** ContentRating_EirinRating
    ContentRating_EirinRating (..),

    -- ** ContentRating_FcbmRating
    ContentRating_FcbmRating (..),

    -- ** ContentRating_FcoRating
    ContentRating_FcoRating (..),

    -- ** ContentRating_FmocRating
    ContentRating_FmocRating (..),

    -- ** ContentRating_FpbRating
    ContentRating_FpbRating (..),

    -- ** ContentRating_FpbRatingReasonsItem
    ContentRating_FpbRatingReasonsItem (..),

    -- ** ContentRating_FskRating
    ContentRating_FskRating (..),

    -- ** ContentRating_GrfilmRating
    ContentRating_GrfilmRating (..),

    -- ** ContentRating_IcaaRating
    ContentRating_IcaaRating (..),

    -- ** ContentRating_IfcoRating
    ContentRating_IfcoRating (..),

    -- ** ContentRating_IlfilmRating
    ContentRating_IlfilmRating (..),

    -- ** ContentRating_IncaaRating
    ContentRating_IncaaRating (..),

    -- ** ContentRating_KfcbRating
    ContentRating_KfcbRating (..),

    -- ** ContentRating_KijkwijzerRating
    ContentRating_KijkwijzerRating (..),

    -- ** ContentRating_KmrbRating
    ContentRating_KmrbRating (..),

    -- ** ContentRating_LsfRating
    ContentRating_LsfRating (..),

    -- ** ContentRating_MccaaRating
    ContentRating_MccaaRating (..),

    -- ** ContentRating_MccypRating
    ContentRating_MccypRating (..),

    -- ** ContentRating_McstRating
    ContentRating_McstRating (..),

    -- ** ContentRating_MdaRating
    ContentRating_MdaRating (..),

    -- ** ContentRating_MedietilsynetRating
    ContentRating_MedietilsynetRating (..),

    -- ** ContentRating_MekuRating
    ContentRating_MekuRating (..),

    -- ** ContentRating_MenaMpaaRating
    ContentRating_MenaMpaaRating (..),

    -- ** ContentRating_MibacRating
    ContentRating_MibacRating (..),

    -- ** ContentRating_MocRating
    ContentRating_MocRating (..),

    -- ** ContentRating_MoctwRating
    ContentRating_MoctwRating (..),

    -- ** ContentRating_MpaaRating
    ContentRating_MpaaRating (..),

    -- ** ContentRating_MpaatRating
    ContentRating_MpaatRating (..),

    -- ** ContentRating_MtrcbRating
    ContentRating_MtrcbRating (..),

    -- ** ContentRating_NbcRating
    ContentRating_NbcRating (..),

    -- ** ContentRating_NbcplRating
    ContentRating_NbcplRating (..),

    -- ** ContentRating_NfrcRating
    ContentRating_NfrcRating (..),

    -- ** ContentRating_NfvcbRating
    ContentRating_NfvcbRating (..),

    -- ** ContentRating_NkclvRating
    ContentRating_NkclvRating (..),

    -- ** ContentRating_NmcRating
    ContentRating_NmcRating (..),

    -- ** ContentRating_OflcRating
    ContentRating_OflcRating (..),

    -- ** ContentRating_PefilmRating
    ContentRating_PefilmRating (..),

    -- ** ContentRating_RcnofRating
    ContentRating_RcnofRating (..),

    -- ** ContentRating_ResorteviolenciaRating
    ContentRating_ResorteviolenciaRating (..),

    -- ** ContentRating_RtcRating
    ContentRating_RtcRating (..),

    -- ** ContentRating_RteRating
    ContentRating_RteRating (..),

    -- ** ContentRating_RussiaRating
    ContentRating_RussiaRating (..),

    -- ** ContentRating_SkfilmRating
    ContentRating_SkfilmRating (..),

    -- ** ContentRating_SmaisRating
    ContentRating_SmaisRating (..),

    -- ** ContentRating_SmsaRating
    ContentRating_SmsaRating (..),

    -- ** ContentRating_TvpgRating
    ContentRating_TvpgRating (..),

    -- ** ContentRating_YtRating
    ContentRating_YtRating (..),

    -- ** Cuepoint
    Cuepoint (..),
    newCuepoint,

    -- ** Cuepoint_CueType
    Cuepoint_CueType (..),

    -- ** CuepointSchedule
    CuepointSchedule (..),
    newCuepointSchedule,

    -- ** CuepointSchedule_ScheduleStrategy
    CuepointSchedule_ScheduleStrategy (..),

    -- ** Entity
    Entity (..),
    newEntity,

    -- ** GeoPoint
    GeoPoint (..),
    newGeoPoint,

    -- ** I18nLanguage
    I18nLanguage (..),
    newI18nLanguage,

    -- ** I18nLanguageListResponse
    I18nLanguageListResponse (..),
    newI18nLanguageListResponse,

    -- ** I18nLanguageSnippet
    I18nLanguageSnippet (..),
    newI18nLanguageSnippet,

    -- ** I18nRegion
    I18nRegion (..),
    newI18nRegion,

    -- ** I18nRegionListResponse
    I18nRegionListResponse (..),
    newI18nRegionListResponse,

    -- ** I18nRegionSnippet
    I18nRegionSnippet (..),
    newI18nRegionSnippet,

    -- ** ImageSettings
    ImageSettings (..),
    newImageSettings,

    -- ** IngestionInfo
    IngestionInfo (..),
    newIngestionInfo,

    -- ** InvideoBranding
    InvideoBranding (..),
    newInvideoBranding,

    -- ** InvideoPosition
    InvideoPosition (..),
    newInvideoPosition,

    -- ** InvideoPosition_CornerPosition
    InvideoPosition_CornerPosition (..),

    -- ** InvideoPosition_Type
    InvideoPosition_Type (..),

    -- ** InvideoTiming
    InvideoTiming (..),
    newInvideoTiming,

    -- ** InvideoTiming_Type
    InvideoTiming_Type (..),

    -- ** LanguageTag
    LanguageTag (..),
    newLanguageTag,

    -- ** LevelDetails
    LevelDetails (..),
    newLevelDetails,

    -- ** LiveBroadcast
    LiveBroadcast (..),
    newLiveBroadcast,

    -- ** LiveBroadcastContentDetails
    LiveBroadcastContentDetails (..),
    newLiveBroadcastContentDetails,

    -- ** LiveBroadcastContentDetails_ClosedCaptionsType
    LiveBroadcastContentDetails_ClosedCaptionsType (..),

    -- ** LiveBroadcastContentDetails_LatencyPreference
    LiveBroadcastContentDetails_LatencyPreference (..),

    -- ** LiveBroadcastContentDetails_Projection
    LiveBroadcastContentDetails_Projection (..),

    -- ** LiveBroadcastContentDetails_StereoLayout
    LiveBroadcastContentDetails_StereoLayout (..),

    -- ** LiveBroadcastListResponse
    LiveBroadcastListResponse (..),
    newLiveBroadcastListResponse,

    -- ** LiveBroadcastMonetizationDetails
    LiveBroadcastMonetizationDetails (..),
    newLiveBroadcastMonetizationDetails,

    -- ** LiveBroadcastSnippet
    LiveBroadcastSnippet (..),
    newLiveBroadcastSnippet,

    -- ** LiveBroadcastStatistics
    LiveBroadcastStatistics (..),
    newLiveBroadcastStatistics,

    -- ** LiveBroadcastStatus
    LiveBroadcastStatus (..),
    newLiveBroadcastStatus,

    -- ** LiveBroadcastStatus_LifeCycleStatus
    LiveBroadcastStatus_LifeCycleStatus (..),

    -- ** LiveBroadcastStatus_LiveBroadcastPriority
    LiveBroadcastStatus_LiveBroadcastPriority (..),

    -- ** LiveBroadcastStatus_PrivacyStatus
    LiveBroadcastStatus_PrivacyStatus (..),

    -- ** LiveBroadcastStatus_RecordingStatus
    LiveBroadcastStatus_RecordingStatus (..),

    -- ** LiveChatBan
    LiveChatBan (..),
    newLiveChatBan,

    -- ** LiveChatBanSnippet
    LiveChatBanSnippet (..),
    newLiveChatBanSnippet,

    -- ** LiveChatBanSnippet_Type
    LiveChatBanSnippet_Type (..),

    -- ** LiveChatFanFundingEventDetails
    LiveChatFanFundingEventDetails (..),
    newLiveChatFanFundingEventDetails,

    -- ** LiveChatGiftMembershipReceivedDetails
    LiveChatGiftMembershipReceivedDetails (..),
    newLiveChatGiftMembershipReceivedDetails,

    -- ** LiveChatMemberMilestoneChatDetails
    LiveChatMemberMilestoneChatDetails (..),
    newLiveChatMemberMilestoneChatDetails,

    -- ** LiveChatMembershipGiftingDetails
    LiveChatMembershipGiftingDetails (..),
    newLiveChatMembershipGiftingDetails,

    -- ** LiveChatMessage
    LiveChatMessage (..),
    newLiveChatMessage,

    -- ** LiveChatMessageAuthorDetails
    LiveChatMessageAuthorDetails (..),
    newLiveChatMessageAuthorDetails,

    -- ** LiveChatMessageDeletedDetails
    LiveChatMessageDeletedDetails (..),
    newLiveChatMessageDeletedDetails,

    -- ** LiveChatMessageListResponse
    LiveChatMessageListResponse (..),
    newLiveChatMessageListResponse,

    -- ** LiveChatMessageRetractedDetails
    LiveChatMessageRetractedDetails (..),
    newLiveChatMessageRetractedDetails,

    -- ** LiveChatMessageSnippet
    LiveChatMessageSnippet (..),
    newLiveChatMessageSnippet,

    -- ** LiveChatMessageSnippet_Type
    LiveChatMessageSnippet_Type (..),

    -- ** LiveChatModerator
    LiveChatModerator (..),
    newLiveChatModerator,

    -- ** LiveChatModeratorListResponse
    LiveChatModeratorListResponse (..),
    newLiveChatModeratorListResponse,

    -- ** LiveChatModeratorSnippet
    LiveChatModeratorSnippet (..),
    newLiveChatModeratorSnippet,

    -- ** LiveChatNewSponsorDetails
    LiveChatNewSponsorDetails (..),
    newLiveChatNewSponsorDetails,

    -- ** LiveChatPollDetails
    LiveChatPollDetails (..),
    newLiveChatPollDetails,

    -- ** LiveChatPollDetails_Status
    LiveChatPollDetails_Status (..),

    -- ** LiveChatPollDetailsPollMetadata
    LiveChatPollDetailsPollMetadata (..),
    newLiveChatPollDetailsPollMetadata,

    -- ** LiveChatPollDetailsPollMetadataPollOption
    LiveChatPollDetailsPollMetadataPollOption (..),
    newLiveChatPollDetailsPollMetadataPollOption,

    -- ** LiveChatSuperChatDetails
    LiveChatSuperChatDetails (..),
    newLiveChatSuperChatDetails,

    -- ** LiveChatSuperStickerDetails
    LiveChatSuperStickerDetails (..),
    newLiveChatSuperStickerDetails,

    -- ** LiveChatTextMessageDetails
    LiveChatTextMessageDetails (..),
    newLiveChatTextMessageDetails,

    -- ** LiveChatUserBannedMessageDetails
    LiveChatUserBannedMessageDetails (..),
    newLiveChatUserBannedMessageDetails,

    -- ** LiveChatUserBannedMessageDetails_BanType
    LiveChatUserBannedMessageDetails_BanType (..),

    -- ** LiveStream
    LiveStream (..),
    newLiveStream,

    -- ** LiveStreamConfigurationIssue
    LiveStreamConfigurationIssue (..),
    newLiveStreamConfigurationIssue,

    -- ** LiveStreamConfigurationIssue_Severity
    LiveStreamConfigurationIssue_Severity (..),

    -- ** LiveStreamConfigurationIssue_Type
    LiveStreamConfigurationIssue_Type (..),

    -- ** LiveStreamContentDetails
    LiveStreamContentDetails (..),
    newLiveStreamContentDetails,

    -- ** LiveStreamHealthStatus
    LiveStreamHealthStatus (..),
    newLiveStreamHealthStatus,

    -- ** LiveStreamHealthStatus_Status
    LiveStreamHealthStatus_Status (..),

    -- ** LiveStreamListResponse
    LiveStreamListResponse (..),
    newLiveStreamListResponse,

    -- ** LiveStreamSnippet
    LiveStreamSnippet (..),
    newLiveStreamSnippet,

    -- ** LiveStreamStatus
    LiveStreamStatus (..),
    newLiveStreamStatus,

    -- ** LiveStreamStatus_StreamStatus
    LiveStreamStatus_StreamStatus (..),

    -- ** LocalizedProperty
    LocalizedProperty (..),
    newLocalizedProperty,

    -- ** LocalizedString
    LocalizedString (..),
    newLocalizedString,

    -- ** Member
    Member (..),
    newMember,

    -- ** MemberListResponse
    MemberListResponse (..),
    newMemberListResponse,

    -- ** MemberSnippet
    MemberSnippet (..),
    newMemberSnippet,

    -- ** MembershipsDetails
    MembershipsDetails (..),
    newMembershipsDetails,

    -- ** MembershipsDuration
    MembershipsDuration (..),
    newMembershipsDuration,

    -- ** MembershipsDurationAtLevel
    MembershipsDurationAtLevel (..),
    newMembershipsDurationAtLevel,

    -- ** MembershipsLevel
    MembershipsLevel (..),
    newMembershipsLevel,

    -- ** MembershipsLevelListResponse
    MembershipsLevelListResponse (..),
    newMembershipsLevelListResponse,

    -- ** MembershipsLevelSnippet
    MembershipsLevelSnippet (..),
    newMembershipsLevelSnippet,

    -- ** MonitorStreamInfo
    MonitorStreamInfo (..),
    newMonitorStreamInfo,

    -- ** PageInfo
    PageInfo (..),
    newPageInfo,

    -- ** Playlist
    Playlist (..),
    newPlaylist,

    -- ** Playlist_Localizations
    Playlist_Localizations (..),
    newPlaylist_Localizations,

    -- ** PlaylistContentDetails
    PlaylistContentDetails (..),
    newPlaylistContentDetails,

    -- ** PlaylistImage
    PlaylistImage (..),
    newPlaylistImage,

    -- ** PlaylistImageListResponse
    PlaylistImageListResponse (..),
    newPlaylistImageListResponse,

    -- ** PlaylistImageSnippet
    PlaylistImageSnippet (..),
    newPlaylistImageSnippet,

    -- ** PlaylistImageSnippet_Type
    PlaylistImageSnippet_Type (..),

    -- ** PlaylistItem
    PlaylistItem (..),
    newPlaylistItem,

    -- ** PlaylistItemContentDetails
    PlaylistItemContentDetails (..),
    newPlaylistItemContentDetails,

    -- ** PlaylistItemListResponse
    PlaylistItemListResponse (..),
    newPlaylistItemListResponse,

    -- ** PlaylistItemSnippet
    PlaylistItemSnippet (..),
    newPlaylistItemSnippet,

    -- ** PlaylistItemStatus
    PlaylistItemStatus (..),
    newPlaylistItemStatus,

    -- ** PlaylistItemStatus_PrivacyStatus
    PlaylistItemStatus_PrivacyStatus (..),

    -- ** PlaylistListResponse
    PlaylistListResponse (..),
    newPlaylistListResponse,

    -- ** PlaylistLocalization
    PlaylistLocalization (..),
    newPlaylistLocalization,

    -- ** PlaylistPlayer
    PlaylistPlayer (..),
    newPlaylistPlayer,

    -- ** PlaylistSnippet
    PlaylistSnippet (..),
    newPlaylistSnippet,

    -- ** PlaylistStatus
    PlaylistStatus (..),
    newPlaylistStatus,

    -- ** PlaylistStatus_PodcastStatus
    PlaylistStatus_PodcastStatus (..),

    -- ** PlaylistStatus_PrivacyStatus
    PlaylistStatus_PrivacyStatus (..),

    -- ** PropertyValue
    PropertyValue (..),
    newPropertyValue,

    -- ** RelatedEntity
    RelatedEntity (..),
    newRelatedEntity,

    -- ** ResourceId
    ResourceId (..),
    newResourceId,

    -- ** SearchListResponse
    SearchListResponse (..),
    newSearchListResponse,

    -- ** SearchResult
    SearchResult (..),
    newSearchResult,

    -- ** SearchResultSnippet
    SearchResultSnippet (..),
    newSearchResultSnippet,

    -- ** SearchResultSnippet_LiveBroadcastContent
    SearchResultSnippet_LiveBroadcastContent (..),

    -- ** Subscription
    Subscription (..),
    newSubscription,

    -- ** SubscriptionContentDetails
    SubscriptionContentDetails (..),
    newSubscriptionContentDetails,

    -- ** SubscriptionContentDetails_ActivityType
    SubscriptionContentDetails_ActivityType (..),

    -- ** SubscriptionListResponse
    SubscriptionListResponse (..),
    newSubscriptionListResponse,

    -- ** SubscriptionSnippet
    SubscriptionSnippet (..),
    newSubscriptionSnippet,

    -- ** SubscriptionSubscriberSnippet
    SubscriptionSubscriberSnippet (..),
    newSubscriptionSubscriberSnippet,

    -- ** SuperChatEvent
    SuperChatEvent (..),
    newSuperChatEvent,

    -- ** SuperChatEventListResponse
    SuperChatEventListResponse (..),
    newSuperChatEventListResponse,

    -- ** SuperChatEventSnippet
    SuperChatEventSnippet (..),
    newSuperChatEventSnippet,

    -- ** SuperStickerMetadata
    SuperStickerMetadata (..),
    newSuperStickerMetadata,

    -- ** TestItem
    TestItem (..),
    newTestItem,

    -- ** TestItemTestItemSnippet
    TestItemTestItemSnippet (..),
    newTestItemTestItemSnippet,

    -- ** ThirdPartyLink
    ThirdPartyLink (..),
    newThirdPartyLink,

    -- ** ThirdPartyLinkListResponse
    ThirdPartyLinkListResponse (..),
    newThirdPartyLinkListResponse,

    -- ** ThirdPartyLinkSnippet
    ThirdPartyLinkSnippet (..),
    newThirdPartyLinkSnippet,

    -- ** ThirdPartyLinkSnippet_Type
    ThirdPartyLinkSnippet_Type (..),

    -- ** ThirdPartyLinkStatus
    ThirdPartyLinkStatus (..),
    newThirdPartyLinkStatus,

    -- ** ThirdPartyLinkStatus_LinkStatus
    ThirdPartyLinkStatus_LinkStatus (..),

    -- ** Thumbnail
    Thumbnail (..),
    newThumbnail,

    -- ** ThumbnailDetails
    ThumbnailDetails (..),
    newThumbnailDetails,

    -- ** ThumbnailSetResponse
    ThumbnailSetResponse (..),
    newThumbnailSetResponse,

    -- ** TokenPagination
    TokenPagination (..),
    newTokenPagination,

    -- ** Video
    Video (..),
    newVideo,

    -- ** Video_Localizations
    Video_Localizations (..),
    newVideo_Localizations,

    -- ** VideoAbuseReport
    VideoAbuseReport (..),
    newVideoAbuseReport,

    -- ** VideoAbuseReportReason
    VideoAbuseReportReason (..),
    newVideoAbuseReportReason,

    -- ** VideoAbuseReportReasonListResponse
    VideoAbuseReportReasonListResponse (..),
    newVideoAbuseReportReasonListResponse,

    -- ** VideoAbuseReportReasonSnippet
    VideoAbuseReportReasonSnippet (..),
    newVideoAbuseReportReasonSnippet,

    -- ** VideoAbuseReportSecondaryReason
    VideoAbuseReportSecondaryReason (..),
    newVideoAbuseReportSecondaryReason,

    -- ** VideoAgeGating
    VideoAgeGating (..),
    newVideoAgeGating,

    -- ** VideoAgeGating_VideoGameRating
    VideoAgeGating_VideoGameRating (..),

    -- ** VideoCategory
    VideoCategory (..),
    newVideoCategory,

    -- ** VideoCategoryListResponse
    VideoCategoryListResponse (..),
    newVideoCategoryListResponse,

    -- ** VideoCategorySnippet
    VideoCategorySnippet (..),
    newVideoCategorySnippet,

    -- ** VideoContentDetails
    VideoContentDetails (..),
    newVideoContentDetails,

    -- ** VideoContentDetails_Caption
    VideoContentDetails_Caption (..),

    -- ** VideoContentDetails_Definition
    VideoContentDetails_Definition (..),

    -- ** VideoContentDetails_Projection
    VideoContentDetails_Projection (..),

    -- ** VideoContentDetailsRegionRestriction
    VideoContentDetailsRegionRestriction (..),
    newVideoContentDetailsRegionRestriction,

    -- ** VideoFileDetails
    VideoFileDetails (..),
    newVideoFileDetails,

    -- ** VideoFileDetails_FileType
    VideoFileDetails_FileType (..),

    -- ** VideoFileDetailsAudioStream
    VideoFileDetailsAudioStream (..),
    newVideoFileDetailsAudioStream,

    -- ** VideoFileDetailsVideoStream
    VideoFileDetailsVideoStream (..),
    newVideoFileDetailsVideoStream,

    -- ** VideoFileDetailsVideoStream_Rotation
    VideoFileDetailsVideoStream_Rotation (..),

    -- ** VideoGetRatingResponse
    VideoGetRatingResponse (..),
    newVideoGetRatingResponse,

    -- ** VideoListResponse
    VideoListResponse (..),
    newVideoListResponse,

    -- ** VideoLiveStreamingDetails
    VideoLiveStreamingDetails (..),
    newVideoLiveStreamingDetails,

    -- ** VideoLocalization
    VideoLocalization (..),
    newVideoLocalization,

    -- ** VideoMonetizationDetails
    VideoMonetizationDetails (..),
    newVideoMonetizationDetails,

    -- ** VideoPaidProductPlacementDetails
    VideoPaidProductPlacementDetails (..),
    newVideoPaidProductPlacementDetails,

    -- ** VideoPlayer
    VideoPlayer (..),
    newVideoPlayer,

    -- ** VideoProcessingDetails
    VideoProcessingDetails (..),
    newVideoProcessingDetails,

    -- ** VideoProcessingDetails_ProcessingFailureReason
    VideoProcessingDetails_ProcessingFailureReason (..),

    -- ** VideoProcessingDetails_ProcessingStatus
    VideoProcessingDetails_ProcessingStatus (..),

    -- ** VideoProcessingDetailsProcessingProgress
    VideoProcessingDetailsProcessingProgress (..),
    newVideoProcessingDetailsProcessingProgress,

    -- ** VideoProjectDetails
    VideoProjectDetails (..),
    newVideoProjectDetails,

    -- ** VideoRating
    VideoRating (..),
    newVideoRating,

    -- ** VideoRating_Rating
    VideoRating_Rating (..),

    -- ** VideoRecordingDetails
    VideoRecordingDetails (..),
    newVideoRecordingDetails,

    -- ** VideoSnippet
    VideoSnippet (..),
    newVideoSnippet,

    -- ** VideoSnippet_LiveBroadcastContent
    VideoSnippet_LiveBroadcastContent (..),

    -- ** VideoStatistics
    VideoStatistics (..),
    newVideoStatistics,

    -- ** VideoStatus
    VideoStatus (..),
    newVideoStatus,

    -- ** VideoStatus_FailureReason
    VideoStatus_FailureReason (..),

    -- ** VideoStatus_License
    VideoStatus_License (..),

    -- ** VideoStatus_PrivacyStatus
    VideoStatus_PrivacyStatus (..),

    -- ** VideoStatus_RejectionReason
    VideoStatus_RejectionReason (..),

    -- ** VideoStatus_UploadStatus
    VideoStatus_UploadStatus (..),

    -- ** VideoSuggestions
    VideoSuggestions (..),
    newVideoSuggestions,

    -- ** VideoSuggestions_EditorSuggestionsItem
    VideoSuggestions_EditorSuggestionsItem (..),

    -- ** VideoSuggestions_ProcessingErrorsItem
    VideoSuggestions_ProcessingErrorsItem (..),

    -- ** VideoSuggestions_ProcessingHintsItem
    VideoSuggestions_ProcessingHintsItem (..),

    -- ** VideoSuggestions_ProcessingWarningsItem
    VideoSuggestions_ProcessingWarningsItem (..),

    -- ** VideoSuggestionsTagSuggestion
    VideoSuggestionsTagSuggestion (..),
    newVideoSuggestionsTagSuggestion,

    -- ** VideoTopicDetails
    VideoTopicDetails (..),
    newVideoTopicDetails,

    -- ** VideoTrainability
    VideoTrainability (..),
    newVideoTrainability,

    -- ** WatchSettings
    WatchSettings (..),
    newWatchSettings,

    -- ** CommentThreadsListModerationStatus
    CommentThreadsListModerationStatus (..),

    -- ** CommentThreadsListOrder
    CommentThreadsListOrder (..),

    -- ** CommentThreadsListTextFormat
    CommentThreadsListTextFormat (..),

    -- ** CommentsListTextFormat
    CommentsListTextFormat (..),

    -- ** CommentsSetModerationStatusModerationStatus
    CommentsSetModerationStatusModerationStatus (..),

    -- ** LiveBroadcastsListBroadcastStatus
    LiveBroadcastsListBroadcastStatus (..),

    -- ** LiveBroadcastsListBroadcastType
    LiveBroadcastsListBroadcastType (..),

    -- ** LiveBroadcastsTransitionBroadcastStatus
    LiveBroadcastsTransitionBroadcastStatus (..),

    -- ** LiveChatMessagesTransitionStatus
    LiveChatMessagesTransitionStatus (..),

    -- ** MembersListMode
    MembersListMode (..),

    -- ** SearchListChannelType
    SearchListChannelType (..),

    -- ** SearchListEventType
    SearchListEventType (..),

    -- ** SearchListOrder
    SearchListOrder (..),

    -- ** SearchListSafeSearch
    SearchListSafeSearch (..),

    -- ** SearchListVideoCaption
    SearchListVideoCaption (..),

    -- ** SearchListVideoDefinition
    SearchListVideoDefinition (..),

    -- ** SearchListVideoDimension
    SearchListVideoDimension (..),

    -- ** SearchListVideoDuration
    SearchListVideoDuration (..),

    -- ** SearchListVideoEmbeddable
    SearchListVideoEmbeddable (..),

    -- ** SearchListVideoLicense
    SearchListVideoLicense (..),

    -- ** SearchListVideoPaidProductPlacement
    SearchListVideoPaidProductPlacement (..),

    -- ** SearchListVideoSyndicated
    SearchListVideoSyndicated (..),

    -- ** SearchListVideoType
    SearchListVideoType (..),

    -- ** SubscriptionsListOrder
    SubscriptionsListOrder (..),

    -- ** ThirdPartyLinksDeleteType
    ThirdPartyLinksDeleteType (..),

    -- ** ThirdPartyLinksListType
    ThirdPartyLinksListType (..),

    -- ** VideosListChart
    VideosListChart (..),

    -- ** VideosListMyRating
    VideosListMyRating (..),

    -- ** VideosRateRating
    VideosRateRating (..),
  )
where

import Gogol.YouTube.AbuseReports.Insert
import Gogol.YouTube.Activities.List
import Gogol.YouTube.Captions.Delete
import Gogol.YouTube.Captions.Download
import Gogol.YouTube.Captions.Insert
import Gogol.YouTube.Captions.List
import Gogol.YouTube.Captions.Update
import Gogol.YouTube.ChannelBanners.Insert
import Gogol.YouTube.ChannelSections.Delete
import Gogol.YouTube.ChannelSections.Insert
import Gogol.YouTube.ChannelSections.List
import Gogol.YouTube.ChannelSections.Update
import Gogol.YouTube.Channels.List
import Gogol.YouTube.Channels.Update
import Gogol.YouTube.CommentThreads.Insert
import Gogol.YouTube.CommentThreads.List
import Gogol.YouTube.Comments.Delete
import Gogol.YouTube.Comments.Insert
import Gogol.YouTube.Comments.List
import Gogol.YouTube.Comments.MarkAsSpam
import Gogol.YouTube.Comments.SetModerationStatus
import Gogol.YouTube.Comments.Update
import Gogol.YouTube.I18nLanguages.List
import Gogol.YouTube.I18nRegions.List
import Gogol.YouTube.LiveBroadcasts.Bind
import Gogol.YouTube.LiveBroadcasts.Delete
import Gogol.YouTube.LiveBroadcasts.Insert
import Gogol.YouTube.LiveBroadcasts.InsertCuepoint
import Gogol.YouTube.LiveBroadcasts.List
import Gogol.YouTube.LiveBroadcasts.Transition
import Gogol.YouTube.LiveBroadcasts.Update
import Gogol.YouTube.LiveChatBans.Delete
import Gogol.YouTube.LiveChatBans.Insert
import Gogol.YouTube.LiveChatMessages.Delete
import Gogol.YouTube.LiveChatMessages.Insert
import Gogol.YouTube.LiveChatMessages.List
import Gogol.YouTube.LiveChatMessages.Transition
import Gogol.YouTube.LiveChatModerators.Delete
import Gogol.YouTube.LiveChatModerators.Insert
import Gogol.YouTube.LiveChatModerators.List
import Gogol.YouTube.LiveStreams.Delete
import Gogol.YouTube.LiveStreams.Insert
import Gogol.YouTube.LiveStreams.List
import Gogol.YouTube.LiveStreams.Update
import Gogol.YouTube.Members.List
import Gogol.YouTube.MembershipsLevels.List
import Gogol.YouTube.PlaylistImages.Delete
import Gogol.YouTube.PlaylistImages.Insert
import Gogol.YouTube.PlaylistImages.List
import Gogol.YouTube.PlaylistImages.Update
import Gogol.YouTube.PlaylistItems.Delete
import Gogol.YouTube.PlaylistItems.Insert
import Gogol.YouTube.PlaylistItems.List
import Gogol.YouTube.PlaylistItems.Update
import Gogol.YouTube.Playlists.Delete
import Gogol.YouTube.Playlists.Insert
import Gogol.YouTube.Playlists.List
import Gogol.YouTube.Playlists.Update
import Gogol.YouTube.Search.List
import Gogol.YouTube.Subscriptions.Delete
import Gogol.YouTube.Subscriptions.Insert
import Gogol.YouTube.Subscriptions.List
import Gogol.YouTube.SuperChatEvents.List
import Gogol.YouTube.Tests.Insert
import Gogol.YouTube.ThirdPartyLinks.Delete
import Gogol.YouTube.ThirdPartyLinks.Insert
import Gogol.YouTube.ThirdPartyLinks.List
import Gogol.YouTube.ThirdPartyLinks.Update
import Gogol.YouTube.Thumbnails.Set
import Gogol.YouTube.Types
import Gogol.YouTube.V3.UpdateCommentThreads
import Gogol.YouTube.VideoAbuseReportReasons.List
import Gogol.YouTube.VideoCategories.List
import Gogol.YouTube.VideoTrainability.Get
import Gogol.YouTube.Videos.Delete
import Gogol.YouTube.Videos.GetRating
import Gogol.YouTube.Videos.Insert
import Gogol.YouTube.Videos.List
import Gogol.YouTube.Videos.Rate
import Gogol.YouTube.Videos.ReportAbuse
import Gogol.YouTube.Videos.Update
import Gogol.YouTube.Watermarks.Set
import Gogol.YouTube.Watermarks.Unset
