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
-- Module      : Network.Google.YouTube.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.YouTube.Types
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

import qualified Network.Google.Prelude as Core
import Network.Google.YouTube.Internal.Product
import Network.Google.YouTube.Internal.Sum

-- | Default request referring to version @v3@ of the YouTube Data API v3. This contains the host and root path used as a starting point for constructing service requests.
youTubeService :: Core.ServiceConfig
youTubeService =
  Core.defaultService
    (Core.ServiceId "youtube:v3")
    "youtube.googleapis.com"

-- | Manage your YouTube account
youTubeScope :: Core.Proxy '["https://www.googleapis.com/auth/youtube"]
youTubeScope = Core.Proxy

-- | See a list of your current active channel members, their current level, and when they became a member
youTubeChannelMembershipsCreatorScope :: Core.Proxy '["https://www.googleapis.com/auth/youtube.channel-memberships.creator"]
youTubeChannelMembershipsCreatorScope = Core.Proxy

-- | See, edit, and permanently delete your YouTube videos, ratings, comments and captions
youTubeForceSslScope :: Core.Proxy '["https://www.googleapis.com/auth/youtube.force-ssl"]
youTubeForceSslScope = Core.Proxy

-- | View your YouTube account
youTubeReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/youtube.readonly"]
youTubeReadOnlyScope = Core.Proxy

-- | Manage your YouTube videos
youTubeUploadScope :: Core.Proxy '["https://www.googleapis.com/auth/youtube.upload"]
youTubeUploadScope = Core.Proxy

-- | View and manage your assets and associated content on YouTube
youtubepartnerScope :: Core.Proxy '["https://www.googleapis.com/auth/youtubepartner"]
youtubepartnerScope = Core.Proxy

-- | View private information of your YouTube channel relevant during the audit process with a YouTube partner
youtubepartnerChannelAuditScope :: Core.Proxy '["https://www.googleapis.com/auth/youtubepartner-channel-audit"]
youtubepartnerChannelAuditScope = Core.Proxy
