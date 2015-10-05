{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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

-- | The video\'s rating from Portugal\'s Comissão de Classificação de
-- Espect´culos.
data ContentRatingCceRating
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

instance Hashable ContentRatingCceRating

instance FromText ContentRatingCceRating where
    fromText = \case
        "cceM12" -> Just CCEM12
        "cceM16" -> Just CCEM16
        "cceM18" -> Just CCEM18
        "cceM4" -> Just CCEM4
        "cceM6" -> Just CCEM6
        "cceUnrated" -> Just CceUnrated
        _ -> Nothing

instance ToText ContentRatingCceRating where
    toText = \case
        CCEM12 -> "cceM12"
        CCEM16 -> "cceM16"
        CCEM18 -> "cceM18"
        CCEM4 -> "cceM4"
        CCEM6 -> "cceM6"
        CceUnrated -> "cceUnrated"

instance FromJSON ContentRatingCceRating where
    parseJSON = parseJSONText "ContentRatingCceRating"

instance ToJSON ContentRatingCceRating where
    toJSON = toJSONText

-- | The video\'s rating in Switzerland.
data ContentRatingChfilmRating
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

instance Hashable ContentRatingChfilmRating

instance FromText ContentRatingChfilmRating where
    fromText = \case
        "chfilm0" -> Just CHFILM0
        "chfilm12" -> Just CHFILM12
        "chfilm16" -> Just CHFILM16
        "chfilm18" -> Just CHFILM18
        "chfilm6" -> Just CHFILM6
        "chfilmUnrated" -> Just ChfilmUnrated
        _ -> Nothing

instance ToText ContentRatingChfilmRating where
    toText = \case
        CHFILM0 -> "chfilm0"
        CHFILM12 -> "chfilm12"
        CHFILM16 -> "chfilm16"
        CHFILM18 -> "chfilm18"
        CHFILM6 -> "chfilm6"
        ChfilmUnrated -> "chfilmUnrated"

instance FromJSON ContentRatingChfilmRating where
    parseJSON = parseJSONText "ContentRatingChfilmRating"

instance ToJSON ContentRatingChfilmRating where
    toJSON = toJSONText

-- | The video\'s rating from Malta\'s Film Age-Classification Board.
data ContentRatingMccaaRating
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

instance Hashable ContentRatingMccaaRating

instance FromText ContentRatingMccaaRating where
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

instance ToText ContentRatingMccaaRating where
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

instance FromJSON ContentRatingMccaaRating where
    parseJSON = parseJSONText "ContentRatingMccaaRating"

instance ToJSON ContentRatingMccaaRating where
    toJSON = toJSONText

-- | The chart parameter identifies the chart that you want to retrieve.
data VideosListChart
    = MostPopular
      -- ^ @mostPopular@
      -- Return the most popular videos for the specified content region and
      -- video category.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideosListChart

instance FromText VideosListChart where
    fromText = \case
        "mostPopular" -> Just MostPopular
        _ -> Nothing

instance ToText VideosListChart where
    toText = \case
        MostPopular -> "mostPopular"

instance FromJSON VideosListChart where
    parseJSON = parseJSONText "VideosListChart"

instance ToJSON VideosListChart where
    toJSON = toJSONText

-- | The video\'s Motion Picture Association of America (MPAA) rating.
data ContentRatingMpaaRating
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

instance Hashable ContentRatingMpaaRating

instance FromText ContentRatingMpaaRating where
    fromText = \case
        "mpaaG" -> Just MpaaG
        "mpaaNc17" -> Just MPAANC17
        "mpaaPg" -> Just MpaaPg
        "mpaaPg13" -> Just MPAAPG13
        "mpaaR" -> Just MpaaR
        "mpaaUnrated" -> Just MpaaUnrated
        _ -> Nothing

instance ToText ContentRatingMpaaRating where
    toText = \case
        MpaaG -> "mpaaG"
        MPAANC17 -> "mpaaNc17"
        MpaaPg -> "mpaaPg"
        MPAAPG13 -> "mpaaPg13"
        MpaaR -> "mpaaR"
        MpaaUnrated -> "mpaaUnrated"

instance FromJSON ContentRatingMpaaRating where
    parseJSON = parseJSONText "ContentRatingMpaaRating"

instance ToJSON ContentRatingMpaaRating where
    toJSON = toJSONText

-- | The caption track\'s type.
data CaptionSnippetTrackKind
    = Asr
      -- ^ @ASR@
    | Forced
      -- ^ @forced@
    | Standard
      -- ^ @standard@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CaptionSnippetTrackKind

instance FromText CaptionSnippetTrackKind where
    fromText = \case
        "ASR" -> Just Asr
        "forced" -> Just Forced
        "standard" -> Just Standard
        _ -> Nothing

instance ToText CaptionSnippetTrackKind where
    toText = \case
        Asr -> "ASR"
        Forced -> "forced"
        Standard -> "standard"

instance FromJSON CaptionSnippetTrackKind where
    parseJSON = parseJSONText "CaptionSnippetTrackKind"

instance ToJSON CaptionSnippetTrackKind where
    toJSON = toJSONText

-- | Indicates if the video is an upcoming\/active live broadcast. Or it\'s
-- \"none\" if the video is not an upcoming\/active live broadcast.
data VideoSnippetLiveBroadcastContent
    = Live
      -- ^ @live@
    | None
      -- ^ @none@
    | Upcoming
      -- ^ @upcoming@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoSnippetLiveBroadcastContent

instance FromText VideoSnippetLiveBroadcastContent where
    fromText = \case
        "live" -> Just Live
        "none" -> Just None
        "upcoming" -> Just Upcoming
        _ -> Nothing

instance ToText VideoSnippetLiveBroadcastContent where
    toText = \case
        Live -> "live"
        None -> "none"
        Upcoming -> "upcoming"

instance FromJSON VideoSnippetLiveBroadcastContent where
    parseJSON = parseJSONText "VideoSnippetLiveBroadcastContent"

instance ToJSON VideoSnippetLiveBroadcastContent where
    toJSON = toJSONText

-- | Defines the context of the ping.
data ChannelConversionPingContext
    = Cview
      -- ^ @cview@
    | Subscribe
      -- ^ @subscribe@
    | Unsubscribe
      -- ^ @unsubscribe@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelConversionPingContext

instance FromText ChannelConversionPingContext where
    fromText = \case
        "cview" -> Just Cview
        "subscribe" -> Just Subscribe
        "unsubscribe" -> Just Unsubscribe
        _ -> Nothing

instance ToText ChannelConversionPingContext where
    toText = \case
        Cview -> "cview"
        Subscribe -> "subscribe"
        Unsubscribe -> "unsubscribe"

instance FromJSON ChannelConversionPingContext where
    parseJSON = parseJSONText "ChannelConversionPingContext"

instance ToJSON ChannelConversionPingContext where
    toJSON = toJSONText

-- | The video\'s rating from the Hungarian Nemzeti Filmiroda, the Rating
-- Committee of the National Office of Film.
data ContentRatingRcnofRating
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

instance Hashable ContentRatingRcnofRating

instance FromText ContentRatingRcnofRating where
    fromText = \case
        "rcnofI" -> Just RcnofI
        "rcnofIi" -> Just RcnofIi
        "rcnofIii" -> Just RcnofIii
        "rcnofIv" -> Just RcnofIv
        "rcnofUnrated" -> Just RcnofUnrated
        "rcnofV" -> Just RcnofV
        "rcnofVi" -> Just RcnofVi
        _ -> Nothing

instance ToText ContentRatingRcnofRating where
    toText = \case
        RcnofI -> "rcnofI"
        RcnofIi -> "rcnofIi"
        RcnofIii -> "rcnofIii"
        RcnofIv -> "rcnofIv"
        RcnofUnrated -> "rcnofUnrated"
        RcnofV -> "rcnofV"
        RcnofVi -> "rcnofVi"

instance FromJSON ContentRatingRcnofRating where
    parseJSON = parseJSONText "ContentRatingRcnofRating"

instance ToJSON ContentRatingRcnofRating where
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

instance FromJSON LiveBroadcastStatusLifeCycleStatus where
    parseJSON = parseJSONText "LiveBroadcastStatusLifeCycleStatus"

instance ToJSON LiveBroadcastStatusLifeCycleStatus where
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

-- | The reason that YouTube failed to process the video. This property will
-- only have a value if the processingStatus property\'s value is failed.
data VideoProcessingDetailsProcessingFailureReason
    = Other
      -- ^ @other@
    | StreamingFailed
      -- ^ @streamingFailed@
    | TranscodeFailed
      -- ^ @transcodeFailed@
    | UploadFailed
      -- ^ @uploadFailed@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoProcessingDetailsProcessingFailureReason

instance FromText VideoProcessingDetailsProcessingFailureReason where
    fromText = \case
        "other" -> Just Other
        "streamingFailed" -> Just StreamingFailed
        "transcodeFailed" -> Just TranscodeFailed
        "uploadFailed" -> Just UploadFailed
        _ -> Nothing

instance ToText VideoProcessingDetailsProcessingFailureReason where
    toText = \case
        Other -> "other"
        StreamingFailed -> "streamingFailed"
        TranscodeFailed -> "transcodeFailed"
        UploadFailed -> "uploadFailed"

instance FromJSON VideoProcessingDetailsProcessingFailureReason where
    parseJSON = parseJSONText "VideoProcessingDetailsProcessingFailureReason"

instance ToJSON VideoProcessingDetailsProcessingFailureReason where
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

-- | The video\'s Freiwillige Selbstkontrolle der Filmwirtschaft (FSK -
-- Germany) rating.
data ContentRatingFskRating
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

instance Hashable ContentRatingFskRating

instance FromText ContentRatingFskRating where
    fromText = \case
        "fsk0" -> Just FSK0
        "fsk12" -> Just FSK12
        "fsk16" -> Just FSK16
        "fsk18" -> Just FSK18
        "fsk6" -> Just FSK6
        "fskUnrated" -> Just FskUnrated
        _ -> Nothing

instance ToText ContentRatingFskRating where
    toText = \case
        FSK0 -> "fsk0"
        FSK12 -> "fsk12"
        FSK16 -> "fsk16"
        FSK18 -> "fsk18"
        FSK6 -> "fsk6"
        FskUnrated -> "fskUnrated"

instance FromJSON ContentRatingFskRating where
    parseJSON = parseJSONText "ContentRatingFskRating"

instance ToJSON ContentRatingFskRating where
    toJSON = toJSONText

-- | The video\'s rating from Finland\'s Kansallinen Audiovisuaalinen
-- Instituutti (National Audiovisual Institute).
data ContentRatingMekuRating
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

instance Hashable ContentRatingMekuRating

instance FromText ContentRatingMekuRating where
    fromText = \case
        "meku12" -> Just MEKU12
        "meku16" -> Just MEKU16
        "meku18" -> Just MEKU18
        "meku7" -> Just MEKU7
        "mekuS" -> Just MekuS
        "mekuUnrated" -> Just MekuUnrated
        _ -> Nothing

instance ToText ContentRatingMekuRating where
    toText = \case
        MEKU12 -> "meku12"
        MEKU16 -> "meku16"
        MEKU18 -> "meku18"
        MEKU7 -> "meku7"
        MekuS -> "mekuS"
        MekuUnrated -> "mekuUnrated"

instance FromJSON ContentRatingMekuRating where
    parseJSON = parseJSONText "ContentRatingMekuRating"

instance ToJSON ContentRatingMekuRating where
    toJSON = toJSONText

-- | The value of definition indicates whether the video is available in high
-- definition or only in standard definition.
data VideoContentDetailsDefinition
    = HD
      -- ^ @hd@
    | SD
      -- ^ @sd@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoContentDetailsDefinition

instance FromText VideoContentDetailsDefinition where
    fromText = \case
        "hd" -> Just HD
        "sd" -> Just SD
        _ -> Nothing

instance ToText VideoContentDetailsDefinition where
    toText = \case
        HD -> "hd"
        SD -> "sd"

instance FromJSON VideoContentDetailsDefinition where
    parseJSON = parseJSONText "VideoContentDetailsDefinition"

instance ToJSON VideoContentDetailsDefinition where
    toJSON = toJSONText

-- | The video\'s rating in Estonia.
data ContentRatingEefilmRating
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

instance Hashable ContentRatingEefilmRating

instance FromText ContentRatingEefilmRating where
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

instance ToText ContentRatingEefilmRating where
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

instance FromJSON ContentRatingEefilmRating where
    parseJSON = parseJSONText "ContentRatingEefilmRating"

instance ToJSON ContentRatingEefilmRating where
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

-- | The tfmt parameter specifies that the caption track should be returned
-- in a specific format. If the parameter is not included in the request,
-- the track is returned in its original format.
data CaptionsDownloadTfmt
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

instance Hashable CaptionsDownloadTfmt

instance FromText CaptionsDownloadTfmt where
    fromText = \case
        "sbv" -> Just Sbv
        "scc" -> Just Scc
        "srt" -> Just Srt
        "ttml" -> Just Ttml
        "vtt" -> Just Vtt
        _ -> Nothing

instance ToText CaptionsDownloadTfmt where
    toText = \case
        Sbv -> "sbv"
        Scc -> "scc"
        Srt -> "srt"
        Ttml -> "ttml"
        Vtt -> "vtt"

instance FromJSON CaptionsDownloadTfmt where
    parseJSON = parseJSONText "CaptionsDownloadTfmt"

instance ToJSON CaptionsDownloadTfmt where
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

-- | The video\'s rating in Peru.
data ContentRatingPefilmRating
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

instance Hashable ContentRatingPefilmRating

instance FromText ContentRatingPefilmRating where
    fromText = \case
        "pefilm14" -> Just PEFILM14
        "pefilm18" -> Just PEFILM18
        "pefilmPg" -> Just PefilmPg
        "pefilmPt" -> Just PefilmPt
        "pefilmUnrated" -> Just PefilmUnrated
        _ -> Nothing

instance ToText ContentRatingPefilmRating where
    toText = \case
        PEFILM14 -> "pefilm14"
        PEFILM18 -> "pefilm18"
        PefilmPg -> "pefilmPg"
        PefilmPt -> "pefilmPt"
        PefilmUnrated -> "pefilmUnrated"

instance FromJSON ContentRatingPefilmRating where
    parseJSON = parseJSONText "ContentRatingPefilmRating"

instance ToJSON ContentRatingPefilmRating where
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

-- | The video\'s Anatel (Asociación Nacional de Televisión) rating for
-- Chilean television.
data ContentRatingAnatelRating
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

instance Hashable ContentRatingAnatelRating

instance FromText ContentRatingAnatelRating where
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

instance ToText ContentRatingAnatelRating where
    toText = \case
        AnatelA -> "anatelA"
        AnatelF -> "anatelF"
        AnatelI -> "anatelI"
        ANATELI10 -> "anatelI10"
        ANATELI12 -> "anatelI12"
        ANATELI7 -> "anatelI7"
        AnatelR -> "anatelR"
        AnatelUnrated -> "anatelUnrated"

instance FromJSON ContentRatingAnatelRating where
    parseJSON = parseJSONText "ContentRatingAnatelRating"

instance ToJSON ContentRatingAnatelRating where
    toJSON = toJSONText

-- | The order parameter specifies the method that will be used to order
-- resources in the API response.
data SearchListOrder
    = Date
      -- ^ @date@
      -- Resources are sorted in reverse chronological order based on the date
      -- they were created.
    | Rating
      -- ^ @rating@
      -- Resources are sorted from highest to lowest rating.
    | Relevance
      -- ^ @relevance@
      -- Resources are sorted based on their relevance to the search query. This
      -- is the default value for this parameter.
    | Title
      -- ^ @title@
      -- Resources are sorted alphabetically by title.
    | VideoCount
      -- ^ @videoCount@
      -- Channels are sorted in descending order of their number of uploaded
      -- videos.
    | ViewCount
      -- ^ @viewCount@
      -- Resources are sorted from highest to lowest number of views.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchListOrder

instance FromText SearchListOrder where
    fromText = \case
        "date" -> Just Date
        "rating" -> Just Rating
        "relevance" -> Just Relevance
        "title" -> Just Title
        "videoCount" -> Just VideoCount
        "viewCount" -> Just ViewCount
        _ -> Nothing

instance ToText SearchListOrder where
    toText = \case
        Date -> "date"
        Rating -> "rating"
        Relevance -> "relevance"
        Title -> "title"
        VideoCount -> "videoCount"
        ViewCount -> "viewCount"

instance FromJSON SearchListOrder where
    parseJSON = parseJSONText "SearchListOrder"

instance ToJSON SearchListOrder where
    toJSON = toJSONText

-- | The video\'s Consejo de Calificación Cinematográfica (Chile) rating.
data ContentRatingCccRating
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

instance Hashable ContentRatingCccRating

instance FromText ContentRatingCccRating where
    fromText = \case
        "ccc14" -> Just CCC14
        "ccc18" -> Just CCC18
        "ccc18s" -> Just Ccc18s
        "ccc18v" -> Just Ccc18v
        "ccc6" -> Just CCC6
        "cccTe" -> Just CccTe
        "cccUnrated" -> Just CccUnrated
        _ -> Nothing

instance ToText ContentRatingCccRating where
    toText = \case
        CCC14 -> "ccc14"
        CCC18 -> "ccc18"
        Ccc18s -> "ccc18s"
        Ccc18v -> "ccc18v"
        CCC6 -> "ccc6"
        CccTe -> "cccTe"
        CccUnrated -> "cccUnrated"

instance FromJSON ContentRatingCccRating where
    parseJSON = parseJSONText "ContentRatingCccRating"

instance ToJSON ContentRatingCccRating where
    toJSON = toJSONText

-- | The type of audio track associated with the caption track.
data CaptionSnippetAudioTrackType
    = Commentary
      -- ^ @commentary@
    | Descriptive
      -- ^ @descriptive@
    | Primary
      -- ^ @primary@
    | Unknown
      -- ^ @unknown@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CaptionSnippetAudioTrackType

instance FromText CaptionSnippetAudioTrackType where
    fromText = \case
        "commentary" -> Just Commentary
        "descriptive" -> Just Descriptive
        "primary" -> Just Primary
        "unknown" -> Just Unknown
        _ -> Nothing

instance ToText CaptionSnippetAudioTrackType where
    toText = \case
        Commentary -> "commentary"
        Descriptive -> "descriptive"
        Primary -> "primary"
        Unknown -> "unknown"

instance FromJSON CaptionSnippetAudioTrackType where
    parseJSON = parseJSONText "CaptionSnippetAudioTrackType"

instance ToJSON CaptionSnippetAudioTrackType where
    toJSON = toJSONText

-- | Privacy status of the channel.
data ChannelStatusPrivacyStatus
    = CSPSPrivate
      -- ^ @private@
    | CSPSPublic
      -- ^ @public@
    | CSPSUnListed
      -- ^ @unlisted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelStatusPrivacyStatus

instance FromText ChannelStatusPrivacyStatus where
    fromText = \case
        "private" -> Just CSPSPrivate
        "public" -> Just CSPSPublic
        "unlisted" -> Just CSPSUnListed
        _ -> Nothing

instance ToText ChannelStatusPrivacyStatus where
    toText = \case
        CSPSPrivate -> "private"
        CSPSPublic -> "public"
        CSPSUnListed -> "unlisted"

instance FromJSON ChannelStatusPrivacyStatus where
    parseJSON = parseJSONText "ChannelStatusPrivacyStatus"

instance ToJSON ChannelStatusPrivacyStatus where
    toJSON = toJSONText

data VideoSuggestionsEditorSuggestionsItem
    = AudioQuietAudioSwap
      -- ^ @audioQuietAudioSwap@
    | VideoAutoLevels
      -- ^ @videoAutoLevels@
    | VideoCrop
      -- ^ @videoCrop@
    | VideoStabilize
      -- ^ @videoStabilize@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoSuggestionsEditorSuggestionsItem

instance FromText VideoSuggestionsEditorSuggestionsItem where
    fromText = \case
        "audioQuietAudioSwap" -> Just AudioQuietAudioSwap
        "videoAutoLevels" -> Just VideoAutoLevels
        "videoCrop" -> Just VideoCrop
        "videoStabilize" -> Just VideoStabilize
        _ -> Nothing

instance ToText VideoSuggestionsEditorSuggestionsItem where
    toText = \case
        AudioQuietAudioSwap -> "audioQuietAudioSwap"
        VideoAutoLevels -> "videoAutoLevels"
        VideoCrop -> "videoCrop"
        VideoStabilize -> "videoStabilize"

instance FromJSON VideoSuggestionsEditorSuggestionsItem where
    parseJSON = parseJSONText "VideoSuggestionsEditorSuggestionsItem"

instance ToJSON VideoSuggestionsEditorSuggestionsItem where
    toJSON = toJSONText

-- | The video\'s rating from the Canadian Radio-Television and
-- Telecommunications Commission (CRTC) for Canadian French-language
-- broadcasts. For more information, see the Canadian Broadcast Standards
-- Council website.
data ContentRatingCatvfrRating
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

instance Hashable ContentRatingCatvfrRating

instance FromText ContentRatingCatvfrRating where
    fromText = \case
        "catvfr13plus" -> Just Catvfr13plus
        "catvfr16plus" -> Just Catvfr16plus
        "catvfr18plus" -> Just Catvfr18plus
        "catvfr8plus" -> Just Catvfr8plus
        "catvfrG" -> Just CatvfrG
        "catvfrUnrated" -> Just CatvfrUnrated
        _ -> Nothing

instance ToText ContentRatingCatvfrRating where
    toText = \case
        Catvfr13plus -> "catvfr13plus"
        Catvfr16plus -> "catvfr16plus"
        Catvfr18plus -> "catvfr18plus"
        Catvfr8plus -> "catvfr8plus"
        CatvfrG -> "catvfrG"
        CatvfrUnrated -> "catvfrUnrated"

instance FromJSON ContentRatingCatvfrRating where
    parseJSON = parseJSONText "ContentRatingCatvfrRating"

instance ToJSON ContentRatingCatvfrRating where
    toJSON = toJSONText

-- | The video\'s rating from Romania\'s CONSILIUL NATIONAL AL
-- AUDIOVIZUALULUI (CNA).
data ContentRatingCnaRating
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

instance Hashable ContentRatingCnaRating

instance FromText ContentRatingCnaRating where
    fromText = \case
        "cna12" -> Just CNA12
        "cna15" -> Just CNA15
        "cna18" -> Just CNA18
        "cna18plus" -> Just Cna18plus
        "cnaAp" -> Just CnaAp
        "cnaUnrated" -> Just CnaUnrated
        _ -> Nothing

instance ToText ContentRatingCnaRating where
    toText = \case
        CNA12 -> "cna12"
        CNA15 -> "cna15"
        CNA18 -> "cna18"
        Cna18plus -> "cna18plus"
        CnaAp -> "cnaAp"
        CnaUnrated -> "cnaUnrated"

instance FromJSON ContentRatingCnaRating where
    parseJSON = parseJSONText "ContentRatingCnaRating"

instance ToJSON ContentRatingCnaRating where
    toJSON = toJSONText

-- | The video\'s Canadian Home Video Rating System (CHVRS) rating.
data ContentRatingChvrsRating
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

instance Hashable ContentRatingChvrsRating

instance FromText ContentRatingChvrsRating where
    fromText = \case
        "chvrs14a" -> Just Chvrs14a
        "chvrs18a" -> Just Chvrs18a
        "chvrsE" -> Just ChvrsE
        "chvrsG" -> Just ChvrsG
        "chvrsPg" -> Just ChvrsPg
        "chvrsR" -> Just ChvrsR
        "chvrsUnrated" -> Just ChvrsUnrated
        _ -> Nothing

instance ToText ContentRatingChvrsRating where
    toText = \case
        Chvrs14a -> "chvrs14a"
        Chvrs18a -> "chvrs18a"
        ChvrsE -> "chvrsE"
        ChvrsG -> "chvrsG"
        ChvrsPg -> "chvrsPg"
        ChvrsR -> "chvrsR"
        ChvrsUnrated -> "chvrsUnrated"

instance FromJSON ContentRatingChvrsRating where
    parseJSON = parseJSONText "ContentRatingChvrsRating"

instance ToJSON ContentRatingChvrsRating where
    toJSON = toJSONText

-- | The video\'s INCAA (Instituto Nacional de Cine y Artes Audiovisuales -
-- Argentina) rating.
data ContentRatingIncaaRating
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

instance Hashable ContentRatingIncaaRating

instance FromText ContentRatingIncaaRating where
    fromText = \case
        "incaaAtp" -> Just IncaaAtp
        "incaaC" -> Just IncaaC
        "incaaSam13" -> Just INCAASAM13
        "incaaSam16" -> Just INCAASAM16
        "incaaSam18" -> Just INCAASAM18
        "incaaUnrated" -> Just IncaaUnrated
        _ -> Nothing

instance ToText ContentRatingIncaaRating where
    toText = \case
        IncaaAtp -> "incaaAtp"
        IncaaC -> "incaaC"
        INCAASAM13 -> "incaaSam13"
        INCAASAM16 -> "incaaSam16"
        INCAASAM18 -> "incaaSam18"
        IncaaUnrated -> "incaaUnrated"

instance FromJSON ContentRatingIncaaRating where
    parseJSON = parseJSONText "ContentRatingIncaaRating"

instance ToJSON ContentRatingIncaaRating where
    toJSON = toJSONText

-- | The video\'s rating from Statens medieråd (Sweden\'s National Media
-- Council).
data ContentRatingSmsaRating
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

instance Hashable ContentRatingSmsaRating

instance FromText ContentRatingSmsaRating where
    fromText = \case
        "smsa11" -> Just SMSA11
        "smsa15" -> Just SMSA15
        "smsa7" -> Just SMSA7
        "smsaA" -> Just SmsaA
        "smsaUnrated" -> Just SmsaUnrated
        _ -> Nothing

instance ToText ContentRatingSmsaRating where
    toText = \case
        SMSA11 -> "smsa11"
        SMSA15 -> "smsa15"
        SMSA7 -> "smsa7"
        SmsaA -> "smsaA"
        SmsaUnrated -> "smsaUnrated"

instance FromJSON ContentRatingSmsaRating where
    parseJSON = parseJSONText "ContentRatingSmsaRating"

instance ToJSON ContentRatingSmsaRating where
    toJSON = toJSONText

-- | The video\'s Central Board of Film Certification (CBFC - India) rating.
data ContentRatingCbfcRating
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

instance Hashable ContentRatingCbfcRating

instance FromText ContentRatingCbfcRating where
    fromText = \case
        "cbfcA" -> Just CbfcA
        "cbfcS" -> Just CbfcS
        "cbfcU" -> Just CbfcU
        "cbfcUA" -> Just CbfcUA
        "cbfcUnrated" -> Just CbfcUnrated
        _ -> Nothing

instance ToText ContentRatingCbfcRating where
    toText = \case
        CbfcA -> "cbfcA"
        CbfcS -> "cbfcS"
        CbfcU -> "cbfcU"
        CbfcUA -> "cbfcUA"
        CbfcUnrated -> "cbfcUnrated"

instance FromJSON ContentRatingCbfcRating where
    parseJSON = parseJSONText "ContentRatingCbfcRating"

instance ToJSON ContentRatingCbfcRating where
    toJSON = toJSONText

-- | The video\'s rating from the Kenya Film Classification Board.
data ContentRatingKfcbRating
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

instance Hashable ContentRatingKfcbRating

instance FromText ContentRatingKfcbRating where
    fromText = \case
        "kfcb16plus" -> Just Kfcb16plus
        "kfcbG" -> Just KfcbG
        "kfcbPg" -> Just KfcbPg
        "kfcbR" -> Just KfcbR
        "kfcbUnrated" -> Just KfcbUnrated
        _ -> Nothing

instance ToText ContentRatingKfcbRating where
    toText = \case
        Kfcb16plus -> "kfcb16plus"
        KfcbG -> "kfcbG"
        KfcbPg -> "kfcbPg"
        KfcbR -> "kfcbR"
        KfcbUnrated -> "kfcbUnrated"

instance FromJSON ContentRatingKfcbRating where
    parseJSON = parseJSONText "ContentRatingKfcbRating"

instance ToJSON ContentRatingKfcbRating where
    toJSON = toJSONText

-- | How severe this issue is to the stream.
data LiveStreamConfigurationIssueSeverity
    = Error'
      -- ^ @error@
    | Info
      -- ^ @info@
    | Warning
      -- ^ @warning@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveStreamConfigurationIssueSeverity

instance FromText LiveStreamConfigurationIssueSeverity where
    fromText = \case
        "error" -> Just Error'
        "info" -> Just Info
        "warning" -> Just Warning
        _ -> Nothing

instance ToText LiveStreamConfigurationIssueSeverity where
    toText = \case
        Error' -> "error"
        Info -> "info"
        Warning -> "warning"

instance FromJSON LiveStreamConfigurationIssueSeverity where
    parseJSON = parseJSONText "LiveStreamConfigurationIssueSeverity"

instance ToJSON LiveStreamConfigurationIssueSeverity where
    toJSON = toJSONText

-- | The videoDefinition parameter lets you restrict a search to only include
-- either high definition (HD) or standard definition (SD) videos. HD
-- videos are available for playback in at least 720p, though higher
-- resolutions, like 1080p, might also be available. If you specify a value
-- for this parameter, you must also set the type parameter\'s value to
-- video.
data SearchListVideoDefinition
    = SLVDAny
      -- ^ @any@
      -- Return all videos, regardless of their resolution.
    | SLVDHigh
      -- ^ @high@
      -- Only retrieve HD videos.
    | SLVDStandard
      -- ^ @standard@
      -- Only retrieve videos in standard definition.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchListVideoDefinition

instance FromText SearchListVideoDefinition where
    fromText = \case
        "any" -> Just SLVDAny
        "high" -> Just SLVDHigh
        "standard" -> Just SLVDStandard
        _ -> Nothing

instance ToText SearchListVideoDefinition where
    toText = \case
        SLVDAny -> "any"
        SLVDHigh -> "high"
        SLVDStandard -> "standard"

instance FromJSON SearchListVideoDefinition where
    parseJSON = parseJSONText "SearchListVideoDefinition"

instance ToJSON SearchListVideoDefinition where
    toJSON = toJSONText

-- | Video game rating, if any.
data VideoAgeGatingVideoGameRating
    = Anyone
      -- ^ @anyone@
    | M15Plus
      -- ^ @m15Plus@
    | M16Plus
      -- ^ @m16Plus@
    | M17Plus
      -- ^ @m17Plus@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoAgeGatingVideoGameRating

instance FromText VideoAgeGatingVideoGameRating where
    fromText = \case
        "anyone" -> Just Anyone
        "m15Plus" -> Just M15Plus
        "m16Plus" -> Just M16Plus
        "m17Plus" -> Just M17Plus
        _ -> Nothing

instance ToText VideoAgeGatingVideoGameRating where
    toText = \case
        Anyone -> "anyone"
        M15Plus -> "m15Plus"
        M16Plus -> "m16Plus"
        M17Plus -> "m17Plus"

instance FromJSON VideoAgeGatingVideoGameRating where
    parseJSON = parseJSONText "VideoAgeGatingVideoGameRating"

instance ToJSON VideoAgeGatingVideoGameRating where
    toJSON = toJSONText

-- | The video\'s rating from Indonesia\'s Lembaga Sensor Film.
data ContentRatingLsfRating
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

instance Hashable ContentRatingLsfRating

instance FromText ContentRatingLsfRating where
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

instance ToText ContentRatingLsfRating where
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

instance FromJSON ContentRatingLsfRating where
    parseJSON = parseJSONText "ContentRatingLsfRating"

instance ToJSON ContentRatingLsfRating where
    toJSON = toJSONText

-- | The video\'s rating from Thailand\'s Board of Film and Video Censors.
data ContentRatingBfvcRating
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

instance Hashable ContentRatingBfvcRating

instance FromText ContentRatingBfvcRating where
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

instance ToText ContentRatingBfvcRating where
    toText = \case
        BFVC13 -> "bfvc13"
        BFVC15 -> "bfvc15"
        BFVC18 -> "bfvc18"
        BFVC20 -> "bfvc20"
        BfvcB -> "bfvcB"
        BfvcE -> "bfvcE"
        BfvcG -> "bfvcG"
        BfvcUnrated -> "bfvcUnrated"

instance FromJSON ContentRatingBfvcRating where
    parseJSON = parseJSONText "ContentRatingBfvcRating"

instance ToJSON ContentRatingBfvcRating where
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

-- | The videoDuration parameter filters video search results based on their
-- duration. If you specify a value for this parameter, you must also set
-- the type parameter\'s value to video.
data SearchListVideoDuration
    = Any
      -- ^ @any@
      -- Do not filter video search results based on their duration. This is the
      -- default value.
    | Long
      -- ^ @long@
      -- Only include videos longer than 20 minutes.
    | Medium
      -- ^ @medium@
      -- Only include videos that are between four and 20 minutes long
      -- (inclusive).
    | Short
      -- ^ @short@
      -- Only include videos that are less than four minutes long.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchListVideoDuration

instance FromText SearchListVideoDuration where
    fromText = \case
        "any" -> Just Any
        "long" -> Just Long
        "medium" -> Just Medium
        "short" -> Just Short
        _ -> Nothing

instance ToText SearchListVideoDuration where
    toText = \case
        Any -> "any"
        Long -> "long"
        Medium -> "medium"
        Short -> "short"

instance FromJSON SearchListVideoDuration where
    parseJSON = parseJSONText "SearchListVideoDuration"

instance ToJSON SearchListVideoDuration where
    toJSON = toJSONText

-- | The videoCaption parameter indicates whether the API should filter video
-- search results based on whether they have captions. If you specify a
-- value for this parameter, you must also set the type parameter\'s value
-- to video.
data SearchListVideoCaption
    = SLVCAny
      -- ^ @any@
      -- Do not filter results based on caption availability.
    | SLVCClosedCaption
      -- ^ @closedCaption@
      -- Only include videos that have captions.
    | SLVCNone
      -- ^ @none@
      -- Only include videos that do not have captions.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchListVideoCaption

instance FromText SearchListVideoCaption where
    fromText = \case
        "any" -> Just SLVCAny
        "closedCaption" -> Just SLVCClosedCaption
        "none" -> Just SLVCNone
        _ -> Nothing

instance ToText SearchListVideoCaption where
    toText = \case
        SLVCAny -> "any"
        SLVCClosedCaption -> "closedCaption"
        SLVCNone -> "none"

instance FromJSON SearchListVideoCaption where
    parseJSON = parseJSONText "SearchListVideoCaption"

instance ToJSON SearchListVideoCaption where
    toJSON = toJSONText

-- | Set this parameter\'s value to like or dislike to instruct the API to
-- only return videos liked or disliked by the authenticated user.
data VideosListMyRating
    = Dislike
      -- ^ @dislike@
      -- Returns only videos disliked by the authenticated user.
    | Like
      -- ^ @like@
      -- Returns only video liked by the authenticated user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideosListMyRating

instance FromText VideosListMyRating where
    fromText = \case
        "dislike" -> Just Dislike
        "like" -> Just Like
        _ -> Nothing

instance ToText VideosListMyRating where
    toText = \case
        Dislike -> "dislike"
        Like -> "like"

instance FromJSON VideosListMyRating where
    parseJSON = parseJSONText "VideosListMyRating"

instance ToJSON VideosListMyRating where
    toJSON = toJSONText

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

instance FromJSON CommentSnippetViewerRating where
    parseJSON = parseJSONText "CommentSnippetViewerRating"

instance ToJSON CommentSnippetViewerRating where
    toJSON = toJSONText

-- | The video\'s rating from Malaysia\'s Film Censorship Board.
data ContentRatingFcbmRating
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

instance Hashable ContentRatingFcbmRating

instance FromText ContentRatingFcbmRating where
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

instance ToText ContentRatingFcbmRating where
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

instance FromJSON ContentRatingFcbmRating where
    parseJSON = parseJSONText "ContentRatingFcbmRating"

instance ToJSON ContentRatingFcbmRating where
    toJSON = toJSONText

-- | The broadcastStatus parameter filters the API response to only include
-- broadcasts with the specified status.
data LiveBroadcastsListBroadcastStatus
    = LBLBSActive
      -- ^ @active@
      -- Return current live broadcasts.
    | LBLBSAll
      -- ^ @all@
      -- Return all broadcasts.
    | LBLBSCompleted
      -- ^ @completed@
      -- Return broadcasts that have already ended.
    | LBLBSUpcoming
      -- ^ @upcoming@
      -- Return broadcasts that have not yet started.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastsListBroadcastStatus

instance FromText LiveBroadcastsListBroadcastStatus where
    fromText = \case
        "active" -> Just LBLBSActive
        "all" -> Just LBLBSAll
        "completed" -> Just LBLBSCompleted
        "upcoming" -> Just LBLBSUpcoming
        _ -> Nothing

instance ToText LiveBroadcastsListBroadcastStatus where
    toText = \case
        LBLBSActive -> "active"
        LBLBSAll -> "all"
        LBLBSCompleted -> "completed"
        LBLBSUpcoming -> "upcoming"

instance FromJSON LiveBroadcastsListBroadcastStatus where
    parseJSON = parseJSONText "LiveBroadcastsListBroadcastStatus"

instance ToJSON LiveBroadcastsListBroadcastStatus where
    toJSON = toJSONText

-- | The video\'s rating from Taiwan\'s Ministry of Culture (文化部).
data ContentRatingMoctwRating
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

instance Hashable ContentRatingMoctwRating

instance FromText ContentRatingMoctwRating where
    fromText = \case
        "moctwG" -> Just MoctwG
        "moctwP" -> Just MoctwP
        "moctwPg" -> Just MoctwPg
        "moctwR" -> Just MoctwR
        "moctwUnrated" -> Just MoctwUnrated
        _ -> Nothing

instance ToText ContentRatingMoctwRating where
    toText = \case
        MoctwG -> "moctwG"
        MoctwP -> "moctwP"
        MoctwPg -> "moctwPg"
        MoctwR -> "moctwR"
        MoctwUnrated -> "moctwUnrated"

instance FromJSON ContentRatingMoctwRating where
    parseJSON = parseJSONText "ContentRatingMoctwRating"

instance ToJSON ContentRatingMoctwRating where
    toJSON = toJSONText

-- | The video\'s rating from the Austrian Board of Media Classification
-- (Bundesministerium für Unterricht, Kunst und Kultur).
data ContentRatingBmukkRating
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

instance Hashable ContentRatingBmukkRating

instance FromText ContentRatingBmukkRating where
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

instance ToText ContentRatingBmukkRating where
    toText = \case
        BMUKK10 -> "bmukk10"
        BMUKK12 -> "bmukk12"
        BMUKK14 -> "bmukk14"
        BMUKK16 -> "bmukk16"
        BMUKK6 -> "bmukk6"
        BMUKK8 -> "bmukk8"
        BmukkAa -> "bmukkAa"
        BmukkUnrated -> "bmukkUnrated"

instance FromJSON ContentRatingBmukkRating where
    parseJSON = parseJSONText "ContentRatingBmukkRating"

instance ToJSON ContentRatingBmukkRating where
    toJSON = toJSONText

-- | The video\'s Instituto de la Cinematografía y de las Artes Audiovisuales
-- (ICAA - Spain) rating.
data ContentRatingIcaaRating
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

instance Hashable ContentRatingIcaaRating

instance FromText ContentRatingIcaaRating where
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

instance ToText ContentRatingIcaaRating where
    toText = \case
        ICAA12 -> "icaa12"
        ICAA13 -> "icaa13"
        ICAA16 -> "icaa16"
        ICAA18 -> "icaa18"
        ICAA7 -> "icaa7"
        IcaaApta -> "icaaApta"
        IcaaUnrated -> "icaaUnrated"
        IcaaX -> "icaaX"

instance FromJSON ContentRatingIcaaRating where
    parseJSON = parseJSONText "ContentRatingIcaaRating"

instance ToJSON ContentRatingIcaaRating where
    toJSON = toJSONText

-- | This value explains why YouTube rejected an uploaded video. This
-- property is only present if the uploadStatus property indicates that the
-- upload was rejected.
data VideoStatusRejectionReason
    = Claim
      -- ^ @claim@
    | Copyright
      -- ^ @copyright@
    | Duplicate
      -- ^ @duplicate@
    | InAppropriate
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

instance Hashable VideoStatusRejectionReason

instance FromText VideoStatusRejectionReason where
    fromText = \case
        "claim" -> Just Claim
        "copyright" -> Just Copyright
        "duplicate" -> Just Duplicate
        "inappropriate" -> Just InAppropriate
        "length" -> Just Length
        "termsOfUse" -> Just TermsOfUse
        "trademark" -> Just Trademark
        "uploaderAccountClosed" -> Just UploaderAccountClosed
        "uploaderAccountSuspended" -> Just UploaderAccountSuspended
        _ -> Nothing

instance ToText VideoStatusRejectionReason where
    toText = \case
        Claim -> "claim"
        Copyright -> "copyright"
        Duplicate -> "duplicate"
        InAppropriate -> "inappropriate"
        Length -> "length"
        TermsOfUse -> "termsOfUse"
        Trademark -> "trademark"
        UploaderAccountClosed -> "uploaderAccountClosed"
        UploaderAccountSuspended -> "uploaderAccountSuspended"

instance FromJSON VideoStatusRejectionReason where
    parseJSON = parseJSONText "VideoStatusRejectionReason"

instance ToJSON VideoStatusRejectionReason where
    toJSON = toJSONText

-- | The video\'s rating in the Czech Republic.
data ContentRatingCzfilmRating
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

instance Hashable ContentRatingCzfilmRating

instance FromText ContentRatingCzfilmRating where
    fromText = \case
        "czfilm12" -> Just CZFILM12
        "czfilm14" -> Just CZFILM14
        "czfilm18" -> Just CZFILM18
        "czfilmU" -> Just CzfilmU
        "czfilmUnrated" -> Just CzfilmUnrated
        _ -> Nothing

instance ToText ContentRatingCzfilmRating where
    toText = \case
        CZFILM12 -> "czfilm12"
        CZFILM14 -> "czfilm14"
        CZFILM18 -> "czfilm18"
        CzfilmU -> "czfilmU"
        CzfilmUnrated -> "czfilmUnrated"

instance FromJSON ContentRatingCzfilmRating where
    parseJSON = parseJSONText "ContentRatingCzfilmRating"

instance ToJSON ContentRatingCzfilmRating where
    toJSON = toJSONText

-- | The video\'s National Film Registry of the Russian Federation (MKRF -
-- Russia) rating.
data ContentRatingRussiaRating
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

instance Hashable ContentRatingRussiaRating

instance FromText ContentRatingRussiaRating where
    fromText = \case
        "russia0" -> Just RUSSIA0
        "russia12" -> Just RUSSIA12
        "russia16" -> Just RUSSIA16
        "russia18" -> Just RUSSIA18
        "russia6" -> Just RUSSIA6
        "russiaUnrated" -> Just RussiaUnrated
        _ -> Nothing

instance ToText ContentRatingRussiaRating where
    toText = \case
        RUSSIA0 -> "russia0"
        RUSSIA12 -> "russia12"
        RUSSIA16 -> "russia16"
        RUSSIA18 -> "russia18"
        RUSSIA6 -> "russia6"
        RussiaUnrated -> "russiaUnrated"

instance FromJSON ContentRatingRussiaRating where
    parseJSON = parseJSONText "ContentRatingRussiaRating"

instance ToJSON ContentRatingRussiaRating where
    toJSON = toJSONText

-- | The video\'s rating from the Commission de Contrôle des Films (Belgium).
data ContentRatingCicfRating
    = CicfE
      -- ^ @cicfE@
    | CicfKntEna
      -- ^ @cicfKntEna@
    | CicfKtEa
      -- ^ @cicfKtEa@
    | CicfUnrated
      -- ^ @cicfUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingCicfRating

instance FromText ContentRatingCicfRating where
    fromText = \case
        "cicfE" -> Just CicfE
        "cicfKntEna" -> Just CicfKntEna
        "cicfKtEa" -> Just CicfKtEa
        "cicfUnrated" -> Just CicfUnrated
        _ -> Nothing

instance ToText ContentRatingCicfRating where
    toText = \case
        CicfE -> "cicfE"
        CicfKntEna -> "cicfKntEna"
        CicfKtEa -> "cicfKtEa"
        CicfUnrated -> "cicfUnrated"

instance FromJSON ContentRatingCicfRating where
    parseJSON = parseJSONText "ContentRatingCicfRating"

instance ToJSON ContentRatingCicfRating where
    toJSON = toJSONText

-- | This property has been deprecated. Use the
-- contentDetails.contentRating.cncRating instead.
data ContentRatingFmocRating
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

instance Hashable ContentRatingFmocRating

instance FromText ContentRatingFmocRating where
    fromText = \case
        "fmoc10" -> Just FMOC10
        "fmoc12" -> Just FMOC12
        "fmoc16" -> Just FMOC16
        "fmoc18" -> Just FMOC18
        "fmocE" -> Just FmocE
        "fmocU" -> Just FmocU
        "fmocUnrated" -> Just FmocUnrated
        _ -> Nothing

instance ToText ContentRatingFmocRating where
    toText = \case
        FMOC10 -> "fmoc10"
        FMOC12 -> "fmoc12"
        FMOC16 -> "fmoc16"
        FMOC18 -> "fmoc18"
        FmocE -> "fmocE"
        FmocU -> "fmocU"
        FmocUnrated -> "fmocUnrated"

instance FromJSON ContentRatingFmocRating where
    parseJSON = parseJSONText "ContentRatingFmocRating"

instance ToJSON ContentRatingFmocRating where
    toJSON = toJSONText

-- | The broadcastStatus parameter identifies the state to which the
-- broadcast is changing. Note that to transition a broadcast to either the
-- testing or live state, the status.streamStatus must be active for the
-- stream that the broadcast is bound to.
data LiveBroadcastsTransitionBroadcastStatus
    = LBTBSComplete
      -- ^ @complete@
      -- The broadcast is over. YouTube stops transmitting video.
    | LBTBSLive
      -- ^ @live@
      -- The broadcast is visible to its audience. YouTube transmits video to the
      -- broadcast\'s monitor stream and its broadcast stream.
    | LBTBSTesting
      -- ^ @testing@
      -- Start testing the broadcast. YouTube transmits video to the broadcast\'s
      -- monitor stream. Note that you can only transition a broadcast to the
      -- testing state if its contentDetails.monitorStream.enableMonitorStream
      -- property is set to true.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastsTransitionBroadcastStatus

instance FromText LiveBroadcastsTransitionBroadcastStatus where
    fromText = \case
        "complete" -> Just LBTBSComplete
        "live" -> Just LBTBSLive
        "testing" -> Just LBTBSTesting
        _ -> Nothing

instance ToText LiveBroadcastsTransitionBroadcastStatus where
    toText = \case
        LBTBSComplete -> "complete"
        LBTBSLive -> "live"
        LBTBSTesting -> "testing"

instance FromJSON LiveBroadcastsTransitionBroadcastStatus where
    parseJSON = parseJSONText "LiveBroadcastsTransitionBroadcastStatus"

instance ToJSON LiveBroadcastsTransitionBroadcastStatus where
    toJSON = toJSONText

-- | The video\'s rating from the Maldives National Bureau of Classification.
data ContentRatingNbcRating
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

instance Hashable ContentRatingNbcRating

instance FromText ContentRatingNbcRating where
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

instance ToText ContentRatingNbcRating where
    toText = \case
        Nbc12plus -> "nbc12plus"
        Nbc15plus -> "nbc15plus"
        Nbc18plus -> "nbc18plus"
        Nbc18plusr -> "nbc18plusr"
        NbcG -> "nbcG"
        NbcPg -> "nbcPg"
        NbcPu -> "nbcPu"
        NbcUnrated -> "nbcUnrated"

instance FromJSON ContentRatingNbcRating where
    parseJSON = parseJSONText "ContentRatingNbcRating"

instance ToJSON ContentRatingNbcRating where
    toJSON = toJSONText

-- | Priority of the live broadcast event (internal state).
data LiveBroadcastStatusLiveBroadcastPriority
    = High
      -- ^ @high@
    | Low
      -- ^ @low@
    | Normal
      -- ^ @normal@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastStatusLiveBroadcastPriority

instance FromText LiveBroadcastStatusLiveBroadcastPriority where
    fromText = \case
        "high" -> Just High
        "low" -> Just Low
        "normal" -> Just Normal
        _ -> Nothing

instance ToText LiveBroadcastStatusLiveBroadcastPriority where
    toText = \case
        High -> "high"
        Low -> "low"
        Normal -> "normal"

instance FromJSON LiveBroadcastStatusLiveBroadcastPriority where
    parseJSON = parseJSONText "LiveBroadcastStatusLiveBroadcastPriority"

instance ToJSON LiveBroadcastStatusLiveBroadcastPriority where
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

data VideoSuggestionsProcessingWarningsItem
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

instance Hashable VideoSuggestionsProcessingWarningsItem

instance FromText VideoSuggestionsProcessingWarningsItem where
    fromText = \case
        "hasEditlist" -> Just HasEditList
        "inconsistentResolution" -> Just InconsistentResolution
        "problematicAudioCodec" -> Just ProblematicAudioCodec
        "problematicVideoCodec" -> Just ProblematicVideoCodec
        "unknownAudioCodec" -> Just UnknownAudioCodec
        "unknownContainer" -> Just UnknownContainer
        "unknownVideoCodec" -> Just UnknownVideoCodec
        _ -> Nothing

instance ToText VideoSuggestionsProcessingWarningsItem where
    toText = \case
        HasEditList -> "hasEditlist"
        InconsistentResolution -> "inconsistentResolution"
        ProblematicAudioCodec -> "problematicAudioCodec"
        ProblematicVideoCodec -> "problematicVideoCodec"
        UnknownAudioCodec -> "unknownAudioCodec"
        UnknownContainer -> "unknownContainer"
        UnknownVideoCodec -> "unknownVideoCodec"

instance FromJSON VideoSuggestionsProcessingWarningsItem where
    parseJSON = parseJSONText "VideoSuggestionsProcessingWarningsItem"

instance ToJSON VideoSuggestionsProcessingWarningsItem where
    toJSON = toJSONText

-- | Describes in which corner of the video the visual widget will appear.
data InvideoPositionCornerPosition
    = BottomLeft
      -- ^ @bottomLeft@
    | BottomRight
      -- ^ @bottomRight@
    | TopLeft
      -- ^ @topLeft@
    | TopRight
      -- ^ @topRight@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InvideoPositionCornerPosition

instance FromText InvideoPositionCornerPosition where
    fromText = \case
        "bottomLeft" -> Just BottomLeft
        "bottomRight" -> Just BottomRight
        "topLeft" -> Just TopLeft
        "topRight" -> Just TopRight
        _ -> Nothing

instance ToText InvideoPositionCornerPosition where
    toText = \case
        BottomLeft -> "bottomLeft"
        BottomRight -> "bottomRight"
        TopLeft -> "topLeft"
        TopRight -> "topRight"

instance FromJSON InvideoPositionCornerPosition where
    parseJSON = parseJSONText "InvideoPositionCornerPosition"

instance ToJSON InvideoPositionCornerPosition where
    toJSON = toJSONText

-- | The long uploads status of this channel. See
data ChannelStatusLongUploadsStatus
    = Allowed
      -- ^ @allowed@
    | Disallowed
      -- ^ @disallowed@
    | Eligible
      -- ^ @eligible@
    | LongUploadsUnspecified
      -- ^ @longUploadsUnspecified@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelStatusLongUploadsStatus

instance FromText ChannelStatusLongUploadsStatus where
    fromText = \case
        "allowed" -> Just Allowed
        "disallowed" -> Just Disallowed
        "eligible" -> Just Eligible
        "longUploadsUnspecified" -> Just LongUploadsUnspecified
        _ -> Nothing

instance ToText ChannelStatusLongUploadsStatus where
    toText = \case
        Allowed -> "allowed"
        Disallowed -> "disallowed"
        Eligible -> "eligible"
        LongUploadsUnspecified -> "longUploadsUnspecified"

instance FromJSON ChannelStatusLongUploadsStatus where
    parseJSON = parseJSONText "ChannelStatusLongUploadsStatus"

instance ToJSON ChannelStatusLongUploadsStatus where
    toJSON = toJSONText

-- | The video\'s rating from Luxembourg\'s Commission de surveillance de la
-- classification des films (CSCF).
data ContentRatingCscfRating
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

instance Hashable ContentRatingCscfRating

instance FromText ContentRatingCscfRating where
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

instance ToText ContentRatingCscfRating where
    toText = \case
        CSCF12 -> "cscf12"
        CSCF16 -> "cscf16"
        CSCF18 -> "cscf18"
        CSCF6 -> "cscf6"
        CSCF9 -> "cscf9"
        CscfA -> "cscfA"
        CscfAl -> "cscfAl"
        CscfUnrated -> "cscfUnrated"

instance FromJSON ContentRatingCscfRating where
    parseJSON = parseJSONText "ContentRatingCscfRating"

instance ToJSON ContentRatingCscfRating where
    toJSON = toJSONText

-- | The broadcast\'s recording status.
data LiveBroadcastStatusRecordingStatus
    = NotRecording
      -- ^ @notRecording@
    | Recorded
      -- ^ @recorded@
    | Recording
      -- ^ @recording@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LiveBroadcastStatusRecordingStatus

instance FromText LiveBroadcastStatusRecordingStatus where
    fromText = \case
        "notRecording" -> Just NotRecording
        "recorded" -> Just Recorded
        "recording" -> Just Recording
        _ -> Nothing

instance ToText LiveBroadcastStatusRecordingStatus where
    toText = \case
        NotRecording -> "notRecording"
        Recorded -> "recorded"
        Recording -> "recording"

instance FromJSON LiveBroadcastStatusRecordingStatus where
    parseJSON = parseJSONText "LiveBroadcastStatusRecordingStatus"

instance ToJSON LiveBroadcastStatusRecordingStatus where
    toJSON = toJSONText

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

instance FromJSON VideoFileDetailsVideoStreamRotation where
    parseJSON = parseJSONText "VideoFileDetailsVideoStreamRotation"

instance ToJSON VideoFileDetailsVideoStreamRotation where
    toJSON = toJSONText

-- | The video\'s General Directorate of Radio, Television and Cinematography
-- (Mexico) rating.
data ContentRatingRtcRating
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

instance Hashable ContentRatingRtcRating

instance FromText ContentRatingRtcRating where
    fromText = \case
        "rtcA" -> Just RtcA
        "rtcAa" -> Just RtcAa
        "rtcB" -> Just RtcB
        "rtcB15" -> Just RTCB15
        "rtcC" -> Just RtcC
        "rtcD" -> Just RtcD
        "rtcUnrated" -> Just RtcUnrated
        _ -> Nothing

instance ToText ContentRatingRtcRating where
    toText = \case
        RtcA -> "rtcA"
        RtcAa -> "rtcAa"
        RtcB -> "rtcB"
        RTCB15 -> "rtcB15"
        RtcC -> "rtcC"
        RtcD -> "rtcD"
        RtcUnrated -> "rtcUnrated"

instance FromJSON ContentRatingRtcRating where
    parseJSON = parseJSONText "ContentRatingRtcRating"

instance ToJSON ContentRatingRtcRating where
    toJSON = toJSONText

-- | Set this parameter to limit the returned comment threads to a particular
-- moderation state. Note: This parameter is not supported for use in
-- conjunction with the id parameter.
data CommentThreadsListModerationStatus
    = HeldForReview
      -- ^ @heldForReview@
      -- Retrieve comment threads that are awaiting review by a moderator. A
      -- comment thread can be included in the response if the top-level comment
      -- or at least one of the replies to that comment are awaiting review.
    | LikelySpam
      -- ^ @likelySpam@
      -- Retrieve comment threads classified as likely to be spam. A comment
      -- thread can be included in the response if the top-level comment or at
      -- least one of the replies to that comment is considered likely to be
      -- spam.
    | Published
      -- ^ @published@
      -- Retrieve threads of published comments. This is the default value. A
      -- comment thread can be included in the response if its top-level comment
      -- has been published.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentThreadsListModerationStatus

instance FromText CommentThreadsListModerationStatus where
    fromText = \case
        "heldForReview" -> Just HeldForReview
        "likelySpam" -> Just LikelySpam
        "published" -> Just Published
        _ -> Nothing

instance ToText CommentThreadsListModerationStatus where
    toText = \case
        HeldForReview -> "heldForReview"
        LikelySpam -> "likelySpam"
        Published -> "published"

instance FromJSON CommentThreadsListModerationStatus where
    parseJSON = parseJSONText "CommentThreadsListModerationStatus"

instance ToJSON CommentThreadsListModerationStatus where
    toJSON = toJSONText

-- | The video\'s rating in Iceland.
data ContentRatingSmaisRating
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

instance Hashable ContentRatingSmaisRating

instance FromText ContentRatingSmaisRating where
    fromText = \case
        "smais12" -> Just SMAIS12
        "smais14" -> Just SMAIS14
        "smais16" -> Just SMAIS16
        "smais18" -> Just SMAIS18
        "smais7" -> Just SMAIS7
        "smaisL" -> Just SmaisL
        "smaisUnrated" -> Just SmaisUnrated
        _ -> Nothing

instance ToText ContentRatingSmaisRating where
    toText = \case
        SMAIS12 -> "smais12"
        SMAIS14 -> "smais14"
        SMAIS16 -> "smais16"
        SMAIS18 -> "smais18"
        SMAIS7 -> "smais7"
        SmaisL -> "smaisL"
        SmaisUnrated -> "smaisUnrated"

instance FromJSON ContentRatingSmaisRating where
    parseJSON = parseJSONText "ContentRatingSmaisRating"

instance ToJSON ContentRatingSmaisRating where
    toJSON = toJSONText

-- | A rating that YouTube uses to identify age-restricted content.
data ContentRatingYtRating
    = YtAgeRestricted
      -- ^ @ytAgeRestricted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingYtRating

instance FromText ContentRatingYtRating where
    fromText = \case
        "ytAgeRestricted" -> Just YtAgeRestricted
        _ -> Nothing

instance ToText ContentRatingYtRating where
    toText = \case
        YtAgeRestricted -> "ytAgeRestricted"

instance FromJSON ContentRatingYtRating where
    parseJSON = parseJSONText "ContentRatingYtRating"

instance ToJSON ContentRatingYtRating where
    toJSON = toJSONText

-- | The value of captions indicates whether the video has captions or not.
data VideoContentDetailsCaption
    = False'
      -- ^ @false@
    | True'
      -- ^ @true@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoContentDetailsCaption

instance FromText VideoContentDetailsCaption where
    fromText = \case
        "false" -> Just False'
        "true" -> Just True'
        _ -> Nothing

instance ToText VideoContentDetailsCaption where
    toText = \case
        False' -> "false"
        True' -> "true"

instance FromJSON VideoContentDetailsCaption where
    parseJSON = parseJSONText "VideoContentDetailsCaption"

instance ToJSON VideoContentDetailsCaption where
    toJSON = toJSONText

-- | The order parameter specifies the method that will be used to sort
-- resources in the API response.
data SubscriptionsListOrder
    = SLOAlphabetical
      -- ^ @alphabetical@
      -- Sort alphabetically.
    | SLORelevance
      -- ^ @relevance@
      -- Sort by relevance.
    | SLOUnread
      -- ^ @unread@
      -- Sort by order of activity.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SubscriptionsListOrder

instance FromText SubscriptionsListOrder where
    fromText = \case
        "alphabetical" -> Just SLOAlphabetical
        "relevance" -> Just SLORelevance
        "unread" -> Just SLOUnread
        _ -> Nothing

instance ToText SubscriptionsListOrder where
    toText = \case
        SLOAlphabetical -> "alphabetical"
        SLORelevance -> "relevance"
        SLOUnread -> "unread"

instance FromJSON SubscriptionsListOrder where
    parseJSON = parseJSONText "SubscriptionsListOrder"

instance ToJSON SubscriptionsListOrder where
    toJSON = toJSONText

-- | The video\'s British Board of Film Classification (BBFC) rating.
data ContentRatingBbfcRating
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

instance Hashable ContentRatingBbfcRating

instance FromText ContentRatingBbfcRating where
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

instance ToText ContentRatingBbfcRating where
    toText = \case
        BBFC12 -> "bbfc12"
        Bbfc12a -> "bbfc12a"
        BBFC15 -> "bbfc15"
        BBFC18 -> "bbfc18"
        BbfcPg -> "bbfcPg"
        BBFCR18 -> "bbfcR18"
        BbfcU -> "bbfcU"
        BbfcUnrated -> "bbfcUnrated"

instance FromJSON ContentRatingBbfcRating where
    parseJSON = parseJSONText "ContentRatingBbfcRating"

instance ToJSON ContentRatingBbfcRating where
    toJSON = toJSONText

-- | The video\'s TV Parental Guidelines (TVPG) rating.
data ContentRatingTvpgRating
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

instance Hashable ContentRatingTvpgRating

instance FromText ContentRatingTvpgRating where
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

instance ToText ContentRatingTvpgRating where
    toText = \case
        PG14 -> "pg14"
        TvpgG -> "tvpgG"
        TvpgMa -> "tvpgMa"
        TvpgPg -> "tvpgPg"
        TvpgUnrated -> "tvpgUnrated"
        TvpgY -> "tvpgY"
        TVPGY7 -> "tvpgY7"
        TvpgY7Fv -> "tvpgY7Fv"

instance FromJSON ContentRatingTvpgRating where
    parseJSON = parseJSONText "ContentRatingTvpgRating"

instance ToJSON ContentRatingTvpgRating where
    toJSON = toJSONText

-- | This parameter indicates whether the API should return comments
-- formatted as HTML or as plain text.
data CommentsListTextFormat
    = HTML
      -- ^ @html@
      -- Returns the comments in HTML format. This is the default value.
    | PlainText
      -- ^ @plainText@
      -- Returns the comments in plain text format.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentsListTextFormat

instance FromText CommentsListTextFormat where
    fromText = \case
        "html" -> Just HTML
        "plainText" -> Just PlainText
        _ -> Nothing

instance ToText CommentsListTextFormat where
    toText = \case
        HTML -> "html"
        PlainText -> "plainText"

instance FromJSON CommentsListTextFormat where
    parseJSON = parseJSONText "CommentsListTextFormat"

instance ToJSON CommentsListTextFormat where
    toJSON = toJSONText

-- | Specifies the rating to record.
data VideosRateRating
    = VDislike
      -- ^ @dislike@
      -- Records that the authenticated user disliked the video.
    | VLike
      -- ^ @like@
      -- Records that the authenticated user liked the video.
    | VNone
      -- ^ @none@
      -- Removes any rating that the authenticated user had previously set for
      -- the video.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideosRateRating

instance FromText VideosRateRating where
    fromText = \case
        "dislike" -> Just VDislike
        "like" -> Just VLike
        "none" -> Just VNone
        _ -> Nothing

instance ToText VideosRateRating where
    toText = \case
        VDislike -> "dislike"
        VLike -> "like"
        VNone -> "none"

instance FromJSON VideosRateRating where
    parseJSON = parseJSONText "VideosRateRating"

instance ToJSON VideosRateRating where
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

-- | The video\'s rating in Slovakia.
data ContentRatingSkfilmRating
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

instance Hashable ContentRatingSkfilmRating

instance FromText ContentRatingSkfilmRating where
    fromText = \case
        "skfilmG" -> Just SkfilmG
        "skfilmP2" -> Just SKFILMP2
        "skfilmP5" -> Just SKFILMP5
        "skfilmP8" -> Just SKFILMP8
        "skfilmUnrated" -> Just SkfilmUnrated
        _ -> Nothing

instance ToText ContentRatingSkfilmRating where
    toText = \case
        SkfilmG -> "skfilmG"
        SKFILMP2 -> "skfilmP2"
        SKFILMP5 -> "skfilmP5"
        SKFILMP8 -> "skfilmP8"
        SkfilmUnrated -> "skfilmUnrated"

instance FromJSON ContentRatingSkfilmRating where
    parseJSON = parseJSONText "ContentRatingSkfilmRating"

instance ToJSON ContentRatingSkfilmRating where
    toJSON = toJSONText

-- | The type of the channel section.
data ChannelSectionSnippetType
    = AllPlayLists
      -- ^ @allPlaylists@
    | ChannelsectionTypeUndefined
      -- ^ @channelsectionTypeUndefined@
    | CompletedEvents
      -- ^ @completedEvents@
    | LikedPlayLists
      -- ^ @likedPlaylists@
    | Likes
      -- ^ @likes@
    | LiveEvents
      -- ^ @liveEvents@
    | MultipleChannels
      -- ^ @multipleChannels@
    | MultiplePlayLists
      -- ^ @multiplePlaylists@
    | PopularUploads
      -- ^ @popularUploads@
    | PostedPlayLists
      -- ^ @postedPlaylists@
    | PostedVideos
      -- ^ @postedVideos@
    | RecentActivity
      -- ^ @recentActivity@
    | RecentPosts
      -- ^ @recentPosts@
    | RecentUploads
      -- ^ @recentUploads@
    | SinglePlayList
      -- ^ @singlePlaylist@
    | Subscriptions
      -- ^ @subscriptions@
    | UpcomingEvents
      -- ^ @upcomingEvents@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelSectionSnippetType

instance FromText ChannelSectionSnippetType where
    fromText = \case
        "allPlaylists" -> Just AllPlayLists
        "channelsectionTypeUndefined" -> Just ChannelsectionTypeUndefined
        "completedEvents" -> Just CompletedEvents
        "likedPlaylists" -> Just LikedPlayLists
        "likes" -> Just Likes
        "liveEvents" -> Just LiveEvents
        "multipleChannels" -> Just MultipleChannels
        "multiplePlaylists" -> Just MultiplePlayLists
        "popularUploads" -> Just PopularUploads
        "postedPlaylists" -> Just PostedPlayLists
        "postedVideos" -> Just PostedVideos
        "recentActivity" -> Just RecentActivity
        "recentPosts" -> Just RecentPosts
        "recentUploads" -> Just RecentUploads
        "singlePlaylist" -> Just SinglePlayList
        "subscriptions" -> Just Subscriptions
        "upcomingEvents" -> Just UpcomingEvents
        _ -> Nothing

instance ToText ChannelSectionSnippetType where
    toText = \case
        AllPlayLists -> "allPlaylists"
        ChannelsectionTypeUndefined -> "channelsectionTypeUndefined"
        CompletedEvents -> "completedEvents"
        LikedPlayLists -> "likedPlaylists"
        Likes -> "likes"
        LiveEvents -> "liveEvents"
        MultipleChannels -> "multipleChannels"
        MultiplePlayLists -> "multiplePlaylists"
        PopularUploads -> "popularUploads"
        PostedPlayLists -> "postedPlaylists"
        PostedVideos -> "postedVideos"
        RecentActivity -> "recentActivity"
        RecentPosts -> "recentPosts"
        RecentUploads -> "recentUploads"
        SinglePlayList -> "singlePlaylist"
        Subscriptions -> "subscriptions"
        UpcomingEvents -> "upcomingEvents"

instance FromJSON ChannelSectionSnippetType where
    parseJSON = parseJSONText "ChannelSectionSnippetType"

instance ToJSON ChannelSectionSnippetType where
    toJSON = toJSONText

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

instance FromJSON VideoProcessingDetailsProcessingStatus where
    parseJSON = parseJSONText "VideoProcessingDetailsProcessingStatus"

instance ToJSON VideoProcessingDetailsProcessingStatus where
    toJSON = toJSONText

-- | The type of call-to-action, a message to the user indicating action that
-- can be taken.
data ActivityContentDetailsPromotedItemCtaType
    = Unspecified
      -- ^ @unspecified@
    | VisitAdvertiserSite
      -- ^ @visitAdvertiserSite@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivityContentDetailsPromotedItemCtaType

instance FromText ActivityContentDetailsPromotedItemCtaType where
    fromText = \case
        "unspecified" -> Just Unspecified
        "visitAdvertiserSite" -> Just VisitAdvertiserSite
        _ -> Nothing

instance ToText ActivityContentDetailsPromotedItemCtaType where
    toText = \case
        Unspecified -> "unspecified"
        VisitAdvertiserSite -> "visitAdvertiserSite"

instance FromJSON ActivityContentDetailsPromotedItemCtaType where
    parseJSON = parseJSONText "ActivityContentDetailsPromotedItemCtaType"

instance ToJSON ActivityContentDetailsPromotedItemCtaType where
    toJSON = toJSONText

-- | The channelType parameter lets you restrict a search to a particular
-- type of channel.
data SearchListChannelType
    = SLCTAny
      -- ^ @any@
      -- Return all channels.
    | SLCTShow
      -- ^ @show@
      -- Only retrieve shows.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchListChannelType

instance FromText SearchListChannelType where
    fromText = \case
        "any" -> Just SLCTAny
        "show" -> Just SLCTShow
        _ -> Nothing

instance ToText SearchListChannelType where
    toText = \case
        SLCTAny -> "any"
        SLCTShow -> "show"

instance FromJSON SearchListChannelType where
    parseJSON = parseJSONText "SearchListChannelType"

instance ToJSON SearchListChannelType where
    toJSON = toJSONText

-- | The video\'s Korea Media Rating Board (영상물등급위원회) rating. The
-- KMRB rates videos in South Korea.
data ContentRatingKmrbRating
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

instance Hashable ContentRatingKmrbRating

instance FromText ContentRatingKmrbRating where
    fromText = \case
        "kmrb12plus" -> Just Kmrb12plus
        "kmrb15plus" -> Just Kmrb15plus
        "kmrbAll" -> Just KmrbAll
        "kmrbR" -> Just KmrbR
        "kmrbTeenr" -> Just KmrbTeenr
        "kmrbUnrated" -> Just KmrbUnrated
        _ -> Nothing

instance ToText ContentRatingKmrbRating where
    toText = \case
        Kmrb12plus -> "kmrb12plus"
        Kmrb15plus -> "kmrb15plus"
        KmrbAll -> "kmrbAll"
        KmrbR -> "kmrbR"
        KmrbTeenr -> "kmrbTeenr"
        KmrbUnrated -> "kmrbUnrated"

instance FromJSON ContentRatingKmrbRating where
    parseJSON = parseJSONText "ContentRatingKmrbRating"

instance ToJSON ContentRatingKmrbRating where
    toJSON = toJSONText

-- | The video\'s Office of Film and Literature Classification (OFLC - New
-- Zealand) rating.
data ContentRatingOflcRating
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

instance Hashable ContentRatingOflcRating

instance FromText ContentRatingOflcRating where
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

instance ToText ContentRatingOflcRating where
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

instance FromJSON ContentRatingOflcRating where
    parseJSON = parseJSONText "ContentRatingOflcRating"

instance ToJSON ContentRatingOflcRating where
    toJSON = toJSONText

-- | Rating system in France - Commission de classification cinematographique
data ContentRatingCNCRating
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

instance Hashable ContentRatingCNCRating

instance FromText ContentRatingCNCRating where
    fromText = \case
        "cnc10" -> Just CNC10
        "cnc12" -> Just CNC12
        "cnc16" -> Just CNC16
        "cnc18" -> Just CNC18
        "cncE" -> Just CNCE
        "cncT" -> Just CNCT
        "cncUnrated" -> Just CNCUnrated
        _ -> Nothing

instance ToText ContentRatingCNCRating where
    toText = \case
        CNC10 -> "cnc10"
        CNC12 -> "cnc12"
        CNC16 -> "cnc16"
        CNC18 -> "cnc18"
        CNCE -> "cncE"
        CNCT -> "cncT"
        CNCUnrated -> "cncUnrated"

instance FromJSON ContentRatingCNCRating where
    parseJSON = parseJSONText "ContentRatingCNCRating"

instance ToJSON ContentRatingCNCRating where
    toJSON = toJSONText

-- | The video\'s rating in Greece.
data ContentRatingGrfilmRating
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

instance Hashable ContentRatingGrfilmRating

instance FromText ContentRatingGrfilmRating where
    fromText = \case
        "grfilmE" -> Just GrfilmE
        "grfilmK" -> Just GrfilmK
        "grfilmK13" -> Just GRFILMK13
        "grfilmK17" -> Just GRFILMK17
        "grfilmUnrated" -> Just GrfilmUnrated
        _ -> Nothing

instance ToText ContentRatingGrfilmRating where
    toText = \case
        GrfilmE -> "grfilmE"
        GrfilmK -> "grfilmK"
        GRFILMK13 -> "grfilmK13"
        GRFILMK17 -> "grfilmK17"
        GrfilmUnrated -> "grfilmUnrated"

instance FromJSON ContentRatingGrfilmRating where
    parseJSON = parseJSONText "ContentRatingGrfilmRating"

instance ToJSON ContentRatingGrfilmRating where
    toJSON = toJSONText

-- | The order parameter specifies the order in which the API response should
-- list comment threads. Valid values are: - time - Comment threads are
-- ordered by time. This is the default behavior. - relevance - Comment
-- threads are ordered by relevance.Note: This parameter is not supported
-- for use in conjunction with the id parameter.
data CommentThreadsListOrder
    = CTLORelevance
      -- ^ @relevance@
      -- Order by relevance.
    | CTLOTime
      -- ^ @time@
      -- Order by time.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentThreadsListOrder

instance FromText CommentThreadsListOrder where
    fromText = \case
        "relevance" -> Just CTLORelevance
        "time" -> Just CTLOTime
        _ -> Nothing

instance ToText CommentThreadsListOrder where
    toText = \case
        CTLORelevance -> "relevance"
        CTLOTime -> "time"

instance FromJSON CommentThreadsListOrder where
    parseJSON = parseJSONText "CommentThreadsListOrder"

instance ToJSON CommentThreadsListOrder where
    toJSON = toJSONText

-- | The video\'s rating in Israel.
data ContentRatingIlfilmRating
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

instance Hashable ContentRatingIlfilmRating

instance FromText ContentRatingIlfilmRating where
    fromText = \case
        "ilfilm12" -> Just ILFILM12
        "ilfilm16" -> Just ILFILM16
        "ilfilm18" -> Just ILFILM18
        "ilfilmAa" -> Just IlfilmAa
        "ilfilmUnrated" -> Just IlfilmUnrated
        _ -> Nothing

instance ToText ContentRatingIlfilmRating where
    toText = \case
        ILFILM12 -> "ilfilm12"
        ILFILM16 -> "ilfilm16"
        ILFILM18 -> "ilfilm18"
        IlfilmAa -> "ilfilmAa"
        IlfilmUnrated -> "ilfilmUnrated"

instance FromJSON ContentRatingIlfilmRating where
    parseJSON = parseJSONText "ContentRatingIlfilmRating"

instance ToJSON ContentRatingIlfilmRating where
    toJSON = toJSONText

-- | The video\'s rating in Poland.
data ContentRatingNbcplRating
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

instance Hashable ContentRatingNbcplRating

instance FromText ContentRatingNbcplRating where
    fromText = \case
        "nbcpl18plus" -> Just Nbcpl18plus
        "nbcplI" -> Just NbcplI
        "nbcplIi" -> Just NbcplIi
        "nbcplIii" -> Just NbcplIii
        "nbcplIv" -> Just NbcplIv
        "nbcplUnrated" -> Just NbcplUnrated
        _ -> Nothing

instance ToText ContentRatingNbcplRating where
    toText = \case
        Nbcpl18plus -> "nbcpl18plus"
        NbcplI -> "nbcplI"
        NbcplIi -> "nbcplIi"
        NbcplIii -> "nbcplIii"
        NbcplIv -> "nbcplIv"
        NbcplUnrated -> "nbcplUnrated"

instance FromJSON ContentRatingNbcplRating where
    parseJSON = parseJSONText "ContentRatingNbcplRating"

instance ToJSON ContentRatingNbcplRating where
    toJSON = toJSONText

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

instance FromJSON VideoStatusUploadStatus where
    parseJSON = parseJSONText "VideoStatusUploadStatus"

instance ToJSON VideoStatusUploadStatus where
    toJSON = toJSONText

-- | The video\'s rating from Ireland\'s Raidió Teilifís Éireann.
data ContentRatingRteRating
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

instance Hashable ContentRatingRteRating

instance FromText ContentRatingRteRating where
    fromText = \case
        "rteCh" -> Just RteCh
        "rteGa" -> Just RteGa
        "rteMa" -> Just RteMa
        "rtePs" -> Just RtePs
        "rteUnrated" -> Just RteUnrated
        _ -> Nothing

instance ToText ContentRatingRteRating where
    toText = \case
        RteCh -> "rteCh"
        RteGa -> "rteGa"
        RteMa -> "rteMa"
        RtePs -> "rtePs"
        RteUnrated -> "rteUnrated"

instance FromJSON ContentRatingRteRating where
    parseJSON = parseJSONText "ContentRatingRteRating"

instance ToJSON ContentRatingRteRating where
    toJSON = toJSONText

-- | Set this parameter\'s value to html or plainText to instruct the API to
-- return the comments left by users in html formatted or in plain text.
data CommentThreadsListTextFormat
    = CTLTFHTML
      -- ^ @html@
      -- Returns the comments in HTML format. This is the default value.
    | CTLTFPlainText
      -- ^ @plainText@
      -- Returns the comments in plain text format.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentThreadsListTextFormat

instance FromText CommentThreadsListTextFormat where
    fromText = \case
        "html" -> Just CTLTFHTML
        "plainText" -> Just CTLTFPlainText
        _ -> Nothing

instance ToText CommentThreadsListTextFormat where
    toText = \case
        CTLTFHTML -> "html"
        CTLTFPlainText -> "plainText"

instance FromJSON CommentThreadsListTextFormat where
    parseJSON = parseJSONText "CommentThreadsListTextFormat"

instance ToJSON CommentThreadsListTextFormat where
    toJSON = toJSONText

-- | The video\'s Irish Film Classification Office (IFCO - Ireland) rating.
-- See the IFCO website for more information.
data ContentRatingIfcoRating
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

instance Hashable ContentRatingIfcoRating

instance FromText ContentRatingIfcoRating where
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

instance ToText ContentRatingIfcoRating where
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

instance FromJSON ContentRatingIfcoRating where
    parseJSON = parseJSONText "ContentRatingIfcoRating"

instance ToJSON ContentRatingIfcoRating where
    toJSON = toJSONText

-- | Identifies the new moderation status of the specified comments.
data CommentsSetModerationStatusModerationStatus
    = CSMSMSHeldForReview
      -- ^ @heldForReview@
      -- Marks a comment as awaiting review by a moderator.
    | CSMSMSPublished
      -- ^ @published@
      -- Clears a comment for public display.
    | CSMSMSRejected
      -- ^ @rejected@
      -- Rejects a comment as being unfit for display. This action also
      -- effectively hides all replies to the rejected comment. Note: The API
      -- does not currently provide a way to list or otherwise discover rejected
      -- comments. However, you can change the moderation status of a rejected
      -- comment if you still know its ID. If you were to change the moderation
      -- status of a rejected comment, the comment replies would subsequently be
      -- discoverable again as well.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentsSetModerationStatusModerationStatus

instance FromText CommentsSetModerationStatusModerationStatus where
    fromText = \case
        "heldForReview" -> Just CSMSMSHeldForReview
        "published" -> Just CSMSMSPublished
        "rejected" -> Just CSMSMSRejected
        _ -> Nothing

instance ToText CommentsSetModerationStatusModerationStatus where
    toText = \case
        CSMSMSHeldForReview -> "heldForReview"
        CSMSMSPublished -> "published"
        CSMSMSRejected -> "rejected"

instance FromJSON CommentsSetModerationStatusModerationStatus where
    parseJSON = parseJSONText "CommentsSetModerationStatusModerationStatus"

instance ToJSON CommentsSetModerationStatusModerationStatus where
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

-- | The video\'s rating from Medietilsynet, the Norwegian Media Authority.
data ContentRatingMedietilsynetRating
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

instance Hashable ContentRatingMedietilsynetRating

instance FromText ContentRatingMedietilsynetRating where
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

instance ToText ContentRatingMedietilsynetRating where
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

instance FromJSON ContentRatingMedietilsynetRating where
    parseJSON = parseJSONText "ContentRatingMedietilsynetRating"

instance ToJSON ContentRatingMedietilsynetRating where
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

-- | The type of activity this subscription is for (only uploads,
-- everything).
data SubscriptionContentDetailsActivityType
    = All
      -- ^ @all@
    | Uploads
      -- ^ @uploads@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SubscriptionContentDetailsActivityType

instance FromText SubscriptionContentDetailsActivityType where
    fromText = \case
        "all" -> Just All
        "uploads" -> Just Uploads
        _ -> Nothing

instance ToText SubscriptionContentDetailsActivityType where
    toText = \case
        All -> "all"
        Uploads -> "uploads"

instance FromJSON SubscriptionContentDetailsActivityType where
    parseJSON = parseJSONText "SubscriptionContentDetailsActivityType"

instance ToJSON SubscriptionContentDetailsActivityType where
    toJSON = toJSONText

-- | The video\'s rating from South Africa\'s Film and Publication Board.
data ContentRatingFpbRating
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

instance Hashable ContentRatingFpbRating

instance FromText ContentRatingFpbRating where
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

instance ToText ContentRatingFpbRating where
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

instance FromJSON ContentRatingFpbRating where
    parseJSON = parseJSONText "ContentRatingFpbRating"

instance ToJSON ContentRatingFpbRating where
    toJSON = toJSONText

-- | The videoDimension parameter lets you restrict a search to only retrieve
-- 2D or 3D videos. If you specify a value for this parameter, you must
-- also set the type parameter\'s value to video.
data SearchListVideoDimension
    = S2D
      -- ^ @2d@
      -- Restrict search results to exclude 3D videos.
    | S3D
      -- ^ @3d@
      -- Restrict search results to only include 3D videos.
    | SAny
      -- ^ @any@
      -- Include both 3D and non-3D videos in returned results. This is the
      -- default value.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchListVideoDimension

instance FromText SearchListVideoDimension where
    fromText = \case
        "2d" -> Just S2D
        "3d" -> Just S3D
        "any" -> Just SAny
        _ -> Nothing

instance ToText SearchListVideoDimension where
    toText = \case
        S2D -> "2d"
        S3D -> "3d"
        SAny -> "any"

instance FromJSON SearchListVideoDimension where
    parseJSON = parseJSONText "SearchListVideoDimension"

instance ToJSON SearchListVideoDimension where
    toJSON = toJSONText

-- | The video\'s rating from the Nacionãlais Kino centrs (National Film
-- Centre of Latvia).
data ContentRatingNkclvRating
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

instance Hashable ContentRatingNkclvRating

instance FromText ContentRatingNkclvRating where
    fromText = \case
        "nkclv12plus" -> Just Nkclv12plus
        "nkclv18plus" -> Just Nkclv18plus
        "nkclv7plus" -> Just Nkclv7plus
        "nkclvU" -> Just NkclvU
        "nkclvUnrated" -> Just NkclvUnrated
        _ -> Nothing

instance ToText ContentRatingNkclvRating where
    toText = \case
        Nkclv12plus -> "nkclv12plus"
        Nkclv18plus -> "nkclv18plus"
        Nkclv7plus -> "nkclv7plus"
        NkclvU -> "nkclvU"
        NkclvUnrated -> "nkclvUnrated"

instance FromJSON ContentRatingNkclvRating where
    parseJSON = parseJSONText "ContentRatingNkclvRating"

instance ToJSON ContentRatingNkclvRating where
    toJSON = toJSONText

-- | The videoType parameter lets you restrict a search to a particular type
-- of videos. If you specify a value for this parameter, you must also set
-- the type parameter\'s value to video.
data SearchListVideoType
    = SLVTAny
      -- ^ @any@
      -- Return all videos.
    | SLVTEpisode
      -- ^ @episode@
      -- Only retrieve episodes of shows.
    | SLVTMovie
      -- ^ @movie@
      -- Only retrieve movies.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchListVideoType

instance FromText SearchListVideoType where
    fromText = \case
        "any" -> Just SLVTAny
        "episode" -> Just SLVTEpisode
        "movie" -> Just SLVTMovie
        _ -> Nothing

instance ToText SearchListVideoType where
    toText = \case
        SLVTAny -> "any"
        SLVTEpisode -> "episode"
        SLVTMovie -> "movie"

instance FromJSON SearchListVideoType where
    parseJSON = parseJSONText "SearchListVideoType"

instance ToJSON SearchListVideoType where
    toJSON = toJSONText

-- | The video\'s rating from the Ministero dei Beni e delle Attività
-- Culturali e del Turismo (Italy).
data ContentRatingMibacRating
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

instance Hashable ContentRatingMibacRating

instance FromText ContentRatingMibacRating where
    fromText = \case
        "mibacT" -> Just MibacT
        "mibacUnrated" -> Just MibacUnrated
        "mibacVap" -> Just MibacVap
        "mibacVm12" -> Just MIBACVM12
        "mibacVm14" -> Just MIBACVM14
        "mibacVm18" -> Just MIBACVM18
        _ -> Nothing

instance ToText ContentRatingMibacRating where
    toText = \case
        MibacT -> "mibacT"
        MibacUnrated -> "mibacUnrated"
        MibacVap -> "mibacVap"
        MIBACVM12 -> "mibacVm12"
        MIBACVM14 -> "mibacVm14"
        MIBACVM18 -> "mibacVm18"

instance FromJSON ContentRatingMibacRating where
    parseJSON = parseJSONText "ContentRatingMibacRating"

instance ToJSON ContentRatingMibacRating where
    toJSON = toJSONText

-- | The video\'s rating in Venezuela.
data ContentRatingResorteviolenciaRating
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

instance Hashable ContentRatingResorteviolenciaRating

instance FromText ContentRatingResorteviolenciaRating where
    fromText = \case
        "resorteviolenciaA" -> Just ResorteviolenciaA
        "resorteviolenciaB" -> Just ResorteviolenciaB
        "resorteviolenciaC" -> Just ResorteviolenciaC
        "resorteviolenciaD" -> Just ResorteviolenciaD
        "resorteviolenciaE" -> Just ResorteviolenciaE
        "resorteviolenciaUnrated" -> Just ResorteviolenciaUnrated
        _ -> Nothing

instance ToText ContentRatingResorteviolenciaRating where
    toText = \case
        ResorteviolenciaA -> "resorteviolenciaA"
        ResorteviolenciaB -> "resorteviolenciaB"
        ResorteviolenciaC -> "resorteviolenciaC"
        ResorteviolenciaD -> "resorteviolenciaD"
        ResorteviolenciaE -> "resorteviolenciaE"
        ResorteviolenciaUnrated -> "resorteviolenciaUnrated"

instance FromJSON ContentRatingResorteviolenciaRating where
    parseJSON = parseJSONText "ContentRatingResorteviolenciaRating"

instance ToJSON ContentRatingResorteviolenciaRating where
    toJSON = toJSONText

-- | The video\'s rating in Egypt.
data ContentRatingEgfilmRating
    = EGFILM18
      -- ^ @egfilm18@
    | EgfilmBn
      -- ^ @egfilmBn@
    | EgfilmGn
      -- ^ @egfilmGn@
    | EgfilmUnrated
      -- ^ @egfilmUnrated@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingEgfilmRating

instance FromText ContentRatingEgfilmRating where
    fromText = \case
        "egfilm18" -> Just EGFILM18
        "egfilmBn" -> Just EgfilmBn
        "egfilmGn" -> Just EgfilmGn
        "egfilmUnrated" -> Just EgfilmUnrated
        _ -> Nothing

instance ToText ContentRatingEgfilmRating where
    toText = \case
        EGFILM18 -> "egfilm18"
        EgfilmBn -> "egfilmBn"
        EgfilmGn -> "egfilmGn"
        EgfilmUnrated -> "egfilmUnrated"

instance FromJSON ContentRatingEgfilmRating where
    parseJSON = parseJSONText "ContentRatingEgfilmRating"

instance ToJSON ContentRatingEgfilmRating where
    toJSON = toJSONText

-- | The video\'s rating from the Danish Film Institute\'s (Det Danske
-- Filminstitut) Media Council for Children and Young People.
data ContentRatingMccypRating
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

instance Hashable ContentRatingMccypRating

instance FromText ContentRatingMccypRating where
    fromText = \case
        "mccyp11" -> Just MCCYP11
        "mccyp15" -> Just MCCYP15
        "mccyp7" -> Just MCCYP7
        "mccypA" -> Just MccypA
        "mccypUnrated" -> Just MccypUnrated
        _ -> Nothing

instance ToText ContentRatingMccypRating where
    toText = \case
        MCCYP11 -> "mccyp11"
        MCCYP15 -> "mccyp15"
        MCCYP7 -> "mccyp7"
        MccypA -> "mccypA"
        MccypUnrated -> "mccypUnrated"

instance FromJSON ContentRatingMccypRating where
    parseJSON = parseJSONText "ContentRatingMccypRating"

instance ToJSON ContentRatingMccypRating where
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

-- | The video\'s rating from France\'s Conseil supérieur de l?audiovisuel,
-- which rates broadcast content.
data ContentRatingCsaRating
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

instance Hashable ContentRatingCsaRating

instance FromText ContentRatingCsaRating where
    fromText = \case
        "csa10" -> Just CSA10
        "csa12" -> Just CSA12
        "csa16" -> Just CSA16
        "csa18" -> Just CSA18
        "csaInterdiction" -> Just CsaInterdiction
        "csaT" -> Just CsaT
        "csaUnrated" -> Just CsaUnrated
        _ -> Nothing

instance ToText ContentRatingCsaRating where
    toText = \case
        CSA10 -> "csa10"
        CSA12 -> "csa12"
        CSA16 -> "csa16"
        CSA18 -> "csa18"
        CsaInterdiction -> "csaInterdiction"
        CsaT -> "csaT"
        CsaUnrated -> "csaUnrated"

instance FromJSON ContentRatingCsaRating where
    parseJSON = parseJSONText "ContentRatingCsaRating"

instance ToJSON ContentRatingCsaRating where
    toJSON = toJSONText

-- | The style of the channel section.
data ChannelSectionSnippetStyle
    = ChannelsectionStyleUndefined
      -- ^ @channelsectionStyleUndefined@
    | HorizontalRow
      -- ^ @horizontalRow@
    | VerticalList
      -- ^ @verticalList@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChannelSectionSnippetStyle

instance FromText ChannelSectionSnippetStyle where
    fromText = \case
        "channelsectionStyleUndefined" -> Just ChannelsectionStyleUndefined
        "horizontalRow" -> Just HorizontalRow
        "verticalList" -> Just VerticalList
        _ -> Nothing

instance ToText ChannelSectionSnippetStyle where
    toText = \case
        ChannelsectionStyleUndefined -> "channelsectionStyleUndefined"
        HorizontalRow -> "horizontalRow"
        VerticalList -> "verticalList"

instance FromJSON ChannelSectionSnippetStyle where
    parseJSON = parseJSONText "ChannelSectionSnippetStyle"

instance ToJSON ChannelSectionSnippetStyle where
    toJSON = toJSONText

-- | The video\'s Eirin (映倫) rating. Eirin is the Japanese rating system.
data ContentRatingEirinRating
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

instance Hashable ContentRatingEirinRating

instance FromText ContentRatingEirinRating where
    fromText = \case
        "eirinG" -> Just EirinG
        "eirinPg12" -> Just EIRINPG12
        "eirinR15plus" -> Just EirinR15plus
        "eirinR18plus" -> Just EirinR18plus
        "eirinUnrated" -> Just EirinUnrated
        _ -> Nothing

instance ToText ContentRatingEirinRating where
    toText = \case
        EirinG -> "eirinG"
        EIRINPG12 -> "eirinPg12"
        EirinR15plus -> "eirinR15plus"
        EirinR18plus -> "eirinR18plus"
        EirinUnrated -> "eirinUnrated"

instance FromJSON ContentRatingEirinRating where
    parseJSON = parseJSONText "ContentRatingEirinRating"

instance ToJSON ContentRatingEirinRating where
    toJSON = toJSONText

data VideoSuggestionsProcessingHintsItem
    = NonStreamableMov
      -- ^ @nonStreamableMov@
    | SendBestQualityVideo
      -- ^ @sendBestQualityVideo@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoSuggestionsProcessingHintsItem

instance FromText VideoSuggestionsProcessingHintsItem where
    fromText = \case
        "nonStreamableMov" -> Just NonStreamableMov
        "sendBestQualityVideo" -> Just SendBestQualityVideo
        _ -> Nothing

instance ToText VideoSuggestionsProcessingHintsItem where
    toText = \case
        NonStreamableMov -> "nonStreamableMov"
        SendBestQualityVideo -> "sendBestQualityVideo"

instance FromJSON VideoSuggestionsProcessingHintsItem where
    parseJSON = parseJSONText "VideoSuggestionsProcessingHintsItem"

instance ToJSON VideoSuggestionsProcessingHintsItem where
    toJSON = toJSONText

-- | The video\'s rating from the Bulgarian National Film Center.
data ContentRatingNfrcRating
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

instance Hashable ContentRatingNfrcRating

instance FromText ContentRatingNfrcRating where
    fromText = \case
        "nfrcA" -> Just NfrcA
        "nfrcB" -> Just NfrcB
        "nfrcC" -> Just NfrcC
        "nfrcD" -> Just NfrcD
        "nfrcUnrated" -> Just NfrcUnrated
        "nfrcX" -> Just NfrcX
        _ -> Nothing

instance ToText ContentRatingNfrcRating where
    toText = \case
        NfrcA -> "nfrcA"
        NfrcB -> "nfrcB"
        NfrcC -> "nfrcC"
        NfrcD -> "nfrcD"
        NfrcUnrated -> "nfrcUnrated"
        NfrcX -> "nfrcX"

instance FromJSON ContentRatingNfrcRating where
    parseJSON = parseJSONText "ContentRatingNfrcRating"

instance ToJSON ContentRatingNfrcRating where
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

-- | The video\'s Ministerio de Cultura (Colombia) rating.
data ContentRatingMocRating
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

instance Hashable ContentRatingMocRating

instance FromText ContentRatingMocRating where
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

instance ToText ContentRatingMocRating where
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

instance FromJSON ContentRatingMocRating where
    parseJSON = parseJSONText "ContentRatingMocRating"

instance ToJSON ContentRatingMocRating where
    toJSON = toJSONText

-- | The videoEmbeddable parameter lets you to restrict a search to only
-- videos that can be embedded into a webpage. If you specify a value for
-- this parameter, you must also set the type parameter\'s value to video.
data SearchListVideoEmbeddable
    = SLVEAny
      -- ^ @any@
      -- Return all videos, embeddable or not.
    | SLVETrue'
      -- ^ @true@
      -- Only retrieve embeddable videos.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchListVideoEmbeddable

instance FromText SearchListVideoEmbeddable where
    fromText = \case
        "any" -> Just SLVEAny
        "true" -> Just SLVETrue'
        _ -> Nothing

instance ToText SearchListVideoEmbeddable where
    toText = \case
        SLVEAny -> "any"
        SLVETrue' -> "true"

instance FromJSON SearchListVideoEmbeddable where
    parseJSON = parseJSONText "SearchListVideoEmbeddable"

instance ToJSON SearchListVideoEmbeddable where
    toJSON = toJSONText

-- | The eventType parameter restricts a search to broadcast events. If you
-- specify a value for this parameter, you must also set the type
-- parameter\'s value to video.
data SearchListEventType
    = SLETCompleted
      -- ^ @completed@
      -- Only include completed broadcasts.
    | SLETLive
      -- ^ @live@
      -- Only include active broadcasts.
    | SLETUpcoming
      -- ^ @upcoming@
      -- Only include upcoming broadcasts.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchListEventType

instance FromText SearchListEventType where
    fromText = \case
        "completed" -> Just SLETCompleted
        "live" -> Just SLETLive
        "upcoming" -> Just SLETUpcoming
        _ -> Nothing

instance ToText SearchListEventType where
    toText = \case
        SLETCompleted -> "completed"
        SLETLive -> "live"
        SLETUpcoming -> "upcoming"

instance FromJSON SearchListEventType where
    parseJSON = parseJSONText "SearchListEventType"

instance ToJSON SearchListEventType where
    toJSON = toJSONText

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

instance FromJSON ActivityContentDetailsRecommendationReason where
    parseJSON = parseJSONText "ActivityContentDetailsRecommendationReason"

instance ToJSON ActivityContentDetailsRecommendationReason where
    toJSON = toJSONText

-- | voor de Classificatie van Audiovisuele Media (Netherlands).
data ContentRatingKijkwijzerRating
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

instance Hashable ContentRatingKijkwijzerRating

instance FromText ContentRatingKijkwijzerRating where
    fromText = \case
        "kijkwijzer12" -> Just KIJKWIJZER12
        "kijkwijzer16" -> Just KIJKWIJZER16
        "kijkwijzer18" -> Just KIJKWIJZER18
        "kijkwijzer6" -> Just KIJKWIJZER6
        "kijkwijzer9" -> Just KIJKWIJZER9
        "kijkwijzerAl" -> Just KijkwijzerAl
        "kijkwijzerUnrated" -> Just KijkwijzerUnrated
        _ -> Nothing

instance ToText ContentRatingKijkwijzerRating where
    toText = \case
        KIJKWIJZER12 -> "kijkwijzer12"
        KIJKWIJZER16 -> "kijkwijzer16"
        KIJKWIJZER18 -> "kijkwijzer18"
        KIJKWIJZER6 -> "kijkwijzer6"
        KIJKWIJZER9 -> "kijkwijzer9"
        KijkwijzerAl -> "kijkwijzerAl"
        KijkwijzerUnrated -> "kijkwijzerUnrated"

instance FromJSON ContentRatingKijkwijzerRating where
    parseJSON = parseJSONText "ContentRatingKijkwijzerRating"

instance ToJSON ContentRatingKijkwijzerRating where
    toJSON = toJSONText

data VideoSuggestionsProcessingErrorsItem
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

instance Hashable VideoSuggestionsProcessingErrorsItem

instance FromText VideoSuggestionsProcessingErrorsItem where
    fromText = \case
        "archiveFile" -> Just ArchiveFile
        "audioFile" -> Just AudioFile
        "docFile" -> Just DocFile
        "imageFile" -> Just ImageFile
        "notAVideoFile" -> Just NotAVideoFile
        "projectFile" -> Just ProjectFile
        _ -> Nothing

instance ToText VideoSuggestionsProcessingErrorsItem where
    toText = \case
        ArchiveFile -> "archiveFile"
        AudioFile -> "audioFile"
        DocFile -> "docFile"
        ImageFile -> "imageFile"
        NotAVideoFile -> "notAVideoFile"
        ProjectFile -> "projectFile"

instance FromJSON VideoSuggestionsProcessingErrorsItem where
    parseJSON = parseJSONText "VideoSuggestionsProcessingErrorsItem"

instance ToJSON VideoSuggestionsProcessingErrorsItem where
    toJSON = toJSONText

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

instance FromJSON VideoFileDetailsFileType where
    parseJSON = parseJSONText "VideoFileDetailsFileType"

instance ToJSON VideoFileDetailsFileType where
    toJSON = toJSONText

-- | The video\'s rating from the Movie and Television Review and
-- Classification Board (Philippines).
data ContentRatingMtrcbRating
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

instance Hashable ContentRatingMtrcbRating

instance FromText ContentRatingMtrcbRating where
    fromText = \case
        "mtrcbG" -> Just MtrcbG
        "mtrcbPg" -> Just MtrcbPg
        "mtrcbR13" -> Just MTRCBR13
        "mtrcbR16" -> Just MTRCBR16
        "mtrcbR18" -> Just MTRCBR18
        "mtrcbUnrated" -> Just MtrcbUnrated
        "mtrcbX" -> Just MtrcbX
        _ -> Nothing

instance ToText ContentRatingMtrcbRating where
    toText = \case
        MtrcbG -> "mtrcbG"
        MtrcbPg -> "mtrcbPg"
        MTRCBR13 -> "mtrcbR13"
        MTRCBR16 -> "mtrcbR16"
        MTRCBR18 -> "mtrcbR18"
        MtrcbUnrated -> "mtrcbUnrated"
        MtrcbX -> "mtrcbX"

instance FromJSON ContentRatingMtrcbRating where
    parseJSON = parseJSONText "ContentRatingMtrcbRating"

instance ToJSON ContentRatingMtrcbRating where
    toJSON = toJSONText

-- | The video\'s rating from Hong Kong\'s Office for Film, Newspaper and
-- Article Administration.
data ContentRatingFcoRating
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

instance Hashable ContentRatingFcoRating

instance FromText ContentRatingFcoRating where
    fromText = \case
        "fcoI" -> Just FcoI
        "fcoIi" -> Just FcoIi
        "fcoIia" -> Just FcoIia
        "fcoIib" -> Just FcoIib
        "fcoIii" -> Just FcoIii
        "fcoUnrated" -> Just FcoUnrated
        _ -> Nothing

instance ToText ContentRatingFcoRating where
    toText = \case
        FcoI -> "fcoI"
        FcoIi -> "fcoIi"
        FcoIia -> "fcoIia"
        FcoIib -> "fcoIib"
        FcoIii -> "fcoIii"
        FcoUnrated -> "fcoUnrated"

instance FromJSON ContentRatingFcoRating where
    parseJSON = parseJSONText "ContentRatingFcoRating"

instance ToJSON ContentRatingFcoRating where
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
    | VideoProFileMismatch
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
        "videoProfileMismatch" -> Just VideoProFileMismatch
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
        VideoProFileMismatch -> "videoProfileMismatch"
        VideoResolutionSuboptimal -> "videoResolutionSuboptimal"
        VideoResolutionUnsupported -> "videoResolutionUnsupported"

instance FromJSON LiveStreamConfigurationIssueType where
    parseJSON = parseJSONText "LiveStreamConfigurationIssueType"

instance ToJSON LiveStreamConfigurationIssueType where
    toJSON = toJSONText

-- | The safeSearch parameter indicates whether the search results should
-- include restricted content as well as standard content.
data SearchListSafeSearch
    = SLSSModerate
      -- ^ @moderate@
      -- YouTube will filter some content from search results and, at the least,
      -- will filter content that is restricted in your locale. Based on their
      -- content, search results could be removed from search results or demoted
      -- in search results. This is the default parameter value.
    | SLSSNone
      -- ^ @none@
      -- YouTube will not filter the search result set.
    | SLSSStrict
      -- ^ @strict@
      -- YouTube will try to exclude all restricted content from the search
      -- result set. Based on their content, search results could be removed from
      -- search results or demoted in search results.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchListSafeSearch

instance FromText SearchListSafeSearch where
    fromText = \case
        "moderate" -> Just SLSSModerate
        "none" -> Just SLSSNone
        "strict" -> Just SLSSStrict
        _ -> Nothing

instance ToText SearchListSafeSearch where
    toText = \case
        SLSSModerate -> "moderate"
        SLSSNone -> "none"
        SLSSStrict -> "strict"

instance FromJSON SearchListSafeSearch where
    parseJSON = parseJSONText "SearchListSafeSearch"

instance ToJSON SearchListSafeSearch where
    toJSON = toJSONText

-- | The videoSyndicated parameter lets you to restrict a search to only
-- videos that can be played outside youtube.com. If you specify a value
-- for this parameter, you must also set the type parameter\'s value to
-- video.
data SearchListVideoSyndicated
    = SLVSAny
      -- ^ @any@
      -- Return all videos, syndicated or not.
    | SLVSTrue'
      -- ^ @true@
      -- Only retrieve syndicated videos.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchListVideoSyndicated

instance FromText SearchListVideoSyndicated where
    fromText = \case
        "any" -> Just SLVSAny
        "true" -> Just SLVSTrue'
        _ -> Nothing

instance ToText SearchListVideoSyndicated where
    toText = \case
        SLVSAny -> "any"
        SLVSTrue' -> "true"

instance FromJSON SearchListVideoSyndicated where
    parseJSON = parseJSONText "SearchListVideoSyndicated"

instance ToJSON SearchListVideoSyndicated where
    toJSON = toJSONText

data ContentRatingDjctqRatingReasonsItem
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
    | DjctqInAppropriateLanguage
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

instance Hashable ContentRatingDjctqRatingReasonsItem

instance FromText ContentRatingDjctqRatingReasonsItem where
    fromText = \case
        "djctqCriminalActs" -> Just DjctqCriminalActs
        "djctqDrugs" -> Just DjctqDrugs
        "djctqExplicitSex" -> Just DjctqExplicitSex
        "djctqExtremeViolence" -> Just DjctqExtremeViolence
        "djctqIllegalDrugs" -> Just DjctqIllegalDrugs
        "djctqImpactingContent" -> Just DjctqImpactingContent
        "djctqInappropriateLanguage" -> Just DjctqInAppropriateLanguage
        "djctqLegalDrugs" -> Just DjctqLegalDrugs
        "djctqNudity" -> Just DjctqNudity
        "djctqSex" -> Just DjctqSex
        "djctqSexualContent" -> Just DjctqSexualContent
        "djctqViolence" -> Just DjctqViolence
        _ -> Nothing

instance ToText ContentRatingDjctqRatingReasonsItem where
    toText = \case
        DjctqCriminalActs -> "djctqCriminalActs"
        DjctqDrugs -> "djctqDrugs"
        DjctqExplicitSex -> "djctqExplicitSex"
        DjctqExtremeViolence -> "djctqExtremeViolence"
        DjctqIllegalDrugs -> "djctqIllegalDrugs"
        DjctqImpactingContent -> "djctqImpactingContent"
        DjctqInAppropriateLanguage -> "djctqInappropriateLanguage"
        DjctqLegalDrugs -> "djctqLegalDrugs"
        DjctqNudity -> "djctqNudity"
        DjctqSex -> "djctqSex"
        DjctqSexualContent -> "djctqSexualContent"
        DjctqViolence -> "djctqViolence"

instance FromJSON ContentRatingDjctqRatingReasonsItem where
    parseJSON = parseJSONText "ContentRatingDjctqRatingReasonsItem"

instance ToJSON ContentRatingDjctqRatingReasonsItem where
    toJSON = toJSONText

-- | The method or protocol used to transmit the video stream.
data CdnSettingsIngestionType
    = Dash
      -- ^ @dash@
    | Rtmp
      -- ^ @rtmp@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CdnSettingsIngestionType

instance FromText CdnSettingsIngestionType where
    fromText = \case
        "dash" -> Just Dash
        "rtmp" -> Just Rtmp
        _ -> Nothing

instance ToText CdnSettingsIngestionType where
    toText = \case
        Dash -> "dash"
        Rtmp -> "rtmp"

instance FromJSON CdnSettingsIngestionType where
    parseJSON = parseJSONText "CdnSettingsIngestionType"

instance ToJSON CdnSettingsIngestionType where
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

-- | The video\'s rating from Italy\'s Autorità per le Garanzie nelle
-- Comunicazioni (AGCOM).
data ContentRatingAgcomRating
    = AgcomT
      -- ^ @agcomT@
    | AgcomUnrated
      -- ^ @agcomUnrated@
    | AGCOMVM14
      -- ^ @agcomVm14@
    | AGCOMVM18
      -- ^ @agcomVm18@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContentRatingAgcomRating

instance FromText ContentRatingAgcomRating where
    fromText = \case
        "agcomT" -> Just AgcomT
        "agcomUnrated" -> Just AgcomUnrated
        "agcomVm14" -> Just AGCOMVM14
        "agcomVm18" -> Just AGCOMVM18
        _ -> Nothing

instance ToText ContentRatingAgcomRating where
    toText = \case
        AgcomT -> "agcomT"
        AgcomUnrated -> "agcomUnrated"
        AGCOMVM14 -> "agcomVm14"
        AGCOMVM18 -> "agcomVm18"

instance FromJSON ContentRatingAgcomRating where
    parseJSON = parseJSONText "ContentRatingAgcomRating"

instance ToJSON ContentRatingAgcomRating where
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

-- | The videoLicense parameter filters search results to only include videos
-- with a particular license. YouTube lets video uploaders choose to attach
-- either the Creative Commons license or the standard YouTube license to
-- each of their videos. If you specify a value for this parameter, you
-- must also set the type parameter\'s value to video.
data SearchListVideoLicense
    = SLVLAny
      -- ^ @any@
      -- Return all videos, regardless of which license they have, that match the
      -- query parameters.
    | SLVLCreativeCommon
      -- ^ @creativeCommon@
      -- Only return videos that have a Creative Commons license. Users can reuse
      -- videos with this license in other videos that they create. Learn more.
    | SLVLYouTube
      -- ^ @youtube@
      -- Only return videos that have the standard YouTube license.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchListVideoLicense

instance FromText SearchListVideoLicense where
    fromText = \case
        "any" -> Just SLVLAny
        "creativeCommon" -> Just SLVLCreativeCommon
        "youtube" -> Just SLVLYouTube
        _ -> Nothing

instance ToText SearchListVideoLicense where
    toText = \case
        SLVLAny -> "any"
        SLVLCreativeCommon -> "creativeCommon"
        SLVLYouTube -> "youtube"

instance FromJSON SearchListVideoLicense where
    parseJSON = parseJSONText "SearchListVideoLicense"

instance ToJSON SearchListVideoLicense where
    toJSON = toJSONText

data LiveStreamStatusStreamStatus
    = LSSSSActive
      -- ^ @active@
    | LSSSSCreated
      -- ^ @created@
    | LSSSSError'
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
        "error" -> Just LSSSSError'
        "inactive" -> Just LSSSSInactive
        "ready" -> Just LSSSSReady
        _ -> Nothing

instance ToText LiveStreamStatusStreamStatus where
    toText = \case
        LSSSSActive -> "active"
        LSSSSCreated -> "created"
        LSSSSError' -> "error"
        LSSSSInactive -> "inactive"
        LSSSSReady -> "ready"

instance FromJSON LiveStreamStatusStreamStatus where
    parseJSON = parseJSONText "LiveStreamStatusStreamStatus"

instance ToJSON LiveStreamStatusStreamStatus where
    toJSON = toJSONText

-- | The video\'s license.
data VideoStatusLicense
    = CreativeCommon
      -- ^ @creativeCommon@
    | YouTube
      -- ^ @youtube@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoStatusLicense

instance FromText VideoStatusLicense where
    fromText = \case
        "creativeCommon" -> Just CreativeCommon
        "youtube" -> Just YouTube
        _ -> Nothing

instance ToText VideoStatusLicense where
    toText = \case
        CreativeCommon -> "creativeCommon"
        YouTube -> "youtube"

instance FromJSON VideoStatusLicense where
    parseJSON = parseJSONText "VideoStatusLicense"

instance ToJSON VideoStatusLicense where
    toJSON = toJSONText

-- | The video\'s rating from Nigeria\'s National Film and Video Censors
-- Board.
data ContentRatingNfvcbRating
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

instance Hashable ContentRatingNfvcbRating

instance FromText ContentRatingNfvcbRating where
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

instance ToText ContentRatingNfvcbRating where
    toText = \case
        NFVCB12 -> "nfvcb12"
        Nfvcb12a -> "nfvcb12a"
        NFVCB15 -> "nfvcb15"
        NFVCB18 -> "nfvcb18"
        NfvcbG -> "nfvcbG"
        NfvcbPg -> "nfvcbPg"
        NfvcbRe -> "nfvcbRe"
        NfvcbUnrated -> "nfvcbUnrated"

instance FromJSON ContentRatingNfvcbRating where
    parseJSON = parseJSONText "ContentRatingNfvcbRating"

instance ToJSON ContentRatingNfvcbRating where
    toJSON = toJSONText

-- | The video\'s rating from Singapore\'s Media Development Authority (MDA)
-- and, specifically, it\'s Board of Film Censors (BFC).
data ContentRatingMdaRating
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

instance Hashable ContentRatingMdaRating

instance FromText ContentRatingMdaRating where
    fromText = \case
        "mdaG" -> Just MdaG
        "mdaM18" -> Just MDAM18
        "mdaNc16" -> Just MDANC16
        "mdaPg" -> Just MdaPg
        "mdaPg13" -> Just MDAPG13
        "mdaR21" -> Just MDAR21
        "mdaUnrated" -> Just MdaUnrated
        _ -> Nothing

instance ToText ContentRatingMdaRating where
    toText = \case
        MdaG -> "mdaG"
        MDAM18 -> "mdaM18"
        MDANC16 -> "mdaNc16"
        MdaPg -> "mdaPg"
        MDAPG13 -> "mdaPg13"
        MDAR21 -> "mdaR21"
        MdaUnrated -> "mdaUnrated"

instance FromJSON ContentRatingMdaRating where
    parseJSON = parseJSONText "ContentRatingMdaRating"

instance ToJSON ContentRatingMdaRating where
    toJSON = toJSONText

-- | The video\'s Australian Classification Board (ACB) or Australian
-- Communications and Media Authority (ACMA) rating. ACMA ratings are used
-- to classify children\'s television programming.
data ContentRatingAcbRating
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

instance Hashable ContentRatingAcbRating

instance FromText ContentRatingAcbRating where
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

instance ToText ContentRatingAcbRating where
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

instance FromJSON ContentRatingAcbRating where
    parseJSON = parseJSONText "ContentRatingAcbRating"

instance ToJSON ContentRatingAcbRating where
    toJSON = toJSONText

-- | The video\'s Departamento de Justiça, Classificação, Qualificação e
-- Títulos (DJCQT - Brazil) rating.
data ContentRatingDjctqRating
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

instance Hashable ContentRatingDjctqRating

instance FromText ContentRatingDjctqRating where
    fromText = \case
        "djctq10" -> Just DJCTQ10
        "djctq12" -> Just DJCTQ12
        "djctq14" -> Just DJCTQ14
        "djctq16" -> Just DJCTQ16
        "djctq18" -> Just DJCTQ18
        "djctqL" -> Just DjctqL
        "djctqUnrated" -> Just DjctqUnrated
        _ -> Nothing

instance ToText ContentRatingDjctqRating where
    toText = \case
        DJCTQ10 -> "djctq10"
        DJCTQ12 -> "djctq12"
        DJCTQ14 -> "djctq14"
        DJCTQ16 -> "djctq16"
        DJCTQ18 -> "djctq18"
        DjctqL -> "djctqL"
        DjctqUnrated -> "djctqUnrated"

instance FromJSON ContentRatingDjctqRating where
    parseJSON = parseJSONText "ContentRatingDjctqRating"

instance ToJSON ContentRatingDjctqRating where
    toJSON = toJSONText

-- | This value explains why a video failed to upload. This property is only
-- present if the uploadStatus property indicates that the upload failed.
data VideoStatusFailureReason
    = Codec
      -- ^ @codec@
    | Conversion
      -- ^ @conversion@
    | EmptyFile
      -- ^ @emptyFile@
    | InvalidFile
      -- ^ @invalidFile@
    | TooSmall
      -- ^ @tooSmall@
    | UploadAborted
      -- ^ @uploadAborted@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VideoStatusFailureReason

instance FromText VideoStatusFailureReason where
    fromText = \case
        "codec" -> Just Codec
        "conversion" -> Just Conversion
        "emptyFile" -> Just EmptyFile
        "invalidFile" -> Just InvalidFile
        "tooSmall" -> Just TooSmall
        "uploadAborted" -> Just UploadAborted
        _ -> Nothing

instance ToText VideoStatusFailureReason where
    toText = \case
        Codec -> "codec"
        Conversion -> "conversion"
        EmptyFile -> "emptyFile"
        InvalidFile -> "invalidFile"
        TooSmall -> "tooSmall"
        UploadAborted -> "uploadAborted"

instance FromJSON VideoStatusFailureReason where
    parseJSON = parseJSONText "VideoStatusFailureReason"

instance ToJSON VideoStatusFailureReason where
    toJSON = toJSONText

-- | Rating system for Canadian TV - Canadian TV Classification System The
-- video\'s rating from the Canadian Radio-Television and
-- Telecommunications Commission (CRTC) for Canadian English-language
-- broadcasts. For more information, see the Canadian Broadcast Standards
-- Council website.
data ContentRatingCatvRating
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

instance Hashable ContentRatingCatvRating

instance FromText ContentRatingCatvRating where
    fromText = \case
        "catv14plus" -> Just Catv14plus
        "catv18plus" -> Just Catv18plus
        "catvC" -> Just CatvC
        "catvC8" -> Just CATVC8
        "catvG" -> Just CatvG
        "catvPg" -> Just CatvPg
        "catvUnrated" -> Just CatvUnrated
        _ -> Nothing

instance ToText ContentRatingCatvRating where
    toText = \case
        Catv14plus -> "catv14plus"
        Catv18plus -> "catv18plus"
        CatvC -> "catvC"
        CATVC8 -> "catvC8"
        CatvG -> "catvG"
        CatvPg -> "catvPg"
        CatvUnrated -> "catvUnrated"

instance FromJSON ContentRatingCatvRating where
    parseJSON = parseJSONText "ContentRatingCatvRating"

instance ToJSON ContentRatingCatvRating where
    toJSON = toJSONText
