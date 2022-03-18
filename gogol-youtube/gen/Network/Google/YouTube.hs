{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.YouTube
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The YouTube Data API v3 is an API that provides access to YouTube data, such as videos, playlists, and channels.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference>
module Network.Google.YouTube
  ( -- * Configuration
    youTubeService,

    -- * OAuth Scopes
    youTubeScope,
    youTubeChannelMembershipsCreatorScope,
    youTubeForceSslScope,
    youTubeReadOnlyScope,
    youTubeUploadScope,
    youtubepartnerScope,
    youtubepartnerChannelAuditScope,

    -- * Resources

    -- ** youtube.abuseReports.insert
    YouTubeAbuseReportsInsertResource,
    newYouTubeAbuseReportsInsert,
    YouTubeAbuseReportsInsert,

    -- ** youtube.activities.list
    YouTubeActivitiesListResource,
    newYouTubeActivitiesList,
    YouTubeActivitiesList,

    -- ** youtube.captions.delete
    YouTubeCaptionsDeleteResource,
    newYouTubeCaptionsDelete,
    YouTubeCaptionsDelete,

    -- ** youtube.captions.download
    YouTubeCaptionsDownloadResource,
    newYouTubeCaptionsDownload,
    YouTubeCaptionsDownload,

    -- ** youtube.captions.insert
    YouTubeCaptionsInsertResource,
    newYouTubeCaptionsInsert,
    YouTubeCaptionsInsert,

    -- ** youtube.captions.list
    YouTubeCaptionsListResource,
    newYouTubeCaptionsList,
    YouTubeCaptionsList,

    -- ** youtube.captions.update
    YouTubeCaptionsUpdateResource,
    newYouTubeCaptionsUpdate,
    YouTubeCaptionsUpdate,

    -- ** youtube.channelBanners.insert
    YouTubeChannelBannersInsertResource,
    newYouTubeChannelBannersInsert,
    YouTubeChannelBannersInsert,

    -- ** youtube.channelSections.delete
    YouTubeChannelSectionsDeleteResource,
    newYouTubeChannelSectionsDelete,
    YouTubeChannelSectionsDelete,

    -- ** youtube.channelSections.insert
    YouTubeChannelSectionsInsertResource,
    newYouTubeChannelSectionsInsert,
    YouTubeChannelSectionsInsert,

    -- ** youtube.channelSections.list
    YouTubeChannelSectionsListResource,
    newYouTubeChannelSectionsList,
    YouTubeChannelSectionsList,

    -- ** youtube.channelSections.update
    YouTubeChannelSectionsUpdateResource,
    newYouTubeChannelSectionsUpdate,
    YouTubeChannelSectionsUpdate,

    -- ** youtube.channels.list
    YouTubeChannelsListResource,
    newYouTubeChannelsList,
    YouTubeChannelsList,

    -- ** youtube.channels.update
    YouTubeChannelsUpdateResource,
    newYouTubeChannelsUpdate,
    YouTubeChannelsUpdate,

    -- ** youtube.commentThreads.insert
    YouTubeCommentThreadsInsertResource,
    newYouTubeCommentThreadsInsert,
    YouTubeCommentThreadsInsert,

    -- ** youtube.commentThreads.list
    YouTubeCommentThreadsListResource,
    newYouTubeCommentThreadsList,
    YouTubeCommentThreadsList,

    -- ** youtube.comments.delete
    YouTubeCommentsDeleteResource,
    newYouTubeCommentsDelete,
    YouTubeCommentsDelete,

    -- ** youtube.comments.insert
    YouTubeCommentsInsertResource,
    newYouTubeCommentsInsert,
    YouTubeCommentsInsert,

    -- ** youtube.comments.list
    YouTubeCommentsListResource,
    newYouTubeCommentsList,
    YouTubeCommentsList,

    -- ** youtube.comments.markAsSpam
    YouTubeCommentsMarkAsSpamResource,
    newYouTubeCommentsMarkAsSpam,
    YouTubeCommentsMarkAsSpam,

    -- ** youtube.comments.setModerationStatus
    YouTubeCommentsSetModerationStatusResource,
    newYouTubeCommentsSetModerationStatus,
    YouTubeCommentsSetModerationStatus,

    -- ** youtube.comments.update
    YouTubeCommentsUpdateResource,
    newYouTubeCommentsUpdate,
    YouTubeCommentsUpdate,

    -- ** youtube.i18nLanguages.list
    YouTubeI18nLanguagesListResource,
    newYouTubeI18nLanguagesList,
    YouTubeI18nLanguagesList,

    -- ** youtube.i18nRegions.list
    YouTubeI18nRegionsListResource,
    newYouTubeI18nRegionsList,
    YouTubeI18nRegionsList,

    -- ** youtube.liveBroadcasts.bind
    YouTubeLiveBroadcastsBindResource,
    newYouTubeLiveBroadcastsBind,
    YouTubeLiveBroadcastsBind,

    -- ** youtube.liveBroadcasts.delete
    YouTubeLiveBroadcastsDeleteResource,
    newYouTubeLiveBroadcastsDelete,
    YouTubeLiveBroadcastsDelete,

    -- ** youtube.liveBroadcasts.insert
    YouTubeLiveBroadcastsInsertResource,
    newYouTubeLiveBroadcastsInsert,
    YouTubeLiveBroadcastsInsert,

    -- ** youtube.liveBroadcasts.list
    YouTubeLiveBroadcastsListResource,
    newYouTubeLiveBroadcastsList,
    YouTubeLiveBroadcastsList,

    -- ** youtube.liveBroadcasts.transition
    YouTubeLiveBroadcastsTransitionResource,
    newYouTubeLiveBroadcastsTransition,
    YouTubeLiveBroadcastsTransition,

    -- ** youtube.liveBroadcasts.update
    YouTubeLiveBroadcastsUpdateResource,
    newYouTubeLiveBroadcastsUpdate,
    YouTubeLiveBroadcastsUpdate,

    -- ** youtube.liveChatBans.delete
    YouTubeLiveChatBansDeleteResource,
    newYouTubeLiveChatBansDelete,
    YouTubeLiveChatBansDelete,

    -- ** youtube.liveChatBans.insert
    YouTubeLiveChatBansInsertResource,
    newYouTubeLiveChatBansInsert,
    YouTubeLiveChatBansInsert,

    -- ** youtube.liveChatMessages.delete
    YouTubeLiveChatMessagesDeleteResource,
    newYouTubeLiveChatMessagesDelete,
    YouTubeLiveChatMessagesDelete,

    -- ** youtube.liveChatMessages.insert
    YouTubeLiveChatMessagesInsertResource,
    newYouTubeLiveChatMessagesInsert,
    YouTubeLiveChatMessagesInsert,

    -- ** youtube.liveChatMessages.list
    YouTubeLiveChatMessagesListResource,
    newYouTubeLiveChatMessagesList,
    YouTubeLiveChatMessagesList,

    -- ** youtube.liveChatModerators.delete
    YouTubeLiveChatModeratorsDeleteResource,
    newYouTubeLiveChatModeratorsDelete,
    YouTubeLiveChatModeratorsDelete,

    -- ** youtube.liveChatModerators.insert
    YouTubeLiveChatModeratorsInsertResource,
    newYouTubeLiveChatModeratorsInsert,
    YouTubeLiveChatModeratorsInsert,

    -- ** youtube.liveChatModerators.list
    YouTubeLiveChatModeratorsListResource,
    newYouTubeLiveChatModeratorsList,
    YouTubeLiveChatModeratorsList,

    -- ** youtube.liveStreams.delete
    YouTubeLiveStreamsDeleteResource,
    newYouTubeLiveStreamsDelete,
    YouTubeLiveStreamsDelete,

    -- ** youtube.liveStreams.insert
    YouTubeLiveStreamsInsertResource,
    newYouTubeLiveStreamsInsert,
    YouTubeLiveStreamsInsert,

    -- ** youtube.liveStreams.list
    YouTubeLiveStreamsListResource,
    newYouTubeLiveStreamsList,
    YouTubeLiveStreamsList,

    -- ** youtube.liveStreams.update
    YouTubeLiveStreamsUpdateResource,
    newYouTubeLiveStreamsUpdate,
    YouTubeLiveStreamsUpdate,

    -- ** youtube.members.list
    YouTubeMembersListResource,
    newYouTubeMembersList,
    YouTubeMembersList,

    -- ** youtube.membershipsLevels.list
    YouTubeMembershipsLevelsListResource,
    newYouTubeMembershipsLevelsList,
    YouTubeMembershipsLevelsList,

    -- ** youtube.playlistItems.delete
    YouTubePlaylistItemsDeleteResource,
    newYouTubePlaylistItemsDelete,
    YouTubePlaylistItemsDelete,

    -- ** youtube.playlistItems.insert
    YouTubePlaylistItemsInsertResource,
    newYouTubePlaylistItemsInsert,
    YouTubePlaylistItemsInsert,

    -- ** youtube.playlistItems.list
    YouTubePlaylistItemsListResource,
    newYouTubePlaylistItemsList,
    YouTubePlaylistItemsList,

    -- ** youtube.playlistItems.update
    YouTubePlaylistItemsUpdateResource,
    newYouTubePlaylistItemsUpdate,
    YouTubePlaylistItemsUpdate,

    -- ** youtube.playlists.delete
    YouTubePlaylistsDeleteResource,
    newYouTubePlaylistsDelete,
    YouTubePlaylistsDelete,

    -- ** youtube.playlists.insert
    YouTubePlaylistsInsertResource,
    newYouTubePlaylistsInsert,
    YouTubePlaylistsInsert,

    -- ** youtube.playlists.list
    YouTubePlaylistsListResource,
    newYouTubePlaylistsList,
    YouTubePlaylistsList,

    -- ** youtube.playlists.update
    YouTubePlaylistsUpdateResource,
    newYouTubePlaylistsUpdate,
    YouTubePlaylistsUpdate,

    -- ** youtube.search.list
    YouTubeSearchListResource,
    newYouTubeSearchList,
    YouTubeSearchList,

    -- ** youtube.subscriptions.delete
    YouTubeSubscriptionsDeleteResource,
    newYouTubeSubscriptionsDelete,
    YouTubeSubscriptionsDelete,

    -- ** youtube.subscriptions.insert
    YouTubeSubscriptionsInsertResource,
    newYouTubeSubscriptionsInsert,
    YouTubeSubscriptionsInsert,

    -- ** youtube.subscriptions.list
    YouTubeSubscriptionsListResource,
    newYouTubeSubscriptionsList,
    YouTubeSubscriptionsList,

    -- ** youtube.superChatEvents.list
    YouTubeSuperChatEventsListResource,
    newYouTubeSuperChatEventsList,
    YouTubeSuperChatEventsList,

    -- ** youtube.tests.insert
    YouTubeTestsInsertResource,
    newYouTubeTestsInsert,
    YouTubeTestsInsert,

    -- ** youtube.thirdPartyLinks.delete
    YouTubeThirdPartyLinksDeleteResource,
    newYouTubeThirdPartyLinksDelete,
    YouTubeThirdPartyLinksDelete,

    -- ** youtube.thirdPartyLinks.insert
    YouTubeThirdPartyLinksInsertResource,
    newYouTubeThirdPartyLinksInsert,
    YouTubeThirdPartyLinksInsert,

    -- ** youtube.thirdPartyLinks.list
    YouTubeThirdPartyLinksListResource,
    newYouTubeThirdPartyLinksList,
    YouTubeThirdPartyLinksList,

    -- ** youtube.thirdPartyLinks.update
    YouTubeThirdPartyLinksUpdateResource,
    newYouTubeThirdPartyLinksUpdate,
    YouTubeThirdPartyLinksUpdate,

    -- ** youtube.thumbnails.set
    YouTubeThumbnailsSetResource,
    newYouTubeThumbnailsSet,
    YouTubeThumbnailsSet,

    -- ** youtube.videoAbuseReportReasons.list
    YouTubeVideoAbuseReportReasonsListResource,
    newYouTubeVideoAbuseReportReasonsList,
    YouTubeVideoAbuseReportReasonsList,

    -- ** youtube.videoCategories.list
    YouTubeVideoCategoriesListResource,
    newYouTubeVideoCategoriesList,
    YouTubeVideoCategoriesList,

    -- ** youtube.videos.delete
    YouTubeVideosDeleteResource,
    newYouTubeVideosDelete,
    YouTubeVideosDelete,

    -- ** youtube.videos.getRating
    YouTubeVideosGetRatingResource,
    newYouTubeVideosGetRating,
    YouTubeVideosGetRating,

    -- ** youtube.videos.insert
    YouTubeVideosInsertResource,
    newYouTubeVideosInsert,
    YouTubeVideosInsert,

    -- ** youtube.videos.list
    YouTubeVideosListResource,
    newYouTubeVideosList,
    YouTubeVideosList,

    -- ** youtube.videos.rate
    YouTubeVideosRateResource,
    newYouTubeVideosRate,
    YouTubeVideosRate,

    -- ** youtube.videos.reportAbuse
    YouTubeVideosReportAbuseResource,
    newYouTubeVideosReportAbuse,
    YouTubeVideosReportAbuse,

    -- ** youtube.videos.update
    YouTubeVideosUpdateResource,
    newYouTubeVideosUpdate,
    YouTubeVideosUpdate,

    -- ** youtube.watermarks.set
    YouTubeWatermarksSetResource,
    newYouTubeWatermarksSet,
    YouTubeWatermarksSet,

    -- ** youtube.watermarks.unset
    YouTubeWatermarksUnsetResource,
    newYouTubeWatermarksUnset,
    YouTubeWatermarksUnset,

    -- ** youtube.youtube.v3.updateCommentThreads
    YouTubeYoutubeV3UpdateCommentThreadsResource,
    newYouTubeYoutubeV3UpdateCommentThreads,
    YouTubeYoutubeV3UpdateCommentThreads,

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

import Network.Google.YouTube.AbuseReports.Insert
import Network.Google.YouTube.Activities.List
import Network.Google.YouTube.Captions.Delete
import Network.Google.YouTube.Captions.Download
import Network.Google.YouTube.Captions.Insert
import Network.Google.YouTube.Captions.List
import Network.Google.YouTube.Captions.Update
import Network.Google.YouTube.ChannelBanners.Insert
import Network.Google.YouTube.ChannelSections.Delete
import Network.Google.YouTube.ChannelSections.Insert
import Network.Google.YouTube.ChannelSections.List
import Network.Google.YouTube.ChannelSections.Update
import Network.Google.YouTube.Channels.List
import Network.Google.YouTube.Channels.Update
import Network.Google.YouTube.CommentThreads.Insert
import Network.Google.YouTube.CommentThreads.List
import Network.Google.YouTube.Comments.Delete
import Network.Google.YouTube.Comments.Insert
import Network.Google.YouTube.Comments.List
import Network.Google.YouTube.Comments.MarkAsSpam
import Network.Google.YouTube.Comments.SetModerationStatus
import Network.Google.YouTube.Comments.Update
import Network.Google.YouTube.I18nLanguages.List
import Network.Google.YouTube.I18nRegions.List
import Network.Google.YouTube.LiveBroadcasts.Bind
import Network.Google.YouTube.LiveBroadcasts.Delete
import Network.Google.YouTube.LiveBroadcasts.Insert
import Network.Google.YouTube.LiveBroadcasts.List
import Network.Google.YouTube.LiveBroadcasts.Transition
import Network.Google.YouTube.LiveBroadcasts.Update
import Network.Google.YouTube.LiveChatBans.Delete
import Network.Google.YouTube.LiveChatBans.Insert
import Network.Google.YouTube.LiveChatMessages.Delete
import Network.Google.YouTube.LiveChatMessages.Insert
import Network.Google.YouTube.LiveChatMessages.List
import Network.Google.YouTube.LiveChatModerators.Delete
import Network.Google.YouTube.LiveChatModerators.Insert
import Network.Google.YouTube.LiveChatModerators.List
import Network.Google.YouTube.LiveStreams.Delete
import Network.Google.YouTube.LiveStreams.Insert
import Network.Google.YouTube.LiveStreams.List
import Network.Google.YouTube.LiveStreams.Update
import Network.Google.YouTube.Members.List
import Network.Google.YouTube.MembershipsLevels.List
import Network.Google.YouTube.PlaylistItems.Delete
import Network.Google.YouTube.PlaylistItems.Insert
import Network.Google.YouTube.PlaylistItems.List
import Network.Google.YouTube.PlaylistItems.Update
import Network.Google.YouTube.Playlists.Delete
import Network.Google.YouTube.Playlists.Insert
import Network.Google.YouTube.Playlists.List
import Network.Google.YouTube.Playlists.Update
import Network.Google.YouTube.Search.List
import Network.Google.YouTube.Subscriptions.Delete
import Network.Google.YouTube.Subscriptions.Insert
import Network.Google.YouTube.Subscriptions.List
import Network.Google.YouTube.SuperChatEvents.List
import Network.Google.YouTube.Tests.Insert
import Network.Google.YouTube.ThirdPartyLinks.Delete
import Network.Google.YouTube.ThirdPartyLinks.Insert
import Network.Google.YouTube.ThirdPartyLinks.List
import Network.Google.YouTube.ThirdPartyLinks.Update
import Network.Google.YouTube.Thumbnails.Set
import Network.Google.YouTube.Types
import Network.Google.YouTube.V3.UpdateCommentThreads
import Network.Google.YouTube.VideoAbuseReportReasons.List
import Network.Google.YouTube.VideoCategories.List
import Network.Google.YouTube.Videos.Delete
import Network.Google.YouTube.Videos.GetRating
import Network.Google.YouTube.Videos.Insert
import Network.Google.YouTube.Videos.List
import Network.Google.YouTube.Videos.Rate
import Network.Google.YouTube.Videos.ReportAbuse
import Network.Google.YouTube.Videos.Update
import Network.Google.YouTube.Watermarks.Set
import Network.Google.YouTube.Watermarks.Unset
