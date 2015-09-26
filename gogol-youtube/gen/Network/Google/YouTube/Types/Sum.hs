{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTube.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTube.Types.Sum where

import           Network.Google.Prelude

-- | The type of call-to-action, a message to the user indicating action that
-- can be taken.
data ActivityContentDetailsPromotedItemCtaType
    = ACDPICTUnspecified
      -- ^ @unspecified@
    | ACDPICTVisitAdvertiserSite
      -- ^ @visitAdvertiserSite@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivityContentDetailsPromotedItemCtaType

instance FromText ActivityContentDetailsPromotedItemCtaType where
    fromText = \case
        "unspecified" -> Just ACDPICTUnspecified
        "visitAdvertiserSite" -> Just ACDPICTVisitAdvertiserSite
        _ -> Nothing

instance ToText ActivityContentDetailsPromotedItemCtaType where
    toText = \case
        ACDPICTUnspecified -> "unspecified"
        ACDPICTVisitAdvertiserSite -> "visitAdvertiserSite"

-- | The reason that the resource is recommended to the user.
data ActivityContentDetailsRecommendationReason
    = ACDRRUnspecified
      -- ^ @unspecified@
    | ACDRRVideoFavorited
      -- ^ @videoFavorited@
    | ACDRRVideoLiked
      -- ^ @videoLiked@
    | ACDRRVideoWatched
      -- ^ @videoWatched@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivityContentDetailsRecommendationReason

instance FromText ActivityContentDetailsRecommendationReason where
    fromText = \case
        "unspecified" -> Just ACDRRUnspecified
        "videoFavorited" -> Just ACDRRVideoFavorited
        "videoLiked" -> Just ACDRRVideoLiked
        "videoWatched" -> Just ACDRRVideoWatched
        _ -> Nothing

instance ToText ActivityContentDetailsRecommendationReason where
    toText = \case
        ACDRRUnspecified -> "unspecified"
        ACDRRVideoFavorited -> "videoFavorited"
        ACDRRVideoLiked -> "videoLiked"
        ACDRRVideoWatched -> "videoWatched"

-- | The name of the social network.
data ActivityContentDetailsSocialType
    = ACDSTFacebook
      -- ^ @facebook@
    | ACDSTGooglePlus
      -- ^ @googlePlus@
    | ACDSTTwitter
      -- ^ @twitter@
    | ACDSTUnspecified
      -- ^ @unspecified@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivityContentDetailsSocialType

instance FromText ActivityContentDetailsSocialType where
    fromText = \case
        "facebook" -> Just ACDSTFacebook
        "googlePlus" -> Just ACDSTGooglePlus
        "twitter" -> Just ACDSTTwitter
        "unspecified" -> Just ACDSTUnspecified
        _ -> Nothing

instance ToText ActivityContentDetailsSocialType where
    toText = \case
        ACDSTFacebook -> "facebook"
        ACDSTGooglePlus -> "googlePlus"
        ACDSTTwitter -> "twitter"
        ACDSTUnspecified -> "unspecified"

-- | The type of activity that the resource describes.
data ActivitySnippetType
    = ASTBulletin
      -- ^ @bulletin@
    | ASTChannelItem
      -- ^ @channelItem@
    | ASTComment
      -- ^ @comment@
    | ASTFavorite
      -- ^ @favorite@
    | ASTLike
      -- ^ @like@
    | ASTPlaylistItem
      -- ^ @playlistItem@
    | ASTPromotedItem
      -- ^ @promotedItem@
    | ASTRecommendation
      -- ^ @recommendation@
    | ASTSocial
      -- ^ @social@
    | ASTSubscription
      -- ^ @subscription@
    | ASTUpload
      -- ^ @upload@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivitySnippetType

instance FromText ActivitySnippetType where
    fromText = \case
        "bulletin" -> Just ASTBulletin
        "channelItem" -> Just ASTChannelItem
        "comment" -> Just ASTComment
        "favorite" -> Just ASTFavorite
        "like" -> Just ASTLike
        "playlistItem" -> Just ASTPlaylistItem
        "promotedItem" -> Just ASTPromotedItem
        "recommendation" -> Just ASTRecommendation
        "social" -> Just ASTSocial
        "subscription" -> Just ASTSubscription
        "upload" -> Just ASTUpload
        _ -> Nothing

instance ToText ActivitySnippetType where
    toText = \case
        ASTBulletin -> "bulletin"
        ASTChannelItem -> "channelItem"
        ASTComment -> "comment"
        ASTFavorite -> "favorite"
        ASTLike -> "like"
        ASTPlaylistItem -> "playlistItem"
        ASTPromotedItem -> "promotedItem"
        ASTRecommendation -> "recommendation"
        ASTSocial -> "social"
        ASTSubscription -> "subscription"
        ASTUpload -> "upload"

-- | The type of audio track associated with the caption track.
data CaptionSnippetAudioTrackType
    = CSATTCommentary
      -- ^ @commentary@
    | CSATTDescriptive
      -- ^ @descriptive@
    | CSATTPrimary
      -- ^ @primary@
    | CSATTUnknown
      -- ^ @unknown@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CaptionSnippetAudioTrackType

instance FromText CaptionSnippetAudioTrackType where
    fromText = \case
        "commentary" -> Just CSATTCommentary
        "descriptive" -> Just CSATTDescriptive
        "primary" -> Just CSATTPrimary
        "unknown" -> Just CSATTUnknown
        _ -> Nothing

instance ToText CaptionSnippetAudioTrackType where
    toText = \case
        CSATTCommentary -> "commentary"
        CSATTDescriptive -> "descriptive"
        CSATTPrimary -> "primary"
        CSATTUnknown -> "unknown"

-- | The reason that YouTube failed to process the caption track. This
-- property is only present if the state property\'s value is failed.
data CaptionSnippetFailureReason
    = CSFRProcessingFailed
      -- ^ @processingFailed@
    | CSFRUnknownFormat
      -- ^ @unknownFormat@
    | CSFRUnsupportedFormat
      -- ^ @unsupportedFormat@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CaptionSnippetFailureReason

instance FromText CaptionSnippetFailureReason where
    fromText = \case
        "processingFailed" -> Just CSFRProcessingFailed
        "unknownFormat" -> Just CSFRUnknownFormat
        "unsupportedFormat" -> Just CSFRUnsupportedFormat
        _ -> Nothing

instance ToText CaptionSnippetFailureReason where
    toText = \case
        CSFRProcessingFailed -> "processingFailed"
        CSFRUnknownFormat -> "unknownFormat"
        CSFRUnsupportedFormat -> "unsupportedFormat"

-- | The caption track\'s status.
data CaptionSnippetStatus
    = CSSFailed
      -- ^ @failed@
    | CSSServing
      -- ^ @serving@
    | CSSSyncing
      -- ^ @syncing@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CaptionSnippetStatus

instance FromText CaptionSnippetStatus where
    fromText = \case
        "failed" -> Just CSSFailed
        "serving" -> Just CSSServing
        "syncing" -> Just CSSSyncing
        _ -> Nothing

instance ToText CaptionSnippetStatus where
    toText = \case
        CSSFailed -> "failed"
        CSSServing -> "serving"
        CSSSyncing -> "syncing"

-- | The caption track\'s type.
data CaptionSnippetTrackKind
    = CSTKAsr
      -- ^ @ASR@
    | CSTKForced
      -- ^ @forced@
    | CSTKStandard
      -- ^ @standard@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CaptionSnippetTrackKind

instance FromText CaptionSnippetTrackKind where
    fromText = \case
        "ASR" -> Just CSTKAsr
        "forced" -> Just CSTKForced
        "standard" -> Just CSTKStandard
        _ -> Nothing

instance ToText CaptionSnippetTrackKind where
    toText = \case
        CSTKAsr -> "ASR"
        CSTKForced -> "forced"
        CSTKStandard -> "standard"

-- | The method or protocol used to transmit the video stream.
data CdnSettingsIngestionType
    = CSITDash
      -- ^ @dash@
    | CSITRtmp
      -- ^ @rtmp@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CdnSettingsIngestionType

instance FromText CdnSettingsIngestionType where
    fromText = \case
        "dash" -> Just CSITDash
        "rtmp" -> Just CSITRtmp
        _ -> Nothing

instance ToText CdnSettingsIngestionType where
    toText = \case
        CSITDash -> "dash"
        CSITRtmp -> "rtmp"

-- | Defines the context of the ping.
data ChannelConversionPingContext
    = CCPCCview
      -- ^ @cview@
    | CCPCSubscribe
      -- ^ @subscribe@
    | CCPCUnsubscribe
      -- ^ @unsubscribe@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelConversionPingContext

instance FromText ChannelConversionPingContext where
    fromText = \case
        "cview" -> Just CCPCCview
        "subscribe" -> Just CCPCSubscribe
        "unsubscribe" -> Just CCPCUnsubscribe
        _ -> Nothing

instance ToText ChannelConversionPingContext where
    toText = \case
        CCPCCview -> "cview"
        CCPCSubscribe -> "subscribe"
        CCPCUnsubscribe -> "unsubscribe"

-- | The style of the channel section.
data ChannelSectionSnippetStyle
    = CSSSChannelsectionStyleUndefined
      -- ^ @channelsectionStyleUndefined@
    | CSSSHorizontalRow
      -- ^ @horizontalRow@
    | CSSSVerticalList
      -- ^ @verticalList@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelSectionSnippetStyle

instance FromText ChannelSectionSnippetStyle where
    fromText = \case
        "channelsectionStyleUndefined" -> Just CSSSChannelsectionStyleUndefined
        "horizontalRow" -> Just CSSSHorizontalRow
        "verticalList" -> Just CSSSVerticalList
        _ -> Nothing

instance ToText ChannelSectionSnippetStyle where
    toText = \case
        CSSSChannelsectionStyleUndefined -> "channelsectionStyleUndefined"
        CSSSHorizontalRow -> "horizontalRow"
        CSSSVerticalList -> "verticalList"

-- | The type of the channel section.
data ChannelSectionSnippetType
    = CSSTAllPlaylists
      -- ^ @allPlaylists@
    | CSSTChannelsectionTypeUndefined
      -- ^ @channelsectionTypeUndefined@
    | CSSTCompletedEvents
      -- ^ @completedEvents@
    | CSSTLikedPlaylists
      -- ^ @likedPlaylists@
    | CSSTLikes
      -- ^ @likes@
    | CSSTLiveEvents
      -- ^ @liveEvents@
    | CSSTMultipleChannels
      -- ^ @multipleChannels@
    | CSSTMultiplePlaylists
      -- ^ @multiplePlaylists@
    | CSSTPopularUploads
      -- ^ @popularUploads@
    | CSSTPostedPlaylists
      -- ^ @postedPlaylists@
    | CSSTPostedVideos
      -- ^ @postedVideos@
    | CSSTRecentActivity
      -- ^ @recentActivity@
    | CSSTRecentPosts
      -- ^ @recentPosts@
    | CSSTRecentUploads
      -- ^ @recentUploads@
    | CSSTSinglePlaylist
      -- ^ @singlePlaylist@
    | CSSTSubscriptions
      -- ^ @subscriptions@
    | CSSTUpcomingEvents
      -- ^ @upcomingEvents@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelSectionSnippetType

instance FromText ChannelSectionSnippetType where
    fromText = \case
        "allPlaylists" -> Just CSSTAllPlaylists
        "channelsectionTypeUndefined" -> Just CSSTChannelsectionTypeUndefined
        "completedEvents" -> Just CSSTCompletedEvents
        "likedPlaylists" -> Just CSSTLikedPlaylists
        "likes" -> Just CSSTLikes
        "liveEvents" -> Just CSSTLiveEvents
        "multipleChannels" -> Just CSSTMultipleChannels
        "multiplePlaylists" -> Just CSSTMultiplePlaylists
        "popularUploads" -> Just CSSTPopularUploads
        "postedPlaylists" -> Just CSSTPostedPlaylists
        "postedVideos" -> Just CSSTPostedVideos
        "recentActivity" -> Just CSSTRecentActivity
        "recentPosts" -> Just CSSTRecentPosts
        "recentUploads" -> Just CSSTRecentUploads
        "singlePlaylist" -> Just CSSTSinglePlaylist
        "subscriptions" -> Just CSSTSubscriptions
        "upcomingEvents" -> Just CSSTUpcomingEvents
        _ -> Nothing

instance ToText ChannelSectionSnippetType where
    toText = \case
        CSSTAllPlaylists -> "allPlaylists"
        CSSTChannelsectionTypeUndefined -> "channelsectionTypeUndefined"
        CSSTCompletedEvents -> "completedEvents"
        CSSTLikedPlaylists -> "likedPlaylists"
        CSSTLikes -> "likes"
        CSSTLiveEvents -> "liveEvents"
        CSSTMultipleChannels -> "multipleChannels"
        CSSTMultiplePlaylists -> "multiplePlaylists"
        CSSTPopularUploads -> "popularUploads"
        CSSTPostedPlaylists -> "postedPlaylists"
        CSSTPostedVideos -> "postedVideos"
        CSSTRecentActivity -> "recentActivity"
        CSSTRecentPosts -> "recentPosts"
        CSSTRecentUploads -> "recentUploads"
        CSSTSinglePlaylist -> "singlePlaylist"
        CSSTSubscriptions -> "subscriptions"
        CSSTUpcomingEvents -> "upcomingEvents"

-- | The long uploads status of this channel. See
data ChannelStatusLongUploadsStatus
    = CSLUSAllowed
      -- ^ @allowed@
    | CSLUSDisallowed
      -- ^ @disallowed@
    | CSLUSEligible
      -- ^ @eligible@
    | CSLUSLongUploadsUnspecified
      -- ^ @longUploadsUnspecified@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelStatusLongUploadsStatus

instance FromText ChannelStatusLongUploadsStatus where
    fromText = \case
        "allowed" -> Just CSLUSAllowed
        "disallowed" -> Just CSLUSDisallowed
        "eligible" -> Just CSLUSEligible
        "longUploadsUnspecified" -> Just CSLUSLongUploadsUnspecified
        _ -> Nothing

instance ToText ChannelStatusLongUploadsStatus where
    toText = \case
        CSLUSAllowed -> "allowed"
        CSLUSDisallowed -> "disallowed"
        CSLUSEligible -> "eligible"
        CSLUSLongUploadsUnspecified -> "longUploadsUnspecified"

-- | Privacy status of the channel.
data ChannelStatusPrivacyStatus
    = CSPSPrivate
      -- ^ @private@
    | CSPSPublic
      -- ^ @public@
    | CSPSUnlisted
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelStatusPrivacyStatus

instance FromText ChannelStatusPrivacyStatus where
    fromText = \case
        "private" -> Just CSPSPrivate
        "public" -> Just CSPSPublic
        "unlisted" -> Just CSPSUnlisted
        _ -> Nothing

instance ToText ChannelStatusPrivacyStatus where
    toText = \case
        CSPSPrivate -> "private"
        CSPSPublic -> "public"
        CSPSUnlisted -> "unlisted"

-- | The comment\'s moderation status. Will not be set if the comments were
-- requested through the id filter.
data CommentSnippetModerationStatus
    = CSMSHeldForReview
      -- ^ @heldForReview@
    | CSMSLikelySpam
      -- ^ @likelySpam@
    | CSMSPublished
      -- ^ @published@
    | CSMSRejected
      -- ^ @rejected@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentSnippetModerationStatus

instance FromText CommentSnippetModerationStatus where
    fromText = \case
        "heldForReview" -> Just CSMSHeldForReview
        "likelySpam" -> Just CSMSLikelySpam
        "published" -> Just CSMSPublished
        "rejected" -> Just CSMSRejected
        _ -> Nothing

instance ToText CommentSnippetModerationStatus where
    toText = \case
        CSMSHeldForReview -> "heldForReview"
        CSMSLikelySpam -> "likelySpam"
        CSMSPublished -> "published"
        CSMSRejected -> "rejected"

-- | The rating the viewer has given to this comment. For the time being this
-- will never return RATE_TYPE_DISLIKE and instead return RATE_TYPE_NONE.
-- This may change in the future.
data CommentSnippetViewerRating
    = CSVRDislike
      -- ^ @dislike@
    | CSVRLike
      -- ^ @like@
    | CSVRNone
      -- ^ @none@
    | CSVRUnspecified
      -- ^ @unspecified@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentSnippetViewerRating

instance FromText CommentSnippetViewerRating where
    fromText = \case
        "dislike" -> Just CSVRDislike
        "like" -> Just CSVRLike
        "none" -> Just CSVRNone
        "unspecified" -> Just CSVRUnspecified
        _ -> Nothing

instance ToText CommentSnippetViewerRating where
    toText = \case
        CSVRDislike -> "dislike"
        CSVRLike -> "like"
        CSVRNone -> "none"
        CSVRUnspecified -> "unspecified"

-- | The video\'s Australian Classification Board (ACB) or Australian
-- Communications and Media Authority (ACMA) rating. ACMA ratings are used
-- to classify children\'s television programming.
data ContentRatingAcbRating
    = CRARAcbC
      -- ^ @acbC@
    | CRARAcbE
      -- ^ @acbE@
    | CRARAcbG
      -- ^ @acbG@
    | CRARAcbM
      -- ^ @acbM@
    | CRARAcbMa15plus
      -- ^ @acbMa15plus@
    | CRARAcbP
      -- ^ @acbP@
    | CRARAcbPg
      -- ^ @acbPg@
    | CRARAcbR18plus
      -- ^ @acbR18plus@
    | CRARAcbUnrated
      -- ^ @acbUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingAcbRating

instance FromText ContentRatingAcbRating where
    fromText = \case
        "acbC" -> Just CRARAcbC
        "acbE" -> Just CRARAcbE
        "acbG" -> Just CRARAcbG
        "acbM" -> Just CRARAcbM
        "acbMa15plus" -> Just CRARAcbMa15plus
        "acbP" -> Just CRARAcbP
        "acbPg" -> Just CRARAcbPg
        "acbR18plus" -> Just CRARAcbR18plus
        "acbUnrated" -> Just CRARAcbUnrated
        _ -> Nothing

instance ToText ContentRatingAcbRating where
    toText = \case
        CRARAcbC -> "acbC"
        CRARAcbE -> "acbE"
        CRARAcbG -> "acbG"
        CRARAcbM -> "acbM"
        CRARAcbMa15plus -> "acbMa15plus"
        CRARAcbP -> "acbP"
        CRARAcbPg -> "acbPg"
        CRARAcbR18plus -> "acbR18plus"
        CRARAcbUnrated -> "acbUnrated"

-- | The video\'s rating from Italy\'s Autorità per le Garanzie nelle
-- Comunicazioni (AGCOM).
data ContentRatingAgcomRating
    = CRARAgcomT
      -- ^ @agcomT@
    | CRARAgcomUnrated
      -- ^ @agcomUnrated@
    | CRARAGCOMVM14
      -- ^ @agcomVm14@
    | CRARAGCOMVM18
      -- ^ @agcomVm18@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingAgcomRating

instance FromText ContentRatingAgcomRating where
    fromText = \case
        "agcomT" -> Just CRARAgcomT
        "agcomUnrated" -> Just CRARAgcomUnrated
        "agcomVm14" -> Just CRARAGCOMVM14
        "agcomVm18" -> Just CRARAGCOMVM18
        _ -> Nothing

instance ToText ContentRatingAgcomRating where
    toText = \case
        CRARAgcomT -> "agcomT"
        CRARAgcomUnrated -> "agcomUnrated"
        CRARAGCOMVM14 -> "agcomVm14"
        CRARAGCOMVM18 -> "agcomVm18"

-- | The video\'s Anatel (Asociación Nacional de Televisión) rating for
-- Chilean television.
data ContentRatingAnatelRating
    = CRARAnatelA
      -- ^ @anatelA@
    | CRARAnatelF
      -- ^ @anatelF@
    | CRARAnatelI
      -- ^ @anatelI@
    | CRARANATELI10
      -- ^ @anatelI10@
    | CRARANATELI12
      -- ^ @anatelI12@
    | CRARANATELI7
      -- ^ @anatelI7@
    | CRARAnatelR
      -- ^ @anatelR@
    | CRARAnatelUnrated
      -- ^ @anatelUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingAnatelRating

instance FromText ContentRatingAnatelRating where
    fromText = \case
        "anatelA" -> Just CRARAnatelA
        "anatelF" -> Just CRARAnatelF
        "anatelI" -> Just CRARAnatelI
        "anatelI10" -> Just CRARANATELI10
        "anatelI12" -> Just CRARANATELI12
        "anatelI7" -> Just CRARANATELI7
        "anatelR" -> Just CRARAnatelR
        "anatelUnrated" -> Just CRARAnatelUnrated
        _ -> Nothing

instance ToText ContentRatingAnatelRating where
    toText = \case
        CRARAnatelA -> "anatelA"
        CRARAnatelF -> "anatelF"
        CRARAnatelI -> "anatelI"
        CRARANATELI10 -> "anatelI10"
        CRARANATELI12 -> "anatelI12"
        CRARANATELI7 -> "anatelI7"
        CRARAnatelR -> "anatelR"
        CRARAnatelUnrated -> "anatelUnrated"

-- | The video\'s British Board of Film Classification (BBFC) rating.
data ContentRatingBbfcRating
    = CRBRBBFC12
      -- ^ @bbfc12@
    | CRBRBbfc12a
      -- ^ @bbfc12a@
    | CRBRBBFC15
      -- ^ @bbfc15@
    | CRBRBBFC18
      -- ^ @bbfc18@
    | CRBRBbfcPg
      -- ^ @bbfcPg@
    | CRBRBBFCR18
      -- ^ @bbfcR18@
    | CRBRBbfcU
      -- ^ @bbfcU@
    | CRBRBbfcUnrated
      -- ^ @bbfcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingBbfcRating

instance FromText ContentRatingBbfcRating where
    fromText = \case
        "bbfc12" -> Just CRBRBBFC12
        "bbfc12a" -> Just CRBRBbfc12a
        "bbfc15" -> Just CRBRBBFC15
        "bbfc18" -> Just CRBRBBFC18
        "bbfcPg" -> Just CRBRBbfcPg
        "bbfcR18" -> Just CRBRBBFCR18
        "bbfcU" -> Just CRBRBbfcU
        "bbfcUnrated" -> Just CRBRBbfcUnrated
        _ -> Nothing

instance ToText ContentRatingBbfcRating where
    toText = \case
        CRBRBBFC12 -> "bbfc12"
        CRBRBbfc12a -> "bbfc12a"
        CRBRBBFC15 -> "bbfc15"
        CRBRBBFC18 -> "bbfc18"
        CRBRBbfcPg -> "bbfcPg"
        CRBRBBFCR18 -> "bbfcR18"
        CRBRBbfcU -> "bbfcU"
        CRBRBbfcUnrated -> "bbfcUnrated"

-- | The video\'s rating from Thailand\'s Board of Film and Video Censors.
data ContentRatingBfvcRating
    = CRBRBFVC13
      -- ^ @bfvc13@
    | CRBRBFVC15
      -- ^ @bfvc15@
    | CRBRBFVC18
      -- ^ @bfvc18@
    | CRBRBFVC20
      -- ^ @bfvc20@
    | CRBRBfvcB
      -- ^ @bfvcB@
    | CRBRBfvcE
      -- ^ @bfvcE@
    | CRBRBfvcG
      -- ^ @bfvcG@
    | CRBRBfvcUnrated
      -- ^ @bfvcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingBfvcRating

instance FromText ContentRatingBfvcRating where
    fromText = \case
        "bfvc13" -> Just CRBRBFVC13
        "bfvc15" -> Just CRBRBFVC15
        "bfvc18" -> Just CRBRBFVC18
        "bfvc20" -> Just CRBRBFVC20
        "bfvcB" -> Just CRBRBfvcB
        "bfvcE" -> Just CRBRBfvcE
        "bfvcG" -> Just CRBRBfvcG
        "bfvcUnrated" -> Just CRBRBfvcUnrated
        _ -> Nothing

instance ToText ContentRatingBfvcRating where
    toText = \case
        CRBRBFVC13 -> "bfvc13"
        CRBRBFVC15 -> "bfvc15"
        CRBRBFVC18 -> "bfvc18"
        CRBRBFVC20 -> "bfvc20"
        CRBRBfvcB -> "bfvcB"
        CRBRBfvcE -> "bfvcE"
        CRBRBfvcG -> "bfvcG"
        CRBRBfvcUnrated -> "bfvcUnrated"

-- | The video\'s rating from the Austrian Board of Media Classification
-- (Bundesministerium für Unterricht, Kunst und Kultur).
data ContentRatingBmukkRating
    = CRBRBMUKK10
      -- ^ @bmukk10@
    | CRBRBMUKK12
      -- ^ @bmukk12@
    | CRBRBMUKK14
      -- ^ @bmukk14@
    | CRBRBMUKK16
      -- ^ @bmukk16@
    | CRBRBMUKK6
      -- ^ @bmukk6@
    | CRBRBMUKK8
      -- ^ @bmukk8@
    | CRBRBmukkAa
      -- ^ @bmukkAa@
    | CRBRBmukkUnrated
      -- ^ @bmukkUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingBmukkRating

instance FromText ContentRatingBmukkRating where
    fromText = \case
        "bmukk10" -> Just CRBRBMUKK10
        "bmukk12" -> Just CRBRBMUKK12
        "bmukk14" -> Just CRBRBMUKK14
        "bmukk16" -> Just CRBRBMUKK16
        "bmukk6" -> Just CRBRBMUKK6
        "bmukk8" -> Just CRBRBMUKK8
        "bmukkAa" -> Just CRBRBmukkAa
        "bmukkUnrated" -> Just CRBRBmukkUnrated
        _ -> Nothing

instance ToText ContentRatingBmukkRating where
    toText = \case
        CRBRBMUKK10 -> "bmukk10"
        CRBRBMUKK12 -> "bmukk12"
        CRBRBMUKK14 -> "bmukk14"
        CRBRBMUKK16 -> "bmukk16"
        CRBRBMUKK6 -> "bmukk6"
        CRBRBMUKK8 -> "bmukk8"
        CRBRBmukkAa -> "bmukkAa"
        CRBRBmukkUnrated -> "bmukkUnrated"

-- | Rating system for Canadian TV - Canadian TV Classification System The
-- video\'s rating from the Canadian Radio-Television and
-- Telecommunications Commission (CRTC) for Canadian English-language
-- broadcasts. For more information, see the Canadian Broadcast Standards
-- Council website.
data ContentRatingCatvRating
    = CRCRCatv14plus
      -- ^ @catv14plus@
    | CRCRCatv18plus
      -- ^ @catv18plus@
    | CRCRCatvC
      -- ^ @catvC@
    | CRCRCATVC8
      -- ^ @catvC8@
    | CRCRCatvG
      -- ^ @catvG@
    | CRCRCatvPg
      -- ^ @catvPg@
    | CRCRCatvUnrated
      -- ^ @catvUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCatvRating

instance FromText ContentRatingCatvRating where
    fromText = \case
        "catv14plus" -> Just CRCRCatv14plus
        "catv18plus" -> Just CRCRCatv18plus
        "catvC" -> Just CRCRCatvC
        "catvC8" -> Just CRCRCATVC8
        "catvG" -> Just CRCRCatvG
        "catvPg" -> Just CRCRCatvPg
        "catvUnrated" -> Just CRCRCatvUnrated
        _ -> Nothing

instance ToText ContentRatingCatvRating where
    toText = \case
        CRCRCatv14plus -> "catv14plus"
        CRCRCatv18plus -> "catv18plus"
        CRCRCatvC -> "catvC"
        CRCRCATVC8 -> "catvC8"
        CRCRCatvG -> "catvG"
        CRCRCatvPg -> "catvPg"
        CRCRCatvUnrated -> "catvUnrated"

-- | The video\'s rating from the Canadian Radio-Television and
-- Telecommunications Commission (CRTC) for Canadian French-language
-- broadcasts. For more information, see the Canadian Broadcast Standards
-- Council website.
data ContentRatingCatvfrRating
    = CRCRCatvfr13plus
      -- ^ @catvfr13plus@
    | CRCRCatvfr16plus
      -- ^ @catvfr16plus@
    | CRCRCatvfr18plus
      -- ^ @catvfr18plus@
    | CRCRCatvfr8plus
      -- ^ @catvfr8plus@
    | CRCRCatvfrG
      -- ^ @catvfrG@
    | CRCRCatvfrUnrated
      -- ^ @catvfrUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCatvfrRating

instance FromText ContentRatingCatvfrRating where
    fromText = \case
        "catvfr13plus" -> Just CRCRCatvfr13plus
        "catvfr16plus" -> Just CRCRCatvfr16plus
        "catvfr18plus" -> Just CRCRCatvfr18plus
        "catvfr8plus" -> Just CRCRCatvfr8plus
        "catvfrG" -> Just CRCRCatvfrG
        "catvfrUnrated" -> Just CRCRCatvfrUnrated
        _ -> Nothing

instance ToText ContentRatingCatvfrRating where
    toText = \case
        CRCRCatvfr13plus -> "catvfr13plus"
        CRCRCatvfr16plus -> "catvfr16plus"
        CRCRCatvfr18plus -> "catvfr18plus"
        CRCRCatvfr8plus -> "catvfr8plus"
        CRCRCatvfrG -> "catvfrG"
        CRCRCatvfrUnrated -> "catvfrUnrated"

-- | The video\'s Central Board of Film Certification (CBFC - India) rating.
data ContentRatingCbfcRating
    = CRCRCbfcA
      -- ^ @cbfcA@
    | CRCRCbfcS
      -- ^ @cbfcS@
    | CRCRCbfcU
      -- ^ @cbfcU@
    | CRCRCbfcUA
      -- ^ @cbfcUA@
    | CRCRCbfcUnrated
      -- ^ @cbfcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCbfcRating

instance FromText ContentRatingCbfcRating where
    fromText = \case
        "cbfcA" -> Just CRCRCbfcA
        "cbfcS" -> Just CRCRCbfcS
        "cbfcU" -> Just CRCRCbfcU
        "cbfcUA" -> Just CRCRCbfcUA
        "cbfcUnrated" -> Just CRCRCbfcUnrated
        _ -> Nothing

instance ToText ContentRatingCbfcRating where
    toText = \case
        CRCRCbfcA -> "cbfcA"
        CRCRCbfcS -> "cbfcS"
        CRCRCbfcU -> "cbfcU"
        CRCRCbfcUA -> "cbfcUA"
        CRCRCbfcUnrated -> "cbfcUnrated"

-- | The video\'s Consejo de Calificación Cinematográfica (Chile) rating.
data ContentRatingCccRating
    = CRCRCCC14
      -- ^ @ccc14@
    | CRCRCCC18
      -- ^ @ccc18@
    | CRCRCcc18s
      -- ^ @ccc18s@
    | CRCRCcc18v
      -- ^ @ccc18v@
    | CRCRCCC6
      -- ^ @ccc6@
    | CRCRCccTe
      -- ^ @cccTe@
    | CRCRCccUnrated
      -- ^ @cccUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCccRating

instance FromText ContentRatingCccRating where
    fromText = \case
        "ccc14" -> Just CRCRCCC14
        "ccc18" -> Just CRCRCCC18
        "ccc18s" -> Just CRCRCcc18s
        "ccc18v" -> Just CRCRCcc18v
        "ccc6" -> Just CRCRCCC6
        "cccTe" -> Just CRCRCccTe
        "cccUnrated" -> Just CRCRCccUnrated
        _ -> Nothing

instance ToText ContentRatingCccRating where
    toText = \case
        CRCRCCC14 -> "ccc14"
        CRCRCCC18 -> "ccc18"
        CRCRCcc18s -> "ccc18s"
        CRCRCcc18v -> "ccc18v"
        CRCRCCC6 -> "ccc6"
        CRCRCccTe -> "cccTe"
        CRCRCccUnrated -> "cccUnrated"

-- | The video\'s rating from Portugal\'s Comissão de Classificação de
-- Espect´culos.
data ContentRatingCceRating
    = CRCRCCEM12
      -- ^ @cceM12@
    | CRCRCCEM16
      -- ^ @cceM16@
    | CRCRCCEM18
      -- ^ @cceM18@
    | CRCRCCEM4
      -- ^ @cceM4@
    | CRCRCCEM6
      -- ^ @cceM6@
    | CRCRCceUnrated
      -- ^ @cceUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCceRating

instance FromText ContentRatingCceRating where
    fromText = \case
        "cceM12" -> Just CRCRCCEM12
        "cceM16" -> Just CRCRCCEM16
        "cceM18" -> Just CRCRCCEM18
        "cceM4" -> Just CRCRCCEM4
        "cceM6" -> Just CRCRCCEM6
        "cceUnrated" -> Just CRCRCceUnrated
        _ -> Nothing

instance ToText ContentRatingCceRating where
    toText = \case
        CRCRCCEM12 -> "cceM12"
        CRCRCCEM16 -> "cceM16"
        CRCRCCEM18 -> "cceM18"
        CRCRCCEM4 -> "cceM4"
        CRCRCCEM6 -> "cceM6"
        CRCRCceUnrated -> "cceUnrated"

-- | The video\'s rating in Switzerland.
data ContentRatingChfilmRating
    = CRCRCHFILM0
      -- ^ @chfilm0@
    | CRCRCHFILM12
      -- ^ @chfilm12@
    | CRCRCHFILM16
      -- ^ @chfilm16@
    | CRCRCHFILM18
      -- ^ @chfilm18@
    | CRCRCHFILM6
      -- ^ @chfilm6@
    | CRCRChfilmUnrated
      -- ^ @chfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingChfilmRating

instance FromText ContentRatingChfilmRating where
    fromText = \case
        "chfilm0" -> Just CRCRCHFILM0
        "chfilm12" -> Just CRCRCHFILM12
        "chfilm16" -> Just CRCRCHFILM16
        "chfilm18" -> Just CRCRCHFILM18
        "chfilm6" -> Just CRCRCHFILM6
        "chfilmUnrated" -> Just CRCRChfilmUnrated
        _ -> Nothing

instance ToText ContentRatingChfilmRating where
    toText = \case
        CRCRCHFILM0 -> "chfilm0"
        CRCRCHFILM12 -> "chfilm12"
        CRCRCHFILM16 -> "chfilm16"
        CRCRCHFILM18 -> "chfilm18"
        CRCRCHFILM6 -> "chfilm6"
        CRCRChfilmUnrated -> "chfilmUnrated"

-- | The video\'s Canadian Home Video Rating System (CHVRS) rating.
data ContentRatingChvrsRating
    = CRCRChvrs14a
      -- ^ @chvrs14a@
    | CRCRChvrs18a
      -- ^ @chvrs18a@
    | CRCRChvrsE
      -- ^ @chvrsE@
    | CRCRChvrsG
      -- ^ @chvrsG@
    | CRCRChvrsPg
      -- ^ @chvrsPg@
    | CRCRChvrsR
      -- ^ @chvrsR@
    | CRCRChvrsUnrated
      -- ^ @chvrsUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingChvrsRating

instance FromText ContentRatingChvrsRating where
    fromText = \case
        "chvrs14a" -> Just CRCRChvrs14a
        "chvrs18a" -> Just CRCRChvrs18a
        "chvrsE" -> Just CRCRChvrsE
        "chvrsG" -> Just CRCRChvrsG
        "chvrsPg" -> Just CRCRChvrsPg
        "chvrsR" -> Just CRCRChvrsR
        "chvrsUnrated" -> Just CRCRChvrsUnrated
        _ -> Nothing

instance ToText ContentRatingChvrsRating where
    toText = \case
        CRCRChvrs14a -> "chvrs14a"
        CRCRChvrs18a -> "chvrs18a"
        CRCRChvrsE -> "chvrsE"
        CRCRChvrsG -> "chvrsG"
        CRCRChvrsPg -> "chvrsPg"
        CRCRChvrsR -> "chvrsR"
        CRCRChvrsUnrated -> "chvrsUnrated"

-- | The video\'s rating from the Commission de Contrôle des Films (Belgium).
data ContentRatingCicfRating
    = CRCRCicfE
      -- ^ @cicfE@
    | CRCRCicfKntEna
      -- ^ @cicfKntEna@
    | CRCRCicfKtEa
      -- ^ @cicfKtEa@
    | CRCRCicfUnrated
      -- ^ @cicfUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCicfRating

instance FromText ContentRatingCicfRating where
    fromText = \case
        "cicfE" -> Just CRCRCicfE
        "cicfKntEna" -> Just CRCRCicfKntEna
        "cicfKtEa" -> Just CRCRCicfKtEa
        "cicfUnrated" -> Just CRCRCicfUnrated
        _ -> Nothing

instance ToText ContentRatingCicfRating where
    toText = \case
        CRCRCicfE -> "cicfE"
        CRCRCicfKntEna -> "cicfKntEna"
        CRCRCicfKtEa -> "cicfKtEa"
        CRCRCicfUnrated -> "cicfUnrated"

-- | The video\'s rating from Romania\'s CONSILIUL NATIONAL AL
-- AUDIOVIZUALULUI (CNA).
data ContentRatingCnaRating
    = CRCRCNA12
      -- ^ @cna12@
    | CRCRCNA15
      -- ^ @cna15@
    | CRCRCNA18
      -- ^ @cna18@
    | CRCRCna18plus
      -- ^ @cna18plus@
    | CRCRCnaAp
      -- ^ @cnaAp@
    | CRCRCnaUnrated
      -- ^ @cnaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCnaRating

instance FromText ContentRatingCnaRating where
    fromText = \case
        "cna12" -> Just CRCRCNA12
        "cna15" -> Just CRCRCNA15
        "cna18" -> Just CRCRCNA18
        "cna18plus" -> Just CRCRCna18plus
        "cnaAp" -> Just CRCRCnaAp
        "cnaUnrated" -> Just CRCRCnaUnrated
        _ -> Nothing

instance ToText ContentRatingCnaRating where
    toText = \case
        CRCRCNA12 -> "cna12"
        CRCRCNA15 -> "cna15"
        CRCRCNA18 -> "cna18"
        CRCRCna18plus -> "cna18plus"
        CRCRCnaAp -> "cnaAp"
        CRCRCnaUnrated -> "cnaUnrated"

-- | Rating system in France - Commission de classification cinematographique
data ContentRatingCncRating
    = CRCRCNC10
      -- ^ @cnc10@
    | CRCRCNC12
      -- ^ @cnc12@
    | CRCRCNC16
      -- ^ @cnc16@
    | CRCRCNC18
      -- ^ @cnc18@
    | CRCRCncE
      -- ^ @cncE@
    | CRCRCncT
      -- ^ @cncT@
    | CRCRCncUnrated
      -- ^ @cncUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCncRating

instance FromText ContentRatingCncRating where
    fromText = \case
        "cnc10" -> Just CRCRCNC10
        "cnc12" -> Just CRCRCNC12
        "cnc16" -> Just CRCRCNC16
        "cnc18" -> Just CRCRCNC18
        "cncE" -> Just CRCRCncE
        "cncT" -> Just CRCRCncT
        "cncUnrated" -> Just CRCRCncUnrated
        _ -> Nothing

instance ToText ContentRatingCncRating where
    toText = \case
        CRCRCNC10 -> "cnc10"
        CRCRCNC12 -> "cnc12"
        CRCRCNC16 -> "cnc16"
        CRCRCNC18 -> "cnc18"
        CRCRCncE -> "cncE"
        CRCRCncT -> "cncT"
        CRCRCncUnrated -> "cncUnrated"

-- | The video\'s rating from France\'s Conseil supérieur de l?audiovisuel,
-- which rates broadcast content.
data ContentRatingCsaRating
    = CRCRCSA10
      -- ^ @csa10@
    | CRCRCSA12
      -- ^ @csa12@
    | CRCRCSA16
      -- ^ @csa16@
    | CRCRCSA18
      -- ^ @csa18@
    | CRCRCsaInterdiction
      -- ^ @csaInterdiction@
    | CRCRCsaT
      -- ^ @csaT@
    | CRCRCsaUnrated
      -- ^ @csaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCsaRating

instance FromText ContentRatingCsaRating where
    fromText = \case
        "csa10" -> Just CRCRCSA10
        "csa12" -> Just CRCRCSA12
        "csa16" -> Just CRCRCSA16
        "csa18" -> Just CRCRCSA18
        "csaInterdiction" -> Just CRCRCsaInterdiction
        "csaT" -> Just CRCRCsaT
        "csaUnrated" -> Just CRCRCsaUnrated
        _ -> Nothing

instance ToText ContentRatingCsaRating where
    toText = \case
        CRCRCSA10 -> "csa10"
        CRCRCSA12 -> "csa12"
        CRCRCSA16 -> "csa16"
        CRCRCSA18 -> "csa18"
        CRCRCsaInterdiction -> "csaInterdiction"
        CRCRCsaT -> "csaT"
        CRCRCsaUnrated -> "csaUnrated"

-- | The video\'s rating from Luxembourg\'s Commission de surveillance de la
-- classification des films (CSCF).
data ContentRatingCscfRating
    = CRCRCSCF12
      -- ^ @cscf12@
    | CRCRCSCF16
      -- ^ @cscf16@
    | CRCRCSCF18
      -- ^ @cscf18@
    | CRCRCSCF6
      -- ^ @cscf6@
    | CRCRCSCF9
      -- ^ @cscf9@
    | CRCRCscfA
      -- ^ @cscfA@
    | CRCRCscfAl
      -- ^ @cscfAl@
    | CRCRCscfUnrated
      -- ^ @cscfUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCscfRating

instance FromText ContentRatingCscfRating where
    fromText = \case
        "cscf12" -> Just CRCRCSCF12
        "cscf16" -> Just CRCRCSCF16
        "cscf18" -> Just CRCRCSCF18
        "cscf6" -> Just CRCRCSCF6
        "cscf9" -> Just CRCRCSCF9
        "cscfA" -> Just CRCRCscfA
        "cscfAl" -> Just CRCRCscfAl
        "cscfUnrated" -> Just CRCRCscfUnrated
        _ -> Nothing

instance ToText ContentRatingCscfRating where
    toText = \case
        CRCRCSCF12 -> "cscf12"
        CRCRCSCF16 -> "cscf16"
        CRCRCSCF18 -> "cscf18"
        CRCRCSCF6 -> "cscf6"
        CRCRCSCF9 -> "cscf9"
        CRCRCscfA -> "cscfA"
        CRCRCscfAl -> "cscfAl"
        CRCRCscfUnrated -> "cscfUnrated"

-- | The video\'s rating in the Czech Republic.
data ContentRatingCzfilmRating
    = CRCRCZFILM12
      -- ^ @czfilm12@
    | CRCRCZFILM14
      -- ^ @czfilm14@
    | CRCRCZFILM18
      -- ^ @czfilm18@
    | CRCRCzfilmU
      -- ^ @czfilmU@
    | CRCRCzfilmUnrated
      -- ^ @czfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCzfilmRating

instance FromText ContentRatingCzfilmRating where
    fromText = \case
        "czfilm12" -> Just CRCRCZFILM12
        "czfilm14" -> Just CRCRCZFILM14
        "czfilm18" -> Just CRCRCZFILM18
        "czfilmU" -> Just CRCRCzfilmU
        "czfilmUnrated" -> Just CRCRCzfilmUnrated
        _ -> Nothing

instance ToText ContentRatingCzfilmRating where
    toText = \case
        CRCRCZFILM12 -> "czfilm12"
        CRCRCZFILM14 -> "czfilm14"
        CRCRCZFILM18 -> "czfilm18"
        CRCRCzfilmU -> "czfilmU"
        CRCRCzfilmUnrated -> "czfilmUnrated"

-- | The video\'s Departamento de Justiça, Classificação, Qualificação e
-- Títulos (DJCQT - Brazil) rating.
data ContentRatingDjctqRating
    = CRDRDJCTQ10
      -- ^ @djctq10@
    | CRDRDJCTQ12
      -- ^ @djctq12@
    | CRDRDJCTQ14
      -- ^ @djctq14@
    | CRDRDJCTQ16
      -- ^ @djctq16@
    | CRDRDJCTQ18
      -- ^ @djctq18@
    | CRDRDjctqL
      -- ^ @djctqL@
    | CRDRDjctqUnrated
      -- ^ @djctqUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingDjctqRating

instance FromText ContentRatingDjctqRating where
    fromText = \case
        "djctq10" -> Just CRDRDJCTQ10
        "djctq12" -> Just CRDRDJCTQ12
        "djctq14" -> Just CRDRDJCTQ14
        "djctq16" -> Just CRDRDJCTQ16
        "djctq18" -> Just CRDRDJCTQ18
        "djctqL" -> Just CRDRDjctqL
        "djctqUnrated" -> Just CRDRDjctqUnrated
        _ -> Nothing

instance ToText ContentRatingDjctqRating where
    toText = \case
        CRDRDJCTQ10 -> "djctq10"
        CRDRDJCTQ12 -> "djctq12"
        CRDRDJCTQ14 -> "djctq14"
        CRDRDJCTQ16 -> "djctq16"
        CRDRDJCTQ18 -> "djctq18"
        CRDRDjctqL -> "djctqL"
        CRDRDjctqUnrated -> "djctqUnrated"

-- | The video\'s rating in Estonia.
data ContentRatingEefilmRating
    = CREREEFILMK12
      -- ^ @eefilmK12@
    | CREREEFILMK14
      -- ^ @eefilmK14@
    | CREREEFILMK16
      -- ^ @eefilmK16@
    | CREREEFILMK6
      -- ^ @eefilmK6@
    | CREREefilmL
      -- ^ @eefilmL@
    | CREREEFILMMS12
      -- ^ @eefilmMs12@
    | CREREEFILMMS6
      -- ^ @eefilmMs6@
    | CREREefilmPere
      -- ^ @eefilmPere@
    | CREREefilmUnrated
      -- ^ @eefilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingEefilmRating

instance FromText ContentRatingEefilmRating where
    fromText = \case
        "eefilmK12" -> Just CREREEFILMK12
        "eefilmK14" -> Just CREREEFILMK14
        "eefilmK16" -> Just CREREEFILMK16
        "eefilmK6" -> Just CREREEFILMK6
        "eefilmL" -> Just CREREefilmL
        "eefilmMs12" -> Just CREREEFILMMS12
        "eefilmMs6" -> Just CREREEFILMMS6
        "eefilmPere" -> Just CREREefilmPere
        "eefilmUnrated" -> Just CREREefilmUnrated
        _ -> Nothing

instance ToText ContentRatingEefilmRating where
    toText = \case
        CREREEFILMK12 -> "eefilmK12"
        CREREEFILMK14 -> "eefilmK14"
        CREREEFILMK16 -> "eefilmK16"
        CREREEFILMK6 -> "eefilmK6"
        CREREefilmL -> "eefilmL"
        CREREEFILMMS12 -> "eefilmMs12"
        CREREEFILMMS6 -> "eefilmMs6"
        CREREefilmPere -> "eefilmPere"
        CREREefilmUnrated -> "eefilmUnrated"

-- | The video\'s rating in Egypt.
data ContentRatingEgfilmRating
    = CREREGFILM18
      -- ^ @egfilm18@
    | CREREgfilmBn
      -- ^ @egfilmBn@
    | CREREgfilmGn
      -- ^ @egfilmGn@
    | CREREgfilmUnrated
      -- ^ @egfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingEgfilmRating

instance FromText ContentRatingEgfilmRating where
    fromText = \case
        "egfilm18" -> Just CREREGFILM18
        "egfilmBn" -> Just CREREgfilmBn
        "egfilmGn" -> Just CREREgfilmGn
        "egfilmUnrated" -> Just CREREgfilmUnrated
        _ -> Nothing

instance ToText ContentRatingEgfilmRating where
    toText = \case
        CREREGFILM18 -> "egfilm18"
        CREREgfilmBn -> "egfilmBn"
        CREREgfilmGn -> "egfilmGn"
        CREREgfilmUnrated -> "egfilmUnrated"

-- | The video\'s Eirin (映倫) rating. Eirin is the Japanese rating system.
data ContentRatingEirinRating
    = CREREirinG
      -- ^ @eirinG@
    | CREREIRINPG12
      -- ^ @eirinPg12@
    | CREREirinR15plus
      -- ^ @eirinR15plus@
    | CREREirinR18plus
      -- ^ @eirinR18plus@
    | CREREirinUnrated
      -- ^ @eirinUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingEirinRating

instance FromText ContentRatingEirinRating where
    fromText = \case
        "eirinG" -> Just CREREirinG
        "eirinPg12" -> Just CREREIRINPG12
        "eirinR15plus" -> Just CREREirinR15plus
        "eirinR18plus" -> Just CREREirinR18plus
        "eirinUnrated" -> Just CREREirinUnrated
        _ -> Nothing

instance ToText ContentRatingEirinRating where
    toText = \case
        CREREirinG -> "eirinG"
        CREREIRINPG12 -> "eirinPg12"
        CREREirinR15plus -> "eirinR15plus"
        CREREirinR18plus -> "eirinR18plus"
        CREREirinUnrated -> "eirinUnrated"

-- | The video\'s rating from Malaysia\'s Film Censorship Board.
data ContentRatingFcbmRating
    = CRFRFCBM18
      -- ^ @fcbm18@
    | CRFRFcbm18pa
      -- ^ @fcbm18pa@
    | CRFRFcbm18pl
      -- ^ @fcbm18pl@
    | CRFRFcbm18sg
      -- ^ @fcbm18sg@
    | CRFRFcbm18sx
      -- ^ @fcbm18sx@
    | CRFRFCBMP13
      -- ^ @fcbmP13@
    | CRFRFCBMPG13
      -- ^ @fcbmPg13@
    | CRFRFcbmU
      -- ^ @fcbmU@
    | CRFRFcbmUnrated
      -- ^ @fcbmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingFcbmRating

instance FromText ContentRatingFcbmRating where
    fromText = \case
        "fcbm18" -> Just CRFRFCBM18
        "fcbm18pa" -> Just CRFRFcbm18pa
        "fcbm18pl" -> Just CRFRFcbm18pl
        "fcbm18sg" -> Just CRFRFcbm18sg
        "fcbm18sx" -> Just CRFRFcbm18sx
        "fcbmP13" -> Just CRFRFCBMP13
        "fcbmPg13" -> Just CRFRFCBMPG13
        "fcbmU" -> Just CRFRFcbmU
        "fcbmUnrated" -> Just CRFRFcbmUnrated
        _ -> Nothing

instance ToText ContentRatingFcbmRating where
    toText = \case
        CRFRFCBM18 -> "fcbm18"
        CRFRFcbm18pa -> "fcbm18pa"
        CRFRFcbm18pl -> "fcbm18pl"
        CRFRFcbm18sg -> "fcbm18sg"
        CRFRFcbm18sx -> "fcbm18sx"
        CRFRFCBMP13 -> "fcbmP13"
        CRFRFCBMPG13 -> "fcbmPg13"
        CRFRFcbmU -> "fcbmU"
        CRFRFcbmUnrated -> "fcbmUnrated"

-- | The video\'s rating from Hong Kong\'s Office for Film, Newspaper and
-- Article Administration.
data ContentRatingFcoRating
    = CRFRFcoI
      -- ^ @fcoI@
    | CRFRFcoIi
      -- ^ @fcoIi@
    | CRFRFcoIia
      -- ^ @fcoIia@
    | CRFRFcoIib
      -- ^ @fcoIib@
    | CRFRFcoIii
      -- ^ @fcoIii@
    | CRFRFcoUnrated
      -- ^ @fcoUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingFcoRating

instance FromText ContentRatingFcoRating where
    fromText = \case
        "fcoI" -> Just CRFRFcoI
        "fcoIi" -> Just CRFRFcoIi
        "fcoIia" -> Just CRFRFcoIia
        "fcoIib" -> Just CRFRFcoIib
        "fcoIii" -> Just CRFRFcoIii
        "fcoUnrated" -> Just CRFRFcoUnrated
        _ -> Nothing

instance ToText ContentRatingFcoRating where
    toText = \case
        CRFRFcoI -> "fcoI"
        CRFRFcoIi -> "fcoIi"
        CRFRFcoIia -> "fcoIia"
        CRFRFcoIib -> "fcoIib"
        CRFRFcoIii -> "fcoIii"
        CRFRFcoUnrated -> "fcoUnrated"

-- | This property has been deprecated. Use the
-- contentDetails.contentRating.cncRating instead.
data ContentRatingFmocRating
    = CRFRFMOC10
      -- ^ @fmoc10@
    | CRFRFMOC12
      -- ^ @fmoc12@
    | CRFRFMOC16
      -- ^ @fmoc16@
    | CRFRFMOC18
      -- ^ @fmoc18@
    | CRFRFmocE
      -- ^ @fmocE@
    | CRFRFmocU
      -- ^ @fmocU@
    | CRFRFmocUnrated
      -- ^ @fmocUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingFmocRating

instance FromText ContentRatingFmocRating where
    fromText = \case
        "fmoc10" -> Just CRFRFMOC10
        "fmoc12" -> Just CRFRFMOC12
        "fmoc16" -> Just CRFRFMOC16
        "fmoc18" -> Just CRFRFMOC18
        "fmocE" -> Just CRFRFmocE
        "fmocU" -> Just CRFRFmocU
        "fmocUnrated" -> Just CRFRFmocUnrated
        _ -> Nothing

instance ToText ContentRatingFmocRating where
    toText = \case
        CRFRFMOC10 -> "fmoc10"
        CRFRFMOC12 -> "fmoc12"
        CRFRFMOC16 -> "fmoc16"
        CRFRFMOC18 -> "fmoc18"
        CRFRFmocE -> "fmocE"
        CRFRFmocU -> "fmocU"
        CRFRFmocUnrated -> "fmocUnrated"

-- | The video\'s rating from South Africa\'s Film and Publication Board.
data ContentRatingFpbRating
    = CRFRFpb1012Pg
      -- ^ @fpb1012Pg@
    | CRFRFPB13
      -- ^ @fpb13@
    | CRFRFPB16
      -- ^ @fpb16@
    | CRFRFPB18
      -- ^ @fpb18@
    | CRFRFpb79Pg
      -- ^ @fpb79Pg@
    | CRFRFpbA
      -- ^ @fpbA@
    | CRFRFpbPg
      -- ^ @fpbPg@
    | CRFRFpbUnrated
      -- ^ @fpbUnrated@
    | CRFRFPBX18
      -- ^ @fpbX18@
    | CRFRFpbXx
      -- ^ @fpbXx@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingFpbRating

instance FromText ContentRatingFpbRating where
    fromText = \case
        "fpb1012Pg" -> Just CRFRFpb1012Pg
        "fpb13" -> Just CRFRFPB13
        "fpb16" -> Just CRFRFPB16
        "fpb18" -> Just CRFRFPB18
        "fpb79Pg" -> Just CRFRFpb79Pg
        "fpbA" -> Just CRFRFpbA
        "fpbPg" -> Just CRFRFpbPg
        "fpbUnrated" -> Just CRFRFpbUnrated
        "fpbX18" -> Just CRFRFPBX18
        "fpbXx" -> Just CRFRFpbXx
        _ -> Nothing

instance ToText ContentRatingFpbRating where
    toText = \case
        CRFRFpb1012Pg -> "fpb1012Pg"
        CRFRFPB13 -> "fpb13"
        CRFRFPB16 -> "fpb16"
        CRFRFPB18 -> "fpb18"
        CRFRFpb79Pg -> "fpb79Pg"
        CRFRFpbA -> "fpbA"
        CRFRFpbPg -> "fpbPg"
        CRFRFpbUnrated -> "fpbUnrated"
        CRFRFPBX18 -> "fpbX18"
        CRFRFpbXx -> "fpbXx"

-- | The video\'s Freiwillige Selbstkontrolle der Filmwirtschaft (FSK -
-- Germany) rating.
data ContentRatingFskRating
    = CRFRFSK0
      -- ^ @fsk0@
    | CRFRFSK12
      -- ^ @fsk12@
    | CRFRFSK16
      -- ^ @fsk16@
    | CRFRFSK18
      -- ^ @fsk18@
    | CRFRFSK6
      -- ^ @fsk6@
    | CRFRFskUnrated
      -- ^ @fskUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingFskRating

instance FromText ContentRatingFskRating where
    fromText = \case
        "fsk0" -> Just CRFRFSK0
        "fsk12" -> Just CRFRFSK12
        "fsk16" -> Just CRFRFSK16
        "fsk18" -> Just CRFRFSK18
        "fsk6" -> Just CRFRFSK6
        "fskUnrated" -> Just CRFRFskUnrated
        _ -> Nothing

instance ToText ContentRatingFskRating where
    toText = \case
        CRFRFSK0 -> "fsk0"
        CRFRFSK12 -> "fsk12"
        CRFRFSK16 -> "fsk16"
        CRFRFSK18 -> "fsk18"
        CRFRFSK6 -> "fsk6"
        CRFRFskUnrated -> "fskUnrated"

-- | The video\'s rating in Greece.
data ContentRatingGrfilmRating
    = CRGRGrfilmE
      -- ^ @grfilmE@
    | CRGRGrfilmK
      -- ^ @grfilmK@
    | CRGRGRFILMK13
      -- ^ @grfilmK13@
    | CRGRGRFILMK17
      -- ^ @grfilmK17@
    | CRGRGrfilmUnrated
      -- ^ @grfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingGrfilmRating

instance FromText ContentRatingGrfilmRating where
    fromText = \case
        "grfilmE" -> Just CRGRGrfilmE
        "grfilmK" -> Just CRGRGrfilmK
        "grfilmK13" -> Just CRGRGRFILMK13
        "grfilmK17" -> Just CRGRGRFILMK17
        "grfilmUnrated" -> Just CRGRGrfilmUnrated
        _ -> Nothing

instance ToText ContentRatingGrfilmRating where
    toText = \case
        CRGRGrfilmE -> "grfilmE"
        CRGRGrfilmK -> "grfilmK"
        CRGRGRFILMK13 -> "grfilmK13"
        CRGRGRFILMK17 -> "grfilmK17"
        CRGRGrfilmUnrated -> "grfilmUnrated"

-- | The video\'s Instituto de la Cinematografía y de las Artes Audiovisuales
-- (ICAA - Spain) rating.
data ContentRatingIcaaRating
    = CRIRICAA12
      -- ^ @icaa12@
    | CRIRICAA13
      -- ^ @icaa13@
    | CRIRICAA16
      -- ^ @icaa16@
    | CRIRICAA18
      -- ^ @icaa18@
    | CRIRICAA7
      -- ^ @icaa7@
    | CRIRIcaaApta
      -- ^ @icaaApta@
    | CRIRIcaaUnrated
      -- ^ @icaaUnrated@
    | CRIRIcaaX
      -- ^ @icaaX@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingIcaaRating

instance FromText ContentRatingIcaaRating where
    fromText = \case
        "icaa12" -> Just CRIRICAA12
        "icaa13" -> Just CRIRICAA13
        "icaa16" -> Just CRIRICAA16
        "icaa18" -> Just CRIRICAA18
        "icaa7" -> Just CRIRICAA7
        "icaaApta" -> Just CRIRIcaaApta
        "icaaUnrated" -> Just CRIRIcaaUnrated
        "icaaX" -> Just CRIRIcaaX
        _ -> Nothing

instance ToText ContentRatingIcaaRating where
    toText = \case
        CRIRICAA12 -> "icaa12"
        CRIRICAA13 -> "icaa13"
        CRIRICAA16 -> "icaa16"
        CRIRICAA18 -> "icaa18"
        CRIRICAA7 -> "icaa7"
        CRIRIcaaApta -> "icaaApta"
        CRIRIcaaUnrated -> "icaaUnrated"
        CRIRIcaaX -> "icaaX"

-- | The video\'s Irish Film Classification Office (IFCO - Ireland) rating.
-- See the IFCO website for more information.
data ContentRatingIfcoRating
    = CRIRIFCO12
      -- ^ @ifco12@
    | CRIRIfco12a
      -- ^ @ifco12a@
    | CRIRIFCO15
      -- ^ @ifco15@
    | CRIRIfco15a
      -- ^ @ifco15a@
    | CRIRIFCO16
      -- ^ @ifco16@
    | CRIRIFCO18
      -- ^ @ifco18@
    | CRIRIfcoG
      -- ^ @ifcoG@
    | CRIRIfcoPg
      -- ^ @ifcoPg@
    | CRIRIfcoUnrated
      -- ^ @ifcoUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingIfcoRating

instance FromText ContentRatingIfcoRating where
    fromText = \case
        "ifco12" -> Just CRIRIFCO12
        "ifco12a" -> Just CRIRIfco12a
        "ifco15" -> Just CRIRIFCO15
        "ifco15a" -> Just CRIRIfco15a
        "ifco16" -> Just CRIRIFCO16
        "ifco18" -> Just CRIRIFCO18
        "ifcoG" -> Just CRIRIfcoG
        "ifcoPg" -> Just CRIRIfcoPg
        "ifcoUnrated" -> Just CRIRIfcoUnrated
        _ -> Nothing

instance ToText ContentRatingIfcoRating where
    toText = \case
        CRIRIFCO12 -> "ifco12"
        CRIRIfco12a -> "ifco12a"
        CRIRIFCO15 -> "ifco15"
        CRIRIfco15a -> "ifco15a"
        CRIRIFCO16 -> "ifco16"
        CRIRIFCO18 -> "ifco18"
        CRIRIfcoG -> "ifcoG"
        CRIRIfcoPg -> "ifcoPg"
        CRIRIfcoUnrated -> "ifcoUnrated"

-- | The video\'s rating in Israel.
data ContentRatingIlfilmRating
    = CRIRILFILM12
      -- ^ @ilfilm12@
    | CRIRILFILM16
      -- ^ @ilfilm16@
    | CRIRILFILM18
      -- ^ @ilfilm18@
    | CRIRIlfilmAa
      -- ^ @ilfilmAa@
    | CRIRIlfilmUnrated
      -- ^ @ilfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingIlfilmRating

instance FromText ContentRatingIlfilmRating where
    fromText = \case
        "ilfilm12" -> Just CRIRILFILM12
        "ilfilm16" -> Just CRIRILFILM16
        "ilfilm18" -> Just CRIRILFILM18
        "ilfilmAa" -> Just CRIRIlfilmAa
        "ilfilmUnrated" -> Just CRIRIlfilmUnrated
        _ -> Nothing

instance ToText ContentRatingIlfilmRating where
    toText = \case
        CRIRILFILM12 -> "ilfilm12"
        CRIRILFILM16 -> "ilfilm16"
        CRIRILFILM18 -> "ilfilm18"
        CRIRIlfilmAa -> "ilfilmAa"
        CRIRIlfilmUnrated -> "ilfilmUnrated"

-- | The video\'s INCAA (Instituto Nacional de Cine y Artes Audiovisuales -
-- Argentina) rating.
data ContentRatingIncaaRating
    = CRIRIncaaAtp
      -- ^ @incaaAtp@
    | CRIRIncaaC
      -- ^ @incaaC@
    | CRIRINCAASAM13
      -- ^ @incaaSam13@
    | CRIRINCAASAM16
      -- ^ @incaaSam16@
    | CRIRINCAASAM18
      -- ^ @incaaSam18@
    | CRIRIncaaUnrated
      -- ^ @incaaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingIncaaRating

instance FromText ContentRatingIncaaRating where
    fromText = \case
        "incaaAtp" -> Just CRIRIncaaAtp
        "incaaC" -> Just CRIRIncaaC
        "incaaSam13" -> Just CRIRINCAASAM13
        "incaaSam16" -> Just CRIRINCAASAM16
        "incaaSam18" -> Just CRIRINCAASAM18
        "incaaUnrated" -> Just CRIRIncaaUnrated
        _ -> Nothing

instance ToText ContentRatingIncaaRating where
    toText = \case
        CRIRIncaaAtp -> "incaaAtp"
        CRIRIncaaC -> "incaaC"
        CRIRINCAASAM13 -> "incaaSam13"
        CRIRINCAASAM16 -> "incaaSam16"
        CRIRINCAASAM18 -> "incaaSam18"
        CRIRIncaaUnrated -> "incaaUnrated"

data ContentRatingItemDjctqRatingReasons
    = CRIDRRDjctqCriminalActs
      -- ^ @djctqCriminalActs@
    | CRIDRRDjctqDrugs
      -- ^ @djctqDrugs@
    | CRIDRRDjctqExplicitSex
      -- ^ @djctqExplicitSex@
    | CRIDRRDjctqExtremeViolence
      -- ^ @djctqExtremeViolence@
    | CRIDRRDjctqIllegalDrugs
      -- ^ @djctqIllegalDrugs@
    | CRIDRRDjctqImpactingContent
      -- ^ @djctqImpactingContent@
    | CRIDRRDjctqInappropriateLanguage
      -- ^ @djctqInappropriateLanguage@
    | CRIDRRDjctqLegalDrugs
      -- ^ @djctqLegalDrugs@
    | CRIDRRDjctqNudity
      -- ^ @djctqNudity@
    | CRIDRRDjctqSex
      -- ^ @djctqSex@
    | CRIDRRDjctqSexualContent
      -- ^ @djctqSexualContent@
    | CRIDRRDjctqViolence
      -- ^ @djctqViolence@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingItemDjctqRatingReasons

instance FromText ContentRatingItemDjctqRatingReasons where
    fromText = \case
        "djctqCriminalActs" -> Just CRIDRRDjctqCriminalActs
        "djctqDrugs" -> Just CRIDRRDjctqDrugs
        "djctqExplicitSex" -> Just CRIDRRDjctqExplicitSex
        "djctqExtremeViolence" -> Just CRIDRRDjctqExtremeViolence
        "djctqIllegalDrugs" -> Just CRIDRRDjctqIllegalDrugs
        "djctqImpactingContent" -> Just CRIDRRDjctqImpactingContent
        "djctqInappropriateLanguage" -> Just CRIDRRDjctqInappropriateLanguage
        "djctqLegalDrugs" -> Just CRIDRRDjctqLegalDrugs
        "djctqNudity" -> Just CRIDRRDjctqNudity
        "djctqSex" -> Just CRIDRRDjctqSex
        "djctqSexualContent" -> Just CRIDRRDjctqSexualContent
        "djctqViolence" -> Just CRIDRRDjctqViolence
        _ -> Nothing

instance ToText ContentRatingItemDjctqRatingReasons where
    toText = \case
        CRIDRRDjctqCriminalActs -> "djctqCriminalActs"
        CRIDRRDjctqDrugs -> "djctqDrugs"
        CRIDRRDjctqExplicitSex -> "djctqExplicitSex"
        CRIDRRDjctqExtremeViolence -> "djctqExtremeViolence"
        CRIDRRDjctqIllegalDrugs -> "djctqIllegalDrugs"
        CRIDRRDjctqImpactingContent -> "djctqImpactingContent"
        CRIDRRDjctqInappropriateLanguage -> "djctqInappropriateLanguage"
        CRIDRRDjctqLegalDrugs -> "djctqLegalDrugs"
        CRIDRRDjctqNudity -> "djctqNudity"
        CRIDRRDjctqSex -> "djctqSex"
        CRIDRRDjctqSexualContent -> "djctqSexualContent"
        CRIDRRDjctqViolence -> "djctqViolence"

-- | The video\'s rating from the Kenya Film Classification Board.
data ContentRatingKfcbRating
    = CRKRKfcb16plus
      -- ^ @kfcb16plus@
    | CRKRKfcbG
      -- ^ @kfcbG@
    | CRKRKfcbPg
      -- ^ @kfcbPg@
    | CRKRKfcbR
      -- ^ @kfcbR@
    | CRKRKfcbUnrated
      -- ^ @kfcbUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingKfcbRating

instance FromText ContentRatingKfcbRating where
    fromText = \case
        "kfcb16plus" -> Just CRKRKfcb16plus
        "kfcbG" -> Just CRKRKfcbG
        "kfcbPg" -> Just CRKRKfcbPg
        "kfcbR" -> Just CRKRKfcbR
        "kfcbUnrated" -> Just CRKRKfcbUnrated
        _ -> Nothing

instance ToText ContentRatingKfcbRating where
    toText = \case
        CRKRKfcb16plus -> "kfcb16plus"
        CRKRKfcbG -> "kfcbG"
        CRKRKfcbPg -> "kfcbPg"
        CRKRKfcbR -> "kfcbR"
        CRKRKfcbUnrated -> "kfcbUnrated"

-- | voor de Classificatie van Audiovisuele Media (Netherlands).
data ContentRatingKijkwijzerRating
    = CRKRKIJKWIJZER12
      -- ^ @kijkwijzer12@
    | CRKRKIJKWIJZER16
      -- ^ @kijkwijzer16@
    | CRKRKIJKWIJZER18
      -- ^ @kijkwijzer18@
    | CRKRKIJKWIJZER6
      -- ^ @kijkwijzer6@
    | CRKRKIJKWIJZER9
      -- ^ @kijkwijzer9@
    | CRKRKijkwijzerAl
      -- ^ @kijkwijzerAl@
    | CRKRKijkwijzerUnrated
      -- ^ @kijkwijzerUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingKijkwijzerRating

instance FromText ContentRatingKijkwijzerRating where
    fromText = \case
        "kijkwijzer12" -> Just CRKRKIJKWIJZER12
        "kijkwijzer16" -> Just CRKRKIJKWIJZER16
        "kijkwijzer18" -> Just CRKRKIJKWIJZER18
        "kijkwijzer6" -> Just CRKRKIJKWIJZER6
        "kijkwijzer9" -> Just CRKRKIJKWIJZER9
        "kijkwijzerAl" -> Just CRKRKijkwijzerAl
        "kijkwijzerUnrated" -> Just CRKRKijkwijzerUnrated
        _ -> Nothing

instance ToText ContentRatingKijkwijzerRating where
    toText = \case
        CRKRKIJKWIJZER12 -> "kijkwijzer12"
        CRKRKIJKWIJZER16 -> "kijkwijzer16"
        CRKRKIJKWIJZER18 -> "kijkwijzer18"
        CRKRKIJKWIJZER6 -> "kijkwijzer6"
        CRKRKIJKWIJZER9 -> "kijkwijzer9"
        CRKRKijkwijzerAl -> "kijkwijzerAl"
        CRKRKijkwijzerUnrated -> "kijkwijzerUnrated"

-- | The video\'s Korea Media Rating Board (영상물등급위원회) rating. The
-- KMRB rates videos in South Korea.
data ContentRatingKmrbRating
    = CRKRKmrb12plus
      -- ^ @kmrb12plus@
    | CRKRKmrb15plus
      -- ^ @kmrb15plus@
    | CRKRKmrbAll
      -- ^ @kmrbAll@
    | CRKRKmrbR
      -- ^ @kmrbR@
    | CRKRKmrbTeenr
      -- ^ @kmrbTeenr@
    | CRKRKmrbUnrated
      -- ^ @kmrbUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingKmrbRating

instance FromText ContentRatingKmrbRating where
    fromText = \case
        "kmrb12plus" -> Just CRKRKmrb12plus
        "kmrb15plus" -> Just CRKRKmrb15plus
        "kmrbAll" -> Just CRKRKmrbAll
        "kmrbR" -> Just CRKRKmrbR
        "kmrbTeenr" -> Just CRKRKmrbTeenr
        "kmrbUnrated" -> Just CRKRKmrbUnrated
        _ -> Nothing

instance ToText ContentRatingKmrbRating where
    toText = \case
        CRKRKmrb12plus -> "kmrb12plus"
        CRKRKmrb15plus -> "kmrb15plus"
        CRKRKmrbAll -> "kmrbAll"
        CRKRKmrbR -> "kmrbR"
        CRKRKmrbTeenr -> "kmrbTeenr"
        CRKRKmrbUnrated -> "kmrbUnrated"

-- | The video\'s rating from Indonesia\'s Lembaga Sensor Film.
data ContentRatingLsfRating
    = CRLRLSF13
      -- ^ @lsf13@
    | CRLRLSF17
      -- ^ @lsf17@
    | CRLRLSF21
      -- ^ @lsf21@
    | CRLRLsfA
      -- ^ @lsfA@
    | CRLRLsfBo
      -- ^ @lsfBo@
    | CRLRLsfD
      -- ^ @lsfD@
    | CRLRLsfR
      -- ^ @lsfR@
    | CRLRLsfSu
      -- ^ @lsfSu@
    | CRLRLsfUnrated
      -- ^ @lsfUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingLsfRating

instance FromText ContentRatingLsfRating where
    fromText = \case
        "lsf13" -> Just CRLRLSF13
        "lsf17" -> Just CRLRLSF17
        "lsf21" -> Just CRLRLSF21
        "lsfA" -> Just CRLRLsfA
        "lsfBo" -> Just CRLRLsfBo
        "lsfD" -> Just CRLRLsfD
        "lsfR" -> Just CRLRLsfR
        "lsfSu" -> Just CRLRLsfSu
        "lsfUnrated" -> Just CRLRLsfUnrated
        _ -> Nothing

instance ToText ContentRatingLsfRating where
    toText = \case
        CRLRLSF13 -> "lsf13"
        CRLRLSF17 -> "lsf17"
        CRLRLSF21 -> "lsf21"
        CRLRLsfA -> "lsfA"
        CRLRLsfBo -> "lsfBo"
        CRLRLsfD -> "lsfD"
        CRLRLsfR -> "lsfR"
        CRLRLsfSu -> "lsfSu"
        CRLRLsfUnrated -> "lsfUnrated"

-- | The video\'s rating from Malta\'s Film Age-Classification Board.
data ContentRatingMccaaRating
    = CRMRMCCAA12
      -- ^ @mccaa12@
    | CRMRMccaa12a
      -- ^ @mccaa12a@
    | CRMRMCCAA14
      -- ^ @mccaa14@
    | CRMRMCCAA15
      -- ^ @mccaa15@
    | CRMRMCCAA16
      -- ^ @mccaa16@
    | CRMRMCCAA18
      -- ^ @mccaa18@
    | CRMRMccaaPg
      -- ^ @mccaaPg@
    | CRMRMccaaU
      -- ^ @mccaaU@
    | CRMRMccaaUnrated
      -- ^ @mccaaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMccaaRating

instance FromText ContentRatingMccaaRating where
    fromText = \case
        "mccaa12" -> Just CRMRMCCAA12
        "mccaa12a" -> Just CRMRMccaa12a
        "mccaa14" -> Just CRMRMCCAA14
        "mccaa15" -> Just CRMRMCCAA15
        "mccaa16" -> Just CRMRMCCAA16
        "mccaa18" -> Just CRMRMCCAA18
        "mccaaPg" -> Just CRMRMccaaPg
        "mccaaU" -> Just CRMRMccaaU
        "mccaaUnrated" -> Just CRMRMccaaUnrated
        _ -> Nothing

instance ToText ContentRatingMccaaRating where
    toText = \case
        CRMRMCCAA12 -> "mccaa12"
        CRMRMccaa12a -> "mccaa12a"
        CRMRMCCAA14 -> "mccaa14"
        CRMRMCCAA15 -> "mccaa15"
        CRMRMCCAA16 -> "mccaa16"
        CRMRMCCAA18 -> "mccaa18"
        CRMRMccaaPg -> "mccaaPg"
        CRMRMccaaU -> "mccaaU"
        CRMRMccaaUnrated -> "mccaaUnrated"

-- | The video\'s rating from the Danish Film Institute\'s (Det Danske
-- Filminstitut) Media Council for Children and Young People.
data ContentRatingMccypRating
    = CRMRMCCYP11
      -- ^ @mccyp11@
    | CRMRMCCYP15
      -- ^ @mccyp15@
    | CRMRMCCYP7
      -- ^ @mccyp7@
    | CRMRMccypA
      -- ^ @mccypA@
    | CRMRMccypUnrated
      -- ^ @mccypUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMccypRating

instance FromText ContentRatingMccypRating where
    fromText = \case
        "mccyp11" -> Just CRMRMCCYP11
        "mccyp15" -> Just CRMRMCCYP15
        "mccyp7" -> Just CRMRMCCYP7
        "mccypA" -> Just CRMRMccypA
        "mccypUnrated" -> Just CRMRMccypUnrated
        _ -> Nothing

instance ToText ContentRatingMccypRating where
    toText = \case
        CRMRMCCYP11 -> "mccyp11"
        CRMRMCCYP15 -> "mccyp15"
        CRMRMCCYP7 -> "mccyp7"
        CRMRMccypA -> "mccypA"
        CRMRMccypUnrated -> "mccypUnrated"

-- | The video\'s rating from Singapore\'s Media Development Authority (MDA)
-- and, specifically, it\'s Board of Film Censors (BFC).
data ContentRatingMdaRating
    = CRMRMdaG
      -- ^ @mdaG@
    | CRMRMDAM18
      -- ^ @mdaM18@
    | CRMRMDANC16
      -- ^ @mdaNc16@
    | CRMRMdaPg
      -- ^ @mdaPg@
    | CRMRMDAPG13
      -- ^ @mdaPg13@
    | CRMRMDAR21
      -- ^ @mdaR21@
    | CRMRMdaUnrated
      -- ^ @mdaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMdaRating

instance FromText ContentRatingMdaRating where
    fromText = \case
        "mdaG" -> Just CRMRMdaG
        "mdaM18" -> Just CRMRMDAM18
        "mdaNc16" -> Just CRMRMDANC16
        "mdaPg" -> Just CRMRMdaPg
        "mdaPg13" -> Just CRMRMDAPG13
        "mdaR21" -> Just CRMRMDAR21
        "mdaUnrated" -> Just CRMRMdaUnrated
        _ -> Nothing

instance ToText ContentRatingMdaRating where
    toText = \case
        CRMRMdaG -> "mdaG"
        CRMRMDAM18 -> "mdaM18"
        CRMRMDANC16 -> "mdaNc16"
        CRMRMdaPg -> "mdaPg"
        CRMRMDAPG13 -> "mdaPg13"
        CRMRMDAR21 -> "mdaR21"
        CRMRMdaUnrated -> "mdaUnrated"

-- | The video\'s rating from Medietilsynet, the Norwegian Media Authority.
data ContentRatingMedietilsynetRating
    = CRMRMEDIETILSYNET11
      -- ^ @medietilsynet11@
    | CRMRMEDIETILSYNET12
      -- ^ @medietilsynet12@
    | CRMRMEDIETILSYNET15
      -- ^ @medietilsynet15@
    | CRMRMEDIETILSYNET18
      -- ^ @medietilsynet18@
    | CRMRMEDIETILSYNET6
      -- ^ @medietilsynet6@
    | CRMRMEDIETILSYNET7
      -- ^ @medietilsynet7@
    | CRMRMEDIETILSYNET9
      -- ^ @medietilsynet9@
    | CRMRMedietilsynetA
      -- ^ @medietilsynetA@
    | CRMRMedietilsynetUnrated
      -- ^ @medietilsynetUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMedietilsynetRating

instance FromText ContentRatingMedietilsynetRating where
    fromText = \case
        "medietilsynet11" -> Just CRMRMEDIETILSYNET11
        "medietilsynet12" -> Just CRMRMEDIETILSYNET12
        "medietilsynet15" -> Just CRMRMEDIETILSYNET15
        "medietilsynet18" -> Just CRMRMEDIETILSYNET18
        "medietilsynet6" -> Just CRMRMEDIETILSYNET6
        "medietilsynet7" -> Just CRMRMEDIETILSYNET7
        "medietilsynet9" -> Just CRMRMEDIETILSYNET9
        "medietilsynetA" -> Just CRMRMedietilsynetA
        "medietilsynetUnrated" -> Just CRMRMedietilsynetUnrated
        _ -> Nothing

instance ToText ContentRatingMedietilsynetRating where
    toText = \case
        CRMRMEDIETILSYNET11 -> "medietilsynet11"
        CRMRMEDIETILSYNET12 -> "medietilsynet12"
        CRMRMEDIETILSYNET15 -> "medietilsynet15"
        CRMRMEDIETILSYNET18 -> "medietilsynet18"
        CRMRMEDIETILSYNET6 -> "medietilsynet6"
        CRMRMEDIETILSYNET7 -> "medietilsynet7"
        CRMRMEDIETILSYNET9 -> "medietilsynet9"
        CRMRMedietilsynetA -> "medietilsynetA"
        CRMRMedietilsynetUnrated -> "medietilsynetUnrated"

-- | The video\'s rating from Finland\'s Kansallinen Audiovisuaalinen
-- Instituutti (National Audiovisual Institute).
data ContentRatingMekuRating
    = CRMRMEKU12
      -- ^ @meku12@
    | CRMRMEKU16
      -- ^ @meku16@
    | CRMRMEKU18
      -- ^ @meku18@
    | CRMRMEKU7
      -- ^ @meku7@
    | CRMRMekuS
      -- ^ @mekuS@
    | CRMRMekuUnrated
      -- ^ @mekuUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMekuRating

instance FromText ContentRatingMekuRating where
    fromText = \case
        "meku12" -> Just CRMRMEKU12
        "meku16" -> Just CRMRMEKU16
        "meku18" -> Just CRMRMEKU18
        "meku7" -> Just CRMRMEKU7
        "mekuS" -> Just CRMRMekuS
        "mekuUnrated" -> Just CRMRMekuUnrated
        _ -> Nothing

instance ToText ContentRatingMekuRating where
    toText = \case
        CRMRMEKU12 -> "meku12"
        CRMRMEKU16 -> "meku16"
        CRMRMEKU18 -> "meku18"
        CRMRMEKU7 -> "meku7"
        CRMRMekuS -> "mekuS"
        CRMRMekuUnrated -> "mekuUnrated"

-- | The video\'s rating from the Ministero dei Beni e delle Attività
-- Culturali e del Turismo (Italy).
data ContentRatingMibacRating
    = CRMRMibacT
      -- ^ @mibacT@
    | CRMRMibacUnrated
      -- ^ @mibacUnrated@
    | CRMRMibacVap
      -- ^ @mibacVap@
    | CRMRMIBACVM12
      -- ^ @mibacVm12@
    | CRMRMIBACVM14
      -- ^ @mibacVm14@
    | CRMRMIBACVM18
      -- ^ @mibacVm18@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMibacRating

instance FromText ContentRatingMibacRating where
    fromText = \case
        "mibacT" -> Just CRMRMibacT
        "mibacUnrated" -> Just CRMRMibacUnrated
        "mibacVap" -> Just CRMRMibacVap
        "mibacVm12" -> Just CRMRMIBACVM12
        "mibacVm14" -> Just CRMRMIBACVM14
        "mibacVm18" -> Just CRMRMIBACVM18
        _ -> Nothing

instance ToText ContentRatingMibacRating where
    toText = \case
        CRMRMibacT -> "mibacT"
        CRMRMibacUnrated -> "mibacUnrated"
        CRMRMibacVap -> "mibacVap"
        CRMRMIBACVM12 -> "mibacVm12"
        CRMRMIBACVM14 -> "mibacVm14"
        CRMRMIBACVM18 -> "mibacVm18"

-- | The video\'s Ministerio de Cultura (Colombia) rating.
data ContentRatingMocRating
    = CRMRMOC12
      -- ^ @moc12@
    | CRMRMOC15
      -- ^ @moc15@
    | CRMRMOC18
      -- ^ @moc18@
    | CRMRMOC7
      -- ^ @moc7@
    | CRMRMocBanned
      -- ^ @mocBanned@
    | CRMRMocE
      -- ^ @mocE@
    | CRMRMocT
      -- ^ @mocT@
    | CRMRMocUnrated
      -- ^ @mocUnrated@
    | CRMRMocX
      -- ^ @mocX@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMocRating

instance FromText ContentRatingMocRating where
    fromText = \case
        "moc12" -> Just CRMRMOC12
        "moc15" -> Just CRMRMOC15
        "moc18" -> Just CRMRMOC18
        "moc7" -> Just CRMRMOC7
        "mocBanned" -> Just CRMRMocBanned
        "mocE" -> Just CRMRMocE
        "mocT" -> Just CRMRMocT
        "mocUnrated" -> Just CRMRMocUnrated
        "mocX" -> Just CRMRMocX
        _ -> Nothing

instance ToText ContentRatingMocRating where
    toText = \case
        CRMRMOC12 -> "moc12"
        CRMRMOC15 -> "moc15"
        CRMRMOC18 -> "moc18"
        CRMRMOC7 -> "moc7"
        CRMRMocBanned -> "mocBanned"
        CRMRMocE -> "mocE"
        CRMRMocT -> "mocT"
        CRMRMocUnrated -> "mocUnrated"
        CRMRMocX -> "mocX"

-- | The video\'s rating from Taiwan\'s Ministry of Culture (文化部).
data ContentRatingMoctwRating
    = CRMRMoctwG
      -- ^ @moctwG@
    | CRMRMoctwP
      -- ^ @moctwP@
    | CRMRMoctwPg
      -- ^ @moctwPg@
    | CRMRMoctwR
      -- ^ @moctwR@
    | CRMRMoctwUnrated
      -- ^ @moctwUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMoctwRating

instance FromText ContentRatingMoctwRating where
    fromText = \case
        "moctwG" -> Just CRMRMoctwG
        "moctwP" -> Just CRMRMoctwP
        "moctwPg" -> Just CRMRMoctwPg
        "moctwR" -> Just CRMRMoctwR
        "moctwUnrated" -> Just CRMRMoctwUnrated
        _ -> Nothing

instance ToText ContentRatingMoctwRating where
    toText = \case
        CRMRMoctwG -> "moctwG"
        CRMRMoctwP -> "moctwP"
        CRMRMoctwPg -> "moctwPg"
        CRMRMoctwR -> "moctwR"
        CRMRMoctwUnrated -> "moctwUnrated"

-- | The video\'s Motion Picture Association of America (MPAA) rating.
data ContentRatingMpaaRating
    = CRMRMpaaG
      -- ^ @mpaaG@
    | CRMRMPAANC17
      -- ^ @mpaaNc17@
    | CRMRMpaaPg
      -- ^ @mpaaPg@
    | CRMRMPAAPG13
      -- ^ @mpaaPg13@
    | CRMRMpaaR
      -- ^ @mpaaR@
    | CRMRMpaaUnrated
      -- ^ @mpaaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMpaaRating

instance FromText ContentRatingMpaaRating where
    fromText = \case
        "mpaaG" -> Just CRMRMpaaG
        "mpaaNc17" -> Just CRMRMPAANC17
        "mpaaPg" -> Just CRMRMpaaPg
        "mpaaPg13" -> Just CRMRMPAAPG13
        "mpaaR" -> Just CRMRMpaaR
        "mpaaUnrated" -> Just CRMRMpaaUnrated
        _ -> Nothing

instance ToText ContentRatingMpaaRating where
    toText = \case
        CRMRMpaaG -> "mpaaG"
        CRMRMPAANC17 -> "mpaaNc17"
        CRMRMpaaPg -> "mpaaPg"
        CRMRMPAAPG13 -> "mpaaPg13"
        CRMRMpaaR -> "mpaaR"
        CRMRMpaaUnrated -> "mpaaUnrated"

-- | The video\'s rating from the Movie and Television Review and
-- Classification Board (Philippines).
data ContentRatingMtrcbRating
    = CRMRMtrcbG
      -- ^ @mtrcbG@
    | CRMRMtrcbPg
      -- ^ @mtrcbPg@
    | CRMRMTRCBR13
      -- ^ @mtrcbR13@
    | CRMRMTRCBR16
      -- ^ @mtrcbR16@
    | CRMRMTRCBR18
      -- ^ @mtrcbR18@
    | CRMRMtrcbUnrated
      -- ^ @mtrcbUnrated@
    | CRMRMtrcbX
      -- ^ @mtrcbX@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingMtrcbRating

instance FromText ContentRatingMtrcbRating where
    fromText = \case
        "mtrcbG" -> Just CRMRMtrcbG
        "mtrcbPg" -> Just CRMRMtrcbPg
        "mtrcbR13" -> Just CRMRMTRCBR13
        "mtrcbR16" -> Just CRMRMTRCBR16
        "mtrcbR18" -> Just CRMRMTRCBR18
        "mtrcbUnrated" -> Just CRMRMtrcbUnrated
        "mtrcbX" -> Just CRMRMtrcbX
        _ -> Nothing

instance ToText ContentRatingMtrcbRating where
    toText = \case
        CRMRMtrcbG -> "mtrcbG"
        CRMRMtrcbPg -> "mtrcbPg"
        CRMRMTRCBR13 -> "mtrcbR13"
        CRMRMTRCBR16 -> "mtrcbR16"
        CRMRMTRCBR18 -> "mtrcbR18"
        CRMRMtrcbUnrated -> "mtrcbUnrated"
        CRMRMtrcbX -> "mtrcbX"

-- | The video\'s rating from the Maldives National Bureau of Classification.
data ContentRatingNbcRating
    = CRNRNbc12plus
      -- ^ @nbc12plus@
    | CRNRNbc15plus
      -- ^ @nbc15plus@
    | CRNRNbc18plus
      -- ^ @nbc18plus@
    | CRNRNbc18plusr
      -- ^ @nbc18plusr@
    | CRNRNbcG
      -- ^ @nbcG@
    | CRNRNbcPg
      -- ^ @nbcPg@
    | CRNRNbcPu
      -- ^ @nbcPu@
    | CRNRNbcUnrated
      -- ^ @nbcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingNbcRating

instance FromText ContentRatingNbcRating where
    fromText = \case
        "nbc12plus" -> Just CRNRNbc12plus
        "nbc15plus" -> Just CRNRNbc15plus
        "nbc18plus" -> Just CRNRNbc18plus
        "nbc18plusr" -> Just CRNRNbc18plusr
        "nbcG" -> Just CRNRNbcG
        "nbcPg" -> Just CRNRNbcPg
        "nbcPu" -> Just CRNRNbcPu
        "nbcUnrated" -> Just CRNRNbcUnrated
        _ -> Nothing

instance ToText ContentRatingNbcRating where
    toText = \case
        CRNRNbc12plus -> "nbc12plus"
        CRNRNbc15plus -> "nbc15plus"
        CRNRNbc18plus -> "nbc18plus"
        CRNRNbc18plusr -> "nbc18plusr"
        CRNRNbcG -> "nbcG"
        CRNRNbcPg -> "nbcPg"
        CRNRNbcPu -> "nbcPu"
        CRNRNbcUnrated -> "nbcUnrated"

-- | The video\'s rating in Poland.
data ContentRatingNbcplRating
    = CRNRNbcpl18plus
      -- ^ @nbcpl18plus@
    | CRNRNbcplI
      -- ^ @nbcplI@
    | CRNRNbcplIi
      -- ^ @nbcplIi@
    | CRNRNbcplIii
      -- ^ @nbcplIii@
    | CRNRNbcplIv
      -- ^ @nbcplIv@
    | CRNRNbcplUnrated
      -- ^ @nbcplUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingNbcplRating

instance FromText ContentRatingNbcplRating where
    fromText = \case
        "nbcpl18plus" -> Just CRNRNbcpl18plus
        "nbcplI" -> Just CRNRNbcplI
        "nbcplIi" -> Just CRNRNbcplIi
        "nbcplIii" -> Just CRNRNbcplIii
        "nbcplIv" -> Just CRNRNbcplIv
        "nbcplUnrated" -> Just CRNRNbcplUnrated
        _ -> Nothing

instance ToText ContentRatingNbcplRating where
    toText = \case
        CRNRNbcpl18plus -> "nbcpl18plus"
        CRNRNbcplI -> "nbcplI"
        CRNRNbcplIi -> "nbcplIi"
        CRNRNbcplIii -> "nbcplIii"
        CRNRNbcplIv -> "nbcplIv"
        CRNRNbcplUnrated -> "nbcplUnrated"

-- | The video\'s rating from the Bulgarian National Film Center.
data ContentRatingNfrcRating
    = CRNRNfrcA
      -- ^ @nfrcA@
    | CRNRNfrcB
      -- ^ @nfrcB@
    | CRNRNfrcC
      -- ^ @nfrcC@
    | CRNRNfrcD
      -- ^ @nfrcD@
    | CRNRNfrcUnrated
      -- ^ @nfrcUnrated@
    | CRNRNfrcX
      -- ^ @nfrcX@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingNfrcRating

instance FromText ContentRatingNfrcRating where
    fromText = \case
        "nfrcA" -> Just CRNRNfrcA
        "nfrcB" -> Just CRNRNfrcB
        "nfrcC" -> Just CRNRNfrcC
        "nfrcD" -> Just CRNRNfrcD
        "nfrcUnrated" -> Just CRNRNfrcUnrated
        "nfrcX" -> Just CRNRNfrcX
        _ -> Nothing

instance ToText ContentRatingNfrcRating where
    toText = \case
        CRNRNfrcA -> "nfrcA"
        CRNRNfrcB -> "nfrcB"
        CRNRNfrcC -> "nfrcC"
        CRNRNfrcD -> "nfrcD"
        CRNRNfrcUnrated -> "nfrcUnrated"
        CRNRNfrcX -> "nfrcX"

-- | The video\'s rating from Nigeria\'s National Film and Video Censors
-- Board.
data ContentRatingNfvcbRating
    = CRNRNFVCB12
      -- ^ @nfvcb12@
    | CRNRNfvcb12a
      -- ^ @nfvcb12a@
    | CRNRNFVCB15
      -- ^ @nfvcb15@
    | CRNRNFVCB18
      -- ^ @nfvcb18@
    | CRNRNfvcbG
      -- ^ @nfvcbG@
    | CRNRNfvcbPg
      -- ^ @nfvcbPg@
    | CRNRNfvcbRe
      -- ^ @nfvcbRe@
    | CRNRNfvcbUnrated
      -- ^ @nfvcbUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingNfvcbRating

instance FromText ContentRatingNfvcbRating where
    fromText = \case
        "nfvcb12" -> Just CRNRNFVCB12
        "nfvcb12a" -> Just CRNRNfvcb12a
        "nfvcb15" -> Just CRNRNFVCB15
        "nfvcb18" -> Just CRNRNFVCB18
        "nfvcbG" -> Just CRNRNfvcbG
        "nfvcbPg" -> Just CRNRNfvcbPg
        "nfvcbRe" -> Just CRNRNfvcbRe
        "nfvcbUnrated" -> Just CRNRNfvcbUnrated
        _ -> Nothing

instance ToText ContentRatingNfvcbRating where
    toText = \case
        CRNRNFVCB12 -> "nfvcb12"
        CRNRNfvcb12a -> "nfvcb12a"
        CRNRNFVCB15 -> "nfvcb15"
        CRNRNFVCB18 -> "nfvcb18"
        CRNRNfvcbG -> "nfvcbG"
        CRNRNfvcbPg -> "nfvcbPg"
        CRNRNfvcbRe -> "nfvcbRe"
        CRNRNfvcbUnrated -> "nfvcbUnrated"

-- | The video\'s rating from the Nacionãlais Kino centrs (National Film
-- Centre of Latvia).
data ContentRatingNkclvRating
    = CRNRNkclv12plus
      -- ^ @nkclv12plus@
    | CRNRNkclv18plus
      -- ^ @nkclv18plus@
    | CRNRNkclv7plus
      -- ^ @nkclv7plus@
    | CRNRNkclvU
      -- ^ @nkclvU@
    | CRNRNkclvUnrated
      -- ^ @nkclvUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingNkclvRating

instance FromText ContentRatingNkclvRating where
    fromText = \case
        "nkclv12plus" -> Just CRNRNkclv12plus
        "nkclv18plus" -> Just CRNRNkclv18plus
        "nkclv7plus" -> Just CRNRNkclv7plus
        "nkclvU" -> Just CRNRNkclvU
        "nkclvUnrated" -> Just CRNRNkclvUnrated
        _ -> Nothing

instance ToText ContentRatingNkclvRating where
    toText = \case
        CRNRNkclv12plus -> "nkclv12plus"
        CRNRNkclv18plus -> "nkclv18plus"
        CRNRNkclv7plus -> "nkclv7plus"
        CRNRNkclvU -> "nkclvU"
        CRNRNkclvUnrated -> "nkclvUnrated"

-- | The video\'s Office of Film and Literature Classification (OFLC - New
-- Zealand) rating.
data ContentRatingOflcRating
    = CROROflcG
      -- ^ @oflcG@
    | CROROflcM
      -- ^ @oflcM@
    | CROROflcPg
      -- ^ @oflcPg@
    | CROROFLCR13
      -- ^ @oflcR13@
    | CROROFLCR15
      -- ^ @oflcR15@
    | CROROFLCR16
      -- ^ @oflcR16@
    | CROROFLCR18
      -- ^ @oflcR18@
    | CROROFLCRP13
      -- ^ @oflcRp13@
    | CROROFLCRP16
      -- ^ @oflcRp16@
    | CROROflcUnrated
      -- ^ @oflcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingOflcRating

instance FromText ContentRatingOflcRating where
    fromText = \case
        "oflcG" -> Just CROROflcG
        "oflcM" -> Just CROROflcM
        "oflcPg" -> Just CROROflcPg
        "oflcR13" -> Just CROROFLCR13
        "oflcR15" -> Just CROROFLCR15
        "oflcR16" -> Just CROROFLCR16
        "oflcR18" -> Just CROROFLCR18
        "oflcRp13" -> Just CROROFLCRP13
        "oflcRp16" -> Just CROROFLCRP16
        "oflcUnrated" -> Just CROROflcUnrated
        _ -> Nothing

instance ToText ContentRatingOflcRating where
    toText = \case
        CROROflcG -> "oflcG"
        CROROflcM -> "oflcM"
        CROROflcPg -> "oflcPg"
        CROROFLCR13 -> "oflcR13"
        CROROFLCR15 -> "oflcR15"
        CROROFLCR16 -> "oflcR16"
        CROROFLCR18 -> "oflcR18"
        CROROFLCRP13 -> "oflcRp13"
        CROROFLCRP16 -> "oflcRp16"
        CROROflcUnrated -> "oflcUnrated"

-- | The video\'s rating in Peru.
data ContentRatingPefilmRating
    = CRPRPEFILM14
      -- ^ @pefilm14@
    | CRPRPEFILM18
      -- ^ @pefilm18@
    | CRPRPefilmPg
      -- ^ @pefilmPg@
    | CRPRPefilmPt
      -- ^ @pefilmPt@
    | CRPRPefilmUnrated
      -- ^ @pefilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingPefilmRating

instance FromText ContentRatingPefilmRating where
    fromText = \case
        "pefilm14" -> Just CRPRPEFILM14
        "pefilm18" -> Just CRPRPEFILM18
        "pefilmPg" -> Just CRPRPefilmPg
        "pefilmPt" -> Just CRPRPefilmPt
        "pefilmUnrated" -> Just CRPRPefilmUnrated
        _ -> Nothing

instance ToText ContentRatingPefilmRating where
    toText = \case
        CRPRPEFILM14 -> "pefilm14"
        CRPRPEFILM18 -> "pefilm18"
        CRPRPefilmPg -> "pefilmPg"
        CRPRPefilmPt -> "pefilmPt"
        CRPRPefilmUnrated -> "pefilmUnrated"

-- | The video\'s rating from the Hungarian Nemzeti Filmiroda, the Rating
-- Committee of the National Office of Film.
data ContentRatingRcnofRating
    = CRRRRcnofI
      -- ^ @rcnofI@
    | CRRRRcnofIi
      -- ^ @rcnofIi@
    | CRRRRcnofIii
      -- ^ @rcnofIii@
    | CRRRRcnofIv
      -- ^ @rcnofIv@
    | CRRRRcnofUnrated
      -- ^ @rcnofUnrated@
    | CRRRRcnofV
      -- ^ @rcnofV@
    | CRRRRcnofVi
      -- ^ @rcnofVi@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingRcnofRating

instance FromText ContentRatingRcnofRating where
    fromText = \case
        "rcnofI" -> Just CRRRRcnofI
        "rcnofIi" -> Just CRRRRcnofIi
        "rcnofIii" -> Just CRRRRcnofIii
        "rcnofIv" -> Just CRRRRcnofIv
        "rcnofUnrated" -> Just CRRRRcnofUnrated
        "rcnofV" -> Just CRRRRcnofV
        "rcnofVi" -> Just CRRRRcnofVi
        _ -> Nothing

instance ToText ContentRatingRcnofRating where
    toText = \case
        CRRRRcnofI -> "rcnofI"
        CRRRRcnofIi -> "rcnofIi"
        CRRRRcnofIii -> "rcnofIii"
        CRRRRcnofIv -> "rcnofIv"
        CRRRRcnofUnrated -> "rcnofUnrated"
        CRRRRcnofV -> "rcnofV"
        CRRRRcnofVi -> "rcnofVi"

-- | The video\'s rating in Venezuela.
data ContentRatingResorteviolenciaRating
    = CRRRResorteviolenciaA
      -- ^ @resorteviolenciaA@
    | CRRRResorteviolenciaB
      -- ^ @resorteviolenciaB@
    | CRRRResorteviolenciaC
      -- ^ @resorteviolenciaC@
    | CRRRResorteviolenciaD
      -- ^ @resorteviolenciaD@
    | CRRRResorteviolenciaE
      -- ^ @resorteviolenciaE@
    | CRRRResorteviolenciaUnrated
      -- ^ @resorteviolenciaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingResorteviolenciaRating

instance FromText ContentRatingResorteviolenciaRating where
    fromText = \case
        "resorteviolenciaA" -> Just CRRRResorteviolenciaA
        "resorteviolenciaB" -> Just CRRRResorteviolenciaB
        "resorteviolenciaC" -> Just CRRRResorteviolenciaC
        "resorteviolenciaD" -> Just CRRRResorteviolenciaD
        "resorteviolenciaE" -> Just CRRRResorteviolenciaE
        "resorteviolenciaUnrated" -> Just CRRRResorteviolenciaUnrated
        _ -> Nothing

instance ToText ContentRatingResorteviolenciaRating where
    toText = \case
        CRRRResorteviolenciaA -> "resorteviolenciaA"
        CRRRResorteviolenciaB -> "resorteviolenciaB"
        CRRRResorteviolenciaC -> "resorteviolenciaC"
        CRRRResorteviolenciaD -> "resorteviolenciaD"
        CRRRResorteviolenciaE -> "resorteviolenciaE"
        CRRRResorteviolenciaUnrated -> "resorteviolenciaUnrated"

-- | The video\'s General Directorate of Radio, Television and Cinematography
-- (Mexico) rating.
data ContentRatingRtcRating
    = CRRRRtcA
      -- ^ @rtcA@
    | CRRRRtcAa
      -- ^ @rtcAa@
    | CRRRRtcB
      -- ^ @rtcB@
    | CRRRRTCB15
      -- ^ @rtcB15@
    | CRRRRtcC
      -- ^ @rtcC@
    | CRRRRtcD
      -- ^ @rtcD@
    | CRRRRtcUnrated
      -- ^ @rtcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingRtcRating

instance FromText ContentRatingRtcRating where
    fromText = \case
        "rtcA" -> Just CRRRRtcA
        "rtcAa" -> Just CRRRRtcAa
        "rtcB" -> Just CRRRRtcB
        "rtcB15" -> Just CRRRRTCB15
        "rtcC" -> Just CRRRRtcC
        "rtcD" -> Just CRRRRtcD
        "rtcUnrated" -> Just CRRRRtcUnrated
        _ -> Nothing

instance ToText ContentRatingRtcRating where
    toText = \case
        CRRRRtcA -> "rtcA"
        CRRRRtcAa -> "rtcAa"
        CRRRRtcB -> "rtcB"
        CRRRRTCB15 -> "rtcB15"
        CRRRRtcC -> "rtcC"
        CRRRRtcD -> "rtcD"
        CRRRRtcUnrated -> "rtcUnrated"

-- | The video\'s rating from Ireland\'s Raidió Teilifís Éireann.
data ContentRatingRteRating
    = CRRRRteCh
      -- ^ @rteCh@
    | CRRRRteGa
      -- ^ @rteGa@
    | CRRRRteMa
      -- ^ @rteMa@
    | CRRRRtePs
      -- ^ @rtePs@
    | CRRRRteUnrated
      -- ^ @rteUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingRteRating

instance FromText ContentRatingRteRating where
    fromText = \case
        "rteCh" -> Just CRRRRteCh
        "rteGa" -> Just CRRRRteGa
        "rteMa" -> Just CRRRRteMa
        "rtePs" -> Just CRRRRtePs
        "rteUnrated" -> Just CRRRRteUnrated
        _ -> Nothing

instance ToText ContentRatingRteRating where
    toText = \case
        CRRRRteCh -> "rteCh"
        CRRRRteGa -> "rteGa"
        CRRRRteMa -> "rteMa"
        CRRRRtePs -> "rtePs"
        CRRRRteUnrated -> "rteUnrated"

-- | The video\'s National Film Registry of the Russian Federation (MKRF -
-- Russia) rating.
data ContentRatingRussiaRating
    = CRRRRUSSIA0
      -- ^ @russia0@
    | CRRRRUSSIA12
      -- ^ @russia12@
    | CRRRRUSSIA16
      -- ^ @russia16@
    | CRRRRUSSIA18
      -- ^ @russia18@
    | CRRRRUSSIA6
      -- ^ @russia6@
    | CRRRRussiaUnrated
      -- ^ @russiaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingRussiaRating

instance FromText ContentRatingRussiaRating where
    fromText = \case
        "russia0" -> Just CRRRRUSSIA0
        "russia12" -> Just CRRRRUSSIA12
        "russia16" -> Just CRRRRUSSIA16
        "russia18" -> Just CRRRRUSSIA18
        "russia6" -> Just CRRRRUSSIA6
        "russiaUnrated" -> Just CRRRRussiaUnrated
        _ -> Nothing

instance ToText ContentRatingRussiaRating where
    toText = \case
        CRRRRUSSIA0 -> "russia0"
        CRRRRUSSIA12 -> "russia12"
        CRRRRUSSIA16 -> "russia16"
        CRRRRUSSIA18 -> "russia18"
        CRRRRUSSIA6 -> "russia6"
        CRRRRussiaUnrated -> "russiaUnrated"

-- | The video\'s rating in Slovakia.
data ContentRatingSkfilmRating
    = CRSRSkfilmG
      -- ^ @skfilmG@
    | CRSRSKFILMP2
      -- ^ @skfilmP2@
    | CRSRSKFILMP5
      -- ^ @skfilmP5@
    | CRSRSKFILMP8
      -- ^ @skfilmP8@
    | CRSRSkfilmUnrated
      -- ^ @skfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingSkfilmRating

instance FromText ContentRatingSkfilmRating where
    fromText = \case
        "skfilmG" -> Just CRSRSkfilmG
        "skfilmP2" -> Just CRSRSKFILMP2
        "skfilmP5" -> Just CRSRSKFILMP5
        "skfilmP8" -> Just CRSRSKFILMP8
        "skfilmUnrated" -> Just CRSRSkfilmUnrated
        _ -> Nothing

instance ToText ContentRatingSkfilmRating where
    toText = \case
        CRSRSkfilmG -> "skfilmG"
        CRSRSKFILMP2 -> "skfilmP2"
        CRSRSKFILMP5 -> "skfilmP5"
        CRSRSKFILMP8 -> "skfilmP8"
        CRSRSkfilmUnrated -> "skfilmUnrated"

-- | The video\'s rating in Iceland.
data ContentRatingSmaisRating
    = CRSRSMAIS12
      -- ^ @smais12@
    | CRSRSMAIS14
      -- ^ @smais14@
    | CRSRSMAIS16
      -- ^ @smais16@
    | CRSRSMAIS18
      -- ^ @smais18@
    | CRSRSMAIS7
      -- ^ @smais7@
    | CRSRSmaisL
      -- ^ @smaisL@
    | CRSRSmaisUnrated
      -- ^ @smaisUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingSmaisRating

instance FromText ContentRatingSmaisRating where
    fromText = \case
        "smais12" -> Just CRSRSMAIS12
        "smais14" -> Just CRSRSMAIS14
        "smais16" -> Just CRSRSMAIS16
        "smais18" -> Just CRSRSMAIS18
        "smais7" -> Just CRSRSMAIS7
        "smaisL" -> Just CRSRSmaisL
        "smaisUnrated" -> Just CRSRSmaisUnrated
        _ -> Nothing

instance ToText ContentRatingSmaisRating where
    toText = \case
        CRSRSMAIS12 -> "smais12"
        CRSRSMAIS14 -> "smais14"
        CRSRSMAIS16 -> "smais16"
        CRSRSMAIS18 -> "smais18"
        CRSRSMAIS7 -> "smais7"
        CRSRSmaisL -> "smaisL"
        CRSRSmaisUnrated -> "smaisUnrated"

-- | The video\'s rating from Statens medieråd (Sweden\'s National Media
-- Council).
data ContentRatingSmsaRating
    = CRSRSMSA11
      -- ^ @smsa11@
    | CRSRSMSA15
      -- ^ @smsa15@
    | CRSRSMSA7
      -- ^ @smsa7@
    | CRSRSmsaA
      -- ^ @smsaA@
    | CRSRSmsaUnrated
      -- ^ @smsaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingSmsaRating

instance FromText ContentRatingSmsaRating where
    fromText = \case
        "smsa11" -> Just CRSRSMSA11
        "smsa15" -> Just CRSRSMSA15
        "smsa7" -> Just CRSRSMSA7
        "smsaA" -> Just CRSRSmsaA
        "smsaUnrated" -> Just CRSRSmsaUnrated
        _ -> Nothing

instance ToText ContentRatingSmsaRating where
    toText = \case
        CRSRSMSA11 -> "smsa11"
        CRSRSMSA15 -> "smsa15"
        CRSRSMSA7 -> "smsa7"
        CRSRSmsaA -> "smsaA"
        CRSRSmsaUnrated -> "smsaUnrated"

-- | The video\'s TV Parental Guidelines (TVPG) rating.
data ContentRatingTvpgRating
    = CRTRPG14
      -- ^ @pg14@
    | CRTRTvpgG
      -- ^ @tvpgG@
    | CRTRTvpgMa
      -- ^ @tvpgMa@
    | CRTRTvpgPg
      -- ^ @tvpgPg@
    | CRTRTvpgUnrated
      -- ^ @tvpgUnrated@
    | CRTRTvpgY
      -- ^ @tvpgY@
    | CRTRTVPGY7
      -- ^ @tvpgY7@
    | CRTRTvpgY7Fv
      -- ^ @tvpgY7Fv@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingTvpgRating

instance FromText ContentRatingTvpgRating where
    fromText = \case
        "pg14" -> Just CRTRPG14
        "tvpgG" -> Just CRTRTvpgG
        "tvpgMa" -> Just CRTRTvpgMa
        "tvpgPg" -> Just CRTRTvpgPg
        "tvpgUnrated" -> Just CRTRTvpgUnrated
        "tvpgY" -> Just CRTRTvpgY
        "tvpgY7" -> Just CRTRTVPGY7
        "tvpgY7Fv" -> Just CRTRTvpgY7Fv
        _ -> Nothing

instance ToText ContentRatingTvpgRating where
    toText = \case
        CRTRPG14 -> "pg14"
        CRTRTvpgG -> "tvpgG"
        CRTRTvpgMa -> "tvpgMa"
        CRTRTvpgPg -> "tvpgPg"
        CRTRTvpgUnrated -> "tvpgUnrated"
        CRTRTvpgY -> "tvpgY"
        CRTRTVPGY7 -> "tvpgY7"
        CRTRTvpgY7Fv -> "tvpgY7Fv"

-- | A rating that YouTube uses to identify age-restricted content.
data ContentRatingYtRating
    = CRYRYtAgeRestricted
      -- ^ @ytAgeRestricted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingYtRating

instance FromText ContentRatingYtRating where
    fromText = \case
        "ytAgeRestricted" -> Just CRYRYtAgeRestricted
        _ -> Nothing

instance ToText ContentRatingYtRating where
    toText = \case
        CRYRYtAgeRestricted -> "ytAgeRestricted"

-- | Describes in which corner of the video the visual widget will appear.
data InvideoPositionCornerPosition
    = IPCPBottomLeft
      -- ^ @bottomLeft@
    | IPCPBottomRight
      -- ^ @bottomRight@
    | IPCPTopLeft
      -- ^ @topLeft@
    | IPCPTopRight
      -- ^ @topRight@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InvideoPositionCornerPosition

instance FromText InvideoPositionCornerPosition where
    fromText = \case
        "bottomLeft" -> Just IPCPBottomLeft
        "bottomRight" -> Just IPCPBottomRight
        "topLeft" -> Just IPCPTopLeft
        "topRight" -> Just IPCPTopRight
        _ -> Nothing

instance ToText InvideoPositionCornerPosition where
    toText = \case
        IPCPBottomLeft -> "bottomLeft"
        IPCPBottomRight -> "bottomRight"
        IPCPTopLeft -> "topLeft"
        IPCPTopRight -> "topRight"

-- | Defines the position type.
data InvideoPositionType
    = IPTCorner
      -- ^ @corner@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InvideoPositionType

instance FromText InvideoPositionType where
    fromText = \case
        "corner" -> Just IPTCorner
        _ -> Nothing

instance ToText InvideoPositionType where
    toText = \case
        IPTCorner -> "corner"

-- | Describes a timing type. If the value is offsetFromStart, then the
-- offsetMs field represents an offset from the start of the video. If the
-- value is offsetFromEnd, then the offsetMs field represents an offset
-- from the end of the video.
data InvideoTimingType
    = ITTOffsetFromEnd
      -- ^ @offsetFromEnd@
    | ITTOffsetFromStart
      -- ^ @offsetFromStart@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InvideoTimingType

instance FromText InvideoTimingType where
    fromText = \case
        "offsetFromEnd" -> Just ITTOffsetFromEnd
        "offsetFromStart" -> Just ITTOffsetFromStart
        _ -> Nothing

instance ToText InvideoTimingType where
    toText = \case
        ITTOffsetFromEnd -> "offsetFromEnd"
        ITTOffsetFromStart -> "offsetFromStart"

-- | The broadcast\'s status. The status can be updated using the API\'s
-- liveBroadcasts.transition method.
data LiveBroadcastStatusLifeCycleStatus
    = LBSLCSAbandoned
      -- ^ @abandoned@
    | LBSLCSComplete
      -- ^ @complete@
    | LBSLCSCompleteStarting
      -- ^ @completeStarting@
    | LBSLCSCreated
      -- ^ @created@
    | LBSLCSLive
      -- ^ @live@
    | LBSLCSLiveStarting
      -- ^ @liveStarting@
    | LBSLCSReady
      -- ^ @ready@
    | LBSLCSReclaimed
      -- ^ @reclaimed@
    | LBSLCSRevoked
      -- ^ @revoked@
    | LBSLCSTestStarting
      -- ^ @testStarting@
    | LBSLCSTesting
      -- ^ @testing@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastStatusLifeCycleStatus

instance FromText LiveBroadcastStatusLifeCycleStatus where
    fromText = \case
        "abandoned" -> Just LBSLCSAbandoned
        "complete" -> Just LBSLCSComplete
        "completeStarting" -> Just LBSLCSCompleteStarting
        "created" -> Just LBSLCSCreated
        "live" -> Just LBSLCSLive
        "liveStarting" -> Just LBSLCSLiveStarting
        "ready" -> Just LBSLCSReady
        "reclaimed" -> Just LBSLCSReclaimed
        "revoked" -> Just LBSLCSRevoked
        "testStarting" -> Just LBSLCSTestStarting
        "testing" -> Just LBSLCSTesting
        _ -> Nothing

instance ToText LiveBroadcastStatusLifeCycleStatus where
    toText = \case
        LBSLCSAbandoned -> "abandoned"
        LBSLCSComplete -> "complete"
        LBSLCSCompleteStarting -> "completeStarting"
        LBSLCSCreated -> "created"
        LBSLCSLive -> "live"
        LBSLCSLiveStarting -> "liveStarting"
        LBSLCSReady -> "ready"
        LBSLCSReclaimed -> "reclaimed"
        LBSLCSRevoked -> "revoked"
        LBSLCSTestStarting -> "testStarting"
        LBSLCSTesting -> "testing"

-- | Priority of the live broadcast event (internal state).
data LiveBroadcastStatusLiveBroadcastPriority
    = LBSLBPHigh
      -- ^ @high@
    | LBSLBPLow
      -- ^ @low@
    | LBSLBPNormal
      -- ^ @normal@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastStatusLiveBroadcastPriority

instance FromText LiveBroadcastStatusLiveBroadcastPriority where
    fromText = \case
        "high" -> Just LBSLBPHigh
        "low" -> Just LBSLBPLow
        "normal" -> Just LBSLBPNormal
        _ -> Nothing

instance ToText LiveBroadcastStatusLiveBroadcastPriority where
    toText = \case
        LBSLBPHigh -> "high"
        LBSLBPLow -> "low"
        LBSLBPNormal -> "normal"

-- | The broadcast\'s privacy status. Note that the broadcast represents
-- exactly one YouTube video, so the privacy settings are identical to
-- those supported for videos. In addition, you can set this field by
-- modifying the broadcast resource or by setting the privacyStatus field
-- of the corresponding video resource.
data LiveBroadcastStatusPrivacyStatus
    = LBSPSPrivate
      -- ^ @private@
    | LBSPSPublic
      -- ^ @public@
    | LBSPSUnlisted
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastStatusPrivacyStatus

instance FromText LiveBroadcastStatusPrivacyStatus where
    fromText = \case
        "private" -> Just LBSPSPrivate
        "public" -> Just LBSPSPublic
        "unlisted" -> Just LBSPSUnlisted
        _ -> Nothing

instance ToText LiveBroadcastStatusPrivacyStatus where
    toText = \case
        LBSPSPrivate -> "private"
        LBSPSPublic -> "public"
        LBSPSUnlisted -> "unlisted"

-- | The broadcast\'s recording status.
data LiveBroadcastStatusRecordingStatus
    = LBSRSNotRecording
      -- ^ @notRecording@
    | LBSRSRecorded
      -- ^ @recorded@
    | LBSRSRecording
      -- ^ @recording@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastStatusRecordingStatus

instance FromText LiveBroadcastStatusRecordingStatus where
    fromText = \case
        "notRecording" -> Just LBSRSNotRecording
        "recorded" -> Just LBSRSRecorded
        "recording" -> Just LBSRSRecording
        _ -> Nothing

instance ToText LiveBroadcastStatusRecordingStatus where
    toText = \case
        LBSRSNotRecording -> "notRecording"
        LBSRSRecorded -> "recorded"
        LBSRSRecording -> "recording"

-- | The type of the topic.
data LiveBroadcastTopicType
    = LBTTVideoGame
      -- ^ @videoGame@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastTopicType

instance FromText LiveBroadcastTopicType where
    fromText = \case
        "videoGame" -> Just LBTTVideoGame
        _ -> Nothing

instance ToText LiveBroadcastTopicType where
    toText = \case
        LBTTVideoGame -> "videoGame"

-- | How severe this issue is to the stream.
data LiveStreamConfigurationIssueSeverity
    = LSCISError
      -- ^ @error@
    | LSCISInfo
      -- ^ @info@
    | LSCISWarning
      -- ^ @warning@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveStreamConfigurationIssueSeverity

instance FromText LiveStreamConfigurationIssueSeverity where
    fromText = \case
        "error" -> Just LSCISError
        "info" -> Just LSCISInfo
        "warning" -> Just LSCISWarning
        _ -> Nothing

instance ToText LiveStreamConfigurationIssueSeverity where
    toText = \case
        LSCISError -> "error"
        LSCISInfo -> "info"
        LSCISWarning -> "warning"

-- | The kind of error happening.
data LiveStreamConfigurationIssueType
    = LSCITAudioBitrateHigh
      -- ^ @audioBitrateHigh@
    | LSCITAudioBitrateLow
      -- ^ @audioBitrateLow@
    | LSCITAudioBitrateMismatch
      -- ^ @audioBitrateMismatch@
    | LSCITAudioCodec
      -- ^ @audioCodec@
    | LSCITAudioCodecMismatch
      -- ^ @audioCodecMismatch@
    | LSCITAudioSampleRate
      -- ^ @audioSampleRate@
    | LSCITAudioSampleRateMismatch
      -- ^ @audioSampleRateMismatch@
    | LSCITAudioStereoMismatch
      -- ^ @audioStereoMismatch@
    | LSCITAudioTooManyChannels
      -- ^ @audioTooManyChannels@
    | LSCITBadContainer
      -- ^ @badContainer@
    | LSCITBitrateHigh
      -- ^ @bitrateHigh@
    | LSCITBitrateLow
      -- ^ @bitrateLow@
    | LSCITFrameRateHigh
      -- ^ @frameRateHigh@
    | LSCITFramerateMismatch
      -- ^ @framerateMismatch@
    | LSCITGopMismatch
      -- ^ @gopMismatch@
    | LSCITGopSizeLong
      -- ^ @gopSizeLong@
    | LSCITGopSizeOver
      -- ^ @gopSizeOver@
    | LSCITGopSizeShort
      -- ^ @gopSizeShort@
    | LSCITInterlacedVideo
      -- ^ @interlacedVideo@
    | LSCITMultipleAudioStreams
      -- ^ @multipleAudioStreams@
    | LSCITMultipleVideoStreams
      -- ^ @multipleVideoStreams@
    | LSCITNoAudioStream
      -- ^ @noAudioStream@
    | LSCITNoVideoStream
      -- ^ @noVideoStream@
    | LSCITOpenGop
      -- ^ @openGop@
    | LSCITResolutionMismatch
      -- ^ @resolutionMismatch@
    | LSCITVideoBitrateMismatch
      -- ^ @videoBitrateMismatch@
    | LSCITVideoCodec
      -- ^ @videoCodec@
    | LSCITVideoCodecMismatch
      -- ^ @videoCodecMismatch@
    | LSCITVideoIngestionStarved
      -- ^ @videoIngestionStarved@
    | LSCITVideoInterlaceMismatch
      -- ^ @videoInterlaceMismatch@
    | LSCITVideoProfileMismatch
      -- ^ @videoProfileMismatch@
    | LSCITVideoResolutionSuboptimal
      -- ^ @videoResolutionSuboptimal@
    | LSCITVideoResolutionUnsupported
      -- ^ @videoResolutionUnsupported@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveStreamConfigurationIssueType

instance FromText LiveStreamConfigurationIssueType where
    fromText = \case
        "audioBitrateHigh" -> Just LSCITAudioBitrateHigh
        "audioBitrateLow" -> Just LSCITAudioBitrateLow
        "audioBitrateMismatch" -> Just LSCITAudioBitrateMismatch
        "audioCodec" -> Just LSCITAudioCodec
        "audioCodecMismatch" -> Just LSCITAudioCodecMismatch
        "audioSampleRate" -> Just LSCITAudioSampleRate
        "audioSampleRateMismatch" -> Just LSCITAudioSampleRateMismatch
        "audioStereoMismatch" -> Just LSCITAudioStereoMismatch
        "audioTooManyChannels" -> Just LSCITAudioTooManyChannels
        "badContainer" -> Just LSCITBadContainer
        "bitrateHigh" -> Just LSCITBitrateHigh
        "bitrateLow" -> Just LSCITBitrateLow
        "frameRateHigh" -> Just LSCITFrameRateHigh
        "framerateMismatch" -> Just LSCITFramerateMismatch
        "gopMismatch" -> Just LSCITGopMismatch
        "gopSizeLong" -> Just LSCITGopSizeLong
        "gopSizeOver" -> Just LSCITGopSizeOver
        "gopSizeShort" -> Just LSCITGopSizeShort
        "interlacedVideo" -> Just LSCITInterlacedVideo
        "multipleAudioStreams" -> Just LSCITMultipleAudioStreams
        "multipleVideoStreams" -> Just LSCITMultipleVideoStreams
        "noAudioStream" -> Just LSCITNoAudioStream
        "noVideoStream" -> Just LSCITNoVideoStream
        "openGop" -> Just LSCITOpenGop
        "resolutionMismatch" -> Just LSCITResolutionMismatch
        "videoBitrateMismatch" -> Just LSCITVideoBitrateMismatch
        "videoCodec" -> Just LSCITVideoCodec
        "videoCodecMismatch" -> Just LSCITVideoCodecMismatch
        "videoIngestionStarved" -> Just LSCITVideoIngestionStarved
        "videoInterlaceMismatch" -> Just LSCITVideoInterlaceMismatch
        "videoProfileMismatch" -> Just LSCITVideoProfileMismatch
        "videoResolutionSuboptimal" -> Just LSCITVideoResolutionSuboptimal
        "videoResolutionUnsupported" -> Just LSCITVideoResolutionUnsupported
        _ -> Nothing

instance ToText LiveStreamConfigurationIssueType where
    toText = \case
        LSCITAudioBitrateHigh -> "audioBitrateHigh"
        LSCITAudioBitrateLow -> "audioBitrateLow"
        LSCITAudioBitrateMismatch -> "audioBitrateMismatch"
        LSCITAudioCodec -> "audioCodec"
        LSCITAudioCodecMismatch -> "audioCodecMismatch"
        LSCITAudioSampleRate -> "audioSampleRate"
        LSCITAudioSampleRateMismatch -> "audioSampleRateMismatch"
        LSCITAudioStereoMismatch -> "audioStereoMismatch"
        LSCITAudioTooManyChannels -> "audioTooManyChannels"
        LSCITBadContainer -> "badContainer"
        LSCITBitrateHigh -> "bitrateHigh"
        LSCITBitrateLow -> "bitrateLow"
        LSCITFrameRateHigh -> "frameRateHigh"
        LSCITFramerateMismatch -> "framerateMismatch"
        LSCITGopMismatch -> "gopMismatch"
        LSCITGopSizeLong -> "gopSizeLong"
        LSCITGopSizeOver -> "gopSizeOver"
        LSCITGopSizeShort -> "gopSizeShort"
        LSCITInterlacedVideo -> "interlacedVideo"
        LSCITMultipleAudioStreams -> "multipleAudioStreams"
        LSCITMultipleVideoStreams -> "multipleVideoStreams"
        LSCITNoAudioStream -> "noAudioStream"
        LSCITNoVideoStream -> "noVideoStream"
        LSCITOpenGop -> "openGop"
        LSCITResolutionMismatch -> "resolutionMismatch"
        LSCITVideoBitrateMismatch -> "videoBitrateMismatch"
        LSCITVideoCodec -> "videoCodec"
        LSCITVideoCodecMismatch -> "videoCodecMismatch"
        LSCITVideoIngestionStarved -> "videoIngestionStarved"
        LSCITVideoInterlaceMismatch -> "videoInterlaceMismatch"
        LSCITVideoProfileMismatch -> "videoProfileMismatch"
        LSCITVideoResolutionSuboptimal -> "videoResolutionSuboptimal"
        LSCITVideoResolutionUnsupported -> "videoResolutionUnsupported"

-- | The status code of this stream
data LiveStreamHealthStatusStatus
    = LSHSSBad
      -- ^ @bad@
    | LSHSSGood
      -- ^ @good@
    | LSHSSNoData
      -- ^ @noData@
    | LSHSSOK
      -- ^ @ok@
    | LSHSSRevoked
      -- ^ @revoked@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveStreamHealthStatusStatus

instance FromText LiveStreamHealthStatusStatus where
    fromText = \case
        "bad" -> Just LSHSSBad
        "good" -> Just LSHSSGood
        "noData" -> Just LSHSSNoData
        "ok" -> Just LSHSSOK
        "revoked" -> Just LSHSSRevoked
        _ -> Nothing

instance ToText LiveStreamHealthStatusStatus where
    toText = \case
        LSHSSBad -> "bad"
        LSHSSGood -> "good"
        LSHSSNoData -> "noData"
        LSHSSOK -> "ok"
        LSHSSRevoked -> "revoked"

data LiveStreamStatusStreamStatus
    = LSSSSActive
      -- ^ @active@
    | LSSSSCreated
      -- ^ @created@
    | LSSSSError
      -- ^ @error@
    | LSSSSInactive
      -- ^ @inactive@
    | LSSSSReady
      -- ^ @ready@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveStreamStatusStreamStatus

instance FromText LiveStreamStatusStreamStatus where
    fromText = \case
        "active" -> Just LSSSSActive
        "created" -> Just LSSSSCreated
        "error" -> Just LSSSSError
        "inactive" -> Just LSSSSInactive
        "ready" -> Just LSSSSReady
        _ -> Nothing

instance ToText LiveStreamStatusStreamStatus where
    toText = \case
        LSSSSActive -> "active"
        LSSSSCreated -> "created"
        LSSSSError -> "error"
        LSSSSInactive -> "inactive"
        LSSSSReady -> "ready"

-- | This resource\'s privacy status.
data PlaylistItemStatusPrivacyStatus
    = PISPSPrivate
      -- ^ @private@
    | PISPSPublic
      -- ^ @public@
    | PISPSUnlisted
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlaylistItemStatusPrivacyStatus

instance FromText PlaylistItemStatusPrivacyStatus where
    fromText = \case
        "private" -> Just PISPSPrivate
        "public" -> Just PISPSPublic
        "unlisted" -> Just PISPSUnlisted
        _ -> Nothing

instance ToText PlaylistItemStatusPrivacyStatus where
    toText = \case
        PISPSPrivate -> "private"
        PISPSPublic -> "public"
        PISPSUnlisted -> "unlisted"

-- | The playlist\'s privacy status.
data PlaylistStatusPrivacyStatus
    = PSPSPrivate
      -- ^ @private@
    | PSPSPublic
      -- ^ @public@
    | PSPSUnlisted
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlaylistStatusPrivacyStatus

instance FromText PlaylistStatusPrivacyStatus where
    fromText = \case
        "private" -> Just PSPSPrivate
        "public" -> Just PSPSPublic
        "unlisted" -> Just PSPSUnlisted
        _ -> Nothing

instance ToText PlaylistStatusPrivacyStatus where
    toText = \case
        PSPSPrivate -> "private"
        PSPSPublic -> "public"
        PSPSUnlisted -> "unlisted"

-- | Describes the type of the promoted item.
data PromotedItemIdType
    = PIITRecentUpload
      -- ^ @recentUpload@
    | PIITVideo
      -- ^ @video@
    | PIITWebsite
      -- ^ @website@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PromotedItemIdType

instance FromText PromotedItemIdType where
    fromText = \case
        "recentUpload" -> Just PIITRecentUpload
        "video" -> Just PIITVideo
        "website" -> Just PIITWebsite
        _ -> Nothing

instance ToText PromotedItemIdType where
    toText = \case
        PIITRecentUpload -> "recentUpload"
        PIITVideo -> "video"
        PIITWebsite -> "website"

-- | It indicates if the resource (video or channel) has upcoming\/active
-- live broadcast content. Or it\'s \"none\" if there is not any
-- upcoming\/active live broadcasts.
data SearchResultSnippetLiveBroadcastContent
    = SRSLBCLive
      -- ^ @live@
    | SRSLBCNone
      -- ^ @none@
    | SRSLBCUpcoming
      -- ^ @upcoming@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchResultSnippetLiveBroadcastContent

instance FromText SearchResultSnippetLiveBroadcastContent where
    fromText = \case
        "live" -> Just SRSLBCLive
        "none" -> Just SRSLBCNone
        "upcoming" -> Just SRSLBCUpcoming
        _ -> Nothing

instance ToText SearchResultSnippetLiveBroadcastContent where
    toText = \case
        SRSLBCLive -> "live"
        SRSLBCNone -> "none"
        SRSLBCUpcoming -> "upcoming"

-- | The type of activity this subscription is for (only uploads,
-- everything).
data SubscriptionContentDetailsActivityType
    = SCDATAll
      -- ^ @all@
    | SCDATUploads
      -- ^ @uploads@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SubscriptionContentDetailsActivityType

instance FromText SubscriptionContentDetailsActivityType where
    fromText = \case
        "all" -> Just SCDATAll
        "uploads" -> Just SCDATUploads
        _ -> Nothing

instance ToText SubscriptionContentDetailsActivityType where
    toText = \case
        SCDATAll -> "all"
        SCDATUploads -> "uploads"

-- | Video game rating, if any.
data VideoAgeGatingVideoGameRating
    = VAGVGRAnyone
      -- ^ @anyone@
    | VAGVGRM15Plus
      -- ^ @m15Plus@
    | VAGVGRM16Plus
      -- ^ @m16Plus@
    | VAGVGRM17Plus
      -- ^ @m17Plus@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoAgeGatingVideoGameRating

instance FromText VideoAgeGatingVideoGameRating where
    fromText = \case
        "anyone" -> Just VAGVGRAnyone
        "m15Plus" -> Just VAGVGRM15Plus
        "m16Plus" -> Just VAGVGRM16Plus
        "m17Plus" -> Just VAGVGRM17Plus
        _ -> Nothing

instance ToText VideoAgeGatingVideoGameRating where
    toText = \case
        VAGVGRAnyone -> "anyone"
        VAGVGRM15Plus -> "m15Plus"
        VAGVGRM16Plus -> "m16Plus"
        VAGVGRM17Plus -> "m17Plus"

-- | The value of captions indicates whether the video has captions or not.
data VideoContentDetailsCaption
    = VCDCFalse
      -- ^ @false@
    | VCDCTrue
      -- ^ @true@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoContentDetailsCaption

instance FromText VideoContentDetailsCaption where
    fromText = \case
        "false" -> Just VCDCFalse
        "true" -> Just VCDCTrue
        _ -> Nothing

instance ToText VideoContentDetailsCaption where
    toText = \case
        VCDCFalse -> "false"
        VCDCTrue -> "true"

-- | The value of definition indicates whether the video is available in high
-- definition or only in standard definition.
data VideoContentDetailsDefinition
    = VCDDHD
      -- ^ @hd@
    | VCDDSD
      -- ^ @sd@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoContentDetailsDefinition

instance FromText VideoContentDetailsDefinition where
    fromText = \case
        "hd" -> Just VCDDHD
        "sd" -> Just VCDDSD
        _ -> Nothing

instance ToText VideoContentDetailsDefinition where
    toText = \case
        VCDDHD -> "hd"
        VCDDSD -> "sd"

-- | Defines the context of the ping.
data VideoConversionPingContext
    = VCPCComment
      -- ^ @comment@
    | VCPCDislike
      -- ^ @dislike@
    | VCPCLike
      -- ^ @like@
    | VCPCShare
      -- ^ @share@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoConversionPingContext

instance FromText VideoConversionPingContext where
    fromText = \case
        "comment" -> Just VCPCComment
        "dislike" -> Just VCPCDislike
        "like" -> Just VCPCLike
        "share" -> Just VCPCShare
        _ -> Nothing

instance ToText VideoConversionPingContext where
    toText = \case
        VCPCComment -> "comment"
        VCPCDislike -> "dislike"
        VCPCLike -> "like"
        VCPCShare -> "share"

-- | The uploaded file\'s type as detected by YouTube\'s video processing
-- engine. Currently, YouTube only processes video files, but this field is
-- present whether a video file or another type of file was uploaded.
data VideoFileDetailsFileType
    = VFDFTArchive
      -- ^ @archive@
    | VFDFTAudio
      -- ^ @audio@
    | VFDFTDocument
      -- ^ @document@
    | VFDFTImage
      -- ^ @image@
    | VFDFTOther
      -- ^ @other@
    | VFDFTProject
      -- ^ @project@
    | VFDFTVideo
      -- ^ @video@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoFileDetailsFileType

instance FromText VideoFileDetailsFileType where
    fromText = \case
        "archive" -> Just VFDFTArchive
        "audio" -> Just VFDFTAudio
        "document" -> Just VFDFTDocument
        "image" -> Just VFDFTImage
        "other" -> Just VFDFTOther
        "project" -> Just VFDFTProject
        "video" -> Just VFDFTVideo
        _ -> Nothing

instance ToText VideoFileDetailsFileType where
    toText = \case
        VFDFTArchive -> "archive"
        VFDFTAudio -> "audio"
        VFDFTDocument -> "document"
        VFDFTImage -> "image"
        VFDFTOther -> "other"
        VFDFTProject -> "project"
        VFDFTVideo -> "video"

-- | The amount that YouTube needs to rotate the original source content to
-- properly display the video.
data VideoFileDetailsVideoStreamRotation
    = VFDVSRClockwise
      -- ^ @clockwise@
    | VFDVSRCounterClockwise
      -- ^ @counterClockwise@
    | VFDVSRNone
      -- ^ @none@
    | VFDVSROther
      -- ^ @other@
    | VFDVSRUpsideDown
      -- ^ @upsideDown@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoFileDetailsVideoStreamRotation

instance FromText VideoFileDetailsVideoStreamRotation where
    fromText = \case
        "clockwise" -> Just VFDVSRClockwise
        "counterClockwise" -> Just VFDVSRCounterClockwise
        "none" -> Just VFDVSRNone
        "other" -> Just VFDVSROther
        "upsideDown" -> Just VFDVSRUpsideDown
        _ -> Nothing

instance ToText VideoFileDetailsVideoStreamRotation where
    toText = \case
        VFDVSRClockwise -> "clockwise"
        VFDVSRCounterClockwise -> "counterClockwise"
        VFDVSRNone -> "none"
        VFDVSROther -> "other"
        VFDVSRUpsideDown -> "upsideDown"

-- | The reason that YouTube failed to process the video. This property will
-- only have a value if the processingStatus property\'s value is failed.
data VideoProcessingDetailsProcessingFailureReason
    = VPDPFROther
      -- ^ @other@
    | VPDPFRStreamingFailed
      -- ^ @streamingFailed@
    | VPDPFRTranscodeFailed
      -- ^ @transcodeFailed@
    | VPDPFRUploadFailed
      -- ^ @uploadFailed@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoProcessingDetailsProcessingFailureReason

instance FromText VideoProcessingDetailsProcessingFailureReason where
    fromText = \case
        "other" -> Just VPDPFROther
        "streamingFailed" -> Just VPDPFRStreamingFailed
        "transcodeFailed" -> Just VPDPFRTranscodeFailed
        "uploadFailed" -> Just VPDPFRUploadFailed
        _ -> Nothing

instance ToText VideoProcessingDetailsProcessingFailureReason where
    toText = \case
        VPDPFROther -> "other"
        VPDPFRStreamingFailed -> "streamingFailed"
        VPDPFRTranscodeFailed -> "transcodeFailed"
        VPDPFRUploadFailed -> "uploadFailed"

-- | The video\'s processing status. This value indicates whether YouTube was
-- able to process the video or if the video is still being processed.
data VideoProcessingDetailsProcessingStatus
    = VPDPSFailed
      -- ^ @failed@
    | VPDPSProcessing
      -- ^ @processing@
    | VPDPSSucceeded
      -- ^ @succeeded@
    | VPDPSTerminated
      -- ^ @terminated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoProcessingDetailsProcessingStatus

instance FromText VideoProcessingDetailsProcessingStatus where
    fromText = \case
        "failed" -> Just VPDPSFailed
        "processing" -> Just VPDPSProcessing
        "succeeded" -> Just VPDPSSucceeded
        "terminated" -> Just VPDPSTerminated
        _ -> Nothing

instance ToText VideoProcessingDetailsProcessingStatus where
    toText = \case
        VPDPSFailed -> "failed"
        VPDPSProcessing -> "processing"
        VPDPSSucceeded -> "succeeded"
        VPDPSTerminated -> "terminated"

data VideoRatingRating
    = VRRDislike
      -- ^ @dislike@
    | VRRLike
      -- ^ @like@
    | VRRNone
      -- ^ @none@
    | VRRUnspecified
      -- ^ @unspecified@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoRatingRating

instance FromText VideoRatingRating where
    fromText = \case
        "dislike" -> Just VRRDislike
        "like" -> Just VRRLike
        "none" -> Just VRRNone
        "unspecified" -> Just VRRUnspecified
        _ -> Nothing

instance ToText VideoRatingRating where
    toText = \case
        VRRDislike -> "dislike"
        VRRLike -> "like"
        VRRNone -> "none"
        VRRUnspecified -> "unspecified"

-- | Indicates if the video is an upcoming\/active live broadcast. Or it\'s
-- \"none\" if the video is not an upcoming\/active live broadcast.
data VideoSnippetLiveBroadcastContent
    = VSLBCLive
      -- ^ @live@
    | VSLBCNone
      -- ^ @none@
    | VSLBCUpcoming
      -- ^ @upcoming@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoSnippetLiveBroadcastContent

instance FromText VideoSnippetLiveBroadcastContent where
    fromText = \case
        "live" -> Just VSLBCLive
        "none" -> Just VSLBCNone
        "upcoming" -> Just VSLBCUpcoming
        _ -> Nothing

instance ToText VideoSnippetLiveBroadcastContent where
    toText = \case
        VSLBCLive -> "live"
        VSLBCNone -> "none"
        VSLBCUpcoming -> "upcoming"

-- | This value explains why a video failed to upload. This property is only
-- present if the uploadStatus property indicates that the upload failed.
data VideoStatusFailureReason
    = VSFRCodec
      -- ^ @codec@
    | VSFRConversion
      -- ^ @conversion@
    | VSFREmptyFile
      -- ^ @emptyFile@
    | VSFRInvalidFile
      -- ^ @invalidFile@
    | VSFRTooSmall
      -- ^ @tooSmall@
    | VSFRUploadAborted
      -- ^ @uploadAborted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoStatusFailureReason

instance FromText VideoStatusFailureReason where
    fromText = \case
        "codec" -> Just VSFRCodec
        "conversion" -> Just VSFRConversion
        "emptyFile" -> Just VSFREmptyFile
        "invalidFile" -> Just VSFRInvalidFile
        "tooSmall" -> Just VSFRTooSmall
        "uploadAborted" -> Just VSFRUploadAborted
        _ -> Nothing

instance ToText VideoStatusFailureReason where
    toText = \case
        VSFRCodec -> "codec"
        VSFRConversion -> "conversion"
        VSFREmptyFile -> "emptyFile"
        VSFRInvalidFile -> "invalidFile"
        VSFRTooSmall -> "tooSmall"
        VSFRUploadAborted -> "uploadAborted"

-- | The video\'s license.
data VideoStatusLicense
    = VSLCreativeCommon
      -- ^ @creativeCommon@
    | VSLYoutube
      -- ^ @youtube@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoStatusLicense

instance FromText VideoStatusLicense where
    fromText = \case
        "creativeCommon" -> Just VSLCreativeCommon
        "youtube" -> Just VSLYoutube
        _ -> Nothing

instance ToText VideoStatusLicense where
    toText = \case
        VSLCreativeCommon -> "creativeCommon"
        VSLYoutube -> "youtube"

-- | The video\'s privacy status.
data VideoStatusPrivacyStatus
    = VSPSPrivate
      -- ^ @private@
    | VSPSPublic
      -- ^ @public@
    | VSPSUnlisted
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoStatusPrivacyStatus

instance FromText VideoStatusPrivacyStatus where
    fromText = \case
        "private" -> Just VSPSPrivate
        "public" -> Just VSPSPublic
        "unlisted" -> Just VSPSUnlisted
        _ -> Nothing

instance ToText VideoStatusPrivacyStatus where
    toText = \case
        VSPSPrivate -> "private"
        VSPSPublic -> "public"
        VSPSUnlisted -> "unlisted"

-- | This value explains why YouTube rejected an uploaded video. This
-- property is only present if the uploadStatus property indicates that the
-- upload was rejected.
data VideoStatusRejectionReason
    = VSRRClaim
      -- ^ @claim@
    | VSRRCopyright
      -- ^ @copyright@
    | VSRRDuplicate
      -- ^ @duplicate@
    | VSRRInappropriate
      -- ^ @inappropriate@
    | VSRRLength
      -- ^ @length@
    | VSRRTermsOfUse
      -- ^ @termsOfUse@
    | VSRRTrademark
      -- ^ @trademark@
    | VSRRUploaderAccountClosed
      -- ^ @uploaderAccountClosed@
    | VSRRUploaderAccountSuspended
      -- ^ @uploaderAccountSuspended@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoStatusRejectionReason

instance FromText VideoStatusRejectionReason where
    fromText = \case
        "claim" -> Just VSRRClaim
        "copyright" -> Just VSRRCopyright
        "duplicate" -> Just VSRRDuplicate
        "inappropriate" -> Just VSRRInappropriate
        "length" -> Just VSRRLength
        "termsOfUse" -> Just VSRRTermsOfUse
        "trademark" -> Just VSRRTrademark
        "uploaderAccountClosed" -> Just VSRRUploaderAccountClosed
        "uploaderAccountSuspended" -> Just VSRRUploaderAccountSuspended
        _ -> Nothing

instance ToText VideoStatusRejectionReason where
    toText = \case
        VSRRClaim -> "claim"
        VSRRCopyright -> "copyright"
        VSRRDuplicate -> "duplicate"
        VSRRInappropriate -> "inappropriate"
        VSRRLength -> "length"
        VSRRTermsOfUse -> "termsOfUse"
        VSRRTrademark -> "trademark"
        VSRRUploaderAccountClosed -> "uploaderAccountClosed"
        VSRRUploaderAccountSuspended -> "uploaderAccountSuspended"

-- | The status of the uploaded video.
data VideoStatusUploadStatus
    = VSUSDeleted
      -- ^ @deleted@
    | VSUSFailed
      -- ^ @failed@
    | VSUSProcessed
      -- ^ @processed@
    | VSUSRejected
      -- ^ @rejected@
    | VSUSUploaded
      -- ^ @uploaded@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoStatusUploadStatus

instance FromText VideoStatusUploadStatus where
    fromText = \case
        "deleted" -> Just VSUSDeleted
        "failed" -> Just VSUSFailed
        "processed" -> Just VSUSProcessed
        "rejected" -> Just VSUSRejected
        "uploaded" -> Just VSUSUploaded
        _ -> Nothing

instance ToText VideoStatusUploadStatus where
    toText = \case
        VSUSDeleted -> "deleted"
        VSUSFailed -> "failed"
        VSUSProcessed -> "processed"
        VSUSRejected -> "rejected"
        VSUSUploaded -> "uploaded"

data VideoSuggestionsItemEditorSuggestions
    = VSIESAudioQuietAudioSwap
      -- ^ @audioQuietAudioSwap@
    | VSIESVideoAutoLevels
      -- ^ @videoAutoLevels@
    | VSIESVideoCrop
      -- ^ @videoCrop@
    | VSIESVideoStabilize
      -- ^ @videoStabilize@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoSuggestionsItemEditorSuggestions

instance FromText VideoSuggestionsItemEditorSuggestions where
    fromText = \case
        "audioQuietAudioSwap" -> Just VSIESAudioQuietAudioSwap
        "videoAutoLevels" -> Just VSIESVideoAutoLevels
        "videoCrop" -> Just VSIESVideoCrop
        "videoStabilize" -> Just VSIESVideoStabilize
        _ -> Nothing

instance ToText VideoSuggestionsItemEditorSuggestions where
    toText = \case
        VSIESAudioQuietAudioSwap -> "audioQuietAudioSwap"
        VSIESVideoAutoLevels -> "videoAutoLevels"
        VSIESVideoCrop -> "videoCrop"
        VSIESVideoStabilize -> "videoStabilize"

data VideoSuggestionsItemProcessingErrors
    = VSIPEArchiveFile
      -- ^ @archiveFile@
    | VSIPEAudioFile
      -- ^ @audioFile@
    | VSIPEDocFile
      -- ^ @docFile@
    | VSIPEImageFile
      -- ^ @imageFile@
    | VSIPENotAVideoFile
      -- ^ @notAVideoFile@
    | VSIPEProjectFile
      -- ^ @projectFile@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoSuggestionsItemProcessingErrors

instance FromText VideoSuggestionsItemProcessingErrors where
    fromText = \case
        "archiveFile" -> Just VSIPEArchiveFile
        "audioFile" -> Just VSIPEAudioFile
        "docFile" -> Just VSIPEDocFile
        "imageFile" -> Just VSIPEImageFile
        "notAVideoFile" -> Just VSIPENotAVideoFile
        "projectFile" -> Just VSIPEProjectFile
        _ -> Nothing

instance ToText VideoSuggestionsItemProcessingErrors where
    toText = \case
        VSIPEArchiveFile -> "archiveFile"
        VSIPEAudioFile -> "audioFile"
        VSIPEDocFile -> "docFile"
        VSIPEImageFile -> "imageFile"
        VSIPENotAVideoFile -> "notAVideoFile"
        VSIPEProjectFile -> "projectFile"

data VideoSuggestionsItemProcessingHints
    = VSIPHNonStreamableMov
      -- ^ @nonStreamableMov@
    | VSIPHSendBestQualityVideo
      -- ^ @sendBestQualityVideo@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoSuggestionsItemProcessingHints

instance FromText VideoSuggestionsItemProcessingHints where
    fromText = \case
        "nonStreamableMov" -> Just VSIPHNonStreamableMov
        "sendBestQualityVideo" -> Just VSIPHSendBestQualityVideo
        _ -> Nothing

instance ToText VideoSuggestionsItemProcessingHints where
    toText = \case
        VSIPHNonStreamableMov -> "nonStreamableMov"
        VSIPHSendBestQualityVideo -> "sendBestQualityVideo"

data VideoSuggestionsItemProcessingWarnings
    = VSIPWHasEditlist
      -- ^ @hasEditlist@
    | VSIPWInconsistentResolution
      -- ^ @inconsistentResolution@
    | VSIPWProblematicAudioCodec
      -- ^ @problematicAudioCodec@
    | VSIPWProblematicVideoCodec
      -- ^ @problematicVideoCodec@
    | VSIPWUnknownAudioCodec
      -- ^ @unknownAudioCodec@
    | VSIPWUnknownContainer
      -- ^ @unknownContainer@
    | VSIPWUnknownVideoCodec
      -- ^ @unknownVideoCodec@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoSuggestionsItemProcessingWarnings

instance FromText VideoSuggestionsItemProcessingWarnings where
    fromText = \case
        "hasEditlist" -> Just VSIPWHasEditlist
        "inconsistentResolution" -> Just VSIPWInconsistentResolution
        "problematicAudioCodec" -> Just VSIPWProblematicAudioCodec
        "problematicVideoCodec" -> Just VSIPWProblematicVideoCodec
        "unknownAudioCodec" -> Just VSIPWUnknownAudioCodec
        "unknownContainer" -> Just VSIPWUnknownContainer
        "unknownVideoCodec" -> Just VSIPWUnknownVideoCodec
        _ -> Nothing

instance ToText VideoSuggestionsItemProcessingWarnings where
    toText = \case
        VSIPWHasEditlist -> "hasEditlist"
        VSIPWInconsistentResolution -> "inconsistentResolution"
        VSIPWProblematicAudioCodec -> "problematicAudioCodec"
        VSIPWProblematicVideoCodec -> "problematicVideoCodec"
        VSIPWUnknownAudioCodec -> "unknownAudioCodec"
        VSIPWUnknownContainer -> "unknownContainer"
        VSIPWUnknownVideoCodec -> "unknownVideoCodec"
