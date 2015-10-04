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

-- | The videoDefinition parameter lets you restrict a search to only include
-- either high definition (HD) or standard definition (SD) videos. HD
-- videos are available for playback in at least 720p, though higher
-- resolutions, like 1080p, might also be available. If you specify a value
-- for this parameter, you must also set the type parameter\'s value to
-- video.
data VideoDefinition
    = VDAny
      -- ^ @any@
      -- Return all videos, regardless of their resolution.
    | VDHigh
      -- ^ @high@
      -- Only retrieve HD videos.
    | VDStandard
      -- ^ @standard@
      -- Only retrieve videos in standard definition.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoDefinition

instance FromText VideoDefinition where
    fromText = \case
        "any" -> Just VDAny
        "high" -> Just VDHigh
        "standard" -> Just VDStandard
        _ -> Nothing

instance ToText VideoDefinition where
    toText = \case
        VDAny -> "any"
        VDHigh -> "high"
        VDStandard -> "standard"

instance FromJSON VideoDefinition where
    parseJSON = parseJSONText "VideoDefinition"

instance ToJSON VideoDefinition where
    toJSON = toJSONText

-- | The chart parameter identifies the chart that you want to retrieve.
data Chart
    = MostPopular
      -- ^ @mostPopular@
      -- Return the most popular videos for the specified content region and
      -- video category.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Chart

instance FromText Chart where
    fromText = \case
        "mostPopular" -> Just MostPopular
        _ -> Nothing

instance ToText Chart where
    toText = \case
        MostPopular -> "mostPopular"

instance FromJSON Chart where
    parseJSON = parseJSONText "Chart"

instance ToJSON Chart where
    toJSON = toJSONText

-- | This value explains why a video failed to upload. This property is only
-- present if the uploadStatus property indicates that the upload failed.
data FailureReason
    = FRCodec
      -- ^ @codec@
    | FRConversion
      -- ^ @conversion@
    | FREmptyFile
      -- ^ @emptyFile@
    | FRInvalidFile
      -- ^ @invalidFile@
    | FRTooSmall
      -- ^ @tooSmall@
    | FRUploadAborted
      -- ^ @uploadAborted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FailureReason

instance FromText FailureReason where
    fromText = \case
        "codec" -> Just FRCodec
        "conversion" -> Just FRConversion
        "emptyFile" -> Just FREmptyFile
        "invalidFile" -> Just FRInvalidFile
        "tooSmall" -> Just FRTooSmall
        "uploadAborted" -> Just FRUploadAborted
        _ -> Nothing

instance ToText FailureReason where
    toText = \case
        FRCodec -> "codec"
        FRConversion -> "conversion"
        FREmptyFile -> "emptyFile"
        FRInvalidFile -> "invalidFile"
        FRTooSmall -> "tooSmall"
        FRUploadAborted -> "uploadAborted"

instance FromJSON FailureReason where
    parseJSON = parseJSONText "FailureReason"

instance ToJSON FailureReason where
    toJSON = toJSONText

-- | The amount that YouTube needs to rotate the original source content to
-- properly display the video.
data Rotation
    = Clockwise
      -- ^ @clockwise@
    | CounterClockwise
      -- ^ @counterClockwise@
    | None
      -- ^ @none@
    | Other
      -- ^ @other@
    | UpsideDown
      -- ^ @upsideDown@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Rotation

instance FromText Rotation where
    fromText = \case
        "clockwise" -> Just Clockwise
        "counterClockwise" -> Just CounterClockwise
        "none" -> Just None
        "other" -> Just Other
        "upsideDown" -> Just UpsideDown
        _ -> Nothing

instance ToText Rotation where
    toText = \case
        Clockwise -> "clockwise"
        CounterClockwise -> "counterClockwise"
        None -> "none"
        Other -> "other"
        UpsideDown -> "upsideDown"

instance FromJSON Rotation where
    parseJSON = parseJSONText "Rotation"

instance ToJSON Rotation where
    toJSON = toJSONText

-- | The video\'s rating in Peru.
data PefilmRating
    = PEFILM14
      -- ^ @pefilm14@
    | PEFILM18
      -- ^ @pefilm18@
    | PefilmPg
      -- ^ @pefilmPg@
    | PefilmPt
      -- ^ @pefilmPt@
    | PefilmUnrated
      -- ^ @pefilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PefilmRating

instance FromText PefilmRating where
    fromText = \case
        "pefilm14" -> Just PEFILM14
        "pefilm18" -> Just PEFILM18
        "pefilmPg" -> Just PefilmPg
        "pefilmPt" -> Just PefilmPt
        "pefilmUnrated" -> Just PefilmUnrated
        _ -> Nothing

instance ToText PefilmRating where
    toText = \case
        PEFILM14 -> "pefilm14"
        PEFILM18 -> "pefilm18"
        PefilmPg -> "pefilmPg"
        PefilmPt -> "pefilmPt"
        PefilmUnrated -> "pefilmUnrated"

instance FromJSON PefilmRating where
    parseJSON = parseJSONText "PefilmRating"

instance ToJSON PefilmRating where
    toJSON = toJSONText

-- | The video\'s Consejo de Calificación Cinematográfica (Chile) rating.
data CccRating
    = CCC14
      -- ^ @ccc14@
    | CCC18
      -- ^ @ccc18@
    | Ccc18s
      -- ^ @ccc18s@
    | Ccc18v
      -- ^ @ccc18v@
    | CCC6
      -- ^ @ccc6@
    | CccTe
      -- ^ @cccTe@
    | CccUnrated
      -- ^ @cccUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CccRating

instance FromText CccRating where
    fromText = \case
        "ccc14" -> Just CCC14
        "ccc18" -> Just CCC18
        "ccc18s" -> Just Ccc18s
        "ccc18v" -> Just Ccc18v
        "ccc6" -> Just CCC6
        "cccTe" -> Just CccTe
        "cccUnrated" -> Just CccUnrated
        _ -> Nothing

instance ToText CccRating where
    toText = \case
        CCC14 -> "ccc14"
        CCC18 -> "ccc18"
        Ccc18s -> "ccc18s"
        Ccc18v -> "ccc18v"
        CCC6 -> "ccc6"
        CccTe -> "cccTe"
        CccUnrated -> "cccUnrated"

instance FromJSON CccRating where
    parseJSON = parseJSONText "CccRating"

instance ToJSON CccRating where
    toJSON = toJSONText

-- | The video\'s Anatel (Asociación Nacional de Televisión) rating for
-- Chilean television.
data AnatelRating
    = AnatelA
      -- ^ @anatelA@
    | AnatelF
      -- ^ @anatelF@
    | AnatelI
      -- ^ @anatelI@
    | ANATELI10
      -- ^ @anatelI10@
    | ANATELI12
      -- ^ @anatelI12@
    | ANATELI7
      -- ^ @anatelI7@
    | AnatelR
      -- ^ @anatelR@
    | AnatelUnrated
      -- ^ @anatelUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AnatelRating

instance FromText AnatelRating where
    fromText = \case
        "anatelA" -> Just AnatelA
        "anatelF" -> Just AnatelF
        "anatelI" -> Just AnatelI
        "anatelI10" -> Just ANATELI10
        "anatelI12" -> Just ANATELI12
        "anatelI7" -> Just ANATELI7
        "anatelR" -> Just AnatelR
        "anatelUnrated" -> Just AnatelUnrated
        _ -> Nothing

instance ToText AnatelRating where
    toText = \case
        AnatelA -> "anatelA"
        AnatelF -> "anatelF"
        AnatelI -> "anatelI"
        ANATELI10 -> "anatelI10"
        ANATELI12 -> "anatelI12"
        ANATELI7 -> "anatelI7"
        AnatelR -> "anatelR"
        AnatelUnrated -> "anatelUnrated"

instance FromJSON AnatelRating where
    parseJSON = parseJSONText "AnatelRating"

instance ToJSON AnatelRating where
    toJSON = toJSONText

-- | The reason that YouTube failed to process the video. This property will
-- only have a value if the processingStatus property\'s value is failed.
data ProcessingFailureReason
    = PFROther
      -- ^ @other@
    | PFRStreamingFailed
      -- ^ @streamingFailed@
    | PFRTranscodeFailed
      -- ^ @transcodeFailed@
    | PFRUploadFailed
      -- ^ @uploadFailed@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ProcessingFailureReason

instance FromText ProcessingFailureReason where
    fromText = \case
        "other" -> Just PFROther
        "streamingFailed" -> Just PFRStreamingFailed
        "transcodeFailed" -> Just PFRTranscodeFailed
        "uploadFailed" -> Just PFRUploadFailed
        _ -> Nothing

instance ToText ProcessingFailureReason where
    toText = \case
        PFROther -> "other"
        PFRStreamingFailed -> "streamingFailed"
        PFRTranscodeFailed -> "transcodeFailed"
        PFRUploadFailed -> "uploadFailed"

instance FromJSON ProcessingFailureReason where
    parseJSON = parseJSONText "ProcessingFailureReason"

instance ToJSON ProcessingFailureReason where
    toJSON = toJSONText

-- | The style of the channel section.
data Style
    = ChannelsectionStyleUndefined
      -- ^ @channelsectionStyleUndefined@
    | HorizontalRow
      -- ^ @horizontalRow@
    | VerticalList
      -- ^ @verticalList@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Style

instance FromText Style where
    fromText = \case
        "channelsectionStyleUndefined" -> Just ChannelsectionStyleUndefined
        "horizontalRow" -> Just HorizontalRow
        "verticalList" -> Just VerticalList
        _ -> Nothing

instance ToText Style where
    toText = \case
        ChannelsectionStyleUndefined -> "channelsectionStyleUndefined"
        HorizontalRow -> "horizontalRow"
        VerticalList -> "verticalList"

instance FromJSON Style where
    parseJSON = parseJSONText "Style"

instance ToJSON Style where
    toJSON = toJSONText

-- | Defines the position type.
data InvideoPositionType
    = Corner
      -- ^ @corner@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InvideoPositionType

instance FromText InvideoPositionType where
    fromText = \case
        "corner" -> Just Corner
        _ -> Nothing

instance ToText InvideoPositionType where
    toText = \case
        Corner -> "corner"

instance FromJSON InvideoPositionType where
    parseJSON = parseJSONText "InvideoPositionType"

instance ToJSON InvideoPositionType where
    toJSON = toJSONText

-- | Identifies the new moderation status of the specified comments.
data YouTubeCommentsSetModerationStatusModerationStatus
    = HeldForReview
      -- ^ @heldForReview@
      -- Marks a comment as awaiting review by a moderator.
    | Published
      -- ^ @published@
      -- Clears a comment for public display.
    | Rejected
      -- ^ @rejected@
      -- Rejects a comment as being unfit for display. This action also
      -- effectively hides all replies to the rejected comment. Note: The API
      -- does not currently provide a way to list or otherwise discover rejected
      -- comments. However, you can change the moderation status of a rejected
      -- comment if you still know its ID. If you were to change the moderation
      -- status of a rejected comment, the comment replies would subsequently be
      -- discoverable again as well.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable YouTubeCommentsSetModerationStatusModerationStatus

instance FromText YouTubeCommentsSetModerationStatusModerationStatus where
    fromText = \case
        "heldForReview" -> Just HeldForReview
        "published" -> Just Published
        "rejected" -> Just Rejected
        _ -> Nothing

instance ToText YouTubeCommentsSetModerationStatusModerationStatus where
    toText = \case
        HeldForReview -> "heldForReview"
        Published -> "published"
        Rejected -> "rejected"

instance FromJSON YouTubeCommentsSetModerationStatusModerationStatus where
    parseJSON = parseJSONText "YouTubeCommentsSetModerationStatusModerationStatus"

instance ToJSON YouTubeCommentsSetModerationStatusModerationStatus where
    toJSON = toJSONText

-- | Specifies the rating to record.
data Rating
    = RDislike
      -- ^ @dislike@
      -- Records that the authenticated user disliked the video.
    | RLike
      -- ^ @like@
      -- Records that the authenticated user liked the video.
    | RNone
      -- ^ @none@
      -- Removes any rating that the authenticated user had previously set for
      -- the video.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Rating

instance FromText Rating where
    fromText = \case
        "dislike" -> Just RDislike
        "like" -> Just RLike
        "none" -> Just RNone
        _ -> Nothing

instance ToText Rating where
    toText = \case
        RDislike -> "dislike"
        RLike -> "like"
        RNone -> "none"

instance FromJSON Rating where
    parseJSON = parseJSONText "Rating"

instance ToJSON Rating where
    toJSON = toJSONText

-- | The videoDuration parameter filters video search results based on their
-- duration. If you specify a value for this parameter, you must also set
-- the type parameter\'s value to video.
data VideoDuration
    = VAny
      -- ^ @any@
      -- Do not filter video search results based on their duration. This is the
      -- default value.
    | VLong
      -- ^ @long@
      -- Only include videos longer than 20 minutes.
    | VMedium
      -- ^ @medium@
      -- Only include videos that are between four and 20 minutes long
      -- (inclusive).
    | VShort
      -- ^ @short@
      -- Only include videos that are less than four minutes long.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoDuration

instance FromText VideoDuration where
    fromText = \case
        "any" -> Just VAny
        "long" -> Just VLong
        "medium" -> Just VMedium
        "short" -> Just VShort
        _ -> Nothing

instance ToText VideoDuration where
    toText = \case
        VAny -> "any"
        VLong -> "long"
        VMedium -> "medium"
        VShort -> "short"

instance FromJSON VideoDuration where
    parseJSON = parseJSONText "VideoDuration"

instance ToJSON VideoDuration where
    toJSON = toJSONText

-- | The caption track\'s type.
data TrackKind
    = TKAsr
      -- ^ @ASR@
    | TKForced
      -- ^ @forced@
    | TKStandard
      -- ^ @standard@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TrackKind

instance FromText TrackKind where
    fromText = \case
        "ASR" -> Just TKAsr
        "forced" -> Just TKForced
        "standard" -> Just TKStandard
        _ -> Nothing

instance ToText TrackKind where
    toText = \case
        TKAsr -> "ASR"
        TKForced -> "forced"
        TKStandard -> "standard"

instance FromJSON TrackKind where
    parseJSON = parseJSONText "TrackKind"

instance ToJSON TrackKind where
    toJSON = toJSONText

-- | The video\'s privacy status.
data VideoStatusPrivacyStatus
    = Private
      -- ^ @private@
    | Public
      -- ^ @public@
    | UnListed
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoStatusPrivacyStatus

instance FromText VideoStatusPrivacyStatus where
    fromText = \case
        "private" -> Just Private
        "public" -> Just Public
        "unlisted" -> Just UnListed
        _ -> Nothing

instance ToText VideoStatusPrivacyStatus where
    toText = \case
        Private -> "private"
        Public -> "public"
        UnListed -> "unlisted"

instance FromJSON VideoStatusPrivacyStatus where
    parseJSON = parseJSONText "VideoStatusPrivacyStatus"

instance ToJSON VideoStatusPrivacyStatus where
    toJSON = toJSONText

-- | The reason that YouTube failed to process the caption track. This
-- property is only present if the state property\'s value is failed.
data CaptionSnippetFailureReason
    = ProcessingFailed
      -- ^ @processingFailed@
    | UnknownFormat
      -- ^ @unknownFormat@
    | UnsupportedFormat
      -- ^ @unsupportedFormat@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CaptionSnippetFailureReason

instance FromText CaptionSnippetFailureReason where
    fromText = \case
        "processingFailed" -> Just ProcessingFailed
        "unknownFormat" -> Just UnknownFormat
        "unsupportedFormat" -> Just UnsupportedFormat
        _ -> Nothing

instance ToText CaptionSnippetFailureReason where
    toText = \case
        ProcessingFailed -> "processingFailed"
        UnknownFormat -> "unknownFormat"
        UnsupportedFormat -> "unsupportedFormat"

instance FromJSON CaptionSnippetFailureReason where
    parseJSON = parseJSONText "CaptionSnippetFailureReason"

instance ToJSON CaptionSnippetFailureReason where
    toJSON = toJSONText

-- | Defines the context of the ping.
data Context
    = Cview
      -- ^ @cview@
    | Subscribe
      -- ^ @subscribe@
    | Unsubscribe
      -- ^ @unsubscribe@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Context

instance FromText Context where
    fromText = \case
        "cview" -> Just Cview
        "subscribe" -> Just Subscribe
        "unsubscribe" -> Just Unsubscribe
        _ -> Nothing

instance ToText Context where
    toText = \case
        Cview -> "cview"
        Subscribe -> "subscribe"
        Unsubscribe -> "unsubscribe"

instance FromJSON Context where
    parseJSON = parseJSONText "Context"

instance ToJSON Context where
    toJSON = toJSONText

-- | The videoCaption parameter indicates whether the API should filter video
-- search results based on whether they have captions. If you specify a
-- value for this parameter, you must also set the type parameter\'s value
-- to video.
data VideoCaption
    = VCAny
      -- ^ @any@
      -- Do not filter results based on caption availability.
    | VCClosedCaption
      -- ^ @closedCaption@
      -- Only include videos that have captions.
    | VCNone
      -- ^ @none@
      -- Only include videos that do not have captions.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoCaption

instance FromText VideoCaption where
    fromText = \case
        "any" -> Just VCAny
        "closedCaption" -> Just VCClosedCaption
        "none" -> Just VCNone
        _ -> Nothing

instance ToText VideoCaption where
    toText = \case
        VCAny -> "any"
        VCClosedCaption -> "closedCaption"
        VCNone -> "none"

instance FromJSON VideoCaption where
    parseJSON = parseJSONText "VideoCaption"

instance ToJSON VideoCaption where
    toJSON = toJSONText

data ProcessingWarningsItem
    = HasEditList
      -- ^ @hasEditlist@
    | InconsistentResolution
      -- ^ @inconsistentResolution@
    | ProblematicAudioCodec
      -- ^ @problematicAudioCodec@
    | ProblematicVideoCodec
      -- ^ @problematicVideoCodec@
    | UnknownAudioCodec
      -- ^ @unknownAudioCodec@
    | UnknownContainer
      -- ^ @unknownContainer@
    | UnknownVideoCodec
      -- ^ @unknownVideoCodec@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ProcessingWarningsItem

instance FromText ProcessingWarningsItem where
    fromText = \case
        "hasEditlist" -> Just HasEditList
        "inconsistentResolution" -> Just InconsistentResolution
        "problematicAudioCodec" -> Just ProblematicAudioCodec
        "problematicVideoCodec" -> Just ProblematicVideoCodec
        "unknownAudioCodec" -> Just UnknownAudioCodec
        "unknownContainer" -> Just UnknownContainer
        "unknownVideoCodec" -> Just UnknownVideoCodec
        _ -> Nothing

instance ToText ProcessingWarningsItem where
    toText = \case
        HasEditList -> "hasEditlist"
        InconsistentResolution -> "inconsistentResolution"
        ProblematicAudioCodec -> "problematicAudioCodec"
        ProblematicVideoCodec -> "problematicVideoCodec"
        UnknownAudioCodec -> "unknownAudioCodec"
        UnknownContainer -> "unknownContainer"
        UnknownVideoCodec -> "unknownVideoCodec"

instance FromJSON ProcessingWarningsItem where
    parseJSON = parseJSONText "ProcessingWarningsItem"

instance ToJSON ProcessingWarningsItem where
    toJSON = toJSONText

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
    | LBSPSUnListed
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastStatusPrivacyStatus

instance FromText LiveBroadcastStatusPrivacyStatus where
    fromText = \case
        "private" -> Just LBSPSPrivate
        "public" -> Just LBSPSPublic
        "unlisted" -> Just LBSPSUnListed
        _ -> Nothing

instance ToText LiveBroadcastStatusPrivacyStatus where
    toText = \case
        LBSPSPrivate -> "private"
        LBSPSPublic -> "public"
        LBSPSUnListed -> "unlisted"

instance FromJSON LiveBroadcastStatusPrivacyStatus where
    parseJSON = parseJSONText "LiveBroadcastStatusPrivacyStatus"

instance ToJSON LiveBroadcastStatusPrivacyStatus where
    toJSON = toJSONText

-- | The video\'s Motion Picture Association of America (MPAA) rating.
data MpaaRating
    = MpaaG
      -- ^ @mpaaG@
    | MPAANC17
      -- ^ @mpaaNc17@
    | MpaaPg
      -- ^ @mpaaPg@
    | MPAAPG13
      -- ^ @mpaaPg13@
    | MpaaR
      -- ^ @mpaaR@
    | MpaaUnrated
      -- ^ @mpaaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MpaaRating

instance FromText MpaaRating where
    fromText = \case
        "mpaaG" -> Just MpaaG
        "mpaaNc17" -> Just MPAANC17
        "mpaaPg" -> Just MpaaPg
        "mpaaPg13" -> Just MPAAPG13
        "mpaaR" -> Just MpaaR
        "mpaaUnrated" -> Just MpaaUnrated
        _ -> Nothing

instance ToText MpaaRating where
    toText = \case
        MpaaG -> "mpaaG"
        MPAANC17 -> "mpaaNc17"
        MpaaPg -> "mpaaPg"
        MPAAPG13 -> "mpaaPg13"
        MpaaR -> "mpaaR"
        MpaaUnrated -> "mpaaUnrated"

instance FromJSON MpaaRating where
    parseJSON = parseJSONText "MpaaRating"

instance ToJSON MpaaRating where
    toJSON = toJSONText

-- | The video\'s rating from Portugal\'s Comissão de Classificação de
-- Espect´culos.
data CceRating
    = CCEM12
      -- ^ @cceM12@
    | CCEM16
      -- ^ @cceM16@
    | CCEM18
      -- ^ @cceM18@
    | CCEM4
      -- ^ @cceM4@
    | CCEM6
      -- ^ @cceM6@
    | CceUnrated
      -- ^ @cceUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CceRating

instance FromText CceRating where
    fromText = \case
        "cceM12" -> Just CCEM12
        "cceM16" -> Just CCEM16
        "cceM18" -> Just CCEM18
        "cceM4" -> Just CCEM4
        "cceM6" -> Just CCEM6
        "cceUnrated" -> Just CceUnrated
        _ -> Nothing

instance ToText CceRating where
    toText = \case
        CCEM12 -> "cceM12"
        CCEM16 -> "cceM16"
        CCEM18 -> "cceM18"
        CCEM4 -> "cceM4"
        CCEM6 -> "cceM6"
        CceUnrated -> "cceUnrated"

instance FromJSON CceRating where
    parseJSON = parseJSONText "CceRating"

instance ToJSON CceRating where
    toJSON = toJSONText

-- | The video\'s rating from Malta\'s Film Age-Classification Board.
data MccaaRating
    = MCCAA12
      -- ^ @mccaa12@
    | Mccaa12a
      -- ^ @mccaa12a@
    | MCCAA14
      -- ^ @mccaa14@
    | MCCAA15
      -- ^ @mccaa15@
    | MCCAA16
      -- ^ @mccaa16@
    | MCCAA18
      -- ^ @mccaa18@
    | MccaaPg
      -- ^ @mccaaPg@
    | MccaaU
      -- ^ @mccaaU@
    | MccaaUnrated
      -- ^ @mccaaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MccaaRating

instance FromText MccaaRating where
    fromText = \case
        "mccaa12" -> Just MCCAA12
        "mccaa12a" -> Just Mccaa12a
        "mccaa14" -> Just MCCAA14
        "mccaa15" -> Just MCCAA15
        "mccaa16" -> Just MCCAA16
        "mccaa18" -> Just MCCAA18
        "mccaaPg" -> Just MccaaPg
        "mccaaU" -> Just MccaaU
        "mccaaUnrated" -> Just MccaaUnrated
        _ -> Nothing

instance ToText MccaaRating where
    toText = \case
        MCCAA12 -> "mccaa12"
        Mccaa12a -> "mccaa12a"
        MCCAA14 -> "mccaa14"
        MCCAA15 -> "mccaa15"
        MCCAA16 -> "mccaa16"
        MCCAA18 -> "mccaa18"
        MccaaPg -> "mccaaPg"
        MccaaU -> "mccaaU"
        MccaaUnrated -> "mccaaUnrated"

instance FromJSON MccaaRating where
    parseJSON = parseJSONText "MccaaRating"

instance ToJSON MccaaRating where
    toJSON = toJSONText

-- | The video\'s rating in Switzerland.
data ChfilmRating
    = CHFILM0
      -- ^ @chfilm0@
    | CHFILM12
      -- ^ @chfilm12@
    | CHFILM16
      -- ^ @chfilm16@
    | CHFILM18
      -- ^ @chfilm18@
    | CHFILM6
      -- ^ @chfilm6@
    | ChfilmUnrated
      -- ^ @chfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChfilmRating

instance FromText ChfilmRating where
    fromText = \case
        "chfilm0" -> Just CHFILM0
        "chfilm12" -> Just CHFILM12
        "chfilm16" -> Just CHFILM16
        "chfilm18" -> Just CHFILM18
        "chfilm6" -> Just CHFILM6
        "chfilmUnrated" -> Just ChfilmUnrated
        _ -> Nothing

instance ToText ChfilmRating where
    toText = \case
        CHFILM0 -> "chfilm0"
        CHFILM12 -> "chfilm12"
        CHFILM16 -> "chfilm16"
        CHFILM18 -> "chfilm18"
        CHFILM6 -> "chfilm6"
        ChfilmUnrated -> "chfilmUnrated"

instance FromJSON ChfilmRating where
    parseJSON = parseJSONText "ChfilmRating"

instance ToJSON ChfilmRating where
    toJSON = toJSONText

-- | The videoLicense parameter filters search results to only include videos
-- with a particular license. YouTube lets video uploaders choose to attach
-- either the Creative Commons license or the standard YouTube license to
-- each of their videos. If you specify a value for this parameter, you
-- must also set the type parameter\'s value to video.
data VideoLicense
    = Any
      -- ^ @any@
      -- Return all videos, regardless of which license they have, that match the
      -- query parameters.
    | CreativeCommon
      -- ^ @creativeCommon@
      -- Only return videos that have a Creative Commons license. Users can reuse
      -- videos with this license in other videos that they create. Learn more.
    | YouTube
      -- ^ @youtube@
      -- Only return videos that have the standard YouTube license.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoLicense

instance FromText VideoLicense where
    fromText = \case
        "any" -> Just Any
        "creativeCommon" -> Just CreativeCommon
        "youtube" -> Just YouTube
        _ -> Nothing

instance ToText VideoLicense where
    toText = \case
        Any -> "any"
        CreativeCommon -> "creativeCommon"
        YouTube -> "youtube"

instance FromJSON VideoLicense where
    parseJSON = parseJSONText "VideoLicense"

instance ToJSON VideoLicense where
    toJSON = toJSONText

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

instance FromJSON PromotedItemIdType where
    parseJSON = parseJSONText "PromotedItemIdType"

instance ToJSON PromotedItemIdType where
    toJSON = toJSONText

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

instance FromJSON SearchResultSnippetLiveBroadcastContent where
    parseJSON = parseJSONText "SearchResultSnippetLiveBroadcastContent"

instance ToJSON SearchResultSnippetLiveBroadcastContent where
    toJSON = toJSONText

-- | The type of activity this subscription is for (only uploads,
-- everything).
data ActivityType
    = ATAll
      -- ^ @all@
    | ATUploads
      -- ^ @uploads@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivityType

instance FromText ActivityType where
    fromText = \case
        "all" -> Just ATAll
        "uploads" -> Just ATUploads
        _ -> Nothing

instance ToText ActivityType where
    toText = \case
        ATAll -> "all"
        ATUploads -> "uploads"

instance FromJSON ActivityType where
    parseJSON = parseJSONText "ActivityType"

instance ToJSON ActivityType where
    toJSON = toJSONText

-- | The video\'s Instituto de la Cinematografía y de las Artes Audiovisuales
-- (ICAA - Spain) rating.
data IcaaRating
    = ICAA12
      -- ^ @icaa12@
    | ICAA13
      -- ^ @icaa13@
    | ICAA16
      -- ^ @icaa16@
    | ICAA18
      -- ^ @icaa18@
    | ICAA7
      -- ^ @icaa7@
    | IcaaApta
      -- ^ @icaaApta@
    | IcaaUnrated
      -- ^ @icaaUnrated@
    | IcaaX
      -- ^ @icaaX@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable IcaaRating

instance FromText IcaaRating where
    fromText = \case
        "icaa12" -> Just ICAA12
        "icaa13" -> Just ICAA13
        "icaa16" -> Just ICAA16
        "icaa18" -> Just ICAA18
        "icaa7" -> Just ICAA7
        "icaaApta" -> Just IcaaApta
        "icaaUnrated" -> Just IcaaUnrated
        "icaaX" -> Just IcaaX
        _ -> Nothing

instance ToText IcaaRating where
    toText = \case
        ICAA12 -> "icaa12"
        ICAA13 -> "icaa13"
        ICAA16 -> "icaa16"
        ICAA18 -> "icaa18"
        ICAA7 -> "icaa7"
        IcaaApta -> "icaaApta"
        IcaaUnrated -> "icaaUnrated"
        IcaaX -> "icaaX"

instance FromJSON IcaaRating where
    parseJSON = parseJSONText "IcaaRating"

instance ToJSON IcaaRating where
    toJSON = toJSONText

-- | The video\'s rating from Malaysia\'s Film Censorship Board.
data FcbmRating
    = FCBM18
      -- ^ @fcbm18@
    | Fcbm18pa
      -- ^ @fcbm18pa@
    | Fcbm18pl
      -- ^ @fcbm18pl@
    | Fcbm18sg
      -- ^ @fcbm18sg@
    | Fcbm18sx
      -- ^ @fcbm18sx@
    | FCBMP13
      -- ^ @fcbmP13@
    | FCBMPG13
      -- ^ @fcbmPg13@
    | FcbmU
      -- ^ @fcbmU@
    | FcbmUnrated
      -- ^ @fcbmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FcbmRating

instance FromText FcbmRating where
    fromText = \case
        "fcbm18" -> Just FCBM18
        "fcbm18pa" -> Just Fcbm18pa
        "fcbm18pl" -> Just Fcbm18pl
        "fcbm18sg" -> Just Fcbm18sg
        "fcbm18sx" -> Just Fcbm18sx
        "fcbmP13" -> Just FCBMP13
        "fcbmPg13" -> Just FCBMPG13
        "fcbmU" -> Just FcbmU
        "fcbmUnrated" -> Just FcbmUnrated
        _ -> Nothing

instance ToText FcbmRating where
    toText = \case
        FCBM18 -> "fcbm18"
        Fcbm18pa -> "fcbm18pa"
        Fcbm18pl -> "fcbm18pl"
        Fcbm18sg -> "fcbm18sg"
        Fcbm18sx -> "fcbm18sx"
        FCBMP13 -> "fcbmP13"
        FCBMPG13 -> "fcbmPg13"
        FcbmU -> "fcbmU"
        FcbmUnrated -> "fcbmUnrated"

instance FromJSON FcbmRating where
    parseJSON = parseJSONText "FcbmRating"

instance ToJSON FcbmRating where
    toJSON = toJSONText

-- | The video\'s rating from the Austrian Board of Media Classification
-- (Bundesministerium für Unterricht, Kunst und Kultur).
data BmukkRating
    = BMUKK10
      -- ^ @bmukk10@
    | BMUKK12
      -- ^ @bmukk12@
    | BMUKK14
      -- ^ @bmukk14@
    | BMUKK16
      -- ^ @bmukk16@
    | BMUKK6
      -- ^ @bmukk6@
    | BMUKK8
      -- ^ @bmukk8@
    | BmukkAa
      -- ^ @bmukkAa@
    | BmukkUnrated
      -- ^ @bmukkUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BmukkRating

instance FromText BmukkRating where
    fromText = \case
        "bmukk10" -> Just BMUKK10
        "bmukk12" -> Just BMUKK12
        "bmukk14" -> Just BMUKK14
        "bmukk16" -> Just BMUKK16
        "bmukk6" -> Just BMUKK6
        "bmukk8" -> Just BMUKK8
        "bmukkAa" -> Just BmukkAa
        "bmukkUnrated" -> Just BmukkUnrated
        _ -> Nothing

instance ToText BmukkRating where
    toText = \case
        BMUKK10 -> "bmukk10"
        BMUKK12 -> "bmukk12"
        BMUKK14 -> "bmukk14"
        BMUKK16 -> "bmukk16"
        BMUKK6 -> "bmukk6"
        BMUKK8 -> "bmukk8"
        BmukkAa -> "bmukkAa"
        BmukkUnrated -> "bmukkUnrated"

instance FromJSON BmukkRating where
    parseJSON = parseJSONText "BmukkRating"

instance ToJSON BmukkRating where
    toJSON = toJSONText

-- | The rating the viewer has given to this comment. For the time being this
-- will never return RATE_TYPE_DISLIKE and instead return RATE_TYPE_NONE.
-- This may change in the future.
data ViewerRating
    = VRDislike
      -- ^ @dislike@
    | VRLike
      -- ^ @like@
    | VRNone
      -- ^ @none@
    | VRUnspecified
      -- ^ @unspecified@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ViewerRating

instance FromText ViewerRating where
    fromText = \case
        "dislike" -> Just VRDislike
        "like" -> Just VRLike
        "none" -> Just VRNone
        "unspecified" -> Just VRUnspecified
        _ -> Nothing

instance ToText ViewerRating where
    toText = \case
        VRDislike -> "dislike"
        VRLike -> "like"
        VRNone -> "none"
        VRUnspecified -> "unspecified"

instance FromJSON ViewerRating where
    parseJSON = parseJSONText "ViewerRating"

instance ToJSON ViewerRating where
    toJSON = toJSONText

-- | The value of definition indicates whether the video is available in high
-- definition or only in standard definition.
data Definition
    = HD
      -- ^ @hd@
    | SD
      -- ^ @sd@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Definition

instance FromText Definition where
    fromText = \case
        "hd" -> Just HD
        "sd" -> Just SD
        _ -> Nothing

instance ToText Definition where
    toText = \case
        HD -> "hd"
        SD -> "sd"

instance FromJSON Definition where
    parseJSON = parseJSONText "Definition"

instance ToJSON Definition where
    toJSON = toJSONText

-- | The video\'s rating from Taiwan\'s Ministry of Culture (文化部).
data MoctwRating
    = MoctwG
      -- ^ @moctwG@
    | MoctwP
      -- ^ @moctwP@
    | MoctwPg
      -- ^ @moctwPg@
    | MoctwR
      -- ^ @moctwR@
    | MoctwUnrated
      -- ^ @moctwUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MoctwRating

instance FromText MoctwRating where
    fromText = \case
        "moctwG" -> Just MoctwG
        "moctwP" -> Just MoctwP
        "moctwPg" -> Just MoctwPg
        "moctwR" -> Just MoctwR
        "moctwUnrated" -> Just MoctwUnrated
        _ -> Nothing

instance ToText MoctwRating where
    toText = \case
        MoctwG -> "moctwG"
        MoctwP -> "moctwP"
        MoctwPg -> "moctwPg"
        MoctwR -> "moctwR"
        MoctwUnrated -> "moctwUnrated"

instance FromJSON MoctwRating where
    parseJSON = parseJSONText "MoctwRating"

instance ToJSON MoctwRating where
    toJSON = toJSONText

-- | The video\'s rating from Nigeria\'s National Film and Video Censors
-- Board.
data NfvcbRating
    = NFVCB12
      -- ^ @nfvcb12@
    | Nfvcb12a
      -- ^ @nfvcb12a@
    | NFVCB15
      -- ^ @nfvcb15@
    | NFVCB18
      -- ^ @nfvcb18@
    | NfvcbG
      -- ^ @nfvcbG@
    | NfvcbPg
      -- ^ @nfvcbPg@
    | NfvcbRe
      -- ^ @nfvcbRe@
    | NfvcbUnrated
      -- ^ @nfvcbUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable NfvcbRating

instance FromText NfvcbRating where
    fromText = \case
        "nfvcb12" -> Just NFVCB12
        "nfvcb12a" -> Just Nfvcb12a
        "nfvcb15" -> Just NFVCB15
        "nfvcb18" -> Just NFVCB18
        "nfvcbG" -> Just NfvcbG
        "nfvcbPg" -> Just NfvcbPg
        "nfvcbRe" -> Just NfvcbRe
        "nfvcbUnrated" -> Just NfvcbUnrated
        _ -> Nothing

instance ToText NfvcbRating where
    toText = \case
        NFVCB12 -> "nfvcb12"
        Nfvcb12a -> "nfvcb12a"
        NFVCB15 -> "nfvcb15"
        NFVCB18 -> "nfvcb18"
        NfvcbG -> "nfvcbG"
        NfvcbPg -> "nfvcbPg"
        NfvcbRe -> "nfvcbRe"
        NfvcbUnrated -> "nfvcbUnrated"

instance FromJSON NfvcbRating where
    parseJSON = parseJSONText "NfvcbRating"

instance ToJSON NfvcbRating where
    toJSON = toJSONText

-- | Set this parameter to limit the returned comment threads to a particular
-- moderation state. Note: This parameter is not supported for use in
-- conjunction with the id parameter.
data ModerationStatus
    = MSHeldForReview
      -- ^ @heldForReview@
      -- Retrieve comment threads that are awaiting review by a moderator. A
      -- comment thread can be included in the response if the top-level comment
      -- or at least one of the replies to that comment are awaiting review.
    | MSLikelySpam
      -- ^ @likelySpam@
      -- Retrieve comment threads classified as likely to be spam. A comment
      -- thread can be included in the response if the top-level comment or at
      -- least one of the replies to that comment is considered likely to be
      -- spam.
    | MSPublished
      -- ^ @published@
      -- Retrieve threads of published comments. This is the default value. A
      -- comment thread can be included in the response if its top-level comment
      -- has been published.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ModerationStatus

instance FromText ModerationStatus where
    fromText = \case
        "heldForReview" -> Just MSHeldForReview
        "likelySpam" -> Just MSLikelySpam
        "published" -> Just MSPublished
        _ -> Nothing

instance ToText ModerationStatus where
    toText = \case
        MSHeldForReview -> "heldForReview"
        MSLikelySpam -> "likelySpam"
        MSPublished -> "published"

instance FromJSON ModerationStatus where
    parseJSON = parseJSONText "ModerationStatus"

instance ToJSON ModerationStatus where
    toJSON = toJSONText

-- | The type of the topic.
data LiveBroadcastTopicType
    = VideoGame
      -- ^ @videoGame@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastTopicType

instance FromText LiveBroadcastTopicType where
    fromText = \case
        "videoGame" -> Just VideoGame
        _ -> Nothing

instance ToText LiveBroadcastTopicType where
    toText = \case
        VideoGame -> "videoGame"

instance FromJSON LiveBroadcastTopicType where
    parseJSON = parseJSONText "LiveBroadcastTopicType"

instance ToJSON LiveBroadcastTopicType where
    toJSON = toJSONText

-- | The video\'s rating from Italy\'s Autorità per le Garanzie nelle
-- Comunicazioni (AGCOM).
data AgcomRating
    = AgcomT
      -- ^ @agcomT@
    | AgcomUnrated
      -- ^ @agcomUnrated@
    | AGCOMVM14
      -- ^ @agcomVm14@
    | AGCOMVM18
      -- ^ @agcomVm18@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AgcomRating

instance FromText AgcomRating where
    fromText = \case
        "agcomT" -> Just AgcomT
        "agcomUnrated" -> Just AgcomUnrated
        "agcomVm14" -> Just AGCOMVM14
        "agcomVm18" -> Just AGCOMVM18
        _ -> Nothing

instance ToText AgcomRating where
    toText = \case
        AgcomT -> "agcomT"
        AgcomUnrated -> "agcomUnrated"
        AGCOMVM14 -> "agcomVm14"
        AGCOMVM18 -> "agcomVm18"

instance FromJSON AgcomRating where
    parseJSON = parseJSONText "AgcomRating"

instance ToJSON AgcomRating where
    toJSON = toJSONText

data StreamStatus
    = Active
      -- ^ @active@
    | Created
      -- ^ @created@
    | Error'
      -- ^ @error@
    | Inactive
      -- ^ @inactive@
    | Ready
      -- ^ @ready@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StreamStatus

instance FromText StreamStatus where
    fromText = \case
        "active" -> Just Active
        "created" -> Just Created
        "error" -> Just Error'
        "inactive" -> Just Inactive
        "ready" -> Just Ready
        _ -> Nothing

instance ToText StreamStatus where
    toText = \case
        Active -> "active"
        Created -> "created"
        Error' -> "error"
        Inactive -> "inactive"
        Ready -> "ready"

instance FromJSON StreamStatus where
    parseJSON = parseJSONText "StreamStatus"

instance ToJSON StreamStatus where
    toJSON = toJSONText

-- | The video\'s rating from Romania\'s CONSILIUL NATIONAL AL
-- AUDIOVIZUALULUI (CNA).
data CnaRating
    = CNA12
      -- ^ @cna12@
    | CNA15
      -- ^ @cna15@
    | CNA18
      -- ^ @cna18@
    | Cna18plus
      -- ^ @cna18plus@
    | CnaAp
      -- ^ @cnaAp@
    | CnaUnrated
      -- ^ @cnaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CnaRating

instance FromText CnaRating where
    fromText = \case
        "cna12" -> Just CNA12
        "cna15" -> Just CNA15
        "cna18" -> Just CNA18
        "cna18plus" -> Just Cna18plus
        "cnaAp" -> Just CnaAp
        "cnaUnrated" -> Just CnaUnrated
        _ -> Nothing

instance ToText CnaRating where
    toText = \case
        CNA12 -> "cna12"
        CNA15 -> "cna15"
        CNA18 -> "cna18"
        Cna18plus -> "cna18plus"
        CnaAp -> "cnaAp"
        CnaUnrated -> "cnaUnrated"

instance FromJSON CnaRating where
    parseJSON = parseJSONText "CnaRating"

instance ToJSON CnaRating where
    toJSON = toJSONText

-- | Set this parameter\'s value to like or dislike to instruct the API to
-- only return videos liked or disliked by the authenticated user.
data MyRating
    = MRDislike
      -- ^ @dislike@
      -- Returns only videos disliked by the authenticated user.
    | MRLike
      -- ^ @like@
      -- Returns only video liked by the authenticated user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MyRating

instance FromText MyRating where
    fromText = \case
        "dislike" -> Just MRDislike
        "like" -> Just MRLike
        _ -> Nothing

instance ToText MyRating where
    toText = \case
        MRDislike -> "dislike"
        MRLike -> "like"

instance FromJSON MyRating where
    parseJSON = parseJSONText "MyRating"

instance ToJSON MyRating where
    toJSON = toJSONText

data EditorSuggestionsItem
    = AudioQuietAudioSwap
      -- ^ @audioQuietAudioSwap@
    | VideoAutoLevels
      -- ^ @videoAutoLevels@
    | VideoCrop
      -- ^ @videoCrop@
    | VideoStabilize
      -- ^ @videoStabilize@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EditorSuggestionsItem

instance FromText EditorSuggestionsItem where
    fromText = \case
        "audioQuietAudioSwap" -> Just AudioQuietAudioSwap
        "videoAutoLevels" -> Just VideoAutoLevels
        "videoCrop" -> Just VideoCrop
        "videoStabilize" -> Just VideoStabilize
        _ -> Nothing

instance ToText EditorSuggestionsItem where
    toText = \case
        AudioQuietAudioSwap -> "audioQuietAudioSwap"
        VideoAutoLevels -> "videoAutoLevels"
        VideoCrop -> "videoCrop"
        VideoStabilize -> "videoStabilize"

instance FromJSON EditorSuggestionsItem where
    parseJSON = parseJSONText "EditorSuggestionsItem"

instance ToJSON EditorSuggestionsItem where
    toJSON = toJSONText

-- | The video\'s rating from the Canadian Radio-Television and
-- Telecommunications Commission (CRTC) for Canadian French-language
-- broadcasts. For more information, see the Canadian Broadcast Standards
-- Council website.
data CatvfrRating
    = Catvfr13plus
      -- ^ @catvfr13plus@
    | Catvfr16plus
      -- ^ @catvfr16plus@
    | Catvfr18plus
      -- ^ @catvfr18plus@
    | Catvfr8plus
      -- ^ @catvfr8plus@
    | CatvfrG
      -- ^ @catvfrG@
    | CatvfrUnrated
      -- ^ @catvfrUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CatvfrRating

instance FromText CatvfrRating where
    fromText = \case
        "catvfr13plus" -> Just Catvfr13plus
        "catvfr16plus" -> Just Catvfr16plus
        "catvfr18plus" -> Just Catvfr18plus
        "catvfr8plus" -> Just Catvfr8plus
        "catvfrG" -> Just CatvfrG
        "catvfrUnrated" -> Just CatvfrUnrated
        _ -> Nothing

instance ToText CatvfrRating where
    toText = \case
        Catvfr13plus -> "catvfr13plus"
        Catvfr16plus -> "catvfr16plus"
        Catvfr18plus -> "catvfr18plus"
        Catvfr8plus -> "catvfr8plus"
        CatvfrG -> "catvfrG"
        CatvfrUnrated -> "catvfrUnrated"

instance FromJSON CatvfrRating where
    parseJSON = parseJSONText "CatvfrRating"

instance ToJSON CatvfrRating where
    toJSON = toJSONText

-- | The video\'s Central Board of Film Certification (CBFC - India) rating.
data CbfcRating
    = CbfcA
      -- ^ @cbfcA@
    | CbfcS
      -- ^ @cbfcS@
    | CbfcU
      -- ^ @cbfcU@
    | CbfcUA
      -- ^ @cbfcUA@
    | CbfcUnrated
      -- ^ @cbfcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CbfcRating

instance FromText CbfcRating where
    fromText = \case
        "cbfcA" -> Just CbfcA
        "cbfcS" -> Just CbfcS
        "cbfcU" -> Just CbfcU
        "cbfcUA" -> Just CbfcUA
        "cbfcUnrated" -> Just CbfcUnrated
        _ -> Nothing

instance ToText CbfcRating where
    toText = \case
        CbfcA -> "cbfcA"
        CbfcS -> "cbfcS"
        CbfcU -> "cbfcU"
        CbfcUA -> "cbfcUA"
        CbfcUnrated -> "cbfcUnrated"

instance FromJSON CbfcRating where
    parseJSON = parseJSONText "CbfcRating"

instance ToJSON CbfcRating where
    toJSON = toJSONText

-- | How severe this issue is to the stream.
data Severity
    = SError'
      -- ^ @error@
    | SInfo
      -- ^ @info@
    | SWarning
      -- ^ @warning@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Severity

instance FromText Severity where
    fromText = \case
        "error" -> Just SError'
        "info" -> Just SInfo
        "warning" -> Just SWarning
        _ -> Nothing

instance ToText Severity where
    toText = \case
        SError' -> "error"
        SInfo -> "info"
        SWarning -> "warning"

instance FromJSON Severity where
    parseJSON = parseJSONText "Severity"

instance ToJSON Severity where
    toJSON = toJSONText

-- | The video\'s rating from the Kenya Film Classification Board.
data KfcbRating
    = Kfcb16plus
      -- ^ @kfcb16plus@
    | KfcbG
      -- ^ @kfcbG@
    | KfcbPg
      -- ^ @kfcbPg@
    | KfcbR
      -- ^ @kfcbR@
    | KfcbUnrated
      -- ^ @kfcbUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable KfcbRating

instance FromText KfcbRating where
    fromText = \case
        "kfcb16plus" -> Just Kfcb16plus
        "kfcbG" -> Just KfcbG
        "kfcbPg" -> Just KfcbPg
        "kfcbR" -> Just KfcbR
        "kfcbUnrated" -> Just KfcbUnrated
        _ -> Nothing

instance ToText KfcbRating where
    toText = \case
        Kfcb16plus -> "kfcb16plus"
        KfcbG -> "kfcbG"
        KfcbPg -> "kfcbPg"
        KfcbR -> "kfcbR"
        KfcbUnrated -> "kfcbUnrated"

instance FromJSON KfcbRating where
    parseJSON = parseJSONText "KfcbRating"

instance ToJSON KfcbRating where
    toJSON = toJSONText

-- | The video\'s rating from Statens medieråd (Sweden\'s National Media
-- Council).
data SmsaRating
    = SMSA11
      -- ^ @smsa11@
    | SMSA15
      -- ^ @smsa15@
    | SMSA7
      -- ^ @smsa7@
    | SmsaA
      -- ^ @smsaA@
    | SmsaUnrated
      -- ^ @smsaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SmsaRating

instance FromText SmsaRating where
    fromText = \case
        "smsa11" -> Just SMSA11
        "smsa15" -> Just SMSA15
        "smsa7" -> Just SMSA7
        "smsaA" -> Just SmsaA
        "smsaUnrated" -> Just SmsaUnrated
        _ -> Nothing

instance ToText SmsaRating where
    toText = \case
        SMSA11 -> "smsa11"
        SMSA15 -> "smsa15"
        SMSA7 -> "smsa7"
        SmsaA -> "smsaA"
        SmsaUnrated -> "smsaUnrated"

instance FromJSON SmsaRating where
    parseJSON = parseJSONText "SmsaRating"

instance ToJSON SmsaRating where
    toJSON = toJSONText

-- | Priority of the live broadcast event (internal state).
data LiveBroadcastPriority
    = LBPHigh
      -- ^ @high@
    | LBPLow
      -- ^ @low@
    | LBPNormal
      -- ^ @normal@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastPriority

instance FromText LiveBroadcastPriority where
    fromText = \case
        "high" -> Just LBPHigh
        "low" -> Just LBPLow
        "normal" -> Just LBPNormal
        _ -> Nothing

instance ToText LiveBroadcastPriority where
    toText = \case
        LBPHigh -> "high"
        LBPLow -> "low"
        LBPNormal -> "normal"

instance FromJSON LiveBroadcastPriority where
    parseJSON = parseJSONText "LiveBroadcastPriority"

instance ToJSON LiveBroadcastPriority where
    toJSON = toJSONText

-- | The video\'s Canadian Home Video Rating System (CHVRS) rating.
data ChvrsRating
    = Chvrs14a
      -- ^ @chvrs14a@
    | Chvrs18a
      -- ^ @chvrs18a@
    | ChvrsE
      -- ^ @chvrsE@
    | ChvrsG
      -- ^ @chvrsG@
    | ChvrsPg
      -- ^ @chvrsPg@
    | ChvrsR
      -- ^ @chvrsR@
    | ChvrsUnrated
      -- ^ @chvrsUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChvrsRating

instance FromText ChvrsRating where
    fromText = \case
        "chvrs14a" -> Just Chvrs14a
        "chvrs18a" -> Just Chvrs18a
        "chvrsE" -> Just ChvrsE
        "chvrsG" -> Just ChvrsG
        "chvrsPg" -> Just ChvrsPg
        "chvrsR" -> Just ChvrsR
        "chvrsUnrated" -> Just ChvrsUnrated
        _ -> Nothing

instance ToText ChvrsRating where
    toText = \case
        Chvrs14a -> "chvrs14a"
        Chvrs18a -> "chvrs18a"
        ChvrsE -> "chvrsE"
        ChvrsG -> "chvrsG"
        ChvrsPg -> "chvrsPg"
        ChvrsR -> "chvrsR"
        ChvrsUnrated -> "chvrsUnrated"

instance FromJSON ChvrsRating where
    parseJSON = parseJSONText "ChvrsRating"

instance ToJSON ChvrsRating where
    toJSON = toJSONText

-- | This value explains why YouTube rejected an uploaded video. This
-- property is only present if the uploadStatus property indicates that the
-- upload was rejected.
data RejectionReason
    = Claim
      -- ^ @claim@
    | Copyright
      -- ^ @copyright@
    | Duplicate
      -- ^ @duplicate@
    | Inappropriate
      -- ^ @inappropriate@
    | Length
      -- ^ @length@
    | TermsOfUse
      -- ^ @termsOfUse@
    | Trademark
      -- ^ @trademark@
    | UploaderAccountClosed
      -- ^ @uploaderAccountClosed@
    | UploaderAccountSuspended
      -- ^ @uploaderAccountSuspended@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RejectionReason

instance FromText RejectionReason where
    fromText = \case
        "claim" -> Just Claim
        "copyright" -> Just Copyright
        "duplicate" -> Just Duplicate
        "inappropriate" -> Just Inappropriate
        "length" -> Just Length
        "termsOfUse" -> Just TermsOfUse
        "trademark" -> Just Trademark
        "uploaderAccountClosed" -> Just UploaderAccountClosed
        "uploaderAccountSuspended" -> Just UploaderAccountSuspended
        _ -> Nothing

instance ToText RejectionReason where
    toText = \case
        Claim -> "claim"
        Copyright -> "copyright"
        Duplicate -> "duplicate"
        Inappropriate -> "inappropriate"
        Length -> "length"
        TermsOfUse -> "termsOfUse"
        Trademark -> "trademark"
        UploaderAccountClosed -> "uploaderAccountClosed"
        UploaderAccountSuspended -> "uploaderAccountSuspended"

instance FromJSON RejectionReason where
    parseJSON = parseJSONText "RejectionReason"

instance ToJSON RejectionReason where
    toJSON = toJSONText

-- | The video\'s INCAA (Instituto Nacional de Cine y Artes Audiovisuales -
-- Argentina) rating.
data IncaaRating
    = IncaaAtp
      -- ^ @incaaAtp@
    | IncaaC
      -- ^ @incaaC@
    | INCAASAM13
      -- ^ @incaaSam13@
    | INCAASAM16
      -- ^ @incaaSam16@
    | INCAASAM18
      -- ^ @incaaSam18@
    | IncaaUnrated
      -- ^ @incaaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable IncaaRating

instance FromText IncaaRating where
    fromText = \case
        "incaaAtp" -> Just IncaaAtp
        "incaaC" -> Just IncaaC
        "incaaSam13" -> Just INCAASAM13
        "incaaSam16" -> Just INCAASAM16
        "incaaSam18" -> Just INCAASAM18
        "incaaUnrated" -> Just IncaaUnrated
        _ -> Nothing

instance ToText IncaaRating where
    toText = \case
        IncaaAtp -> "incaaAtp"
        IncaaC -> "incaaC"
        INCAASAM13 -> "incaaSam13"
        INCAASAM16 -> "incaaSam16"
        INCAASAM18 -> "incaaSam18"
        IncaaUnrated -> "incaaUnrated"

instance FromJSON IncaaRating where
    parseJSON = parseJSONText "IncaaRating"

instance ToJSON IncaaRating where
    toJSON = toJSONText

-- | The broadcastStatus parameter identifies the state to which the
-- broadcast is changing. Note that to transition a broadcast to either the
-- testing or live state, the status.streamStatus must be active for the
-- stream that the broadcast is bound to.
data BroadcastStatus
    = Complete
      -- ^ @complete@
      -- The broadcast is over. YouTube stops transmitting video.
    | Live
      -- ^ @live@
      -- The broadcast is visible to its audience. YouTube transmits video to the
      -- broadcast\'s monitor stream and its broadcast stream.
    | Testing
      -- ^ @testing@
      -- Start testing the broadcast. YouTube transmits video to the broadcast\'s
      -- monitor stream. Note that you can only transition a broadcast to the
      -- testing state if its contentDetails.monitorStream.enableMonitorStream
      -- property is set to true.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BroadcastStatus

instance FromText BroadcastStatus where
    fromText = \case
        "complete" -> Just Complete
        "live" -> Just Live
        "testing" -> Just Testing
        _ -> Nothing

instance ToText BroadcastStatus where
    toText = \case
        Complete -> "complete"
        Live -> "live"
        Testing -> "testing"

instance FromJSON BroadcastStatus where
    parseJSON = parseJSONText "BroadcastStatus"

instance ToJSON BroadcastStatus where
    toJSON = toJSONText

-- | The status code of this stream
data LiveStreamHealthStatusStatus
    = Bad
      -- ^ @bad@
    | Good
      -- ^ @good@
    | NoData
      -- ^ @noData@
    | OK
      -- ^ @ok@
    | Revoked
      -- ^ @revoked@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveStreamHealthStatusStatus

instance FromText LiveStreamHealthStatusStatus where
    fromText = \case
        "bad" -> Just Bad
        "good" -> Just Good
        "noData" -> Just NoData
        "ok" -> Just OK
        "revoked" -> Just Revoked
        _ -> Nothing

instance ToText LiveStreamHealthStatusStatus where
    toText = \case
        Bad -> "bad"
        Good -> "good"
        NoData -> "noData"
        OK -> "ok"
        Revoked -> "revoked"

instance FromJSON LiveStreamHealthStatusStatus where
    parseJSON = parseJSONText "LiveStreamHealthStatusStatus"

instance ToJSON LiveStreamHealthStatusStatus where
    toJSON = toJSONText

-- | The value of captions indicates whether the video has captions or not.
data Caption
    = False'
      -- ^ @false@
    | True'
      -- ^ @true@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Caption

instance FromText Caption where
    fromText = \case
        "false" -> Just False'
        "true" -> Just True'
        _ -> Nothing

instance ToText Caption where
    toText = \case
        False' -> "false"
        True' -> "true"

instance FromJSON Caption where
    parseJSON = parseJSONText "Caption"

instance ToJSON Caption where
    toJSON = toJSONText

-- | The long uploads status of this channel. See
data LongUploadsStatus
    = LUSAllowed
      -- ^ @allowed@
    | LUSDisallowed
      -- ^ @disallowed@
    | LUSEligible
      -- ^ @eligible@
    | LUSLongUploadsUnspecified
      -- ^ @longUploadsUnspecified@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LongUploadsStatus

instance FromText LongUploadsStatus where
    fromText = \case
        "allowed" -> Just LUSAllowed
        "disallowed" -> Just LUSDisallowed
        "eligible" -> Just LUSEligible
        "longUploadsUnspecified" -> Just LUSLongUploadsUnspecified
        _ -> Nothing

instance ToText LongUploadsStatus where
    toText = \case
        LUSAllowed -> "allowed"
        LUSDisallowed -> "disallowed"
        LUSEligible -> "eligible"
        LUSLongUploadsUnspecified -> "longUploadsUnspecified"

instance FromJSON LongUploadsStatus where
    parseJSON = parseJSONText "LongUploadsStatus"

instance ToJSON LongUploadsStatus where
    toJSON = toJSONText

data ProcessingHintsItem
    = NonStreamableMov
      -- ^ @nonStreamableMov@
    | SendBestQualityVideo
      -- ^ @sendBestQualityVideo@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ProcessingHintsItem

instance FromText ProcessingHintsItem where
    fromText = \case
        "nonStreamableMov" -> Just NonStreamableMov
        "sendBestQualityVideo" -> Just SendBestQualityVideo
        _ -> Nothing

instance ToText ProcessingHintsItem where
    toText = \case
        NonStreamableMov -> "nonStreamableMov"
        SendBestQualityVideo -> "sendBestQualityVideo"

instance FromJSON ProcessingHintsItem where
    parseJSON = parseJSONText "ProcessingHintsItem"

instance ToJSON ProcessingHintsItem where
    toJSON = toJSONText

-- | The uploaded file\'s type as detected by YouTube\'s video processing
-- engine. Currently, YouTube only processes video files, but this field is
-- present whether a video file or another type of file was uploaded.
data FileType
    = FTArchive
      -- ^ @archive@
    | FTAudio
      -- ^ @audio@
    | FTDocument
      -- ^ @document@
    | FTImage
      -- ^ @image@
    | FTOther
      -- ^ @other@
    | FTProject
      -- ^ @project@
    | FTVideo
      -- ^ @video@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FileType

instance FromText FileType where
    fromText = \case
        "archive" -> Just FTArchive
        "audio" -> Just FTAudio
        "document" -> Just FTDocument
        "image" -> Just FTImage
        "other" -> Just FTOther
        "project" -> Just FTProject
        "video" -> Just FTVideo
        _ -> Nothing

instance ToText FileType where
    toText = \case
        FTArchive -> "archive"
        FTAudio -> "audio"
        FTDocument -> "document"
        FTImage -> "image"
        FTOther -> "other"
        FTProject -> "project"
        FTVideo -> "video"

instance FromJSON FileType where
    parseJSON = parseJSONText "FileType"

instance ToJSON FileType where
    toJSON = toJSONText

-- | The video\'s rating from the Bulgarian National Film Center.
data NfrcRating
    = NfrcA
      -- ^ @nfrcA@
    | NfrcB
      -- ^ @nfrcB@
    | NfrcC
      -- ^ @nfrcC@
    | NfrcD
      -- ^ @nfrcD@
    | NfrcUnrated
      -- ^ @nfrcUnrated@
    | NfrcX
      -- ^ @nfrcX@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable NfrcRating

instance FromText NfrcRating where
    fromText = \case
        "nfrcA" -> Just NfrcA
        "nfrcB" -> Just NfrcB
        "nfrcC" -> Just NfrcC
        "nfrcD" -> Just NfrcD
        "nfrcUnrated" -> Just NfrcUnrated
        "nfrcX" -> Just NfrcX
        _ -> Nothing

instance ToText NfrcRating where
    toText = \case
        NfrcA -> "nfrcA"
        NfrcB -> "nfrcB"
        NfrcC -> "nfrcC"
        NfrcD -> "nfrcD"
        NfrcUnrated -> "nfrcUnrated"
        NfrcX -> "nfrcX"

instance FromJSON NfrcRating where
    parseJSON = parseJSONText "NfrcRating"

instance ToJSON NfrcRating where
    toJSON = toJSONText

-- | The broadcastStatus parameter filters the API response to only include
-- broadcasts with the specified status.
data YouTubeLiveBroadcastsListBroadcastStatus
    = YTLBLBSActive
      -- ^ @active@
      -- Return current live broadcasts.
    | YTLBLBSAll
      -- ^ @all@
      -- Return all broadcasts.
    | YTLBLBSCompleted
      -- ^ @completed@
      -- Return broadcasts that have already ended.
    | YTLBLBSUpcoming
      -- ^ @upcoming@
      -- Return broadcasts that have not yet started.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable YouTubeLiveBroadcastsListBroadcastStatus

instance FromText YouTubeLiveBroadcastsListBroadcastStatus where
    fromText = \case
        "active" -> Just YTLBLBSActive
        "all" -> Just YTLBLBSAll
        "completed" -> Just YTLBLBSCompleted
        "upcoming" -> Just YTLBLBSUpcoming
        _ -> Nothing

instance ToText YouTubeLiveBroadcastsListBroadcastStatus where
    toText = \case
        YTLBLBSActive -> "active"
        YTLBLBSAll -> "all"
        YTLBLBSCompleted -> "completed"
        YTLBLBSUpcoming -> "upcoming"

instance FromJSON YouTubeLiveBroadcastsListBroadcastStatus where
    parseJSON = parseJSONText "YouTubeLiveBroadcastsListBroadcastStatus"

instance ToJSON YouTubeLiveBroadcastsListBroadcastStatus where
    toJSON = toJSONText

-- | The video\'s rating from France\'s Conseil supérieur de l?audiovisuel,
-- which rates broadcast content.
data CsaRating
    = CSA10
      -- ^ @csa10@
    | CSA12
      -- ^ @csa12@
    | CSA16
      -- ^ @csa16@
    | CSA18
      -- ^ @csa18@
    | CsaInterdiction
      -- ^ @csaInterdiction@
    | CsaT
      -- ^ @csaT@
    | CsaUnrated
      -- ^ @csaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CsaRating

instance FromText CsaRating where
    fromText = \case
        "csa10" -> Just CSA10
        "csa12" -> Just CSA12
        "csa16" -> Just CSA16
        "csa18" -> Just CSA18
        "csaInterdiction" -> Just CsaInterdiction
        "csaT" -> Just CsaT
        "csaUnrated" -> Just CsaUnrated
        _ -> Nothing

instance ToText CsaRating where
    toText = \case
        CSA10 -> "csa10"
        CSA12 -> "csa12"
        CSA16 -> "csa16"
        CSA18 -> "csa18"
        CsaInterdiction -> "csaInterdiction"
        CsaT -> "csaT"
        CsaUnrated -> "csaUnrated"

instance FromJSON CsaRating where
    parseJSON = parseJSONText "CsaRating"

instance ToJSON CsaRating where
    toJSON = toJSONText

-- | The video\'s Ministerio de Cultura (Colombia) rating.
data MocRating
    = MOC12
      -- ^ @moc12@
    | MOC15
      -- ^ @moc15@
    | MOC18
      -- ^ @moc18@
    | MOC7
      -- ^ @moc7@
    | MocBanned
      -- ^ @mocBanned@
    | MocE
      -- ^ @mocE@
    | MocT
      -- ^ @mocT@
    | MocUnrated
      -- ^ @mocUnrated@
    | MocX
      -- ^ @mocX@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MocRating

instance FromText MocRating where
    fromText = \case
        "moc12" -> Just MOC12
        "moc15" -> Just MOC15
        "moc18" -> Just MOC18
        "moc7" -> Just MOC7
        "mocBanned" -> Just MocBanned
        "mocE" -> Just MocE
        "mocT" -> Just MocT
        "mocUnrated" -> Just MocUnrated
        "mocX" -> Just MocX
        _ -> Nothing

instance ToText MocRating where
    toText = \case
        MOC12 -> "moc12"
        MOC15 -> "moc15"
        MOC18 -> "moc18"
        MOC7 -> "moc7"
        MocBanned -> "mocBanned"
        MocE -> "mocE"
        MocT -> "mocT"
        MocUnrated -> "mocUnrated"
        MocX -> "mocX"

instance FromJSON MocRating where
    parseJSON = parseJSONText "MocRating"

instance ToJSON MocRating where
    toJSON = toJSONText

-- | The type of call-to-action, a message to the user indicating action that
-- can be taken.
data CtaType
    = Unspecified
      -- ^ @unspecified@
    | VisitAdvertiserSite
      -- ^ @visitAdvertiserSite@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CtaType

instance FromText CtaType where
    fromText = \case
        "unspecified" -> Just Unspecified
        "visitAdvertiserSite" -> Just VisitAdvertiserSite
        _ -> Nothing

instance ToText CtaType where
    toText = \case
        Unspecified -> "unspecified"
        VisitAdvertiserSite -> "visitAdvertiserSite"

instance FromJSON CtaType where
    parseJSON = parseJSONText "CtaType"

instance ToJSON CtaType where
    toJSON = toJSONText

-- | The video\'s Eirin (映倫) rating. Eirin is the Japanese rating system.
data EirinRating
    = EirinG
      -- ^ @eirinG@
    | EIRINPG12
      -- ^ @eirinPg12@
    | EirinR15plus
      -- ^ @eirinR15plus@
    | EirinR18plus
      -- ^ @eirinR18plus@
    | EirinUnrated
      -- ^ @eirinUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EirinRating

instance FromText EirinRating where
    fromText = \case
        "eirinG" -> Just EirinG
        "eirinPg12" -> Just EIRINPG12
        "eirinR15plus" -> Just EirinR15plus
        "eirinR18plus" -> Just EirinR18plus
        "eirinUnrated" -> Just EirinUnrated
        _ -> Nothing

instance ToText EirinRating where
    toText = \case
        EirinG -> "eirinG"
        EIRINPG12 -> "eirinPg12"
        EirinR15plus -> "eirinR15plus"
        EirinR18plus -> "eirinR18plus"
        EirinUnrated -> "eirinUnrated"

instance FromJSON EirinRating where
    parseJSON = parseJSONText "EirinRating"

instance ToJSON EirinRating where
    toJSON = toJSONText

-- | Describes in which corner of the video the visual widget will appear.
data CornerPosition
    = BottomLeft
      -- ^ @bottomLeft@
    | BottomRight
      -- ^ @bottomRight@
    | TopLeft
      -- ^ @topLeft@
    | TopRight
      -- ^ @topRight@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CornerPosition

instance FromText CornerPosition where
    fromText = \case
        "bottomLeft" -> Just BottomLeft
        "bottomRight" -> Just BottomRight
        "topLeft" -> Just TopLeft
        "topRight" -> Just TopRight
        _ -> Nothing

instance ToText CornerPosition where
    toText = \case
        BottomLeft -> "bottomLeft"
        BottomRight -> "bottomRight"
        TopLeft -> "topLeft"
        TopRight -> "topRight"

instance FromJSON CornerPosition where
    parseJSON = parseJSONText "CornerPosition"

instance ToJSON CornerPosition where
    toJSON = toJSONText

-- | The video\'s Freiwillige Selbstkontrolle der Filmwirtschaft (FSK -
-- Germany) rating.
data FskRating
    = FSK0
      -- ^ @fsk0@
    | FSK12
      -- ^ @fsk12@
    | FSK16
      -- ^ @fsk16@
    | FSK18
      -- ^ @fsk18@
    | FSK6
      -- ^ @fsk6@
    | FskUnrated
      -- ^ @fskUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FskRating

instance FromText FskRating where
    fromText = \case
        "fsk0" -> Just FSK0
        "fsk12" -> Just FSK12
        "fsk16" -> Just FSK16
        "fsk18" -> Just FSK18
        "fsk6" -> Just FSK6
        "fskUnrated" -> Just FskUnrated
        _ -> Nothing

instance ToText FskRating where
    toText = \case
        FSK0 -> "fsk0"
        FSK12 -> "fsk12"
        FSK16 -> "fsk16"
        FSK18 -> "fsk18"
        FSK6 -> "fsk6"
        FskUnrated -> "fskUnrated"

instance FromJSON FskRating where
    parseJSON = parseJSONText "FskRating"

instance ToJSON FskRating where
    toJSON = toJSONText

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

instance FromJSON VideoRatingRating where
    parseJSON = parseJSONText "VideoRatingRating"

instance ToJSON VideoRatingRating where
    toJSON = toJSONText

-- | The video\'s rating in Estonia.
data EefilmRating
    = EEFILMK12
      -- ^ @eefilmK12@
    | EEFILMK14
      -- ^ @eefilmK14@
    | EEFILMK16
      -- ^ @eefilmK16@
    | EEFILMK6
      -- ^ @eefilmK6@
    | EefilmL
      -- ^ @eefilmL@
    | EEFILMMS12
      -- ^ @eefilmMs12@
    | EEFILMMS6
      -- ^ @eefilmMs6@
    | EefilmPere
      -- ^ @eefilmPere@
    | EefilmUnrated
      -- ^ @eefilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EefilmRating

instance FromText EefilmRating where
    fromText = \case
        "eefilmK12" -> Just EEFILMK12
        "eefilmK14" -> Just EEFILMK14
        "eefilmK16" -> Just EEFILMK16
        "eefilmK6" -> Just EEFILMK6
        "eefilmL" -> Just EefilmL
        "eefilmMs12" -> Just EEFILMMS12
        "eefilmMs6" -> Just EEFILMMS6
        "eefilmPere" -> Just EefilmPere
        "eefilmUnrated" -> Just EefilmUnrated
        _ -> Nothing

instance ToText EefilmRating where
    toText = \case
        EEFILMK12 -> "eefilmK12"
        EEFILMK14 -> "eefilmK14"
        EEFILMK16 -> "eefilmK16"
        EEFILMK6 -> "eefilmK6"
        EefilmL -> "eefilmL"
        EEFILMMS12 -> "eefilmMs12"
        EEFILMMS6 -> "eefilmMs6"
        EefilmPere -> "eefilmPere"
        EefilmUnrated -> "eefilmUnrated"

instance FromJSON EefilmRating where
    parseJSON = parseJSONText "EefilmRating"

instance ToJSON EefilmRating where
    toJSON = toJSONText

-- | The broadcast\'s recording status.
data RecordingStatus
    = NotRecording
      -- ^ @notRecording@
    | Recorded
      -- ^ @recorded@
    | Recording
      -- ^ @recording@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RecordingStatus

instance FromText RecordingStatus where
    fromText = \case
        "notRecording" -> Just NotRecording
        "recorded" -> Just Recorded
        "recording" -> Just Recording
        _ -> Nothing

instance ToText RecordingStatus where
    toText = \case
        NotRecording -> "notRecording"
        Recorded -> "recorded"
        Recording -> "recording"

instance FromJSON RecordingStatus where
    parseJSON = parseJSONText "RecordingStatus"

instance ToJSON RecordingStatus where
    toJSON = toJSONText

-- | The video\'s rating from the Hungarian Nemzeti Filmiroda, the Rating
-- Committee of the National Office of Film.
data RcnofRating
    = RcnofI
      -- ^ @rcnofI@
    | RcnofIi
      -- ^ @rcnofIi@
    | RcnofIii
      -- ^ @rcnofIii@
    | RcnofIv
      -- ^ @rcnofIv@
    | RcnofUnrated
      -- ^ @rcnofUnrated@
    | RcnofV
      -- ^ @rcnofV@
    | RcnofVi
      -- ^ @rcnofVi@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RcnofRating

instance FromText RcnofRating where
    fromText = \case
        "rcnofI" -> Just RcnofI
        "rcnofIi" -> Just RcnofIi
        "rcnofIii" -> Just RcnofIii
        "rcnofIv" -> Just RcnofIv
        "rcnofUnrated" -> Just RcnofUnrated
        "rcnofV" -> Just RcnofV
        "rcnofVi" -> Just RcnofVi
        _ -> Nothing

instance ToText RcnofRating where
    toText = \case
        RcnofI -> "rcnofI"
        RcnofIi -> "rcnofIi"
        RcnofIii -> "rcnofIii"
        RcnofIv -> "rcnofIv"
        RcnofUnrated -> "rcnofUnrated"
        RcnofV -> "rcnofV"
        RcnofVi -> "rcnofVi"

instance FromJSON RcnofRating where
    parseJSON = parseJSONText "RcnofRating"

instance ToJSON RcnofRating where
    toJSON = toJSONText

-- | The video\'s rating from Finland\'s Kansallinen Audiovisuaalinen
-- Instituutti (National Audiovisual Institute).
data MekuRating
    = MEKU12
      -- ^ @meku12@
    | MEKU16
      -- ^ @meku16@
    | MEKU18
      -- ^ @meku18@
    | MEKU7
      -- ^ @meku7@
    | MekuS
      -- ^ @mekuS@
    | MekuUnrated
      -- ^ @mekuUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MekuRating

instance FromText MekuRating where
    fromText = \case
        "meku12" -> Just MEKU12
        "meku16" -> Just MEKU16
        "meku18" -> Just MEKU18
        "meku7" -> Just MEKU7
        "mekuS" -> Just MekuS
        "mekuUnrated" -> Just MekuUnrated
        _ -> Nothing

instance ToText MekuRating where
    toText = \case
        MEKU12 -> "meku12"
        MEKU16 -> "meku16"
        MEKU18 -> "meku18"
        MEKU7 -> "meku7"
        MekuS -> "mekuS"
        MekuUnrated -> "mekuUnrated"

instance FromJSON MekuRating where
    parseJSON = parseJSONText "MekuRating"

instance ToJSON MekuRating where
    toJSON = toJSONText

-- | The videoEmbeddable parameter lets you to restrict a search to only
-- videos that can be embedded into a webpage. If you specify a value for
-- this parameter, you must also set the type parameter\'s value to video.
data VideoEmbeddable
    = VEAny
      -- ^ @any@
      -- Return all videos, embeddable or not.
    | VETrue'
      -- ^ @true@
      -- Only retrieve embeddable videos.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoEmbeddable

instance FromText VideoEmbeddable where
    fromText = \case
        "any" -> Just VEAny
        "true" -> Just VETrue'
        _ -> Nothing

instance ToText VideoEmbeddable where
    toText = \case
        VEAny -> "any"
        VETrue' -> "true"

instance FromJSON VideoEmbeddable where
    parseJSON = parseJSONText "VideoEmbeddable"

instance ToJSON VideoEmbeddable where
    toJSON = toJSONText

-- | The video\'s rating in Israel.
data IlfilmRating
    = ILFILM12
      -- ^ @ilfilm12@
    | ILFILM16
      -- ^ @ilfilm16@
    | ILFILM18
      -- ^ @ilfilm18@
    | IlfilmAa
      -- ^ @ilfilmAa@
    | IlfilmUnrated
      -- ^ @ilfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable IlfilmRating

instance FromText IlfilmRating where
    fromText = \case
        "ilfilm12" -> Just ILFILM12
        "ilfilm16" -> Just ILFILM16
        "ilfilm18" -> Just ILFILM18
        "ilfilmAa" -> Just IlfilmAa
        "ilfilmUnrated" -> Just IlfilmUnrated
        _ -> Nothing

instance ToText IlfilmRating where
    toText = \case
        ILFILM12 -> "ilfilm12"
        ILFILM16 -> "ilfilm16"
        ILFILM18 -> "ilfilm18"
        IlfilmAa -> "ilfilmAa"
        IlfilmUnrated -> "ilfilmUnrated"

instance FromJSON IlfilmRating where
    parseJSON = parseJSONText "IlfilmRating"

instance ToJSON IlfilmRating where
    toJSON = toJSONText

-- | The video\'s Irish Film Classification Office (IFCO - Ireland) rating.
-- See the IFCO website for more information.
data IfcoRating
    = IFCO12
      -- ^ @ifco12@
    | Ifco12a
      -- ^ @ifco12a@
    | IFCO15
      -- ^ @ifco15@
    | Ifco15a
      -- ^ @ifco15a@
    | IFCO16
      -- ^ @ifco16@
    | IFCO18
      -- ^ @ifco18@
    | IfcoG
      -- ^ @ifcoG@
    | IfcoPg
      -- ^ @ifcoPg@
    | IfcoUnrated
      -- ^ @ifcoUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable IfcoRating

instance FromText IfcoRating where
    fromText = \case
        "ifco12" -> Just IFCO12
        "ifco12a" -> Just Ifco12a
        "ifco15" -> Just IFCO15
        "ifco15a" -> Just Ifco15a
        "ifco16" -> Just IFCO16
        "ifco18" -> Just IFCO18
        "ifcoG" -> Just IfcoG
        "ifcoPg" -> Just IfcoPg
        "ifcoUnrated" -> Just IfcoUnrated
        _ -> Nothing

instance ToText IfcoRating where
    toText = \case
        IFCO12 -> "ifco12"
        Ifco12a -> "ifco12a"
        IFCO15 -> "ifco15"
        Ifco15a -> "ifco15a"
        IFCO16 -> "ifco16"
        IFCO18 -> "ifco18"
        IfcoG -> "ifcoG"
        IfcoPg -> "ifcoPg"
        IfcoUnrated -> "ifcoUnrated"

instance FromJSON IfcoRating where
    parseJSON = parseJSONText "IfcoRating"

instance ToJSON IfcoRating where
    toJSON = toJSONText

-- | The eventType parameter restricts a search to broadcast events. If you
-- specify a value for this parameter, you must also set the type
-- parameter\'s value to video.
data EventType
    = ETCompleted
      -- ^ @completed@
      -- Only include completed broadcasts.
    | ETLive
      -- ^ @live@
      -- Only include active broadcasts.
    | ETUpcoming
      -- ^ @upcoming@
      -- Only include upcoming broadcasts.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventType

instance FromText EventType where
    fromText = \case
        "completed" -> Just ETCompleted
        "live" -> Just ETLive
        "upcoming" -> Just ETUpcoming
        _ -> Nothing

instance ToText EventType where
    toText = \case
        ETCompleted -> "completed"
        ETLive -> "live"
        ETUpcoming -> "upcoming"

instance FromJSON EventType where
    parseJSON = parseJSONText "EventType"

instance ToJSON EventType where
    toJSON = toJSONText

-- | The reason that the resource is recommended to the user.
data Reason
    = RUnspecified
      -- ^ @unspecified@
    | RVideoFavorited
      -- ^ @videoFavorited@
    | RVideoLiked
      -- ^ @videoLiked@
    | RVideoWatched
      -- ^ @videoWatched@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Reason

instance FromText Reason where
    fromText = \case
        "unspecified" -> Just RUnspecified
        "videoFavorited" -> Just RVideoFavorited
        "videoLiked" -> Just RVideoLiked
        "videoWatched" -> Just RVideoWatched
        _ -> Nothing

instance ToText Reason where
    toText = \case
        RUnspecified -> "unspecified"
        RVideoFavorited -> "videoFavorited"
        RVideoLiked -> "videoLiked"
        RVideoWatched -> "videoWatched"

instance FromJSON Reason where
    parseJSON = parseJSONText "Reason"

instance ToJSON Reason where
    toJSON = toJSONText

-- | The video\'s rating in Poland.
data NbcplRating
    = Nbcpl18plus
      -- ^ @nbcpl18plus@
    | NbcplI
      -- ^ @nbcplI@
    | NbcplIi
      -- ^ @nbcplIi@
    | NbcplIii
      -- ^ @nbcplIii@
    | NbcplIv
      -- ^ @nbcplIv@
    | NbcplUnrated
      -- ^ @nbcplUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable NbcplRating

instance FromText NbcplRating where
    fromText = \case
        "nbcpl18plus" -> Just Nbcpl18plus
        "nbcplI" -> Just NbcplI
        "nbcplIi" -> Just NbcplIi
        "nbcplIii" -> Just NbcplIii
        "nbcplIv" -> Just NbcplIv
        "nbcplUnrated" -> Just NbcplUnrated
        _ -> Nothing

instance ToText NbcplRating where
    toText = \case
        Nbcpl18plus -> "nbcpl18plus"
        NbcplI -> "nbcplI"
        NbcplIi -> "nbcplIi"
        NbcplIii -> "nbcplIii"
        NbcplIv -> "nbcplIv"
        NbcplUnrated -> "nbcplUnrated"

instance FromJSON NbcplRating where
    parseJSON = parseJSONText "NbcplRating"

instance ToJSON NbcplRating where
    toJSON = toJSONText

-- | The video\'s rating in Greece.
data GrfilmRating
    = GrfilmE
      -- ^ @grfilmE@
    | GrfilmK
      -- ^ @grfilmK@
    | GRFILMK13
      -- ^ @grfilmK13@
    | GRFILMK17
      -- ^ @grfilmK17@
    | GrfilmUnrated
      -- ^ @grfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GrfilmRating

instance FromText GrfilmRating where
    fromText = \case
        "grfilmE" -> Just GrfilmE
        "grfilmK" -> Just GrfilmK
        "grfilmK13" -> Just GRFILMK13
        "grfilmK17" -> Just GRFILMK17
        "grfilmUnrated" -> Just GrfilmUnrated
        _ -> Nothing

instance ToText GrfilmRating where
    toText = \case
        GrfilmE -> "grfilmE"
        GrfilmK -> "grfilmK"
        GRFILMK13 -> "grfilmK13"
        GRFILMK17 -> "grfilmK17"
        GrfilmUnrated -> "grfilmUnrated"

instance FromJSON GrfilmRating where
    parseJSON = parseJSONText "GrfilmRating"

instance ToJSON GrfilmRating where
    toJSON = toJSONText

-- | The video\'s rating from Ireland\'s Raidió Teilifís Éireann.
data RteRating
    = RteCh
      -- ^ @rteCh@
    | RteGa
      -- ^ @rteGa@
    | RteMa
      -- ^ @rteMa@
    | RtePs
      -- ^ @rtePs@
    | RteUnrated
      -- ^ @rteUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RteRating

instance FromText RteRating where
    fromText = \case
        "rteCh" -> Just RteCh
        "rteGa" -> Just RteGa
        "rteMa" -> Just RteMa
        "rtePs" -> Just RtePs
        "rteUnrated" -> Just RteUnrated
        _ -> Nothing

instance ToText RteRating where
    toText = \case
        RteCh -> "rteCh"
        RteGa -> "rteGa"
        RteMa -> "rteMa"
        RtePs -> "rtePs"
        RteUnrated -> "rteUnrated"

instance FromJSON RteRating where
    parseJSON = parseJSONText "RteRating"

instance ToJSON RteRating where
    toJSON = toJSONText

-- | The video\'s Australian Classification Board (ACB) or Australian
-- Communications and Media Authority (ACMA) rating. ACMA ratings are used
-- to classify children\'s television programming.
data AcbRating
    = AcbC
      -- ^ @acbC@
    | AcbE
      -- ^ @acbE@
    | AcbG
      -- ^ @acbG@
    | AcbM
      -- ^ @acbM@
    | AcbMa15plus
      -- ^ @acbMa15plus@
    | AcbP
      -- ^ @acbP@
    | AcbPg
      -- ^ @acbPg@
    | AcbR18plus
      -- ^ @acbR18plus@
    | AcbUnrated
      -- ^ @acbUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AcbRating

instance FromText AcbRating where
    fromText = \case
        "acbC" -> Just AcbC
        "acbE" -> Just AcbE
        "acbG" -> Just AcbG
        "acbM" -> Just AcbM
        "acbMa15plus" -> Just AcbMa15plus
        "acbP" -> Just AcbP
        "acbPg" -> Just AcbPg
        "acbR18plus" -> Just AcbR18plus
        "acbUnrated" -> Just AcbUnrated
        _ -> Nothing

instance ToText AcbRating where
    toText = \case
        AcbC -> "acbC"
        AcbE -> "acbE"
        AcbG -> "acbG"
        AcbM -> "acbM"
        AcbMa15plus -> "acbMa15plus"
        AcbP -> "acbP"
        AcbPg -> "acbPg"
        AcbR18plus -> "acbR18plus"
        AcbUnrated -> "acbUnrated"

instance FromJSON AcbRating where
    parseJSON = parseJSONText "AcbRating"

instance ToJSON AcbRating where
    toJSON = toJSONText

-- | The order parameter specifies the method that will be used to order
-- resources in the API response.
data YouTubeSearchListOrder
    = YTSLODate
      -- ^ @date@
      -- Resources are sorted in reverse chronological order based on the date
      -- they were created.
    | YTSLORating
      -- ^ @rating@
      -- Resources are sorted from highest to lowest rating.
    | YTSLORelevance
      -- ^ @relevance@
      -- Resources are sorted based on their relevance to the search query. This
      -- is the default value for this parameter.
    | YTSLOTitle
      -- ^ @title@
      -- Resources are sorted alphabetically by title.
    | YTSLOVideoCount
      -- ^ @videoCount@
      -- Channels are sorted in descending order of their number of uploaded
      -- videos.
    | YTSLOViewCount
      -- ^ @viewCount@
      -- Resources are sorted from highest to lowest number of views.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable YouTubeSearchListOrder

instance FromText YouTubeSearchListOrder where
    fromText = \case
        "date" -> Just YTSLODate
        "rating" -> Just YTSLORating
        "relevance" -> Just YTSLORelevance
        "title" -> Just YTSLOTitle
        "videoCount" -> Just YTSLOVideoCount
        "viewCount" -> Just YTSLOViewCount
        _ -> Nothing

instance ToText YouTubeSearchListOrder where
    toText = \case
        YTSLODate -> "date"
        YTSLORating -> "rating"
        YTSLORelevance -> "relevance"
        YTSLOTitle -> "title"
        YTSLOVideoCount -> "videoCount"
        YTSLOViewCount -> "viewCount"

instance FromJSON YouTubeSearchListOrder where
    parseJSON = parseJSONText "YouTubeSearchListOrder"

instance ToJSON YouTubeSearchListOrder where
    toJSON = toJSONText

-- | The type of the channel section.
data ChannelSectionSnippetType
    = CSSTAllPlayLists
      -- ^ @allPlaylists@
    | CSSTChannelsectionTypeUndefined
      -- ^ @channelsectionTypeUndefined@
    | CSSTCompletedEvents
      -- ^ @completedEvents@
    | CSSTLikedPlayLists
      -- ^ @likedPlaylists@
    | CSSTLikes
      -- ^ @likes@
    | CSSTLiveEvents
      -- ^ @liveEvents@
    | CSSTMultipleChannels
      -- ^ @multipleChannels@
    | CSSTMultiplePlayLists
      -- ^ @multiplePlaylists@
    | CSSTPopularUploads
      -- ^ @popularUploads@
    | CSSTPostedPlayLists
      -- ^ @postedPlaylists@
    | CSSTPostedVideos
      -- ^ @postedVideos@
    | CSSTRecentActivity
      -- ^ @recentActivity@
    | CSSTRecentPosts
      -- ^ @recentPosts@
    | CSSTRecentUploads
      -- ^ @recentUploads@
    | CSSTSinglePlayList
      -- ^ @singlePlaylist@
    | CSSTSubscriptions
      -- ^ @subscriptions@
    | CSSTUpcomingEvents
      -- ^ @upcomingEvents@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelSectionSnippetType

instance FromText ChannelSectionSnippetType where
    fromText = \case
        "allPlaylists" -> Just CSSTAllPlayLists
        "channelsectionTypeUndefined" -> Just CSSTChannelsectionTypeUndefined
        "completedEvents" -> Just CSSTCompletedEvents
        "likedPlaylists" -> Just CSSTLikedPlayLists
        "likes" -> Just CSSTLikes
        "liveEvents" -> Just CSSTLiveEvents
        "multipleChannels" -> Just CSSTMultipleChannels
        "multiplePlaylists" -> Just CSSTMultiplePlayLists
        "popularUploads" -> Just CSSTPopularUploads
        "postedPlaylists" -> Just CSSTPostedPlayLists
        "postedVideos" -> Just CSSTPostedVideos
        "recentActivity" -> Just CSSTRecentActivity
        "recentPosts" -> Just CSSTRecentPosts
        "recentUploads" -> Just CSSTRecentUploads
        "singlePlaylist" -> Just CSSTSinglePlayList
        "subscriptions" -> Just CSSTSubscriptions
        "upcomingEvents" -> Just CSSTUpcomingEvents
        _ -> Nothing

instance ToText ChannelSectionSnippetType where
    toText = \case
        CSSTAllPlayLists -> "allPlaylists"
        CSSTChannelsectionTypeUndefined -> "channelsectionTypeUndefined"
        CSSTCompletedEvents -> "completedEvents"
        CSSTLikedPlayLists -> "likedPlaylists"
        CSSTLikes -> "likes"
        CSSTLiveEvents -> "liveEvents"
        CSSTMultipleChannels -> "multipleChannels"
        CSSTMultiplePlayLists -> "multiplePlaylists"
        CSSTPopularUploads -> "popularUploads"
        CSSTPostedPlayLists -> "postedPlaylists"
        CSSTPostedVideos -> "postedVideos"
        CSSTRecentActivity -> "recentActivity"
        CSSTRecentPosts -> "recentPosts"
        CSSTRecentUploads -> "recentUploads"
        CSSTSinglePlayList -> "singlePlaylist"
        CSSTSubscriptions -> "subscriptions"
        CSSTUpcomingEvents -> "upcomingEvents"

instance FromJSON ChannelSectionSnippetType where
    parseJSON = parseJSONText "ChannelSectionSnippetType"

instance ToJSON ChannelSectionSnippetType where
    toJSON = toJSONText

-- | The caption track\'s status.
data CaptionSnippetStatus
    = Failed
      -- ^ @failed@
    | Serving
      -- ^ @serving@
    | Syncing
      -- ^ @syncing@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CaptionSnippetStatus

instance FromText CaptionSnippetStatus where
    fromText = \case
        "failed" -> Just Failed
        "serving" -> Just Serving
        "syncing" -> Just Syncing
        _ -> Nothing

instance ToText CaptionSnippetStatus where
    toText = \case
        Failed -> "failed"
        Serving -> "serving"
        Syncing -> "syncing"

instance FromJSON CaptionSnippetStatus where
    parseJSON = parseJSONText "CaptionSnippetStatus"

instance ToJSON CaptionSnippetStatus where
    toJSON = toJSONText

-- | Rating system for Canadian TV - Canadian TV Classification System The
-- video\'s rating from the Canadian Radio-Television and
-- Telecommunications Commission (CRTC) for Canadian English-language
-- broadcasts. For more information, see the Canadian Broadcast Standards
-- Council website.
data CatvRating
    = Catv14plus
      -- ^ @catv14plus@
    | Catv18plus
      -- ^ @catv18plus@
    | CatvC
      -- ^ @catvC@
    | CATVC8
      -- ^ @catvC8@
    | CatvG
      -- ^ @catvG@
    | CatvPg
      -- ^ @catvPg@
    | CatvUnrated
      -- ^ @catvUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CatvRating

instance FromText CatvRating where
    fromText = \case
        "catv14plus" -> Just Catv14plus
        "catv18plus" -> Just Catv18plus
        "catvC" -> Just CatvC
        "catvC8" -> Just CATVC8
        "catvG" -> Just CatvG
        "catvPg" -> Just CatvPg
        "catvUnrated" -> Just CatvUnrated
        _ -> Nothing

instance ToText CatvRating where
    toText = \case
        Catv14plus -> "catv14plus"
        Catv18plus -> "catv18plus"
        CatvC -> "catvC"
        CATVC8 -> "catvC8"
        CatvG -> "catvG"
        CatvPg -> "catvPg"
        CatvUnrated -> "catvUnrated"

instance FromJSON CatvRating where
    parseJSON = parseJSONText "CatvRating"

instance ToJSON CatvRating where
    toJSON = toJSONText

-- | The video\'s processing status. This value indicates whether YouTube was
-- able to process the video or if the video is still being processed.
data ProcessingStatus
    = PSFailed
      -- ^ @failed@
    | PSProcessing
      -- ^ @processing@
    | PSSucceeded
      -- ^ @succeeded@
    | PSTerminated
      -- ^ @terminated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ProcessingStatus

instance FromText ProcessingStatus where
    fromText = \case
        "failed" -> Just PSFailed
        "processing" -> Just PSProcessing
        "succeeded" -> Just PSSucceeded
        "terminated" -> Just PSTerminated
        _ -> Nothing

instance ToText ProcessingStatus where
    toText = \case
        PSFailed -> "failed"
        PSProcessing -> "processing"
        PSSucceeded -> "succeeded"
        PSTerminated -> "terminated"

instance FromJSON ProcessingStatus where
    parseJSON = parseJSONText "ProcessingStatus"

instance ToJSON ProcessingStatus where
    toJSON = toJSONText

-- | The video\'s rating from Singapore\'s Media Development Authority (MDA)
-- and, specifically, it\'s Board of Film Censors (BFC).
data MdaRating
    = MdaG
      -- ^ @mdaG@
    | MDAM18
      -- ^ @mdaM18@
    | MDANC16
      -- ^ @mdaNc16@
    | MdaPg
      -- ^ @mdaPg@
    | MDAPG13
      -- ^ @mdaPg13@
    | MDAR21
      -- ^ @mdaR21@
    | MdaUnrated
      -- ^ @mdaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MdaRating

instance FromText MdaRating where
    fromText = \case
        "mdaG" -> Just MdaG
        "mdaM18" -> Just MDAM18
        "mdaNc16" -> Just MDANC16
        "mdaPg" -> Just MdaPg
        "mdaPg13" -> Just MDAPG13
        "mdaR21" -> Just MDAR21
        "mdaUnrated" -> Just MdaUnrated
        _ -> Nothing

instance ToText MdaRating where
    toText = \case
        MdaG -> "mdaG"
        MDAM18 -> "mdaM18"
        MDANC16 -> "mdaNc16"
        MdaPg -> "mdaPg"
        MDAPG13 -> "mdaPg13"
        MDAR21 -> "mdaR21"
        MdaUnrated -> "mdaUnrated"

instance FromJSON MdaRating where
    parseJSON = parseJSONText "MdaRating"

instance ToJSON MdaRating where
    toJSON = toJSONText

-- | The video\'s Departamento de Justiça, Classificação, Qualificação e
-- Títulos (DJCQT - Brazil) rating.
data DjctqRating
    = DJCTQ10
      -- ^ @djctq10@
    | DJCTQ12
      -- ^ @djctq12@
    | DJCTQ14
      -- ^ @djctq14@
    | DJCTQ16
      -- ^ @djctq16@
    | DJCTQ18
      -- ^ @djctq18@
    | DjctqL
      -- ^ @djctqL@
    | DjctqUnrated
      -- ^ @djctqUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DjctqRating

instance FromText DjctqRating where
    fromText = \case
        "djctq10" -> Just DJCTQ10
        "djctq12" -> Just DJCTQ12
        "djctq14" -> Just DJCTQ14
        "djctq16" -> Just DJCTQ16
        "djctq18" -> Just DJCTQ18
        "djctqL" -> Just DjctqL
        "djctqUnrated" -> Just DjctqUnrated
        _ -> Nothing

instance ToText DjctqRating where
    toText = \case
        DJCTQ10 -> "djctq10"
        DJCTQ12 -> "djctq12"
        DJCTQ14 -> "djctq14"
        DJCTQ16 -> "djctq16"
        DJCTQ18 -> "djctq18"
        DjctqL -> "djctqL"
        DjctqUnrated -> "djctqUnrated"

instance FromJSON DjctqRating where
    parseJSON = parseJSONText "DjctqRating"

instance ToJSON DjctqRating where
    toJSON = toJSONText

-- | The status of the uploaded video.
data UploadStatus
    = USDeleted
      -- ^ @deleted@
    | USFailed
      -- ^ @failed@
    | USProcessed
      -- ^ @processed@
    | USRejected
      -- ^ @rejected@
    | USUploaded
      -- ^ @uploaded@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UploadStatus

instance FromText UploadStatus where
    fromText = \case
        "deleted" -> Just USDeleted
        "failed" -> Just USFailed
        "processed" -> Just USProcessed
        "rejected" -> Just USRejected
        "uploaded" -> Just USUploaded
        _ -> Nothing

instance ToText UploadStatus where
    toText = \case
        USDeleted -> "deleted"
        USFailed -> "failed"
        USProcessed -> "processed"
        USRejected -> "rejected"
        USUploaded -> "uploaded"

instance FromJSON UploadStatus where
    parseJSON = parseJSONText "UploadStatus"

instance ToJSON UploadStatus where
    toJSON = toJSONText

-- | The safeSearch parameter indicates whether the search results should
-- include restricted content as well as standard content.
data SafeSearch
    = SSModerate
      -- ^ @moderate@
      -- YouTube will filter some content from search results and, at the least,
      -- will filter content that is restricted in your locale. Based on their
      -- content, search results could be removed from search results or demoted
      -- in search results. This is the default parameter value.
    | SSNone
      -- ^ @none@
      -- YouTube will not filter the search result set.
    | SSStrict
      -- ^ @strict@
      -- YouTube will try to exclude all restricted content from the search
      -- result set. Based on their content, search results could be removed from
      -- search results or demoted in search results.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SafeSearch

instance FromText SafeSearch where
    fromText = \case
        "moderate" -> Just SSModerate
        "none" -> Just SSNone
        "strict" -> Just SSStrict
        _ -> Nothing

instance ToText SafeSearch where
    toText = \case
        SSModerate -> "moderate"
        SSNone -> "none"
        SSStrict -> "strict"

instance FromJSON SafeSearch where
    parseJSON = parseJSONText "SafeSearch"

instance ToJSON SafeSearch where
    toJSON = toJSONText

-- | The videoSyndicated parameter lets you to restrict a search to only
-- videos that can be played outside youtube.com. If you specify a value
-- for this parameter, you must also set the type parameter\'s value to
-- video.
data VideoSyndicated
    = VSAny
      -- ^ @any@
      -- Return all videos, syndicated or not.
    | VSTrue'
      -- ^ @true@
      -- Only retrieve syndicated videos.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoSyndicated

instance FromText VideoSyndicated where
    fromText = \case
        "any" -> Just VSAny
        "true" -> Just VSTrue'
        _ -> Nothing

instance ToText VideoSyndicated where
    toText = \case
        VSAny -> "any"
        VSTrue' -> "true"

instance FromJSON VideoSyndicated where
    parseJSON = parseJSONText "VideoSyndicated"

instance ToJSON VideoSyndicated where
    toJSON = toJSONText

-- | The broadcast\'s status. The status can be updated using the API\'s
-- liveBroadcasts.transition method.
data LifeCycleStatus
    = LCSAbandoned
      -- ^ @abandoned@
    | LCSComplete
      -- ^ @complete@
    | LCSCompleteStarting
      -- ^ @completeStarting@
    | LCSCreated
      -- ^ @created@
    | LCSLive
      -- ^ @live@
    | LCSLiveStarting
      -- ^ @liveStarting@
    | LCSReady
      -- ^ @ready@
    | LCSReclaimed
      -- ^ @reclaimed@
    | LCSRevoked
      -- ^ @revoked@
    | LCSTestStarting
      -- ^ @testStarting@
    | LCSTesting
      -- ^ @testing@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LifeCycleStatus

instance FromText LifeCycleStatus where
    fromText = \case
        "abandoned" -> Just LCSAbandoned
        "complete" -> Just LCSComplete
        "completeStarting" -> Just LCSCompleteStarting
        "created" -> Just LCSCreated
        "live" -> Just LCSLive
        "liveStarting" -> Just LCSLiveStarting
        "ready" -> Just LCSReady
        "reclaimed" -> Just LCSReclaimed
        "revoked" -> Just LCSRevoked
        "testStarting" -> Just LCSTestStarting
        "testing" -> Just LCSTesting
        _ -> Nothing

instance ToText LifeCycleStatus where
    toText = \case
        LCSAbandoned -> "abandoned"
        LCSComplete -> "complete"
        LCSCompleteStarting -> "completeStarting"
        LCSCreated -> "created"
        LCSLive -> "live"
        LCSLiveStarting -> "liveStarting"
        LCSReady -> "ready"
        LCSReclaimed -> "reclaimed"
        LCSRevoked -> "revoked"
        LCSTestStarting -> "testStarting"
        LCSTesting -> "testing"

instance FromJSON LifeCycleStatus where
    parseJSON = parseJSONText "LifeCycleStatus"

instance ToJSON LifeCycleStatus where
    toJSON = toJSONText

-- | The method or protocol used to transmit the video stream.
data IngestionType
    = Dash
      -- ^ @dash@
    | Rtmp
      -- ^ @rtmp@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable IngestionType

instance FromText IngestionType where
    fromText = \case
        "dash" -> Just Dash
        "rtmp" -> Just Rtmp
        _ -> Nothing

instance ToText IngestionType where
    toText = \case
        Dash -> "dash"
        Rtmp -> "rtmp"

instance FromJSON IngestionType where
    parseJSON = parseJSONText "IngestionType"

instance ToJSON IngestionType where
    toJSON = toJSONText

-- | The video\'s rating in Iceland.
data SmaisRating
    = SMAIS12
      -- ^ @smais12@
    | SMAIS14
      -- ^ @smais14@
    | SMAIS16
      -- ^ @smais16@
    | SMAIS18
      -- ^ @smais18@
    | SMAIS7
      -- ^ @smais7@
    | SmaisL
      -- ^ @smaisL@
    | SmaisUnrated
      -- ^ @smaisUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SmaisRating

instance FromText SmaisRating where
    fromText = \case
        "smais12" -> Just SMAIS12
        "smais14" -> Just SMAIS14
        "smais16" -> Just SMAIS16
        "smais18" -> Just SMAIS18
        "smais7" -> Just SMAIS7
        "smaisL" -> Just SmaisL
        "smaisUnrated" -> Just SmaisUnrated
        _ -> Nothing

instance ToText SmaisRating where
    toText = \case
        SMAIS12 -> "smais12"
        SMAIS14 -> "smais14"
        SMAIS16 -> "smais16"
        SMAIS18 -> "smais18"
        SMAIS7 -> "smais7"
        SmaisL -> "smaisL"
        SmaisUnrated -> "smaisUnrated"

instance FromJSON SmaisRating where
    parseJSON = parseJSONText "SmaisRating"

instance ToJSON SmaisRating where
    toJSON = toJSONText

-- | The video\'s rating from Luxembourg\'s Commission de surveillance de la
-- classification des films (CSCF).
data CscfRating
    = CSCF12
      -- ^ @cscf12@
    | CSCF16
      -- ^ @cscf16@
    | CSCF18
      -- ^ @cscf18@
    | CSCF6
      -- ^ @cscf6@
    | CSCF9
      -- ^ @cscf9@
    | CscfA
      -- ^ @cscfA@
    | CscfAl
      -- ^ @cscfAl@
    | CscfUnrated
      -- ^ @cscfUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CscfRating

instance FromText CscfRating where
    fromText = \case
        "cscf12" -> Just CSCF12
        "cscf16" -> Just CSCF16
        "cscf18" -> Just CSCF18
        "cscf6" -> Just CSCF6
        "cscf9" -> Just CSCF9
        "cscfA" -> Just CscfA
        "cscfAl" -> Just CscfAl
        "cscfUnrated" -> Just CscfUnrated
        _ -> Nothing

instance ToText CscfRating where
    toText = \case
        CSCF12 -> "cscf12"
        CSCF16 -> "cscf16"
        CSCF18 -> "cscf18"
        CSCF6 -> "cscf6"
        CSCF9 -> "cscf9"
        CscfA -> "cscfA"
        CscfAl -> "cscfAl"
        CscfUnrated -> "cscfUnrated"

instance FromJSON CscfRating where
    parseJSON = parseJSONText "CscfRating"

instance ToJSON CscfRating where
    toJSON = toJSONText

-- | The video\'s TV Parental Guidelines (TVPG) rating.
data TvpgRating
    = PG14
      -- ^ @pg14@
    | TvpgG
      -- ^ @tvpgG@
    | TvpgMa
      -- ^ @tvpgMa@
    | TvpgPg
      -- ^ @tvpgPg@
    | TvpgUnrated
      -- ^ @tvpgUnrated@
    | TvpgY
      -- ^ @tvpgY@
    | TVPGY7
      -- ^ @tvpgY7@
    | TvpgY7Fv
      -- ^ @tvpgY7Fv@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TvpgRating

instance FromText TvpgRating where
    fromText = \case
        "pg14" -> Just PG14
        "tvpgG" -> Just TvpgG
        "tvpgMa" -> Just TvpgMa
        "tvpgPg" -> Just TvpgPg
        "tvpgUnrated" -> Just TvpgUnrated
        "tvpgY" -> Just TvpgY
        "tvpgY7" -> Just TVPGY7
        "tvpgY7Fv" -> Just TvpgY7Fv
        _ -> Nothing

instance ToText TvpgRating where
    toText = \case
        PG14 -> "pg14"
        TvpgG -> "tvpgG"
        TvpgMa -> "tvpgMa"
        TvpgPg -> "tvpgPg"
        TvpgUnrated -> "tvpgUnrated"
        TvpgY -> "tvpgY"
        TVPGY7 -> "tvpgY7"
        TvpgY7Fv -> "tvpgY7Fv"

instance FromJSON TvpgRating where
    parseJSON = parseJSONText "TvpgRating"

instance ToJSON TvpgRating where
    toJSON = toJSONText

-- | The video\'s General Directorate of Radio, Television and Cinematography
-- (Mexico) rating.
data RtcRating
    = RtcA
      -- ^ @rtcA@
    | RtcAa
      -- ^ @rtcAa@
    | RtcB
      -- ^ @rtcB@
    | RTCB15
      -- ^ @rtcB15@
    | RtcC
      -- ^ @rtcC@
    | RtcD
      -- ^ @rtcD@
    | RtcUnrated
      -- ^ @rtcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RtcRating

instance FromText RtcRating where
    fromText = \case
        "rtcA" -> Just RtcA
        "rtcAa" -> Just RtcAa
        "rtcB" -> Just RtcB
        "rtcB15" -> Just RTCB15
        "rtcC" -> Just RtcC
        "rtcD" -> Just RtcD
        "rtcUnrated" -> Just RtcUnrated
        _ -> Nothing

instance ToText RtcRating where
    toText = \case
        RtcA -> "rtcA"
        RtcAa -> "rtcAa"
        RtcB -> "rtcB"
        RTCB15 -> "rtcB15"
        RtcC -> "rtcC"
        RtcD -> "rtcD"
        RtcUnrated -> "rtcUnrated"

instance FromJSON RtcRating where
    parseJSON = parseJSONText "RtcRating"

instance ToJSON RtcRating where
    toJSON = toJSONText

-- | A rating that YouTube uses to identify age-restricted content.
data YtRating
    = YtAgeRestricted
      -- ^ @ytAgeRestricted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable YtRating

instance FromText YtRating where
    fromText = \case
        "ytAgeRestricted" -> Just YtAgeRestricted
        _ -> Nothing

instance ToText YtRating where
    toText = \case
        YtAgeRestricted -> "ytAgeRestricted"

instance FromJSON YtRating where
    parseJSON = parseJSONText "YtRating"

instance ToJSON YtRating where
    toJSON = toJSONText

-- | The video\'s British Board of Film Classification (BBFC) rating.
data BbfcRating
    = BBFC12
      -- ^ @bbfc12@
    | Bbfc12a
      -- ^ @bbfc12a@
    | BBFC15
      -- ^ @bbfc15@
    | BBFC18
      -- ^ @bbfc18@
    | BbfcPg
      -- ^ @bbfcPg@
    | BBFCR18
      -- ^ @bbfcR18@
    | BbfcU
      -- ^ @bbfcU@
    | BbfcUnrated
      -- ^ @bbfcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BbfcRating

instance FromText BbfcRating where
    fromText = \case
        "bbfc12" -> Just BBFC12
        "bbfc12a" -> Just Bbfc12a
        "bbfc15" -> Just BBFC15
        "bbfc18" -> Just BBFC18
        "bbfcPg" -> Just BbfcPg
        "bbfcR18" -> Just BBFCR18
        "bbfcU" -> Just BbfcU
        "bbfcUnrated" -> Just BbfcUnrated
        _ -> Nothing

instance ToText BbfcRating where
    toText = \case
        BBFC12 -> "bbfc12"
        Bbfc12a -> "bbfc12a"
        BBFC15 -> "bbfc15"
        BBFC18 -> "bbfc18"
        BbfcPg -> "bbfcPg"
        BBFCR18 -> "bbfcR18"
        BbfcU -> "bbfcU"
        BbfcUnrated -> "bbfcUnrated"

instance FromJSON BbfcRating where
    parseJSON = parseJSONText "BbfcRating"

instance ToJSON BbfcRating where
    toJSON = toJSONText

-- | Privacy status of the channel.
data PrivacyStatus
    = PSPrivate
      -- ^ @private@
    | PSPublic
      -- ^ @public@
    | PSUnListed
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PrivacyStatus

instance FromText PrivacyStatus where
    fromText = \case
        "private" -> Just PSPrivate
        "public" -> Just PSPublic
        "unlisted" -> Just PSUnListed
        _ -> Nothing

instance ToText PrivacyStatus where
    toText = \case
        PSPrivate -> "private"
        PSPublic -> "public"
        PSUnListed -> "unlisted"

instance FromJSON PrivacyStatus where
    parseJSON = parseJSONText "PrivacyStatus"

instance ToJSON PrivacyStatus where
    toJSON = toJSONText

-- | This resource\'s privacy status.
data PlayListItemStatusPrivacyStatus
    = PLISPSPrivate
      -- ^ @private@
    | PLISPSPublic
      -- ^ @public@
    | PLISPSUnListed
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlayListItemStatusPrivacyStatus

instance FromText PlayListItemStatusPrivacyStatus where
    fromText = \case
        "private" -> Just PLISPSPrivate
        "public" -> Just PLISPSPublic
        "unlisted" -> Just PLISPSUnListed
        _ -> Nothing

instance ToText PlayListItemStatusPrivacyStatus where
    toText = \case
        PLISPSPrivate -> "private"
        PLISPSPublic -> "public"
        PLISPSUnListed -> "unlisted"

instance FromJSON PlayListItemStatusPrivacyStatus where
    parseJSON = parseJSONText "PlayListItemStatusPrivacyStatus"

instance ToJSON PlayListItemStatusPrivacyStatus where
    toJSON = toJSONText

-- | voor de Classificatie van Audiovisuele Media (Netherlands).
data KijkwijzerRating
    = KIJKWIJZER12
      -- ^ @kijkwijzer12@
    | KIJKWIJZER16
      -- ^ @kijkwijzer16@
    | KIJKWIJZER18
      -- ^ @kijkwijzer18@
    | KIJKWIJZER6
      -- ^ @kijkwijzer6@
    | KIJKWIJZER9
      -- ^ @kijkwijzer9@
    | KijkwijzerAl
      -- ^ @kijkwijzerAl@
    | KijkwijzerUnrated
      -- ^ @kijkwijzerUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable KijkwijzerRating

instance FromText KijkwijzerRating where
    fromText = \case
        "kijkwijzer12" -> Just KIJKWIJZER12
        "kijkwijzer16" -> Just KIJKWIJZER16
        "kijkwijzer18" -> Just KIJKWIJZER18
        "kijkwijzer6" -> Just KIJKWIJZER6
        "kijkwijzer9" -> Just KIJKWIJZER9
        "kijkwijzerAl" -> Just KijkwijzerAl
        "kijkwijzerUnrated" -> Just KijkwijzerUnrated
        _ -> Nothing

instance ToText KijkwijzerRating where
    toText = \case
        KIJKWIJZER12 -> "kijkwijzer12"
        KIJKWIJZER16 -> "kijkwijzer16"
        KIJKWIJZER18 -> "kijkwijzer18"
        KIJKWIJZER6 -> "kijkwijzer6"
        KIJKWIJZER9 -> "kijkwijzer9"
        KijkwijzerAl -> "kijkwijzerAl"
        KijkwijzerUnrated -> "kijkwijzerUnrated"

instance FromJSON KijkwijzerRating where
    parseJSON = parseJSONText "KijkwijzerRating"

instance ToJSON KijkwijzerRating where
    toJSON = toJSONText

data DjctqRatingReasonsItem
    = DjctqCriminalActs
      -- ^ @djctqCriminalActs@
    | DjctqDrugs
      -- ^ @djctqDrugs@
    | DjctqExplicitSex
      -- ^ @djctqExplicitSex@
    | DjctqExtremeViolence
      -- ^ @djctqExtremeViolence@
    | DjctqIllegalDrugs
      -- ^ @djctqIllegalDrugs@
    | DjctqImpactingContent
      -- ^ @djctqImpactingContent@
    | DjctqInappropriateLanguage
      -- ^ @djctqInappropriateLanguage@
    | DjctqLegalDrugs
      -- ^ @djctqLegalDrugs@
    | DjctqNudity
      -- ^ @djctqNudity@
    | DjctqSex
      -- ^ @djctqSex@
    | DjctqSexualContent
      -- ^ @djctqSexualContent@
    | DjctqViolence
      -- ^ @djctqViolence@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DjctqRatingReasonsItem

instance FromText DjctqRatingReasonsItem where
    fromText = \case
        "djctqCriminalActs" -> Just DjctqCriminalActs
        "djctqDrugs" -> Just DjctqDrugs
        "djctqExplicitSex" -> Just DjctqExplicitSex
        "djctqExtremeViolence" -> Just DjctqExtremeViolence
        "djctqIllegalDrugs" -> Just DjctqIllegalDrugs
        "djctqImpactingContent" -> Just DjctqImpactingContent
        "djctqInappropriateLanguage" -> Just DjctqInappropriateLanguage
        "djctqLegalDrugs" -> Just DjctqLegalDrugs
        "djctqNudity" -> Just DjctqNudity
        "djctqSex" -> Just DjctqSex
        "djctqSexualContent" -> Just DjctqSexualContent
        "djctqViolence" -> Just DjctqViolence
        _ -> Nothing

instance ToText DjctqRatingReasonsItem where
    toText = \case
        DjctqCriminalActs -> "djctqCriminalActs"
        DjctqDrugs -> "djctqDrugs"
        DjctqExplicitSex -> "djctqExplicitSex"
        DjctqExtremeViolence -> "djctqExtremeViolence"
        DjctqIllegalDrugs -> "djctqIllegalDrugs"
        DjctqImpactingContent -> "djctqImpactingContent"
        DjctqInappropriateLanguage -> "djctqInappropriateLanguage"
        DjctqLegalDrugs -> "djctqLegalDrugs"
        DjctqNudity -> "djctqNudity"
        DjctqSex -> "djctqSex"
        DjctqSexualContent -> "djctqSexualContent"
        DjctqViolence -> "djctqViolence"

instance FromJSON DjctqRatingReasonsItem where
    parseJSON = parseJSONText "DjctqRatingReasonsItem"

instance ToJSON DjctqRatingReasonsItem where
    toJSON = toJSONText

-- | The video\'s rating from the Movie and Television Review and
-- Classification Board (Philippines).
data MtrcbRating
    = MtrcbG
      -- ^ @mtrcbG@
    | MtrcbPg
      -- ^ @mtrcbPg@
    | MTRCBR13
      -- ^ @mtrcbR13@
    | MTRCBR16
      -- ^ @mtrcbR16@
    | MTRCBR18
      -- ^ @mtrcbR18@
    | MtrcbUnrated
      -- ^ @mtrcbUnrated@
    | MtrcbX
      -- ^ @mtrcbX@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MtrcbRating

instance FromText MtrcbRating where
    fromText = \case
        "mtrcbG" -> Just MtrcbG
        "mtrcbPg" -> Just MtrcbPg
        "mtrcbR13" -> Just MTRCBR13
        "mtrcbR16" -> Just MTRCBR16
        "mtrcbR18" -> Just MTRCBR18
        "mtrcbUnrated" -> Just MtrcbUnrated
        "mtrcbX" -> Just MtrcbX
        _ -> Nothing

instance ToText MtrcbRating where
    toText = \case
        MtrcbG -> "mtrcbG"
        MtrcbPg -> "mtrcbPg"
        MTRCBR13 -> "mtrcbR13"
        MTRCBR16 -> "mtrcbR16"
        MTRCBR18 -> "mtrcbR18"
        MtrcbUnrated -> "mtrcbUnrated"
        MtrcbX -> "mtrcbX"

instance FromJSON MtrcbRating where
    parseJSON = parseJSONText "MtrcbRating"

instance ToJSON MtrcbRating where
    toJSON = toJSONText

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

instance FromJSON ActivityContentDetailsSocialType where
    parseJSON = parseJSONText "ActivityContentDetailsSocialType"

instance ToJSON ActivityContentDetailsSocialType where
    toJSON = toJSONText

data ProcessingErrorsItem
    = ArchiveFile
      -- ^ @archiveFile@
    | AudioFile
      -- ^ @audioFile@
    | DocFile
      -- ^ @docFile@
    | ImageFile
      -- ^ @imageFile@
    | NotAVideoFile
      -- ^ @notAVideoFile@
    | ProjectFile
      -- ^ @projectFile@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ProcessingErrorsItem

instance FromText ProcessingErrorsItem where
    fromText = \case
        "archiveFile" -> Just ArchiveFile
        "audioFile" -> Just AudioFile
        "docFile" -> Just DocFile
        "imageFile" -> Just ImageFile
        "notAVideoFile" -> Just NotAVideoFile
        "projectFile" -> Just ProjectFile
        _ -> Nothing

instance ToText ProcessingErrorsItem where
    toText = \case
        ArchiveFile -> "archiveFile"
        AudioFile -> "audioFile"
        DocFile -> "docFile"
        ImageFile -> "imageFile"
        NotAVideoFile -> "notAVideoFile"
        ProjectFile -> "projectFile"

instance FromJSON ProcessingErrorsItem where
    parseJSON = parseJSONText "ProcessingErrorsItem"

instance ToJSON ProcessingErrorsItem where
    toJSON = toJSONText

-- | The video\'s rating from Hong Kong\'s Office for Film, Newspaper and
-- Article Administration.
data FcoRating
    = FcoI
      -- ^ @fcoI@
    | FcoIi
      -- ^ @fcoIi@
    | FcoIia
      -- ^ @fcoIia@
    | FcoIib
      -- ^ @fcoIib@
    | FcoIii
      -- ^ @fcoIii@
    | FcoUnrated
      -- ^ @fcoUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FcoRating

instance FromText FcoRating where
    fromText = \case
        "fcoI" -> Just FcoI
        "fcoIi" -> Just FcoIi
        "fcoIia" -> Just FcoIia
        "fcoIib" -> Just FcoIib
        "fcoIii" -> Just FcoIii
        "fcoUnrated" -> Just FcoUnrated
        _ -> Nothing

instance ToText FcoRating where
    toText = \case
        FcoI -> "fcoI"
        FcoIi -> "fcoIi"
        FcoIia -> "fcoIia"
        FcoIib -> "fcoIib"
        FcoIii -> "fcoIii"
        FcoUnrated -> "fcoUnrated"

instance FromJSON FcoRating where
    parseJSON = parseJSONText "FcoRating"

instance ToJSON FcoRating where
    toJSON = toJSONText

-- | Video game rating, if any.
data VideoGameRating
    = Anyone
      -- ^ @anyone@
    | M15Plus
      -- ^ @m15Plus@
    | M16Plus
      -- ^ @m16Plus@
    | M17Plus
      -- ^ @m17Plus@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoGameRating

instance FromText VideoGameRating where
    fromText = \case
        "anyone" -> Just Anyone
        "m15Plus" -> Just M15Plus
        "m16Plus" -> Just M16Plus
        "m17Plus" -> Just M17Plus
        _ -> Nothing

instance ToText VideoGameRating where
    toText = \case
        Anyone -> "anyone"
        M15Plus -> "m15Plus"
        M16Plus -> "m16Plus"
        M17Plus -> "m17Plus"

instance FromJSON VideoGameRating where
    parseJSON = parseJSONText "VideoGameRating"

instance ToJSON VideoGameRating where
    toJSON = toJSONText

-- | The video\'s rating from the Commission de Contrôle des Films (Belgium).
data CicfRating
    = CicfE
      -- ^ @cicfE@
    | CicfKntEna
      -- ^ @cicfKntEna@
    | CicfKtEa
      -- ^ @cicfKtEa@
    | CicfUnrated
      -- ^ @cicfUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CicfRating

instance FromText CicfRating where
    fromText = \case
        "cicfE" -> Just CicfE
        "cicfKntEna" -> Just CicfKntEna
        "cicfKtEa" -> Just CicfKtEa
        "cicfUnrated" -> Just CicfUnrated
        _ -> Nothing

instance ToText CicfRating where
    toText = \case
        CicfE -> "cicfE"
        CicfKntEna -> "cicfKntEna"
        CicfKtEa -> "cicfKtEa"
        CicfUnrated -> "cicfUnrated"

instance FromJSON CicfRating where
    parseJSON = parseJSONText "CicfRating"

instance ToJSON CicfRating where
    toJSON = toJSONText

-- | The video\'s rating in the Czech Republic.
data CzfilmRating
    = CZFILM12
      -- ^ @czfilm12@
    | CZFILM14
      -- ^ @czfilm14@
    | CZFILM18
      -- ^ @czfilm18@
    | CzfilmU
      -- ^ @czfilmU@
    | CzfilmUnrated
      -- ^ @czfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CzfilmRating

instance FromText CzfilmRating where
    fromText = \case
        "czfilm12" -> Just CZFILM12
        "czfilm14" -> Just CZFILM14
        "czfilm18" -> Just CZFILM18
        "czfilmU" -> Just CzfilmU
        "czfilmUnrated" -> Just CzfilmUnrated
        _ -> Nothing

instance ToText CzfilmRating where
    toText = \case
        CZFILM12 -> "czfilm12"
        CZFILM14 -> "czfilm14"
        CZFILM18 -> "czfilm18"
        CzfilmU -> "czfilmU"
        CzfilmUnrated -> "czfilmUnrated"

instance FromJSON CzfilmRating where
    parseJSON = parseJSONText "CzfilmRating"

instance ToJSON CzfilmRating where
    toJSON = toJSONText

-- | The video\'s rating from the Maldives National Bureau of Classification.
data NbcRating
    = Nbc12plus
      -- ^ @nbc12plus@
    | Nbc15plus
      -- ^ @nbc15plus@
    | Nbc18plus
      -- ^ @nbc18plus@
    | Nbc18plusr
      -- ^ @nbc18plusr@
    | NbcG
      -- ^ @nbcG@
    | NbcPg
      -- ^ @nbcPg@
    | NbcPu
      -- ^ @nbcPu@
    | NbcUnrated
      -- ^ @nbcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable NbcRating

instance FromText NbcRating where
    fromText = \case
        "nbc12plus" -> Just Nbc12plus
        "nbc15plus" -> Just Nbc15plus
        "nbc18plus" -> Just Nbc18plus
        "nbc18plusr" -> Just Nbc18plusr
        "nbcG" -> Just NbcG
        "nbcPg" -> Just NbcPg
        "nbcPu" -> Just NbcPu
        "nbcUnrated" -> Just NbcUnrated
        _ -> Nothing

instance ToText NbcRating where
    toText = \case
        Nbc12plus -> "nbc12plus"
        Nbc15plus -> "nbc15plus"
        Nbc18plus -> "nbc18plus"
        Nbc18plusr -> "nbc18plusr"
        NbcG -> "nbcG"
        NbcPg -> "nbcPg"
        NbcPu -> "nbcPu"
        NbcUnrated -> "nbcUnrated"

instance FromJSON NbcRating where
    parseJSON = parseJSONText "NbcRating"

instance ToJSON NbcRating where
    toJSON = toJSONText

-- | The playlist\'s privacy status.
data PlayListStatusPrivacyStatus
    = PLSPSPrivate
      -- ^ @private@
    | PLSPSPublic
      -- ^ @public@
    | PLSPSUnListed
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlayListStatusPrivacyStatus

instance FromText PlayListStatusPrivacyStatus where
    fromText = \case
        "private" -> Just PLSPSPrivate
        "public" -> Just PLSPSPublic
        "unlisted" -> Just PLSPSUnListed
        _ -> Nothing

instance ToText PlayListStatusPrivacyStatus where
    toText = \case
        PLSPSPrivate -> "private"
        PLSPSPublic -> "public"
        PLSPSUnListed -> "unlisted"

instance FromJSON PlayListStatusPrivacyStatus where
    parseJSON = parseJSONText "PlayListStatusPrivacyStatus"

instance ToJSON PlayListStatusPrivacyStatus where
    toJSON = toJSONText

-- | This property has been deprecated. Use the
-- contentDetails.contentRating.cncRating instead.
data FmocRating
    = FMOC10
      -- ^ @fmoc10@
    | FMOC12
      -- ^ @fmoc12@
    | FMOC16
      -- ^ @fmoc16@
    | FMOC18
      -- ^ @fmoc18@
    | FmocE
      -- ^ @fmocE@
    | FmocU
      -- ^ @fmocU@
    | FmocUnrated
      -- ^ @fmocUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FmocRating

instance FromText FmocRating where
    fromText = \case
        "fmoc10" -> Just FMOC10
        "fmoc12" -> Just FMOC12
        "fmoc16" -> Just FMOC16
        "fmoc18" -> Just FMOC18
        "fmocE" -> Just FmocE
        "fmocU" -> Just FmocU
        "fmocUnrated" -> Just FmocUnrated
        _ -> Nothing

instance ToText FmocRating where
    toText = \case
        FMOC10 -> "fmoc10"
        FMOC12 -> "fmoc12"
        FMOC16 -> "fmoc16"
        FMOC18 -> "fmoc18"
        FmocE -> "fmocE"
        FmocU -> "fmocU"
        FmocUnrated -> "fmocUnrated"

instance FromJSON FmocRating where
    parseJSON = parseJSONText "FmocRating"

instance ToJSON FmocRating where
    toJSON = toJSONText

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
    | ASTPlayListItem
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
        "playlistItem" -> Just ASTPlayListItem
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
        ASTPlayListItem -> "playlistItem"
        ASTPromotedItem -> "promotedItem"
        ASTRecommendation -> "recommendation"
        ASTSocial -> "social"
        ASTSubscription -> "subscription"
        ASTUpload -> "upload"

instance FromJSON ActivitySnippetType where
    parseJSON = parseJSONText "ActivitySnippetType"

instance ToJSON ActivitySnippetType where
    toJSON = toJSONText

-- | Indicates if the video is an upcoming\/active live broadcast. Or it\'s
-- \"none\" if the video is not an upcoming\/active live broadcast.
data LiveBroadcastContent
    = LBCLive
      -- ^ @live@
    | LBCNone
      -- ^ @none@
    | LBCUpcoming
      -- ^ @upcoming@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastContent

instance FromText LiveBroadcastContent where
    fromText = \case
        "live" -> Just LBCLive
        "none" -> Just LBCNone
        "upcoming" -> Just LBCUpcoming
        _ -> Nothing

instance ToText LiveBroadcastContent where
    toText = \case
        LBCLive -> "live"
        LBCNone -> "none"
        LBCUpcoming -> "upcoming"

instance FromJSON LiveBroadcastContent where
    parseJSON = parseJSONText "LiveBroadcastContent"

instance ToJSON LiveBroadcastContent where
    toJSON = toJSONText

-- | The video\'s National Film Registry of the Russian Federation (MKRF -
-- Russia) rating.
data RussiaRating
    = RUSSIA0
      -- ^ @russia0@
    | RUSSIA12
      -- ^ @russia12@
    | RUSSIA16
      -- ^ @russia16@
    | RUSSIA18
      -- ^ @russia18@
    | RUSSIA6
      -- ^ @russia6@
    | RussiaUnrated
      -- ^ @russiaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RussiaRating

instance FromText RussiaRating where
    fromText = \case
        "russia0" -> Just RUSSIA0
        "russia12" -> Just RUSSIA12
        "russia16" -> Just RUSSIA16
        "russia18" -> Just RUSSIA18
        "russia6" -> Just RUSSIA6
        "russiaUnrated" -> Just RussiaUnrated
        _ -> Nothing

instance ToText RussiaRating where
    toText = \case
        RUSSIA0 -> "russia0"
        RUSSIA12 -> "russia12"
        RUSSIA16 -> "russia16"
        RUSSIA18 -> "russia18"
        RUSSIA6 -> "russia6"
        RussiaUnrated -> "russiaUnrated"

instance FromJSON RussiaRating where
    parseJSON = parseJSONText "RussiaRating"

instance ToJSON RussiaRating where
    toJSON = toJSONText

-- | The video\'s rating in Egypt.
data EgfilmRating
    = EGFILM18
      -- ^ @egfilm18@
    | EgfilmBn
      -- ^ @egfilmBn@
    | EgfilmGn
      -- ^ @egfilmGn@
    | EgfilmUnrated
      -- ^ @egfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EgfilmRating

instance FromText EgfilmRating where
    fromText = \case
        "egfilm18" -> Just EGFILM18
        "egfilmBn" -> Just EgfilmBn
        "egfilmGn" -> Just EgfilmGn
        "egfilmUnrated" -> Just EgfilmUnrated
        _ -> Nothing

instance ToText EgfilmRating where
    toText = \case
        EGFILM18 -> "egfilm18"
        EgfilmBn -> "egfilmBn"
        EgfilmGn -> "egfilmGn"
        EgfilmUnrated -> "egfilmUnrated"

instance FromJSON EgfilmRating where
    parseJSON = parseJSONText "EgfilmRating"

instance ToJSON EgfilmRating where
    toJSON = toJSONText

-- | The tfmt parameter specifies that the caption track should be returned
-- in a specific format. If the parameter is not included in the request,
-- the track is returned in its original format.
data Tfmt
    = Sbv
      -- ^ @sbv@
      -- SubViewer subtitle.
    | Scc
      -- ^ @scc@
      -- Scenarist Closed Caption format.
    | Srt
      -- ^ @srt@
      -- SubRip subtitle.
    | Ttml
      -- ^ @ttml@
      -- Timed Text Markup Language caption.
    | Vtt
      -- ^ @vtt@
      -- Web Video Text Tracks caption.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Tfmt

instance FromText Tfmt where
    fromText = \case
        "sbv" -> Just Sbv
        "scc" -> Just Scc
        "srt" -> Just Srt
        "ttml" -> Just Ttml
        "vtt" -> Just Vtt
        _ -> Nothing

instance ToText Tfmt where
    toText = \case
        Sbv -> "sbv"
        Scc -> "scc"
        Srt -> "srt"
        Ttml -> "ttml"
        Vtt -> "vtt"

instance FromJSON Tfmt where
    parseJSON = parseJSONText "Tfmt"

instance ToJSON Tfmt where
    toJSON = toJSONText

-- | The video\'s license.
data License
    = LCreativeCommon
      -- ^ @creativeCommon@
    | LYouTube
      -- ^ @youtube@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable License

instance FromText License where
    fromText = \case
        "creativeCommon" -> Just LCreativeCommon
        "youtube" -> Just LYouTube
        _ -> Nothing

instance ToText License where
    toText = \case
        LCreativeCommon -> "creativeCommon"
        LYouTube -> "youtube"

instance FromJSON License where
    parseJSON = parseJSONText "License"

instance ToJSON License where
    toJSON = toJSONText

-- | The video\'s rating in Venezuela.
data ResorteviolenciaRating
    = ResorteviolenciaA
      -- ^ @resorteviolenciaA@
    | ResorteviolenciaB
      -- ^ @resorteviolenciaB@
    | ResorteviolenciaC
      -- ^ @resorteviolenciaC@
    | ResorteviolenciaD
      -- ^ @resorteviolenciaD@
    | ResorteviolenciaE
      -- ^ @resorteviolenciaE@
    | ResorteviolenciaUnrated
      -- ^ @resorteviolenciaUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ResorteviolenciaRating

instance FromText ResorteviolenciaRating where
    fromText = \case
        "resorteviolenciaA" -> Just ResorteviolenciaA
        "resorteviolenciaB" -> Just ResorteviolenciaB
        "resorteviolenciaC" -> Just ResorteviolenciaC
        "resorteviolenciaD" -> Just ResorteviolenciaD
        "resorteviolenciaE" -> Just ResorteviolenciaE
        "resorteviolenciaUnrated" -> Just ResorteviolenciaUnrated
        _ -> Nothing

instance ToText ResorteviolenciaRating where
    toText = \case
        ResorteviolenciaA -> "resorteviolenciaA"
        ResorteviolenciaB -> "resorteviolenciaB"
        ResorteviolenciaC -> "resorteviolenciaC"
        ResorteviolenciaD -> "resorteviolenciaD"
        ResorteviolenciaE -> "resorteviolenciaE"
        ResorteviolenciaUnrated -> "resorteviolenciaUnrated"

instance FromJSON ResorteviolenciaRating where
    parseJSON = parseJSONText "ResorteviolenciaRating"

instance ToJSON ResorteviolenciaRating where
    toJSON = toJSONText

-- | The video\'s rating from the Ministero dei Beni e delle Attività
-- Culturali e del Turismo (Italy).
data MibacRating
    = MibacT
      -- ^ @mibacT@
    | MibacUnrated
      -- ^ @mibacUnrated@
    | MibacVap
      -- ^ @mibacVap@
    | MIBACVM12
      -- ^ @mibacVm12@
    | MIBACVM14
      -- ^ @mibacVm14@
    | MIBACVM18
      -- ^ @mibacVm18@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MibacRating

instance FromText MibacRating where
    fromText = \case
        "mibacT" -> Just MibacT
        "mibacUnrated" -> Just MibacUnrated
        "mibacVap" -> Just MibacVap
        "mibacVm12" -> Just MIBACVM12
        "mibacVm14" -> Just MIBACVM14
        "mibacVm18" -> Just MIBACVM18
        _ -> Nothing

instance ToText MibacRating where
    toText = \case
        MibacT -> "mibacT"
        MibacUnrated -> "mibacUnrated"
        MibacVap -> "mibacVap"
        MIBACVM12 -> "mibacVm12"
        MIBACVM14 -> "mibacVm14"
        MIBACVM18 -> "mibacVm18"

instance FromJSON MibacRating where
    parseJSON = parseJSONText "MibacRating"

instance ToJSON MibacRating where
    toJSON = toJSONText

-- | The kind of error happening.
data LiveStreamConfigurationIssueType
    = AudioBitrateHigh
      -- ^ @audioBitrateHigh@
    | AudioBitrateLow
      -- ^ @audioBitrateLow@
    | AudioBitrateMismatch
      -- ^ @audioBitrateMismatch@
    | AudioCodec
      -- ^ @audioCodec@
    | AudioCodecMismatch
      -- ^ @audioCodecMismatch@
    | AudioSampleRate
      -- ^ @audioSampleRate@
    | AudioSampleRateMismatch
      -- ^ @audioSampleRateMismatch@
    | AudioStereoMismatch
      -- ^ @audioStereoMismatch@
    | AudioTooManyChannels
      -- ^ @audioTooManyChannels@
    | BadContainer
      -- ^ @badContainer@
    | BitrateHigh
      -- ^ @bitrateHigh@
    | BitrateLow
      -- ^ @bitrateLow@
    | FrameRateHigh
      -- ^ @frameRateHigh@
    | FramerateMismatch
      -- ^ @framerateMismatch@
    | GopMismatch
      -- ^ @gopMismatch@
    | GopSizeLong
      -- ^ @gopSizeLong@
    | GopSizeOver
      -- ^ @gopSizeOver@
    | GopSizeShort
      -- ^ @gopSizeShort@
    | InterlacedVideo
      -- ^ @interlacedVideo@
    | MultipleAudioStreams
      -- ^ @multipleAudioStreams@
    | MultipleVideoStreams
      -- ^ @multipleVideoStreams@
    | NoAudioStream
      -- ^ @noAudioStream@
    | NoVideoStream
      -- ^ @noVideoStream@
    | OpenGop
      -- ^ @openGop@
    | ResolutionMismatch
      -- ^ @resolutionMismatch@
    | VideoBitrateMismatch
      -- ^ @videoBitrateMismatch@
    | VideoCodec
      -- ^ @videoCodec@
    | VideoCodecMismatch
      -- ^ @videoCodecMismatch@
    | VideoIngestionStarved
      -- ^ @videoIngestionStarved@
    | VideoInterlaceMismatch
      -- ^ @videoInterlaceMismatch@
    | VideoProfileMismatch
      -- ^ @videoProfileMismatch@
    | VideoResolutionSuboptimal
      -- ^ @videoResolutionSuboptimal@
    | VideoResolutionUnsupported
      -- ^ @videoResolutionUnsupported@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveStreamConfigurationIssueType

instance FromText LiveStreamConfigurationIssueType where
    fromText = \case
        "audioBitrateHigh" -> Just AudioBitrateHigh
        "audioBitrateLow" -> Just AudioBitrateLow
        "audioBitrateMismatch" -> Just AudioBitrateMismatch
        "audioCodec" -> Just AudioCodec
        "audioCodecMismatch" -> Just AudioCodecMismatch
        "audioSampleRate" -> Just AudioSampleRate
        "audioSampleRateMismatch" -> Just AudioSampleRateMismatch
        "audioStereoMismatch" -> Just AudioStereoMismatch
        "audioTooManyChannels" -> Just AudioTooManyChannels
        "badContainer" -> Just BadContainer
        "bitrateHigh" -> Just BitrateHigh
        "bitrateLow" -> Just BitrateLow
        "frameRateHigh" -> Just FrameRateHigh
        "framerateMismatch" -> Just FramerateMismatch
        "gopMismatch" -> Just GopMismatch
        "gopSizeLong" -> Just GopSizeLong
        "gopSizeOver" -> Just GopSizeOver
        "gopSizeShort" -> Just GopSizeShort
        "interlacedVideo" -> Just InterlacedVideo
        "multipleAudioStreams" -> Just MultipleAudioStreams
        "multipleVideoStreams" -> Just MultipleVideoStreams
        "noAudioStream" -> Just NoAudioStream
        "noVideoStream" -> Just NoVideoStream
        "openGop" -> Just OpenGop
        "resolutionMismatch" -> Just ResolutionMismatch
        "videoBitrateMismatch" -> Just VideoBitrateMismatch
        "videoCodec" -> Just VideoCodec
        "videoCodecMismatch" -> Just VideoCodecMismatch
        "videoIngestionStarved" -> Just VideoIngestionStarved
        "videoInterlaceMismatch" -> Just VideoInterlaceMismatch
        "videoProfileMismatch" -> Just VideoProfileMismatch
        "videoResolutionSuboptimal" -> Just VideoResolutionSuboptimal
        "videoResolutionUnsupported" -> Just VideoResolutionUnsupported
        _ -> Nothing

instance ToText LiveStreamConfigurationIssueType where
    toText = \case
        AudioBitrateHigh -> "audioBitrateHigh"
        AudioBitrateLow -> "audioBitrateLow"
        AudioBitrateMismatch -> "audioBitrateMismatch"
        AudioCodec -> "audioCodec"
        AudioCodecMismatch -> "audioCodecMismatch"
        AudioSampleRate -> "audioSampleRate"
        AudioSampleRateMismatch -> "audioSampleRateMismatch"
        AudioStereoMismatch -> "audioStereoMismatch"
        AudioTooManyChannels -> "audioTooManyChannels"
        BadContainer -> "badContainer"
        BitrateHigh -> "bitrateHigh"
        BitrateLow -> "bitrateLow"
        FrameRateHigh -> "frameRateHigh"
        FramerateMismatch -> "framerateMismatch"
        GopMismatch -> "gopMismatch"
        GopSizeLong -> "gopSizeLong"
        GopSizeOver -> "gopSizeOver"
        GopSizeShort -> "gopSizeShort"
        InterlacedVideo -> "interlacedVideo"
        MultipleAudioStreams -> "multipleAudioStreams"
        MultipleVideoStreams -> "multipleVideoStreams"
        NoAudioStream -> "noAudioStream"
        NoVideoStream -> "noVideoStream"
        OpenGop -> "openGop"
        ResolutionMismatch -> "resolutionMismatch"
        VideoBitrateMismatch -> "videoBitrateMismatch"
        VideoCodec -> "videoCodec"
        VideoCodecMismatch -> "videoCodecMismatch"
        VideoIngestionStarved -> "videoIngestionStarved"
        VideoInterlaceMismatch -> "videoInterlaceMismatch"
        VideoProfileMismatch -> "videoProfileMismatch"
        VideoResolutionSuboptimal -> "videoResolutionSuboptimal"
        VideoResolutionUnsupported -> "videoResolutionUnsupported"

instance FromJSON LiveStreamConfigurationIssueType where
    parseJSON = parseJSONText "LiveStreamConfigurationIssueType"

instance ToJSON LiveStreamConfigurationIssueType where
    toJSON = toJSONText

-- | The channelType parameter lets you restrict a search to a particular
-- type of channel.
data ChannelType
    = CTAny
      -- ^ @any@
      -- Return all channels.
    | CTShow
      -- ^ @show@
      -- Only retrieve shows.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelType

instance FromText ChannelType where
    fromText = \case
        "any" -> Just CTAny
        "show" -> Just CTShow
        _ -> Nothing

instance ToText ChannelType where
    toText = \case
        CTAny -> "any"
        CTShow -> "show"

instance FromJSON ChannelType where
    parseJSON = parseJSONText "ChannelType"

instance ToJSON ChannelType where
    toJSON = toJSONText

-- | The video\'s rating from Medietilsynet, the Norwegian Media Authority.
data MedietilsynetRating
    = MEDIETILSYNET11
      -- ^ @medietilsynet11@
    | MEDIETILSYNET12
      -- ^ @medietilsynet12@
    | MEDIETILSYNET15
      -- ^ @medietilsynet15@
    | MEDIETILSYNET18
      -- ^ @medietilsynet18@
    | MEDIETILSYNET6
      -- ^ @medietilsynet6@
    | MEDIETILSYNET7
      -- ^ @medietilsynet7@
    | MEDIETILSYNET9
      -- ^ @medietilsynet9@
    | MedietilsynetA
      -- ^ @medietilsynetA@
    | MedietilsynetUnrated
      -- ^ @medietilsynetUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MedietilsynetRating

instance FromText MedietilsynetRating where
    fromText = \case
        "medietilsynet11" -> Just MEDIETILSYNET11
        "medietilsynet12" -> Just MEDIETILSYNET12
        "medietilsynet15" -> Just MEDIETILSYNET15
        "medietilsynet18" -> Just MEDIETILSYNET18
        "medietilsynet6" -> Just MEDIETILSYNET6
        "medietilsynet7" -> Just MEDIETILSYNET7
        "medietilsynet9" -> Just MEDIETILSYNET9
        "medietilsynetA" -> Just MedietilsynetA
        "medietilsynetUnrated" -> Just MedietilsynetUnrated
        _ -> Nothing

instance ToText MedietilsynetRating where
    toText = \case
        MEDIETILSYNET11 -> "medietilsynet11"
        MEDIETILSYNET12 -> "medietilsynet12"
        MEDIETILSYNET15 -> "medietilsynet15"
        MEDIETILSYNET18 -> "medietilsynet18"
        MEDIETILSYNET6 -> "medietilsynet6"
        MEDIETILSYNET7 -> "medietilsynet7"
        MEDIETILSYNET9 -> "medietilsynet9"
        MedietilsynetA -> "medietilsynetA"
        MedietilsynetUnrated -> "medietilsynetUnrated"

instance FromJSON MedietilsynetRating where
    parseJSON = parseJSONText "MedietilsynetRating"

instance ToJSON MedietilsynetRating where
    toJSON = toJSONText

-- | The video\'s rating from the Danish Film Institute\'s (Det Danske
-- Filminstitut) Media Council for Children and Young People.
data MccypRating
    = MCCYP11
      -- ^ @mccyp11@
    | MCCYP15
      -- ^ @mccyp15@
    | MCCYP7
      -- ^ @mccyp7@
    | MccypA
      -- ^ @mccypA@
    | MccypUnrated
      -- ^ @mccypUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MccypRating

instance FromText MccypRating where
    fromText = \case
        "mccyp11" -> Just MCCYP11
        "mccyp15" -> Just MCCYP15
        "mccyp7" -> Just MCCYP7
        "mccypA" -> Just MccypA
        "mccypUnrated" -> Just MccypUnrated
        _ -> Nothing

instance ToText MccypRating where
    toText = \case
        MCCYP11 -> "mccyp11"
        MCCYP15 -> "mccyp15"
        MCCYP7 -> "mccyp7"
        MccypA -> "mccypA"
        MccypUnrated -> "mccypUnrated"

instance FromJSON MccypRating where
    parseJSON = parseJSONText "MccypRating"

instance ToJSON MccypRating where
    toJSON = toJSONText

-- | The video\'s rating from the Nacionãlais Kino centrs (National Film
-- Centre of Latvia).
data NkclvRating
    = Nkclv12plus
      -- ^ @nkclv12plus@
    | Nkclv18plus
      -- ^ @nkclv18plus@
    | Nkclv7plus
      -- ^ @nkclv7plus@
    | NkclvU
      -- ^ @nkclvU@
    | NkclvUnrated
      -- ^ @nkclvUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable NkclvRating

instance FromText NkclvRating where
    fromText = \case
        "nkclv12plus" -> Just Nkclv12plus
        "nkclv18plus" -> Just Nkclv18plus
        "nkclv7plus" -> Just Nkclv7plus
        "nkclvU" -> Just NkclvU
        "nkclvUnrated" -> Just NkclvUnrated
        _ -> Nothing

instance ToText NkclvRating where
    toText = \case
        Nkclv12plus -> "nkclv12plus"
        Nkclv18plus -> "nkclv18plus"
        Nkclv7plus -> "nkclv7plus"
        NkclvU -> "nkclvU"
        NkclvUnrated -> "nkclvUnrated"

instance FromJSON NkclvRating where
    parseJSON = parseJSONText "NkclvRating"

instance ToJSON NkclvRating where
    toJSON = toJSONText

-- | The video\'s rating from South Africa\'s Film and Publication Board.
data FpbRating
    = Fpb1012Pg
      -- ^ @fpb1012Pg@
    | FPB13
      -- ^ @fpb13@
    | FPB16
      -- ^ @fpb16@
    | FPB18
      -- ^ @fpb18@
    | Fpb79Pg
      -- ^ @fpb79Pg@
    | FpbA
      -- ^ @fpbA@
    | FpbPg
      -- ^ @fpbPg@
    | FpbUnrated
      -- ^ @fpbUnrated@
    | FPBX18
      -- ^ @fpbX18@
    | FpbXx
      -- ^ @fpbXx@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FpbRating

instance FromText FpbRating where
    fromText = \case
        "fpb1012Pg" -> Just Fpb1012Pg
        "fpb13" -> Just FPB13
        "fpb16" -> Just FPB16
        "fpb18" -> Just FPB18
        "fpb79Pg" -> Just Fpb79Pg
        "fpbA" -> Just FpbA
        "fpbPg" -> Just FpbPg
        "fpbUnrated" -> Just FpbUnrated
        "fpbX18" -> Just FPBX18
        "fpbXx" -> Just FpbXx
        _ -> Nothing

instance ToText FpbRating where
    toText = \case
        Fpb1012Pg -> "fpb1012Pg"
        FPB13 -> "fpb13"
        FPB16 -> "fpb16"
        FPB18 -> "fpb18"
        Fpb79Pg -> "fpb79Pg"
        FpbA -> "fpbA"
        FpbPg -> "fpbPg"
        FpbUnrated -> "fpbUnrated"
        FPBX18 -> "fpbX18"
        FpbXx -> "fpbXx"

instance FromJSON FpbRating where
    parseJSON = parseJSONText "FpbRating"

instance ToJSON FpbRating where
    toJSON = toJSONText

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

instance FromJSON CommentSnippetModerationStatus where
    parseJSON = parseJSONText "CommentSnippetModerationStatus"

instance ToJSON CommentSnippetModerationStatus where
    toJSON = toJSONText

-- | The video\'s rating from Indonesia\'s Lembaga Sensor Film.
data LsfRating
    = LSF13
      -- ^ @lsf13@
    | LSF17
      -- ^ @lsf17@
    | LSF21
      -- ^ @lsf21@
    | LsfA
      -- ^ @lsfA@
    | LsfBo
      -- ^ @lsfBo@
    | LsfD
      -- ^ @lsfD@
    | LsfR
      -- ^ @lsfR@
    | LsfSu
      -- ^ @lsfSu@
    | LsfUnrated
      -- ^ @lsfUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LsfRating

instance FromText LsfRating where
    fromText = \case
        "lsf13" -> Just LSF13
        "lsf17" -> Just LSF17
        "lsf21" -> Just LSF21
        "lsfA" -> Just LsfA
        "lsfBo" -> Just LsfBo
        "lsfD" -> Just LsfD
        "lsfR" -> Just LsfR
        "lsfSu" -> Just LsfSu
        "lsfUnrated" -> Just LsfUnrated
        _ -> Nothing

instance ToText LsfRating where
    toText = \case
        LSF13 -> "lsf13"
        LSF17 -> "lsf17"
        LSF21 -> "lsf21"
        LsfA -> "lsfA"
        LsfBo -> "lsfBo"
        LsfD -> "lsfD"
        LsfR -> "lsfR"
        LsfSu -> "lsfSu"
        LsfUnrated -> "lsfUnrated"

instance FromJSON LsfRating where
    parseJSON = parseJSONText "LsfRating"

instance ToJSON LsfRating where
    toJSON = toJSONText

-- | The order parameter specifies the order in which the API response should
-- list comment threads. Valid values are: - time - Comment threads are
-- ordered by time. This is the default behavior. - relevance - Comment
-- threads are ordered by relevance.Note: This parameter is not supported
-- for use in conjunction with the id parameter.
data Order
    = Relevance
      -- ^ @relevance@
      -- Order by relevance.
    | Time
      -- ^ @time@
      -- Order by time.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Order

instance FromText Order where
    fromText = \case
        "relevance" -> Just Relevance
        "time" -> Just Time
        _ -> Nothing

instance ToText Order where
    toText = \case
        Relevance -> "relevance"
        Time -> "time"

instance FromJSON Order where
    parseJSON = parseJSONText "Order"

instance ToJSON Order where
    toJSON = toJSONText

-- | Set this parameter\'s value to html or plainText to instruct the API to
-- return the comments left by users in html formatted or in plain text.
data TextFormat
    = HTML
      -- ^ @html@
      -- Returns the comments in HTML format. This is the default value.
    | PlainText
      -- ^ @plainText@
      -- Returns the comments in plain text format.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TextFormat

instance FromText TextFormat where
    fromText = \case
        "html" -> Just HTML
        "plainText" -> Just PlainText
        _ -> Nothing

instance ToText TextFormat where
    toText = \case
        HTML -> "html"
        PlainText -> "plainText"

instance FromJSON TextFormat where
    parseJSON = parseJSONText "TextFormat"

instance ToJSON TextFormat where
    toJSON = toJSONText

-- | The video\'s rating from Thailand\'s Board of Film and Video Censors.
data BfvcRating
    = BFVC13
      -- ^ @bfvc13@
    | BFVC15
      -- ^ @bfvc15@
    | BFVC18
      -- ^ @bfvc18@
    | BFVC20
      -- ^ @bfvc20@
    | BfvcB
      -- ^ @bfvcB@
    | BfvcE
      -- ^ @bfvcE@
    | BfvcG
      -- ^ @bfvcG@
    | BfvcUnrated
      -- ^ @bfvcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BfvcRating

instance FromText BfvcRating where
    fromText = \case
        "bfvc13" -> Just BFVC13
        "bfvc15" -> Just BFVC15
        "bfvc18" -> Just BFVC18
        "bfvc20" -> Just BFVC20
        "bfvcB" -> Just BfvcB
        "bfvcE" -> Just BfvcE
        "bfvcG" -> Just BfvcG
        "bfvcUnrated" -> Just BfvcUnrated
        _ -> Nothing

instance ToText BfvcRating where
    toText = \case
        BFVC13 -> "bfvc13"
        BFVC15 -> "bfvc15"
        BFVC18 -> "bfvc18"
        BFVC20 -> "bfvc20"
        BfvcB -> "bfvcB"
        BfvcE -> "bfvcE"
        BfvcG -> "bfvcG"
        BfvcUnrated -> "bfvcUnrated"

instance FromJSON BfvcRating where
    parseJSON = parseJSONText "BfvcRating"

instance ToJSON BfvcRating where
    toJSON = toJSONText

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

instance FromJSON VideoConversionPingContext where
    parseJSON = parseJSONText "VideoConversionPingContext"

instance ToJSON VideoConversionPingContext where
    toJSON = toJSONText

-- | Describes a timing type. If the value is offsetFromStart, then the
-- offsetMs field represents an offset from the start of the video. If the
-- value is offsetFromEnd, then the offsetMs field represents an offset
-- from the end of the video.
data InvideoTimingType
    = OffsetFromEnd
      -- ^ @offsetFromEnd@
    | OffsetFromStart
      -- ^ @offsetFromStart@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InvideoTimingType

instance FromText InvideoTimingType where
    fromText = \case
        "offsetFromEnd" -> Just OffsetFromEnd
        "offsetFromStart" -> Just OffsetFromStart
        _ -> Nothing

instance ToText InvideoTimingType where
    toText = \case
        OffsetFromEnd -> "offsetFromEnd"
        OffsetFromStart -> "offsetFromStart"

instance FromJSON InvideoTimingType where
    parseJSON = parseJSONText "InvideoTimingType"

instance ToJSON InvideoTimingType where
    toJSON = toJSONText

-- | The order parameter specifies the method that will be used to sort
-- resources in the API response.
data YouTubeSubscriptionsListOrder
    = YAlphabetical
      -- ^ @alphabetical@
      -- Sort alphabetically.
    | YRelevance
      -- ^ @relevance@
      -- Sort by relevance.
    | YUnread
      -- ^ @unread@
      -- Sort by order of activity.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable YouTubeSubscriptionsListOrder

instance FromText YouTubeSubscriptionsListOrder where
    fromText = \case
        "alphabetical" -> Just YAlphabetical
        "relevance" -> Just YRelevance
        "unread" -> Just YUnread
        _ -> Nothing

instance ToText YouTubeSubscriptionsListOrder where
    toText = \case
        YAlphabetical -> "alphabetical"
        YRelevance -> "relevance"
        YUnread -> "unread"

instance FromJSON YouTubeSubscriptionsListOrder where
    parseJSON = parseJSONText "YouTubeSubscriptionsListOrder"

instance ToJSON YouTubeSubscriptionsListOrder where
    toJSON = toJSONText

-- | Rating system in France - Commission de classification cinematographique
data CNCRating
    = CNC10
      -- ^ @cnc10@
    | CNC12
      -- ^ @cnc12@
    | CNC16
      -- ^ @cnc16@
    | CNC18
      -- ^ @cnc18@
    | CNCE
      -- ^ @cncE@
    | CNCT
      -- ^ @cncT@
    | CNCUnrated
      -- ^ @cncUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CNCRating

instance FromText CNCRating where
    fromText = \case
        "cnc10" -> Just CNC10
        "cnc12" -> Just CNC12
        "cnc16" -> Just CNC16
        "cnc18" -> Just CNC18
        "cncE" -> Just CNCE
        "cncT" -> Just CNCT
        "cncUnrated" -> Just CNCUnrated
        _ -> Nothing

instance ToText CNCRating where
    toText = \case
        CNC10 -> "cnc10"
        CNC12 -> "cnc12"
        CNC16 -> "cnc16"
        CNC18 -> "cnc18"
        CNCE -> "cncE"
        CNCT -> "cncT"
        CNCUnrated -> "cncUnrated"

instance FromJSON CNCRating where
    parseJSON = parseJSONText "CNCRating"

instance ToJSON CNCRating where
    toJSON = toJSONText

-- | The type of audio track associated with the caption track.
data AudioTrackType
    = Commentary
      -- ^ @commentary@
    | Descriptive
      -- ^ @descriptive@
    | Primary
      -- ^ @primary@
    | Unknown
      -- ^ @unknown@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AudioTrackType

instance FromText AudioTrackType where
    fromText = \case
        "commentary" -> Just Commentary
        "descriptive" -> Just Descriptive
        "primary" -> Just Primary
        "unknown" -> Just Unknown
        _ -> Nothing

instance ToText AudioTrackType where
    toText = \case
        Commentary -> "commentary"
        Descriptive -> "descriptive"
        Primary -> "primary"
        Unknown -> "unknown"

instance FromJSON AudioTrackType where
    parseJSON = parseJSONText "AudioTrackType"

instance ToJSON AudioTrackType where
    toJSON = toJSONText

-- | The videoType parameter lets you restrict a search to a particular type
-- of videos. If you specify a value for this parameter, you must also set
-- the type parameter\'s value to video.
data VideoType
    = VTAny
      -- ^ @any@
      -- Return all videos.
    | VTEpisode
      -- ^ @episode@
      -- Only retrieve episodes of shows.
    | VTMovie
      -- ^ @movie@
      -- Only retrieve movies.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoType

instance FromText VideoType where
    fromText = \case
        "any" -> Just VTAny
        "episode" -> Just VTEpisode
        "movie" -> Just VTMovie
        _ -> Nothing

instance ToText VideoType where
    toText = \case
        VTAny -> "any"
        VTEpisode -> "episode"
        VTMovie -> "movie"

instance FromJSON VideoType where
    parseJSON = parseJSONText "VideoType"

instance ToJSON VideoType where
    toJSON = toJSONText

-- | The video\'s rating in Slovakia.
data SkfilmRating
    = SkfilmG
      -- ^ @skfilmG@
    | SKFILMP2
      -- ^ @skfilmP2@
    | SKFILMP5
      -- ^ @skfilmP5@
    | SKFILMP8
      -- ^ @skfilmP8@
    | SkfilmUnrated
      -- ^ @skfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SkfilmRating

instance FromText SkfilmRating where
    fromText = \case
        "skfilmG" -> Just SkfilmG
        "skfilmP2" -> Just SKFILMP2
        "skfilmP5" -> Just SKFILMP5
        "skfilmP8" -> Just SKFILMP8
        "skfilmUnrated" -> Just SkfilmUnrated
        _ -> Nothing

instance ToText SkfilmRating where
    toText = \case
        SkfilmG -> "skfilmG"
        SKFILMP2 -> "skfilmP2"
        SKFILMP5 -> "skfilmP5"
        SKFILMP8 -> "skfilmP8"
        SkfilmUnrated -> "skfilmUnrated"

instance FromJSON SkfilmRating where
    parseJSON = parseJSONText "SkfilmRating"

instance ToJSON SkfilmRating where
    toJSON = toJSONText

-- | The videoDimension parameter lets you restrict a search to only retrieve
-- 2D or 3D videos. If you specify a value for this parameter, you must
-- also set the type parameter\'s value to video.
data VideoDimension
    = VID2D
      -- ^ @2d@
      -- Restrict search results to exclude 3D videos.
    | VID3D
      -- ^ @3d@
      -- Restrict search results to only include 3D videos.
    | VIDAny
      -- ^ @any@
      -- Include both 3D and non-3D videos in returned results. This is the
      -- default value.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoDimension

instance FromText VideoDimension where
    fromText = \case
        "2d" -> Just VID2D
        "3d" -> Just VID3D
        "any" -> Just VIDAny
        _ -> Nothing

instance ToText VideoDimension where
    toText = \case
        VID2D -> "2d"
        VID3D -> "3d"
        VIDAny -> "any"

instance FromJSON VideoDimension where
    parseJSON = parseJSONText "VideoDimension"

instance ToJSON VideoDimension where
    toJSON = toJSONText

-- | This parameter indicates whether the API should return comments
-- formatted as HTML or as plain text.
data YouTubeCommentsListTextFormat
    = YTCLTFHTML
      -- ^ @html@
      -- Returns the comments in HTML format. This is the default value.
    | YTCLTFPlainText
      -- ^ @plainText@
      -- Returns the comments in plain text format.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable YouTubeCommentsListTextFormat

instance FromText YouTubeCommentsListTextFormat where
    fromText = \case
        "html" -> Just YTCLTFHTML
        "plainText" -> Just YTCLTFPlainText
        _ -> Nothing

instance ToText YouTubeCommentsListTextFormat where
    toText = \case
        YTCLTFHTML -> "html"
        YTCLTFPlainText -> "plainText"

instance FromJSON YouTubeCommentsListTextFormat where
    parseJSON = parseJSONText "YouTubeCommentsListTextFormat"

instance ToJSON YouTubeCommentsListTextFormat where
    toJSON = toJSONText

-- | The video\'s Office of Film and Literature Classification (OFLC - New
-- Zealand) rating.
data OflcRating
    = OflcG
      -- ^ @oflcG@
    | OflcM
      -- ^ @oflcM@
    | OflcPg
      -- ^ @oflcPg@
    | OFLCR13
      -- ^ @oflcR13@
    | OFLCR15
      -- ^ @oflcR15@
    | OFLCR16
      -- ^ @oflcR16@
    | OFLCR18
      -- ^ @oflcR18@
    | OFLCRP13
      -- ^ @oflcRp13@
    | OFLCRP16
      -- ^ @oflcRp16@
    | OflcUnrated
      -- ^ @oflcUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OflcRating

instance FromText OflcRating where
    fromText = \case
        "oflcG" -> Just OflcG
        "oflcM" -> Just OflcM
        "oflcPg" -> Just OflcPg
        "oflcR13" -> Just OFLCR13
        "oflcR15" -> Just OFLCR15
        "oflcR16" -> Just OFLCR16
        "oflcR18" -> Just OFLCR18
        "oflcRp13" -> Just OFLCRP13
        "oflcRp16" -> Just OFLCRP16
        "oflcUnrated" -> Just OflcUnrated
        _ -> Nothing

instance ToText OflcRating where
    toText = \case
        OflcG -> "oflcG"
        OflcM -> "oflcM"
        OflcPg -> "oflcPg"
        OFLCR13 -> "oflcR13"
        OFLCR15 -> "oflcR15"
        OFLCR16 -> "oflcR16"
        OFLCR18 -> "oflcR18"
        OFLCRP13 -> "oflcRp13"
        OFLCRP16 -> "oflcRp16"
        OflcUnrated -> "oflcUnrated"

instance FromJSON OflcRating where
    parseJSON = parseJSONText "OflcRating"

instance ToJSON OflcRating where
    toJSON = toJSONText

-- | The video\'s Korea Media Rating Board (영상물등급위원회) rating. The
-- KMRB rates videos in South Korea.
data KmrbRating
    = Kmrb12plus
      -- ^ @kmrb12plus@
    | Kmrb15plus
      -- ^ @kmrb15plus@
    | KmrbAll
      -- ^ @kmrbAll@
    | KmrbR
      -- ^ @kmrbR@
    | KmrbTeenr
      -- ^ @kmrbTeenr@
    | KmrbUnrated
      -- ^ @kmrbUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable KmrbRating

instance FromText KmrbRating where
    fromText = \case
        "kmrb12plus" -> Just Kmrb12plus
        "kmrb15plus" -> Just Kmrb15plus
        "kmrbAll" -> Just KmrbAll
        "kmrbR" -> Just KmrbR
        "kmrbTeenr" -> Just KmrbTeenr
        "kmrbUnrated" -> Just KmrbUnrated
        _ -> Nothing

instance ToText KmrbRating where
    toText = \case
        Kmrb12plus -> "kmrb12plus"
        Kmrb15plus -> "kmrb15plus"
        KmrbAll -> "kmrbAll"
        KmrbR -> "kmrbR"
        KmrbTeenr -> "kmrbTeenr"
        KmrbUnrated -> "kmrbUnrated"

instance FromJSON KmrbRating where
    parseJSON = parseJSONText "KmrbRating"

instance ToJSON KmrbRating where
    toJSON = toJSONText
