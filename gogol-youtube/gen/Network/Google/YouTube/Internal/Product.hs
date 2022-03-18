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
-- Module      : Network.Google.YouTube.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.YouTube.Internal.Product
  ( -- * AbuseReport
    AbuseReport (..),
    newAbuseReport,

    -- * AbuseType
    AbuseType (..),
    newAbuseType,

    -- * AccessPolicy
    AccessPolicy (..),
    newAccessPolicy,

    -- * Activity
    Activity (..),
    newActivity,

    -- * ActivityContentDetails
    ActivityContentDetails (..),
    newActivityContentDetails,

    -- * ActivityContentDetailsBulletin
    ActivityContentDetailsBulletin (..),
    newActivityContentDetailsBulletin,

    -- * ActivityContentDetailsChannelItem
    ActivityContentDetailsChannelItem (..),
    newActivityContentDetailsChannelItem,

    -- * ActivityContentDetailsComment
    ActivityContentDetailsComment (..),
    newActivityContentDetailsComment,

    -- * ActivityContentDetailsFavorite
    ActivityContentDetailsFavorite (..),
    newActivityContentDetailsFavorite,

    -- * ActivityContentDetailsLike
    ActivityContentDetailsLike (..),
    newActivityContentDetailsLike,

    -- * ActivityContentDetailsPlaylistItem
    ActivityContentDetailsPlaylistItem (..),
    newActivityContentDetailsPlaylistItem,

    -- * ActivityContentDetailsPromotedItem
    ActivityContentDetailsPromotedItem (..),
    newActivityContentDetailsPromotedItem,

    -- * ActivityContentDetailsRecommendation
    ActivityContentDetailsRecommendation (..),
    newActivityContentDetailsRecommendation,

    -- * ActivityContentDetailsSocial
    ActivityContentDetailsSocial (..),
    newActivityContentDetailsSocial,

    -- * ActivityContentDetailsSubscription
    ActivityContentDetailsSubscription (..),
    newActivityContentDetailsSubscription,

    -- * ActivityContentDetailsUpload
    ActivityContentDetailsUpload (..),
    newActivityContentDetailsUpload,

    -- * ActivityListResponse
    ActivityListResponse (..),
    newActivityListResponse,

    -- * ActivitySnippet
    ActivitySnippet (..),
    newActivitySnippet,

    -- * Caption
    Caption (..),
    newCaption,

    -- * CaptionListResponse
    CaptionListResponse (..),
    newCaptionListResponse,

    -- * CaptionSnippet
    CaptionSnippet (..),
    newCaptionSnippet,

    -- * CdnSettings
    CdnSettings (..),
    newCdnSettings,

    -- * Channel
    Channel (..),
    newChannel,

    -- * Channel_Localizations
    Channel_Localizations (..),
    newChannel_Localizations,

    -- * ChannelAuditDetails
    ChannelAuditDetails (..),
    newChannelAuditDetails,

    -- * ChannelBannerResource
    ChannelBannerResource (..),
    newChannelBannerResource,

    -- * ChannelBrandingSettings
    ChannelBrandingSettings (..),
    newChannelBrandingSettings,

    -- * ChannelContentDetails
    ChannelContentDetails (..),
    newChannelContentDetails,

    -- * ChannelContentDetails_RelatedPlaylists
    ChannelContentDetails_RelatedPlaylists (..),
    newChannelContentDetails_RelatedPlaylists,

    -- * ChannelContentOwnerDetails
    ChannelContentOwnerDetails (..),
    newChannelContentOwnerDetails,

    -- * ChannelConversionPing
    ChannelConversionPing (..),
    newChannelConversionPing,

    -- * ChannelConversionPings
    ChannelConversionPings (..),
    newChannelConversionPings,

    -- * ChannelListResponse
    ChannelListResponse (..),
    newChannelListResponse,

    -- * ChannelLocalization
    ChannelLocalization (..),
    newChannelLocalization,

    -- * ChannelProfileDetails
    ChannelProfileDetails (..),
    newChannelProfileDetails,

    -- * ChannelSection
    ChannelSection (..),
    newChannelSection,

    -- * ChannelSection_Localizations
    ChannelSection_Localizations (..),
    newChannelSection_Localizations,

    -- * ChannelSectionContentDetails
    ChannelSectionContentDetails (..),
    newChannelSectionContentDetails,

    -- * ChannelSectionListResponse
    ChannelSectionListResponse (..),
    newChannelSectionListResponse,

    -- * ChannelSectionLocalization
    ChannelSectionLocalization (..),
    newChannelSectionLocalization,

    -- * ChannelSectionSnippet
    ChannelSectionSnippet (..),
    newChannelSectionSnippet,

    -- * ChannelSectionTargeting
    ChannelSectionTargeting (..),
    newChannelSectionTargeting,

    -- * ChannelSettings
    ChannelSettings (..),
    newChannelSettings,

    -- * ChannelSnippet
    ChannelSnippet (..),
    newChannelSnippet,

    -- * ChannelStatistics
    ChannelStatistics (..),
    newChannelStatistics,

    -- * ChannelStatus
    ChannelStatus (..),
    newChannelStatus,

    -- * ChannelToStoreLinkDetails
    ChannelToStoreLinkDetails (..),
    newChannelToStoreLinkDetails,

    -- * ChannelTopicDetails
    ChannelTopicDetails (..),
    newChannelTopicDetails,

    -- * Comment
    Comment (..),
    newComment,

    -- * CommentListResponse
    CommentListResponse (..),
    newCommentListResponse,

    -- * CommentSnippet
    CommentSnippet (..),
    newCommentSnippet,

    -- * CommentSnippetAuthorChannelId
    CommentSnippetAuthorChannelId (..),
    newCommentSnippetAuthorChannelId,

    -- * CommentThread
    CommentThread (..),
    newCommentThread,

    -- * CommentThreadListResponse
    CommentThreadListResponse (..),
    newCommentThreadListResponse,

    -- * CommentThreadReplies
    CommentThreadReplies (..),
    newCommentThreadReplies,

    -- * CommentThreadSnippet
    CommentThreadSnippet (..),
    newCommentThreadSnippet,

    -- * ContentRating
    ContentRating (..),
    newContentRating,

    -- * Entity
    Entity (..),
    newEntity,

    -- * GeoPoint
    GeoPoint (..),
    newGeoPoint,

    -- * I18nLanguage
    I18nLanguage (..),
    newI18nLanguage,

    -- * I18nLanguageListResponse
    I18nLanguageListResponse (..),
    newI18nLanguageListResponse,

    -- * I18nLanguageSnippet
    I18nLanguageSnippet (..),
    newI18nLanguageSnippet,

    -- * I18nRegion
    I18nRegion (..),
    newI18nRegion,

    -- * I18nRegionListResponse
    I18nRegionListResponse (..),
    newI18nRegionListResponse,

    -- * I18nRegionSnippet
    I18nRegionSnippet (..),
    newI18nRegionSnippet,

    -- * ImageSettings
    ImageSettings (..),
    newImageSettings,

    -- * IngestionInfo
    IngestionInfo (..),
    newIngestionInfo,

    -- * InvideoBranding
    InvideoBranding (..),
    newInvideoBranding,

    -- * InvideoPosition
    InvideoPosition (..),
    newInvideoPosition,

    -- * InvideoTiming
    InvideoTiming (..),
    newInvideoTiming,

    -- * LanguageTag
    LanguageTag (..),
    newLanguageTag,

    -- * LevelDetails
    LevelDetails (..),
    newLevelDetails,

    -- * LiveBroadcast
    LiveBroadcast (..),
    newLiveBroadcast,

    -- * LiveBroadcastContentDetails
    LiveBroadcastContentDetails (..),
    newLiveBroadcastContentDetails,

    -- * LiveBroadcastListResponse
    LiveBroadcastListResponse (..),
    newLiveBroadcastListResponse,

    -- * LiveBroadcastSnippet
    LiveBroadcastSnippet (..),
    newLiveBroadcastSnippet,

    -- * LiveBroadcastStatistics
    LiveBroadcastStatistics (..),
    newLiveBroadcastStatistics,

    -- * LiveBroadcastStatus
    LiveBroadcastStatus (..),
    newLiveBroadcastStatus,

    -- * LiveChatBan
    LiveChatBan (..),
    newLiveChatBan,

    -- * LiveChatBanSnippet
    LiveChatBanSnippet (..),
    newLiveChatBanSnippet,

    -- * LiveChatFanFundingEventDetails
    LiveChatFanFundingEventDetails (..),
    newLiveChatFanFundingEventDetails,

    -- * LiveChatGiftMembershipReceivedDetails
    LiveChatGiftMembershipReceivedDetails (..),
    newLiveChatGiftMembershipReceivedDetails,

    -- * LiveChatMemberMilestoneChatDetails
    LiveChatMemberMilestoneChatDetails (..),
    newLiveChatMemberMilestoneChatDetails,

    -- * LiveChatMembershipGiftingDetails
    LiveChatMembershipGiftingDetails (..),
    newLiveChatMembershipGiftingDetails,

    -- * LiveChatMessage
    LiveChatMessage (..),
    newLiveChatMessage,

    -- * LiveChatMessageAuthorDetails
    LiveChatMessageAuthorDetails (..),
    newLiveChatMessageAuthorDetails,

    -- * LiveChatMessageDeletedDetails
    LiveChatMessageDeletedDetails (..),
    newLiveChatMessageDeletedDetails,

    -- * LiveChatMessageListResponse
    LiveChatMessageListResponse (..),
    newLiveChatMessageListResponse,

    -- * LiveChatMessageRetractedDetails
    LiveChatMessageRetractedDetails (..),
    newLiveChatMessageRetractedDetails,

    -- * LiveChatMessageSnippet
    LiveChatMessageSnippet (..),
    newLiveChatMessageSnippet,

    -- * LiveChatModerator
    LiveChatModerator (..),
    newLiveChatModerator,

    -- * LiveChatModeratorListResponse
    LiveChatModeratorListResponse (..),
    newLiveChatModeratorListResponse,

    -- * LiveChatModeratorSnippet
    LiveChatModeratorSnippet (..),
    newLiveChatModeratorSnippet,

    -- * LiveChatNewSponsorDetails
    LiveChatNewSponsorDetails (..),
    newLiveChatNewSponsorDetails,

    -- * LiveChatSuperChatDetails
    LiveChatSuperChatDetails (..),
    newLiveChatSuperChatDetails,

    -- * LiveChatSuperStickerDetails
    LiveChatSuperStickerDetails (..),
    newLiveChatSuperStickerDetails,

    -- * LiveChatTextMessageDetails
    LiveChatTextMessageDetails (..),
    newLiveChatTextMessageDetails,

    -- * LiveChatUserBannedMessageDetails
    LiveChatUserBannedMessageDetails (..),
    newLiveChatUserBannedMessageDetails,

    -- * LiveStream
    LiveStream (..),
    newLiveStream,

    -- * LiveStreamConfigurationIssue
    LiveStreamConfigurationIssue (..),
    newLiveStreamConfigurationIssue,

    -- * LiveStreamContentDetails
    LiveStreamContentDetails (..),
    newLiveStreamContentDetails,

    -- * LiveStreamHealthStatus
    LiveStreamHealthStatus (..),
    newLiveStreamHealthStatus,

    -- * LiveStreamListResponse
    LiveStreamListResponse (..),
    newLiveStreamListResponse,

    -- * LiveStreamSnippet
    LiveStreamSnippet (..),
    newLiveStreamSnippet,

    -- * LiveStreamStatus
    LiveStreamStatus (..),
    newLiveStreamStatus,

    -- * LocalizedProperty
    LocalizedProperty (..),
    newLocalizedProperty,

    -- * LocalizedString
    LocalizedString (..),
    newLocalizedString,

    -- * Member
    Member (..),
    newMember,

    -- * MemberListResponse
    MemberListResponse (..),
    newMemberListResponse,

    -- * MemberSnippet
    MemberSnippet (..),
    newMemberSnippet,

    -- * MembershipsDetails
    MembershipsDetails (..),
    newMembershipsDetails,

    -- * MembershipsDuration
    MembershipsDuration (..),
    newMembershipsDuration,

    -- * MembershipsDurationAtLevel
    MembershipsDurationAtLevel (..),
    newMembershipsDurationAtLevel,

    -- * MembershipsLevel
    MembershipsLevel (..),
    newMembershipsLevel,

    -- * MembershipsLevelListResponse
    MembershipsLevelListResponse (..),
    newMembershipsLevelListResponse,

    -- * MembershipsLevelSnippet
    MembershipsLevelSnippet (..),
    newMembershipsLevelSnippet,

    -- * MonitorStreamInfo
    MonitorStreamInfo (..),
    newMonitorStreamInfo,

    -- * PageInfo
    PageInfo (..),
    newPageInfo,

    -- * Playlist
    Playlist (..),
    newPlaylist,

    -- * Playlist_Localizations
    Playlist_Localizations (..),
    newPlaylist_Localizations,

    -- * PlaylistContentDetails
    PlaylistContentDetails (..),
    newPlaylistContentDetails,

    -- * PlaylistItem
    PlaylistItem (..),
    newPlaylistItem,

    -- * PlaylistItemContentDetails
    PlaylistItemContentDetails (..),
    newPlaylistItemContentDetails,

    -- * PlaylistItemListResponse
    PlaylistItemListResponse (..),
    newPlaylistItemListResponse,

    -- * PlaylistItemSnippet
    PlaylistItemSnippet (..),
    newPlaylistItemSnippet,

    -- * PlaylistItemStatus
    PlaylistItemStatus (..),
    newPlaylistItemStatus,

    -- * PlaylistListResponse
    PlaylistListResponse (..),
    newPlaylistListResponse,

    -- * PlaylistLocalization
    PlaylistLocalization (..),
    newPlaylistLocalization,

    -- * PlaylistPlayer
    PlaylistPlayer (..),
    newPlaylistPlayer,

    -- * PlaylistSnippet
    PlaylistSnippet (..),
    newPlaylistSnippet,

    -- * PlaylistStatus
    PlaylistStatus (..),
    newPlaylistStatus,

    -- * PropertyValue
    PropertyValue (..),
    newPropertyValue,

    -- * RelatedEntity
    RelatedEntity (..),
    newRelatedEntity,

    -- * ResourceId
    ResourceId (..),
    newResourceId,

    -- * SearchListResponse
    SearchListResponse (..),
    newSearchListResponse,

    -- * SearchResult
    SearchResult (..),
    newSearchResult,

    -- * SearchResultSnippet
    SearchResultSnippet (..),
    newSearchResultSnippet,

    -- * Subscription
    Subscription (..),
    newSubscription,

    -- * SubscriptionContentDetails
    SubscriptionContentDetails (..),
    newSubscriptionContentDetails,

    -- * SubscriptionListResponse
    SubscriptionListResponse (..),
    newSubscriptionListResponse,

    -- * SubscriptionSnippet
    SubscriptionSnippet (..),
    newSubscriptionSnippet,

    -- * SubscriptionSubscriberSnippet
    SubscriptionSubscriberSnippet (..),
    newSubscriptionSubscriberSnippet,

    -- * SuperChatEvent
    SuperChatEvent (..),
    newSuperChatEvent,

    -- * SuperChatEventListResponse
    SuperChatEventListResponse (..),
    newSuperChatEventListResponse,

    -- * SuperChatEventSnippet
    SuperChatEventSnippet (..),
    newSuperChatEventSnippet,

    -- * SuperStickerMetadata
    SuperStickerMetadata (..),
    newSuperStickerMetadata,

    -- * TestItem
    TestItem (..),
    newTestItem,

    -- * TestItemTestItemSnippet
    TestItemTestItemSnippet (..),
    newTestItemTestItemSnippet,

    -- * ThirdPartyLink
    ThirdPartyLink (..),
    newThirdPartyLink,

    -- * ThirdPartyLinkSnippet
    ThirdPartyLinkSnippet (..),
    newThirdPartyLinkSnippet,

    -- * ThirdPartyLinkStatus
    ThirdPartyLinkStatus (..),
    newThirdPartyLinkStatus,

    -- * Thumbnail
    Thumbnail (..),
    newThumbnail,

    -- * ThumbnailDetails
    ThumbnailDetails (..),
    newThumbnailDetails,

    -- * ThumbnailSetResponse
    ThumbnailSetResponse (..),
    newThumbnailSetResponse,

    -- * TokenPagination
    TokenPagination (..),
    newTokenPagination,

    -- * Video
    Video (..),
    newVideo,

    -- * Video_Localizations
    Video_Localizations (..),
    newVideo_Localizations,

    -- * VideoAbuseReport
    VideoAbuseReport (..),
    newVideoAbuseReport,

    -- * VideoAbuseReportReason
    VideoAbuseReportReason (..),
    newVideoAbuseReportReason,

    -- * VideoAbuseReportReasonListResponse
    VideoAbuseReportReasonListResponse (..),
    newVideoAbuseReportReasonListResponse,

    -- * VideoAbuseReportReasonSnippet
    VideoAbuseReportReasonSnippet (..),
    newVideoAbuseReportReasonSnippet,

    -- * VideoAbuseReportSecondaryReason
    VideoAbuseReportSecondaryReason (..),
    newVideoAbuseReportSecondaryReason,

    -- * VideoAgeGating
    VideoAgeGating (..),
    newVideoAgeGating,

    -- * VideoCategory
    VideoCategory (..),
    newVideoCategory,

    -- * VideoCategoryListResponse
    VideoCategoryListResponse (..),
    newVideoCategoryListResponse,

    -- * VideoCategorySnippet
    VideoCategorySnippet (..),
    newVideoCategorySnippet,

    -- * VideoContentDetails
    VideoContentDetails (..),
    newVideoContentDetails,

    -- * VideoContentDetailsRegionRestriction
    VideoContentDetailsRegionRestriction (..),
    newVideoContentDetailsRegionRestriction,

    -- * VideoFileDetails
    VideoFileDetails (..),
    newVideoFileDetails,

    -- * VideoFileDetailsAudioStream
    VideoFileDetailsAudioStream (..),
    newVideoFileDetailsAudioStream,

    -- * VideoFileDetailsVideoStream
    VideoFileDetailsVideoStream (..),
    newVideoFileDetailsVideoStream,

    -- * VideoGetRatingResponse
    VideoGetRatingResponse (..),
    newVideoGetRatingResponse,

    -- * VideoListResponse
    VideoListResponse (..),
    newVideoListResponse,

    -- * VideoLiveStreamingDetails
    VideoLiveStreamingDetails (..),
    newVideoLiveStreamingDetails,

    -- * VideoLocalization
    VideoLocalization (..),
    newVideoLocalization,

    -- * VideoMonetizationDetails
    VideoMonetizationDetails (..),
    newVideoMonetizationDetails,

    -- * VideoPlayer
    VideoPlayer (..),
    newVideoPlayer,

    -- * VideoProcessingDetails
    VideoProcessingDetails (..),
    newVideoProcessingDetails,

    -- * VideoProcessingDetailsProcessingProgress
    VideoProcessingDetailsProcessingProgress (..),
    newVideoProcessingDetailsProcessingProgress,

    -- * VideoProjectDetails
    VideoProjectDetails (..),
    newVideoProjectDetails,

    -- * VideoRating
    VideoRating (..),
    newVideoRating,

    -- * VideoRecordingDetails
    VideoRecordingDetails (..),
    newVideoRecordingDetails,

    -- * VideoSnippet
    VideoSnippet (..),
    newVideoSnippet,

    -- * VideoStatistics
    VideoStatistics (..),
    newVideoStatistics,

    -- * VideoStatus
    VideoStatus (..),
    newVideoStatus,

    -- * VideoSuggestions
    VideoSuggestions (..),
    newVideoSuggestions,

    -- * VideoSuggestionsTagSuggestion
    VideoSuggestionsTagSuggestion (..),
    newVideoSuggestionsTagSuggestion,

    -- * VideoTopicDetails
    VideoTopicDetails (..),
    newVideoTopicDetails,

    -- * WatchSettings
    WatchSettings (..),
    newWatchSettings,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.YouTube.Internal.Sum

--
-- /See:/ 'newAbuseReport' smart constructor.
data AbuseReport = AbuseReport
  { -- |
    abuseTypes :: (Core.Maybe [AbuseType]),
    -- |
    description :: (Core.Maybe Core.Text),
    -- |
    relatedEntities :: (Core.Maybe [RelatedEntity]),
    -- |
    subject :: (Core.Maybe Entity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AbuseReport' with the minimum fields required to make a request.
newAbuseReport ::
  AbuseReport
newAbuseReport =
  AbuseReport
    { abuseTypes = Core.Nothing,
      description = Core.Nothing,
      relatedEntities = Core.Nothing,
      subject = Core.Nothing
    }

instance Core.FromJSON AbuseReport where
  parseJSON =
    Core.withObject
      "AbuseReport"
      ( \o ->
          AbuseReport
            Core.<$> (o Core..:? "abuseTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "relatedEntities" Core..!= Core.mempty)
            Core.<*> (o Core..:? "subject")
      )

instance Core.ToJSON AbuseReport where
  toJSON AbuseReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("abuseTypes" Core..=) Core.<$> abuseTypes,
            ("description" Core..=) Core.<$> description,
            ("relatedEntities" Core..=) Core.<$> relatedEntities,
            ("subject" Core..=) Core.<$> subject
          ]
      )

--
-- /See:/ 'newAbuseType' smart constructor.
newtype AbuseType = AbuseType
  { -- |
    id :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AbuseType' with the minimum fields required to make a request.
newAbuseType ::
  AbuseType
newAbuseType = AbuseType {id = Core.Nothing}

instance Core.FromJSON AbuseType where
  parseJSON =
    Core.withObject
      "AbuseType"
      (\o -> AbuseType Core.<$> (o Core..:? "id"))

instance Core.ToJSON AbuseType where
  toJSON AbuseType {..} =
    Core.object
      (Core.catMaybes [("id" Core..=) Core.<$> id])

-- | Rights management policy for YouTube resources.
--
-- /See:/ 'newAccessPolicy' smart constructor.
data AccessPolicy = AccessPolicy
  { -- | The value of allowed indicates whether the access to the policy is allowed or denied by default.
    allowed :: (Core.Maybe Core.Bool),
    -- | A list of region codes that identify countries where the default policy do not apply.
    exception :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessPolicy' with the minimum fields required to make a request.
newAccessPolicy ::
  AccessPolicy
newAccessPolicy =
  AccessPolicy {allowed = Core.Nothing, exception = Core.Nothing}

instance Core.FromJSON AccessPolicy where
  parseJSON =
    Core.withObject
      "AccessPolicy"
      ( \o ->
          AccessPolicy
            Core.<$> (o Core..:? "allowed")
            Core.<*> (o Core..:? "exception" Core..!= Core.mempty)
      )

instance Core.ToJSON AccessPolicy where
  toJSON AccessPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowed" Core..=) Core.<$> allowed,
            ("exception" Core..=) Core.<$> exception
          ]
      )

-- | An /activity/ resource contains information about an action that a particular channel, or user, has taken on YouTube.The actions reported in activity feeds include rating a video, sharing a video, marking a video as a favorite, commenting on a video, uploading a video, and so forth. Each activity resource identifies the type of action, the channel associated with the action, and the resource(s) associated with the action, such as the video that was rated or uploaded.
--
-- /See:/ 'newActivity' smart constructor.
data Activity = Activity
  { -- | The contentDetails object contains information about the content associated with the activity. For example, if the snippet.type value is videoRated, then the contentDetails object\'s content identifies the rated video.
    contentDetails :: (Core.Maybe ActivityContentDetails),
    -- | Etag of this resource
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the activity.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#activity\".
    kind :: Core.Text,
    -- | The snippet object contains basic details about the activity, including the activity\'s type and group ID.
    snippet :: (Core.Maybe ActivitySnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
newActivity ::
  Activity
newActivity =
  Activity
    { contentDetails = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#activity",
      snippet = Core.Nothing
    }

instance Core.FromJSON Activity where
  parseJSON =
    Core.withObject
      "Activity"
      ( \o ->
          Activity
            Core.<$> (o Core..:? "contentDetails")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#activity")
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON Activity where
  toJSON Activity {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentDetails" Core..=) Core.<$> contentDetails,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

-- | Details about the content of an activity: the video that was shared, the channel that was subscribed to, etc.
--
-- /See:/ 'newActivityContentDetails' smart constructor.
data ActivityContentDetails = ActivityContentDetails
  { -- | The bulletin object contains details about a channel bulletin post. This object is only present if the snippet.type is bulletin.
    bulletin :: (Core.Maybe ActivityContentDetailsBulletin),
    -- | The channelItem object contains details about a resource which was added to a channel. This property is only present if the snippet.type is channelItem.
    channelItem :: (Core.Maybe ActivityContentDetailsChannelItem),
    -- | The comment object contains information about a resource that received a comment. This property is only present if the snippet.type is comment.
    comment :: (Core.Maybe ActivityContentDetailsComment),
    -- | The favorite object contains information about a video that was marked as a favorite video. This property is only present if the snippet.type is favorite.
    favorite :: (Core.Maybe ActivityContentDetailsFavorite),
    -- | The like object contains information about a resource that received a positive (like) rating. This property is only present if the snippet.type is like.
    like :: (Core.Maybe ActivityContentDetailsLike),
    -- | The playlistItem object contains information about a new playlist item. This property is only present if the snippet.type is playlistItem.
    playlistItem :: (Core.Maybe ActivityContentDetailsPlaylistItem),
    -- | The promotedItem object contains details about a resource which is being promoted. This property is only present if the snippet.type is promotedItem.
    promotedItem :: (Core.Maybe ActivityContentDetailsPromotedItem),
    -- | The recommendation object contains information about a recommended resource. This property is only present if the snippet.type is recommendation.
    recommendation :: (Core.Maybe ActivityContentDetailsRecommendation),
    -- | The social object contains details about a social network post. This property is only present if the snippet.type is social.
    social :: (Core.Maybe ActivityContentDetailsSocial),
    -- | The subscription object contains information about a channel that a user subscribed to. This property is only present if the snippet.type is subscription.
    subscription :: (Core.Maybe ActivityContentDetailsSubscription),
    -- | The upload object contains information about the uploaded video. This property is only present if the snippet.type is upload.
    upload :: (Core.Maybe ActivityContentDetailsUpload)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivityContentDetails' with the minimum fields required to make a request.
newActivityContentDetails ::
  ActivityContentDetails
newActivityContentDetails =
  ActivityContentDetails
    { bulletin = Core.Nothing,
      channelItem = Core.Nothing,
      comment = Core.Nothing,
      favorite = Core.Nothing,
      like = Core.Nothing,
      playlistItem = Core.Nothing,
      promotedItem = Core.Nothing,
      recommendation = Core.Nothing,
      social = Core.Nothing,
      subscription = Core.Nothing,
      upload = Core.Nothing
    }

instance Core.FromJSON ActivityContentDetails where
  parseJSON =
    Core.withObject
      "ActivityContentDetails"
      ( \o ->
          ActivityContentDetails
            Core.<$> (o Core..:? "bulletin")
            Core.<*> (o Core..:? "channelItem")
            Core.<*> (o Core..:? "comment")
            Core.<*> (o Core..:? "favorite")
            Core.<*> (o Core..:? "like")
            Core.<*> (o Core..:? "playlistItem")
            Core.<*> (o Core..:? "promotedItem")
            Core.<*> (o Core..:? "recommendation")
            Core.<*> (o Core..:? "social")
            Core.<*> (o Core..:? "subscription")
            Core.<*> (o Core..:? "upload")
      )

instance Core.ToJSON ActivityContentDetails where
  toJSON ActivityContentDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("bulletin" Core..=) Core.<$> bulletin,
            ("channelItem" Core..=) Core.<$> channelItem,
            ("comment" Core..=) Core.<$> comment,
            ("favorite" Core..=) Core.<$> favorite,
            ("like" Core..=) Core.<$> like,
            ("playlistItem" Core..=) Core.<$> playlistItem,
            ("promotedItem" Core..=) Core.<$> promotedItem,
            ("recommendation" Core..=) Core.<$> recommendation,
            ("social" Core..=) Core.<$> social,
            ("subscription" Core..=) Core.<$> subscription,
            ("upload" Core..=) Core.<$> upload
          ]
      )

-- | Details about a channel bulletin post.
--
-- /See:/ 'newActivityContentDetailsBulletin' smart constructor.
newtype ActivityContentDetailsBulletin = ActivityContentDetailsBulletin
  { -- | The resourceId object contains information that identifies the resource associated with a bulletin post. \@mutable youtube.activities.insert
    resourceId :: (Core.Maybe ResourceId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivityContentDetailsBulletin' with the minimum fields required to make a request.
newActivityContentDetailsBulletin ::
  ActivityContentDetailsBulletin
newActivityContentDetailsBulletin =
  ActivityContentDetailsBulletin {resourceId = Core.Nothing}

instance Core.FromJSON ActivityContentDetailsBulletin where
  parseJSON =
    Core.withObject
      "ActivityContentDetailsBulletin"
      ( \o ->
          ActivityContentDetailsBulletin
            Core.<$> (o Core..:? "resourceId")
      )

instance Core.ToJSON ActivityContentDetailsBulletin where
  toJSON ActivityContentDetailsBulletin {..} =
    Core.object
      ( Core.catMaybes
          [("resourceId" Core..=) Core.<$> resourceId]
      )

-- | Details about a resource which was added to a channel.
--
-- /See:/ 'newActivityContentDetailsChannelItem' smart constructor.
newtype ActivityContentDetailsChannelItem = ActivityContentDetailsChannelItem
  { -- | The resourceId object contains information that identifies the resource that was added to the channel.
    resourceId :: (Core.Maybe ResourceId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivityContentDetailsChannelItem' with the minimum fields required to make a request.
newActivityContentDetailsChannelItem ::
  ActivityContentDetailsChannelItem
newActivityContentDetailsChannelItem =
  ActivityContentDetailsChannelItem {resourceId = Core.Nothing}

instance
  Core.FromJSON
    ActivityContentDetailsChannelItem
  where
  parseJSON =
    Core.withObject
      "ActivityContentDetailsChannelItem"
      ( \o ->
          ActivityContentDetailsChannelItem
            Core.<$> (o Core..:? "resourceId")
      )

instance
  Core.ToJSON
    ActivityContentDetailsChannelItem
  where
  toJSON ActivityContentDetailsChannelItem {..} =
    Core.object
      ( Core.catMaybes
          [("resourceId" Core..=) Core.<$> resourceId]
      )

-- | Information about a resource that received a comment.
--
-- /See:/ 'newActivityContentDetailsComment' smart constructor.
newtype ActivityContentDetailsComment = ActivityContentDetailsComment
  { -- | The resourceId object contains information that identifies the resource associated with the comment.
    resourceId :: (Core.Maybe ResourceId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivityContentDetailsComment' with the minimum fields required to make a request.
newActivityContentDetailsComment ::
  ActivityContentDetailsComment
newActivityContentDetailsComment =
  ActivityContentDetailsComment {resourceId = Core.Nothing}

instance Core.FromJSON ActivityContentDetailsComment where
  parseJSON =
    Core.withObject
      "ActivityContentDetailsComment"
      ( \o ->
          ActivityContentDetailsComment
            Core.<$> (o Core..:? "resourceId")
      )

instance Core.ToJSON ActivityContentDetailsComment where
  toJSON ActivityContentDetailsComment {..} =
    Core.object
      ( Core.catMaybes
          [("resourceId" Core..=) Core.<$> resourceId]
      )

-- | Information about a video that was marked as a favorite video.
--
-- /See:/ 'newActivityContentDetailsFavorite' smart constructor.
newtype ActivityContentDetailsFavorite = ActivityContentDetailsFavorite
  { -- | The resourceId object contains information that identifies the resource that was marked as a favorite.
    resourceId :: (Core.Maybe ResourceId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivityContentDetailsFavorite' with the minimum fields required to make a request.
newActivityContentDetailsFavorite ::
  ActivityContentDetailsFavorite
newActivityContentDetailsFavorite =
  ActivityContentDetailsFavorite {resourceId = Core.Nothing}

instance Core.FromJSON ActivityContentDetailsFavorite where
  parseJSON =
    Core.withObject
      "ActivityContentDetailsFavorite"
      ( \o ->
          ActivityContentDetailsFavorite
            Core.<$> (o Core..:? "resourceId")
      )

instance Core.ToJSON ActivityContentDetailsFavorite where
  toJSON ActivityContentDetailsFavorite {..} =
    Core.object
      ( Core.catMaybes
          [("resourceId" Core..=) Core.<$> resourceId]
      )

-- | Information about a resource that received a positive (like) rating.
--
-- /See:/ 'newActivityContentDetailsLike' smart constructor.
newtype ActivityContentDetailsLike = ActivityContentDetailsLike
  { -- | The resourceId object contains information that identifies the rated resource.
    resourceId :: (Core.Maybe ResourceId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivityContentDetailsLike' with the minimum fields required to make a request.
newActivityContentDetailsLike ::
  ActivityContentDetailsLike
newActivityContentDetailsLike =
  ActivityContentDetailsLike {resourceId = Core.Nothing}

instance Core.FromJSON ActivityContentDetailsLike where
  parseJSON =
    Core.withObject
      "ActivityContentDetailsLike"
      ( \o ->
          ActivityContentDetailsLike
            Core.<$> (o Core..:? "resourceId")
      )

instance Core.ToJSON ActivityContentDetailsLike where
  toJSON ActivityContentDetailsLike {..} =
    Core.object
      ( Core.catMaybes
          [("resourceId" Core..=) Core.<$> resourceId]
      )

-- | Information about a new playlist item.
--
-- /See:/ 'newActivityContentDetailsPlaylistItem' smart constructor.
data ActivityContentDetailsPlaylistItem = ActivityContentDetailsPlaylistItem
  { -- | The value that YouTube uses to uniquely identify the playlist.
    playlistId :: (Core.Maybe Core.Text),
    -- | ID of the item within the playlist.
    playlistItemId :: (Core.Maybe Core.Text),
    -- | The resourceId object contains information about the resource that was added to the playlist.
    resourceId :: (Core.Maybe ResourceId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivityContentDetailsPlaylistItem' with the minimum fields required to make a request.
newActivityContentDetailsPlaylistItem ::
  ActivityContentDetailsPlaylistItem
newActivityContentDetailsPlaylistItem =
  ActivityContentDetailsPlaylistItem
    { playlistId = Core.Nothing,
      playlistItemId = Core.Nothing,
      resourceId = Core.Nothing
    }

instance
  Core.FromJSON
    ActivityContentDetailsPlaylistItem
  where
  parseJSON =
    Core.withObject
      "ActivityContentDetailsPlaylistItem"
      ( \o ->
          ActivityContentDetailsPlaylistItem
            Core.<$> (o Core..:? "playlistId")
            Core.<*> (o Core..:? "playlistItemId")
            Core.<*> (o Core..:? "resourceId")
      )

instance
  Core.ToJSON
    ActivityContentDetailsPlaylistItem
  where
  toJSON ActivityContentDetailsPlaylistItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("playlistId" Core..=) Core.<$> playlistId,
            ("playlistItemId" Core..=) Core.<$> playlistItemId,
            ("resourceId" Core..=) Core.<$> resourceId
          ]
      )

-- | Details about a resource which is being promoted.
--
-- /See:/ 'newActivityContentDetailsPromotedItem' smart constructor.
data ActivityContentDetailsPromotedItem = ActivityContentDetailsPromotedItem
  { -- | The URL the client should fetch to request a promoted item.
    adTag :: (Core.Maybe Core.Text),
    -- | The URL the client should ping to indicate that the user clicked through on this promoted item.
    clickTrackingUrl :: (Core.Maybe Core.Text),
    -- | The URL the client should ping to indicate that the user was shown this promoted item.
    creativeViewUrl :: (Core.Maybe Core.Text),
    -- | The type of call-to-action, a message to the user indicating action that can be taken.
    ctaType :: (Core.Maybe ActivityContentDetailsPromotedItem_CtaType),
    -- | The custom call-to-action button text. If specified, it will override the default button text for the cta_type.
    customCtaButtonText :: (Core.Maybe Core.Text),
    -- | The text description to accompany the promoted item.
    descriptionText :: (Core.Maybe Core.Text),
    -- | The URL the client should direct the user to, if the user chooses to visit the advertiser\'s website.
    destinationUrl :: (Core.Maybe Core.Text),
    -- | The list of forecasting URLs. The client should ping all of these URLs when a promoted item is not available, to indicate that a promoted item could have been shown.
    forecastingUrl :: (Core.Maybe [Core.Text]),
    -- | The list of impression URLs. The client should ping all of these URLs to indicate that the user was shown this promoted item.
    impressionUrl :: (Core.Maybe [Core.Text]),
    -- | The ID that YouTube uses to uniquely identify the promoted video.
    videoId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivityContentDetailsPromotedItem' with the minimum fields required to make a request.
newActivityContentDetailsPromotedItem ::
  ActivityContentDetailsPromotedItem
newActivityContentDetailsPromotedItem =
  ActivityContentDetailsPromotedItem
    { adTag = Core.Nothing,
      clickTrackingUrl = Core.Nothing,
      creativeViewUrl = Core.Nothing,
      ctaType = Core.Nothing,
      customCtaButtonText = Core.Nothing,
      descriptionText = Core.Nothing,
      destinationUrl = Core.Nothing,
      forecastingUrl = Core.Nothing,
      impressionUrl = Core.Nothing,
      videoId = Core.Nothing
    }

instance
  Core.FromJSON
    ActivityContentDetailsPromotedItem
  where
  parseJSON =
    Core.withObject
      "ActivityContentDetailsPromotedItem"
      ( \o ->
          ActivityContentDetailsPromotedItem
            Core.<$> (o Core..:? "adTag")
            Core.<*> (o Core..:? "clickTrackingUrl")
            Core.<*> (o Core..:? "creativeViewUrl")
            Core.<*> (o Core..:? "ctaType")
            Core.<*> (o Core..:? "customCtaButtonText")
            Core.<*> (o Core..:? "descriptionText")
            Core.<*> (o Core..:? "destinationUrl")
            Core.<*> (o Core..:? "forecastingUrl" Core..!= Core.mempty)
            Core.<*> (o Core..:? "impressionUrl" Core..!= Core.mempty)
            Core.<*> (o Core..:? "videoId")
      )

instance
  Core.ToJSON
    ActivityContentDetailsPromotedItem
  where
  toJSON ActivityContentDetailsPromotedItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("adTag" Core..=) Core.<$> adTag,
            ("clickTrackingUrl" Core..=)
              Core.<$> clickTrackingUrl,
            ("creativeViewUrl" Core..=) Core.<$> creativeViewUrl,
            ("ctaType" Core..=) Core.<$> ctaType,
            ("customCtaButtonText" Core..=)
              Core.<$> customCtaButtonText,
            ("descriptionText" Core..=) Core.<$> descriptionText,
            ("destinationUrl" Core..=) Core.<$> destinationUrl,
            ("forecastingUrl" Core..=) Core.<$> forecastingUrl,
            ("impressionUrl" Core..=) Core.<$> impressionUrl,
            ("videoId" Core..=) Core.<$> videoId
          ]
      )

-- | Information that identifies the recommended resource.
--
-- /See:/ 'newActivityContentDetailsRecommendation' smart constructor.
data ActivityContentDetailsRecommendation = ActivityContentDetailsRecommendation
  { -- | The reason that the resource is recommended to the user.
    reason :: (Core.Maybe ActivityContentDetailsRecommendation_Reason),
    -- | The resourceId object contains information that identifies the recommended resource.
    resourceId :: (Core.Maybe ResourceId),
    -- | The seedResourceId object contains information about the resource that caused the recommendation.
    seedResourceId :: (Core.Maybe ResourceId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivityContentDetailsRecommendation' with the minimum fields required to make a request.
newActivityContentDetailsRecommendation ::
  ActivityContentDetailsRecommendation
newActivityContentDetailsRecommendation =
  ActivityContentDetailsRecommendation
    { reason = Core.Nothing,
      resourceId = Core.Nothing,
      seedResourceId = Core.Nothing
    }

instance
  Core.FromJSON
    ActivityContentDetailsRecommendation
  where
  parseJSON =
    Core.withObject
      "ActivityContentDetailsRecommendation"
      ( \o ->
          ActivityContentDetailsRecommendation
            Core.<$> (o Core..:? "reason")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "seedResourceId")
      )

instance
  Core.ToJSON
    ActivityContentDetailsRecommendation
  where
  toJSON ActivityContentDetailsRecommendation {..} =
    Core.object
      ( Core.catMaybes
          [ ("reason" Core..=) Core.<$> reason,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("seedResourceId" Core..=) Core.<$> seedResourceId
          ]
      )

-- | Details about a social network post.
--
-- /See:/ 'newActivityContentDetailsSocial' smart constructor.
data ActivityContentDetailsSocial = ActivityContentDetailsSocial
  { -- | The author of the social network post.
    author :: (Core.Maybe Core.Text),
    -- | An image of the post\'s author.
    imageUrl :: (Core.Maybe Core.Text),
    -- | The URL of the social network post.
    referenceUrl :: (Core.Maybe Core.Text),
    -- | The resourceId object encapsulates information that identifies the resource associated with a social network post.
    resourceId :: (Core.Maybe ResourceId),
    -- | The name of the social network.
    type' :: (Core.Maybe ActivityContentDetailsSocial_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivityContentDetailsSocial' with the minimum fields required to make a request.
newActivityContentDetailsSocial ::
  ActivityContentDetailsSocial
newActivityContentDetailsSocial =
  ActivityContentDetailsSocial
    { author = Core.Nothing,
      imageUrl = Core.Nothing,
      referenceUrl = Core.Nothing,
      resourceId = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ActivityContentDetailsSocial where
  parseJSON =
    Core.withObject
      "ActivityContentDetailsSocial"
      ( \o ->
          ActivityContentDetailsSocial
            Core.<$> (o Core..:? "author")
            Core.<*> (o Core..:? "imageUrl")
            Core.<*> (o Core..:? "referenceUrl")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ActivityContentDetailsSocial where
  toJSON ActivityContentDetailsSocial {..} =
    Core.object
      ( Core.catMaybes
          [ ("author" Core..=) Core.<$> author,
            ("imageUrl" Core..=) Core.<$> imageUrl,
            ("referenceUrl" Core..=) Core.<$> referenceUrl,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Information about a channel that a user subscribed to.
--
-- /See:/ 'newActivityContentDetailsSubscription' smart constructor.
newtype ActivityContentDetailsSubscription = ActivityContentDetailsSubscription
  { -- | The resourceId object contains information that identifies the resource that the user subscribed to.
    resourceId :: (Core.Maybe ResourceId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivityContentDetailsSubscription' with the minimum fields required to make a request.
newActivityContentDetailsSubscription ::
  ActivityContentDetailsSubscription
newActivityContentDetailsSubscription =
  ActivityContentDetailsSubscription {resourceId = Core.Nothing}

instance
  Core.FromJSON
    ActivityContentDetailsSubscription
  where
  parseJSON =
    Core.withObject
      "ActivityContentDetailsSubscription"
      ( \o ->
          ActivityContentDetailsSubscription
            Core.<$> (o Core..:? "resourceId")
      )

instance
  Core.ToJSON
    ActivityContentDetailsSubscription
  where
  toJSON ActivityContentDetailsSubscription {..} =
    Core.object
      ( Core.catMaybes
          [("resourceId" Core..=) Core.<$> resourceId]
      )

-- | Information about the uploaded video.
--
-- /See:/ 'newActivityContentDetailsUpload' smart constructor.
newtype ActivityContentDetailsUpload = ActivityContentDetailsUpload
  { -- | The ID that YouTube uses to uniquely identify the uploaded video.
    videoId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivityContentDetailsUpload' with the minimum fields required to make a request.
newActivityContentDetailsUpload ::
  ActivityContentDetailsUpload
newActivityContentDetailsUpload =
  ActivityContentDetailsUpload {videoId = Core.Nothing}

instance Core.FromJSON ActivityContentDetailsUpload where
  parseJSON =
    Core.withObject
      "ActivityContentDetailsUpload"
      ( \o ->
          ActivityContentDetailsUpload
            Core.<$> (o Core..:? "videoId")
      )

instance Core.ToJSON ActivityContentDetailsUpload where
  toJSON ActivityContentDetailsUpload {..} =
    Core.object
      ( Core.catMaybes
          [("videoId" Core..=) Core.<$> videoId]
      )

--
-- /See:/ 'newActivityListResponse' smart constructor.
data ActivityListResponse = ActivityListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- |
    items :: (Core.Maybe [Activity]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#activityListResponse\".
    kind :: Core.Text,
    -- | The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | General pagination information.
    pageInfo :: (Core.Maybe PageInfo),
    -- | The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.
    prevPageToken :: (Core.Maybe Core.Text),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivityListResponse' with the minimum fields required to make a request.
newActivityListResponse ::
  ActivityListResponse
newActivityListResponse =
  ActivityListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#activityListResponse",
      nextPageToken = Core.Nothing,
      pageInfo = Core.Nothing,
      prevPageToken = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON ActivityListResponse where
  parseJSON =
    Core.withObject
      "ActivityListResponse"
      ( \o ->
          ActivityListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#activityListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "prevPageToken")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON ActivityListResponse where
  toJSON ActivityListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("prevPageToken" Core..=) Core.<$> prevPageToken,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | Basic details about an activity, including title, description, thumbnails, activity type and group. Next ID: 12
--
-- /See:/ 'newActivitySnippet' smart constructor.
data ActivitySnippet = ActivitySnippet
  { -- | The ID that YouTube uses to uniquely identify the channel associated with the activity.
    channelId :: (Core.Maybe Core.Text),
    -- | Channel title for the channel responsible for this activity
    channelTitle :: (Core.Maybe Core.Text),
    -- | The description of the resource primarily associated with the activity. \@mutable youtube.activities.insert
    description :: (Core.Maybe Core.Text),
    -- | The group ID associated with the activity. A group ID identifies user events that are associated with the same user and resource. For example, if a user rates a video and marks the same video as a favorite, the entries for those events would have the same group ID in the user\'s activity feed. In your user interface, you can avoid repetition by grouping events with the same groupId value.
    groupId :: (Core.Maybe Core.Text),
    -- | The date and time that the video was uploaded.
    publishedAt :: (Core.Maybe Core.DateTime'),
    -- | A map of thumbnail images associated with the resource that is primarily associated with the activity. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.
    thumbnails :: (Core.Maybe ThumbnailDetails),
    -- | The title of the resource primarily associated with the activity.
    title :: (Core.Maybe Core.Text),
    -- | The type of activity that the resource describes.
    type' :: (Core.Maybe ActivitySnippet_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivitySnippet' with the minimum fields required to make a request.
newActivitySnippet ::
  ActivitySnippet
newActivitySnippet =
  ActivitySnippet
    { channelId = Core.Nothing,
      channelTitle = Core.Nothing,
      description = Core.Nothing,
      groupId = Core.Nothing,
      publishedAt = Core.Nothing,
      thumbnails = Core.Nothing,
      title = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ActivitySnippet where
  parseJSON =
    Core.withObject
      "ActivitySnippet"
      ( \o ->
          ActivitySnippet
            Core.<$> (o Core..:? "channelId")
            Core.<*> (o Core..:? "channelTitle")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "groupId")
            Core.<*> (o Core..:? "publishedAt")
            Core.<*> (o Core..:? "thumbnails")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ActivitySnippet where
  toJSON ActivitySnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("channelId" Core..=) Core.<$> channelId,
            ("channelTitle" Core..=) Core.<$> channelTitle,
            ("description" Core..=) Core.<$> description,
            ("groupId" Core..=) Core.<$> groupId,
            ("publishedAt" Core..=) Core.<$> publishedAt,
            ("thumbnails" Core..=) Core.<$> thumbnails,
            ("title" Core..=) Core.<$> title,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A /caption/ resource represents a YouTube caption track. A caption track is associated with exactly one YouTube video.
--
-- /See:/ 'newCaption' smart constructor.
data Caption = Caption
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the caption track.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#caption\".
    kind :: Core.Text,
    -- | The snippet object contains basic details about the caption.
    snippet :: (Core.Maybe CaptionSnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Caption' with the minimum fields required to make a request.
newCaption ::
  Caption
newCaption =
  Caption
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#caption",
      snippet = Core.Nothing
    }

instance Core.FromJSON Caption where
  parseJSON =
    Core.withObject
      "Caption"
      ( \o ->
          Caption
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#caption")
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON Caption where
  toJSON Caption {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

--
-- /See:/ 'newCaptionListResponse' smart constructor.
data CaptionListResponse = CaptionListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of captions that match the request criteria.
    items :: (Core.Maybe [Caption]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#captionListResponse\".
    kind :: Core.Text,
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CaptionListResponse' with the minimum fields required to make a request.
newCaptionListResponse ::
  CaptionListResponse
newCaptionListResponse =
  CaptionListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#captionListResponse",
      visitorId = Core.Nothing
    }

instance Core.FromJSON CaptionListResponse where
  parseJSON =
    Core.withObject
      "CaptionListResponse"
      ( \o ->
          CaptionListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#captionListResponse"
                     )
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON CaptionListResponse where
  toJSON CaptionListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | Basic details about a caption track, such as its language and name.
--
-- /See:/ 'newCaptionSnippet' smart constructor.
data CaptionSnippet = CaptionSnippet
  { -- | The type of audio track associated with the caption track.
    audioTrackType :: (Core.Maybe CaptionSnippet_AudioTrackType),
    -- | The reason that YouTube failed to process the caption track. This property is only present if the state property\'s value is failed.
    failureReason :: (Core.Maybe CaptionSnippet_FailureReason),
    -- | Indicates whether YouTube synchronized the caption track to the audio track in the video. The value will be true if a sync was explicitly requested when the caption track was uploaded. For example, when calling the captions.insert or captions.update methods, you can set the sync parameter to true to instruct YouTube to sync the uploaded track to the video. If the value is false, YouTube uses the time codes in the uploaded caption track to determine when to display captions.
    isAutoSynced :: (Core.Maybe Core.Bool),
    -- | Indicates whether the track contains closed captions for the deaf and hard of hearing. The default value is false.
    isCC :: (Core.Maybe Core.Bool),
    -- | Indicates whether the caption track is a draft. If the value is true, then the track is not publicly visible. The default value is false. \@mutable youtube.captions.insert youtube.captions.update
    isDraft :: (Core.Maybe Core.Bool),
    -- | Indicates whether caption track is formatted for \"easy reader,\" meaning it is at a third-grade level for language learners. The default value is false.
    isEasyReader :: (Core.Maybe Core.Bool),
    -- | Indicates whether the caption track uses large text for the vision-impaired. The default value is false.
    isLarge :: (Core.Maybe Core.Bool),
    -- | The language of the caption track. The property value is a BCP-47 language tag.
    language :: (Core.Maybe Core.Text),
    -- | The date and time when the caption track was last updated.
    lastUpdated :: (Core.Maybe Core.DateTime'),
    -- | The name of the caption track. The name is intended to be visible to the user as an option during playback.
    name :: (Core.Maybe Core.Text),
    -- | The caption track\'s status.
    status :: (Core.Maybe CaptionSnippet_Status),
    -- | The caption track\'s type.
    trackKind :: (Core.Maybe CaptionSnippet_TrackKind),
    -- | The ID that YouTube uses to uniquely identify the video associated with the caption track. \@mutable youtube.captions.insert
    videoId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CaptionSnippet' with the minimum fields required to make a request.
newCaptionSnippet ::
  CaptionSnippet
newCaptionSnippet =
  CaptionSnippet
    { audioTrackType = Core.Nothing,
      failureReason = Core.Nothing,
      isAutoSynced = Core.Nothing,
      isCC = Core.Nothing,
      isDraft = Core.Nothing,
      isEasyReader = Core.Nothing,
      isLarge = Core.Nothing,
      language = Core.Nothing,
      lastUpdated = Core.Nothing,
      name = Core.Nothing,
      status = Core.Nothing,
      trackKind = Core.Nothing,
      videoId = Core.Nothing
    }

instance Core.FromJSON CaptionSnippet where
  parseJSON =
    Core.withObject
      "CaptionSnippet"
      ( \o ->
          CaptionSnippet
            Core.<$> (o Core..:? "audioTrackType")
            Core.<*> (o Core..:? "failureReason")
            Core.<*> (o Core..:? "isAutoSynced")
            Core.<*> (o Core..:? "isCC")
            Core.<*> (o Core..:? "isDraft")
            Core.<*> (o Core..:? "isEasyReader")
            Core.<*> (o Core..:? "isLarge")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "lastUpdated")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "trackKind")
            Core.<*> (o Core..:? "videoId")
      )

instance Core.ToJSON CaptionSnippet where
  toJSON CaptionSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("audioTrackType" Core..=) Core.<$> audioTrackType,
            ("failureReason" Core..=) Core.<$> failureReason,
            ("isAutoSynced" Core..=) Core.<$> isAutoSynced,
            ("isCC" Core..=) Core.<$> isCC,
            ("isDraft" Core..=) Core.<$> isDraft,
            ("isEasyReader" Core..=) Core.<$> isEasyReader,
            ("isLarge" Core..=) Core.<$> isLarge,
            ("language" Core..=) Core.<$> language,
            ("lastUpdated" Core..=) Core.<$> lastUpdated,
            ("name" Core..=) Core.<$> name,
            ("status" Core..=) Core.<$> status,
            ("trackKind" Core..=) Core.<$> trackKind,
            ("videoId" Core..=) Core.<$> videoId
          ]
      )

-- | Brief description of the live stream cdn settings.
--
-- /See:/ 'newCdnSettings' smart constructor.
data CdnSettings = CdnSettings
  { -- | The format of the video stream that you are sending to Youtube.
    format :: (Core.Maybe Core.Text),
    -- | The frame rate of the inbound video data.
    frameRate :: (Core.Maybe CdnSettings_FrameRate),
    -- | The ingestionInfo object contains information that YouTube provides that you need to transmit your RTMP or HTTP stream to YouTube.
    ingestionInfo :: (Core.Maybe IngestionInfo),
    -- | The method or protocol used to transmit the video stream.
    ingestionType :: (Core.Maybe CdnSettings_IngestionType),
    -- | The resolution of the inbound video data.
    resolution :: (Core.Maybe CdnSettings_Resolution)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CdnSettings' with the minimum fields required to make a request.
newCdnSettings ::
  CdnSettings
newCdnSettings =
  CdnSettings
    { format = Core.Nothing,
      frameRate = Core.Nothing,
      ingestionInfo = Core.Nothing,
      ingestionType = Core.Nothing,
      resolution = Core.Nothing
    }

instance Core.FromJSON CdnSettings where
  parseJSON =
    Core.withObject
      "CdnSettings"
      ( \o ->
          CdnSettings
            Core.<$> (o Core..:? "format")
            Core.<*> (o Core..:? "frameRate")
            Core.<*> (o Core..:? "ingestionInfo")
            Core.<*> (o Core..:? "ingestionType")
            Core.<*> (o Core..:? "resolution")
      )

instance Core.ToJSON CdnSettings where
  toJSON CdnSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("format" Core..=) Core.<$> format,
            ("frameRate" Core..=) Core.<$> frameRate,
            ("ingestionInfo" Core..=) Core.<$> ingestionInfo,
            ("ingestionType" Core..=) Core.<$> ingestionType,
            ("resolution" Core..=) Core.<$> resolution
          ]
      )

-- | A /channel/ resource contains information about a YouTube channel.
--
-- /See:/ 'newChannel' smart constructor.
data Channel = Channel
  { -- | The auditionDetails object encapsulates channel data that is relevant for YouTube Partners during the audition process.
    auditDetails :: (Core.Maybe ChannelAuditDetails),
    -- | The brandingSettings object encapsulates information about the branding of the channel.
    brandingSettings :: (Core.Maybe ChannelBrandingSettings),
    -- | The contentDetails object encapsulates information about the channel\'s content.
    contentDetails :: (Core.Maybe ChannelContentDetails),
    -- | The contentOwnerDetails object encapsulates channel data that is relevant for YouTube Partners linked with the channel.
    contentOwnerDetails :: (Core.Maybe ChannelContentOwnerDetails),
    -- | The conversionPings object encapsulates information about conversion pings that need to be respected by the channel.
    conversionPings :: (Core.Maybe ChannelConversionPings),
    -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the channel.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#channel\".
    kind :: Core.Text,
    -- | Localizations for different languages
    localizations :: (Core.Maybe Channel_Localizations),
    -- | The snippet object contains basic details about the channel, such as its title, description, and thumbnail images.
    snippet :: (Core.Maybe ChannelSnippet),
    -- | The statistics object encapsulates statistics for the channel.
    statistics :: (Core.Maybe ChannelStatistics),
    -- | The status object encapsulates information about the privacy status of the channel.
    status :: (Core.Maybe ChannelStatus),
    -- | The topicDetails object encapsulates information about Freebase topics associated with the channel.
    topicDetails :: (Core.Maybe ChannelTopicDetails)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
newChannel ::
  Channel
newChannel =
  Channel
    { auditDetails = Core.Nothing,
      brandingSettings = Core.Nothing,
      contentDetails = Core.Nothing,
      contentOwnerDetails = Core.Nothing,
      conversionPings = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#channel",
      localizations = Core.Nothing,
      snippet = Core.Nothing,
      statistics = Core.Nothing,
      status = Core.Nothing,
      topicDetails = Core.Nothing
    }

instance Core.FromJSON Channel where
  parseJSON =
    Core.withObject
      "Channel"
      ( \o ->
          Channel
            Core.<$> (o Core..:? "auditDetails")
            Core.<*> (o Core..:? "brandingSettings")
            Core.<*> (o Core..:? "contentDetails")
            Core.<*> (o Core..:? "contentOwnerDetails")
            Core.<*> (o Core..:? "conversionPings")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#channel")
            Core.<*> (o Core..:? "localizations")
            Core.<*> (o Core..:? "snippet")
            Core.<*> (o Core..:? "statistics")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "topicDetails")
      )

instance Core.ToJSON Channel where
  toJSON Channel {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditDetails" Core..=) Core.<$> auditDetails,
            ("brandingSettings" Core..=)
              Core.<$> brandingSettings,
            ("contentDetails" Core..=) Core.<$> contentDetails,
            ("contentOwnerDetails" Core..=)
              Core.<$> contentOwnerDetails,
            ("conversionPings" Core..=) Core.<$> conversionPings,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("localizations" Core..=) Core.<$> localizations,
            ("snippet" Core..=) Core.<$> snippet,
            ("statistics" Core..=) Core.<$> statistics,
            ("status" Core..=) Core.<$> status,
            ("topicDetails" Core..=) Core.<$> topicDetails
          ]
      )

-- | Localizations for different languages
--
-- /See:/ 'newChannel_Localizations' smart constructor.
newtype Channel_Localizations = Channel_Localizations
  { -- |
    addtional :: (Core.HashMap Core.Text ChannelLocalization)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel_Localizations' with the minimum fields required to make a request.
newChannel_Localizations ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text ChannelLocalization ->
  Channel_Localizations
newChannel_Localizations addtional =
  Channel_Localizations {addtional = addtional}

instance Core.FromJSON Channel_Localizations where
  parseJSON =
    Core.withObject
      "Channel_Localizations"
      ( \o ->
          Channel_Localizations
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Channel_Localizations where
  toJSON Channel_Localizations {..} =
    Core.toJSON addtional

-- | The auditDetails object encapsulates channel data that is relevant for YouTube Partners during the audit process.
--
-- /See:/ 'newChannelAuditDetails' smart constructor.
data ChannelAuditDetails = ChannelAuditDetails
  { -- | Whether or not the channel respects the community guidelines.
    communityGuidelinesGoodStanding :: (Core.Maybe Core.Bool),
    -- | Whether or not the channel has any unresolved claims.
    contentIdClaimsGoodStanding :: (Core.Maybe Core.Bool),
    -- | Whether or not the channel has any copyright strikes.
    copyrightStrikesGoodStanding :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelAuditDetails' with the minimum fields required to make a request.
newChannelAuditDetails ::
  ChannelAuditDetails
newChannelAuditDetails =
  ChannelAuditDetails
    { communityGuidelinesGoodStanding = Core.Nothing,
      contentIdClaimsGoodStanding = Core.Nothing,
      copyrightStrikesGoodStanding = Core.Nothing
    }

instance Core.FromJSON ChannelAuditDetails where
  parseJSON =
    Core.withObject
      "ChannelAuditDetails"
      ( \o ->
          ChannelAuditDetails
            Core.<$> (o Core..:? "communityGuidelinesGoodStanding")
            Core.<*> (o Core..:? "contentIdClaimsGoodStanding")
            Core.<*> (o Core..:? "copyrightStrikesGoodStanding")
      )

instance Core.ToJSON ChannelAuditDetails where
  toJSON ChannelAuditDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("communityGuidelinesGoodStanding" Core..=)
              Core.<$> communityGuidelinesGoodStanding,
            ("contentIdClaimsGoodStanding" Core..=)
              Core.<$> contentIdClaimsGoodStanding,
            ("copyrightStrikesGoodStanding" Core..=)
              Core.<$> copyrightStrikesGoodStanding
          ]
      )

-- | A channel banner returned as the response to a channel_banner.insert call.
--
-- /See:/ 'newChannelBannerResource' smart constructor.
data ChannelBannerResource = ChannelBannerResource
  { -- |
    etag :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#channelBannerResource\".
    kind :: Core.Text,
    -- | The URL of this banner image.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelBannerResource' with the minimum fields required to make a request.
newChannelBannerResource ::
  ChannelBannerResource
newChannelBannerResource =
  ChannelBannerResource
    { etag = Core.Nothing,
      kind = "youtube#channelBannerResource",
      url = Core.Nothing
    }

instance Core.FromJSON ChannelBannerResource where
  parseJSON =
    Core.withObject
      "ChannelBannerResource"
      ( \o ->
          ChannelBannerResource
            Core.<$> (o Core..:? "etag")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#channelBannerResource"
                     )
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON ChannelBannerResource where
  toJSON ChannelBannerResource {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Branding properties of a YouTube channel.
--
-- /See:/ 'newChannelBrandingSettings' smart constructor.
data ChannelBrandingSettings = ChannelBrandingSettings
  { -- | Branding properties for the channel view.
    channel :: (Core.Maybe ChannelSettings),
    -- | Additional experimental branding properties.
    hints :: (Core.Maybe [PropertyValue]),
    -- | Branding properties for branding images.
    image :: (Core.Maybe ImageSettings),
    -- | Branding properties for the watch page.
    watch :: (Core.Maybe WatchSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelBrandingSettings' with the minimum fields required to make a request.
newChannelBrandingSettings ::
  ChannelBrandingSettings
newChannelBrandingSettings =
  ChannelBrandingSettings
    { channel = Core.Nothing,
      hints = Core.Nothing,
      image = Core.Nothing,
      watch = Core.Nothing
    }

instance Core.FromJSON ChannelBrandingSettings where
  parseJSON =
    Core.withObject
      "ChannelBrandingSettings"
      ( \o ->
          ChannelBrandingSettings
            Core.<$> (o Core..:? "channel")
            Core.<*> (o Core..:? "hints" Core..!= Core.mempty)
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "watch")
      )

instance Core.ToJSON ChannelBrandingSettings where
  toJSON ChannelBrandingSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("channel" Core..=) Core.<$> channel,
            ("hints" Core..=) Core.<$> hints,
            ("image" Core..=) Core.<$> image,
            ("watch" Core..=) Core.<$> watch
          ]
      )

-- | Details about the content of a channel.
--
-- /See:/ 'newChannelContentDetails' smart constructor.
newtype ChannelContentDetails = ChannelContentDetails
  { -- |
    relatedPlaylists :: (Core.Maybe ChannelContentDetails_RelatedPlaylists)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelContentDetails' with the minimum fields required to make a request.
newChannelContentDetails ::
  ChannelContentDetails
newChannelContentDetails =
  ChannelContentDetails {relatedPlaylists = Core.Nothing}

instance Core.FromJSON ChannelContentDetails where
  parseJSON =
    Core.withObject
      "ChannelContentDetails"
      ( \o ->
          ChannelContentDetails
            Core.<$> (o Core..:? "relatedPlaylists")
      )

instance Core.ToJSON ChannelContentDetails where
  toJSON ChannelContentDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("relatedPlaylists" Core..=)
              Core.<$> relatedPlaylists
          ]
      )

--
-- /See:/ 'newChannelContentDetails_RelatedPlaylists' smart constructor.
data ChannelContentDetails_RelatedPlaylists = ChannelContentDetails_RelatedPlaylists
  { -- | The ID of the playlist that contains the channel\"s favorite videos. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list.
    favorites :: (Core.Maybe Core.Text),
    -- | The ID of the playlist that contains the channel\"s liked videos. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list.
    likes :: (Core.Maybe Core.Text),
    -- | The ID of the playlist that contains the channel\"s uploaded videos. Use the videos.insert method to upload new videos and the videos.delete method to delete previously uploaded videos.
    uploads :: (Core.Maybe Core.Text),
    -- | The ID of the playlist that contains the channel\"s watch history. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list.
    watchHistory :: (Core.Maybe Core.Text),
    -- | The ID of the playlist that contains the channel\"s watch later playlist. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list.
    watchLater :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelContentDetails_RelatedPlaylists' with the minimum fields required to make a request.
newChannelContentDetails_RelatedPlaylists ::
  ChannelContentDetails_RelatedPlaylists
newChannelContentDetails_RelatedPlaylists =
  ChannelContentDetails_RelatedPlaylists
    { favorites = Core.Nothing,
      likes = Core.Nothing,
      uploads = Core.Nothing,
      watchHistory = Core.Nothing,
      watchLater = Core.Nothing
    }

instance
  Core.FromJSON
    ChannelContentDetails_RelatedPlaylists
  where
  parseJSON =
    Core.withObject
      "ChannelContentDetails_RelatedPlaylists"
      ( \o ->
          ChannelContentDetails_RelatedPlaylists
            Core.<$> (o Core..:? "favorites")
            Core.<*> (o Core..:? "likes")
            Core.<*> (o Core..:? "uploads")
            Core.<*> (o Core..:? "watchHistory")
            Core.<*> (o Core..:? "watchLater")
      )

instance
  Core.ToJSON
    ChannelContentDetails_RelatedPlaylists
  where
  toJSON ChannelContentDetails_RelatedPlaylists {..} =
    Core.object
      ( Core.catMaybes
          [ ("favorites" Core..=) Core.<$> favorites,
            ("likes" Core..=) Core.<$> likes,
            ("uploads" Core..=) Core.<$> uploads,
            ("watchHistory" Core..=) Core.<$> watchHistory,
            ("watchLater" Core..=) Core.<$> watchLater
          ]
      )

-- | The contentOwnerDetails object encapsulates channel data that is relevant for YouTube Partners linked with the channel.
--
-- /See:/ 'newChannelContentOwnerDetails' smart constructor.
data ChannelContentOwnerDetails = ChannelContentOwnerDetails
  { -- | The ID of the content owner linked to the channel.
    contentOwner :: (Core.Maybe Core.Text),
    -- | The date and time when the channel was linked to the content owner.
    timeLinked :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelContentOwnerDetails' with the minimum fields required to make a request.
newChannelContentOwnerDetails ::
  ChannelContentOwnerDetails
newChannelContentOwnerDetails =
  ChannelContentOwnerDetails
    { contentOwner = Core.Nothing,
      timeLinked = Core.Nothing
    }

instance Core.FromJSON ChannelContentOwnerDetails where
  parseJSON =
    Core.withObject
      "ChannelContentOwnerDetails"
      ( \o ->
          ChannelContentOwnerDetails
            Core.<$> (o Core..:? "contentOwner")
            Core.<*> (o Core..:? "timeLinked")
      )

instance Core.ToJSON ChannelContentOwnerDetails where
  toJSON ChannelContentOwnerDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentOwner" Core..=) Core.<$> contentOwner,
            ("timeLinked" Core..=) Core.<$> timeLinked
          ]
      )

-- | Pings that the app shall fire (authenticated by biscotti cookie). Each ping has a context, in which the app must fire the ping, and a url identifying the ping.
--
-- /See:/ 'newChannelConversionPing' smart constructor.
data ChannelConversionPing = ChannelConversionPing
  { -- | Defines the context of the ping.
    context :: (Core.Maybe ChannelConversionPing_Context),
    -- | The url (without the schema) that the player shall send the ping to. It\'s at caller\'s descretion to decide which schema to use (http vs https) Example of a returned url: \/\/googleads.g.doubleclick.net\/pagead\/ viewthroughconversion\/962985656\/?data=path%3DtHe_path%3Btype%3D cview%3Butuid%3DGISQtTNGYqaYl4sKxoVvKA&labe=default The caller must append biscotti authentication (ms param in case of mobile, for example) to this ping.
    conversionUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelConversionPing' with the minimum fields required to make a request.
newChannelConversionPing ::
  ChannelConversionPing
newChannelConversionPing =
  ChannelConversionPing {context = Core.Nothing, conversionUrl = Core.Nothing}

instance Core.FromJSON ChannelConversionPing where
  parseJSON =
    Core.withObject
      "ChannelConversionPing"
      ( \o ->
          ChannelConversionPing
            Core.<$> (o Core..:? "context")
            Core.<*> (o Core..:? "conversionUrl")
      )

instance Core.ToJSON ChannelConversionPing where
  toJSON ChannelConversionPing {..} =
    Core.object
      ( Core.catMaybes
          [ ("context" Core..=) Core.<$> context,
            ("conversionUrl" Core..=) Core.<$> conversionUrl
          ]
      )

-- | The conversionPings object encapsulates information about conversion pings that need to be respected by the channel.
--
-- /See:/ 'newChannelConversionPings' smart constructor.
newtype ChannelConversionPings = ChannelConversionPings
  { -- | Pings that the app shall fire (authenticated by biscotti cookie). Each ping has a context, in which the app must fire the ping, and a url identifying the ping.
    pings :: (Core.Maybe [ChannelConversionPing])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelConversionPings' with the minimum fields required to make a request.
newChannelConversionPings ::
  ChannelConversionPings
newChannelConversionPings = ChannelConversionPings {pings = Core.Nothing}

instance Core.FromJSON ChannelConversionPings where
  parseJSON =
    Core.withObject
      "ChannelConversionPings"
      ( \o ->
          ChannelConversionPings
            Core.<$> (o Core..:? "pings" Core..!= Core.mempty)
      )

instance Core.ToJSON ChannelConversionPings where
  toJSON ChannelConversionPings {..} =
    Core.object
      (Core.catMaybes [("pings" Core..=) Core.<$> pings])

--
-- /See:/ 'newChannelListResponse' smart constructor.
data ChannelListResponse = ChannelListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- |
    items :: (Core.Maybe [Channel]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#channelListResponse\".
    kind :: Core.Text,
    -- | The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | General pagination information.
    pageInfo :: (Core.Maybe PageInfo),
    -- | The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.
    prevPageToken :: (Core.Maybe Core.Text),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelListResponse' with the minimum fields required to make a request.
newChannelListResponse ::
  ChannelListResponse
newChannelListResponse =
  ChannelListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#channelListResponse",
      nextPageToken = Core.Nothing,
      pageInfo = Core.Nothing,
      prevPageToken = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON ChannelListResponse where
  parseJSON =
    Core.withObject
      "ChannelListResponse"
      ( \o ->
          ChannelListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#channelListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "prevPageToken")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON ChannelListResponse where
  toJSON ChannelListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("prevPageToken" Core..=) Core.<$> prevPageToken,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | Channel localization setting
--
-- /See:/ 'newChannelLocalization' smart constructor.
data ChannelLocalization = ChannelLocalization
  { -- | The localized strings for channel\'s description.
    description :: (Core.Maybe Core.Text),
    -- | The localized strings for channel\'s title.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelLocalization' with the minimum fields required to make a request.
newChannelLocalization ::
  ChannelLocalization
newChannelLocalization =
  ChannelLocalization {description = Core.Nothing, title = Core.Nothing}

instance Core.FromJSON ChannelLocalization where
  parseJSON =
    Core.withObject
      "ChannelLocalization"
      ( \o ->
          ChannelLocalization
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON ChannelLocalization where
  toJSON ChannelLocalization {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("title" Core..=) Core.<$> title
          ]
      )

--
-- /See:/ 'newChannelProfileDetails' smart constructor.
data ChannelProfileDetails = ChannelProfileDetails
  { -- | The YouTube channel ID.
    channelId :: (Core.Maybe Core.Text),
    -- | The channel\'s URL.
    channelUrl :: (Core.Maybe Core.Text),
    -- | The channel\'s display name.
    displayName :: (Core.Maybe Core.Text),
    -- | The channels\'s avatar URL.
    profileImageUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelProfileDetails' with the minimum fields required to make a request.
newChannelProfileDetails ::
  ChannelProfileDetails
newChannelProfileDetails =
  ChannelProfileDetails
    { channelId = Core.Nothing,
      channelUrl = Core.Nothing,
      displayName = Core.Nothing,
      profileImageUrl = Core.Nothing
    }

instance Core.FromJSON ChannelProfileDetails where
  parseJSON =
    Core.withObject
      "ChannelProfileDetails"
      ( \o ->
          ChannelProfileDetails
            Core.<$> (o Core..:? "channelId")
            Core.<*> (o Core..:? "channelUrl")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "profileImageUrl")
      )

instance Core.ToJSON ChannelProfileDetails where
  toJSON ChannelProfileDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("channelId" Core..=) Core.<$> channelId,
            ("channelUrl" Core..=) Core.<$> channelUrl,
            ("displayName" Core..=) Core.<$> displayName,
            ("profileImageUrl" Core..=)
              Core.<$> profileImageUrl
          ]
      )

--
-- /See:/ 'newChannelSection' smart constructor.
data ChannelSection = ChannelSection
  { -- | The contentDetails object contains details about the channel section content, such as a list of playlists or channels featured in the section.
    contentDetails :: (Core.Maybe ChannelSectionContentDetails),
    -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the channel section.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#channelSection\".
    kind :: Core.Text,
    -- | Localizations for different languages
    localizations :: (Core.Maybe ChannelSection_Localizations),
    -- | The snippet object contains basic details about the channel section, such as its type, style and title.
    snippet :: (Core.Maybe ChannelSectionSnippet),
    -- | The targeting object contains basic targeting settings about the channel section.
    targeting :: (Core.Maybe ChannelSectionTargeting)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelSection' with the minimum fields required to make a request.
newChannelSection ::
  ChannelSection
newChannelSection =
  ChannelSection
    { contentDetails = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#channelSection",
      localizations = Core.Nothing,
      snippet = Core.Nothing,
      targeting = Core.Nothing
    }

instance Core.FromJSON ChannelSection where
  parseJSON =
    Core.withObject
      "ChannelSection"
      ( \o ->
          ChannelSection
            Core.<$> (o Core..:? "contentDetails")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#channelSection")
            Core.<*> (o Core..:? "localizations")
            Core.<*> (o Core..:? "snippet")
            Core.<*> (o Core..:? "targeting")
      )

instance Core.ToJSON ChannelSection where
  toJSON ChannelSection {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentDetails" Core..=) Core.<$> contentDetails,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("localizations" Core..=) Core.<$> localizations,
            ("snippet" Core..=) Core.<$> snippet,
            ("targeting" Core..=) Core.<$> targeting
          ]
      )

-- | Localizations for different languages
--
-- /See:/ 'newChannelSection_Localizations' smart constructor.
newtype ChannelSection_Localizations = ChannelSection_Localizations
  { -- |
    addtional :: (Core.HashMap Core.Text ChannelSectionLocalization)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelSection_Localizations' with the minimum fields required to make a request.
newChannelSection_Localizations ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text ChannelSectionLocalization ->
  ChannelSection_Localizations
newChannelSection_Localizations addtional =
  ChannelSection_Localizations {addtional = addtional}

instance Core.FromJSON ChannelSection_Localizations where
  parseJSON =
    Core.withObject
      "ChannelSection_Localizations"
      ( \o ->
          ChannelSection_Localizations
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ChannelSection_Localizations where
  toJSON ChannelSection_Localizations {..} =
    Core.toJSON addtional

-- | Details about a channelsection, including playlists and channels.
--
-- /See:/ 'newChannelSectionContentDetails' smart constructor.
data ChannelSectionContentDetails = ChannelSectionContentDetails
  { -- | The channel ids for type multiple_channels.
    channels :: (Core.Maybe [Core.Text]),
    -- | The playlist ids for type single/playlist and multiple/playlists. For singlePlaylist, only one playlistId is allowed.
    playlists :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelSectionContentDetails' with the minimum fields required to make a request.
newChannelSectionContentDetails ::
  ChannelSectionContentDetails
newChannelSectionContentDetails =
  ChannelSectionContentDetails
    { channels = Core.Nothing,
      playlists = Core.Nothing
    }

instance Core.FromJSON ChannelSectionContentDetails where
  parseJSON =
    Core.withObject
      "ChannelSectionContentDetails"
      ( \o ->
          ChannelSectionContentDetails
            Core.<$> (o Core..:? "channels" Core..!= Core.mempty)
            Core.<*> (o Core..:? "playlists" Core..!= Core.mempty)
      )

instance Core.ToJSON ChannelSectionContentDetails where
  toJSON ChannelSectionContentDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("channels" Core..=) Core.<$> channels,
            ("playlists" Core..=) Core.<$> playlists
          ]
      )

--
-- /See:/ 'newChannelSectionListResponse' smart constructor.
data ChannelSectionListResponse = ChannelSectionListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of ChannelSections that match the request criteria.
    items :: (Core.Maybe [ChannelSection]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#channelSectionListResponse\".
    kind :: Core.Text,
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelSectionListResponse' with the minimum fields required to make a request.
newChannelSectionListResponse ::
  ChannelSectionListResponse
newChannelSectionListResponse =
  ChannelSectionListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#channelSectionListResponse",
      visitorId = Core.Nothing
    }

instance Core.FromJSON ChannelSectionListResponse where
  parseJSON =
    Core.withObject
      "ChannelSectionListResponse"
      ( \o ->
          ChannelSectionListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#channelSectionListResponse"
                     )
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON ChannelSectionListResponse where
  toJSON ChannelSectionListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | ChannelSection localization setting
--
-- /See:/ 'newChannelSectionLocalization' smart constructor.
newtype ChannelSectionLocalization = ChannelSectionLocalization
  { -- | The localized strings for channel section\'s title.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelSectionLocalization' with the minimum fields required to make a request.
newChannelSectionLocalization ::
  ChannelSectionLocalization
newChannelSectionLocalization =
  ChannelSectionLocalization {title = Core.Nothing}

instance Core.FromJSON ChannelSectionLocalization where
  parseJSON =
    Core.withObject
      "ChannelSectionLocalization"
      ( \o ->
          ChannelSectionLocalization
            Core.<$> (o Core..:? "title")
      )

instance Core.ToJSON ChannelSectionLocalization where
  toJSON ChannelSectionLocalization {..} =
    Core.object
      (Core.catMaybes [("title" Core..=) Core.<$> title])

-- | Basic details about a channel section, including title, style and position.
--
-- /See:/ 'newChannelSectionSnippet' smart constructor.
data ChannelSectionSnippet = ChannelSectionSnippet
  { -- | The ID that YouTube uses to uniquely identify the channel that published the channel section.
    channelId :: (Core.Maybe Core.Text),
    -- | The language of the channel section\'s default title and description.
    defaultLanguage :: (Core.Maybe Core.Text),
    -- | Localized title, read-only.
    localized :: (Core.Maybe ChannelSectionLocalization),
    -- | The position of the channel section in the channel.
    position :: (Core.Maybe Core.Word32),
    -- | The style of the channel section.
    style :: (Core.Maybe ChannelSectionSnippet_Style),
    -- | The channel section\'s title for multiple/playlists and multiple/channels.
    title :: (Core.Maybe Core.Text),
    -- | The type of the channel section.
    type' :: (Core.Maybe ChannelSectionSnippet_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelSectionSnippet' with the minimum fields required to make a request.
newChannelSectionSnippet ::
  ChannelSectionSnippet
newChannelSectionSnippet =
  ChannelSectionSnippet
    { channelId = Core.Nothing,
      defaultLanguage = Core.Nothing,
      localized = Core.Nothing,
      position = Core.Nothing,
      style = Core.Nothing,
      title = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ChannelSectionSnippet where
  parseJSON =
    Core.withObject
      "ChannelSectionSnippet"
      ( \o ->
          ChannelSectionSnippet
            Core.<$> (o Core..:? "channelId")
            Core.<*> (o Core..:? "defaultLanguage")
            Core.<*> (o Core..:? "localized")
            Core.<*> (o Core..:? "position")
            Core.<*> (o Core..:? "style")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ChannelSectionSnippet where
  toJSON ChannelSectionSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("channelId" Core..=) Core.<$> channelId,
            ("defaultLanguage" Core..=) Core.<$> defaultLanguage,
            ("localized" Core..=) Core.<$> localized,
            ("position" Core..=) Core.<$> position,
            ("style" Core..=) Core.<$> style,
            ("title" Core..=) Core.<$> title,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | ChannelSection targeting setting.
--
-- /See:/ 'newChannelSectionTargeting' smart constructor.
data ChannelSectionTargeting = ChannelSectionTargeting
  { -- | The country the channel section is targeting.
    countries :: (Core.Maybe [Core.Text]),
    -- | The language the channel section is targeting.
    languages :: (Core.Maybe [Core.Text]),
    -- | The region the channel section is targeting.
    regions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelSectionTargeting' with the minimum fields required to make a request.
newChannelSectionTargeting ::
  ChannelSectionTargeting
newChannelSectionTargeting =
  ChannelSectionTargeting
    { countries = Core.Nothing,
      languages = Core.Nothing,
      regions = Core.Nothing
    }

instance Core.FromJSON ChannelSectionTargeting where
  parseJSON =
    Core.withObject
      "ChannelSectionTargeting"
      ( \o ->
          ChannelSectionTargeting
            Core.<$> (o Core..:? "countries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "languages" Core..!= Core.mempty)
            Core.<*> (o Core..:? "regions" Core..!= Core.mempty)
      )

instance Core.ToJSON ChannelSectionTargeting where
  toJSON ChannelSectionTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("countries" Core..=) Core.<$> countries,
            ("languages" Core..=) Core.<$> languages,
            ("regions" Core..=) Core.<$> regions
          ]
      )

-- | Branding properties for the channel view.
--
-- /See:/ 'newChannelSettings' smart constructor.
data ChannelSettings = ChannelSettings
  { -- | The country of the channel.
    country :: (Core.Maybe Core.Text),
    -- |
    defaultLanguage :: (Core.Maybe Core.Text),
    -- | Which content tab users should see when viewing the channel.
    defaultTab :: (Core.Maybe Core.Text),
    -- | Specifies the channel description.
    description :: (Core.Maybe Core.Text),
    -- | Title for the featured channels tab.
    featuredChannelsTitle :: (Core.Maybe Core.Text),
    -- | The list of featured channels.
    featuredChannelsUrls :: (Core.Maybe [Core.Text]),
    -- | Lists keywords associated with the channel, comma-separated.
    keywords :: (Core.Maybe Core.Text),
    -- | Whether user-submitted comments left on the channel page need to be approved by the channel owner to be publicly visible.
    moderateComments :: (Core.Maybe Core.Bool),
    -- | A prominent color that can be rendered on this channel page.
    profileColor :: (Core.Maybe Core.Text),
    -- | Whether the tab to browse the videos should be displayed.
    showBrowseView :: (Core.Maybe Core.Bool),
    -- | Whether related channels should be proposed.
    showRelatedChannels :: (Core.Maybe Core.Bool),
    -- | Specifies the channel title.
    title :: (Core.Maybe Core.Text),
    -- | The ID for a Google Analytics account to track and measure traffic to the channels.
    trackingAnalyticsAccountId :: (Core.Maybe Core.Text),
    -- | The trailer of the channel, for users that are not subscribers.
    unsubscribedTrailer :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelSettings' with the minimum fields required to make a request.
newChannelSettings ::
  ChannelSettings
newChannelSettings =
  ChannelSettings
    { country = Core.Nothing,
      defaultLanguage = Core.Nothing,
      defaultTab = Core.Nothing,
      description = Core.Nothing,
      featuredChannelsTitle = Core.Nothing,
      featuredChannelsUrls = Core.Nothing,
      keywords = Core.Nothing,
      moderateComments = Core.Nothing,
      profileColor = Core.Nothing,
      showBrowseView = Core.Nothing,
      showRelatedChannels = Core.Nothing,
      title = Core.Nothing,
      trackingAnalyticsAccountId = Core.Nothing,
      unsubscribedTrailer = Core.Nothing
    }

instance Core.FromJSON ChannelSettings where
  parseJSON =
    Core.withObject
      "ChannelSettings"
      ( \o ->
          ChannelSettings
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "defaultLanguage")
            Core.<*> (o Core..:? "defaultTab")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "featuredChannelsTitle")
            Core.<*> ( o Core..:? "featuredChannelsUrls"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "keywords")
            Core.<*> (o Core..:? "moderateComments")
            Core.<*> (o Core..:? "profileColor")
            Core.<*> (o Core..:? "showBrowseView")
            Core.<*> (o Core..:? "showRelatedChannels")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "trackingAnalyticsAccountId")
            Core.<*> (o Core..:? "unsubscribedTrailer")
      )

instance Core.ToJSON ChannelSettings where
  toJSON ChannelSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("defaultLanguage" Core..=) Core.<$> defaultLanguage,
            ("defaultTab" Core..=) Core.<$> defaultTab,
            ("description" Core..=) Core.<$> description,
            ("featuredChannelsTitle" Core..=)
              Core.<$> featuredChannelsTitle,
            ("featuredChannelsUrls" Core..=)
              Core.<$> featuredChannelsUrls,
            ("keywords" Core..=) Core.<$> keywords,
            ("moderateComments" Core..=)
              Core.<$> moderateComments,
            ("profileColor" Core..=) Core.<$> profileColor,
            ("showBrowseView" Core..=) Core.<$> showBrowseView,
            ("showRelatedChannels" Core..=)
              Core.<$> showRelatedChannels,
            ("title" Core..=) Core.<$> title,
            ("trackingAnalyticsAccountId" Core..=)
              Core.<$> trackingAnalyticsAccountId,
            ("unsubscribedTrailer" Core..=)
              Core.<$> unsubscribedTrailer
          ]
      )

-- | Basic details about a channel, including title, description and thumbnails.
--
-- /See:/ 'newChannelSnippet' smart constructor.
data ChannelSnippet = ChannelSnippet
  { -- | The country of the channel.
    country :: (Core.Maybe Core.Text),
    -- | The custom url of the channel.
    customUrl :: (Core.Maybe Core.Text),
    -- | The language of the channel\'s default title and description.
    defaultLanguage :: (Core.Maybe Core.Text),
    -- | The description of the channel.
    description :: (Core.Maybe Core.Text),
    -- | Localized title and description, read-only.
    localized :: (Core.Maybe ChannelLocalization),
    -- | The date and time that the channel was created.
    publishedAt :: (Core.Maybe Core.DateTime'),
    -- | A map of thumbnail images associated with the channel. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. When displaying thumbnails in your application, make sure that your code uses the image URLs exactly as they are returned in API responses. For example, your application should not use the http domain instead of the https domain in a URL returned in an API response. Beginning in July 2018, channel thumbnail URLs will only be available in the https domain, which is how the URLs appear in API responses. After that time, you might see broken images in your application if it tries to load YouTube images from the http domain. Thumbnail images might be empty for newly created channels and might take up to one day to populate.
    thumbnails :: (Core.Maybe ThumbnailDetails),
    -- | The channel\'s title.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelSnippet' with the minimum fields required to make a request.
newChannelSnippet ::
  ChannelSnippet
newChannelSnippet =
  ChannelSnippet
    { country = Core.Nothing,
      customUrl = Core.Nothing,
      defaultLanguage = Core.Nothing,
      description = Core.Nothing,
      localized = Core.Nothing,
      publishedAt = Core.Nothing,
      thumbnails = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON ChannelSnippet where
  parseJSON =
    Core.withObject
      "ChannelSnippet"
      ( \o ->
          ChannelSnippet
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "customUrl")
            Core.<*> (o Core..:? "defaultLanguage")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "localized")
            Core.<*> (o Core..:? "publishedAt")
            Core.<*> (o Core..:? "thumbnails")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON ChannelSnippet where
  toJSON ChannelSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("customUrl" Core..=) Core.<$> customUrl,
            ("defaultLanguage" Core..=) Core.<$> defaultLanguage,
            ("description" Core..=) Core.<$> description,
            ("localized" Core..=) Core.<$> localized,
            ("publishedAt" Core..=) Core.<$> publishedAt,
            ("thumbnails" Core..=) Core.<$> thumbnails,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Statistics about a channel: number of subscribers, number of videos in the channel, etc.
--
-- /See:/ 'newChannelStatistics' smart constructor.
data ChannelStatistics = ChannelStatistics
  { -- | The number of comments for the channel.
    commentCount :: (Core.Maybe Core.Word64),
    -- | Whether or not the number of subscribers is shown for this user.
    hiddenSubscriberCount :: (Core.Maybe Core.Bool),
    -- | The number of subscribers that the channel has.
    subscriberCount :: (Core.Maybe Core.Word64),
    -- | The number of videos uploaded to the channel.
    videoCount :: (Core.Maybe Core.Word64),
    -- | The number of times the channel has been viewed.
    viewCount :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelStatistics' with the minimum fields required to make a request.
newChannelStatistics ::
  ChannelStatistics
newChannelStatistics =
  ChannelStatistics
    { commentCount = Core.Nothing,
      hiddenSubscriberCount = Core.Nothing,
      subscriberCount = Core.Nothing,
      videoCount = Core.Nothing,
      viewCount = Core.Nothing
    }

instance Core.FromJSON ChannelStatistics where
  parseJSON =
    Core.withObject
      "ChannelStatistics"
      ( \o ->
          ChannelStatistics
            Core.<$> (o Core..:? "commentCount")
            Core.<*> (o Core..:? "hiddenSubscriberCount")
            Core.<*> (o Core..:? "subscriberCount")
            Core.<*> (o Core..:? "videoCount")
            Core.<*> (o Core..:? "viewCount")
      )

instance Core.ToJSON ChannelStatistics where
  toJSON ChannelStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ ("commentCount" Core..=) Core.. Core.AsText
              Core.<$> commentCount,
            ("hiddenSubscriberCount" Core..=)
              Core.<$> hiddenSubscriberCount,
            ("subscriberCount" Core..=) Core.. Core.AsText
              Core.<$> subscriberCount,
            ("videoCount" Core..=) Core.. Core.AsText
              Core.<$> videoCount,
            ("viewCount" Core..=) Core.. Core.AsText
              Core.<$> viewCount
          ]
      )

-- | JSON template for the status part of a channel.
--
-- /See:/ 'newChannelStatus' smart constructor.
data ChannelStatus = ChannelStatus
  { -- | If true, then the user is linked to either a YouTube username or G+ account. Otherwise, the user doesn\'t have a public YouTube identity.
    isLinked :: (Core.Maybe Core.Bool),
    -- | The long uploads status of this channel. See https:\/\/support.google.com\/youtube\/answer\/71673 for more information.
    longUploadsStatus :: (Core.Maybe ChannelStatus_LongUploadsStatus),
    -- |
    madeForKids :: (Core.Maybe Core.Bool),
    -- | Privacy status of the channel.
    privacyStatus :: (Core.Maybe ChannelStatus_PrivacyStatus),
    -- |
    selfDeclaredMadeForKids :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelStatus' with the minimum fields required to make a request.
newChannelStatus ::
  ChannelStatus
newChannelStatus =
  ChannelStatus
    { isLinked = Core.Nothing,
      longUploadsStatus = Core.Nothing,
      madeForKids = Core.Nothing,
      privacyStatus = Core.Nothing,
      selfDeclaredMadeForKids = Core.Nothing
    }

instance Core.FromJSON ChannelStatus where
  parseJSON =
    Core.withObject
      "ChannelStatus"
      ( \o ->
          ChannelStatus
            Core.<$> (o Core..:? "isLinked")
            Core.<*> (o Core..:? "longUploadsStatus")
            Core.<*> (o Core..:? "madeForKids")
            Core.<*> (o Core..:? "privacyStatus")
            Core.<*> (o Core..:? "selfDeclaredMadeForKids")
      )

instance Core.ToJSON ChannelStatus where
  toJSON ChannelStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("isLinked" Core..=) Core.<$> isLinked,
            ("longUploadsStatus" Core..=)
              Core.<$> longUploadsStatus,
            ("madeForKids" Core..=) Core.<$> madeForKids,
            ("privacyStatus" Core..=) Core.<$> privacyStatus,
            ("selfDeclaredMadeForKids" Core..=)
              Core.<$> selfDeclaredMadeForKids
          ]
      )

-- | Information specific to a store on a merchandising platform linked to a YouTube channel.
--
-- /See:/ 'newChannelToStoreLinkDetails' smart constructor.
data ChannelToStoreLinkDetails = ChannelToStoreLinkDetails
  { -- | Name of the store.
    storeName :: (Core.Maybe Core.Text),
    -- | Landing page of the store.
    storeUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelToStoreLinkDetails' with the minimum fields required to make a request.
newChannelToStoreLinkDetails ::
  ChannelToStoreLinkDetails
newChannelToStoreLinkDetails =
  ChannelToStoreLinkDetails {storeName = Core.Nothing, storeUrl = Core.Nothing}

instance Core.FromJSON ChannelToStoreLinkDetails where
  parseJSON =
    Core.withObject
      "ChannelToStoreLinkDetails"
      ( \o ->
          ChannelToStoreLinkDetails
            Core.<$> (o Core..:? "storeName")
            Core.<*> (o Core..:? "storeUrl")
      )

instance Core.ToJSON ChannelToStoreLinkDetails where
  toJSON ChannelToStoreLinkDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("storeName" Core..=) Core.<$> storeName,
            ("storeUrl" Core..=) Core.<$> storeUrl
          ]
      )

-- | Freebase topic information related to the channel.
--
-- /See:/ 'newChannelTopicDetails' smart constructor.
data ChannelTopicDetails = ChannelTopicDetails
  { -- | A list of Wikipedia URLs that describe the channel\'s content.
    topicCategories :: (Core.Maybe [Core.Text]),
    -- | A list of Freebase topic IDs associated with the channel. You can retrieve information about each topic using the Freebase Topic API.
    topicIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChannelTopicDetails' with the minimum fields required to make a request.
newChannelTopicDetails ::
  ChannelTopicDetails
newChannelTopicDetails =
  ChannelTopicDetails {topicCategories = Core.Nothing, topicIds = Core.Nothing}

instance Core.FromJSON ChannelTopicDetails where
  parseJSON =
    Core.withObject
      "ChannelTopicDetails"
      ( \o ->
          ChannelTopicDetails
            Core.<$> (o Core..:? "topicCategories" Core..!= Core.mempty)
            Core.<*> (o Core..:? "topicIds" Core..!= Core.mempty)
      )

instance Core.ToJSON ChannelTopicDetails where
  toJSON ChannelTopicDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("topicCategories" Core..=)
              Core.<$> topicCategories,
            ("topicIds" Core..=) Core.<$> topicIds
          ]
      )

-- | A /comment/ represents a single YouTube comment.
--
-- /See:/ 'newComment' smart constructor.
data Comment = Comment
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the comment.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#comment\".
    kind :: Core.Text,
    -- | The snippet object contains basic details about the comment.
    snippet :: (Core.Maybe CommentSnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment' with the minimum fields required to make a request.
newComment ::
  Comment
newComment =
  Comment
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#comment",
      snippet = Core.Nothing
    }

instance Core.FromJSON Comment where
  parseJSON =
    Core.withObject
      "Comment"
      ( \o ->
          Comment
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#comment")
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON Comment where
  toJSON Comment {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

--
-- /See:/ 'newCommentListResponse' smart constructor.
data CommentListResponse = CommentListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of comments that match the request criteria.
    items :: (Core.Maybe [Comment]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#commentListResponse\".
    kind :: Core.Text,
    -- | The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | General pagination information.
    pageInfo :: (Core.Maybe PageInfo),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommentListResponse' with the minimum fields required to make a request.
newCommentListResponse ::
  CommentListResponse
newCommentListResponse =
  CommentListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#commentListResponse",
      nextPageToken = Core.Nothing,
      pageInfo = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON CommentListResponse where
  parseJSON =
    Core.withObject
      "CommentListResponse"
      ( \o ->
          CommentListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#commentListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON CommentListResponse where
  toJSON CommentListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | Basic details about a comment, such as its author and text.
--
-- /See:/ 'newCommentSnippet' smart constructor.
data CommentSnippet = CommentSnippet
  { -- |
    authorChannelId :: (Core.Maybe CommentSnippetAuthorChannelId),
    -- | Link to the author\'s YouTube channel, if any.
    authorChannelUrl :: (Core.Maybe Core.Text),
    -- | The name of the user who posted the comment.
    authorDisplayName :: (Core.Maybe Core.Text),
    -- | The URL for the avatar of the user who posted the comment.
    authorProfileImageUrl :: (Core.Maybe Core.Text),
    -- | Whether the current viewer can rate this comment.
    canRate :: (Core.Maybe Core.Bool),
    -- | The id of the corresponding YouTube channel. In case of a channel comment this is the channel the comment refers to. In case of a video comment it\'s the video\'s channel.
    channelId :: (Core.Maybe Core.Text),
    -- | The total number of likes this comment has received.
    likeCount :: (Core.Maybe Core.Word32),
    -- | The comment\'s moderation status. Will not be set if the comments were requested through the id filter.
    moderationStatus :: (Core.Maybe CommentSnippet_ModerationStatus),
    -- | The unique id of the parent comment, only set for replies.
    parentId :: (Core.Maybe Core.Text),
    -- | The date and time when the comment was originally published.
    publishedAt :: (Core.Maybe Core.DateTime'),
    -- | The comment\'s text. The format is either plain text or HTML dependent on what has been requested. Even the plain text representation may differ from the text originally posted in that it may replace video links with video titles etc.
    textDisplay :: (Core.Maybe Core.Text),
    -- | The comment\'s original raw text as initially posted or last updated. The original text will only be returned if it is accessible to the viewer, which is only guaranteed if the viewer is the comment\'s author.
    textOriginal :: (Core.Maybe Core.Text),
    -- | The date and time when the comment was last updated.
    updatedAt :: (Core.Maybe Core.DateTime'),
    -- | The ID of the video the comment refers to, if any.
    videoId :: (Core.Maybe Core.Text),
    -- | The rating the viewer has given to this comment. For the time being this will never return RATE/TYPE/DISLIKE and instead return RATE/TYPE/NONE. This may change in the future.
    viewerRating :: (Core.Maybe CommentSnippet_ViewerRating)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommentSnippet' with the minimum fields required to make a request.
newCommentSnippet ::
  CommentSnippet
newCommentSnippet =
  CommentSnippet
    { authorChannelId = Core.Nothing,
      authorChannelUrl = Core.Nothing,
      authorDisplayName = Core.Nothing,
      authorProfileImageUrl = Core.Nothing,
      canRate = Core.Nothing,
      channelId = Core.Nothing,
      likeCount = Core.Nothing,
      moderationStatus = Core.Nothing,
      parentId = Core.Nothing,
      publishedAt = Core.Nothing,
      textDisplay = Core.Nothing,
      textOriginal = Core.Nothing,
      updatedAt = Core.Nothing,
      videoId = Core.Nothing,
      viewerRating = Core.Nothing
    }

instance Core.FromJSON CommentSnippet where
  parseJSON =
    Core.withObject
      "CommentSnippet"
      ( \o ->
          CommentSnippet
            Core.<$> (o Core..:? "authorChannelId")
            Core.<*> (o Core..:? "authorChannelUrl")
            Core.<*> (o Core..:? "authorDisplayName")
            Core.<*> (o Core..:? "authorProfileImageUrl")
            Core.<*> (o Core..:? "canRate")
            Core.<*> (o Core..:? "channelId")
            Core.<*> (o Core..:? "likeCount")
            Core.<*> (o Core..:? "moderationStatus")
            Core.<*> (o Core..:? "parentId")
            Core.<*> (o Core..:? "publishedAt")
            Core.<*> (o Core..:? "textDisplay")
            Core.<*> (o Core..:? "textOriginal")
            Core.<*> (o Core..:? "updatedAt")
            Core.<*> (o Core..:? "videoId")
            Core.<*> (o Core..:? "viewerRating")
      )

instance Core.ToJSON CommentSnippet where
  toJSON CommentSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("authorChannelId" Core..=)
              Core.<$> authorChannelId,
            ("authorChannelUrl" Core..=)
              Core.<$> authorChannelUrl,
            ("authorDisplayName" Core..=)
              Core.<$> authorDisplayName,
            ("authorProfileImageUrl" Core..=)
              Core.<$> authorProfileImageUrl,
            ("canRate" Core..=) Core.<$> canRate,
            ("channelId" Core..=) Core.<$> channelId,
            ("likeCount" Core..=) Core.<$> likeCount,
            ("moderationStatus" Core..=)
              Core.<$> moderationStatus,
            ("parentId" Core..=) Core.<$> parentId,
            ("publishedAt" Core..=) Core.<$> publishedAt,
            ("textDisplay" Core..=) Core.<$> textDisplay,
            ("textOriginal" Core..=) Core.<$> textOriginal,
            ("updatedAt" Core..=) Core.<$> updatedAt,
            ("videoId" Core..=) Core.<$> videoId,
            ("viewerRating" Core..=) Core.<$> viewerRating
          ]
      )

-- | The id of the author\'s YouTube channel, if any.
--
-- /See:/ 'newCommentSnippetAuthorChannelId' smart constructor.
newtype CommentSnippetAuthorChannelId = CommentSnippetAuthorChannelId
  { -- |
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommentSnippetAuthorChannelId' with the minimum fields required to make a request.
newCommentSnippetAuthorChannelId ::
  CommentSnippetAuthorChannelId
newCommentSnippetAuthorChannelId =
  CommentSnippetAuthorChannelId {value = Core.Nothing}

instance Core.FromJSON CommentSnippetAuthorChannelId where
  parseJSON =
    Core.withObject
      "CommentSnippetAuthorChannelId"
      ( \o ->
          CommentSnippetAuthorChannelId
            Core.<$> (o Core..:? "value")
      )

instance Core.ToJSON CommentSnippetAuthorChannelId where
  toJSON CommentSnippetAuthorChannelId {..} =
    Core.object
      (Core.catMaybes [("value" Core..=) Core.<$> value])

-- | A /comment thread/ represents information that applies to a top level comment and all its replies. It can also include the top level comment itself and some of the replies.
--
-- /See:/ 'newCommentThread' smart constructor.
data CommentThread = CommentThread
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the comment thread.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#commentThread\".
    kind :: Core.Text,
    -- | The replies object contains a limited number of replies (if any) to the top level comment found in the snippet.
    replies :: (Core.Maybe CommentThreadReplies),
    -- | The snippet object contains basic details about the comment thread and also the top level comment.
    snippet :: (Core.Maybe CommentThreadSnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommentThread' with the minimum fields required to make a request.
newCommentThread ::
  CommentThread
newCommentThread =
  CommentThread
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#commentThread",
      replies = Core.Nothing,
      snippet = Core.Nothing
    }

instance Core.FromJSON CommentThread where
  parseJSON =
    Core.withObject
      "CommentThread"
      ( \o ->
          CommentThread
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#commentThread")
            Core.<*> (o Core..:? "replies")
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON CommentThread where
  toJSON CommentThread {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("replies" Core..=) Core.<$> replies,
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

--
-- /See:/ 'newCommentThreadListResponse' smart constructor.
data CommentThreadListResponse = CommentThreadListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of comment threads that match the request criteria.
    items :: (Core.Maybe [CommentThread]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#commentThreadListResponse\".
    kind :: Core.Text,
    -- | The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | General pagination information.
    pageInfo :: (Core.Maybe PageInfo),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommentThreadListResponse' with the minimum fields required to make a request.
newCommentThreadListResponse ::
  CommentThreadListResponse
newCommentThreadListResponse =
  CommentThreadListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#commentThreadListResponse",
      nextPageToken = Core.Nothing,
      pageInfo = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON CommentThreadListResponse where
  parseJSON =
    Core.withObject
      "CommentThreadListResponse"
      ( \o ->
          CommentThreadListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#commentThreadListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON CommentThreadListResponse where
  toJSON CommentThreadListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | Comments written in (direct or indirect) reply to the top level comment.
--
-- /See:/ 'newCommentThreadReplies' smart constructor.
newtype CommentThreadReplies = CommentThreadReplies
  { -- | A limited number of replies. Unless the number of replies returned equals total/reply/count in the snippet the returned replies are only a subset of the total number of replies.
    comments :: (Core.Maybe [Comment])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommentThreadReplies' with the minimum fields required to make a request.
newCommentThreadReplies ::
  CommentThreadReplies
newCommentThreadReplies = CommentThreadReplies {comments = Core.Nothing}

instance Core.FromJSON CommentThreadReplies where
  parseJSON =
    Core.withObject
      "CommentThreadReplies"
      ( \o ->
          CommentThreadReplies
            Core.<$> (o Core..:? "comments" Core..!= Core.mempty)
      )

instance Core.ToJSON CommentThreadReplies where
  toJSON CommentThreadReplies {..} =
    Core.object
      ( Core.catMaybes
          [("comments" Core..=) Core.<$> comments]
      )

-- | Basic details about a comment thread.
--
-- /See:/ 'newCommentThreadSnippet' smart constructor.
data CommentThreadSnippet = CommentThreadSnippet
  { -- | Whether the current viewer of the thread can reply to it. This is viewer specific - other viewers may see a different value for this field.
    canReply :: (Core.Maybe Core.Bool),
    -- | The YouTube channel the comments in the thread refer to or the channel with the video the comments refer to. If video_id isn\'t set the comments refer to the channel itself.
    channelId :: (Core.Maybe Core.Text),
    -- | Whether the thread (and therefore all its comments) is visible to all YouTube users.
    isPublic :: (Core.Maybe Core.Bool),
    -- | The top level comment of this thread.
    topLevelComment :: (Core.Maybe Comment),
    -- | The total number of replies (not including the top level comment).
    totalReplyCount :: (Core.Maybe Core.Word32),
    -- | The ID of the video the comments refer to, if any. No video_id implies a channel discussion comment.
    videoId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommentThreadSnippet' with the minimum fields required to make a request.
newCommentThreadSnippet ::
  CommentThreadSnippet
newCommentThreadSnippet =
  CommentThreadSnippet
    { canReply = Core.Nothing,
      channelId = Core.Nothing,
      isPublic = Core.Nothing,
      topLevelComment = Core.Nothing,
      totalReplyCount = Core.Nothing,
      videoId = Core.Nothing
    }

instance Core.FromJSON CommentThreadSnippet where
  parseJSON =
    Core.withObject
      "CommentThreadSnippet"
      ( \o ->
          CommentThreadSnippet
            Core.<$> (o Core..:? "canReply")
            Core.<*> (o Core..:? "channelId")
            Core.<*> (o Core..:? "isPublic")
            Core.<*> (o Core..:? "topLevelComment")
            Core.<*> (o Core..:? "totalReplyCount")
            Core.<*> (o Core..:? "videoId")
      )

instance Core.ToJSON CommentThreadSnippet where
  toJSON CommentThreadSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("canReply" Core..=) Core.<$> canReply,
            ("channelId" Core..=) Core.<$> channelId,
            ("isPublic" Core..=) Core.<$> isPublic,
            ("topLevelComment" Core..=) Core.<$> topLevelComment,
            ("totalReplyCount" Core..=) Core.<$> totalReplyCount,
            ("videoId" Core..=) Core.<$> videoId
          ]
      )

-- | Ratings schemes. The country-specific ratings are mostly for movies and shows. LINT.IfChange
--
-- /See:/ 'newContentRating' smart constructor.
data ContentRating = ContentRating
  { -- | The video\'s Australian Classification Board (ACB) or Australian Communications and Media Authority (ACMA) rating. ACMA ratings are used to classify children\'s television programming.
    acbRating :: (Core.Maybe ContentRating_AcbRating),
    -- | The video\'s rating from Italy\'s Autorità per le Garanzie nelle Comunicazioni (AGCOM).
    agcomRating :: (Core.Maybe ContentRating_AgcomRating),
    -- | The video\'s Anatel (Asociación Nacional de Televisión) rating for Chilean television.
    anatelRating :: (Core.Maybe ContentRating_AnatelRating),
    -- | The video\'s British Board of Film Classification (BBFC) rating.
    bbfcRating :: (Core.Maybe ContentRating_BbfcRating),
    -- | The video\'s rating from Thailand\'s Board of Film and Video Censors.
    bfvcRating :: (Core.Maybe ContentRating_BfvcRating),
    -- | The video\'s rating from the Austrian Board of Media Classification (Bundesministerium für Unterricht, Kunst und Kultur).
    bmukkRating :: (Core.Maybe ContentRating_BmukkRating),
    -- | Rating system for Canadian TV - Canadian TV Classification System The video\'s rating from the Canadian Radio-Television and Telecommunications Commission (CRTC) for Canadian English-language broadcasts. For more information, see the Canadian Broadcast Standards Council website.
    catvRating :: (Core.Maybe ContentRating_CatvRating),
    -- | The video\'s rating from the Canadian Radio-Television and Telecommunications Commission (CRTC) for Canadian French-language broadcasts. For more information, see the Canadian Broadcast Standards Council website.
    catvfrRating :: (Core.Maybe ContentRating_CatvfrRating),
    -- | The video\'s Central Board of Film Certification (CBFC - India) rating.
    cbfcRating :: (Core.Maybe ContentRating_CbfcRating),
    -- | The video\'s Consejo de Calificación Cinematográfica (Chile) rating.
    cccRating :: (Core.Maybe ContentRating_CccRating),
    -- | The video\'s rating from Portugal\'s Comissão de Classificação de Espect´culos.
    cceRating :: (Core.Maybe ContentRating_CceRating),
    -- | The video\'s rating in Switzerland.
    chfilmRating :: (Core.Maybe ContentRating_ChfilmRating),
    -- | The video\'s Canadian Home Video Rating System (CHVRS) rating.
    chvrsRating :: (Core.Maybe ContentRating_ChvrsRating),
    -- | The video\'s rating from the Commission de Contrôle des Films (Belgium).
    cicfRating :: (Core.Maybe ContentRating_CicfRating),
    -- | The video\'s rating from Romania\'s CONSILIUL NATIONAL AL AUDIOVIZUALULUI (CNA).
    cnaRating :: (Core.Maybe ContentRating_CnaRating),
    -- | Rating system in France - Commission de classification cinematographique
    cncRating :: (Core.Maybe ContentRating_CncRating),
    -- | The video\'s rating from France\'s Conseil supérieur de l’audiovisuel, which rates broadcast content.
    csaRating :: (Core.Maybe ContentRating_CsaRating),
    -- | The video\'s rating from Luxembourg\'s Commission de surveillance de la classification des films (CSCF).
    cscfRating :: (Core.Maybe ContentRating_CscfRating),
    -- | The video\'s rating in the Czech Republic.
    czfilmRating :: (Core.Maybe ContentRating_CzfilmRating),
    -- | The video\'s Departamento de Justiça, Classificação, Qualificação e Títulos (DJCQT - Brazil) rating.
    djctqRating :: (Core.Maybe ContentRating_DjctqRating),
    -- | Reasons that explain why the video received its DJCQT (Brazil) rating.
    djctqRatingReasons :: (Core.Maybe [ContentRating_DjctqRatingReasonsItem]),
    -- | Rating system in Turkey - Evaluation and Classification Board of the Ministry of Culture and Tourism
    ecbmctRating :: (Core.Maybe ContentRating_EcbmctRating),
    -- | The video\'s rating in Estonia.
    eefilmRating :: (Core.Maybe ContentRating_EefilmRating),
    -- | The video\'s rating in Egypt.
    egfilmRating :: (Core.Maybe ContentRating_EgfilmRating),
    -- | The video\'s Eirin (映倫) rating. Eirin is the Japanese rating system.
    eirinRating :: (Core.Maybe ContentRating_EirinRating),
    -- | The video\'s rating from Malaysia\'s Film Censorship Board.
    fcbmRating :: (Core.Maybe ContentRating_FcbmRating),
    -- | The video\'s rating from Hong Kong\'s Office for Film, Newspaper and Article Administration.
    fcoRating :: (Core.Maybe ContentRating_FcoRating),
    -- | This property has been deprecated. Use the contentDetails.contentRating.cncRating instead.
    fmocRating :: (Core.Maybe ContentRating_FmocRating),
    -- | The video\'s rating from South Africa\'s Film and Publication Board.
    fpbRating :: (Core.Maybe ContentRating_FpbRating),
    -- | Reasons that explain why the video received its FPB (South Africa) rating.
    fpbRatingReasons :: (Core.Maybe [ContentRating_FpbRatingReasonsItem]),
    -- | The video\'s Freiwillige Selbstkontrolle der Filmwirtschaft (FSK - Germany) rating.
    fskRating :: (Core.Maybe ContentRating_FskRating),
    -- | The video\'s rating in Greece.
    grfilmRating :: (Core.Maybe ContentRating_GrfilmRating),
    -- | The video\'s Instituto de la Cinematografía y de las Artes Audiovisuales (ICAA - Spain) rating.
    icaaRating :: (Core.Maybe ContentRating_IcaaRating),
    -- | The video\'s Irish Film Classification Office (IFCO - Ireland) rating. See the IFCO website for more information.
    ifcoRating :: (Core.Maybe ContentRating_IfcoRating),
    -- | The video\'s rating in Israel.
    ilfilmRating :: (Core.Maybe ContentRating_IlfilmRating),
    -- | The video\'s INCAA (Instituto Nacional de Cine y Artes Audiovisuales - Argentina) rating.
    incaaRating :: (Core.Maybe ContentRating_IncaaRating),
    -- | The video\'s rating from the Kenya Film Classification Board.
    kfcbRating :: (Core.Maybe ContentRating_KfcbRating),
    -- | The video\'s NICAM\/Kijkwijzer rating from the Nederlands Instituut voor de Classificatie van Audiovisuele Media (Netherlands).
    kijkwijzerRating :: (Core.Maybe ContentRating_KijkwijzerRating),
    -- | The video\'s Korea Media Rating Board (영상물등급위원회) rating. The KMRB rates videos in South Korea.
    kmrbRating :: (Core.Maybe ContentRating_KmrbRating),
    -- | The video\'s rating from Indonesia\'s Lembaga Sensor Film.
    lsfRating :: (Core.Maybe ContentRating_LsfRating),
    -- | The video\'s rating from Malta\'s Film Age-Classification Board.
    mccaaRating :: (Core.Maybe ContentRating_MccaaRating),
    -- | The video\'s rating from the Danish Film Institute\'s (Det Danske Filminstitut) Media Council for Children and Young People.
    mccypRating :: (Core.Maybe ContentRating_MccypRating),
    -- | The video\'s rating system for Vietnam - MCST
    mcstRating :: (Core.Maybe ContentRating_McstRating),
    -- | The video\'s rating from Singapore\'s Media Development Authority (MDA) and, specifically, it\'s Board of Film Censors (BFC).
    mdaRating :: (Core.Maybe ContentRating_MdaRating),
    -- | The video\'s rating from Medietilsynet, the Norwegian Media Authority.
    medietilsynetRating :: (Core.Maybe ContentRating_MedietilsynetRating),
    -- | The video\'s rating from Finland\'s Kansallinen Audiovisuaalinen Instituutti (National Audiovisual Institute).
    mekuRating :: (Core.Maybe ContentRating_MekuRating),
    -- | The rating system for MENA countries, a clone of MPAA. It is needed to prevent titles go live w\/o additional QC check, since some of them can be inappropriate for the countries at all. See b\/33408548 for more details.
    menaMpaaRating :: (Core.Maybe ContentRating_MenaMpaaRating),
    -- | The video\'s rating from the Ministero dei Beni e delle Attività Culturali e del Turismo (Italy).
    mibacRating :: (Core.Maybe ContentRating_MibacRating),
    -- | The video\'s Ministerio de Cultura (Colombia) rating.
    mocRating :: (Core.Maybe ContentRating_MocRating),
    -- | The video\'s rating from Taiwan\'s Ministry of Culture (文化部).
    moctwRating :: (Core.Maybe ContentRating_MoctwRating),
    -- | The video\'s Motion Picture Association of America (MPAA) rating.
    mpaaRating :: (Core.Maybe ContentRating_MpaaRating),
    -- | The rating system for trailer, DVD, and Ad in the US. See http:\/\/movielabs.com\/md\/ratings\/v2.3\/html\/US/MPAAT/Ratings.html.
    mpaatRating :: (Core.Maybe ContentRating_MpaatRating),
    -- | The video\'s rating from the Movie and Television Review and Classification Board (Philippines).
    mtrcbRating :: (Core.Maybe ContentRating_MtrcbRating),
    -- | The video\'s rating from the Maldives National Bureau of Classification.
    nbcRating :: (Core.Maybe ContentRating_NbcRating),
    -- | The video\'s rating in Poland.
    nbcplRating :: (Core.Maybe ContentRating_NbcplRating),
    -- | The video\'s rating from the Bulgarian National Film Center.
    nfrcRating :: (Core.Maybe ContentRating_NfrcRating),
    -- | The video\'s rating from Nigeria\'s National Film and Video Censors Board.
    nfvcbRating :: (Core.Maybe ContentRating_NfvcbRating),
    -- | The video\'s rating from the Nacionãlais Kino centrs (National Film Centre of Latvia).
    nkclvRating :: (Core.Maybe ContentRating_NkclvRating),
    -- | The National Media Council ratings system for United Arab Emirates.
    nmcRating :: (Core.Maybe ContentRating_NmcRating),
    -- | The video\'s Office of Film and Literature Classification (OFLC - New Zealand) rating.
    oflcRating :: (Core.Maybe ContentRating_OflcRating),
    -- | The video\'s rating in Peru.
    pefilmRating :: (Core.Maybe ContentRating_PefilmRating),
    -- | The video\'s rating from the Hungarian Nemzeti Filmiroda, the Rating Committee of the National Office of Film.
    rcnofRating :: (Core.Maybe ContentRating_RcnofRating),
    -- | The video\'s rating in Venezuela.
    resorteviolenciaRating :: (Core.Maybe ContentRating_ResorteviolenciaRating),
    -- | The video\'s General Directorate of Radio, Television and Cinematography (Mexico) rating.
    rtcRating :: (Core.Maybe ContentRating_RtcRating),
    -- | The video\'s rating from Ireland\'s Raidió Teilifís Éireann.
    rteRating :: (Core.Maybe ContentRating_RteRating),
    -- | The video\'s National Film Registry of the Russian Federation (MKRF - Russia) rating.
    russiaRating :: (Core.Maybe ContentRating_RussiaRating),
    -- | The video\'s rating in Slovakia.
    skfilmRating :: (Core.Maybe ContentRating_SkfilmRating),
    -- | The video\'s rating in Iceland.
    smaisRating :: (Core.Maybe ContentRating_SmaisRating),
    -- | The video\'s rating from Statens medieråd (Sweden\'s National Media Council).
    smsaRating :: (Core.Maybe ContentRating_SmsaRating),
    -- | The video\'s TV Parental Guidelines (TVPG) rating.
    tvpgRating :: (Core.Maybe ContentRating_TvpgRating),
    -- | A rating that YouTube uses to identify age-restricted content.
    ytRating :: (Core.Maybe ContentRating_YtRating)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentRating' with the minimum fields required to make a request.
newContentRating ::
  ContentRating
newContentRating =
  ContentRating
    { acbRating = Core.Nothing,
      agcomRating = Core.Nothing,
      anatelRating = Core.Nothing,
      bbfcRating = Core.Nothing,
      bfvcRating = Core.Nothing,
      bmukkRating = Core.Nothing,
      catvRating = Core.Nothing,
      catvfrRating = Core.Nothing,
      cbfcRating = Core.Nothing,
      cccRating = Core.Nothing,
      cceRating = Core.Nothing,
      chfilmRating = Core.Nothing,
      chvrsRating = Core.Nothing,
      cicfRating = Core.Nothing,
      cnaRating = Core.Nothing,
      cncRating = Core.Nothing,
      csaRating = Core.Nothing,
      cscfRating = Core.Nothing,
      czfilmRating = Core.Nothing,
      djctqRating = Core.Nothing,
      djctqRatingReasons = Core.Nothing,
      ecbmctRating = Core.Nothing,
      eefilmRating = Core.Nothing,
      egfilmRating = Core.Nothing,
      eirinRating = Core.Nothing,
      fcbmRating = Core.Nothing,
      fcoRating = Core.Nothing,
      fmocRating = Core.Nothing,
      fpbRating = Core.Nothing,
      fpbRatingReasons = Core.Nothing,
      fskRating = Core.Nothing,
      grfilmRating = Core.Nothing,
      icaaRating = Core.Nothing,
      ifcoRating = Core.Nothing,
      ilfilmRating = Core.Nothing,
      incaaRating = Core.Nothing,
      kfcbRating = Core.Nothing,
      kijkwijzerRating = Core.Nothing,
      kmrbRating = Core.Nothing,
      lsfRating = Core.Nothing,
      mccaaRating = Core.Nothing,
      mccypRating = Core.Nothing,
      mcstRating = Core.Nothing,
      mdaRating = Core.Nothing,
      medietilsynetRating = Core.Nothing,
      mekuRating = Core.Nothing,
      menaMpaaRating = Core.Nothing,
      mibacRating = Core.Nothing,
      mocRating = Core.Nothing,
      moctwRating = Core.Nothing,
      mpaaRating = Core.Nothing,
      mpaatRating = Core.Nothing,
      mtrcbRating = Core.Nothing,
      nbcRating = Core.Nothing,
      nbcplRating = Core.Nothing,
      nfrcRating = Core.Nothing,
      nfvcbRating = Core.Nothing,
      nkclvRating = Core.Nothing,
      nmcRating = Core.Nothing,
      oflcRating = Core.Nothing,
      pefilmRating = Core.Nothing,
      rcnofRating = Core.Nothing,
      resorteviolenciaRating = Core.Nothing,
      rtcRating = Core.Nothing,
      rteRating = Core.Nothing,
      russiaRating = Core.Nothing,
      skfilmRating = Core.Nothing,
      smaisRating = Core.Nothing,
      smsaRating = Core.Nothing,
      tvpgRating = Core.Nothing,
      ytRating = Core.Nothing
    }

instance Core.FromJSON ContentRating where
  parseJSON =
    Core.withObject
      "ContentRating"
      ( \o ->
          ContentRating
            Core.<$> (o Core..:? "acbRating")
            Core.<*> (o Core..:? "agcomRating")
            Core.<*> (o Core..:? "anatelRating")
            Core.<*> (o Core..:? "bbfcRating")
            Core.<*> (o Core..:? "bfvcRating")
            Core.<*> (o Core..:? "bmukkRating")
            Core.<*> (o Core..:? "catvRating")
            Core.<*> (o Core..:? "catvfrRating")
            Core.<*> (o Core..:? "cbfcRating")
            Core.<*> (o Core..:? "cccRating")
            Core.<*> (o Core..:? "cceRating")
            Core.<*> (o Core..:? "chfilmRating")
            Core.<*> (o Core..:? "chvrsRating")
            Core.<*> (o Core..:? "cicfRating")
            Core.<*> (o Core..:? "cnaRating")
            Core.<*> (o Core..:? "cncRating")
            Core.<*> (o Core..:? "csaRating")
            Core.<*> (o Core..:? "cscfRating")
            Core.<*> (o Core..:? "czfilmRating")
            Core.<*> (o Core..:? "djctqRating")
            Core.<*> ( o Core..:? "djctqRatingReasons"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "ecbmctRating")
            Core.<*> (o Core..:? "eefilmRating")
            Core.<*> (o Core..:? "egfilmRating")
            Core.<*> (o Core..:? "eirinRating")
            Core.<*> (o Core..:? "fcbmRating")
            Core.<*> (o Core..:? "fcoRating")
            Core.<*> (o Core..:? "fmocRating")
            Core.<*> (o Core..:? "fpbRating")
            Core.<*> (o Core..:? "fpbRatingReasons" Core..!= Core.mempty)
            Core.<*> (o Core..:? "fskRating")
            Core.<*> (o Core..:? "grfilmRating")
            Core.<*> (o Core..:? "icaaRating")
            Core.<*> (o Core..:? "ifcoRating")
            Core.<*> (o Core..:? "ilfilmRating")
            Core.<*> (o Core..:? "incaaRating")
            Core.<*> (o Core..:? "kfcbRating")
            Core.<*> (o Core..:? "kijkwijzerRating")
            Core.<*> (o Core..:? "kmrbRating")
            Core.<*> (o Core..:? "lsfRating")
            Core.<*> (o Core..:? "mccaaRating")
            Core.<*> (o Core..:? "mccypRating")
            Core.<*> (o Core..:? "mcstRating")
            Core.<*> (o Core..:? "mdaRating")
            Core.<*> (o Core..:? "medietilsynetRating")
            Core.<*> (o Core..:? "mekuRating")
            Core.<*> (o Core..:? "menaMpaaRating")
            Core.<*> (o Core..:? "mibacRating")
            Core.<*> (o Core..:? "mocRating")
            Core.<*> (o Core..:? "moctwRating")
            Core.<*> (o Core..:? "mpaaRating")
            Core.<*> (o Core..:? "mpaatRating")
            Core.<*> (o Core..:? "mtrcbRating")
            Core.<*> (o Core..:? "nbcRating")
            Core.<*> (o Core..:? "nbcplRating")
            Core.<*> (o Core..:? "nfrcRating")
            Core.<*> (o Core..:? "nfvcbRating")
            Core.<*> (o Core..:? "nkclvRating")
            Core.<*> (o Core..:? "nmcRating")
            Core.<*> (o Core..:? "oflcRating")
            Core.<*> (o Core..:? "pefilmRating")
            Core.<*> (o Core..:? "rcnofRating")
            Core.<*> (o Core..:? "resorteviolenciaRating")
            Core.<*> (o Core..:? "rtcRating")
            Core.<*> (o Core..:? "rteRating")
            Core.<*> (o Core..:? "russiaRating")
            Core.<*> (o Core..:? "skfilmRating")
            Core.<*> (o Core..:? "smaisRating")
            Core.<*> (o Core..:? "smsaRating")
            Core.<*> (o Core..:? "tvpgRating")
            Core.<*> (o Core..:? "ytRating")
      )

instance Core.ToJSON ContentRating where
  toJSON ContentRating {..} =
    Core.object
      ( Core.catMaybes
          [ ("acbRating" Core..=) Core.<$> acbRating,
            ("agcomRating" Core..=) Core.<$> agcomRating,
            ("anatelRating" Core..=) Core.<$> anatelRating,
            ("bbfcRating" Core..=) Core.<$> bbfcRating,
            ("bfvcRating" Core..=) Core.<$> bfvcRating,
            ("bmukkRating" Core..=) Core.<$> bmukkRating,
            ("catvRating" Core..=) Core.<$> catvRating,
            ("catvfrRating" Core..=) Core.<$> catvfrRating,
            ("cbfcRating" Core..=) Core.<$> cbfcRating,
            ("cccRating" Core..=) Core.<$> cccRating,
            ("cceRating" Core..=) Core.<$> cceRating,
            ("chfilmRating" Core..=) Core.<$> chfilmRating,
            ("chvrsRating" Core..=) Core.<$> chvrsRating,
            ("cicfRating" Core..=) Core.<$> cicfRating,
            ("cnaRating" Core..=) Core.<$> cnaRating,
            ("cncRating" Core..=) Core.<$> cncRating,
            ("csaRating" Core..=) Core.<$> csaRating,
            ("cscfRating" Core..=) Core.<$> cscfRating,
            ("czfilmRating" Core..=) Core.<$> czfilmRating,
            ("djctqRating" Core..=) Core.<$> djctqRating,
            ("djctqRatingReasons" Core..=)
              Core.<$> djctqRatingReasons,
            ("ecbmctRating" Core..=) Core.<$> ecbmctRating,
            ("eefilmRating" Core..=) Core.<$> eefilmRating,
            ("egfilmRating" Core..=) Core.<$> egfilmRating,
            ("eirinRating" Core..=) Core.<$> eirinRating,
            ("fcbmRating" Core..=) Core.<$> fcbmRating,
            ("fcoRating" Core..=) Core.<$> fcoRating,
            ("fmocRating" Core..=) Core.<$> fmocRating,
            ("fpbRating" Core..=) Core.<$> fpbRating,
            ("fpbRatingReasons" Core..=)
              Core.<$> fpbRatingReasons,
            ("fskRating" Core..=) Core.<$> fskRating,
            ("grfilmRating" Core..=) Core.<$> grfilmRating,
            ("icaaRating" Core..=) Core.<$> icaaRating,
            ("ifcoRating" Core..=) Core.<$> ifcoRating,
            ("ilfilmRating" Core..=) Core.<$> ilfilmRating,
            ("incaaRating" Core..=) Core.<$> incaaRating,
            ("kfcbRating" Core..=) Core.<$> kfcbRating,
            ("kijkwijzerRating" Core..=)
              Core.<$> kijkwijzerRating,
            ("kmrbRating" Core..=) Core.<$> kmrbRating,
            ("lsfRating" Core..=) Core.<$> lsfRating,
            ("mccaaRating" Core..=) Core.<$> mccaaRating,
            ("mccypRating" Core..=) Core.<$> mccypRating,
            ("mcstRating" Core..=) Core.<$> mcstRating,
            ("mdaRating" Core..=) Core.<$> mdaRating,
            ("medietilsynetRating" Core..=)
              Core.<$> medietilsynetRating,
            ("mekuRating" Core..=) Core.<$> mekuRating,
            ("menaMpaaRating" Core..=) Core.<$> menaMpaaRating,
            ("mibacRating" Core..=) Core.<$> mibacRating,
            ("mocRating" Core..=) Core.<$> mocRating,
            ("moctwRating" Core..=) Core.<$> moctwRating,
            ("mpaaRating" Core..=) Core.<$> mpaaRating,
            ("mpaatRating" Core..=) Core.<$> mpaatRating,
            ("mtrcbRating" Core..=) Core.<$> mtrcbRating,
            ("nbcRating" Core..=) Core.<$> nbcRating,
            ("nbcplRating" Core..=) Core.<$> nbcplRating,
            ("nfrcRating" Core..=) Core.<$> nfrcRating,
            ("nfvcbRating" Core..=) Core.<$> nfvcbRating,
            ("nkclvRating" Core..=) Core.<$> nkclvRating,
            ("nmcRating" Core..=) Core.<$> nmcRating,
            ("oflcRating" Core..=) Core.<$> oflcRating,
            ("pefilmRating" Core..=) Core.<$> pefilmRating,
            ("rcnofRating" Core..=) Core.<$> rcnofRating,
            ("resorteviolenciaRating" Core..=)
              Core.<$> resorteviolenciaRating,
            ("rtcRating" Core..=) Core.<$> rtcRating,
            ("rteRating" Core..=) Core.<$> rteRating,
            ("russiaRating" Core..=) Core.<$> russiaRating,
            ("skfilmRating" Core..=) Core.<$> skfilmRating,
            ("smaisRating" Core..=) Core.<$> smaisRating,
            ("smsaRating" Core..=) Core.<$> smsaRating,
            ("tvpgRating" Core..=) Core.<$> tvpgRating,
            ("ytRating" Core..=) Core.<$> ytRating
          ]
      )

--
-- /See:/ 'newEntity' smart constructor.
data Entity = Entity
  { -- |
    id :: (Core.Maybe Core.Text),
    -- |
    typeId :: (Core.Maybe Core.Text),
    -- |
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Entity' with the minimum fields required to make a request.
newEntity ::
  Entity
newEntity =
  Entity {id = Core.Nothing, typeId = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON Entity where
  parseJSON =
    Core.withObject
      "Entity"
      ( \o ->
          Entity
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "typeId")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Entity where
  toJSON Entity {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("typeId" Core..=) Core.<$> typeId,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Geographical coordinates of a point, in WGS84.
--
-- /See:/ 'newGeoPoint' smart constructor.
data GeoPoint = GeoPoint
  { -- | Altitude above the reference ellipsoid, in meters.
    altitude :: (Core.Maybe Core.Double),
    -- | Latitude in degrees.
    latitude :: (Core.Maybe Core.Double),
    -- | Longitude in degrees.
    longitude :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeoPoint' with the minimum fields required to make a request.
newGeoPoint ::
  GeoPoint
newGeoPoint =
  GeoPoint
    { altitude = Core.Nothing,
      latitude = Core.Nothing,
      longitude = Core.Nothing
    }

instance Core.FromJSON GeoPoint where
  parseJSON =
    Core.withObject
      "GeoPoint"
      ( \o ->
          GeoPoint
            Core.<$> (o Core..:? "altitude")
            Core.<*> (o Core..:? "latitude")
            Core.<*> (o Core..:? "longitude")
      )

instance Core.ToJSON GeoPoint where
  toJSON GeoPoint {..} =
    Core.object
      ( Core.catMaybes
          [ ("altitude" Core..=) Core.<$> altitude,
            ("latitude" Core..=) Core.<$> latitude,
            ("longitude" Core..=) Core.<$> longitude
          ]
      )

-- | An /i18nLanguage/ resource identifies a UI language currently supported by YouTube.
--
-- /See:/ 'newI18nLanguage' smart constructor.
data I18nLanguage = I18nLanguage
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the i18n language.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#i18nLanguage\".
    kind :: Core.Text,
    -- | The snippet object contains basic details about the i18n language, such as language code and human-readable name.
    snippet :: (Core.Maybe I18nLanguageSnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'I18nLanguage' with the minimum fields required to make a request.
newI18nLanguage ::
  I18nLanguage
newI18nLanguage =
  I18nLanguage
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#i18nLanguage",
      snippet = Core.Nothing
    }

instance Core.FromJSON I18nLanguage where
  parseJSON =
    Core.withObject
      "I18nLanguage"
      ( \o ->
          I18nLanguage
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#i18nLanguage")
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON I18nLanguage where
  toJSON I18nLanguage {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

--
-- /See:/ 'newI18nLanguageListResponse' smart constructor.
data I18nLanguageListResponse = I18nLanguageListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of supported i18n languages. In this map, the i18n language ID is the map key, and its value is the corresponding i18nLanguage resource.
    items :: (Core.Maybe [I18nLanguage]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#i18nLanguageListResponse\".
    kind :: Core.Text,
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'I18nLanguageListResponse' with the minimum fields required to make a request.
newI18nLanguageListResponse ::
  I18nLanguageListResponse
newI18nLanguageListResponse =
  I18nLanguageListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#i18nLanguageListResponse",
      visitorId = Core.Nothing
    }

instance Core.FromJSON I18nLanguageListResponse where
  parseJSON =
    Core.withObject
      "I18nLanguageListResponse"
      ( \o ->
          I18nLanguageListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#i18nLanguageListResponse"
                     )
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON I18nLanguageListResponse where
  toJSON I18nLanguageListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | Basic details about an i18n language, such as language code and human-readable name.
--
-- /See:/ 'newI18nLanguageSnippet' smart constructor.
data I18nLanguageSnippet = I18nLanguageSnippet
  { -- | A short BCP-47 code that uniquely identifies a language.
    hl :: (Core.Maybe Core.Text),
    -- | The human-readable name of the language in the language itself.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'I18nLanguageSnippet' with the minimum fields required to make a request.
newI18nLanguageSnippet ::
  I18nLanguageSnippet
newI18nLanguageSnippet =
  I18nLanguageSnippet {hl = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON I18nLanguageSnippet where
  parseJSON =
    Core.withObject
      "I18nLanguageSnippet"
      ( \o ->
          I18nLanguageSnippet
            Core.<$> (o Core..:? "hl") Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON I18nLanguageSnippet where
  toJSON I18nLanguageSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("hl" Core..=) Core.<$> hl,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | A /i18nRegion/ resource identifies a region where YouTube is available.
--
-- /See:/ 'newI18nRegion' smart constructor.
data I18nRegion = I18nRegion
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the i18n region.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#i18nRegion\".
    kind :: Core.Text,
    -- | The snippet object contains basic details about the i18n region, such as region code and human-readable name.
    snippet :: (Core.Maybe I18nRegionSnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'I18nRegion' with the minimum fields required to make a request.
newI18nRegion ::
  I18nRegion
newI18nRegion =
  I18nRegion
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#i18nRegion",
      snippet = Core.Nothing
    }

instance Core.FromJSON I18nRegion where
  parseJSON =
    Core.withObject
      "I18nRegion"
      ( \o ->
          I18nRegion
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#i18nRegion")
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON I18nRegion where
  toJSON I18nRegion {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

--
-- /See:/ 'newI18nRegionListResponse' smart constructor.
data I18nRegionListResponse = I18nRegionListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of regions where YouTube is available. In this map, the i18n region ID is the map key, and its value is the corresponding i18nRegion resource.
    items :: (Core.Maybe [I18nRegion]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#i18nRegionListResponse\".
    kind :: Core.Text,
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'I18nRegionListResponse' with the minimum fields required to make a request.
newI18nRegionListResponse ::
  I18nRegionListResponse
newI18nRegionListResponse =
  I18nRegionListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#i18nRegionListResponse",
      visitorId = Core.Nothing
    }

instance Core.FromJSON I18nRegionListResponse where
  parseJSON =
    Core.withObject
      "I18nRegionListResponse"
      ( \o ->
          I18nRegionListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#i18nRegionListResponse"
                     )
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON I18nRegionListResponse where
  toJSON I18nRegionListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | Basic details about an i18n region, such as region code and human-readable name.
--
-- /See:/ 'newI18nRegionSnippet' smart constructor.
data I18nRegionSnippet = I18nRegionSnippet
  { -- | The region code as a 2-letter ISO country code.
    gl :: (Core.Maybe Core.Text),
    -- | The human-readable name of the region.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'I18nRegionSnippet' with the minimum fields required to make a request.
newI18nRegionSnippet ::
  I18nRegionSnippet
newI18nRegionSnippet =
  I18nRegionSnippet {gl = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON I18nRegionSnippet where
  parseJSON =
    Core.withObject
      "I18nRegionSnippet"
      ( \o ->
          I18nRegionSnippet
            Core.<$> (o Core..:? "gl") Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON I18nRegionSnippet where
  toJSON I18nRegionSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("gl" Core..=) Core.<$> gl,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Branding properties for images associated with the channel.
--
-- /See:/ 'newImageSettings' smart constructor.
data ImageSettings = ImageSettings
  { -- | The URL for the background image shown on the video watch page. The image should be 1200px by 615px, with a maximum file size of 128k.
    backgroundImageUrl :: (Core.Maybe LocalizedProperty),
    -- | This is generated when a ChannelBanner.Insert request has succeeded for the given channel.
    bannerExternalUrl :: (Core.Maybe Core.Text),
    -- | Banner image. Desktop size (1060x175).
    bannerImageUrl :: (Core.Maybe Core.Text),
    -- | Banner image. Mobile size high resolution (1440x395).
    bannerMobileExtraHdImageUrl :: (Core.Maybe Core.Text),
    -- | Banner image. Mobile size high resolution (1280x360).
    bannerMobileHdImageUrl :: (Core.Maybe Core.Text),
    -- | Banner image. Mobile size (640x175).
    bannerMobileImageUrl :: (Core.Maybe Core.Text),
    -- | Banner image. Mobile size low resolution (320x88).
    bannerMobileLowImageUrl :: (Core.Maybe Core.Text),
    -- | Banner image. Mobile size medium\/high resolution (960x263).
    bannerMobileMediumHdImageUrl :: (Core.Maybe Core.Text),
    -- | Banner image. Tablet size extra high resolution (2560x424).
    bannerTabletExtraHdImageUrl :: (Core.Maybe Core.Text),
    -- | Banner image. Tablet size high resolution (2276x377).
    bannerTabletHdImageUrl :: (Core.Maybe Core.Text),
    -- | Banner image. Tablet size (1707x283).
    bannerTabletImageUrl :: (Core.Maybe Core.Text),
    -- | Banner image. Tablet size low resolution (1138x188).
    bannerTabletLowImageUrl :: (Core.Maybe Core.Text),
    -- | Banner image. TV size high resolution (1920x1080).
    bannerTvHighImageUrl :: (Core.Maybe Core.Text),
    -- | Banner image. TV size extra high resolution (2120x1192).
    bannerTvImageUrl :: (Core.Maybe Core.Text),
    -- | Banner image. TV size low resolution (854x480).
    bannerTvLowImageUrl :: (Core.Maybe Core.Text),
    -- | Banner image. TV size medium resolution (1280x720).
    bannerTvMediumImageUrl :: (Core.Maybe Core.Text),
    -- | The image map script for the large banner image.
    largeBrandedBannerImageImapScript :: (Core.Maybe LocalizedProperty),
    -- | The URL for the 854px by 70px image that appears below the video player in the expanded video view of the video watch page.
    largeBrandedBannerImageUrl :: (Core.Maybe LocalizedProperty),
    -- | The image map script for the small banner image.
    smallBrandedBannerImageImapScript :: (Core.Maybe LocalizedProperty),
    -- | The URL for the 640px by 70px banner image that appears below the video player in the default view of the video watch page. The URL for the image that appears above the top-left corner of the video player. This is a 25-pixel-high image with a flexible width that cannot exceed 170 pixels.
    smallBrandedBannerImageUrl :: (Core.Maybe LocalizedProperty),
    -- | The URL for a 1px by 1px tracking pixel that can be used to collect statistics for views of the channel or video pages.
    trackingImageUrl :: (Core.Maybe Core.Text),
    -- |
    watchIconImageUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageSettings' with the minimum fields required to make a request.
newImageSettings ::
  ImageSettings
newImageSettings =
  ImageSettings
    { backgroundImageUrl = Core.Nothing,
      bannerExternalUrl = Core.Nothing,
      bannerImageUrl = Core.Nothing,
      bannerMobileExtraHdImageUrl = Core.Nothing,
      bannerMobileHdImageUrl = Core.Nothing,
      bannerMobileImageUrl = Core.Nothing,
      bannerMobileLowImageUrl = Core.Nothing,
      bannerMobileMediumHdImageUrl = Core.Nothing,
      bannerTabletExtraHdImageUrl = Core.Nothing,
      bannerTabletHdImageUrl = Core.Nothing,
      bannerTabletImageUrl = Core.Nothing,
      bannerTabletLowImageUrl = Core.Nothing,
      bannerTvHighImageUrl = Core.Nothing,
      bannerTvImageUrl = Core.Nothing,
      bannerTvLowImageUrl = Core.Nothing,
      bannerTvMediumImageUrl = Core.Nothing,
      largeBrandedBannerImageImapScript = Core.Nothing,
      largeBrandedBannerImageUrl = Core.Nothing,
      smallBrandedBannerImageImapScript = Core.Nothing,
      smallBrandedBannerImageUrl = Core.Nothing,
      trackingImageUrl = Core.Nothing,
      watchIconImageUrl = Core.Nothing
    }

instance Core.FromJSON ImageSettings where
  parseJSON =
    Core.withObject
      "ImageSettings"
      ( \o ->
          ImageSettings
            Core.<$> (o Core..:? "backgroundImageUrl")
            Core.<*> (o Core..:? "bannerExternalUrl")
            Core.<*> (o Core..:? "bannerImageUrl")
            Core.<*> (o Core..:? "bannerMobileExtraHdImageUrl")
            Core.<*> (o Core..:? "bannerMobileHdImageUrl")
            Core.<*> (o Core..:? "bannerMobileImageUrl")
            Core.<*> (o Core..:? "bannerMobileLowImageUrl")
            Core.<*> (o Core..:? "bannerMobileMediumHdImageUrl")
            Core.<*> (o Core..:? "bannerTabletExtraHdImageUrl")
            Core.<*> (o Core..:? "bannerTabletHdImageUrl")
            Core.<*> (o Core..:? "bannerTabletImageUrl")
            Core.<*> (o Core..:? "bannerTabletLowImageUrl")
            Core.<*> (o Core..:? "bannerTvHighImageUrl")
            Core.<*> (o Core..:? "bannerTvImageUrl")
            Core.<*> (o Core..:? "bannerTvLowImageUrl")
            Core.<*> (o Core..:? "bannerTvMediumImageUrl")
            Core.<*> (o Core..:? "largeBrandedBannerImageImapScript")
            Core.<*> (o Core..:? "largeBrandedBannerImageUrl")
            Core.<*> (o Core..:? "smallBrandedBannerImageImapScript")
            Core.<*> (o Core..:? "smallBrandedBannerImageUrl")
            Core.<*> (o Core..:? "trackingImageUrl")
            Core.<*> (o Core..:? "watchIconImageUrl")
      )

instance Core.ToJSON ImageSettings where
  toJSON ImageSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundImageUrl" Core..=)
              Core.<$> backgroundImageUrl,
            ("bannerExternalUrl" Core..=)
              Core.<$> bannerExternalUrl,
            ("bannerImageUrl" Core..=) Core.<$> bannerImageUrl,
            ("bannerMobileExtraHdImageUrl" Core..=)
              Core.<$> bannerMobileExtraHdImageUrl,
            ("bannerMobileHdImageUrl" Core..=)
              Core.<$> bannerMobileHdImageUrl,
            ("bannerMobileImageUrl" Core..=)
              Core.<$> bannerMobileImageUrl,
            ("bannerMobileLowImageUrl" Core..=)
              Core.<$> bannerMobileLowImageUrl,
            ("bannerMobileMediumHdImageUrl" Core..=)
              Core.<$> bannerMobileMediumHdImageUrl,
            ("bannerTabletExtraHdImageUrl" Core..=)
              Core.<$> bannerTabletExtraHdImageUrl,
            ("bannerTabletHdImageUrl" Core..=)
              Core.<$> bannerTabletHdImageUrl,
            ("bannerTabletImageUrl" Core..=)
              Core.<$> bannerTabletImageUrl,
            ("bannerTabletLowImageUrl" Core..=)
              Core.<$> bannerTabletLowImageUrl,
            ("bannerTvHighImageUrl" Core..=)
              Core.<$> bannerTvHighImageUrl,
            ("bannerTvImageUrl" Core..=)
              Core.<$> bannerTvImageUrl,
            ("bannerTvLowImageUrl" Core..=)
              Core.<$> bannerTvLowImageUrl,
            ("bannerTvMediumImageUrl" Core..=)
              Core.<$> bannerTvMediumImageUrl,
            ("largeBrandedBannerImageImapScript" Core..=)
              Core.<$> largeBrandedBannerImageImapScript,
            ("largeBrandedBannerImageUrl" Core..=)
              Core.<$> largeBrandedBannerImageUrl,
            ("smallBrandedBannerImageImapScript" Core..=)
              Core.<$> smallBrandedBannerImageImapScript,
            ("smallBrandedBannerImageUrl" Core..=)
              Core.<$> smallBrandedBannerImageUrl,
            ("trackingImageUrl" Core..=)
              Core.<$> trackingImageUrl,
            ("watchIconImageUrl" Core..=)
              Core.<$> watchIconImageUrl
          ]
      )

-- | Describes information necessary for ingesting an RTMP, HTTP, or SRT stream.
--
-- /See:/ 'newIngestionInfo' smart constructor.
data IngestionInfo = IngestionInfo
  { -- | The backup ingestion URL that you should use to stream video to YouTube. You have the option of simultaneously streaming the content that you are sending to the ingestionAddress to this URL.
    backupIngestionAddress :: (Core.Maybe Core.Text),
    -- | The primary ingestion URL that you should use to stream video to YouTube. You must stream video to this URL. Depending on which application or tool you use to encode your video stream, you may need to enter the stream URL and stream name separately or you may need to concatenate them in the following format: /STREAM/URL\/STREAM/NAME/
    ingestionAddress :: (Core.Maybe Core.Text),
    -- | This ingestion url may be used instead of backupIngestionAddress in order to stream via RTMPS. Not applicable to non-RTMP streams.
    rtmpsBackupIngestionAddress :: (Core.Maybe Core.Text),
    -- | This ingestion url may be used instead of ingestionAddress in order to stream via RTMPS. Not applicable to non-RTMP streams.
    rtmpsIngestionAddress :: (Core.Maybe Core.Text),
    -- | The stream name that YouTube assigns to the video stream.
    streamName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IngestionInfo' with the minimum fields required to make a request.
newIngestionInfo ::
  IngestionInfo
newIngestionInfo =
  IngestionInfo
    { backupIngestionAddress = Core.Nothing,
      ingestionAddress = Core.Nothing,
      rtmpsBackupIngestionAddress = Core.Nothing,
      rtmpsIngestionAddress = Core.Nothing,
      streamName = Core.Nothing
    }

instance Core.FromJSON IngestionInfo where
  parseJSON =
    Core.withObject
      "IngestionInfo"
      ( \o ->
          IngestionInfo
            Core.<$> (o Core..:? "backupIngestionAddress")
            Core.<*> (o Core..:? "ingestionAddress")
            Core.<*> (o Core..:? "rtmpsBackupIngestionAddress")
            Core.<*> (o Core..:? "rtmpsIngestionAddress")
            Core.<*> (o Core..:? "streamName")
      )

instance Core.ToJSON IngestionInfo where
  toJSON IngestionInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("backupIngestionAddress" Core..=)
              Core.<$> backupIngestionAddress,
            ("ingestionAddress" Core..=)
              Core.<$> ingestionAddress,
            ("rtmpsBackupIngestionAddress" Core..=)
              Core.<$> rtmpsBackupIngestionAddress,
            ("rtmpsIngestionAddress" Core..=)
              Core.<$> rtmpsIngestionAddress,
            ("streamName" Core..=) Core.<$> streamName
          ]
      )

-- | LINT.IfChange Describes an invideo branding.
--
-- /See:/ 'newInvideoBranding' smart constructor.
data InvideoBranding = InvideoBranding
  { -- | The bytes the uploaded image. Only used in api to youtube communication.
    imageBytes :: (Core.Maybe Core.Base64),
    -- | The url of the uploaded image. Only used in apiary to api communication.
    imageUrl :: (Core.Maybe Core.Text),
    -- | The spatial position within the video where the branding watermark will be displayed.
    position :: (Core.Maybe InvideoPosition),
    -- | The channel to which this branding links. If not present it defaults to the current channel.
    targetChannelId :: (Core.Maybe Core.Text),
    -- | The temporal position within the video where watermark will be displayed.
    timing :: (Core.Maybe InvideoTiming)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InvideoBranding' with the minimum fields required to make a request.
newInvideoBranding ::
  InvideoBranding
newInvideoBranding =
  InvideoBranding
    { imageBytes = Core.Nothing,
      imageUrl = Core.Nothing,
      position = Core.Nothing,
      targetChannelId = Core.Nothing,
      timing = Core.Nothing
    }

instance Core.FromJSON InvideoBranding where
  parseJSON =
    Core.withObject
      "InvideoBranding"
      ( \o ->
          InvideoBranding
            Core.<$> (o Core..:? "imageBytes")
            Core.<*> (o Core..:? "imageUrl")
            Core.<*> (o Core..:? "position")
            Core.<*> (o Core..:? "targetChannelId")
            Core.<*> (o Core..:? "timing")
      )

instance Core.ToJSON InvideoBranding where
  toJSON InvideoBranding {..} =
    Core.object
      ( Core.catMaybes
          [ ("imageBytes" Core..=) Core.<$> imageBytes,
            ("imageUrl" Core..=) Core.<$> imageUrl,
            ("position" Core..=) Core.<$> position,
            ("targetChannelId" Core..=) Core.<$> targetChannelId,
            ("timing" Core..=) Core.<$> timing
          ]
      )

-- | Describes the spatial position of a visual widget inside a video. It is a union of various position types, out of which only will be set one.
--
-- /See:/ 'newInvideoPosition' smart constructor.
data InvideoPosition = InvideoPosition
  { -- | Describes in which corner of the video the visual widget will appear.
    cornerPosition :: (Core.Maybe InvideoPosition_CornerPosition),
    -- | Defines the position type.
    type' :: (Core.Maybe InvideoPosition_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InvideoPosition' with the minimum fields required to make a request.
newInvideoPosition ::
  InvideoPosition
newInvideoPosition =
  InvideoPosition {cornerPosition = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON InvideoPosition where
  parseJSON =
    Core.withObject
      "InvideoPosition"
      ( \o ->
          InvideoPosition
            Core.<$> (o Core..:? "cornerPosition")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON InvideoPosition where
  toJSON InvideoPosition {..} =
    Core.object
      ( Core.catMaybes
          [ ("cornerPosition" Core..=) Core.<$> cornerPosition,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Describes a temporal position of a visual widget inside a video.
--
-- /See:/ 'newInvideoTiming' smart constructor.
data InvideoTiming = InvideoTiming
  { -- | Defines the duration in milliseconds for which the promotion should be displayed. If missing, the client should use the default.
    durationMs :: (Core.Maybe Core.Word64),
    -- | Defines the time at which the promotion will appear. Depending on the value of type the value of the offsetMs field will represent a time offset from the start or from the end of the video, expressed in milliseconds.
    offsetMs :: (Core.Maybe Core.Word64),
    -- | Describes a timing type. If the value is offsetFromStart, then the offsetMs field represents an offset from the start of the video. If the value is offsetFromEnd, then the offsetMs field represents an offset from the end of the video.
    type' :: (Core.Maybe InvideoTiming_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InvideoTiming' with the minimum fields required to make a request.
newInvideoTiming ::
  InvideoTiming
newInvideoTiming =
  InvideoTiming
    { durationMs = Core.Nothing,
      offsetMs = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON InvideoTiming where
  parseJSON =
    Core.withObject
      "InvideoTiming"
      ( \o ->
          InvideoTiming
            Core.<$> (o Core..:? "durationMs")
            Core.<*> (o Core..:? "offsetMs")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON InvideoTiming where
  toJSON InvideoTiming {..} =
    Core.object
      ( Core.catMaybes
          [ ("durationMs" Core..=) Core.. Core.AsText
              Core.<$> durationMs,
            ("offsetMs" Core..=) Core.. Core.AsText
              Core.<$> offsetMs,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newLanguageTag' smart constructor.
newtype LanguageTag = LanguageTag
  { -- |
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LanguageTag' with the minimum fields required to make a request.
newLanguageTag ::
  LanguageTag
newLanguageTag = LanguageTag {value = Core.Nothing}

instance Core.FromJSON LanguageTag where
  parseJSON =
    Core.withObject
      "LanguageTag"
      (\o -> LanguageTag Core.<$> (o Core..:? "value"))

instance Core.ToJSON LanguageTag where
  toJSON LanguageTag {..} =
    Core.object
      (Core.catMaybes [("value" Core..=) Core.<$> value])

--
-- /See:/ 'newLevelDetails' smart constructor.
newtype LevelDetails = LevelDetails
  { -- | The name that should be used when referring to this level.
    displayName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LevelDetails' with the minimum fields required to make a request.
newLevelDetails ::
  LevelDetails
newLevelDetails = LevelDetails {displayName = Core.Nothing}

instance Core.FromJSON LevelDetails where
  parseJSON =
    Core.withObject
      "LevelDetails"
      ( \o ->
          LevelDetails Core.<$> (o Core..:? "displayName")
      )

instance Core.ToJSON LevelDetails where
  toJSON LevelDetails {..} =
    Core.object
      ( Core.catMaybes
          [("displayName" Core..=) Core.<$> displayName]
      )

-- | A /liveBroadcast/ resource represents an event that will be streamed, via live video, on YouTube.
--
-- /See:/ 'newLiveBroadcast' smart constructor.
data LiveBroadcast = LiveBroadcast
  { -- | The contentDetails object contains information about the event\'s video content, such as whether the content can be shown in an embedded video player or if it will be archived and therefore available for viewing after the event has concluded.
    contentDetails :: (Core.Maybe LiveBroadcastContentDetails),
    -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube assigns to uniquely identify the broadcast.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#liveBroadcast\".
    kind :: Core.Text,
    -- | The snippet object contains basic details about the event, including its title, description, start time, and end time.
    snippet :: (Core.Maybe LiveBroadcastSnippet),
    -- | The statistics object contains info about the event\'s current stats. These include concurrent viewers and total chat count. Statistics can change (in either direction) during the lifetime of an event. Statistics are only returned while the event is live.
    statistics :: (Core.Maybe LiveBroadcastStatistics),
    -- | The status object contains information about the event\'s status.
    status :: (Core.Maybe LiveBroadcastStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveBroadcast' with the minimum fields required to make a request.
newLiveBroadcast ::
  LiveBroadcast
newLiveBroadcast =
  LiveBroadcast
    { contentDetails = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#liveBroadcast",
      snippet = Core.Nothing,
      statistics = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON LiveBroadcast where
  parseJSON =
    Core.withObject
      "LiveBroadcast"
      ( \o ->
          LiveBroadcast
            Core.<$> (o Core..:? "contentDetails")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#liveBroadcast")
            Core.<*> (o Core..:? "snippet")
            Core.<*> (o Core..:? "statistics")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON LiveBroadcast where
  toJSON LiveBroadcast {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentDetails" Core..=) Core.<$> contentDetails,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet,
            ("statistics" Core..=) Core.<$> statistics,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Detailed settings of a broadcast.
--
-- /See:/ 'newLiveBroadcastContentDetails' smart constructor.
data LiveBroadcastContentDetails = LiveBroadcastContentDetails
  { -- | This value uniquely identifies the live stream bound to the broadcast.
    boundStreamId :: (Core.Maybe Core.Text),
    -- | The date and time that the live stream referenced by boundStreamId was last updated.
    boundStreamLastUpdateTimeMs :: (Core.Maybe Core.DateTime'),
    -- |
    closedCaptionsType :: (Core.Maybe LiveBroadcastContentDetails_ClosedCaptionsType),
    -- | This setting indicates whether auto start is enabled for this broadcast. The default value for this property is false. This setting can only be used by Events.
    enableAutoStart :: (Core.Maybe Core.Bool),
    -- | This setting indicates whether auto stop is enabled for this broadcast. The default value for this property is false. This setting can only be used by Events.
    enableAutoStop :: (Core.Maybe Core.Bool),
    -- | This setting indicates whether HTTP POST closed captioning is enabled for this broadcast. The ingestion URL of the closed captions is returned through the liveStreams API. This is mutually exclusive with using the closed/captions/type property, and is equivalent to setting closed/captions/type to CLOSED/CAPTIONS/HTTP_POST.
    enableClosedCaptions :: (Core.Maybe Core.Bool),
    -- | This setting indicates whether YouTube should enable content encryption for the broadcast.
    enableContentEncryption :: (Core.Maybe Core.Bool),
    -- | This setting determines whether viewers can access DVR controls while watching the video. DVR controls enable the viewer to control the video playback experience by pausing, rewinding, or fast forwarding content. The default value for this property is true. /Important:/ You must set the value to true and also set the enableArchive property\'s value to true if you want to make playback available immediately after the broadcast ends.
    enableDvr :: (Core.Maybe Core.Bool),
    -- | This setting indicates whether the broadcast video can be played in an embedded player. If you choose to archive the video (using the enableArchive property), this setting will also apply to the archived video.
    enableEmbed :: (Core.Maybe Core.Bool),
    -- | Indicates whether this broadcast has low latency enabled.
    enableLowLatency :: (Core.Maybe Core.Bool),
    -- | If both this and enable/low/latency are set, they must match. LATENCY/NORMAL should match enable/low/latency=false LATENCY/LOW should match enable/low/latency=true LATENCY/ULTRA/LOW should have enable/low/latency omitted.
    latencyPreference :: (Core.Maybe LiveBroadcastContentDetails_LatencyPreference),
    -- | The mesh for projecting the video if projection is mesh. The mesh value must be a UTF-8 string containing the base-64 encoding of 3D mesh data that follows the Spherical Video V2 RFC specification for an mshp box, excluding the box size and type but including the following four reserved zero bytes for the version and flags.
    mesh :: (Core.Maybe Core.Base64),
    -- | The monitorStream object contains information about the monitor stream, which the broadcaster can use to review the event content before the broadcast stream is shown publicly.
    monitorStream :: (Core.Maybe MonitorStreamInfo),
    -- | The projection format of this broadcast. This defaults to rectangular.
    projection :: (Core.Maybe LiveBroadcastContentDetails_Projection),
    -- | Automatically start recording after the event goes live. The default value for this property is true. /Important:/ You must also set the enableDvr property\'s value to true if you want the playback to be available immediately after the broadcast ends. If you set this property\'s value to true but do not also set the enableDvr property to true, there may be a delay of around one day before the archived video will be available for playback.
    recordFromStart :: (Core.Maybe Core.Bool),
    -- | This setting indicates whether the broadcast should automatically begin with an in-stream slate when you update the broadcast\'s status to live. After updating the status, you then need to send a liveCuepoints.insert request that sets the cuepoint\'s eventState to end to remove the in-stream slate and make your broadcast stream visible to viewers.
    startWithSlate :: (Core.Maybe Core.Bool),
    -- | The 3D stereo layout of this broadcast. This defaults to mono.
    stereoLayout :: (Core.Maybe LiveBroadcastContentDetails_StereoLayout)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveBroadcastContentDetails' with the minimum fields required to make a request.
newLiveBroadcastContentDetails ::
  LiveBroadcastContentDetails
newLiveBroadcastContentDetails =
  LiveBroadcastContentDetails
    { boundStreamId = Core.Nothing,
      boundStreamLastUpdateTimeMs = Core.Nothing,
      closedCaptionsType = Core.Nothing,
      enableAutoStart = Core.Nothing,
      enableAutoStop = Core.Nothing,
      enableClosedCaptions = Core.Nothing,
      enableContentEncryption = Core.Nothing,
      enableDvr = Core.Nothing,
      enableEmbed = Core.Nothing,
      enableLowLatency = Core.Nothing,
      latencyPreference = Core.Nothing,
      mesh = Core.Nothing,
      monitorStream = Core.Nothing,
      projection = Core.Nothing,
      recordFromStart = Core.Nothing,
      startWithSlate = Core.Nothing,
      stereoLayout = Core.Nothing
    }

instance Core.FromJSON LiveBroadcastContentDetails where
  parseJSON =
    Core.withObject
      "LiveBroadcastContentDetails"
      ( \o ->
          LiveBroadcastContentDetails
            Core.<$> (o Core..:? "boundStreamId")
            Core.<*> (o Core..:? "boundStreamLastUpdateTimeMs")
            Core.<*> (o Core..:? "closedCaptionsType")
            Core.<*> (o Core..:? "enableAutoStart")
            Core.<*> (o Core..:? "enableAutoStop")
            Core.<*> (o Core..:? "enableClosedCaptions")
            Core.<*> (o Core..:? "enableContentEncryption")
            Core.<*> (o Core..:? "enableDvr")
            Core.<*> (o Core..:? "enableEmbed")
            Core.<*> (o Core..:? "enableLowLatency")
            Core.<*> (o Core..:? "latencyPreference")
            Core.<*> (o Core..:? "mesh")
            Core.<*> (o Core..:? "monitorStream")
            Core.<*> (o Core..:? "projection")
            Core.<*> (o Core..:? "recordFromStart")
            Core.<*> (o Core..:? "startWithSlate")
            Core.<*> (o Core..:? "stereoLayout")
      )

instance Core.ToJSON LiveBroadcastContentDetails where
  toJSON LiveBroadcastContentDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundStreamId" Core..=) Core.<$> boundStreamId,
            ("boundStreamLastUpdateTimeMs" Core..=)
              Core.<$> boundStreamLastUpdateTimeMs,
            ("closedCaptionsType" Core..=)
              Core.<$> closedCaptionsType,
            ("enableAutoStart" Core..=) Core.<$> enableAutoStart,
            ("enableAutoStop" Core..=) Core.<$> enableAutoStop,
            ("enableClosedCaptions" Core..=)
              Core.<$> enableClosedCaptions,
            ("enableContentEncryption" Core..=)
              Core.<$> enableContentEncryption,
            ("enableDvr" Core..=) Core.<$> enableDvr,
            ("enableEmbed" Core..=) Core.<$> enableEmbed,
            ("enableLowLatency" Core..=)
              Core.<$> enableLowLatency,
            ("latencyPreference" Core..=)
              Core.<$> latencyPreference,
            ("mesh" Core..=) Core.<$> mesh,
            ("monitorStream" Core..=) Core.<$> monitorStream,
            ("projection" Core..=) Core.<$> projection,
            ("recordFromStart" Core..=) Core.<$> recordFromStart,
            ("startWithSlate" Core..=) Core.<$> startWithSlate,
            ("stereoLayout" Core..=) Core.<$> stereoLayout
          ]
      )

--
-- /See:/ 'newLiveBroadcastListResponse' smart constructor.
data LiveBroadcastListResponse = LiveBroadcastListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of broadcasts that match the request criteria.
    items :: (Core.Maybe [LiveBroadcast]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#liveBroadcastListResponse\".
    kind :: Core.Text,
    -- | The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | General pagination information.
    pageInfo :: (Core.Maybe PageInfo),
    -- | The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.
    prevPageToken :: (Core.Maybe Core.Text),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveBroadcastListResponse' with the minimum fields required to make a request.
newLiveBroadcastListResponse ::
  LiveBroadcastListResponse
newLiveBroadcastListResponse =
  LiveBroadcastListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#liveBroadcastListResponse",
      nextPageToken = Core.Nothing,
      pageInfo = Core.Nothing,
      prevPageToken = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON LiveBroadcastListResponse where
  parseJSON =
    Core.withObject
      "LiveBroadcastListResponse"
      ( \o ->
          LiveBroadcastListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#liveBroadcastListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "prevPageToken")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON LiveBroadcastListResponse where
  toJSON LiveBroadcastListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("prevPageToken" Core..=) Core.<$> prevPageToken,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | Basic broadcast information.
--
-- /See:/ 'newLiveBroadcastSnippet' smart constructor.
data LiveBroadcastSnippet = LiveBroadcastSnippet
  { -- | The date and time that the broadcast actually ended. This information is only available once the broadcast\'s state is complete.
    actualEndTime :: (Core.Maybe Core.DateTime'),
    -- | The date and time that the broadcast actually started. This information is only available once the broadcast\'s state is live.
    actualStartTime :: (Core.Maybe Core.DateTime'),
    -- | The ID that YouTube uses to uniquely identify the channel that is publishing the broadcast.
    channelId :: (Core.Maybe Core.Text),
    -- | The broadcast\'s description. As with the title, you can set this field by modifying the broadcast resource or by setting the description field of the corresponding video resource.
    description :: (Core.Maybe Core.Text),
    -- | Indicates whether this broadcast is the default broadcast. Internal only.
    isDefaultBroadcast :: (Core.Maybe Core.Bool),
    -- | The id of the live chat for this broadcast.
    liveChatId :: (Core.Maybe Core.Text),
    -- | The date and time that the broadcast was added to YouTube\'s live broadcast schedule.
    publishedAt :: (Core.Maybe Core.DateTime'),
    -- | The date and time that the broadcast is scheduled to end.
    scheduledEndTime :: (Core.Maybe Core.DateTime'),
    -- | The date and time that the broadcast is scheduled to start.
    scheduledStartTime :: (Core.Maybe Core.DateTime'),
    -- | A map of thumbnail images associated with the broadcast. For each nested object in this object, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.
    thumbnails :: (Core.Maybe ThumbnailDetails),
    -- | The broadcast\'s title. Note that the broadcast represents exactly one YouTube video. You can set this field by modifying the broadcast resource or by setting the title field of the corresponding video resource.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveBroadcastSnippet' with the minimum fields required to make a request.
newLiveBroadcastSnippet ::
  LiveBroadcastSnippet
newLiveBroadcastSnippet =
  LiveBroadcastSnippet
    { actualEndTime = Core.Nothing,
      actualStartTime = Core.Nothing,
      channelId = Core.Nothing,
      description = Core.Nothing,
      isDefaultBroadcast = Core.Nothing,
      liveChatId = Core.Nothing,
      publishedAt = Core.Nothing,
      scheduledEndTime = Core.Nothing,
      scheduledStartTime = Core.Nothing,
      thumbnails = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON LiveBroadcastSnippet where
  parseJSON =
    Core.withObject
      "LiveBroadcastSnippet"
      ( \o ->
          LiveBroadcastSnippet
            Core.<$> (o Core..:? "actualEndTime")
            Core.<*> (o Core..:? "actualStartTime")
            Core.<*> (o Core..:? "channelId")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "isDefaultBroadcast")
            Core.<*> (o Core..:? "liveChatId")
            Core.<*> (o Core..:? "publishedAt")
            Core.<*> (o Core..:? "scheduledEndTime")
            Core.<*> (o Core..:? "scheduledStartTime")
            Core.<*> (o Core..:? "thumbnails")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON LiveBroadcastSnippet where
  toJSON LiveBroadcastSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("actualEndTime" Core..=) Core.<$> actualEndTime,
            ("actualStartTime" Core..=) Core.<$> actualStartTime,
            ("channelId" Core..=) Core.<$> channelId,
            ("description" Core..=) Core.<$> description,
            ("isDefaultBroadcast" Core..=)
              Core.<$> isDefaultBroadcast,
            ("liveChatId" Core..=) Core.<$> liveChatId,
            ("publishedAt" Core..=) Core.<$> publishedAt,
            ("scheduledEndTime" Core..=)
              Core.<$> scheduledEndTime,
            ("scheduledStartTime" Core..=)
              Core.<$> scheduledStartTime,
            ("thumbnails" Core..=) Core.<$> thumbnails,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Statistics about the live broadcast. These represent a snapshot of the values at the time of the request. Statistics are only returned for live broadcasts.
--
-- /See:/ 'newLiveBroadcastStatistics' smart constructor.
newtype LiveBroadcastStatistics = LiveBroadcastStatistics
  { -- | The total number of live chat messages currently on the broadcast. The property and its value will be present if the broadcast is public, has the live chat feature enabled, and has at least one message. Note that this field will not be filled after the broadcast ends. So this property would not identify the number of chat messages for an archived video of a completed live broadcast.
    totalChatCount :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveBroadcastStatistics' with the minimum fields required to make a request.
newLiveBroadcastStatistics ::
  LiveBroadcastStatistics
newLiveBroadcastStatistics =
  LiveBroadcastStatistics {totalChatCount = Core.Nothing}

instance Core.FromJSON LiveBroadcastStatistics where
  parseJSON =
    Core.withObject
      "LiveBroadcastStatistics"
      ( \o ->
          LiveBroadcastStatistics
            Core.<$> (o Core..:? "totalChatCount")
      )

instance Core.ToJSON LiveBroadcastStatistics where
  toJSON LiveBroadcastStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ ("totalChatCount" Core..=) Core.. Core.AsText
              Core.<$> totalChatCount
          ]
      )

-- | Live broadcast state.
--
-- /See:/ 'newLiveBroadcastStatus' smart constructor.
data LiveBroadcastStatus = LiveBroadcastStatus
  { -- | The broadcast\'s status. The status can be updated using the API\'s liveBroadcasts.transition method.
    lifeCycleStatus :: (Core.Maybe LiveBroadcastStatus_LifeCycleStatus),
    -- | Priority of the live broadcast event (internal state).
    liveBroadcastPriority :: (Core.Maybe LiveBroadcastStatus_LiveBroadcastPriority),
    -- | Whether the broadcast is made for kids or not, decided by YouTube instead of the creator. This field is read only.
    madeForKids :: (Core.Maybe Core.Bool),
    -- | The broadcast\'s privacy status. Note that the broadcast represents exactly one YouTube video, so the privacy settings are identical to those supported for videos. In addition, you can set this field by modifying the broadcast resource or by setting the privacyStatus field of the corresponding video resource.
    privacyStatus :: (Core.Maybe LiveBroadcastStatus_PrivacyStatus),
    -- | The broadcast\'s recording status.
    recordingStatus :: (Core.Maybe LiveBroadcastStatus_RecordingStatus),
    -- | This field will be set to True if the creator declares the broadcast to be kids only: go\/live-cw-work.
    selfDeclaredMadeForKids :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveBroadcastStatus' with the minimum fields required to make a request.
newLiveBroadcastStatus ::
  LiveBroadcastStatus
newLiveBroadcastStatus =
  LiveBroadcastStatus
    { lifeCycleStatus = Core.Nothing,
      liveBroadcastPriority = Core.Nothing,
      madeForKids = Core.Nothing,
      privacyStatus = Core.Nothing,
      recordingStatus = Core.Nothing,
      selfDeclaredMadeForKids = Core.Nothing
    }

instance Core.FromJSON LiveBroadcastStatus where
  parseJSON =
    Core.withObject
      "LiveBroadcastStatus"
      ( \o ->
          LiveBroadcastStatus
            Core.<$> (o Core..:? "lifeCycleStatus")
            Core.<*> (o Core..:? "liveBroadcastPriority")
            Core.<*> (o Core..:? "madeForKids")
            Core.<*> (o Core..:? "privacyStatus")
            Core.<*> (o Core..:? "recordingStatus")
            Core.<*> (o Core..:? "selfDeclaredMadeForKids")
      )

instance Core.ToJSON LiveBroadcastStatus where
  toJSON LiveBroadcastStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("lifeCycleStatus" Core..=)
              Core.<$> lifeCycleStatus,
            ("liveBroadcastPriority" Core..=)
              Core.<$> liveBroadcastPriority,
            ("madeForKids" Core..=) Core.<$> madeForKids,
            ("privacyStatus" Core..=) Core.<$> privacyStatus,
            ("recordingStatus" Core..=) Core.<$> recordingStatus,
            ("selfDeclaredMadeForKids" Core..=)
              Core.<$> selfDeclaredMadeForKids
          ]
      )

-- | A @__liveChatBan__@ resource represents a ban for a YouTube live chat.
--
-- /See:/ 'newLiveChatBan' smart constructor.
data LiveChatBan = LiveChatBan
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube assigns to uniquely identify the ban.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string @\"youtube#liveChatBan\"@.
    kind :: Core.Text,
    -- | The @snippet@ object contains basic details about the ban.
    snippet :: (Core.Maybe LiveChatBanSnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatBan' with the minimum fields required to make a request.
newLiveChatBan ::
  LiveChatBan
newLiveChatBan =
  LiveChatBan
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#liveChatBan",
      snippet = Core.Nothing
    }

instance Core.FromJSON LiveChatBan where
  parseJSON =
    Core.withObject
      "LiveChatBan"
      ( \o ->
          LiveChatBan
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#liveChatBan")
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON LiveChatBan where
  toJSON LiveChatBan {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

--
-- /See:/ 'newLiveChatBanSnippet' smart constructor.
data LiveChatBanSnippet = LiveChatBanSnippet
  { -- | The duration of a ban, only filled if the ban has type TEMPORARY.
    banDurationSeconds :: (Core.Maybe Core.Word64),
    -- |
    bannedUserDetails :: (Core.Maybe ChannelProfileDetails),
    -- | The chat this ban is pertinent to.
    liveChatId :: (Core.Maybe Core.Text),
    -- | The type of ban.
    type' :: (Core.Maybe LiveChatBanSnippet_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatBanSnippet' with the minimum fields required to make a request.
newLiveChatBanSnippet ::
  LiveChatBanSnippet
newLiveChatBanSnippet =
  LiveChatBanSnippet
    { banDurationSeconds = Core.Nothing,
      bannedUserDetails = Core.Nothing,
      liveChatId = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON LiveChatBanSnippet where
  parseJSON =
    Core.withObject
      "LiveChatBanSnippet"
      ( \o ->
          LiveChatBanSnippet
            Core.<$> (o Core..:? "banDurationSeconds")
            Core.<*> (o Core..:? "bannedUserDetails")
            Core.<*> (o Core..:? "liveChatId")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON LiveChatBanSnippet where
  toJSON LiveChatBanSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("banDurationSeconds" Core..=) Core.. Core.AsText
              Core.<$> banDurationSeconds,
            ("bannedUserDetails" Core..=)
              Core.<$> bannedUserDetails,
            ("liveChatId" Core..=) Core.<$> liveChatId,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newLiveChatFanFundingEventDetails' smart constructor.
data LiveChatFanFundingEventDetails = LiveChatFanFundingEventDetails
  { -- | A rendered string that displays the fund amount and currency to the user.
    amountDisplayString :: (Core.Maybe Core.Text),
    -- | The amount of the fund.
    amountMicros :: (Core.Maybe Core.Word64),
    -- | The currency in which the fund was made.
    currency :: (Core.Maybe Core.Text),
    -- | The comment added by the user to this fan funding event.
    userComment :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatFanFundingEventDetails' with the minimum fields required to make a request.
newLiveChatFanFundingEventDetails ::
  LiveChatFanFundingEventDetails
newLiveChatFanFundingEventDetails =
  LiveChatFanFundingEventDetails
    { amountDisplayString = Core.Nothing,
      amountMicros = Core.Nothing,
      currency = Core.Nothing,
      userComment = Core.Nothing
    }

instance Core.FromJSON LiveChatFanFundingEventDetails where
  parseJSON =
    Core.withObject
      "LiveChatFanFundingEventDetails"
      ( \o ->
          LiveChatFanFundingEventDetails
            Core.<$> (o Core..:? "amountDisplayString")
            Core.<*> (o Core..:? "amountMicros")
            Core.<*> (o Core..:? "currency")
            Core.<*> (o Core..:? "userComment")
      )

instance Core.ToJSON LiveChatFanFundingEventDetails where
  toJSON LiveChatFanFundingEventDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("amountDisplayString" Core..=)
              Core.<$> amountDisplayString,
            ("amountMicros" Core..=) Core.. Core.AsText
              Core.<$> amountMicros,
            ("currency" Core..=) Core.<$> currency,
            ("userComment" Core..=) Core.<$> userComment
          ]
      )

--
-- /See:/ 'newLiveChatGiftMembershipReceivedDetails' smart constructor.
data LiveChatGiftMembershipReceivedDetails = LiveChatGiftMembershipReceivedDetails
  { -- | The ID of the membership gifting message that is related to this gift membership. This ID will always refer to a message whose type is \'membershipGiftingEvent\'.
    associatedMembershipGiftingMessageId :: (Core.Maybe Core.Text),
    -- | The ID of the user that made the membership gifting purchase. This matches the @snippet.authorChannelId@ of the associated membership gifting message.
    gifterChannelId :: (Core.Maybe Core.Text),
    -- | The name of the Level at which the viewer is a member. This matches the @snippet.membershipGiftingDetails.giftMembershipsLevelName@ of the associated membership gifting message. The Level names are defined by the YouTube channel offering the Membership. In some situations this field isn\'t filled.
    memberLevelName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatGiftMembershipReceivedDetails' with the minimum fields required to make a request.
newLiveChatGiftMembershipReceivedDetails ::
  LiveChatGiftMembershipReceivedDetails
newLiveChatGiftMembershipReceivedDetails =
  LiveChatGiftMembershipReceivedDetails
    { associatedMembershipGiftingMessageId = Core.Nothing,
      gifterChannelId = Core.Nothing,
      memberLevelName = Core.Nothing
    }

instance
  Core.FromJSON
    LiveChatGiftMembershipReceivedDetails
  where
  parseJSON =
    Core.withObject
      "LiveChatGiftMembershipReceivedDetails"
      ( \o ->
          LiveChatGiftMembershipReceivedDetails
            Core.<$> (o Core..:? "associatedMembershipGiftingMessageId")
            Core.<*> (o Core..:? "gifterChannelId")
            Core.<*> (o Core..:? "memberLevelName")
      )

instance
  Core.ToJSON
    LiveChatGiftMembershipReceivedDetails
  where
  toJSON LiveChatGiftMembershipReceivedDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("associatedMembershipGiftingMessageId" Core..=)
              Core.<$> associatedMembershipGiftingMessageId,
            ("gifterChannelId" Core..=) Core.<$> gifterChannelId,
            ("memberLevelName" Core..=)
              Core.<$> memberLevelName
          ]
      )

--
-- /See:/ 'newLiveChatMemberMilestoneChatDetails' smart constructor.
data LiveChatMemberMilestoneChatDetails = LiveChatMemberMilestoneChatDetails
  { -- | The name of the Level at which the viever is a member. The Level names are defined by the YouTube channel offering the Membership. In some situations this field isn\'t filled.
    memberLevelName :: (Core.Maybe Core.Text),
    -- | The total amount of months (rounded up) the viewer has been a member that granted them this Member Milestone Chat. This is the same number of months as is being displayed to YouTube users.
    memberMonth :: (Core.Maybe Core.Word32),
    -- | The comment added by the member to this Member Milestone Chat. This field is empty for messages without a comment from the member.
    userComment :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatMemberMilestoneChatDetails' with the minimum fields required to make a request.
newLiveChatMemberMilestoneChatDetails ::
  LiveChatMemberMilestoneChatDetails
newLiveChatMemberMilestoneChatDetails =
  LiveChatMemberMilestoneChatDetails
    { memberLevelName = Core.Nothing,
      memberMonth = Core.Nothing,
      userComment = Core.Nothing
    }

instance
  Core.FromJSON
    LiveChatMemberMilestoneChatDetails
  where
  parseJSON =
    Core.withObject
      "LiveChatMemberMilestoneChatDetails"
      ( \o ->
          LiveChatMemberMilestoneChatDetails
            Core.<$> (o Core..:? "memberLevelName")
            Core.<*> (o Core..:? "memberMonth")
            Core.<*> (o Core..:? "userComment")
      )

instance
  Core.ToJSON
    LiveChatMemberMilestoneChatDetails
  where
  toJSON LiveChatMemberMilestoneChatDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("memberLevelName" Core..=)
              Core.<$> memberLevelName,
            ("memberMonth" Core..=) Core.<$> memberMonth,
            ("userComment" Core..=) Core.<$> userComment
          ]
      )

--
-- /See:/ 'newLiveChatMembershipGiftingDetails' smart constructor.
data LiveChatMembershipGiftingDetails = LiveChatMembershipGiftingDetails
  { -- | The number of gift memberships purchased by the user.
    giftMembershipsCount :: (Core.Maybe Core.Int32),
    -- | The name of the level of the gift memberships purchased by the user. The Level names are defined by the YouTube channel offering the Membership. In some situations this field isn\'t filled.
    giftMembershipsLevelName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatMembershipGiftingDetails' with the minimum fields required to make a request.
newLiveChatMembershipGiftingDetails ::
  LiveChatMembershipGiftingDetails
newLiveChatMembershipGiftingDetails =
  LiveChatMembershipGiftingDetails
    { giftMembershipsCount = Core.Nothing,
      giftMembershipsLevelName = Core.Nothing
    }

instance
  Core.FromJSON
    LiveChatMembershipGiftingDetails
  where
  parseJSON =
    Core.withObject
      "LiveChatMembershipGiftingDetails"
      ( \o ->
          LiveChatMembershipGiftingDetails
            Core.<$> (o Core..:? "giftMembershipsCount")
            Core.<*> (o Core..:? "giftMembershipsLevelName")
      )

instance Core.ToJSON LiveChatMembershipGiftingDetails where
  toJSON LiveChatMembershipGiftingDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("giftMembershipsCount" Core..=)
              Core.<$> giftMembershipsCount,
            ("giftMembershipsLevelName" Core..=)
              Core.<$> giftMembershipsLevelName
          ]
      )

-- | A /liveChatMessage/ resource represents a chat message in a YouTube Live Chat.
--
-- /See:/ 'newLiveChatMessage' smart constructor.
data LiveChatMessage = LiveChatMessage
  { -- | The authorDetails object contains basic details about the user that posted this message.
    authorDetails :: (Core.Maybe LiveChatMessageAuthorDetails),
    -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube assigns to uniquely identify the message.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#liveChatMessage\".
    kind :: Core.Text,
    -- | The snippet object contains basic details about the message.
    snippet :: (Core.Maybe LiveChatMessageSnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatMessage' with the minimum fields required to make a request.
newLiveChatMessage ::
  LiveChatMessage
newLiveChatMessage =
  LiveChatMessage
    { authorDetails = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#liveChatMessage",
      snippet = Core.Nothing
    }

instance Core.FromJSON LiveChatMessage where
  parseJSON =
    Core.withObject
      "LiveChatMessage"
      ( \o ->
          LiveChatMessage
            Core.<$> (o Core..:? "authorDetails")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#liveChatMessage"
                     )
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON LiveChatMessage where
  toJSON LiveChatMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("authorDetails" Core..=) Core.<$> authorDetails,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

--
-- /See:/ 'newLiveChatMessageAuthorDetails' smart constructor.
data LiveChatMessageAuthorDetails = LiveChatMessageAuthorDetails
  { -- | The YouTube channel ID.
    channelId :: (Core.Maybe Core.Text),
    -- | The channel\'s URL.
    channelUrl :: (Core.Maybe Core.Text),
    -- | The channel\'s display name.
    displayName :: (Core.Maybe Core.Text),
    -- | Whether the author is a moderator of the live chat.
    isChatModerator :: (Core.Maybe Core.Bool),
    -- | Whether the author is the owner of the live chat.
    isChatOwner :: (Core.Maybe Core.Bool),
    -- | Whether the author is a sponsor of the live chat.
    isChatSponsor :: (Core.Maybe Core.Bool),
    -- | Whether the author\'s identity has been verified by YouTube.
    isVerified :: (Core.Maybe Core.Bool),
    -- | The channels\'s avatar URL.
    profileImageUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatMessageAuthorDetails' with the minimum fields required to make a request.
newLiveChatMessageAuthorDetails ::
  LiveChatMessageAuthorDetails
newLiveChatMessageAuthorDetails =
  LiveChatMessageAuthorDetails
    { channelId = Core.Nothing,
      channelUrl = Core.Nothing,
      displayName = Core.Nothing,
      isChatModerator = Core.Nothing,
      isChatOwner = Core.Nothing,
      isChatSponsor = Core.Nothing,
      isVerified = Core.Nothing,
      profileImageUrl = Core.Nothing
    }

instance Core.FromJSON LiveChatMessageAuthorDetails where
  parseJSON =
    Core.withObject
      "LiveChatMessageAuthorDetails"
      ( \o ->
          LiveChatMessageAuthorDetails
            Core.<$> (o Core..:? "channelId")
            Core.<*> (o Core..:? "channelUrl")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "isChatModerator")
            Core.<*> (o Core..:? "isChatOwner")
            Core.<*> (o Core..:? "isChatSponsor")
            Core.<*> (o Core..:? "isVerified")
            Core.<*> (o Core..:? "profileImageUrl")
      )

instance Core.ToJSON LiveChatMessageAuthorDetails where
  toJSON LiveChatMessageAuthorDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("channelId" Core..=) Core.<$> channelId,
            ("channelUrl" Core..=) Core.<$> channelUrl,
            ("displayName" Core..=) Core.<$> displayName,
            ("isChatModerator" Core..=) Core.<$> isChatModerator,
            ("isChatOwner" Core..=) Core.<$> isChatOwner,
            ("isChatSponsor" Core..=) Core.<$> isChatSponsor,
            ("isVerified" Core..=) Core.<$> isVerified,
            ("profileImageUrl" Core..=)
              Core.<$> profileImageUrl
          ]
      )

--
-- /See:/ 'newLiveChatMessageDeletedDetails' smart constructor.
newtype LiveChatMessageDeletedDetails = LiveChatMessageDeletedDetails
  { -- |
    deletedMessageId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatMessageDeletedDetails' with the minimum fields required to make a request.
newLiveChatMessageDeletedDetails ::
  LiveChatMessageDeletedDetails
newLiveChatMessageDeletedDetails =
  LiveChatMessageDeletedDetails {deletedMessageId = Core.Nothing}

instance Core.FromJSON LiveChatMessageDeletedDetails where
  parseJSON =
    Core.withObject
      "LiveChatMessageDeletedDetails"
      ( \o ->
          LiveChatMessageDeletedDetails
            Core.<$> (o Core..:? "deletedMessageId")
      )

instance Core.ToJSON LiveChatMessageDeletedDetails where
  toJSON LiveChatMessageDeletedDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("deletedMessageId" Core..=)
              Core.<$> deletedMessageId
          ]
      )

--
-- /See:/ 'newLiveChatMessageListResponse' smart constructor.
data LiveChatMessageListResponse = LiveChatMessageListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- |
    items :: (Core.Maybe [LiveChatMessage]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#liveChatMessageListResponse\".
    kind :: Core.Text,
    -- |
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The date and time when the underlying stream went offline.
    offlineAt :: (Core.Maybe Core.DateTime'),
    -- | General pagination information.
    pageInfo :: (Core.Maybe PageInfo),
    -- | The amount of time the client should wait before polling again.
    pollingIntervalMillis :: (Core.Maybe Core.Word32),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatMessageListResponse' with the minimum fields required to make a request.
newLiveChatMessageListResponse ::
  LiveChatMessageListResponse
newLiveChatMessageListResponse =
  LiveChatMessageListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#liveChatMessageListResponse",
      nextPageToken = Core.Nothing,
      offlineAt = Core.Nothing,
      pageInfo = Core.Nothing,
      pollingIntervalMillis = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON LiveChatMessageListResponse where
  parseJSON =
    Core.withObject
      "LiveChatMessageListResponse"
      ( \o ->
          LiveChatMessageListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#liveChatMessageListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "offlineAt")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "pollingIntervalMillis")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON LiveChatMessageListResponse where
  toJSON LiveChatMessageListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("offlineAt" Core..=) Core.<$> offlineAt,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("pollingIntervalMillis" Core..=)
              Core.<$> pollingIntervalMillis,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

--
-- /See:/ 'newLiveChatMessageRetractedDetails' smart constructor.
newtype LiveChatMessageRetractedDetails = LiveChatMessageRetractedDetails
  { -- |
    retractedMessageId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatMessageRetractedDetails' with the minimum fields required to make a request.
newLiveChatMessageRetractedDetails ::
  LiveChatMessageRetractedDetails
newLiveChatMessageRetractedDetails =
  LiveChatMessageRetractedDetails {retractedMessageId = Core.Nothing}

instance
  Core.FromJSON
    LiveChatMessageRetractedDetails
  where
  parseJSON =
    Core.withObject
      "LiveChatMessageRetractedDetails"
      ( \o ->
          LiveChatMessageRetractedDetails
            Core.<$> (o Core..:? "retractedMessageId")
      )

instance Core.ToJSON LiveChatMessageRetractedDetails where
  toJSON LiveChatMessageRetractedDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("retractedMessageId" Core..=)
              Core.<$> retractedMessageId
          ]
      )

-- | Next ID: 33
--
-- /See:/ 'newLiveChatMessageSnippet' smart constructor.
data LiveChatMessageSnippet = LiveChatMessageSnippet
  { -- | The ID of the user that authored this message, this field is not always filled. textMessageEvent - the user that wrote the message fanFundingEvent - the user that funded the broadcast newSponsorEvent - the user that just became a sponsor memberMilestoneChatEvent - the member that sent the message membershipGiftingEvent - the user that made the purchase giftMembershipReceivedEvent - the user that received the gift membership messageDeletedEvent - the moderator that took the action messageRetractedEvent - the author that retracted their message userBannedEvent - the moderator that took the action superChatEvent - the user that made the purchase superStickerEvent - the user that made the purchase
    authorChannelId :: (Core.Maybe Core.Text),
    -- | Contains a string that can be displayed to the user. If this field is not present the message is silent, at the moment only messages of type TOMBSTONE and CHAT/ENDED/EVENT are silent.
    displayMessage :: (Core.Maybe Core.Text),
    -- | Details about the funding event, this is only set if the type is \'fanFundingEvent\'.
    fanFundingEventDetails :: (Core.Maybe LiveChatFanFundingEventDetails),
    -- | Details about the Gift Membership Received event, this is only set if the type is \'giftMembershipReceivedEvent\'.
    giftMembershipReceivedDetails :: (Core.Maybe LiveChatGiftMembershipReceivedDetails),
    -- | Whether the message has display content that should be displayed to users.
    hasDisplayContent :: (Core.Maybe Core.Bool),
    -- |
    liveChatId :: (Core.Maybe Core.Text),
    -- | Details about the Member Milestone Chat event, this is only set if the type is \'memberMilestoneChatEvent\'.
    memberMilestoneChatDetails :: (Core.Maybe LiveChatMemberMilestoneChatDetails),
    -- | Details about the Membership Gifting event, this is only set if the type is \'membershipGiftingEvent\'.
    membershipGiftingDetails :: (Core.Maybe LiveChatMembershipGiftingDetails),
    -- |
    messageDeletedDetails :: (Core.Maybe LiveChatMessageDeletedDetails),
    -- |
    messageRetractedDetails :: (Core.Maybe LiveChatMessageRetractedDetails),
    -- | Details about the New Member Announcement event, this is only set if the type is \'newSponsorEvent\'. Please note that \"member\" is the new term for \"sponsor\".
    newSponsorDetails' :: (Core.Maybe LiveChatNewSponsorDetails),
    -- | The date and time when the message was orignally published.
    publishedAt :: (Core.Maybe Core.DateTime'),
    -- | Details about the Super Chat event, this is only set if the type is \'superChatEvent\'.
    superChatDetails :: (Core.Maybe LiveChatSuperChatDetails),
    -- | Details about the Super Sticker event, this is only set if the type is \'superStickerEvent\'.
    superStickerDetails :: (Core.Maybe LiveChatSuperStickerDetails),
    -- | Details about the text message, this is only set if the type is \'textMessageEvent\'.
    textMessageDetails :: (Core.Maybe LiveChatTextMessageDetails),
    -- | The type of message, this will always be present, it determines the contents of the message as well as which fields will be present.
    type' :: (Core.Maybe LiveChatMessageSnippet_Type),
    -- |
    userBannedDetails :: (Core.Maybe LiveChatUserBannedMessageDetails)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatMessageSnippet' with the minimum fields required to make a request.
newLiveChatMessageSnippet ::
  LiveChatMessageSnippet
newLiveChatMessageSnippet =
  LiveChatMessageSnippet
    { authorChannelId = Core.Nothing,
      displayMessage = Core.Nothing,
      fanFundingEventDetails = Core.Nothing,
      giftMembershipReceivedDetails = Core.Nothing,
      hasDisplayContent = Core.Nothing,
      liveChatId = Core.Nothing,
      memberMilestoneChatDetails = Core.Nothing,
      membershipGiftingDetails = Core.Nothing,
      messageDeletedDetails = Core.Nothing,
      messageRetractedDetails = Core.Nothing,
      newSponsorDetails' = Core.Nothing,
      publishedAt = Core.Nothing,
      superChatDetails = Core.Nothing,
      superStickerDetails = Core.Nothing,
      textMessageDetails = Core.Nothing,
      type' = Core.Nothing,
      userBannedDetails = Core.Nothing
    }

instance Core.FromJSON LiveChatMessageSnippet where
  parseJSON =
    Core.withObject
      "LiveChatMessageSnippet"
      ( \o ->
          LiveChatMessageSnippet
            Core.<$> (o Core..:? "authorChannelId")
            Core.<*> (o Core..:? "displayMessage")
            Core.<*> (o Core..:? "fanFundingEventDetails")
            Core.<*> (o Core..:? "giftMembershipReceivedDetails")
            Core.<*> (o Core..:? "hasDisplayContent")
            Core.<*> (o Core..:? "liveChatId")
            Core.<*> (o Core..:? "memberMilestoneChatDetails")
            Core.<*> (o Core..:? "membershipGiftingDetails")
            Core.<*> (o Core..:? "messageDeletedDetails")
            Core.<*> (o Core..:? "messageRetractedDetails")
            Core.<*> (o Core..:? "newSponsorDetails")
            Core.<*> (o Core..:? "publishedAt")
            Core.<*> (o Core..:? "superChatDetails")
            Core.<*> (o Core..:? "superStickerDetails")
            Core.<*> (o Core..:? "textMessageDetails")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "userBannedDetails")
      )

instance Core.ToJSON LiveChatMessageSnippet where
  toJSON LiveChatMessageSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("authorChannelId" Core..=)
              Core.<$> authorChannelId,
            ("displayMessage" Core..=) Core.<$> displayMessage,
            ("fanFundingEventDetails" Core..=)
              Core.<$> fanFundingEventDetails,
            ("giftMembershipReceivedDetails" Core..=)
              Core.<$> giftMembershipReceivedDetails,
            ("hasDisplayContent" Core..=)
              Core.<$> hasDisplayContent,
            ("liveChatId" Core..=) Core.<$> liveChatId,
            ("memberMilestoneChatDetails" Core..=)
              Core.<$> memberMilestoneChatDetails,
            ("membershipGiftingDetails" Core..=)
              Core.<$> membershipGiftingDetails,
            ("messageDeletedDetails" Core..=)
              Core.<$> messageDeletedDetails,
            ("messageRetractedDetails" Core..=)
              Core.<$> messageRetractedDetails,
            ("newSponsorDetails" Core..=)
              Core.<$> newSponsorDetails',
            ("publishedAt" Core..=) Core.<$> publishedAt,
            ("superChatDetails" Core..=)
              Core.<$> superChatDetails,
            ("superStickerDetails" Core..=)
              Core.<$> superStickerDetails,
            ("textMessageDetails" Core..=)
              Core.<$> textMessageDetails,
            ("type" Core..=) Core.<$> type',
            ("userBannedDetails" Core..=)
              Core.<$> userBannedDetails
          ]
      )

-- | A /liveChatModerator/ resource represents a moderator for a YouTube live chat. A chat moderator has the ability to ban\/unban users from a chat, remove message, etc.
--
-- /See:/ 'newLiveChatModerator' smart constructor.
data LiveChatModerator = LiveChatModerator
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube assigns to uniquely identify the moderator.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#liveChatModerator\".
    kind :: Core.Text,
    -- | The snippet object contains basic details about the moderator.
    snippet :: (Core.Maybe LiveChatModeratorSnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatModerator' with the minimum fields required to make a request.
newLiveChatModerator ::
  LiveChatModerator
newLiveChatModerator =
  LiveChatModerator
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#liveChatModerator",
      snippet = Core.Nothing
    }

instance Core.FromJSON LiveChatModerator where
  parseJSON =
    Core.withObject
      "LiveChatModerator"
      ( \o ->
          LiveChatModerator
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#liveChatModerator"
                     )
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON LiveChatModerator where
  toJSON LiveChatModerator {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

--
-- /See:/ 'newLiveChatModeratorListResponse' smart constructor.
data LiveChatModeratorListResponse = LiveChatModeratorListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of moderators that match the request criteria.
    items :: (Core.Maybe [LiveChatModerator]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#liveChatModeratorListResponse\".
    kind :: Core.Text,
    -- | The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | General pagination information.
    pageInfo :: (Core.Maybe PageInfo),
    -- | The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.
    prevPageToken :: (Core.Maybe Core.Text),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatModeratorListResponse' with the minimum fields required to make a request.
newLiveChatModeratorListResponse ::
  LiveChatModeratorListResponse
newLiveChatModeratorListResponse =
  LiveChatModeratorListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#liveChatModeratorListResponse",
      nextPageToken = Core.Nothing,
      pageInfo = Core.Nothing,
      prevPageToken = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON LiveChatModeratorListResponse where
  parseJSON =
    Core.withObject
      "LiveChatModeratorListResponse"
      ( \o ->
          LiveChatModeratorListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#liveChatModeratorListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "prevPageToken")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON LiveChatModeratorListResponse where
  toJSON LiveChatModeratorListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("prevPageToken" Core..=) Core.<$> prevPageToken,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

--
-- /See:/ 'newLiveChatModeratorSnippet' smart constructor.
data LiveChatModeratorSnippet = LiveChatModeratorSnippet
  { -- | The ID of the live chat this moderator can act on.
    liveChatId :: (Core.Maybe Core.Text),
    -- | Details about the moderator.
    moderatorDetails :: (Core.Maybe ChannelProfileDetails)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatModeratorSnippet' with the minimum fields required to make a request.
newLiveChatModeratorSnippet ::
  LiveChatModeratorSnippet
newLiveChatModeratorSnippet =
  LiveChatModeratorSnippet
    { liveChatId = Core.Nothing,
      moderatorDetails = Core.Nothing
    }

instance Core.FromJSON LiveChatModeratorSnippet where
  parseJSON =
    Core.withObject
      "LiveChatModeratorSnippet"
      ( \o ->
          LiveChatModeratorSnippet
            Core.<$> (o Core..:? "liveChatId")
            Core.<*> (o Core..:? "moderatorDetails")
      )

instance Core.ToJSON LiveChatModeratorSnippet where
  toJSON LiveChatModeratorSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("liveChatId" Core..=) Core.<$> liveChatId,
            ("moderatorDetails" Core..=)
              Core.<$> moderatorDetails
          ]
      )

--
-- /See:/ 'newLiveChatNewSponsorDetails' smart constructor.
data LiveChatNewSponsorDetails = LiveChatNewSponsorDetails
  { -- | If the viewer just had upgraded from a lower level. For viewers that were not members at the time of purchase, this field is false.
    isUpgrade :: (Core.Maybe Core.Bool),
    -- | The name of the Level that the viewer just had joined. The Level names are defined by the YouTube channel offering the Membership. In some situations this field isn\'t filled.
    memberLevelName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatNewSponsorDetails' with the minimum fields required to make a request.
newLiveChatNewSponsorDetails ::
  LiveChatNewSponsorDetails
newLiveChatNewSponsorDetails =
  LiveChatNewSponsorDetails
    { isUpgrade = Core.Nothing,
      memberLevelName = Core.Nothing
    }

instance Core.FromJSON LiveChatNewSponsorDetails where
  parseJSON =
    Core.withObject
      "LiveChatNewSponsorDetails"
      ( \o ->
          LiveChatNewSponsorDetails
            Core.<$> (o Core..:? "isUpgrade")
            Core.<*> (o Core..:? "memberLevelName")
      )

instance Core.ToJSON LiveChatNewSponsorDetails where
  toJSON LiveChatNewSponsorDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("isUpgrade" Core..=) Core.<$> isUpgrade,
            ("memberLevelName" Core..=)
              Core.<$> memberLevelName
          ]
      )

--
-- /See:/ 'newLiveChatSuperChatDetails' smart constructor.
data LiveChatSuperChatDetails = LiveChatSuperChatDetails
  { -- | A rendered string that displays the fund amount and currency to the user.
    amountDisplayString :: (Core.Maybe Core.Text),
    -- | The amount purchased by the user, in micros (1,750,000 micros = 1.75).
    amountMicros :: (Core.Maybe Core.Word64),
    -- | The currency in which the purchase was made.
    currency :: (Core.Maybe Core.Text),
    -- | The tier in which the amount belongs. Lower amounts belong to lower tiers. The lowest tier is 1.
    tier :: (Core.Maybe Core.Word32),
    -- | The comment added by the user to this Super Chat event.
    userComment :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatSuperChatDetails' with the minimum fields required to make a request.
newLiveChatSuperChatDetails ::
  LiveChatSuperChatDetails
newLiveChatSuperChatDetails =
  LiveChatSuperChatDetails
    { amountDisplayString = Core.Nothing,
      amountMicros = Core.Nothing,
      currency = Core.Nothing,
      tier = Core.Nothing,
      userComment = Core.Nothing
    }

instance Core.FromJSON LiveChatSuperChatDetails where
  parseJSON =
    Core.withObject
      "LiveChatSuperChatDetails"
      ( \o ->
          LiveChatSuperChatDetails
            Core.<$> (o Core..:? "amountDisplayString")
            Core.<*> (o Core..:? "amountMicros")
            Core.<*> (o Core..:? "currency")
            Core.<*> (o Core..:? "tier")
            Core.<*> (o Core..:? "userComment")
      )

instance Core.ToJSON LiveChatSuperChatDetails where
  toJSON LiveChatSuperChatDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("amountDisplayString" Core..=)
              Core.<$> amountDisplayString,
            ("amountMicros" Core..=) Core.. Core.AsText
              Core.<$> amountMicros,
            ("currency" Core..=) Core.<$> currency,
            ("tier" Core..=) Core.<$> tier,
            ("userComment" Core..=) Core.<$> userComment
          ]
      )

--
-- /See:/ 'newLiveChatSuperStickerDetails' smart constructor.
data LiveChatSuperStickerDetails = LiveChatSuperStickerDetails
  { -- | A rendered string that displays the fund amount and currency to the user.
    amountDisplayString :: (Core.Maybe Core.Text),
    -- | The amount purchased by the user, in micros (1,750,000 micros = 1.75).
    amountMicros :: (Core.Maybe Core.Word64),
    -- | The currency in which the purchase was made.
    currency :: (Core.Maybe Core.Text),
    -- | Information about the Super Sticker.
    superStickerMetadata :: (Core.Maybe SuperStickerMetadata),
    -- | The tier in which the amount belongs. Lower amounts belong to lower tiers. The lowest tier is 1.
    tier :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatSuperStickerDetails' with the minimum fields required to make a request.
newLiveChatSuperStickerDetails ::
  LiveChatSuperStickerDetails
newLiveChatSuperStickerDetails =
  LiveChatSuperStickerDetails
    { amountDisplayString = Core.Nothing,
      amountMicros = Core.Nothing,
      currency = Core.Nothing,
      superStickerMetadata = Core.Nothing,
      tier = Core.Nothing
    }

instance Core.FromJSON LiveChatSuperStickerDetails where
  parseJSON =
    Core.withObject
      "LiveChatSuperStickerDetails"
      ( \o ->
          LiveChatSuperStickerDetails
            Core.<$> (o Core..:? "amountDisplayString")
            Core.<*> (o Core..:? "amountMicros")
            Core.<*> (o Core..:? "currency")
            Core.<*> (o Core..:? "superStickerMetadata")
            Core.<*> (o Core..:? "tier")
      )

instance Core.ToJSON LiveChatSuperStickerDetails where
  toJSON LiveChatSuperStickerDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("amountDisplayString" Core..=)
              Core.<$> amountDisplayString,
            ("amountMicros" Core..=) Core.. Core.AsText
              Core.<$> amountMicros,
            ("currency" Core..=) Core.<$> currency,
            ("superStickerMetadata" Core..=)
              Core.<$> superStickerMetadata,
            ("tier" Core..=) Core.<$> tier
          ]
      )

--
-- /See:/ 'newLiveChatTextMessageDetails' smart constructor.
newtype LiveChatTextMessageDetails = LiveChatTextMessageDetails
  { -- | The user\'s message.
    messageText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatTextMessageDetails' with the minimum fields required to make a request.
newLiveChatTextMessageDetails ::
  LiveChatTextMessageDetails
newLiveChatTextMessageDetails =
  LiveChatTextMessageDetails {messageText = Core.Nothing}

instance Core.FromJSON LiveChatTextMessageDetails where
  parseJSON =
    Core.withObject
      "LiveChatTextMessageDetails"
      ( \o ->
          LiveChatTextMessageDetails
            Core.<$> (o Core..:? "messageText")
      )

instance Core.ToJSON LiveChatTextMessageDetails where
  toJSON LiveChatTextMessageDetails {..} =
    Core.object
      ( Core.catMaybes
          [("messageText" Core..=) Core.<$> messageText]
      )

--
-- /See:/ 'newLiveChatUserBannedMessageDetails' smart constructor.
data LiveChatUserBannedMessageDetails = LiveChatUserBannedMessageDetails
  { -- | The duration of the ban. This property is only present if the banType is temporary.
    banDurationSeconds :: (Core.Maybe Core.Word64),
    -- | The type of ban.
    banType :: (Core.Maybe LiveChatUserBannedMessageDetails_BanType),
    -- | The details of the user that was banned.
    bannedUserDetails :: (Core.Maybe ChannelProfileDetails)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveChatUserBannedMessageDetails' with the minimum fields required to make a request.
newLiveChatUserBannedMessageDetails ::
  LiveChatUserBannedMessageDetails
newLiveChatUserBannedMessageDetails =
  LiveChatUserBannedMessageDetails
    { banDurationSeconds = Core.Nothing,
      banType = Core.Nothing,
      bannedUserDetails = Core.Nothing
    }

instance
  Core.FromJSON
    LiveChatUserBannedMessageDetails
  where
  parseJSON =
    Core.withObject
      "LiveChatUserBannedMessageDetails"
      ( \o ->
          LiveChatUserBannedMessageDetails
            Core.<$> (o Core..:? "banDurationSeconds")
            Core.<*> (o Core..:? "banType")
            Core.<*> (o Core..:? "bannedUserDetails")
      )

instance Core.ToJSON LiveChatUserBannedMessageDetails where
  toJSON LiveChatUserBannedMessageDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("banDurationSeconds" Core..=) Core.. Core.AsText
              Core.<$> banDurationSeconds,
            ("banType" Core..=) Core.<$> banType,
            ("bannedUserDetails" Core..=)
              Core.<$> bannedUserDetails
          ]
      )

-- | A live stream describes a live ingestion point.
--
-- /See:/ 'newLiveStream' smart constructor.
data LiveStream = LiveStream
  { -- | The cdn object defines the live stream\'s content delivery network (CDN) settings. These settings provide details about the manner in which you stream your content to YouTube.
    cdn :: (Core.Maybe CdnSettings),
    -- | The content_details object contains information about the stream, including the closed captions ingestion URL.
    contentDetails :: (Core.Maybe LiveStreamContentDetails),
    -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube assigns to uniquely identify the stream.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#liveStream\".
    kind :: Core.Text,
    -- | The snippet object contains basic details about the stream, including its channel, title, and description.
    snippet :: (Core.Maybe LiveStreamSnippet),
    -- | The status object contains information about live stream\'s status.
    status :: (Core.Maybe LiveStreamStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveStream' with the minimum fields required to make a request.
newLiveStream ::
  LiveStream
newLiveStream =
  LiveStream
    { cdn = Core.Nothing,
      contentDetails = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#liveStream",
      snippet = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON LiveStream where
  parseJSON =
    Core.withObject
      "LiveStream"
      ( \o ->
          LiveStream
            Core.<$> (o Core..:? "cdn")
            Core.<*> (o Core..:? "contentDetails")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#liveStream")
            Core.<*> (o Core..:? "snippet")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON LiveStream where
  toJSON LiveStream {..} =
    Core.object
      ( Core.catMaybes
          [ ("cdn" Core..=) Core.<$> cdn,
            ("contentDetails" Core..=) Core.<$> contentDetails,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet,
            ("status" Core..=) Core.<$> status
          ]
      )

--
-- /See:/ 'newLiveStreamConfigurationIssue' smart constructor.
data LiveStreamConfigurationIssue = LiveStreamConfigurationIssue
  { -- | The long-form description of the issue and how to resolve it.
    description :: (Core.Maybe Core.Text),
    -- | The short-form reason for this issue.
    reason :: (Core.Maybe Core.Text),
    -- | How severe this issue is to the stream.
    severity :: (Core.Maybe LiveStreamConfigurationIssue_Severity),
    -- | The kind of error happening.
    type' :: (Core.Maybe LiveStreamConfigurationIssue_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveStreamConfigurationIssue' with the minimum fields required to make a request.
newLiveStreamConfigurationIssue ::
  LiveStreamConfigurationIssue
newLiveStreamConfigurationIssue =
  LiveStreamConfigurationIssue
    { description = Core.Nothing,
      reason = Core.Nothing,
      severity = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON LiveStreamConfigurationIssue where
  parseJSON =
    Core.withObject
      "LiveStreamConfigurationIssue"
      ( \o ->
          LiveStreamConfigurationIssue
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON LiveStreamConfigurationIssue where
  toJSON LiveStreamConfigurationIssue {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("reason" Core..=) Core.<$> reason,
            ("severity" Core..=) Core.<$> severity,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Detailed settings of a stream.
--
-- /See:/ 'newLiveStreamContentDetails' smart constructor.
data LiveStreamContentDetails = LiveStreamContentDetails
  { -- | The ingestion URL where the closed captions of this stream are sent.
    closedCaptionsIngestionUrl :: (Core.Maybe Core.Text),
    -- | Indicates whether the stream is reusable, which means that it can be bound to multiple broadcasts. It is common for broadcasters to reuse the same stream for many different broadcasts if those broadcasts occur at different times. If you set this value to false, then the stream will not be reusable, which means that it can only be bound to one broadcast. Non-reusable streams differ from reusable streams in the following ways: - A non-reusable stream can only be bound to one broadcast. - A non-reusable stream might be deleted by an automated process after the broadcast ends. - The liveStreams.list method does not list non-reusable streams if you call the method and set the mine parameter to true. The only way to use that method to retrieve the resource for a non-reusable stream is to use the id parameter to identify the stream.
    isReusable :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveStreamContentDetails' with the minimum fields required to make a request.
newLiveStreamContentDetails ::
  LiveStreamContentDetails
newLiveStreamContentDetails =
  LiveStreamContentDetails
    { closedCaptionsIngestionUrl = Core.Nothing,
      isReusable = Core.Nothing
    }

instance Core.FromJSON LiveStreamContentDetails where
  parseJSON =
    Core.withObject
      "LiveStreamContentDetails"
      ( \o ->
          LiveStreamContentDetails
            Core.<$> (o Core..:? "closedCaptionsIngestionUrl")
            Core.<*> (o Core..:? "isReusable")
      )

instance Core.ToJSON LiveStreamContentDetails where
  toJSON LiveStreamContentDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("closedCaptionsIngestionUrl" Core..=)
              Core.<$> closedCaptionsIngestionUrl,
            ("isReusable" Core..=) Core.<$> isReusable
          ]
      )

--
-- /See:/ 'newLiveStreamHealthStatus' smart constructor.
data LiveStreamHealthStatus = LiveStreamHealthStatus
  { -- | The configurations issues on this stream
    configurationIssues :: (Core.Maybe [LiveStreamConfigurationIssue]),
    -- | The last time this status was updated (in seconds)
    lastUpdateTimeSeconds :: (Core.Maybe Core.Word64),
    -- | The status code of this stream
    status :: (Core.Maybe LiveStreamHealthStatus_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveStreamHealthStatus' with the minimum fields required to make a request.
newLiveStreamHealthStatus ::
  LiveStreamHealthStatus
newLiveStreamHealthStatus =
  LiveStreamHealthStatus
    { configurationIssues = Core.Nothing,
      lastUpdateTimeSeconds = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON LiveStreamHealthStatus where
  parseJSON =
    Core.withObject
      "LiveStreamHealthStatus"
      ( \o ->
          LiveStreamHealthStatus
            Core.<$> ( o Core..:? "configurationIssues"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "lastUpdateTimeSeconds")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON LiveStreamHealthStatus where
  toJSON LiveStreamHealthStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("configurationIssues" Core..=)
              Core.<$> configurationIssues,
            ("lastUpdateTimeSeconds" Core..=) Core.. Core.AsText
              Core.<$> lastUpdateTimeSeconds,
            ("status" Core..=) Core.<$> status
          ]
      )

--
-- /See:/ 'newLiveStreamListResponse' smart constructor.
data LiveStreamListResponse = LiveStreamListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of live streams that match the request criteria.
    items :: (Core.Maybe [LiveStream]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#liveStreamListResponse\".
    kind :: Core.Text,
    -- | The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    pageInfo :: (Core.Maybe PageInfo),
    -- | The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.
    prevPageToken :: (Core.Maybe Core.Text),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveStreamListResponse' with the minimum fields required to make a request.
newLiveStreamListResponse ::
  LiveStreamListResponse
newLiveStreamListResponse =
  LiveStreamListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#liveStreamListResponse",
      nextPageToken = Core.Nothing,
      pageInfo = Core.Nothing,
      prevPageToken = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON LiveStreamListResponse where
  parseJSON =
    Core.withObject
      "LiveStreamListResponse"
      ( \o ->
          LiveStreamListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#liveStreamListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "prevPageToken")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON LiveStreamListResponse where
  toJSON LiveStreamListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("prevPageToken" Core..=) Core.<$> prevPageToken,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

--
-- /See:/ 'newLiveStreamSnippet' smart constructor.
data LiveStreamSnippet = LiveStreamSnippet
  { -- | The ID that YouTube uses to uniquely identify the channel that is transmitting the stream.
    channelId :: (Core.Maybe Core.Text),
    -- | The stream\'s description. The value cannot be longer than 10000 characters.
    description :: (Core.Maybe Core.Text),
    -- |
    isDefaultStream :: (Core.Maybe Core.Bool),
    -- | The date and time that the stream was created.
    publishedAt :: (Core.Maybe Core.DateTime'),
    -- | The stream\'s title. The value must be between 1 and 128 characters long.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveStreamSnippet' with the minimum fields required to make a request.
newLiveStreamSnippet ::
  LiveStreamSnippet
newLiveStreamSnippet =
  LiveStreamSnippet
    { channelId = Core.Nothing,
      description = Core.Nothing,
      isDefaultStream = Core.Nothing,
      publishedAt = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON LiveStreamSnippet where
  parseJSON =
    Core.withObject
      "LiveStreamSnippet"
      ( \o ->
          LiveStreamSnippet
            Core.<$> (o Core..:? "channelId")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "isDefaultStream")
            Core.<*> (o Core..:? "publishedAt")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON LiveStreamSnippet where
  toJSON LiveStreamSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("channelId" Core..=) Core.<$> channelId,
            ("description" Core..=) Core.<$> description,
            ("isDefaultStream" Core..=) Core.<$> isDefaultStream,
            ("publishedAt" Core..=) Core.<$> publishedAt,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Brief description of the live stream status.
--
-- /See:/ 'newLiveStreamStatus' smart constructor.
data LiveStreamStatus = LiveStreamStatus
  { -- | The health status of the stream.
    healthStatus :: (Core.Maybe LiveStreamHealthStatus),
    -- |
    streamStatus :: (Core.Maybe LiveStreamStatus_StreamStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveStreamStatus' with the minimum fields required to make a request.
newLiveStreamStatus ::
  LiveStreamStatus
newLiveStreamStatus =
  LiveStreamStatus {healthStatus = Core.Nothing, streamStatus = Core.Nothing}

instance Core.FromJSON LiveStreamStatus where
  parseJSON =
    Core.withObject
      "LiveStreamStatus"
      ( \o ->
          LiveStreamStatus
            Core.<$> (o Core..:? "healthStatus")
            Core.<*> (o Core..:? "streamStatus")
      )

instance Core.ToJSON LiveStreamStatus where
  toJSON LiveStreamStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("healthStatus" Core..=) Core.<$> healthStatus,
            ("streamStatus" Core..=) Core.<$> streamStatus
          ]
      )

--
-- /See:/ 'newLocalizedProperty' smart constructor.
data LocalizedProperty = LocalizedProperty
  { -- |
    default' :: (Core.Maybe Core.Text),
    -- | The language of the default property.
    defaultLanguage :: (Core.Maybe LanguageTag),
    -- |
    localized :: (Core.Maybe [LocalizedString])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalizedProperty' with the minimum fields required to make a request.
newLocalizedProperty ::
  LocalizedProperty
newLocalizedProperty =
  LocalizedProperty
    { default' = Core.Nothing,
      defaultLanguage = Core.Nothing,
      localized = Core.Nothing
    }

instance Core.FromJSON LocalizedProperty where
  parseJSON =
    Core.withObject
      "LocalizedProperty"
      ( \o ->
          LocalizedProperty
            Core.<$> (o Core..:? "default")
            Core.<*> (o Core..:? "defaultLanguage")
            Core.<*> (o Core..:? "localized" Core..!= Core.mempty)
      )

instance Core.ToJSON LocalizedProperty where
  toJSON LocalizedProperty {..} =
    Core.object
      ( Core.catMaybes
          [ ("default" Core..=) Core.<$> default',
            ("defaultLanguage" Core..=) Core.<$> defaultLanguage,
            ("localized" Core..=) Core.<$> localized
          ]
      )

--
-- /See:/ 'newLocalizedString' smart constructor.
data LocalizedString = LocalizedString
  { -- |
    language :: (Core.Maybe Core.Text),
    -- |
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalizedString' with the minimum fields required to make a request.
newLocalizedString ::
  LocalizedString
newLocalizedString =
  LocalizedString {language = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON LocalizedString where
  parseJSON =
    Core.withObject
      "LocalizedString"
      ( \o ->
          LocalizedString
            Core.<$> (o Core..:? "language")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON LocalizedString where
  toJSON LocalizedString {..} =
    Core.object
      ( Core.catMaybes
          [ ("language" Core..=) Core.<$> language,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A /member/ resource represents a member for a YouTube channel. A member provides recurring monetary support to a creator and receives special benefits.
--
-- /See:/ 'newMember' smart constructor.
data Member = Member
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#member\".
    kind :: Core.Text,
    -- | The snippet object contains basic details about the member.
    snippet :: (Core.Maybe MemberSnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Member' with the minimum fields required to make a request.
newMember ::
  Member
newMember =
  Member {etag = Core.Nothing, kind = "youtube#member", snippet = Core.Nothing}

instance Core.FromJSON Member where
  parseJSON =
    Core.withObject
      "Member"
      ( \o ->
          Member
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#member")
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON Member where
  toJSON Member {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

--
-- /See:/ 'newMemberListResponse' smart constructor.
data MemberListResponse = MemberListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of members that match the request criteria.
    items :: (Core.Maybe [Member]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#memberListResponse\".
    kind :: Core.Text,
    -- | The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    pageInfo :: (Core.Maybe PageInfo),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MemberListResponse' with the minimum fields required to make a request.
newMemberListResponse ::
  MemberListResponse
newMemberListResponse =
  MemberListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#memberListResponse",
      nextPageToken = Core.Nothing,
      pageInfo = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON MemberListResponse where
  parseJSON =
    Core.withObject
      "MemberListResponse"
      ( \o ->
          MemberListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#memberListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON MemberListResponse where
  toJSON MemberListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

--
-- /See:/ 'newMemberSnippet' smart constructor.
data MemberSnippet = MemberSnippet
  { -- | The id of the channel that\'s offering memberships.
    creatorChannelId :: (Core.Maybe Core.Text),
    -- | Details about the member.
    memberDetails :: (Core.Maybe ChannelProfileDetails),
    -- | Details about the user\'s membership.
    membershipsDetails :: (Core.Maybe MembershipsDetails)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MemberSnippet' with the minimum fields required to make a request.
newMemberSnippet ::
  MemberSnippet
newMemberSnippet =
  MemberSnippet
    { creatorChannelId = Core.Nothing,
      memberDetails = Core.Nothing,
      membershipsDetails = Core.Nothing
    }

instance Core.FromJSON MemberSnippet where
  parseJSON =
    Core.withObject
      "MemberSnippet"
      ( \o ->
          MemberSnippet
            Core.<$> (o Core..:? "creatorChannelId")
            Core.<*> (o Core..:? "memberDetails")
            Core.<*> (o Core..:? "membershipsDetails")
      )

instance Core.ToJSON MemberSnippet where
  toJSON MemberSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("creatorChannelId" Core..=)
              Core.<$> creatorChannelId,
            ("memberDetails" Core..=) Core.<$> memberDetails,
            ("membershipsDetails" Core..=)
              Core.<$> membershipsDetails
          ]
      )

--
-- /See:/ 'newMembershipsDetails' smart constructor.
data MembershipsDetails = MembershipsDetails
  { -- | Ids of all levels that the user has access to. This includes the currently active level and all other levels that are included because of a higher purchase.
    accessibleLevels :: (Core.Maybe [Core.Text]),
    -- | Id of the highest level that the user has access to at the moment.
    highestAccessibleLevel :: (Core.Maybe Core.Text),
    -- | Display name for the highest level that the user has access to at the moment.
    highestAccessibleLevelDisplayName :: (Core.Maybe Core.Text),
    -- | Data about memberships duration without taking into consideration pricing levels.
    membershipsDuration :: (Core.Maybe MembershipsDuration),
    -- | Data about memberships duration on particular pricing levels.
    membershipsDurationAtLevels :: (Core.Maybe [MembershipsDurationAtLevel])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipsDetails' with the minimum fields required to make a request.
newMembershipsDetails ::
  MembershipsDetails
newMembershipsDetails =
  MembershipsDetails
    { accessibleLevels = Core.Nothing,
      highestAccessibleLevel = Core.Nothing,
      highestAccessibleLevelDisplayName = Core.Nothing,
      membershipsDuration = Core.Nothing,
      membershipsDurationAtLevels = Core.Nothing
    }

instance Core.FromJSON MembershipsDetails where
  parseJSON =
    Core.withObject
      "MembershipsDetails"
      ( \o ->
          MembershipsDetails
            Core.<$> (o Core..:? "accessibleLevels" Core..!= Core.mempty)
            Core.<*> (o Core..:? "highestAccessibleLevel")
            Core.<*> (o Core..:? "highestAccessibleLevelDisplayName")
            Core.<*> (o Core..:? "membershipsDuration")
            Core.<*> ( o Core..:? "membershipsDurationAtLevels"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON MembershipsDetails where
  toJSON MembershipsDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessibleLevels" Core..=)
              Core.<$> accessibleLevels,
            ("highestAccessibleLevel" Core..=)
              Core.<$> highestAccessibleLevel,
            ("highestAccessibleLevelDisplayName" Core..=)
              Core.<$> highestAccessibleLevelDisplayName,
            ("membershipsDuration" Core..=)
              Core.<$> membershipsDuration,
            ("membershipsDurationAtLevels" Core..=)
              Core.<$> membershipsDurationAtLevels
          ]
      )

--
-- /See:/ 'newMembershipsDuration' smart constructor.
data MembershipsDuration = MembershipsDuration
  { -- | The date and time when the user became a continuous member across all levels.
    memberSince :: (Core.Maybe Core.Text),
    -- | The cumulative time the user has been a member across all levels in complete months (the time is rounded down to the nearest integer).
    memberTotalDurationMonths :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipsDuration' with the minimum fields required to make a request.
newMembershipsDuration ::
  MembershipsDuration
newMembershipsDuration =
  MembershipsDuration
    { memberSince = Core.Nothing,
      memberTotalDurationMonths = Core.Nothing
    }

instance Core.FromJSON MembershipsDuration where
  parseJSON =
    Core.withObject
      "MembershipsDuration"
      ( \o ->
          MembershipsDuration
            Core.<$> (o Core..:? "memberSince")
            Core.<*> (o Core..:? "memberTotalDurationMonths")
      )

instance Core.ToJSON MembershipsDuration where
  toJSON MembershipsDuration {..} =
    Core.object
      ( Core.catMaybes
          [ ("memberSince" Core..=) Core.<$> memberSince,
            ("memberTotalDurationMonths" Core..=)
              Core.<$> memberTotalDurationMonths
          ]
      )

--
-- /See:/ 'newMembershipsDurationAtLevel' smart constructor.
data MembershipsDurationAtLevel = MembershipsDurationAtLevel
  { -- | Pricing level ID.
    level :: (Core.Maybe Core.Text),
    -- | The date and time when the user became a continuous member for the given level.
    memberSince :: (Core.Maybe Core.Text),
    -- | The cumulative time the user has been a member for the given level in complete months (the time is rounded down to the nearest integer).
    memberTotalDurationMonths :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipsDurationAtLevel' with the minimum fields required to make a request.
newMembershipsDurationAtLevel ::
  MembershipsDurationAtLevel
newMembershipsDurationAtLevel =
  MembershipsDurationAtLevel
    { level = Core.Nothing,
      memberSince = Core.Nothing,
      memberTotalDurationMonths = Core.Nothing
    }

instance Core.FromJSON MembershipsDurationAtLevel where
  parseJSON =
    Core.withObject
      "MembershipsDurationAtLevel"
      ( \o ->
          MembershipsDurationAtLevel
            Core.<$> (o Core..:? "level")
            Core.<*> (o Core..:? "memberSince")
            Core.<*> (o Core..:? "memberTotalDurationMonths")
      )

instance Core.ToJSON MembershipsDurationAtLevel where
  toJSON MembershipsDurationAtLevel {..} =
    Core.object
      ( Core.catMaybes
          [ ("level" Core..=) Core.<$> level,
            ("memberSince" Core..=) Core.<$> memberSince,
            ("memberTotalDurationMonths" Core..=)
              Core.<$> memberTotalDurationMonths
          ]
      )

-- | A /membershipsLevel/ resource represents an offer made by YouTube creators for their fans. Users can become members of the channel by joining one of the available levels. They will provide recurring monetary support and receives special benefits.
--
-- /See:/ 'newMembershipsLevel' smart constructor.
data MembershipsLevel = MembershipsLevel
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube assigns to uniquely identify the memberships level.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#membershipsLevelListResponse\".
    kind :: Core.Text,
    -- | The snippet object contains basic details about the level.
    snippet :: (Core.Maybe MembershipsLevelSnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipsLevel' with the minimum fields required to make a request.
newMembershipsLevel ::
  MembershipsLevel
newMembershipsLevel =
  MembershipsLevel
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#membershipsLevel",
      snippet = Core.Nothing
    }

instance Core.FromJSON MembershipsLevel where
  parseJSON =
    Core.withObject
      "MembershipsLevel"
      ( \o ->
          MembershipsLevel
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#membershipsLevel"
                     )
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON MembershipsLevel where
  toJSON MembershipsLevel {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

--
-- /See:/ 'newMembershipsLevelListResponse' smart constructor.
data MembershipsLevelListResponse = MembershipsLevelListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of pricing levels offered by a creator to the fans.
    items :: (Core.Maybe [MembershipsLevel]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#membershipsLevelListResponse\".
    kind :: Core.Text,
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipsLevelListResponse' with the minimum fields required to make a request.
newMembershipsLevelListResponse ::
  MembershipsLevelListResponse
newMembershipsLevelListResponse =
  MembershipsLevelListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#membershipsLevelListResponse",
      visitorId = Core.Nothing
    }

instance Core.FromJSON MembershipsLevelListResponse where
  parseJSON =
    Core.withObject
      "MembershipsLevelListResponse"
      ( \o ->
          MembershipsLevelListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#membershipsLevelListResponse"
                     )
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON MembershipsLevelListResponse where
  toJSON MembershipsLevelListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

--
-- /See:/ 'newMembershipsLevelSnippet' smart constructor.
data MembershipsLevelSnippet = MembershipsLevelSnippet
  { -- | The id of the channel that\'s offering channel memberships.
    creatorChannelId :: (Core.Maybe Core.Text),
    -- | Details about the pricing level.
    levelDetails :: (Core.Maybe LevelDetails)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MembershipsLevelSnippet' with the minimum fields required to make a request.
newMembershipsLevelSnippet ::
  MembershipsLevelSnippet
newMembershipsLevelSnippet =
  MembershipsLevelSnippet
    { creatorChannelId = Core.Nothing,
      levelDetails = Core.Nothing
    }

instance Core.FromJSON MembershipsLevelSnippet where
  parseJSON =
    Core.withObject
      "MembershipsLevelSnippet"
      ( \o ->
          MembershipsLevelSnippet
            Core.<$> (o Core..:? "creatorChannelId")
            Core.<*> (o Core..:? "levelDetails")
      )

instance Core.ToJSON MembershipsLevelSnippet where
  toJSON MembershipsLevelSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("creatorChannelId" Core..=)
              Core.<$> creatorChannelId,
            ("levelDetails" Core..=) Core.<$> levelDetails
          ]
      )

-- | Settings and Info of the monitor stream
--
-- /See:/ 'newMonitorStreamInfo' smart constructor.
data MonitorStreamInfo = MonitorStreamInfo
  { -- | If you have set the enableMonitorStream property to true, then this property determines the length of the live broadcast delay.
    broadcastStreamDelayMs :: (Core.Maybe Core.Word32),
    -- | HTML code that embeds a player that plays the monitor stream.
    embedHtml :: (Core.Maybe Core.Text),
    -- | This value determines whether the monitor stream is enabled for the broadcast. If the monitor stream is enabled, then YouTube will broadcast the event content on a special stream intended only for the broadcaster\'s consumption. The broadcaster can use the stream to review the event content and also to identify the optimal times to insert cuepoints. You need to set this value to true if you intend to have a broadcast delay for your event. /Note:/ This property cannot be updated once the broadcast is in the testing or live state.
    enableMonitorStream :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitorStreamInfo' with the minimum fields required to make a request.
newMonitorStreamInfo ::
  MonitorStreamInfo
newMonitorStreamInfo =
  MonitorStreamInfo
    { broadcastStreamDelayMs = Core.Nothing,
      embedHtml = Core.Nothing,
      enableMonitorStream = Core.Nothing
    }

instance Core.FromJSON MonitorStreamInfo where
  parseJSON =
    Core.withObject
      "MonitorStreamInfo"
      ( \o ->
          MonitorStreamInfo
            Core.<$> (o Core..:? "broadcastStreamDelayMs")
            Core.<*> (o Core..:? "embedHtml")
            Core.<*> (o Core..:? "enableMonitorStream")
      )

instance Core.ToJSON MonitorStreamInfo where
  toJSON MonitorStreamInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("broadcastStreamDelayMs" Core..=)
              Core.<$> broadcastStreamDelayMs,
            ("embedHtml" Core..=) Core.<$> embedHtml,
            ("enableMonitorStream" Core..=)
              Core.<$> enableMonitorStream
          ]
      )

-- | Paging details for lists of resources, including total number of items available and number of resources returned in a single page.
--
-- /See:/ 'newPageInfo' smart constructor.
data PageInfo = PageInfo
  { -- | The number of results included in the API response.
    resultsPerPage :: (Core.Maybe Core.Int32),
    -- | The total number of results in the result set.
    totalResults :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PageInfo' with the minimum fields required to make a request.
newPageInfo ::
  PageInfo
newPageInfo =
  PageInfo {resultsPerPage = Core.Nothing, totalResults = Core.Nothing}

instance Core.FromJSON PageInfo where
  parseJSON =
    Core.withObject
      "PageInfo"
      ( \o ->
          PageInfo
            Core.<$> (o Core..:? "resultsPerPage")
            Core.<*> (o Core..:? "totalResults")
      )

instance Core.ToJSON PageInfo where
  toJSON PageInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("resultsPerPage" Core..=) Core.<$> resultsPerPage,
            ("totalResults" Core..=) Core.<$> totalResults
          ]
      )

-- | A /playlist/ resource represents a YouTube playlist. A playlist is a collection of videos that can be viewed sequentially and shared with other users. A playlist can contain up to 200 videos, and YouTube does not limit the number of playlists that each user creates. By default, playlists are publicly visible to other users, but playlists can be public or private. YouTube also uses playlists to identify special collections of videos for a channel, such as: - uploaded videos - favorite videos - positively rated (liked) videos - watch history - watch later To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company\'s videos, playlists, and other YouTube information. You can retrieve the playlist IDs for each of these lists from the channel resource for a given channel. You can then use the playlistItems.list method to retrieve any of those lists. You can also add or remove items from those lists by calling the playlistItems.insert and playlistItems.delete
-- methods.
--
-- /See:/ 'newPlaylist' smart constructor.
data Playlist = Playlist
  { -- | The contentDetails object contains information like video count.
    contentDetails :: (Core.Maybe PlaylistContentDetails),
    -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the playlist.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#playlist\".
    kind :: Core.Text,
    -- | Localizations for different languages
    localizations :: (Core.Maybe Playlist_Localizations),
    -- | The player object contains information that you would use to play the playlist in an embedded player.
    player :: (Core.Maybe PlaylistPlayer),
    -- | The snippet object contains basic details about the playlist, such as its title and description.
    snippet :: (Core.Maybe PlaylistSnippet),
    -- | The status object contains status information for the playlist.
    status :: (Core.Maybe PlaylistStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Playlist' with the minimum fields required to make a request.
newPlaylist ::
  Playlist
newPlaylist =
  Playlist
    { contentDetails = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#playlist",
      localizations = Core.Nothing,
      player = Core.Nothing,
      snippet = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON Playlist where
  parseJSON =
    Core.withObject
      "Playlist"
      ( \o ->
          Playlist
            Core.<$> (o Core..:? "contentDetails")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#playlist")
            Core.<*> (o Core..:? "localizations")
            Core.<*> (o Core..:? "player")
            Core.<*> (o Core..:? "snippet")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON Playlist where
  toJSON Playlist {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentDetails" Core..=) Core.<$> contentDetails,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("localizations" Core..=) Core.<$> localizations,
            ("player" Core..=) Core.<$> player,
            ("snippet" Core..=) Core.<$> snippet,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Localizations for different languages
--
-- /See:/ 'newPlaylist_Localizations' smart constructor.
newtype Playlist_Localizations = Playlist_Localizations
  { -- |
    addtional :: (Core.HashMap Core.Text PlaylistLocalization)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Playlist_Localizations' with the minimum fields required to make a request.
newPlaylist_Localizations ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text PlaylistLocalization ->
  Playlist_Localizations
newPlaylist_Localizations addtional =
  Playlist_Localizations {addtional = addtional}

instance Core.FromJSON Playlist_Localizations where
  parseJSON =
    Core.withObject
      "Playlist_Localizations"
      ( \o ->
          Playlist_Localizations
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Playlist_Localizations where
  toJSON Playlist_Localizations {..} =
    Core.toJSON addtional

--
-- /See:/ 'newPlaylistContentDetails' smart constructor.
newtype PlaylistContentDetails = PlaylistContentDetails
  { -- | The number of videos in the playlist.
    itemCount :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlaylistContentDetails' with the minimum fields required to make a request.
newPlaylistContentDetails ::
  PlaylistContentDetails
newPlaylistContentDetails = PlaylistContentDetails {itemCount = Core.Nothing}

instance Core.FromJSON PlaylistContentDetails where
  parseJSON =
    Core.withObject
      "PlaylistContentDetails"
      ( \o ->
          PlaylistContentDetails
            Core.<$> (o Core..:? "itemCount")
      )

instance Core.ToJSON PlaylistContentDetails where
  toJSON PlaylistContentDetails {..} =
    Core.object
      ( Core.catMaybes
          [("itemCount" Core..=) Core.<$> itemCount]
      )

-- | A /playlistItem/ resource identifies another resource, such as a video, that is included in a playlist. In addition, the playlistItem resource contains details about the included resource that pertain specifically to how that resource is used in that playlist. YouTube uses playlists to identify special collections of videos for a channel, such as: - uploaded videos - favorite videos - positively rated (liked) videos - watch history - watch later To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company\'s videos, playlists, and other YouTube information. You can retrieve the playlist IDs for each of these lists from the channel resource for a given channel. You can then use the playlistItems.list method to retrieve any of those lists. You can also add or remove items from those lists by calling the playlistItems.insert and playlistItems.delete methods. For example, if a user gives a positive rating to a video, you would insert that video into the
-- liked videos playlist for that user\'s channel.
--
-- /See:/ 'newPlaylistItem' smart constructor.
data PlaylistItem = PlaylistItem
  { -- | The contentDetails object is included in the resource if the included item is a YouTube video. The object contains additional information about the video.
    contentDetails :: (Core.Maybe PlaylistItemContentDetails),
    -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the playlist item.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#playlistItem\".
    kind :: Core.Text,
    -- | The snippet object contains basic details about the playlist item, such as its title and position in the playlist.
    snippet :: (Core.Maybe PlaylistItemSnippet),
    -- | The status object contains information about the playlist item\'s privacy status.
    status :: (Core.Maybe PlaylistItemStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlaylistItem' with the minimum fields required to make a request.
newPlaylistItem ::
  PlaylistItem
newPlaylistItem =
  PlaylistItem
    { contentDetails = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#playlistItem",
      snippet = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON PlaylistItem where
  parseJSON =
    Core.withObject
      "PlaylistItem"
      ( \o ->
          PlaylistItem
            Core.<$> (o Core..:? "contentDetails")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#playlistItem")
            Core.<*> (o Core..:? "snippet")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON PlaylistItem where
  toJSON PlaylistItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentDetails" Core..=) Core.<$> contentDetails,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet,
            ("status" Core..=) Core.<$> status
          ]
      )

--
-- /See:/ 'newPlaylistItemContentDetails' smart constructor.
data PlaylistItemContentDetails = PlaylistItemContentDetails
  { -- | The time, measured in seconds from the start of the video, when the video should stop playing. (The playlist owner can specify the times when the video should start and stop playing when the video is played in the context of the playlist.) By default, assume that the video.endTime is the end of the video.
    endAt :: (Core.Maybe Core.Text),
    -- | A user-generated note for this item.
    note :: (Core.Maybe Core.Text),
    -- | The time, measured in seconds from the start of the video, when the video should start playing. (The playlist owner can specify the times when the video should start and stop playing when the video is played in the context of the playlist.) The default value is 0.
    startAt :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify a video. To retrieve the video resource, set the id query parameter to this value in your API request.
    videoId :: (Core.Maybe Core.Text),
    -- | The date and time that the video was published to YouTube.
    videoPublishedAt :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlaylistItemContentDetails' with the minimum fields required to make a request.
newPlaylistItemContentDetails ::
  PlaylistItemContentDetails
newPlaylistItemContentDetails =
  PlaylistItemContentDetails
    { endAt = Core.Nothing,
      note = Core.Nothing,
      startAt = Core.Nothing,
      videoId = Core.Nothing,
      videoPublishedAt = Core.Nothing
    }

instance Core.FromJSON PlaylistItemContentDetails where
  parseJSON =
    Core.withObject
      "PlaylistItemContentDetails"
      ( \o ->
          PlaylistItemContentDetails
            Core.<$> (o Core..:? "endAt")
            Core.<*> (o Core..:? "note")
            Core.<*> (o Core..:? "startAt")
            Core.<*> (o Core..:? "videoId")
            Core.<*> (o Core..:? "videoPublishedAt")
      )

instance Core.ToJSON PlaylistItemContentDetails where
  toJSON PlaylistItemContentDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("endAt" Core..=) Core.<$> endAt,
            ("note" Core..=) Core.<$> note,
            ("startAt" Core..=) Core.<$> startAt,
            ("videoId" Core..=) Core.<$> videoId,
            ("videoPublishedAt" Core..=)
              Core.<$> videoPublishedAt
          ]
      )

--
-- /See:/ 'newPlaylistItemListResponse' smart constructor.
data PlaylistItemListResponse = PlaylistItemListResponse
  { -- |
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of playlist items that match the request criteria.
    items :: (Core.Maybe [PlaylistItem]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#playlistItemListResponse\". Etag of this resource.
    kind :: Core.Text,
    -- | The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | General pagination information.
    pageInfo :: (Core.Maybe PageInfo),
    -- | The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.
    prevPageToken :: (Core.Maybe Core.Text),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlaylistItemListResponse' with the minimum fields required to make a request.
newPlaylistItemListResponse ::
  PlaylistItemListResponse
newPlaylistItemListResponse =
  PlaylistItemListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#playlistItemListResponse",
      nextPageToken = Core.Nothing,
      pageInfo = Core.Nothing,
      prevPageToken = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON PlaylistItemListResponse where
  parseJSON =
    Core.withObject
      "PlaylistItemListResponse"
      ( \o ->
          PlaylistItemListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#playlistItemListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "prevPageToken")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON PlaylistItemListResponse where
  toJSON PlaylistItemListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("prevPageToken" Core..=) Core.<$> prevPageToken,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | Basic details about a playlist, including title, description and thumbnails. Basic details of a YouTube Playlist item provided by the author. Next ID: 15
--
-- /See:/ 'newPlaylistItemSnippet' smart constructor.
data PlaylistItemSnippet = PlaylistItemSnippet
  { -- | The ID that YouTube uses to uniquely identify the user that added the item to the playlist.
    channelId :: (Core.Maybe Core.Text),
    -- | Channel title for the channel that the playlist item belongs to.
    channelTitle :: (Core.Maybe Core.Text),
    -- | The item\'s description.
    description :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify thGe playlist that the playlist item is in.
    playlistId :: (Core.Maybe Core.Text),
    -- | The order in which the item appears in the playlist. The value uses a zero-based index, so the first item has a position of 0, the second item has a position of 1, and so forth.
    position :: (Core.Maybe Core.Word32),
    -- | The date and time that the item was added to the playlist.
    publishedAt :: (Core.Maybe Core.DateTime'),
    -- | The id object contains information that can be used to uniquely identify the resource that is included in the playlist as the playlist item.
    resourceId :: (Core.Maybe ResourceId),
    -- | A map of thumbnail images associated with the playlist item. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.
    thumbnails :: (Core.Maybe ThumbnailDetails),
    -- | The item\'s title.
    title :: (Core.Maybe Core.Text),
    -- | Channel id for the channel this video belongs to.
    videoOwnerChannelId :: (Core.Maybe Core.Text),
    -- | Channel title for the channel this video belongs to.
    videoOwnerChannelTitle :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlaylistItemSnippet' with the minimum fields required to make a request.
newPlaylistItemSnippet ::
  PlaylistItemSnippet
newPlaylistItemSnippet =
  PlaylistItemSnippet
    { channelId = Core.Nothing,
      channelTitle = Core.Nothing,
      description = Core.Nothing,
      playlistId = Core.Nothing,
      position = Core.Nothing,
      publishedAt = Core.Nothing,
      resourceId = Core.Nothing,
      thumbnails = Core.Nothing,
      title = Core.Nothing,
      videoOwnerChannelId = Core.Nothing,
      videoOwnerChannelTitle = Core.Nothing
    }

instance Core.FromJSON PlaylistItemSnippet where
  parseJSON =
    Core.withObject
      "PlaylistItemSnippet"
      ( \o ->
          PlaylistItemSnippet
            Core.<$> (o Core..:? "channelId")
            Core.<*> (o Core..:? "channelTitle")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "playlistId")
            Core.<*> (o Core..:? "position")
            Core.<*> (o Core..:? "publishedAt")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "thumbnails")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "videoOwnerChannelId")
            Core.<*> (o Core..:? "videoOwnerChannelTitle")
      )

instance Core.ToJSON PlaylistItemSnippet where
  toJSON PlaylistItemSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("channelId" Core..=) Core.<$> channelId,
            ("channelTitle" Core..=) Core.<$> channelTitle,
            ("description" Core..=) Core.<$> description,
            ("playlistId" Core..=) Core.<$> playlistId,
            ("position" Core..=) Core.<$> position,
            ("publishedAt" Core..=) Core.<$> publishedAt,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("thumbnails" Core..=) Core.<$> thumbnails,
            ("title" Core..=) Core.<$> title,
            ("videoOwnerChannelId" Core..=)
              Core.<$> videoOwnerChannelId,
            ("videoOwnerChannelTitle" Core..=)
              Core.<$> videoOwnerChannelTitle
          ]
      )

-- | Information about the playlist item\'s privacy status.
--
-- /See:/ 'newPlaylistItemStatus' smart constructor.
newtype PlaylistItemStatus = PlaylistItemStatus
  { -- | This resource\'s privacy status.
    privacyStatus :: (Core.Maybe PlaylistItemStatus_PrivacyStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlaylistItemStatus' with the minimum fields required to make a request.
newPlaylistItemStatus ::
  PlaylistItemStatus
newPlaylistItemStatus = PlaylistItemStatus {privacyStatus = Core.Nothing}

instance Core.FromJSON PlaylistItemStatus where
  parseJSON =
    Core.withObject
      "PlaylistItemStatus"
      ( \o ->
          PlaylistItemStatus
            Core.<$> (o Core..:? "privacyStatus")
      )

instance Core.ToJSON PlaylistItemStatus where
  toJSON PlaylistItemStatus {..} =
    Core.object
      ( Core.catMaybes
          [("privacyStatus" Core..=) Core.<$> privacyStatus]
      )

--
-- /See:/ 'newPlaylistListResponse' smart constructor.
data PlaylistListResponse = PlaylistListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of playlists that match the request criteria
    items :: (Core.Maybe [Playlist]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#playlistListResponse\".
    kind :: Core.Text,
    -- | The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | General pagination information.
    pageInfo :: (Core.Maybe PageInfo),
    -- | The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.
    prevPageToken :: (Core.Maybe Core.Text),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlaylistListResponse' with the minimum fields required to make a request.
newPlaylistListResponse ::
  PlaylistListResponse
newPlaylistListResponse =
  PlaylistListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#playlistListResponse",
      nextPageToken = Core.Nothing,
      pageInfo = Core.Nothing,
      prevPageToken = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON PlaylistListResponse where
  parseJSON =
    Core.withObject
      "PlaylistListResponse"
      ( \o ->
          PlaylistListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#playlistListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "prevPageToken")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON PlaylistListResponse where
  toJSON PlaylistListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("prevPageToken" Core..=) Core.<$> prevPageToken,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | Playlist localization setting
--
-- /See:/ 'newPlaylistLocalization' smart constructor.
data PlaylistLocalization = PlaylistLocalization
  { -- | The localized strings for playlist\'s description.
    description :: (Core.Maybe Core.Text),
    -- | The localized strings for playlist\'s title.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlaylistLocalization' with the minimum fields required to make a request.
newPlaylistLocalization ::
  PlaylistLocalization
newPlaylistLocalization =
  PlaylistLocalization {description = Core.Nothing, title = Core.Nothing}

instance Core.FromJSON PlaylistLocalization where
  parseJSON =
    Core.withObject
      "PlaylistLocalization"
      ( \o ->
          PlaylistLocalization
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON PlaylistLocalization where
  toJSON PlaylistLocalization {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("title" Core..=) Core.<$> title
          ]
      )

--
-- /See:/ 'newPlaylistPlayer' smart constructor.
newtype PlaylistPlayer = PlaylistPlayer
  { -- | An \<iframe> tag that embeds a player that will play the playlist.
    embedHtml :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlaylistPlayer' with the minimum fields required to make a request.
newPlaylistPlayer ::
  PlaylistPlayer
newPlaylistPlayer = PlaylistPlayer {embedHtml = Core.Nothing}

instance Core.FromJSON PlaylistPlayer where
  parseJSON =
    Core.withObject
      "PlaylistPlayer"
      ( \o ->
          PlaylistPlayer Core.<$> (o Core..:? "embedHtml")
      )

instance Core.ToJSON PlaylistPlayer where
  toJSON PlaylistPlayer {..} =
    Core.object
      ( Core.catMaybes
          [("embedHtml" Core..=) Core.<$> embedHtml]
      )

-- | Basic details about a playlist, including title, description and thumbnails.
--
-- /See:/ 'newPlaylistSnippet' smart constructor.
data PlaylistSnippet = PlaylistSnippet
  { -- | The ID that YouTube uses to uniquely identify the channel that published the playlist.
    channelId :: (Core.Maybe Core.Text),
    -- | The channel title of the channel that the video belongs to.
    channelTitle :: (Core.Maybe Core.Text),
    -- | The language of the playlist\'s default title and description.
    defaultLanguage :: (Core.Maybe Core.Text),
    -- | The playlist\'s description.
    description :: (Core.Maybe Core.Text),
    -- | Localized title and description, read-only.
    localized :: (Core.Maybe PlaylistLocalization),
    -- | The date and time that the playlist was created.
    publishedAt :: (Core.Maybe Core.DateTime'),
    -- | Keyword tags associated with the playlist.
    tags :: (Core.Maybe [Core.Text]),
    -- | Note: if the playlist has a custom thumbnail, this field will not be populated. The video id selected by the user that will be used as the thumbnail of this playlist. This field defaults to the first publicly viewable video in the playlist, if: 1. The user has never selected a video to be the thumbnail of the playlist. 2. The user selects a video to be the thumbnail, and then removes that video from the playlist. 3. The user selects a non-owned video to be the thumbnail, but that video becomes private, or gets deleted.
    thumbnailVideoId :: (Core.Maybe Core.Text),
    -- | A map of thumbnail images associated with the playlist. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.
    thumbnails :: (Core.Maybe ThumbnailDetails),
    -- | The playlist\'s title.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlaylistSnippet' with the minimum fields required to make a request.
newPlaylistSnippet ::
  PlaylistSnippet
newPlaylistSnippet =
  PlaylistSnippet
    { channelId = Core.Nothing,
      channelTitle = Core.Nothing,
      defaultLanguage = Core.Nothing,
      description = Core.Nothing,
      localized = Core.Nothing,
      publishedAt = Core.Nothing,
      tags = Core.Nothing,
      thumbnailVideoId = Core.Nothing,
      thumbnails = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON PlaylistSnippet where
  parseJSON =
    Core.withObject
      "PlaylistSnippet"
      ( \o ->
          PlaylistSnippet
            Core.<$> (o Core..:? "channelId")
            Core.<*> (o Core..:? "channelTitle")
            Core.<*> (o Core..:? "defaultLanguage")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "localized")
            Core.<*> (o Core..:? "publishedAt")
            Core.<*> (o Core..:? "tags" Core..!= Core.mempty)
            Core.<*> (o Core..:? "thumbnailVideoId")
            Core.<*> (o Core..:? "thumbnails")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON PlaylistSnippet where
  toJSON PlaylistSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("channelId" Core..=) Core.<$> channelId,
            ("channelTitle" Core..=) Core.<$> channelTitle,
            ("defaultLanguage" Core..=) Core.<$> defaultLanguage,
            ("description" Core..=) Core.<$> description,
            ("localized" Core..=) Core.<$> localized,
            ("publishedAt" Core..=) Core.<$> publishedAt,
            ("tags" Core..=) Core.<$> tags,
            ("thumbnailVideoId" Core..=)
              Core.<$> thumbnailVideoId,
            ("thumbnails" Core..=) Core.<$> thumbnails,
            ("title" Core..=) Core.<$> title
          ]
      )

--
-- /See:/ 'newPlaylistStatus' smart constructor.
newtype PlaylistStatus = PlaylistStatus
  { -- | The playlist\'s privacy status.
    privacyStatus :: (Core.Maybe PlaylistStatus_PrivacyStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlaylistStatus' with the minimum fields required to make a request.
newPlaylistStatus ::
  PlaylistStatus
newPlaylistStatus = PlaylistStatus {privacyStatus = Core.Nothing}

instance Core.FromJSON PlaylistStatus where
  parseJSON =
    Core.withObject
      "PlaylistStatus"
      ( \o ->
          PlaylistStatus Core.<$> (o Core..:? "privacyStatus")
      )

instance Core.ToJSON PlaylistStatus where
  toJSON PlaylistStatus {..} =
    Core.object
      ( Core.catMaybes
          [("privacyStatus" Core..=) Core.<$> privacyStatus]
      )

-- | A pair Property \/ Value.
--
-- /See:/ 'newPropertyValue' smart constructor.
data PropertyValue = PropertyValue
  { -- | A property.
    property :: (Core.Maybe Core.Text),
    -- | The property\'s value.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PropertyValue' with the minimum fields required to make a request.
newPropertyValue ::
  PropertyValue
newPropertyValue = PropertyValue {property = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON PropertyValue where
  parseJSON =
    Core.withObject
      "PropertyValue"
      ( \o ->
          PropertyValue
            Core.<$> (o Core..:? "property")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON PropertyValue where
  toJSON PropertyValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("property" Core..=) Core.<$> property,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newRelatedEntity' smart constructor.
newtype RelatedEntity = RelatedEntity
  { -- |
    entity :: (Core.Maybe Entity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RelatedEntity' with the minimum fields required to make a request.
newRelatedEntity ::
  RelatedEntity
newRelatedEntity = RelatedEntity {entity = Core.Nothing}

instance Core.FromJSON RelatedEntity where
  parseJSON =
    Core.withObject
      "RelatedEntity"
      (\o -> RelatedEntity Core.<$> (o Core..:? "entity"))

instance Core.ToJSON RelatedEntity where
  toJSON RelatedEntity {..} =
    Core.object
      (Core.catMaybes [("entity" Core..=) Core.<$> entity])

-- | A resource id is a generic reference that points to another YouTube resource.
--
-- /See:/ 'newResourceId' smart constructor.
data ResourceId = ResourceId
  { -- | The ID that YouTube uses to uniquely identify the referred resource, if that resource is a channel. This property is only present if the resourceId.kind value is youtube#channel.
    channelId :: (Core.Maybe Core.Text),
    -- | The type of the API resource.
    kind :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the referred resource, if that resource is a playlist. This property is only present if the resourceId.kind value is youtube#playlist.
    playlistId :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the referred resource, if that resource is a video. This property is only present if the resourceId.kind value is youtube#video.
    videoId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceId' with the minimum fields required to make a request.
newResourceId ::
  ResourceId
newResourceId =
  ResourceId
    { channelId = Core.Nothing,
      kind = Core.Nothing,
      playlistId = Core.Nothing,
      videoId = Core.Nothing
    }

instance Core.FromJSON ResourceId where
  parseJSON =
    Core.withObject
      "ResourceId"
      ( \o ->
          ResourceId
            Core.<$> (o Core..:? "channelId")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "playlistId")
            Core.<*> (o Core..:? "videoId")
      )

instance Core.ToJSON ResourceId where
  toJSON ResourceId {..} =
    Core.object
      ( Core.catMaybes
          [ ("channelId" Core..=) Core.<$> channelId,
            ("kind" Core..=) Core.<$> kind,
            ("playlistId" Core..=) Core.<$> playlistId,
            ("videoId" Core..=) Core.<$> videoId
          ]
      )

--
-- /See:/ 'newSearchListResponse' smart constructor.
data SearchListResponse = SearchListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | Pagination information for token pagination.
    items :: (Core.Maybe [SearchResult]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#searchListResponse\".
    kind :: Core.Text,
    -- | The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | General pagination information.
    pageInfo :: (Core.Maybe PageInfo),
    -- | The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.
    prevPageToken :: (Core.Maybe Core.Text),
    -- |
    regionCode :: (Core.Maybe Core.Text),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchListResponse' with the minimum fields required to make a request.
newSearchListResponse ::
  SearchListResponse
newSearchListResponse =
  SearchListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#searchListResponse",
      nextPageToken = Core.Nothing,
      pageInfo = Core.Nothing,
      prevPageToken = Core.Nothing,
      regionCode = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON SearchListResponse where
  parseJSON =
    Core.withObject
      "SearchListResponse"
      ( \o ->
          SearchListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#searchListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "prevPageToken")
            Core.<*> (o Core..:? "regionCode")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON SearchListResponse where
  toJSON SearchListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("prevPageToken" Core..=) Core.<$> prevPageToken,
            ("regionCode" Core..=) Core.<$> regionCode,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | A search result contains information about a YouTube video, channel, or playlist that matches the search parameters specified in an API request. While a search result points to a uniquely identifiable resource, like a video, it does not have its own persistent data.
--
-- /See:/ 'newSearchResult' smart constructor.
data SearchResult = SearchResult
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The id object contains information that can be used to uniquely identify the resource that matches the search request.
    id :: (Core.Maybe ResourceId),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#searchResult\".
    kind :: Core.Text,
    -- | The snippet object contains basic details about a search result, such as its title or description. For example, if the search result is a video, then the title will be the video\'s title and the description will be the video\'s description.
    snippet :: (Core.Maybe SearchResultSnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchResult' with the minimum fields required to make a request.
newSearchResult ::
  SearchResult
newSearchResult =
  SearchResult
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#searchResult",
      snippet = Core.Nothing
    }

instance Core.FromJSON SearchResult where
  parseJSON =
    Core.withObject
      "SearchResult"
      ( \o ->
          SearchResult
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#searchResult")
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON SearchResult where
  toJSON SearchResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

-- | Basic details about a search result, including title, description and thumbnails of the item referenced by the search result.
--
-- /See:/ 'newSearchResultSnippet' smart constructor.
data SearchResultSnippet = SearchResultSnippet
  { -- | The value that YouTube uses to uniquely identify the channel that published the resource that the search result identifies.
    channelId :: (Core.Maybe Core.Text),
    -- | The title of the channel that published the resource that the search result identifies.
    channelTitle :: (Core.Maybe Core.Text),
    -- | A description of the search result.
    description :: (Core.Maybe Core.Text),
    -- | It indicates if the resource (video or channel) has upcoming\/active live broadcast content. Or it\'s \"none\" if there is not any upcoming\/active live broadcasts.
    liveBroadcastContent :: (Core.Maybe SearchResultSnippet_LiveBroadcastContent),
    -- | The creation date and time of the resource that the search result identifies.
    publishedAt :: (Core.Maybe Core.DateTime'),
    -- | A map of thumbnail images associated with the search result. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.
    thumbnails :: (Core.Maybe ThumbnailDetails),
    -- | The title of the search result.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchResultSnippet' with the minimum fields required to make a request.
newSearchResultSnippet ::
  SearchResultSnippet
newSearchResultSnippet =
  SearchResultSnippet
    { channelId = Core.Nothing,
      channelTitle = Core.Nothing,
      description = Core.Nothing,
      liveBroadcastContent = Core.Nothing,
      publishedAt = Core.Nothing,
      thumbnails = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON SearchResultSnippet where
  parseJSON =
    Core.withObject
      "SearchResultSnippet"
      ( \o ->
          SearchResultSnippet
            Core.<$> (o Core..:? "channelId")
            Core.<*> (o Core..:? "channelTitle")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "liveBroadcastContent")
            Core.<*> (o Core..:? "publishedAt")
            Core.<*> (o Core..:? "thumbnails")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON SearchResultSnippet where
  toJSON SearchResultSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("channelId" Core..=) Core.<$> channelId,
            ("channelTitle" Core..=) Core.<$> channelTitle,
            ("description" Core..=) Core.<$> description,
            ("liveBroadcastContent" Core..=)
              Core.<$> liveBroadcastContent,
            ("publishedAt" Core..=) Core.<$> publishedAt,
            ("thumbnails" Core..=) Core.<$> thumbnails,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A /subscription/ resource contains information about a YouTube user subscription. A subscription notifies a user when new videos are added to a channel or when another user takes one of several actions on YouTube, such as uploading a video, rating a video, or commenting on a video.
--
-- /See:/ 'newSubscription' smart constructor.
data Subscription = Subscription
  { -- | The contentDetails object contains basic statistics about the subscription.
    contentDetails :: (Core.Maybe SubscriptionContentDetails),
    -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the subscription.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#subscription\".
    kind :: Core.Text,
    -- | The snippet object contains basic details about the subscription, including its title and the channel that the user subscribed to.
    snippet :: (Core.Maybe SubscriptionSnippet),
    -- | The subscriberSnippet object contains basic details about the subscriber.
    subscriberSnippet :: (Core.Maybe SubscriptionSubscriberSnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Subscription' with the minimum fields required to make a request.
newSubscription ::
  Subscription
newSubscription =
  Subscription
    { contentDetails = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#subscription",
      snippet = Core.Nothing,
      subscriberSnippet = Core.Nothing
    }

instance Core.FromJSON Subscription where
  parseJSON =
    Core.withObject
      "Subscription"
      ( \o ->
          Subscription
            Core.<$> (o Core..:? "contentDetails")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#subscription")
            Core.<*> (o Core..:? "snippet")
            Core.<*> (o Core..:? "subscriberSnippet")
      )

instance Core.ToJSON Subscription where
  toJSON Subscription {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentDetails" Core..=) Core.<$> contentDetails,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet,
            ("subscriberSnippet" Core..=)
              Core.<$> subscriberSnippet
          ]
      )

-- | Details about the content to witch a subscription refers.
--
-- /See:/ 'newSubscriptionContentDetails' smart constructor.
data SubscriptionContentDetails = SubscriptionContentDetails
  { -- | The type of activity this subscription is for (only uploads, everything).
    activityType :: (Core.Maybe SubscriptionContentDetails_ActivityType),
    -- | The number of new items in the subscription since its content was last read.
    newItemCount' :: (Core.Maybe Core.Word32),
    -- | The approximate number of items that the subscription points to.
    totalItemCount :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionContentDetails' with the minimum fields required to make a request.
newSubscriptionContentDetails ::
  SubscriptionContentDetails
newSubscriptionContentDetails =
  SubscriptionContentDetails
    { activityType = Core.Nothing,
      newItemCount' = Core.Nothing,
      totalItemCount = Core.Nothing
    }

instance Core.FromJSON SubscriptionContentDetails where
  parseJSON =
    Core.withObject
      "SubscriptionContentDetails"
      ( \o ->
          SubscriptionContentDetails
            Core.<$> (o Core..:? "activityType")
            Core.<*> (o Core..:? "newItemCount")
            Core.<*> (o Core..:? "totalItemCount")
      )

instance Core.ToJSON SubscriptionContentDetails where
  toJSON SubscriptionContentDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("activityType" Core..=) Core.<$> activityType,
            ("newItemCount" Core..=) Core.<$> newItemCount',
            ("totalItemCount" Core..=) Core.<$> totalItemCount
          ]
      )

--
-- /See:/ 'newSubscriptionListResponse' smart constructor.
data SubscriptionListResponse = SubscriptionListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of subscriptions that match the request criteria.
    items :: (Core.Maybe [Subscription]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#subscriptionListResponse\".
    kind :: Core.Text,
    -- | The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    pageInfo :: (Core.Maybe PageInfo),
    -- | The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.
    prevPageToken :: (Core.Maybe Core.Text),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionListResponse' with the minimum fields required to make a request.
newSubscriptionListResponse ::
  SubscriptionListResponse
newSubscriptionListResponse =
  SubscriptionListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#subscriptionListResponse",
      nextPageToken = Core.Nothing,
      pageInfo = Core.Nothing,
      prevPageToken = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON SubscriptionListResponse where
  parseJSON =
    Core.withObject
      "SubscriptionListResponse"
      ( \o ->
          SubscriptionListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#subscriptionListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "prevPageToken")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON SubscriptionListResponse where
  toJSON SubscriptionListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("prevPageToken" Core..=) Core.<$> prevPageToken,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | Basic details about a subscription, including title, description and thumbnails of the subscribed item.
--
-- /See:/ 'newSubscriptionSnippet' smart constructor.
data SubscriptionSnippet = SubscriptionSnippet
  { -- | The ID that YouTube uses to uniquely identify the subscriber\'s channel.
    channelId :: (Core.Maybe Core.Text),
    -- | Channel title for the channel that the subscription belongs to.
    channelTitle :: (Core.Maybe Core.Text),
    -- | The subscription\'s details.
    description :: (Core.Maybe Core.Text),
    -- | The date and time that the subscription was created.
    publishedAt :: (Core.Maybe Core.DateTime'),
    -- | The id object contains information about the channel that the user subscribed to.
    resourceId :: (Core.Maybe ResourceId),
    -- | A map of thumbnail images associated with the video. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.
    thumbnails :: (Core.Maybe ThumbnailDetails),
    -- | The subscription\'s title.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionSnippet' with the minimum fields required to make a request.
newSubscriptionSnippet ::
  SubscriptionSnippet
newSubscriptionSnippet =
  SubscriptionSnippet
    { channelId = Core.Nothing,
      channelTitle = Core.Nothing,
      description = Core.Nothing,
      publishedAt = Core.Nothing,
      resourceId = Core.Nothing,
      thumbnails = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON SubscriptionSnippet where
  parseJSON =
    Core.withObject
      "SubscriptionSnippet"
      ( \o ->
          SubscriptionSnippet
            Core.<$> (o Core..:? "channelId")
            Core.<*> (o Core..:? "channelTitle")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "publishedAt")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "thumbnails")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON SubscriptionSnippet where
  toJSON SubscriptionSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("channelId" Core..=) Core.<$> channelId,
            ("channelTitle" Core..=) Core.<$> channelTitle,
            ("description" Core..=) Core.<$> description,
            ("publishedAt" Core..=) Core.<$> publishedAt,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("thumbnails" Core..=) Core.<$> thumbnails,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Basic details about a subscription\'s subscriber including title, description, channel ID and thumbnails.
--
-- /See:/ 'newSubscriptionSubscriberSnippet' smart constructor.
data SubscriptionSubscriberSnippet = SubscriptionSubscriberSnippet
  { -- | The channel ID of the subscriber.
    channelId :: (Core.Maybe Core.Text),
    -- | The description of the subscriber.
    description :: (Core.Maybe Core.Text),
    -- | Thumbnails for this subscriber.
    thumbnails :: (Core.Maybe ThumbnailDetails),
    -- | The title of the subscriber.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionSubscriberSnippet' with the minimum fields required to make a request.
newSubscriptionSubscriberSnippet ::
  SubscriptionSubscriberSnippet
newSubscriptionSubscriberSnippet =
  SubscriptionSubscriberSnippet
    { channelId = Core.Nothing,
      description = Core.Nothing,
      thumbnails = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON SubscriptionSubscriberSnippet where
  parseJSON =
    Core.withObject
      "SubscriptionSubscriberSnippet"
      ( \o ->
          SubscriptionSubscriberSnippet
            Core.<$> (o Core..:? "channelId")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "thumbnails")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON SubscriptionSubscriberSnippet where
  toJSON SubscriptionSubscriberSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("channelId" Core..=) Core.<$> channelId,
            ("description" Core..=) Core.<$> description,
            ("thumbnails" Core..=) Core.<$> thumbnails,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A @__superChatEvent__@ resource represents a Super Chat purchase on a YouTube channel.
--
-- /See:/ 'newSuperChatEvent' smart constructor.
data SuperChatEvent = SuperChatEvent
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube assigns to uniquely identify the Super Chat event.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string @\"youtube#superChatEvent\"@.
    kind :: Core.Text,
    -- | The @snippet@ object contains basic details about the Super Chat event.
    snippet :: (Core.Maybe SuperChatEventSnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuperChatEvent' with the minimum fields required to make a request.
newSuperChatEvent ::
  SuperChatEvent
newSuperChatEvent =
  SuperChatEvent
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#superChatEvent",
      snippet = Core.Nothing
    }

instance Core.FromJSON SuperChatEvent where
  parseJSON =
    Core.withObject
      "SuperChatEvent"
      ( \o ->
          SuperChatEvent
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#superChatEvent")
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON SuperChatEvent where
  toJSON SuperChatEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

--
-- /See:/ 'newSuperChatEventListResponse' smart constructor.
data SuperChatEventListResponse = SuperChatEventListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of Super Chat purchases that match the request criteria.
    items :: (Core.Maybe [SuperChatEvent]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#superChatEventListResponse\".
    kind :: Core.Text,
    -- | The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    pageInfo :: (Core.Maybe PageInfo),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuperChatEventListResponse' with the minimum fields required to make a request.
newSuperChatEventListResponse ::
  SuperChatEventListResponse
newSuperChatEventListResponse =
  SuperChatEventListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#superChatEventListResponse",
      nextPageToken = Core.Nothing,
      pageInfo = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON SuperChatEventListResponse where
  parseJSON =
    Core.withObject
      "SuperChatEventListResponse"
      ( \o ->
          SuperChatEventListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#superChatEventListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON SuperChatEventListResponse where
  toJSON SuperChatEventListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

--
-- /See:/ 'newSuperChatEventSnippet' smart constructor.
data SuperChatEventSnippet = SuperChatEventSnippet
  { -- | The purchase amount, in micros of the purchase currency. e.g., 1 is represented as 1000000.
    amountMicros :: (Core.Maybe Core.Word64),
    -- | Channel id where the event occurred.
    channelId :: (Core.Maybe Core.Text),
    -- | The text contents of the comment left by the user.
    commentText :: (Core.Maybe Core.Text),
    -- | The date and time when the event occurred.
    createdAt :: (Core.Maybe Core.DateTime'),
    -- | The currency in which the purchase was made. ISO 4217.
    currency :: (Core.Maybe Core.Text),
    -- | A rendered string that displays the purchase amount and currency (e.g., \"$1.00\"). The string is rendered for the given language.
    displayString :: (Core.Maybe Core.Text),
    -- | True if this event is a Super Sticker event.
    isSuperStickerEvent :: (Core.Maybe Core.Bool),
    -- | The tier for the paid message, which is based on the amount of money spent to purchase the message.
    messageType :: (Core.Maybe Core.Word32),
    -- | If this event is a Super Sticker event, this field will contain metadata about the Super Sticker.
    superStickerMetadata :: (Core.Maybe SuperStickerMetadata),
    -- | Details about the supporter.
    supporterDetails :: (Core.Maybe ChannelProfileDetails)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuperChatEventSnippet' with the minimum fields required to make a request.
newSuperChatEventSnippet ::
  SuperChatEventSnippet
newSuperChatEventSnippet =
  SuperChatEventSnippet
    { amountMicros = Core.Nothing,
      channelId = Core.Nothing,
      commentText = Core.Nothing,
      createdAt = Core.Nothing,
      currency = Core.Nothing,
      displayString = Core.Nothing,
      isSuperStickerEvent = Core.Nothing,
      messageType = Core.Nothing,
      superStickerMetadata = Core.Nothing,
      supporterDetails = Core.Nothing
    }

instance Core.FromJSON SuperChatEventSnippet where
  parseJSON =
    Core.withObject
      "SuperChatEventSnippet"
      ( \o ->
          SuperChatEventSnippet
            Core.<$> (o Core..:? "amountMicros")
            Core.<*> (o Core..:? "channelId")
            Core.<*> (o Core..:? "commentText")
            Core.<*> (o Core..:? "createdAt")
            Core.<*> (o Core..:? "currency")
            Core.<*> (o Core..:? "displayString")
            Core.<*> (o Core..:? "isSuperStickerEvent")
            Core.<*> (o Core..:? "messageType")
            Core.<*> (o Core..:? "superStickerMetadata")
            Core.<*> (o Core..:? "supporterDetails")
      )

instance Core.ToJSON SuperChatEventSnippet where
  toJSON SuperChatEventSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("amountMicros" Core..=) Core.. Core.AsText
              Core.<$> amountMicros,
            ("channelId" Core..=) Core.<$> channelId,
            ("commentText" Core..=) Core.<$> commentText,
            ("createdAt" Core..=) Core.<$> createdAt,
            ("currency" Core..=) Core.<$> currency,
            ("displayString" Core..=) Core.<$> displayString,
            ("isSuperStickerEvent" Core..=)
              Core.<$> isSuperStickerEvent,
            ("messageType" Core..=) Core.<$> messageType,
            ("superStickerMetadata" Core..=)
              Core.<$> superStickerMetadata,
            ("supporterDetails" Core..=)
              Core.<$> supporterDetails
          ]
      )

--
-- /See:/ 'newSuperStickerMetadata' smart constructor.
data SuperStickerMetadata = SuperStickerMetadata
  { -- | Internationalized alt text that describes the sticker image and any animation associated with it.
    altText :: (Core.Maybe Core.Text),
    -- | Specifies the localization language in which the alt text is returned.
    altTextLanguage :: (Core.Maybe Core.Text),
    -- | Unique identifier of the Super Sticker. This is a shorter form of the alt_text that includes pack name and a recognizable characteristic of the sticker.
    stickerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuperStickerMetadata' with the minimum fields required to make a request.
newSuperStickerMetadata ::
  SuperStickerMetadata
newSuperStickerMetadata =
  SuperStickerMetadata
    { altText = Core.Nothing,
      altTextLanguage = Core.Nothing,
      stickerId = Core.Nothing
    }

instance Core.FromJSON SuperStickerMetadata where
  parseJSON =
    Core.withObject
      "SuperStickerMetadata"
      ( \o ->
          SuperStickerMetadata
            Core.<$> (o Core..:? "altText")
            Core.<*> (o Core..:? "altTextLanguage")
            Core.<*> (o Core..:? "stickerId")
      )

instance Core.ToJSON SuperStickerMetadata where
  toJSON SuperStickerMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("altText" Core..=) Core.<$> altText,
            ("altTextLanguage" Core..=) Core.<$> altTextLanguage,
            ("stickerId" Core..=) Core.<$> stickerId
          ]
      )

--
-- /See:/ 'newTestItem' smart constructor.
data TestItem = TestItem
  { -- |
    featuredPart :: (Core.Maybe Core.Bool),
    -- |
    gaia :: (Core.Maybe Core.Int64),
    -- |
    id :: (Core.Maybe Core.Text),
    -- |
    snippet :: (Core.Maybe TestItemTestItemSnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestItem' with the minimum fields required to make a request.
newTestItem ::
  TestItem
newTestItem =
  TestItem
    { featuredPart = Core.Nothing,
      gaia = Core.Nothing,
      id = Core.Nothing,
      snippet = Core.Nothing
    }

instance Core.FromJSON TestItem where
  parseJSON =
    Core.withObject
      "TestItem"
      ( \o ->
          TestItem
            Core.<$> (o Core..:? "featuredPart")
            Core.<*> (o Core..:? "gaia")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON TestItem where
  toJSON TestItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("featuredPart" Core..=) Core.<$> featuredPart,
            ("gaia" Core..=) Core.. Core.AsText Core.<$> gaia,
            ("id" Core..=) Core.<$> id,
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

--
-- /See:/ 'newTestItemTestItemSnippet' smart constructor.
data TestItemTestItemSnippet = TestItemTestItemSnippet
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestItemTestItemSnippet' with the minimum fields required to make a request.
newTestItemTestItemSnippet ::
  TestItemTestItemSnippet
newTestItemTestItemSnippet = TestItemTestItemSnippet

instance Core.FromJSON TestItemTestItemSnippet where
  parseJSON =
    Core.withObject
      "TestItemTestItemSnippet"
      (\o -> Core.pure TestItemTestItemSnippet)

instance Core.ToJSON TestItemTestItemSnippet where
  toJSON = Core.const Core.emptyObject

-- | A /third party account link/ resource represents a link between a YouTube account or a channel and an account on a third-party service.
--
-- /See:/ 'newThirdPartyLink' smart constructor.
data ThirdPartyLink = ThirdPartyLink
  { -- | Etag of this resource
    etag :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#thirdPartyLink\".
    kind :: Core.Text,
    -- | The linking_token identifies a YouTube account and channel with which the third party account is linked.
    linkingToken :: (Core.Maybe Core.Text),
    -- | The snippet object contains basic details about the third- party account link.
    snippet :: (Core.Maybe ThirdPartyLinkSnippet),
    -- | The status object contains information about the status of the link.
    status :: (Core.Maybe ThirdPartyLinkStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ThirdPartyLink' with the minimum fields required to make a request.
newThirdPartyLink ::
  ThirdPartyLink
newThirdPartyLink =
  ThirdPartyLink
    { etag = Core.Nothing,
      kind = "youtube#thirdPartyLink",
      linkingToken = Core.Nothing,
      snippet = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON ThirdPartyLink where
  parseJSON =
    Core.withObject
      "ThirdPartyLink"
      ( \o ->
          ThirdPartyLink
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#thirdPartyLink")
            Core.<*> (o Core..:? "linkingToken")
            Core.<*> (o Core..:? "snippet")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON ThirdPartyLink where
  toJSON ThirdPartyLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("linkingToken" Core..=) Core.<$> linkingToken,
            ("snippet" Core..=) Core.<$> snippet,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Basic information about a third party account link, including its type and type-specific information.
--
-- /See:/ 'newThirdPartyLinkSnippet' smart constructor.
data ThirdPartyLinkSnippet = ThirdPartyLinkSnippet
  { -- | Information specific to a link between a channel and a store on a merchandising platform.
    channelToStoreLink :: (Core.Maybe ChannelToStoreLinkDetails),
    -- | Type of the link named after the entities that are being linked.
    type' :: (Core.Maybe ThirdPartyLinkSnippet_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ThirdPartyLinkSnippet' with the minimum fields required to make a request.
newThirdPartyLinkSnippet ::
  ThirdPartyLinkSnippet
newThirdPartyLinkSnippet =
  ThirdPartyLinkSnippet
    { channelToStoreLink = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ThirdPartyLinkSnippet where
  parseJSON =
    Core.withObject
      "ThirdPartyLinkSnippet"
      ( \o ->
          ThirdPartyLinkSnippet
            Core.<$> (o Core..:? "channelToStoreLink")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ThirdPartyLinkSnippet where
  toJSON ThirdPartyLinkSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("channelToStoreLink" Core..=)
              Core.<$> channelToStoreLink,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The third-party link status object contains information about the status of the link.
--
-- /See:/ 'newThirdPartyLinkStatus' smart constructor.
newtype ThirdPartyLinkStatus = ThirdPartyLinkStatus
  { -- |
    linkStatus :: (Core.Maybe ThirdPartyLinkStatus_LinkStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ThirdPartyLinkStatus' with the minimum fields required to make a request.
newThirdPartyLinkStatus ::
  ThirdPartyLinkStatus
newThirdPartyLinkStatus = ThirdPartyLinkStatus {linkStatus = Core.Nothing}

instance Core.FromJSON ThirdPartyLinkStatus where
  parseJSON =
    Core.withObject
      "ThirdPartyLinkStatus"
      ( \o ->
          ThirdPartyLinkStatus
            Core.<$> (o Core..:? "linkStatus")
      )

instance Core.ToJSON ThirdPartyLinkStatus where
  toJSON ThirdPartyLinkStatus {..} =
    Core.object
      ( Core.catMaybes
          [("linkStatus" Core..=) Core.<$> linkStatus]
      )

-- | A thumbnail is an image representing a YouTube resource.
--
-- /See:/ 'newThumbnail' smart constructor.
data Thumbnail = Thumbnail
  { -- | (Optional) Height of the thumbnail image.
    height :: (Core.Maybe Core.Word32),
    -- | The thumbnail image\'s URL.
    url :: (Core.Maybe Core.Text),
    -- | (Optional) Width of the thumbnail image.
    width :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Thumbnail' with the minimum fields required to make a request.
newThumbnail ::
  Thumbnail
newThumbnail =
  Thumbnail {height = Core.Nothing, url = Core.Nothing, width = Core.Nothing}

instance Core.FromJSON Thumbnail where
  parseJSON =
    Core.withObject
      "Thumbnail"
      ( \o ->
          Thumbnail
            Core.<$> (o Core..:? "height")
            Core.<*> (o Core..:? "url")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Thumbnail where
  toJSON Thumbnail {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.<$> height,
            ("url" Core..=) Core.<$> url,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | Internal representation of thumbnails for a YouTube resource.
--
-- /See:/ 'newThumbnailDetails' smart constructor.
data ThumbnailDetails = ThumbnailDetails
  { -- | The default image for this resource.
    default' :: (Core.Maybe Thumbnail),
    -- | The high quality image for this resource.
    high :: (Core.Maybe Thumbnail),
    -- | The maximum resolution quality image for this resource.
    maxres :: (Core.Maybe Thumbnail),
    -- | The medium quality image for this resource.
    medium :: (Core.Maybe Thumbnail),
    -- | The standard quality image for this resource.
    standard :: (Core.Maybe Thumbnail)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ThumbnailDetails' with the minimum fields required to make a request.
newThumbnailDetails ::
  ThumbnailDetails
newThumbnailDetails =
  ThumbnailDetails
    { default' = Core.Nothing,
      high = Core.Nothing,
      maxres = Core.Nothing,
      medium = Core.Nothing,
      standard = Core.Nothing
    }

instance Core.FromJSON ThumbnailDetails where
  parseJSON =
    Core.withObject
      "ThumbnailDetails"
      ( \o ->
          ThumbnailDetails
            Core.<$> (o Core..:? "default")
            Core.<*> (o Core..:? "high")
            Core.<*> (o Core..:? "maxres")
            Core.<*> (o Core..:? "medium")
            Core.<*> (o Core..:? "standard")
      )

instance Core.ToJSON ThumbnailDetails where
  toJSON ThumbnailDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("default" Core..=) Core.<$> default',
            ("high" Core..=) Core.<$> high,
            ("maxres" Core..=) Core.<$> maxres,
            ("medium" Core..=) Core.<$> medium,
            ("standard" Core..=) Core.<$> standard
          ]
      )

--
-- /See:/ 'newThumbnailSetResponse' smart constructor.
data ThumbnailSetResponse = ThumbnailSetResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of thumbnails.
    items :: (Core.Maybe [ThumbnailDetails]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#thumbnailSetResponse\".
    kind :: Core.Text,
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ThumbnailSetResponse' with the minimum fields required to make a request.
newThumbnailSetResponse ::
  ThumbnailSetResponse
newThumbnailSetResponse =
  ThumbnailSetResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#thumbnailSetResponse",
      visitorId = Core.Nothing
    }

instance Core.FromJSON ThumbnailSetResponse where
  parseJSON =
    Core.withObject
      "ThumbnailSetResponse"
      ( \o ->
          ThumbnailSetResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#thumbnailSetResponse"
                     )
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON ThumbnailSetResponse where
  toJSON ThumbnailSetResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | Stub token pagination template to suppress results.
--
-- /See:/ 'newTokenPagination' smart constructor.
data TokenPagination = TokenPagination
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TokenPagination' with the minimum fields required to make a request.
newTokenPagination ::
  TokenPagination
newTokenPagination = TokenPagination

instance Core.FromJSON TokenPagination where
  parseJSON =
    Core.withObject
      "TokenPagination"
      (\o -> Core.pure TokenPagination)

instance Core.ToJSON TokenPagination where
  toJSON = Core.const Core.emptyObject

-- | A /video/ resource represents a YouTube video.
--
-- /See:/ 'newVideo' smart constructor.
data Video = Video
  { -- | Age restriction details related to a video. This data can only be retrieved by the video owner.
    ageGating :: (Core.Maybe VideoAgeGating),
    -- | The contentDetails object contains information about the video content, including the length of the video and its aspect ratio.
    contentDetails :: (Core.Maybe VideoContentDetails),
    -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The fileDetails object encapsulates information about the video file that was uploaded to YouTube, including the file\'s resolution, duration, audio and video codecs, stream bitrates, and more. This data can only be retrieved by the video owner.
    fileDetails :: (Core.Maybe VideoFileDetails),
    -- | The ID that YouTube uses to uniquely identify the video.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#video\".
    kind :: Core.Text,
    -- | The liveStreamingDetails object contains metadata about a live video broadcast. The object will only be present in a video resource if the video is an upcoming, live, or completed live broadcast.
    liveStreamingDetails :: (Core.Maybe VideoLiveStreamingDetails),
    -- | The localizations object contains localized versions of the basic details about the video, such as its title and description.
    localizations :: (Core.Maybe Video_Localizations),
    -- | The monetizationDetails object encapsulates information about the monetization status of the video.
    monetizationDetails :: (Core.Maybe VideoMonetizationDetails),
    -- | The player object contains information that you would use to play the video in an embedded player.
    player :: (Core.Maybe VideoPlayer),
    -- | The processingDetails object encapsulates information about YouTube\'s progress in processing the uploaded video file. The properties in the object identify the current processing status and an estimate of the time remaining until YouTube finishes processing the video. This part also indicates whether different types of data or content, such as file details or thumbnail images, are available for the video. The processingProgress object is designed to be polled so that the video uploaded can track the progress that YouTube has made in processing the uploaded video file. This data can only be retrieved by the video owner.
    processingDetails :: (Core.Maybe VideoProcessingDetails),
    -- | The projectDetails object contains information about the project specific video metadata. b\/157517979: This part was never populated after it was added. However, it sees non-zero traffic because there is generated client code in the wild that refers to it [1]. We keep this field and do NOT remove it because otherwise V3 would return an error when this part gets requested [2]. [1] https:\/\/developers.google.com\/resources\/api-libraries\/documentation\/youtube\/v3\/csharp\/latest\/classGoogle/1/1Apis/1/1YouTube/1/1v3/1/1Data/1/1VideoProjectDetails.html [2] http:\/\/google3\/video\/youtube\/src\/python\/servers\/data_api\/common.py?l=1565-1569&rcl=344141677
    projectDetails :: (Core.Maybe VideoProjectDetails),
    -- | The recordingDetails object encapsulates information about the location, date and address where the video was recorded.
    recordingDetails :: (Core.Maybe VideoRecordingDetails),
    -- | The snippet object contains basic details about the video, such as its title, description, and category.
    snippet :: (Core.Maybe VideoSnippet),
    -- | The statistics object contains statistics about the video.
    statistics :: (Core.Maybe VideoStatistics),
    -- | The status object contains information about the video\'s uploading, processing, and privacy statuses.
    status :: (Core.Maybe VideoStatus),
    -- | The suggestions object encapsulates suggestions that identify opportunities to improve the video quality or the metadata for the uploaded video. This data can only be retrieved by the video owner.
    suggestions :: (Core.Maybe VideoSuggestions),
    -- | The topicDetails object encapsulates information about Freebase topics associated with the video.
    topicDetails :: (Core.Maybe VideoTopicDetails)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Video' with the minimum fields required to make a request.
newVideo ::
  Video
newVideo =
  Video
    { ageGating = Core.Nothing,
      contentDetails = Core.Nothing,
      etag = Core.Nothing,
      fileDetails = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#video",
      liveStreamingDetails = Core.Nothing,
      localizations = Core.Nothing,
      monetizationDetails = Core.Nothing,
      player = Core.Nothing,
      processingDetails = Core.Nothing,
      projectDetails = Core.Nothing,
      recordingDetails = Core.Nothing,
      snippet = Core.Nothing,
      statistics = Core.Nothing,
      status = Core.Nothing,
      suggestions = Core.Nothing,
      topicDetails = Core.Nothing
    }

instance Core.FromJSON Video where
  parseJSON =
    Core.withObject
      "Video"
      ( \o ->
          Video
            Core.<$> (o Core..:? "ageGating")
            Core.<*> (o Core..:? "contentDetails")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "fileDetails")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#video")
            Core.<*> (o Core..:? "liveStreamingDetails")
            Core.<*> (o Core..:? "localizations")
            Core.<*> (o Core..:? "monetizationDetails")
            Core.<*> (o Core..:? "player")
            Core.<*> (o Core..:? "processingDetails")
            Core.<*> (o Core..:? "projectDetails")
            Core.<*> (o Core..:? "recordingDetails")
            Core.<*> (o Core..:? "snippet")
            Core.<*> (o Core..:? "statistics")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "suggestions")
            Core.<*> (o Core..:? "topicDetails")
      )

instance Core.ToJSON Video where
  toJSON Video {..} =
    Core.object
      ( Core.catMaybes
          [ ("ageGating" Core..=) Core.<$> ageGating,
            ("contentDetails" Core..=) Core.<$> contentDetails,
            ("etag" Core..=) Core.<$> etag,
            ("fileDetails" Core..=) Core.<$> fileDetails,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("liveStreamingDetails" Core..=)
              Core.<$> liveStreamingDetails,
            ("localizations" Core..=) Core.<$> localizations,
            ("monetizationDetails" Core..=)
              Core.<$> monetizationDetails,
            ("player" Core..=) Core.<$> player,
            ("processingDetails" Core..=)
              Core.<$> processingDetails,
            ("projectDetails" Core..=) Core.<$> projectDetails,
            ("recordingDetails" Core..=)
              Core.<$> recordingDetails,
            ("snippet" Core..=) Core.<$> snippet,
            ("statistics" Core..=) Core.<$> statistics,
            ("status" Core..=) Core.<$> status,
            ("suggestions" Core..=) Core.<$> suggestions,
            ("topicDetails" Core..=) Core.<$> topicDetails
          ]
      )

-- | The localizations object contains localized versions of the basic details about the video, such as its title and description.
--
-- /See:/ 'newVideo_Localizations' smart constructor.
newtype Video_Localizations = Video_Localizations
  { -- |
    addtional :: (Core.HashMap Core.Text VideoLocalization)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Video_Localizations' with the minimum fields required to make a request.
newVideo_Localizations ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text VideoLocalization ->
  Video_Localizations
newVideo_Localizations addtional = Video_Localizations {addtional = addtional}

instance Core.FromJSON Video_Localizations where
  parseJSON =
    Core.withObject
      "Video_Localizations"
      ( \o ->
          Video_Localizations
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Video_Localizations where
  toJSON Video_Localizations {..} =
    Core.toJSON addtional

--
-- /See:/ 'newVideoAbuseReport' smart constructor.
data VideoAbuseReport = VideoAbuseReport
  { -- | Additional comments regarding the abuse report.
    comments :: (Core.Maybe Core.Text),
    -- | The language that the content was viewed in.
    language :: (Core.Maybe Core.Text),
    -- | The high-level, or primary, reason that the content is abusive. The value is an abuse report reason ID.
    reasonId :: (Core.Maybe Core.Text),
    -- | The specific, or secondary, reason that this content is abusive (if available). The value is an abuse report reason ID that is a valid secondary reason for the primary reason.
    secondaryReasonId :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the video.
    videoId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoAbuseReport' with the minimum fields required to make a request.
newVideoAbuseReport ::
  VideoAbuseReport
newVideoAbuseReport =
  VideoAbuseReport
    { comments = Core.Nothing,
      language = Core.Nothing,
      reasonId = Core.Nothing,
      secondaryReasonId = Core.Nothing,
      videoId = Core.Nothing
    }

instance Core.FromJSON VideoAbuseReport where
  parseJSON =
    Core.withObject
      "VideoAbuseReport"
      ( \o ->
          VideoAbuseReport
            Core.<$> (o Core..:? "comments")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "reasonId")
            Core.<*> (o Core..:? "secondaryReasonId")
            Core.<*> (o Core..:? "videoId")
      )

instance Core.ToJSON VideoAbuseReport where
  toJSON VideoAbuseReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("comments" Core..=) Core.<$> comments,
            ("language" Core..=) Core.<$> language,
            ("reasonId" Core..=) Core.<$> reasonId,
            ("secondaryReasonId" Core..=)
              Core.<$> secondaryReasonId,
            ("videoId" Core..=) Core.<$> videoId
          ]
      )

-- | A @__videoAbuseReportReason__@ resource identifies a reason that a video could be reported as abusive. Video abuse report reasons are used with @video.ReportAbuse@.
--
-- /See:/ 'newVideoAbuseReportReason' smart constructor.
data VideoAbuseReportReason = VideoAbuseReportReason
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID of this abuse report reason.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string @\"youtube#videoAbuseReportReason\"@.
    kind :: Core.Text,
    -- | The @snippet@ object contains basic details about the abuse report reason.
    snippet :: (Core.Maybe VideoAbuseReportReasonSnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoAbuseReportReason' with the minimum fields required to make a request.
newVideoAbuseReportReason ::
  VideoAbuseReportReason
newVideoAbuseReportReason =
  VideoAbuseReportReason
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#videoAbuseReportReason",
      snippet = Core.Nothing
    }

instance Core.FromJSON VideoAbuseReportReason where
  parseJSON =
    Core.withObject
      "VideoAbuseReportReason"
      ( \o ->
          VideoAbuseReportReason
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#videoAbuseReportReason"
                     )
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON VideoAbuseReportReason where
  toJSON VideoAbuseReportReason {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

--
-- /See:/ 'newVideoAbuseReportReasonListResponse' smart constructor.
data VideoAbuseReportReasonListResponse = VideoAbuseReportReasonListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of valid abuse reasons that are used with @video.ReportAbuse@.
    items :: (Core.Maybe [VideoAbuseReportReason]),
    -- | Identifies what kind of resource this is. Value: the fixed string @\"youtube#videoAbuseReportReasonListResponse\"@.
    kind :: Core.Text,
    -- | The @visitorId@ identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoAbuseReportReasonListResponse' with the minimum fields required to make a request.
newVideoAbuseReportReasonListResponse ::
  VideoAbuseReportReasonListResponse
newVideoAbuseReportReasonListResponse =
  VideoAbuseReportReasonListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#videoAbuseReportReasonListResponse",
      visitorId = Core.Nothing
    }

instance
  Core.FromJSON
    VideoAbuseReportReasonListResponse
  where
  parseJSON =
    Core.withObject
      "VideoAbuseReportReasonListResponse"
      ( \o ->
          VideoAbuseReportReasonListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#videoAbuseReportReasonListResponse"
                     )
            Core.<*> (o Core..:? "visitorId")
      )

instance
  Core.ToJSON
    VideoAbuseReportReasonListResponse
  where
  toJSON VideoAbuseReportReasonListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | Basic details about a video category, such as its localized title.
--
-- /See:/ 'newVideoAbuseReportReasonSnippet' smart constructor.
data VideoAbuseReportReasonSnippet = VideoAbuseReportReasonSnippet
  { -- | The localized label belonging to this abuse report reason.
    label :: (Core.Maybe Core.Text),
    -- | The secondary reasons associated with this reason, if any are available. (There might be 0 or more.)
    secondaryReasons :: (Core.Maybe [VideoAbuseReportSecondaryReason])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoAbuseReportReasonSnippet' with the minimum fields required to make a request.
newVideoAbuseReportReasonSnippet ::
  VideoAbuseReportReasonSnippet
newVideoAbuseReportReasonSnippet =
  VideoAbuseReportReasonSnippet
    { label = Core.Nothing,
      secondaryReasons = Core.Nothing
    }

instance Core.FromJSON VideoAbuseReportReasonSnippet where
  parseJSON =
    Core.withObject
      "VideoAbuseReportReasonSnippet"
      ( \o ->
          VideoAbuseReportReasonSnippet
            Core.<$> (o Core..:? "label")
            Core.<*> (o Core..:? "secondaryReasons" Core..!= Core.mempty)
      )

instance Core.ToJSON VideoAbuseReportReasonSnippet where
  toJSON VideoAbuseReportReasonSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("label" Core..=) Core.<$> label,
            ("secondaryReasons" Core..=)
              Core.<$> secondaryReasons
          ]
      )

--
-- /See:/ 'newVideoAbuseReportSecondaryReason' smart constructor.
data VideoAbuseReportSecondaryReason = VideoAbuseReportSecondaryReason
  { -- | The ID of this abuse report secondary reason.
    id :: (Core.Maybe Core.Text),
    -- | The localized label for this abuse report secondary reason.
    label :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoAbuseReportSecondaryReason' with the minimum fields required to make a request.
newVideoAbuseReportSecondaryReason ::
  VideoAbuseReportSecondaryReason
newVideoAbuseReportSecondaryReason =
  VideoAbuseReportSecondaryReason {id = Core.Nothing, label = Core.Nothing}

instance
  Core.FromJSON
    VideoAbuseReportSecondaryReason
  where
  parseJSON =
    Core.withObject
      "VideoAbuseReportSecondaryReason"
      ( \o ->
          VideoAbuseReportSecondaryReason
            Core.<$> (o Core..:? "id") Core.<*> (o Core..:? "label")
      )

instance Core.ToJSON VideoAbuseReportSecondaryReason where
  toJSON VideoAbuseReportSecondaryReason {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("label" Core..=) Core.<$> label
          ]
      )

--
-- /See:/ 'newVideoAgeGating' smart constructor.
data VideoAgeGating = VideoAgeGating
  { -- | Indicates whether or not the video has alcoholic beverage content. Only users of legal purchasing age in a particular country, as identified by ICAP, can view the content.
    alcoholContent :: (Core.Maybe Core.Bool),
    -- | Age-restricted trailers. For redband trailers and adult-rated video-games. Only users aged 18+ can view the content. The the field is true the content is restricted to viewers aged 18+. Otherwise The field won\'t be present.
    restricted :: (Core.Maybe Core.Bool),
    -- | Video game rating, if any.
    videoGameRating :: (Core.Maybe VideoAgeGating_VideoGameRating)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoAgeGating' with the minimum fields required to make a request.
newVideoAgeGating ::
  VideoAgeGating
newVideoAgeGating =
  VideoAgeGating
    { alcoholContent = Core.Nothing,
      restricted = Core.Nothing,
      videoGameRating = Core.Nothing
    }

instance Core.FromJSON VideoAgeGating where
  parseJSON =
    Core.withObject
      "VideoAgeGating"
      ( \o ->
          VideoAgeGating
            Core.<$> (o Core..:? "alcoholContent")
            Core.<*> (o Core..:? "restricted")
            Core.<*> (o Core..:? "videoGameRating")
      )

instance Core.ToJSON VideoAgeGating where
  toJSON VideoAgeGating {..} =
    Core.object
      ( Core.catMaybes
          [ ("alcoholContent" Core..=) Core.<$> alcoholContent,
            ("restricted" Core..=) Core.<$> restricted,
            ("videoGameRating" Core..=)
              Core.<$> videoGameRating
          ]
      )

-- | A /videoCategory/ resource identifies a category that has been or could be associated with uploaded videos.
--
-- /See:/ 'newVideoCategory' smart constructor.
data VideoCategory = VideoCategory
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the video category.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#videoCategory\".
    kind :: Core.Text,
    -- | The snippet object contains basic details about the video category, including its title.
    snippet :: (Core.Maybe VideoCategorySnippet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoCategory' with the minimum fields required to make a request.
newVideoCategory ::
  VideoCategory
newVideoCategory =
  VideoCategory
    { etag = Core.Nothing,
      id = Core.Nothing,
      kind = "youtube#videoCategory",
      snippet = Core.Nothing
    }

instance Core.FromJSON VideoCategory where
  parseJSON =
    Core.withObject
      "VideoCategory"
      ( \o ->
          VideoCategory
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "youtube#videoCategory")
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON VideoCategory where
  toJSON VideoCategory {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

--
-- /See:/ 'newVideoCategoryListResponse' smart constructor.
data VideoCategoryListResponse = VideoCategoryListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of video categories that can be associated with YouTube videos. In this map, the video category ID is the map key, and its value is the corresponding videoCategory resource.
    items :: (Core.Maybe [VideoCategory]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#videoCategoryListResponse\".
    kind :: Core.Text,
    -- | The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | General pagination information.
    pageInfo :: (Core.Maybe PageInfo),
    -- | The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.
    prevPageToken :: (Core.Maybe Core.Text),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoCategoryListResponse' with the minimum fields required to make a request.
newVideoCategoryListResponse ::
  VideoCategoryListResponse
newVideoCategoryListResponse =
  VideoCategoryListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#videoCategoryListResponse",
      nextPageToken = Core.Nothing,
      pageInfo = Core.Nothing,
      prevPageToken = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON VideoCategoryListResponse where
  parseJSON =
    Core.withObject
      "VideoCategoryListResponse"
      ( \o ->
          VideoCategoryListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#videoCategoryListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "prevPageToken")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON VideoCategoryListResponse where
  toJSON VideoCategoryListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("prevPageToken" Core..=) Core.<$> prevPageToken,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | Basic details about a video category, such as its localized title.
--
-- /See:/ 'newVideoCategorySnippet' smart constructor.
data VideoCategorySnippet = VideoCategorySnippet
  { -- |
    assignable :: (Core.Maybe Core.Bool),
    -- | The YouTube channel that created the video category.
    channelId :: Core.Text,
    -- | The video category\'s title.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoCategorySnippet' with the minimum fields required to make a request.
newVideoCategorySnippet ::
  VideoCategorySnippet
newVideoCategorySnippet =
  VideoCategorySnippet
    { assignable = Core.Nothing,
      channelId = "UCBR8-60-B28hp2BmDPdntcQ",
      title = Core.Nothing
    }

instance Core.FromJSON VideoCategorySnippet where
  parseJSON =
    Core.withObject
      "VideoCategorySnippet"
      ( \o ->
          VideoCategorySnippet
            Core.<$> (o Core..:? "assignable")
            Core.<*> ( o Core..:? "channelId"
                         Core..!= "UCBR8-60-B28hp2BmDPdntcQ"
                     )
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON VideoCategorySnippet where
  toJSON VideoCategorySnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("assignable" Core..=) Core.<$> assignable,
            Core.Just ("channelId" Core..= channelId),
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Details about the content of a YouTube Video.
--
-- /See:/ 'newVideoContentDetails' smart constructor.
data VideoContentDetails = VideoContentDetails
  { -- | The value of captions indicates whether the video has captions or not.
    caption :: (Core.Maybe VideoContentDetails_Caption),
    -- | Specifies the ratings that the video received under various rating schemes.
    contentRating :: (Core.Maybe ContentRating),
    -- | The countryRestriction object contains information about the countries where a video is (or is not) viewable.
    countryRestriction :: (Core.Maybe AccessPolicy),
    -- | The value of definition indicates whether the video is available in high definition or only in standard definition.
    definition :: (Core.Maybe VideoContentDetails_Definition),
    -- | The value of dimension indicates whether the video is available in 3D or in 2D.
    dimension :: (Core.Maybe Core.Text),
    -- | The length of the video. The tag value is an ISO 8601 duration in the format PT#M#S, in which the letters PT indicate that the value specifies a period of time, and the letters M and S refer to length in minutes and seconds, respectively. The # characters preceding the M and S letters are both integers that specify the number of minutes (or seconds) of the video. For example, a value of PT15M51S indicates that the video is 15 minutes and 51 seconds long.
    duration :: (Core.Maybe Core.Text),
    -- | Indicates whether the video uploader has provided a custom thumbnail image for the video. This property is only visible to the video uploader.
    hasCustomThumbnail :: (Core.Maybe Core.Bool),
    -- | The value of is/license/content indicates whether the video is licensed content.
    licensedContent :: (Core.Maybe Core.Bool),
    -- | Specifies the projection format of the video.
    projection :: (Core.Maybe VideoContentDetails_Projection),
    -- | The regionRestriction object contains information about the countries where a video is (or is not) viewable. The object will contain either the contentDetails.regionRestriction.allowed property or the contentDetails.regionRestriction.blocked property.
    regionRestriction :: (Core.Maybe VideoContentDetailsRegionRestriction)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoContentDetails' with the minimum fields required to make a request.
newVideoContentDetails ::
  VideoContentDetails
newVideoContentDetails =
  VideoContentDetails
    { caption = Core.Nothing,
      contentRating = Core.Nothing,
      countryRestriction = Core.Nothing,
      definition = Core.Nothing,
      dimension = Core.Nothing,
      duration = Core.Nothing,
      hasCustomThumbnail = Core.Nothing,
      licensedContent = Core.Nothing,
      projection = Core.Nothing,
      regionRestriction = Core.Nothing
    }

instance Core.FromJSON VideoContentDetails where
  parseJSON =
    Core.withObject
      "VideoContentDetails"
      ( \o ->
          VideoContentDetails
            Core.<$> (o Core..:? "caption")
            Core.<*> (o Core..:? "contentRating")
            Core.<*> (o Core..:? "countryRestriction")
            Core.<*> (o Core..:? "definition")
            Core.<*> (o Core..:? "dimension")
            Core.<*> (o Core..:? "duration")
            Core.<*> (o Core..:? "hasCustomThumbnail")
            Core.<*> (o Core..:? "licensedContent")
            Core.<*> (o Core..:? "projection")
            Core.<*> (o Core..:? "regionRestriction")
      )

instance Core.ToJSON VideoContentDetails where
  toJSON VideoContentDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("caption" Core..=) Core.<$> caption,
            ("contentRating" Core..=) Core.<$> contentRating,
            ("countryRestriction" Core..=)
              Core.<$> countryRestriction,
            ("definition" Core..=) Core.<$> definition,
            ("dimension" Core..=) Core.<$> dimension,
            ("duration" Core..=) Core.<$> duration,
            ("hasCustomThumbnail" Core..=)
              Core.<$> hasCustomThumbnail,
            ("licensedContent" Core..=) Core.<$> licensedContent,
            ("projection" Core..=) Core.<$> projection,
            ("regionRestriction" Core..=)
              Core.<$> regionRestriction
          ]
      )

-- | DEPRECATED Region restriction of the video.
--
-- /See:/ 'newVideoContentDetailsRegionRestriction' smart constructor.
data VideoContentDetailsRegionRestriction = VideoContentDetailsRegionRestriction
  { -- | A list of region codes that identify countries where the video is viewable. If this property is present and a country is not listed in its value, then the video is blocked from appearing in that country. If this property is present and contains an empty list, the video is blocked in all countries.
    allowed :: (Core.Maybe [Core.Text]),
    -- | A list of region codes that identify countries where the video is blocked. If this property is present and a country is not listed in its value, then the video is viewable in that country. If this property is present and contains an empty list, the video is viewable in all countries.
    blocked :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoContentDetailsRegionRestriction' with the minimum fields required to make a request.
newVideoContentDetailsRegionRestriction ::
  VideoContentDetailsRegionRestriction
newVideoContentDetailsRegionRestriction =
  VideoContentDetailsRegionRestriction
    { allowed = Core.Nothing,
      blocked = Core.Nothing
    }

instance
  Core.FromJSON
    VideoContentDetailsRegionRestriction
  where
  parseJSON =
    Core.withObject
      "VideoContentDetailsRegionRestriction"
      ( \o ->
          VideoContentDetailsRegionRestriction
            Core.<$> (o Core..:? "allowed" Core..!= Core.mempty)
            Core.<*> (o Core..:? "blocked" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    VideoContentDetailsRegionRestriction
  where
  toJSON VideoContentDetailsRegionRestriction {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowed" Core..=) Core.<$> allowed,
            ("blocked" Core..=) Core.<$> blocked
          ]
      )

-- | Describes original video file properties, including technical details about audio and video streams, but also metadata information like content length, digitization time, or geotagging information.
--
-- /See:/ 'newVideoFileDetails' smart constructor.
data VideoFileDetails = VideoFileDetails
  { -- | A list of audio streams contained in the uploaded video file. Each item in the list contains detailed metadata about an audio stream.
    audioStreams :: (Core.Maybe [VideoFileDetailsAudioStream]),
    -- | The uploaded video file\'s combined (video and audio) bitrate in bits per second.
    bitrateBps :: (Core.Maybe Core.Word64),
    -- | The uploaded video file\'s container format.
    container :: (Core.Maybe Core.Text),
    -- | The date and time when the uploaded video file was created. The value is specified in ISO 8601 format. Currently, the following ISO 8601 formats are supported: - Date only: YYYY-MM-DD - Naive time: YYYY-MM-DDTHH:MM:SS - Time with timezone: YYYY-MM-DDTHH:MM:SS+HH:MM
    creationTime :: (Core.Maybe Core.Text),
    -- | The length of the uploaded video in milliseconds.
    durationMs :: (Core.Maybe Core.Word64),
    -- | The uploaded file\'s name. This field is present whether a video file or another type of file was uploaded.
    fileName :: (Core.Maybe Core.Text),
    -- | The uploaded file\'s size in bytes. This field is present whether a video file or another type of file was uploaded.
    fileSize :: (Core.Maybe Core.Word64),
    -- | The uploaded file\'s type as detected by YouTube\'s video processing engine. Currently, YouTube only processes video files, but this field is present whether a video file or another type of file was uploaded.
    fileType :: (Core.Maybe VideoFileDetails_FileType),
    -- | A list of video streams contained in the uploaded video file. Each item in the list contains detailed metadata about a video stream.
    videoStreams :: (Core.Maybe [VideoFileDetailsVideoStream])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoFileDetails' with the minimum fields required to make a request.
newVideoFileDetails ::
  VideoFileDetails
newVideoFileDetails =
  VideoFileDetails
    { audioStreams = Core.Nothing,
      bitrateBps = Core.Nothing,
      container = Core.Nothing,
      creationTime = Core.Nothing,
      durationMs = Core.Nothing,
      fileName = Core.Nothing,
      fileSize = Core.Nothing,
      fileType = Core.Nothing,
      videoStreams = Core.Nothing
    }

instance Core.FromJSON VideoFileDetails where
  parseJSON =
    Core.withObject
      "VideoFileDetails"
      ( \o ->
          VideoFileDetails
            Core.<$> (o Core..:? "audioStreams" Core..!= Core.mempty)
            Core.<*> (o Core..:? "bitrateBps")
            Core.<*> (o Core..:? "container")
            Core.<*> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "durationMs")
            Core.<*> (o Core..:? "fileName")
            Core.<*> (o Core..:? "fileSize")
            Core.<*> (o Core..:? "fileType")
            Core.<*> (o Core..:? "videoStreams" Core..!= Core.mempty)
      )

instance Core.ToJSON VideoFileDetails where
  toJSON VideoFileDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("audioStreams" Core..=) Core.<$> audioStreams,
            ("bitrateBps" Core..=) Core.. Core.AsText
              Core.<$> bitrateBps,
            ("container" Core..=) Core.<$> container,
            ("creationTime" Core..=) Core.<$> creationTime,
            ("durationMs" Core..=) Core.. Core.AsText
              Core.<$> durationMs,
            ("fileName" Core..=) Core.<$> fileName,
            ("fileSize" Core..=) Core.. Core.AsText
              Core.<$> fileSize,
            ("fileType" Core..=) Core.<$> fileType,
            ("videoStreams" Core..=) Core.<$> videoStreams
          ]
      )

-- | Information about an audio stream.
--
-- /See:/ 'newVideoFileDetailsAudioStream' smart constructor.
data VideoFileDetailsAudioStream = VideoFileDetailsAudioStream
  { -- | The audio stream\'s bitrate, in bits per second.
    bitrateBps :: (Core.Maybe Core.Word64),
    -- | The number of audio channels that the stream contains.
    channelCount :: (Core.Maybe Core.Word32),
    -- | The audio codec that the stream uses.
    codec :: (Core.Maybe Core.Text),
    -- | A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code.
    vendor :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoFileDetailsAudioStream' with the minimum fields required to make a request.
newVideoFileDetailsAudioStream ::
  VideoFileDetailsAudioStream
newVideoFileDetailsAudioStream =
  VideoFileDetailsAudioStream
    { bitrateBps = Core.Nothing,
      channelCount = Core.Nothing,
      codec = Core.Nothing,
      vendor = Core.Nothing
    }

instance Core.FromJSON VideoFileDetailsAudioStream where
  parseJSON =
    Core.withObject
      "VideoFileDetailsAudioStream"
      ( \o ->
          VideoFileDetailsAudioStream
            Core.<$> (o Core..:? "bitrateBps")
            Core.<*> (o Core..:? "channelCount")
            Core.<*> (o Core..:? "codec")
            Core.<*> (o Core..:? "vendor")
      )

instance Core.ToJSON VideoFileDetailsAudioStream where
  toJSON VideoFileDetailsAudioStream {..} =
    Core.object
      ( Core.catMaybes
          [ ("bitrateBps" Core..=) Core.. Core.AsText
              Core.<$> bitrateBps,
            ("channelCount" Core..=) Core.<$> channelCount,
            ("codec" Core..=) Core.<$> codec,
            ("vendor" Core..=) Core.<$> vendor
          ]
      )

-- | Information about a video stream.
--
-- /See:/ 'newVideoFileDetailsVideoStream' smart constructor.
data VideoFileDetailsVideoStream = VideoFileDetailsVideoStream
  { -- | The video content\'s display aspect ratio, which specifies the aspect ratio in which the video should be displayed.
    aspectRatio :: (Core.Maybe Core.Double),
    -- | The video stream\'s bitrate, in bits per second.
    bitrateBps :: (Core.Maybe Core.Word64),
    -- | The video codec that the stream uses.
    codec :: (Core.Maybe Core.Text),
    -- | The video stream\'s frame rate, in frames per second.
    frameRateFps :: (Core.Maybe Core.Double),
    -- | The encoded video content\'s height in pixels.
    heightPixels :: (Core.Maybe Core.Word32),
    -- | The amount that YouTube needs to rotate the original source content to properly display the video.
    rotation :: (Core.Maybe VideoFileDetailsVideoStream_Rotation),
    -- | A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code.
    vendor :: (Core.Maybe Core.Text),
    -- | The encoded video content\'s width in pixels. You can calculate the video\'s encoding aspect ratio as width/pixels \/ height/pixels.
    widthPixels :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoFileDetailsVideoStream' with the minimum fields required to make a request.
newVideoFileDetailsVideoStream ::
  VideoFileDetailsVideoStream
newVideoFileDetailsVideoStream =
  VideoFileDetailsVideoStream
    { aspectRatio = Core.Nothing,
      bitrateBps = Core.Nothing,
      codec = Core.Nothing,
      frameRateFps = Core.Nothing,
      heightPixels = Core.Nothing,
      rotation = Core.Nothing,
      vendor = Core.Nothing,
      widthPixels = Core.Nothing
    }

instance Core.FromJSON VideoFileDetailsVideoStream where
  parseJSON =
    Core.withObject
      "VideoFileDetailsVideoStream"
      ( \o ->
          VideoFileDetailsVideoStream
            Core.<$> (o Core..:? "aspectRatio")
            Core.<*> (o Core..:? "bitrateBps")
            Core.<*> (o Core..:? "codec")
            Core.<*> (o Core..:? "frameRateFps")
            Core.<*> (o Core..:? "heightPixels")
            Core.<*> (o Core..:? "rotation")
            Core.<*> (o Core..:? "vendor")
            Core.<*> (o Core..:? "widthPixels")
      )

instance Core.ToJSON VideoFileDetailsVideoStream where
  toJSON VideoFileDetailsVideoStream {..} =
    Core.object
      ( Core.catMaybes
          [ ("aspectRatio" Core..=) Core.<$> aspectRatio,
            ("bitrateBps" Core..=) Core.. Core.AsText
              Core.<$> bitrateBps,
            ("codec" Core..=) Core.<$> codec,
            ("frameRateFps" Core..=) Core.<$> frameRateFps,
            ("heightPixels" Core..=) Core.<$> heightPixels,
            ("rotation" Core..=) Core.<$> rotation,
            ("vendor" Core..=) Core.<$> vendor,
            ("widthPixels" Core..=) Core.<$> widthPixels
          ]
      )

--
-- /See:/ 'newVideoGetRatingResponse' smart constructor.
data VideoGetRatingResponse = VideoGetRatingResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- | A list of ratings that match the request criteria.
    items :: (Core.Maybe [VideoRating]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#videoGetRatingResponse\".
    kind :: Core.Text,
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoGetRatingResponse' with the minimum fields required to make a request.
newVideoGetRatingResponse ::
  VideoGetRatingResponse
newVideoGetRatingResponse =
  VideoGetRatingResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#videoGetRatingResponse",
      visitorId = Core.Nothing
    }

instance Core.FromJSON VideoGetRatingResponse where
  parseJSON =
    Core.withObject
      "VideoGetRatingResponse"
      ( \o ->
          VideoGetRatingResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#videoGetRatingResponse"
                     )
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON VideoGetRatingResponse where
  toJSON VideoGetRatingResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

--
-- /See:/ 'newVideoListResponse' smart constructor.
data VideoListResponse = VideoListResponse
  { -- | Etag of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Serialized EventId of the request which produced this response.
    eventId :: (Core.Maybe Core.Text),
    -- |
    items :: (Core.Maybe [Video]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"youtube#videoListResponse\".
    kind :: Core.Text,
    -- | The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | General pagination information.
    pageInfo :: (Core.Maybe PageInfo),
    -- | The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.
    prevPageToken :: (Core.Maybe Core.Text),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination),
    -- | The visitorId identifies the visitor.
    visitorId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoListResponse' with the minimum fields required to make a request.
newVideoListResponse ::
  VideoListResponse
newVideoListResponse =
  VideoListResponse
    { etag = Core.Nothing,
      eventId = Core.Nothing,
      items = Core.Nothing,
      kind = "youtube#videoListResponse",
      nextPageToken = Core.Nothing,
      pageInfo = Core.Nothing,
      prevPageToken = Core.Nothing,
      tokenPagination = Core.Nothing,
      visitorId = Core.Nothing
    }

instance Core.FromJSON VideoListResponse where
  parseJSON =
    Core.withObject
      "VideoListResponse"
      ( \o ->
          VideoListResponse
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "youtube#videoListResponse"
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "prevPageToken")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "visitorId")
      )

instance Core.ToJSON VideoListResponse where
  toJSON VideoListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("eventId" Core..=) Core.<$> eventId,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("prevPageToken" Core..=) Core.<$> prevPageToken,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("visitorId" Core..=) Core.<$> visitorId
          ]
      )

-- | Details about the live streaming metadata.
--
-- /See:/ 'newVideoLiveStreamingDetails' smart constructor.
data VideoLiveStreamingDetails = VideoLiveStreamingDetails
  { -- | The ID of the currently active live chat attached to this video. This field is filled only if the video is a currently live broadcast that has live chat. Once the broadcast transitions to complete this field will be removed and the live chat closed down. For persistent broadcasts that live chat id will no longer be tied to this video but rather to the new video being displayed at the persistent page.
    activeLiveChatId :: (Core.Maybe Core.Text),
    -- | The time that the broadcast actually ended. This value will not be available until the broadcast is over.
    actualEndTime :: (Core.Maybe Core.DateTime'),
    -- | The time that the broadcast actually started. This value will not be available until the broadcast begins.
    actualStartTime :: (Core.Maybe Core.DateTime'),
    -- | The number of viewers currently watching the broadcast. The property and its value will be present if the broadcast has current viewers and the broadcast owner has not hidden the viewcount for the video. Note that YouTube stops tracking the number of concurrent viewers for a broadcast when the broadcast ends. So, this property would not identify the number of viewers watching an archived video of a live broadcast that already ended.
    concurrentViewers :: (Core.Maybe Core.Word64),
    -- | The time that the broadcast is scheduled to end. If the value is empty or the property is not present, then the broadcast is scheduled to contiue indefinitely.
    scheduledEndTime :: (Core.Maybe Core.DateTime'),
    -- | The time that the broadcast is scheduled to begin.
    scheduledStartTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoLiveStreamingDetails' with the minimum fields required to make a request.
newVideoLiveStreamingDetails ::
  VideoLiveStreamingDetails
newVideoLiveStreamingDetails =
  VideoLiveStreamingDetails
    { activeLiveChatId = Core.Nothing,
      actualEndTime = Core.Nothing,
      actualStartTime = Core.Nothing,
      concurrentViewers = Core.Nothing,
      scheduledEndTime = Core.Nothing,
      scheduledStartTime = Core.Nothing
    }

instance Core.FromJSON VideoLiveStreamingDetails where
  parseJSON =
    Core.withObject
      "VideoLiveStreamingDetails"
      ( \o ->
          VideoLiveStreamingDetails
            Core.<$> (o Core..:? "activeLiveChatId")
            Core.<*> (o Core..:? "actualEndTime")
            Core.<*> (o Core..:? "actualStartTime")
            Core.<*> (o Core..:? "concurrentViewers")
            Core.<*> (o Core..:? "scheduledEndTime")
            Core.<*> (o Core..:? "scheduledStartTime")
      )

instance Core.ToJSON VideoLiveStreamingDetails where
  toJSON VideoLiveStreamingDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeLiveChatId" Core..=)
              Core.<$> activeLiveChatId,
            ("actualEndTime" Core..=) Core.<$> actualEndTime,
            ("actualStartTime" Core..=) Core.<$> actualStartTime,
            ("concurrentViewers" Core..=) Core.. Core.AsText
              Core.<$> concurrentViewers,
            ("scheduledEndTime" Core..=)
              Core.<$> scheduledEndTime,
            ("scheduledStartTime" Core..=)
              Core.<$> scheduledStartTime
          ]
      )

-- | Localized versions of certain video properties (e.g. title).
--
-- /See:/ 'newVideoLocalization' smart constructor.
data VideoLocalization = VideoLocalization
  { -- | Localized version of the video\'s description.
    description :: (Core.Maybe Core.Text),
    -- | Localized version of the video\'s title.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoLocalization' with the minimum fields required to make a request.
newVideoLocalization ::
  VideoLocalization
newVideoLocalization =
  VideoLocalization {description = Core.Nothing, title = Core.Nothing}

instance Core.FromJSON VideoLocalization where
  parseJSON =
    Core.withObject
      "VideoLocalization"
      ( \o ->
          VideoLocalization
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON VideoLocalization where
  toJSON VideoLocalization {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Details about monetization of a YouTube Video.
--
-- /See:/ 'newVideoMonetizationDetails' smart constructor.
newtype VideoMonetizationDetails = VideoMonetizationDetails
  { -- | The value of access indicates whether the video can be monetized or not.
    access :: (Core.Maybe AccessPolicy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoMonetizationDetails' with the minimum fields required to make a request.
newVideoMonetizationDetails ::
  VideoMonetizationDetails
newVideoMonetizationDetails = VideoMonetizationDetails {access = Core.Nothing}

instance Core.FromJSON VideoMonetizationDetails where
  parseJSON =
    Core.withObject
      "VideoMonetizationDetails"
      ( \o ->
          VideoMonetizationDetails
            Core.<$> (o Core..:? "access")
      )

instance Core.ToJSON VideoMonetizationDetails where
  toJSON VideoMonetizationDetails {..} =
    Core.object
      (Core.catMaybes [("access" Core..=) Core.<$> access])

-- | Player to be used for a video playback.
--
-- /See:/ 'newVideoPlayer' smart constructor.
data VideoPlayer = VideoPlayer
  { -- |
    embedHeight :: (Core.Maybe Core.Int64),
    -- | An \<iframe> tag that embeds a player that will play the video.
    embedHtml :: (Core.Maybe Core.Text),
    -- | The embed width
    embedWidth :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoPlayer' with the minimum fields required to make a request.
newVideoPlayer ::
  VideoPlayer
newVideoPlayer =
  VideoPlayer
    { embedHeight = Core.Nothing,
      embedHtml = Core.Nothing,
      embedWidth = Core.Nothing
    }

instance Core.FromJSON VideoPlayer where
  parseJSON =
    Core.withObject
      "VideoPlayer"
      ( \o ->
          VideoPlayer
            Core.<$> (o Core..:? "embedHeight")
            Core.<*> (o Core..:? "embedHtml")
            Core.<*> (o Core..:? "embedWidth")
      )

instance Core.ToJSON VideoPlayer where
  toJSON VideoPlayer {..} =
    Core.object
      ( Core.catMaybes
          [ ("embedHeight" Core..=) Core.. Core.AsText
              Core.<$> embedHeight,
            ("embedHtml" Core..=) Core.<$> embedHtml,
            ("embedWidth" Core..=) Core.. Core.AsText
              Core.<$> embedWidth
          ]
      )

-- | Describes processing status and progress and availability of some other Video resource parts.
--
-- /See:/ 'newVideoProcessingDetails' smart constructor.
data VideoProcessingDetails = VideoProcessingDetails
  { -- | This value indicates whether video editing suggestions, which might improve video quality or the playback experience, are available for the video. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request.
    editorSuggestionsAvailability :: (Core.Maybe Core.Text),
    -- | This value indicates whether file details are available for the uploaded video. You can retrieve a video\'s file details by requesting the fileDetails part in your videos.list() request.
    fileDetailsAvailability :: (Core.Maybe Core.Text),
    -- | The reason that YouTube failed to process the video. This property will only have a value if the processingStatus property\'s value is failed.
    processingFailureReason :: (Core.Maybe VideoProcessingDetails_ProcessingFailureReason),
    -- | This value indicates whether the video processing engine has generated suggestions that might improve YouTube\'s ability to process the the video, warnings that explain video processing problems, or errors that cause video processing problems. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request.
    processingIssuesAvailability :: (Core.Maybe Core.Text),
    -- | The processingProgress object contains information about the progress YouTube has made in processing the video. The values are really only relevant if the video\'s processing status is processing.
    processingProgress :: (Core.Maybe VideoProcessingDetailsProcessingProgress),
    -- | The video\'s processing status. This value indicates whether YouTube was able to process the video or if the video is still being processed.
    processingStatus :: (Core.Maybe VideoProcessingDetails_ProcessingStatus),
    -- | This value indicates whether keyword (tag) suggestions are available for the video. Tags can be added to a video\'s metadata to make it easier for other users to find the video. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request.
    tagSuggestionsAvailability :: (Core.Maybe Core.Text),
    -- | This value indicates whether thumbnail images have been generated for the video.
    thumbnailsAvailability :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoProcessingDetails' with the minimum fields required to make a request.
newVideoProcessingDetails ::
  VideoProcessingDetails
newVideoProcessingDetails =
  VideoProcessingDetails
    { editorSuggestionsAvailability = Core.Nothing,
      fileDetailsAvailability = Core.Nothing,
      processingFailureReason = Core.Nothing,
      processingIssuesAvailability = Core.Nothing,
      processingProgress = Core.Nothing,
      processingStatus = Core.Nothing,
      tagSuggestionsAvailability = Core.Nothing,
      thumbnailsAvailability = Core.Nothing
    }

instance Core.FromJSON VideoProcessingDetails where
  parseJSON =
    Core.withObject
      "VideoProcessingDetails"
      ( \o ->
          VideoProcessingDetails
            Core.<$> (o Core..:? "editorSuggestionsAvailability")
            Core.<*> (o Core..:? "fileDetailsAvailability")
            Core.<*> (o Core..:? "processingFailureReason")
            Core.<*> (o Core..:? "processingIssuesAvailability")
            Core.<*> (o Core..:? "processingProgress")
            Core.<*> (o Core..:? "processingStatus")
            Core.<*> (o Core..:? "tagSuggestionsAvailability")
            Core.<*> (o Core..:? "thumbnailsAvailability")
      )

instance Core.ToJSON VideoProcessingDetails where
  toJSON VideoProcessingDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("editorSuggestionsAvailability" Core..=)
              Core.<$> editorSuggestionsAvailability,
            ("fileDetailsAvailability" Core..=)
              Core.<$> fileDetailsAvailability,
            ("processingFailureReason" Core..=)
              Core.<$> processingFailureReason,
            ("processingIssuesAvailability" Core..=)
              Core.<$> processingIssuesAvailability,
            ("processingProgress" Core..=)
              Core.<$> processingProgress,
            ("processingStatus" Core..=)
              Core.<$> processingStatus,
            ("tagSuggestionsAvailability" Core..=)
              Core.<$> tagSuggestionsAvailability,
            ("thumbnailsAvailability" Core..=)
              Core.<$> thumbnailsAvailability
          ]
      )

-- | Video processing progress and completion time estimate.
--
-- /See:/ 'newVideoProcessingDetailsProcessingProgress' smart constructor.
data VideoProcessingDetailsProcessingProgress = VideoProcessingDetailsProcessingProgress
  { -- | The number of parts of the video that YouTube has already processed. You can estimate the percentage of the video that YouTube has already processed by calculating: 100 * parts/processed \/ parts/total Note that since the estimated number of parts could increase without a corresponding increase in the number of parts that have already been processed, it is possible that the calculated progress could periodically decrease while YouTube processes a video.
    partsProcessed :: (Core.Maybe Core.Word64),
    -- | An estimate of the total number of parts that need to be processed for the video. The number may be updated with more precise estimates while YouTube processes the video.
    partsTotal :: (Core.Maybe Core.Word64),
    -- | An estimate of the amount of time, in millseconds, that YouTube needs to finish processing the video.
    timeLeftMs :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoProcessingDetailsProcessingProgress' with the minimum fields required to make a request.
newVideoProcessingDetailsProcessingProgress ::
  VideoProcessingDetailsProcessingProgress
newVideoProcessingDetailsProcessingProgress =
  VideoProcessingDetailsProcessingProgress
    { partsProcessed = Core.Nothing,
      partsTotal = Core.Nothing,
      timeLeftMs = Core.Nothing
    }

instance
  Core.FromJSON
    VideoProcessingDetailsProcessingProgress
  where
  parseJSON =
    Core.withObject
      "VideoProcessingDetailsProcessingProgress"
      ( \o ->
          VideoProcessingDetailsProcessingProgress
            Core.<$> (o Core..:? "partsProcessed")
            Core.<*> (o Core..:? "partsTotal")
            Core.<*> (o Core..:? "timeLeftMs")
      )

instance
  Core.ToJSON
    VideoProcessingDetailsProcessingProgress
  where
  toJSON VideoProcessingDetailsProcessingProgress {..} =
    Core.object
      ( Core.catMaybes
          [ ("partsProcessed" Core..=) Core.. Core.AsText
              Core.<$> partsProcessed,
            ("partsTotal" Core..=) Core.. Core.AsText
              Core.<$> partsTotal,
            ("timeLeftMs" Core..=) Core.. Core.AsText
              Core.<$> timeLeftMs
          ]
      )

-- | DEPRECATED. b\/157517979: This part was never populated after it was added. However, it sees non-zero traffic because there is generated client code in the wild that refers to it [1]. We keep this field and do NOT remove it because otherwise V3 would return an error when this part gets requested [2]. [1] https:\/\/developers.google.com\/resources\/api-libraries\/documentation\/youtube\/v3\/csharp\/latest\/classGoogle/1/1Apis/1/1YouTube/1/1v3/1/1Data/1/1VideoProjectDetails.html [2] http:\/\/google3\/video\/youtube\/src\/python\/servers\/data_api\/common.py?l=1565-1569&rcl=344141677
--
-- /See:/ 'newVideoProjectDetails' smart constructor.
data VideoProjectDetails = VideoProjectDetails
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoProjectDetails' with the minimum fields required to make a request.
newVideoProjectDetails ::
  VideoProjectDetails
newVideoProjectDetails = VideoProjectDetails

instance Core.FromJSON VideoProjectDetails where
  parseJSON =
    Core.withObject
      "VideoProjectDetails"
      (\o -> Core.pure VideoProjectDetails)

instance Core.ToJSON VideoProjectDetails where
  toJSON = Core.const Core.emptyObject

-- | Basic details about rating of a video.
--
-- /See:/ 'newVideoRating' smart constructor.
data VideoRating = VideoRating
  { -- | Rating of a video.
    rating :: (Core.Maybe VideoRating_Rating),
    -- | The ID that YouTube uses to uniquely identify the video.
    videoId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoRating' with the minimum fields required to make a request.
newVideoRating ::
  VideoRating
newVideoRating = VideoRating {rating = Core.Nothing, videoId = Core.Nothing}

instance Core.FromJSON VideoRating where
  parseJSON =
    Core.withObject
      "VideoRating"
      ( \o ->
          VideoRating
            Core.<$> (o Core..:? "rating")
            Core.<*> (o Core..:? "videoId")
      )

instance Core.ToJSON VideoRating where
  toJSON VideoRating {..} =
    Core.object
      ( Core.catMaybes
          [ ("rating" Core..=) Core.<$> rating,
            ("videoId" Core..=) Core.<$> videoId
          ]
      )

-- | Recording information associated with the video.
--
-- /See:/ 'newVideoRecordingDetails' smart constructor.
data VideoRecordingDetails = VideoRecordingDetails
  { -- | The geolocation information associated with the video.
    location :: (Core.Maybe GeoPoint),
    -- | The text description of the location where the video was recorded.
    locationDescription :: (Core.Maybe Core.Text),
    -- | The date and time when the video was recorded.
    recordingDate :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoRecordingDetails' with the minimum fields required to make a request.
newVideoRecordingDetails ::
  VideoRecordingDetails
newVideoRecordingDetails =
  VideoRecordingDetails
    { location = Core.Nothing,
      locationDescription = Core.Nothing,
      recordingDate = Core.Nothing
    }

instance Core.FromJSON VideoRecordingDetails where
  parseJSON =
    Core.withObject
      "VideoRecordingDetails"
      ( \o ->
          VideoRecordingDetails
            Core.<$> (o Core..:? "location")
            Core.<*> (o Core..:? "locationDescription")
            Core.<*> (o Core..:? "recordingDate")
      )

instance Core.ToJSON VideoRecordingDetails where
  toJSON VideoRecordingDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("location" Core..=) Core.<$> location,
            ("locationDescription" Core..=)
              Core.<$> locationDescription,
            ("recordingDate" Core..=) Core.<$> recordingDate
          ]
      )

-- | Basic details about a video, including title, description, uploader, thumbnails and category.
--
-- /See:/ 'newVideoSnippet' smart constructor.
data VideoSnippet = VideoSnippet
  { -- | The YouTube video category associated with the video.
    categoryId :: (Core.Maybe Core.Text),
    -- | The ID that YouTube uses to uniquely identify the channel that the video was uploaded to.
    channelId :: (Core.Maybe Core.Text),
    -- | Channel title for the channel that the video belongs to.
    channelTitle :: (Core.Maybe Core.Text),
    -- | The default/audio/language property specifies the language spoken in the video\'s default audio track.
    defaultAudioLanguage :: (Core.Maybe Core.Text),
    -- | The language of the videos\'s default snippet.
    defaultLanguage :: (Core.Maybe Core.Text),
    -- | The video\'s description. \@mutable youtube.videos.insert youtube.videos.update
    description :: (Core.Maybe Core.Text),
    -- | Indicates if the video is an upcoming\/active live broadcast. Or it\'s \"none\" if the video is not an upcoming\/active live broadcast.
    liveBroadcastContent :: (Core.Maybe VideoSnippet_LiveBroadcastContent),
    -- | Localized snippet selected with the hl parameter. If no such localization exists, this field is populated with the default snippet. (Read-only)
    localized :: (Core.Maybe VideoLocalization),
    -- | The date and time when the video was uploaded.
    publishedAt :: (Core.Maybe Core.DateTime'),
    -- | A list of keyword tags associated with the video. Tags may contain spaces.
    tags :: (Core.Maybe [Core.Text]),
    -- | A map of thumbnail images associated with the video. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.
    thumbnails :: (Core.Maybe ThumbnailDetails),
    -- | The video\'s title. \@mutable youtube.videos.insert youtube.videos.update
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoSnippet' with the minimum fields required to make a request.
newVideoSnippet ::
  VideoSnippet
newVideoSnippet =
  VideoSnippet
    { categoryId = Core.Nothing,
      channelId = Core.Nothing,
      channelTitle = Core.Nothing,
      defaultAudioLanguage = Core.Nothing,
      defaultLanguage = Core.Nothing,
      description = Core.Nothing,
      liveBroadcastContent = Core.Nothing,
      localized = Core.Nothing,
      publishedAt = Core.Nothing,
      tags = Core.Nothing,
      thumbnails = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON VideoSnippet where
  parseJSON =
    Core.withObject
      "VideoSnippet"
      ( \o ->
          VideoSnippet
            Core.<$> (o Core..:? "categoryId")
            Core.<*> (o Core..:? "channelId")
            Core.<*> (o Core..:? "channelTitle")
            Core.<*> (o Core..:? "defaultAudioLanguage")
            Core.<*> (o Core..:? "defaultLanguage")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "liveBroadcastContent")
            Core.<*> (o Core..:? "localized")
            Core.<*> (o Core..:? "publishedAt")
            Core.<*> (o Core..:? "tags" Core..!= Core.mempty)
            Core.<*> (o Core..:? "thumbnails")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON VideoSnippet where
  toJSON VideoSnippet {..} =
    Core.object
      ( Core.catMaybes
          [ ("categoryId" Core..=) Core.<$> categoryId,
            ("channelId" Core..=) Core.<$> channelId,
            ("channelTitle" Core..=) Core.<$> channelTitle,
            ("defaultAudioLanguage" Core..=)
              Core.<$> defaultAudioLanguage,
            ("defaultLanguage" Core..=) Core.<$> defaultLanguage,
            ("description" Core..=) Core.<$> description,
            ("liveBroadcastContent" Core..=)
              Core.<$> liveBroadcastContent,
            ("localized" Core..=) Core.<$> localized,
            ("publishedAt" Core..=) Core.<$> publishedAt,
            ("tags" Core..=) Core.<$> tags,
            ("thumbnails" Core..=) Core.<$> thumbnails,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Statistics about the video, such as the number of times the video was viewed or liked.
--
-- /See:/ 'newVideoStatistics' smart constructor.
data VideoStatistics = VideoStatistics
  { -- | The number of comments for the video.
    commentCount :: (Core.Maybe Core.Word64),
    -- | The number of users who have indicated that they disliked the video by giving it a negative rating.
    dislikeCount :: (Core.Maybe Core.Word64),
    -- | The number of users who currently have the video marked as a favorite video.
    favoriteCount :: (Core.Maybe Core.Word64),
    -- | The number of users who have indicated that they liked the video by giving it a positive rating.
    likeCount :: (Core.Maybe Core.Word64),
    -- | The number of times the video has been viewed.
    viewCount :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoStatistics' with the minimum fields required to make a request.
newVideoStatistics ::
  VideoStatistics
newVideoStatistics =
  VideoStatistics
    { commentCount = Core.Nothing,
      dislikeCount = Core.Nothing,
      favoriteCount = Core.Nothing,
      likeCount = Core.Nothing,
      viewCount = Core.Nothing
    }

instance Core.FromJSON VideoStatistics where
  parseJSON =
    Core.withObject
      "VideoStatistics"
      ( \o ->
          VideoStatistics
            Core.<$> (o Core..:? "commentCount")
            Core.<*> (o Core..:? "dislikeCount")
            Core.<*> (o Core..:? "favoriteCount")
            Core.<*> (o Core..:? "likeCount")
            Core.<*> (o Core..:? "viewCount")
      )

instance Core.ToJSON VideoStatistics where
  toJSON VideoStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ ("commentCount" Core..=) Core.. Core.AsText
              Core.<$> commentCount,
            ("dislikeCount" Core..=) Core.. Core.AsText
              Core.<$> dislikeCount,
            ("favoriteCount" Core..=) Core.. Core.AsText
              Core.<$> favoriteCount,
            ("likeCount" Core..=) Core.. Core.AsText
              Core.<$> likeCount,
            ("viewCount" Core..=) Core.. Core.AsText
              Core.<$> viewCount
          ]
      )

-- | Basic details about a video category, such as its localized title. Next Id: 17
--
-- /See:/ 'newVideoStatus' smart constructor.
data VideoStatus = VideoStatus
  { -- | This value indicates if the video can be embedded on another website. \@mutable youtube.videos.insert youtube.videos.update
    embeddable :: (Core.Maybe Core.Bool),
    -- | This value explains why a video failed to upload. This property is only present if the uploadStatus property indicates that the upload failed.
    failureReason :: (Core.Maybe VideoStatus_FailureReason),
    -- | The video\'s license. \@mutable youtube.videos.insert youtube.videos.update
    license :: (Core.Maybe VideoStatus_License),
    -- |
    madeForKids :: (Core.Maybe Core.Bool),
    -- | The video\'s privacy status.
    privacyStatus :: (Core.Maybe VideoStatus_PrivacyStatus),
    -- | This value indicates if the extended video statistics on the watch page can be viewed by everyone. Note that the view count, likes, etc will still be visible if this is disabled. \@mutable youtube.videos.insert youtube.videos.update
    publicStatsViewable :: (Core.Maybe Core.Bool),
    -- | The date and time when the video is scheduled to publish. It can be set only if the privacy status of the video is private..
    publishAt :: (Core.Maybe Core.DateTime'),
    -- | This value explains why YouTube rejected an uploaded video. This property is only present if the uploadStatus property indicates that the upload was rejected.
    rejectionReason :: (Core.Maybe VideoStatus_RejectionReason),
    -- |
    selfDeclaredMadeForKids :: (Core.Maybe Core.Bool),
    -- | The status of the uploaded video.
    uploadStatus :: (Core.Maybe VideoStatus_UploadStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoStatus' with the minimum fields required to make a request.
newVideoStatus ::
  VideoStatus
newVideoStatus =
  VideoStatus
    { embeddable = Core.Nothing,
      failureReason = Core.Nothing,
      license = Core.Nothing,
      madeForKids = Core.Nothing,
      privacyStatus = Core.Nothing,
      publicStatsViewable = Core.Nothing,
      publishAt = Core.Nothing,
      rejectionReason = Core.Nothing,
      selfDeclaredMadeForKids = Core.Nothing,
      uploadStatus = Core.Nothing
    }

instance Core.FromJSON VideoStatus where
  parseJSON =
    Core.withObject
      "VideoStatus"
      ( \o ->
          VideoStatus
            Core.<$> (o Core..:? "embeddable")
            Core.<*> (o Core..:? "failureReason")
            Core.<*> (o Core..:? "license")
            Core.<*> (o Core..:? "madeForKids")
            Core.<*> (o Core..:? "privacyStatus")
            Core.<*> (o Core..:? "publicStatsViewable")
            Core.<*> (o Core..:? "publishAt")
            Core.<*> (o Core..:? "rejectionReason")
            Core.<*> (o Core..:? "selfDeclaredMadeForKids")
            Core.<*> (o Core..:? "uploadStatus")
      )

instance Core.ToJSON VideoStatus where
  toJSON VideoStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("embeddable" Core..=) Core.<$> embeddable,
            ("failureReason" Core..=) Core.<$> failureReason,
            ("license" Core..=) Core.<$> license,
            ("madeForKids" Core..=) Core.<$> madeForKids,
            ("privacyStatus" Core..=) Core.<$> privacyStatus,
            ("publicStatsViewable" Core..=)
              Core.<$> publicStatsViewable,
            ("publishAt" Core..=) Core.<$> publishAt,
            ("rejectionReason" Core..=) Core.<$> rejectionReason,
            ("selfDeclaredMadeForKids" Core..=)
              Core.<$> selfDeclaredMadeForKids,
            ("uploadStatus" Core..=) Core.<$> uploadStatus
          ]
      )

-- | Specifies suggestions on how to improve video content, including encoding hints, tag suggestions, and editor suggestions.
--
-- /See:/ 'newVideoSuggestions' smart constructor.
data VideoSuggestions = VideoSuggestions
  { -- | A list of video editing operations that might improve the video quality or playback experience of the uploaded video.
    editorSuggestions :: (Core.Maybe [VideoSuggestions_EditorSuggestionsItem]),
    -- | A list of errors that will prevent YouTube from successfully processing the uploaded video video. These errors indicate that, regardless of the video\'s current processing status, eventually, that status will almost certainly be failed.
    processingErrors :: (Core.Maybe [VideoSuggestions_ProcessingErrorsItem]),
    -- | A list of suggestions that may improve YouTube\'s ability to process the video.
    processingHints :: (Core.Maybe [VideoSuggestions_ProcessingHintsItem]),
    -- | A list of reasons why YouTube may have difficulty transcoding the uploaded video or that might result in an erroneous transcoding. These warnings are generated before YouTube actually processes the uploaded video file. In addition, they identify issues that are unlikely to cause the video processing to fail but that might cause problems such as sync issues, video artifacts, or a missing audio track.
    processingWarnings :: (Core.Maybe [VideoSuggestions_ProcessingWarningsItem]),
    -- | A list of keyword tags that could be added to the video\'s metadata to increase the likelihood that users will locate your video when searching or browsing on YouTube.
    tagSuggestions :: (Core.Maybe [VideoSuggestionsTagSuggestion])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoSuggestions' with the minimum fields required to make a request.
newVideoSuggestions ::
  VideoSuggestions
newVideoSuggestions =
  VideoSuggestions
    { editorSuggestions = Core.Nothing,
      processingErrors = Core.Nothing,
      processingHints = Core.Nothing,
      processingWarnings = Core.Nothing,
      tagSuggestions = Core.Nothing
    }

instance Core.FromJSON VideoSuggestions where
  parseJSON =
    Core.withObject
      "VideoSuggestions"
      ( \o ->
          VideoSuggestions
            Core.<$> (o Core..:? "editorSuggestions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "processingErrors" Core..!= Core.mempty)
            Core.<*> (o Core..:? "processingHints" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "processingWarnings"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "tagSuggestions" Core..!= Core.mempty)
      )

instance Core.ToJSON VideoSuggestions where
  toJSON VideoSuggestions {..} =
    Core.object
      ( Core.catMaybes
          [ ("editorSuggestions" Core..=)
              Core.<$> editorSuggestions,
            ("processingErrors" Core..=)
              Core.<$> processingErrors,
            ("processingHints" Core..=) Core.<$> processingHints,
            ("processingWarnings" Core..=)
              Core.<$> processingWarnings,
            ("tagSuggestions" Core..=) Core.<$> tagSuggestions
          ]
      )

-- | A single tag suggestion with it\'s relevance information.
--
-- /See:/ 'newVideoSuggestionsTagSuggestion' smart constructor.
data VideoSuggestionsTagSuggestion = VideoSuggestionsTagSuggestion
  { -- | A set of video categories for which the tag is relevant. You can use this information to display appropriate tag suggestions based on the video category that the video uploader associates with the video. By default, tag suggestions are relevant for all categories if there are no restricts defined for the keyword.
    categoryRestricts :: (Core.Maybe [Core.Text]),
    -- | The keyword tag suggested for the video.
    tag :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoSuggestionsTagSuggestion' with the minimum fields required to make a request.
newVideoSuggestionsTagSuggestion ::
  VideoSuggestionsTagSuggestion
newVideoSuggestionsTagSuggestion =
  VideoSuggestionsTagSuggestion
    { categoryRestricts = Core.Nothing,
      tag = Core.Nothing
    }

instance Core.FromJSON VideoSuggestionsTagSuggestion where
  parseJSON =
    Core.withObject
      "VideoSuggestionsTagSuggestion"
      ( \o ->
          VideoSuggestionsTagSuggestion
            Core.<$> (o Core..:? "categoryRestricts" Core..!= Core.mempty)
            Core.<*> (o Core..:? "tag")
      )

instance Core.ToJSON VideoSuggestionsTagSuggestion where
  toJSON VideoSuggestionsTagSuggestion {..} =
    Core.object
      ( Core.catMaybes
          [ ("categoryRestricts" Core..=)
              Core.<$> categoryRestricts,
            ("tag" Core..=) Core.<$> tag
          ]
      )

-- | Freebase topic information related to the video.
--
-- /See:/ 'newVideoTopicDetails' smart constructor.
data VideoTopicDetails = VideoTopicDetails
  { -- | Similar to topic_id, except that these topics are merely relevant to the video. These are topics that may be mentioned in, or appear in the video. You can retrieve information about each topic using Freebase Topic API.
    relevantTopicIds :: (Core.Maybe [Core.Text]),
    -- | A list of Wikipedia URLs that provide a high-level description of the video\'s content.
    topicCategories :: (Core.Maybe [Core.Text]),
    -- | A list of Freebase topic IDs that are centrally associated with the video. These are topics that are centrally featured in the video, and it can be said that the video is mainly about each of these. You can retrieve information about each topic using the \< a href=\"http:\/\/wiki.freebase.com\/wiki\/Topic_API\">Freebase Topic API.
    topicIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoTopicDetails' with the minimum fields required to make a request.
newVideoTopicDetails ::
  VideoTopicDetails
newVideoTopicDetails =
  VideoTopicDetails
    { relevantTopicIds = Core.Nothing,
      topicCategories = Core.Nothing,
      topicIds = Core.Nothing
    }

instance Core.FromJSON VideoTopicDetails where
  parseJSON =
    Core.withObject
      "VideoTopicDetails"
      ( \o ->
          VideoTopicDetails
            Core.<$> (o Core..:? "relevantTopicIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "topicCategories" Core..!= Core.mempty)
            Core.<*> (o Core..:? "topicIds" Core..!= Core.mempty)
      )

instance Core.ToJSON VideoTopicDetails where
  toJSON VideoTopicDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("relevantTopicIds" Core..=)
              Core.<$> relevantTopicIds,
            ("topicCategories" Core..=) Core.<$> topicCategories,
            ("topicIds" Core..=) Core.<$> topicIds
          ]
      )

-- | Branding properties for the watch. All deprecated.
--
-- /See:/ 'newWatchSettings' smart constructor.
data WatchSettings = WatchSettings
  { -- | The text color for the video watch page\'s branded area.
    backgroundColor :: (Core.Maybe Core.Text),
    -- | An ID that uniquely identifies a playlist that displays next to the video player.
    featuredPlaylistId :: (Core.Maybe Core.Text),
    -- | The background color for the video watch page\'s branded area.
    textColor :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WatchSettings' with the minimum fields required to make a request.
newWatchSettings ::
  WatchSettings
newWatchSettings =
  WatchSettings
    { backgroundColor = Core.Nothing,
      featuredPlaylistId = Core.Nothing,
      textColor = Core.Nothing
    }

instance Core.FromJSON WatchSettings where
  parseJSON =
    Core.withObject
      "WatchSettings"
      ( \o ->
          WatchSettings
            Core.<$> (o Core..:? "backgroundColor")
            Core.<*> (o Core..:? "featuredPlaylistId")
            Core.<*> (o Core..:? "textColor")
      )

instance Core.ToJSON WatchSettings where
  toJSON WatchSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundColor" Core..=)
              Core.<$> backgroundColor,
            ("featuredPlaylistId" Core..=)
              Core.<$> featuredPlaylistId,
            ("textColor" Core..=) Core.<$> textColor
          ]
      )
