{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTube.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    | CCEM14
      -- ^ @cceM14@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCceRating

instance FromHttpApiData ContentRatingCceRating where
    parseQueryParam = \case
        "cceM12" -> Right CCEM12
        "cceM14" -> Right CCEM14
        "cceM16" -> Right CCEM16
        "cceM18" -> Right CCEM18
        "cceM4" -> Right CCEM4
        "cceM6" -> Right CCEM6
        "cceUnrated" -> Right CceUnrated
        x -> Left ("Unable to parse ContentRatingCceRating from: " <> x)

instance ToHttpApiData ContentRatingCceRating where
    toQueryParam = \case
        CCEM12 -> "cceM12"
        CCEM14 -> "cceM14"
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingChfilmRating

instance FromHttpApiData ContentRatingChfilmRating where
    parseQueryParam = \case
        "chfilm0" -> Right CHFILM0
        "chfilm12" -> Right CHFILM12
        "chfilm16" -> Right CHFILM16
        "chfilm18" -> Right CHFILM18
        "chfilm6" -> Right CHFILM6
        "chfilmUnrated" -> Right ChfilmUnrated
        x -> Left ("Unable to parse ContentRatingChfilmRating from: " <> x)

instance ToHttpApiData ContentRatingChfilmRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMccaaRating

instance FromHttpApiData ContentRatingMccaaRating where
    parseQueryParam = \case
        "mccaa12" -> Right MCCAA12
        "mccaa12a" -> Right Mccaa12a
        "mccaa14" -> Right MCCAA14
        "mccaa15" -> Right MCCAA15
        "mccaa16" -> Right MCCAA16
        "mccaa18" -> Right MCCAA18
        "mccaaPg" -> Right MccaaPg
        "mccaaU" -> Right MccaaU
        "mccaaUnrated" -> Right MccaaUnrated
        x -> Left ("Unable to parse ContentRatingMccaaRating from: " <> x)

instance ToHttpApiData ContentRatingMccaaRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideosListChart

instance FromHttpApiData VideosListChart where
    parseQueryParam = \case
        "mostPopular" -> Right MostPopular
        x -> Left ("Unable to parse VideosListChart from: " <> x)

instance ToHttpApiData VideosListChart where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMpaaRating

instance FromHttpApiData ContentRatingMpaaRating where
    parseQueryParam = \case
        "mpaaG" -> Right MpaaG
        "mpaaNc17" -> Right MPAANC17
        "mpaaPg" -> Right MpaaPg
        "mpaaPg13" -> Right MPAAPG13
        "mpaaR" -> Right MpaaR
        "mpaaUnrated" -> Right MpaaUnrated
        x -> Left ("Unable to parse ContentRatingMpaaRating from: " <> x)

instance ToHttpApiData ContentRatingMpaaRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CaptionSnippetTrackKind

instance FromHttpApiData CaptionSnippetTrackKind where
    parseQueryParam = \case
        "ASR" -> Right Asr
        "forced" -> Right Forced
        "standard" -> Right Standard
        x -> Left ("Unable to parse CaptionSnippetTrackKind from: " <> x)

instance ToHttpApiData CaptionSnippetTrackKind where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoSnippetLiveBroadcastContent

instance FromHttpApiData VideoSnippetLiveBroadcastContent where
    parseQueryParam = \case
        "live" -> Right Live
        "none" -> Right None
        "upcoming" -> Right Upcoming
        x -> Left ("Unable to parse VideoSnippetLiveBroadcastContent from: " <> x)

instance ToHttpApiData VideoSnippetLiveBroadcastContent where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChannelConversionPingContext

instance FromHttpApiData ChannelConversionPingContext where
    parseQueryParam = \case
        "cview" -> Right Cview
        "subscribe" -> Right Subscribe
        "unsubscribe" -> Right Unsubscribe
        x -> Left ("Unable to parse ChannelConversionPingContext from: " <> x)

instance ToHttpApiData ChannelConversionPingContext where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingRcnofRating

instance FromHttpApiData ContentRatingRcnofRating where
    parseQueryParam = \case
        "rcnofI" -> Right RcnofI
        "rcnofIi" -> Right RcnofIi
        "rcnofIii" -> Right RcnofIii
        "rcnofIv" -> Right RcnofIv
        "rcnofUnrated" -> Right RcnofUnrated
        "rcnofV" -> Right RcnofV
        "rcnofVi" -> Right RcnofVi
        x -> Left ("Unable to parse ContentRatingRcnofRating from: " <> x)

instance ToHttpApiData ContentRatingRcnofRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoStatusPrivacyStatus

instance FromHttpApiData VideoStatusPrivacyStatus where
    parseQueryParam = \case
        "private" -> Right Private
        "public" -> Right Public
        "unlisted" -> Right UnListed
        x -> Left ("Unable to parse VideoStatusPrivacyStatus from: " <> x)

instance ToHttpApiData VideoStatusPrivacyStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastStatusLifeCycleStatus

instance FromHttpApiData LiveBroadcastStatusLifeCycleStatus where
    parseQueryParam = \case
        "abandoned" -> Right LBSLCSAbandoned
        "complete" -> Right LBSLCSComplete
        "completeStarting" -> Right LBSLCSCompleteStarting
        "created" -> Right LBSLCSCreated
        "live" -> Right LBSLCSLive
        "liveStarting" -> Right LBSLCSLiveStarting
        "ready" -> Right LBSLCSReady
        "reclaimed" -> Right LBSLCSReclaimed
        "revoked" -> Right LBSLCSRevoked
        "testStarting" -> Right LBSLCSTestStarting
        "testing" -> Right LBSLCSTesting
        x -> Left ("Unable to parse LiveBroadcastStatusLifeCycleStatus from: " <> x)

instance ToHttpApiData LiveBroadcastStatusLifeCycleStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CaptionSnippetFailureReason

instance FromHttpApiData CaptionSnippetFailureReason where
    parseQueryParam = \case
        "processingFailed" -> Right ProcessingFailed
        "unknownFormat" -> Right UnknownFormat
        "unsupportedFormat" -> Right UnsupportedFormat
        x -> Left ("Unable to parse CaptionSnippetFailureReason from: " <> x)

instance ToHttpApiData CaptionSnippetFailureReason where
    toQueryParam = \case
        ProcessingFailed -> "processingFailed"
        UnknownFormat -> "unknownFormat"
        UnsupportedFormat -> "unsupportedFormat"

instance FromJSON CaptionSnippetFailureReason where
    parseJSON = parseJSONText "CaptionSnippetFailureReason"

instance ToJSON CaptionSnippetFailureReason where
    toJSON = toJSONText

-- | The type of ban.
data LiveChatUserBannedMessageDetailsBanType
    = Permanent
      -- ^ @permanent@
    | Temporary
      -- ^ @temporary@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveChatUserBannedMessageDetailsBanType

instance FromHttpApiData LiveChatUserBannedMessageDetailsBanType where
    parseQueryParam = \case
        "permanent" -> Right Permanent
        "temporary" -> Right Temporary
        x -> Left ("Unable to parse LiveChatUserBannedMessageDetailsBanType from: " <> x)

instance ToHttpApiData LiveChatUserBannedMessageDetailsBanType where
    toQueryParam = \case
        Permanent -> "permanent"
        Temporary -> "temporary"

instance FromJSON LiveChatUserBannedMessageDetailsBanType where
    parseJSON = parseJSONText "LiveChatUserBannedMessageDetailsBanType"

instance ToJSON LiveChatUserBannedMessageDetailsBanType where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoProcessingDetailsProcessingFailureReason

instance FromHttpApiData VideoProcessingDetailsProcessingFailureReason where
    parseQueryParam = \case
        "other" -> Right Other
        "streamingFailed" -> Right StreamingFailed
        "transcodeFailed" -> Right TranscodeFailed
        "uploadFailed" -> Right UploadFailed
        x -> Left ("Unable to parse VideoProcessingDetailsProcessingFailureReason from: " <> x)

instance ToHttpApiData VideoProcessingDetailsProcessingFailureReason where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InvideoPositionType

instance FromHttpApiData InvideoPositionType where
    parseQueryParam = \case
        "corner" -> Right Corner
        x -> Left ("Unable to parse InvideoPositionType from: " <> x)

instance ToHttpApiData InvideoPositionType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingFskRating

instance FromHttpApiData ContentRatingFskRating where
    parseQueryParam = \case
        "fsk0" -> Right FSK0
        "fsk12" -> Right FSK12
        "fsk16" -> Right FSK16
        "fsk18" -> Right FSK18
        "fsk6" -> Right FSK6
        "fskUnrated" -> Right FskUnrated
        x -> Left ("Unable to parse ContentRatingFskRating from: " <> x)

instance ToHttpApiData ContentRatingFskRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMekuRating

instance FromHttpApiData ContentRatingMekuRating where
    parseQueryParam = \case
        "meku12" -> Right MEKU12
        "meku16" -> Right MEKU16
        "meku18" -> Right MEKU18
        "meku7" -> Right MEKU7
        "mekuS" -> Right MekuS
        "mekuUnrated" -> Right MekuUnrated
        x -> Left ("Unable to parse ContentRatingMekuRating from: " <> x)

instance ToHttpApiData ContentRatingMekuRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoContentDetailsDefinition

instance FromHttpApiData VideoContentDetailsDefinition where
    parseQueryParam = \case
        "hd" -> Right HD
        "sd" -> Right SD
        x -> Left ("Unable to parse VideoContentDetailsDefinition from: " <> x)

instance ToHttpApiData VideoContentDetailsDefinition where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingEefilmRating

instance FromHttpApiData ContentRatingEefilmRating where
    parseQueryParam = \case
        "eefilmK12" -> Right EEFILMK12
        "eefilmK14" -> Right EEFILMK14
        "eefilmK16" -> Right EEFILMK16
        "eefilmK6" -> Right EEFILMK6
        "eefilmL" -> Right EefilmL
        "eefilmMs12" -> Right EEFILMMS12
        "eefilmMs6" -> Right EEFILMMS6
        "eefilmPere" -> Right EefilmPere
        "eefilmUnrated" -> Right EefilmUnrated
        x -> Left ("Unable to parse ContentRatingEefilmRating from: " <> x)

instance ToHttpApiData ContentRatingEefilmRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastStatusPrivacyStatus

instance FromHttpApiData LiveBroadcastStatusPrivacyStatus where
    parseQueryParam = \case
        "private" -> Right LBSPSPrivate
        "public" -> Right LBSPSPublic
        "unlisted" -> Right LBSPSUnListed
        x -> Left ("Unable to parse LiveBroadcastStatusPrivacyStatus from: " <> x)

instance ToHttpApiData LiveBroadcastStatusPrivacyStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CaptionsDownloadTfmt

instance FromHttpApiData CaptionsDownloadTfmt where
    parseQueryParam = \case
        "sbv" -> Right Sbv
        "scc" -> Right Scc
        "srt" -> Right Srt
        "ttml" -> Right Ttml
        "vtt" -> Right Vtt
        x -> Left ("Unable to parse CaptionsDownloadTfmt from: " <> x)

instance ToHttpApiData CaptionsDownloadTfmt where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PromotedItemIdType

instance FromHttpApiData PromotedItemIdType where
    parseQueryParam = \case
        "recentUpload" -> Right PIITRecentUpload
        "video" -> Right PIITVideo
        "website" -> Right PIITWebsite
        x -> Left ("Unable to parse PromotedItemIdType from: " <> x)

instance ToHttpApiData PromotedItemIdType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingPefilmRating

instance FromHttpApiData ContentRatingPefilmRating where
    parseQueryParam = \case
        "pefilm14" -> Right PEFILM14
        "pefilm18" -> Right PEFILM18
        "pefilmPg" -> Right PefilmPg
        "pefilmPt" -> Right PefilmPt
        "pefilmUnrated" -> Right PefilmUnrated
        x -> Left ("Unable to parse ContentRatingPefilmRating from: " <> x)

instance ToHttpApiData ContentRatingPefilmRating where
    toQueryParam = \case
        PEFILM14 -> "pefilm14"
        PEFILM18 -> "pefilm18"
        PefilmPg -> "pefilmPg"
        PefilmPt -> "pefilmPt"
        PefilmUnrated -> "pefilmUnrated"

instance FromJSON ContentRatingPefilmRating where
    parseJSON = parseJSONText "ContentRatingPefilmRating"

instance ToJSON ContentRatingPefilmRating where
    toJSON = toJSONText

-- | The resolution of the inbound video data.
data CdnSettingsResolution
    = CSR1080p
      -- ^ @1080p@
    | CSR1440p
      -- ^ @1440p@
    | CSR240p
      -- ^ @240p@
    | CSR360p
      -- ^ @360p@
    | CSR480p
      -- ^ @480p@
    | CSR720p
      -- ^ @720p@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CdnSettingsResolution

instance FromHttpApiData CdnSettingsResolution where
    parseQueryParam = \case
        "1080p" -> Right CSR1080p
        "1440p" -> Right CSR1440p
        "240p" -> Right CSR240p
        "360p" -> Right CSR360p
        "480p" -> Right CSR480p
        "720p" -> Right CSR720p
        x -> Left ("Unable to parse CdnSettingsResolution from: " <> x)

instance ToHttpApiData CdnSettingsResolution where
    toQueryParam = \case
        CSR1080p -> "1080p"
        CSR1440p -> "1440p"
        CSR240p -> "240p"
        CSR360p -> "360p"
        CSR480p -> "480p"
        CSR720p -> "720p"

instance FromJSON CdnSettingsResolution where
    parseJSON = parseJSONText "CdnSettingsResolution"

instance ToJSON CdnSettingsResolution where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchResultSnippetLiveBroadcastContent

instance FromHttpApiData SearchResultSnippetLiveBroadcastContent where
    parseQueryParam = \case
        "live" -> Right SRSLBCLive
        "none" -> Right SRSLBCNone
        "upcoming" -> Right SRSLBCUpcoming
        x -> Left ("Unable to parse SearchResultSnippetLiveBroadcastContent from: " <> x)

instance ToHttpApiData SearchResultSnippetLiveBroadcastContent where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingAnatelRating

instance FromHttpApiData ContentRatingAnatelRating where
    parseQueryParam = \case
        "anatelA" -> Right AnatelA
        "anatelF" -> Right AnatelF
        "anatelI" -> Right AnatelI
        "anatelI10" -> Right ANATELI10
        "anatelI12" -> Right ANATELI12
        "anatelI7" -> Right ANATELI7
        "anatelR" -> Right AnatelR
        "anatelUnrated" -> Right AnatelUnrated
        x -> Left ("Unable to parse ContentRatingAnatelRating from: " <> x)

instance ToHttpApiData ContentRatingAnatelRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListOrder

instance FromHttpApiData SearchListOrder where
    parseQueryParam = \case
        "date" -> Right Date
        "rating" -> Right Rating
        "relevance" -> Right Relevance
        "title" -> Right Title
        "videoCount" -> Right VideoCount
        "viewCount" -> Right ViewCount
        x -> Left ("Unable to parse SearchListOrder from: " <> x)

instance ToHttpApiData SearchListOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCccRating

instance FromHttpApiData ContentRatingCccRating where
    parseQueryParam = \case
        "ccc14" -> Right CCC14
        "ccc18" -> Right CCC18
        "ccc18s" -> Right Ccc18s
        "ccc18v" -> Right Ccc18v
        "ccc6" -> Right CCC6
        "cccTe" -> Right CccTe
        "cccUnrated" -> Right CccUnrated
        x -> Left ("Unable to parse ContentRatingCccRating from: " <> x)

instance ToHttpApiData ContentRatingCccRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CaptionSnippetAudioTrackType

instance FromHttpApiData CaptionSnippetAudioTrackType where
    parseQueryParam = \case
        "commentary" -> Right Commentary
        "descriptive" -> Right Descriptive
        "primary" -> Right Primary
        "unknown" -> Right Unknown
        x -> Left ("Unable to parse CaptionSnippetAudioTrackType from: " <> x)

instance ToHttpApiData CaptionSnippetAudioTrackType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChannelStatusPrivacyStatus

instance FromHttpApiData ChannelStatusPrivacyStatus where
    parseQueryParam = \case
        "private" -> Right CSPSPrivate
        "public" -> Right CSPSPublic
        "unlisted" -> Right CSPSUnListed
        x -> Left ("Unable to parse ChannelStatusPrivacyStatus from: " <> x)

instance ToHttpApiData ChannelStatusPrivacyStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoSuggestionsEditorSuggestionsItem

instance FromHttpApiData VideoSuggestionsEditorSuggestionsItem where
    parseQueryParam = \case
        "audioQuietAudioSwap" -> Right AudioQuietAudioSwap
        "videoAutoLevels" -> Right VideoAutoLevels
        "videoCrop" -> Right VideoCrop
        "videoStabilize" -> Right VideoStabilize
        x -> Left ("Unable to parse VideoSuggestionsEditorSuggestionsItem from: " <> x)

instance ToHttpApiData VideoSuggestionsEditorSuggestionsItem where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCatvfrRating

instance FromHttpApiData ContentRatingCatvfrRating where
    parseQueryParam = \case
        "catvfr13plus" -> Right Catvfr13plus
        "catvfr16plus" -> Right Catvfr16plus
        "catvfr18plus" -> Right Catvfr18plus
        "catvfr8plus" -> Right Catvfr8plus
        "catvfrG" -> Right CatvfrG
        "catvfrUnrated" -> Right CatvfrUnrated
        x -> Left ("Unable to parse ContentRatingCatvfrRating from: " <> x)

instance ToHttpApiData ContentRatingCatvfrRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCnaRating

instance FromHttpApiData ContentRatingCnaRating where
    parseQueryParam = \case
        "cna12" -> Right CNA12
        "cna15" -> Right CNA15
        "cna18" -> Right CNA18
        "cna18plus" -> Right Cna18plus
        "cnaAp" -> Right CnaAp
        "cnaUnrated" -> Right CnaUnrated
        x -> Left ("Unable to parse ContentRatingCnaRating from: " <> x)

instance ToHttpApiData ContentRatingCnaRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingChvrsRating

instance FromHttpApiData ContentRatingChvrsRating where
    parseQueryParam = \case
        "chvrs14a" -> Right Chvrs14a
        "chvrs18a" -> Right Chvrs18a
        "chvrsE" -> Right ChvrsE
        "chvrsG" -> Right ChvrsG
        "chvrsPg" -> Right ChvrsPg
        "chvrsR" -> Right ChvrsR
        "chvrsUnrated" -> Right ChvrsUnrated
        x -> Left ("Unable to parse ContentRatingChvrsRating from: " <> x)

instance ToHttpApiData ContentRatingChvrsRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingIncaaRating

instance FromHttpApiData ContentRatingIncaaRating where
    parseQueryParam = \case
        "incaaAtp" -> Right IncaaAtp
        "incaaC" -> Right IncaaC
        "incaaSam13" -> Right INCAASAM13
        "incaaSam16" -> Right INCAASAM16
        "incaaSam18" -> Right INCAASAM18
        "incaaUnrated" -> Right IncaaUnrated
        x -> Left ("Unable to parse ContentRatingIncaaRating from: " <> x)

instance ToHttpApiData ContentRatingIncaaRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingSmsaRating

instance FromHttpApiData ContentRatingSmsaRating where
    parseQueryParam = \case
        "smsa11" -> Right SMSA11
        "smsa15" -> Right SMSA15
        "smsa7" -> Right SMSA7
        "smsaA" -> Right SmsaA
        "smsaUnrated" -> Right SmsaUnrated
        x -> Left ("Unable to parse ContentRatingSmsaRating from: " <> x)

instance ToHttpApiData ContentRatingSmsaRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCbfcRating

instance FromHttpApiData ContentRatingCbfcRating where
    parseQueryParam = \case
        "cbfcA" -> Right CbfcA
        "cbfcS" -> Right CbfcS
        "cbfcU" -> Right CbfcU
        "cbfcUA" -> Right CbfcUA
        "cbfcUnrated" -> Right CbfcUnrated
        x -> Left ("Unable to parse ContentRatingCbfcRating from: " <> x)

instance ToHttpApiData ContentRatingCbfcRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingKfcbRating

instance FromHttpApiData ContentRatingKfcbRating where
    parseQueryParam = \case
        "kfcb16plus" -> Right Kfcb16plus
        "kfcbG" -> Right KfcbG
        "kfcbPg" -> Right KfcbPg
        "kfcbR" -> Right KfcbR
        "kfcbUnrated" -> Right KfcbUnrated
        x -> Left ("Unable to parse ContentRatingKfcbRating from: " <> x)

instance ToHttpApiData ContentRatingKfcbRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveStreamConfigurationIssueSeverity

instance FromHttpApiData LiveStreamConfigurationIssueSeverity where
    parseQueryParam = \case
        "error" -> Right Error'
        "info" -> Right Info
        "warning" -> Right Warning
        x -> Left ("Unable to parse LiveStreamConfigurationIssueSeverity from: " <> x)

instance ToHttpApiData LiveStreamConfigurationIssueSeverity where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListVideoDefinition

instance FromHttpApiData SearchListVideoDefinition where
    parseQueryParam = \case
        "any" -> Right SLVDAny
        "high" -> Right SLVDHigh
        "standard" -> Right SLVDStandard
        x -> Left ("Unable to parse SearchListVideoDefinition from: " <> x)

instance ToHttpApiData SearchListVideoDefinition where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoAgeGatingVideoGameRating

instance FromHttpApiData VideoAgeGatingVideoGameRating where
    parseQueryParam = \case
        "anyone" -> Right Anyone
        "m15Plus" -> Right M15Plus
        "m16Plus" -> Right M16Plus
        "m17Plus" -> Right M17Plus
        x -> Left ("Unable to parse VideoAgeGatingVideoGameRating from: " <> x)

instance ToHttpApiData VideoAgeGatingVideoGameRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingLsfRating

instance FromHttpApiData ContentRatingLsfRating where
    parseQueryParam = \case
        "lsf13" -> Right LSF13
        "lsf17" -> Right LSF17
        "lsf21" -> Right LSF21
        "lsfA" -> Right LsfA
        "lsfBo" -> Right LsfBo
        "lsfD" -> Right LsfD
        "lsfR" -> Right LsfR
        "lsfSu" -> Right LsfSu
        "lsfUnrated" -> Right LsfUnrated
        x -> Left ("Unable to parse ContentRatingLsfRating from: " <> x)

instance ToHttpApiData ContentRatingLsfRating where
    toQueryParam = \case
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

-- | The type of ban.
data LiveChatBanSnippetType
    = LCBSTPermanent
      -- ^ @permanent@
    | LCBSTTemporary
      -- ^ @temporary@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveChatBanSnippetType

instance FromHttpApiData LiveChatBanSnippetType where
    parseQueryParam = \case
        "permanent" -> Right LCBSTPermanent
        "temporary" -> Right LCBSTTemporary
        x -> Left ("Unable to parse LiveChatBanSnippetType from: " <> x)

instance ToHttpApiData LiveChatBanSnippetType where
    toQueryParam = \case
        LCBSTPermanent -> "permanent"
        LCBSTTemporary -> "temporary"

instance FromJSON LiveChatBanSnippetType where
    parseJSON = parseJSONText "LiveChatBanSnippetType"

instance ToJSON LiveChatBanSnippetType where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingBfvcRating

instance FromHttpApiData ContentRatingBfvcRating where
    parseQueryParam = \case
        "bfvc13" -> Right BFVC13
        "bfvc15" -> Right BFVC15
        "bfvc18" -> Right BFVC18
        "bfvc20" -> Right BFVC20
        "bfvcB" -> Right BfvcB
        "bfvcE" -> Right BfvcE
        "bfvcG" -> Right BfvcG
        "bfvcUnrated" -> Right BfvcUnrated
        x -> Left ("Unable to parse ContentRatingBfvcRating from: " <> x)

instance ToHttpApiData ContentRatingBfvcRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastTopicType

instance FromHttpApiData LiveBroadcastTopicType where
    parseQueryParam = \case
        "videoGame" -> Right VideoGame
        x -> Left ("Unable to parse LiveBroadcastTopicType from: " <> x)

instance ToHttpApiData LiveBroadcastTopicType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListVideoDuration

instance FromHttpApiData SearchListVideoDuration where
    parseQueryParam = \case
        "any" -> Right Any
        "long" -> Right Long
        "medium" -> Right Medium
        "short" -> Right Short
        x -> Left ("Unable to parse SearchListVideoDuration from: " <> x)

instance ToHttpApiData SearchListVideoDuration where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListVideoCaption

instance FromHttpApiData SearchListVideoCaption where
    parseQueryParam = \case
        "any" -> Right SLVCAny
        "closedCaption" -> Right SLVCClosedCaption
        "none" -> Right SLVCNone
        x -> Left ("Unable to parse SearchListVideoCaption from: " <> x)

instance ToHttpApiData SearchListVideoCaption where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideosListMyRating

instance FromHttpApiData VideosListMyRating where
    parseQueryParam = \case
        "dislike" -> Right Dislike
        "like" -> Right Like
        x -> Left ("Unable to parse VideosListMyRating from: " <> x)

instance ToHttpApiData VideosListMyRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentSnippetViewerRating

instance FromHttpApiData CommentSnippetViewerRating where
    parseQueryParam = \case
        "dislike" -> Right CSVRDislike
        "like" -> Right CSVRLike
        "none" -> Right CSVRNone
        "unspecified" -> Right CSVRUnspecified
        x -> Left ("Unable to parse CommentSnippetViewerRating from: " <> x)

instance ToHttpApiData CommentSnippetViewerRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingFcbmRating

instance FromHttpApiData ContentRatingFcbmRating where
    parseQueryParam = \case
        "fcbm18" -> Right FCBM18
        "fcbm18pa" -> Right Fcbm18pa
        "fcbm18pl" -> Right Fcbm18pl
        "fcbm18sg" -> Right Fcbm18sg
        "fcbm18sx" -> Right Fcbm18sx
        "fcbmP13" -> Right FCBMP13
        "fcbmPg13" -> Right FCBMPG13
        "fcbmU" -> Right FcbmU
        "fcbmUnrated" -> Right FcbmUnrated
        x -> Left ("Unable to parse ContentRatingFcbmRating from: " <> x)

instance ToHttpApiData ContentRatingFcbmRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastsListBroadcastStatus

instance FromHttpApiData LiveBroadcastsListBroadcastStatus where
    parseQueryParam = \case
        "active" -> Right LBLBSActive
        "all" -> Right LBLBSAll
        "completed" -> Right LBLBSCompleted
        "upcoming" -> Right LBLBSUpcoming
        x -> Left ("Unable to parse LiveBroadcastsListBroadcastStatus from: " <> x)

instance ToHttpApiData LiveBroadcastsListBroadcastStatus where
    toQueryParam = \case
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
    | MOCTWR12
      -- ^ @moctwR12@
    | MOCTWR15
      -- ^ @moctwR15@
    | MoctwUnrated
      -- ^ @moctwUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMoctwRating

instance FromHttpApiData ContentRatingMoctwRating where
    parseQueryParam = \case
        "moctwG" -> Right MoctwG
        "moctwP" -> Right MoctwP
        "moctwPg" -> Right MoctwPg
        "moctwR" -> Right MoctwR
        "moctwR12" -> Right MOCTWR12
        "moctwR15" -> Right MOCTWR15
        "moctwUnrated" -> Right MoctwUnrated
        x -> Left ("Unable to parse ContentRatingMoctwRating from: " <> x)

instance ToHttpApiData ContentRatingMoctwRating where
    toQueryParam = \case
        MoctwG -> "moctwG"
        MoctwP -> "moctwP"
        MoctwPg -> "moctwPg"
        MoctwR -> "moctwR"
        MOCTWR12 -> "moctwR12"
        MOCTWR15 -> "moctwR15"
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingBmukkRating

instance FromHttpApiData ContentRatingBmukkRating where
    parseQueryParam = \case
        "bmukk10" -> Right BMUKK10
        "bmukk12" -> Right BMUKK12
        "bmukk14" -> Right BMUKK14
        "bmukk16" -> Right BMUKK16
        "bmukk6" -> Right BMUKK6
        "bmukk8" -> Right BMUKK8
        "bmukkAa" -> Right BmukkAa
        "bmukkUnrated" -> Right BmukkUnrated
        x -> Left ("Unable to parse ContentRatingBmukkRating from: " <> x)

instance ToHttpApiData ContentRatingBmukkRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingIcaaRating

instance FromHttpApiData ContentRatingIcaaRating where
    parseQueryParam = \case
        "icaa12" -> Right ICAA12
        "icaa13" -> Right ICAA13
        "icaa16" -> Right ICAA16
        "icaa18" -> Right ICAA18
        "icaa7" -> Right ICAA7
        "icaaApta" -> Right IcaaApta
        "icaaUnrated" -> Right IcaaUnrated
        "icaaX" -> Right IcaaX
        x -> Left ("Unable to parse ContentRatingIcaaRating from: " <> x)

instance ToHttpApiData ContentRatingIcaaRating where
    toQueryParam = \case
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
    | Legal
      -- ^ @legal@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoStatusRejectionReason

instance FromHttpApiData VideoStatusRejectionReason where
    parseQueryParam = \case
        "claim" -> Right Claim
        "copyright" -> Right Copyright
        "duplicate" -> Right Duplicate
        "inappropriate" -> Right InAppropriate
        "legal" -> Right Legal
        "length" -> Right Length
        "termsOfUse" -> Right TermsOfUse
        "trademark" -> Right Trademark
        "uploaderAccountClosed" -> Right UploaderAccountClosed
        "uploaderAccountSuspended" -> Right UploaderAccountSuspended
        x -> Left ("Unable to parse VideoStatusRejectionReason from: " <> x)

instance ToHttpApiData VideoStatusRejectionReason where
    toQueryParam = \case
        Claim -> "claim"
        Copyright -> "copyright"
        Duplicate -> "duplicate"
        InAppropriate -> "inappropriate"
        Legal -> "legal"
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCzfilmRating

instance FromHttpApiData ContentRatingCzfilmRating where
    parseQueryParam = \case
        "czfilm12" -> Right CZFILM12
        "czfilm14" -> Right CZFILM14
        "czfilm18" -> Right CZFILM18
        "czfilmU" -> Right CzfilmU
        "czfilmUnrated" -> Right CzfilmUnrated
        x -> Left ("Unable to parse ContentRatingCzfilmRating from: " <> x)

instance ToHttpApiData ContentRatingCzfilmRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingRussiaRating

instance FromHttpApiData ContentRatingRussiaRating where
    parseQueryParam = \case
        "russia0" -> Right RUSSIA0
        "russia12" -> Right RUSSIA12
        "russia16" -> Right RUSSIA16
        "russia18" -> Right RUSSIA18
        "russia6" -> Right RUSSIA6
        "russiaUnrated" -> Right RussiaUnrated
        x -> Left ("Unable to parse ContentRatingRussiaRating from: " <> x)

instance ToHttpApiData ContentRatingRussiaRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCicfRating

instance FromHttpApiData ContentRatingCicfRating where
    parseQueryParam = \case
        "cicfE" -> Right CicfE
        "cicfKntEna" -> Right CicfKntEna
        "cicfKtEa" -> Right CicfKtEa
        "cicfUnrated" -> Right CicfUnrated
        x -> Left ("Unable to parse ContentRatingCicfRating from: " <> x)

instance ToHttpApiData ContentRatingCicfRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingFmocRating

instance FromHttpApiData ContentRatingFmocRating where
    parseQueryParam = \case
        "fmoc10" -> Right FMOC10
        "fmoc12" -> Right FMOC12
        "fmoc16" -> Right FMOC16
        "fmoc18" -> Right FMOC18
        "fmocE" -> Right FmocE
        "fmocU" -> Right FmocU
        "fmocUnrated" -> Right FmocUnrated
        x -> Left ("Unable to parse ContentRatingFmocRating from: " <> x)

instance ToHttpApiData ContentRatingFmocRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastsTransitionBroadcastStatus

instance FromHttpApiData LiveBroadcastsTransitionBroadcastStatus where
    parseQueryParam = \case
        "complete" -> Right LBTBSComplete
        "live" -> Right LBTBSLive
        "testing" -> Right LBTBSTesting
        x -> Left ("Unable to parse LiveBroadcastsTransitionBroadcastStatus from: " <> x)

instance ToHttpApiData LiveBroadcastsTransitionBroadcastStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingNbcRating

instance FromHttpApiData ContentRatingNbcRating where
    parseQueryParam = \case
        "nbc12plus" -> Right Nbc12plus
        "nbc15plus" -> Right Nbc15plus
        "nbc18plus" -> Right Nbc18plus
        "nbc18plusr" -> Right Nbc18plusr
        "nbcG" -> Right NbcG
        "nbcPg" -> Right NbcPg
        "nbcPu" -> Right NbcPu
        "nbcUnrated" -> Right NbcUnrated
        x -> Left ("Unable to parse ContentRatingNbcRating from: " <> x)

instance ToHttpApiData ContentRatingNbcRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastStatusLiveBroadcastPriority

instance FromHttpApiData LiveBroadcastStatusLiveBroadcastPriority where
    parseQueryParam = \case
        "high" -> Right High
        "low" -> Right Low
        "normal" -> Right Normal
        x -> Left ("Unable to parse LiveBroadcastStatusLiveBroadcastPriority from: " <> x)

instance ToHttpApiData LiveBroadcastStatusLiveBroadcastPriority where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveStreamHealthStatusStatus

instance FromHttpApiData LiveStreamHealthStatusStatus where
    parseQueryParam = \case
        "bad" -> Right Bad
        "good" -> Right Good
        "noData" -> Right NoData
        "ok" -> Right OK
        "revoked" -> Right Revoked
        x -> Left ("Unable to parse LiveStreamHealthStatusStatus from: " <> x)

instance ToHttpApiData LiveStreamHealthStatusStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoRatingRating

instance FromHttpApiData VideoRatingRating where
    parseQueryParam = \case
        "dislike" -> Right VRRDislike
        "like" -> Right VRRLike
        "none" -> Right VRRNone
        "unspecified" -> Right VRRUnspecified
        x -> Left ("Unable to parse VideoRatingRating from: " <> x)

instance ToHttpApiData VideoRatingRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoSuggestionsProcessingWarningsItem

instance FromHttpApiData VideoSuggestionsProcessingWarningsItem where
    parseQueryParam = \case
        "hasEditlist" -> Right HasEditList
        "inconsistentResolution" -> Right InconsistentResolution
        "problematicAudioCodec" -> Right ProblematicAudioCodec
        "problematicVideoCodec" -> Right ProblematicVideoCodec
        "unknownAudioCodec" -> Right UnknownAudioCodec
        "unknownContainer" -> Right UnknownContainer
        "unknownVideoCodec" -> Right UnknownVideoCodec
        x -> Left ("Unable to parse VideoSuggestionsProcessingWarningsItem from: " <> x)

instance ToHttpApiData VideoSuggestionsProcessingWarningsItem where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InvideoPositionCornerPosition

instance FromHttpApiData InvideoPositionCornerPosition where
    parseQueryParam = \case
        "bottomLeft" -> Right BottomLeft
        "bottomRight" -> Right BottomRight
        "topLeft" -> Right TopLeft
        "topRight" -> Right TopRight
        x -> Left ("Unable to parse InvideoPositionCornerPosition from: " <> x)

instance ToHttpApiData InvideoPositionCornerPosition where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChannelStatusLongUploadsStatus

instance FromHttpApiData ChannelStatusLongUploadsStatus where
    parseQueryParam = \case
        "allowed" -> Right Allowed
        "disallowed" -> Right Disallowed
        "eligible" -> Right Eligible
        "longUploadsUnspecified" -> Right LongUploadsUnspecified
        x -> Left ("Unable to parse ChannelStatusLongUploadsStatus from: " <> x)

instance ToHttpApiData ChannelStatusLongUploadsStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCscfRating

instance FromHttpApiData ContentRatingCscfRating where
    parseQueryParam = \case
        "cscf12" -> Right CSCF12
        "cscf16" -> Right CSCF16
        "cscf18" -> Right CSCF18
        "cscf6" -> Right CSCF6
        "cscf9" -> Right CSCF9
        "cscfA" -> Right CscfA
        "cscfAl" -> Right CscfAl
        "cscfUnrated" -> Right CscfUnrated
        x -> Left ("Unable to parse ContentRatingCscfRating from: " <> x)

instance ToHttpApiData ContentRatingCscfRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastStatusRecordingStatus

instance FromHttpApiData LiveBroadcastStatusRecordingStatus where
    parseQueryParam = \case
        "notRecording" -> Right NotRecording
        "recorded" -> Right Recorded
        "recording" -> Right Recording
        x -> Left ("Unable to parse LiveBroadcastStatusRecordingStatus from: " <> x)

instance ToHttpApiData LiveBroadcastStatusRecordingStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoFileDetailsVideoStreamRotation

instance FromHttpApiData VideoFileDetailsVideoStreamRotation where
    parseQueryParam = \case
        "clockwise" -> Right VFDVSRClockwise
        "counterClockwise" -> Right VFDVSRCounterClockwise
        "none" -> Right VFDVSRNone
        "other" -> Right VFDVSROther
        "upsideDown" -> Right VFDVSRUpsideDown
        x -> Left ("Unable to parse VideoFileDetailsVideoStreamRotation from: " <> x)

instance ToHttpApiData VideoFileDetailsVideoStreamRotation where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingRtcRating

instance FromHttpApiData ContentRatingRtcRating where
    parseQueryParam = \case
        "rtcA" -> Right RtcA
        "rtcAa" -> Right RtcAa
        "rtcB" -> Right RtcB
        "rtcB15" -> Right RTCB15
        "rtcC" -> Right RtcC
        "rtcD" -> Right RtcD
        "rtcUnrated" -> Right RtcUnrated
        x -> Left ("Unable to parse ContentRatingRtcRating from: " <> x)

instance ToHttpApiData ContentRatingRtcRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentThreadsListModerationStatus

instance FromHttpApiData CommentThreadsListModerationStatus where
    parseQueryParam = \case
        "heldForReview" -> Right HeldForReview
        "likelySpam" -> Right LikelySpam
        "published" -> Right Published
        x -> Left ("Unable to parse CommentThreadsListModerationStatus from: " <> x)

instance ToHttpApiData CommentThreadsListModerationStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingSmaisRating

instance FromHttpApiData ContentRatingSmaisRating where
    parseQueryParam = \case
        "smais12" -> Right SMAIS12
        "smais14" -> Right SMAIS14
        "smais16" -> Right SMAIS16
        "smais18" -> Right SMAIS18
        "smais7" -> Right SMAIS7
        "smaisL" -> Right SmaisL
        "smaisUnrated" -> Right SmaisUnrated
        x -> Left ("Unable to parse ContentRatingSmaisRating from: " <> x)

instance ToHttpApiData ContentRatingSmaisRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingYtRating

instance FromHttpApiData ContentRatingYtRating where
    parseQueryParam = \case
        "ytAgeRestricted" -> Right YtAgeRestricted
        x -> Left ("Unable to parse ContentRatingYtRating from: " <> x)

instance ToHttpApiData ContentRatingYtRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoContentDetailsCaption

instance FromHttpApiData VideoContentDetailsCaption where
    parseQueryParam = \case
        "false" -> Right False'
        "true" -> Right True'
        x -> Left ("Unable to parse VideoContentDetailsCaption from: " <> x)

instance ToHttpApiData VideoContentDetailsCaption where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SubscriptionsListOrder

instance FromHttpApiData SubscriptionsListOrder where
    parseQueryParam = \case
        "alphabetical" -> Right SLOAlphabetical
        "relevance" -> Right SLORelevance
        "unread" -> Right SLOUnread
        x -> Left ("Unable to parse SubscriptionsListOrder from: " <> x)

instance ToHttpApiData SubscriptionsListOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingBbfcRating

instance FromHttpApiData ContentRatingBbfcRating where
    parseQueryParam = \case
        "bbfc12" -> Right BBFC12
        "bbfc12a" -> Right Bbfc12a
        "bbfc15" -> Right BBFC15
        "bbfc18" -> Right BBFC18
        "bbfcPg" -> Right BbfcPg
        "bbfcR18" -> Right BBFCR18
        "bbfcU" -> Right BbfcU
        "bbfcUnrated" -> Right BbfcUnrated
        x -> Left ("Unable to parse ContentRatingBbfcRating from: " <> x)

instance ToHttpApiData ContentRatingBbfcRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingTvpgRating

instance FromHttpApiData ContentRatingTvpgRating where
    parseQueryParam = \case
        "pg14" -> Right PG14
        "tvpgG" -> Right TvpgG
        "tvpgMa" -> Right TvpgMa
        "tvpgPg" -> Right TvpgPg
        "tvpgUnrated" -> Right TvpgUnrated
        "tvpgY" -> Right TvpgY
        "tvpgY7" -> Right TVPGY7
        "tvpgY7Fv" -> Right TvpgY7Fv
        x -> Left ("Unable to parse ContentRatingTvpgRating from: " <> x)

instance ToHttpApiData ContentRatingTvpgRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentsListTextFormat

instance FromHttpApiData CommentsListTextFormat where
    parseQueryParam = \case
        "html" -> Right HTML
        "plainText" -> Right PlainText
        x -> Left ("Unable to parse CommentsListTextFormat from: " <> x)

instance ToHttpApiData CommentsListTextFormat where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideosRateRating

instance FromHttpApiData VideosRateRating where
    parseQueryParam = \case
        "dislike" -> Right VDislike
        "like" -> Right VLike
        "none" -> Right VNone
        x -> Left ("Unable to parse VideosRateRating from: " <> x)

instance ToHttpApiData VideosRateRating where
    toQueryParam = \case
        VDislike -> "dislike"
        VLike -> "like"
        VNone -> "none"

instance FromJSON VideosRateRating where
    parseJSON = parseJSONText "VideosRateRating"

instance ToJSON VideosRateRating where
    toJSON = toJSONText

-- | The projection format of this broadcast. This defaults to rectangular.
data LiveBroadcastContentDetailsProjection
    = LBCDP360
      -- ^ @360@
    | LBCDPRectangular
      -- ^ @rectangular@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastContentDetailsProjection

instance FromHttpApiData LiveBroadcastContentDetailsProjection where
    parseQueryParam = \case
        "360" -> Right LBCDP360
        "rectangular" -> Right LBCDPRectangular
        x -> Left ("Unable to parse LiveBroadcastContentDetailsProjection from: " <> x)

instance ToHttpApiData LiveBroadcastContentDetailsProjection where
    toQueryParam = \case
        LBCDP360 -> "360"
        LBCDPRectangular -> "rectangular"

instance FromJSON LiveBroadcastContentDetailsProjection where
    parseJSON = parseJSONText "LiveBroadcastContentDetailsProjection"

instance ToJSON LiveBroadcastContentDetailsProjection where
    toJSON = toJSONText

-- | The caption track\'s status.
data CaptionSnippetStatus
    = Failed
      -- ^ @failed@
    | Serving
      -- ^ @serving@
    | Syncing
      -- ^ @syncing@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CaptionSnippetStatus

instance FromHttpApiData CaptionSnippetStatus where
    parseQueryParam = \case
        "failed" -> Right Failed
        "serving" -> Right Serving
        "syncing" -> Right Syncing
        x -> Left ("Unable to parse CaptionSnippetStatus from: " <> x)

instance ToHttpApiData CaptionSnippetStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingSkfilmRating

instance FromHttpApiData ContentRatingSkfilmRating where
    parseQueryParam = \case
        "skfilmG" -> Right SkfilmG
        "skfilmP2" -> Right SKFILMP2
        "skfilmP5" -> Right SKFILMP5
        "skfilmP8" -> Right SKFILMP8
        "skfilmUnrated" -> Right SkfilmUnrated
        x -> Left ("Unable to parse ContentRatingSkfilmRating from: " <> x)

instance ToHttpApiData ContentRatingSkfilmRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChannelSectionSnippetType

instance FromHttpApiData ChannelSectionSnippetType where
    parseQueryParam = \case
        "allPlaylists" -> Right AllPlayLists
        "channelsectionTypeUndefined" -> Right ChannelsectionTypeUndefined
        "completedEvents" -> Right CompletedEvents
        "likedPlaylists" -> Right LikedPlayLists
        "likes" -> Right Likes
        "liveEvents" -> Right LiveEvents
        "multipleChannels" -> Right MultipleChannels
        "multiplePlaylists" -> Right MultiplePlayLists
        "popularUploads" -> Right PopularUploads
        "postedPlaylists" -> Right PostedPlayLists
        "postedVideos" -> Right PostedVideos
        "recentActivity" -> Right RecentActivity
        "recentPosts" -> Right RecentPosts
        "recentUploads" -> Right RecentUploads
        "singlePlaylist" -> Right SinglePlayList
        "subscriptions" -> Right Subscriptions
        "upcomingEvents" -> Right UpcomingEvents
        x -> Left ("Unable to parse ChannelSectionSnippetType from: " <> x)

instance ToHttpApiData ChannelSectionSnippetType where
    toQueryParam = \case
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

-- | The broadcastType parameter filters the API response to only include
-- broadcasts with the specified type. This is only compatible with the
-- mine filter for now.
data LiveBroadcastsListBroadcastType
    = All
      -- ^ @all@
      -- Return all broadcasts.
    | Event
      -- ^ @event@
      -- Return only scheduled event broadcasts.
    | Persistent
      -- ^ @persistent@
      -- Return only persistent broadcasts.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastsListBroadcastType

instance FromHttpApiData LiveBroadcastsListBroadcastType where
    parseQueryParam = \case
        "all" -> Right All
        "event" -> Right Event
        "persistent" -> Right Persistent
        x -> Left ("Unable to parse LiveBroadcastsListBroadcastType from: " <> x)

instance ToHttpApiData LiveBroadcastsListBroadcastType where
    toQueryParam = \case
        All -> "all"
        Event -> "event"
        Persistent -> "persistent"

instance FromJSON LiveBroadcastsListBroadcastType where
    parseJSON = parseJSONText "LiveBroadcastsListBroadcastType"

instance ToJSON LiveBroadcastsListBroadcastType where
    toJSON = toJSONText

data ContentRatingFpbRatingReasonsItem
    = FpbBlasphemy
      -- ^ @fpbBlasphemy@
    | FpbCriminalTechniques
      -- ^ @fpbCriminalTechniques@
    | FpbDrugs
      -- ^ @fpbDrugs@
    | FpbHorror
      -- ^ @fpbHorror@
    | FpbImitativeActsTechniques
      -- ^ @fpbImitativeActsTechniques@
    | FpbLanguage
      -- ^ @fpbLanguage@
    | FpbNudity
      -- ^ @fpbNudity@
    | FpbPrejudice
      -- ^ @fpbPrejudice@
    | FpbSex
      -- ^ @fpbSex@
    | FpbSexualViolence
      -- ^ @fpbSexualViolence@
    | FpbViolence
      -- ^ @fpbViolence@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingFpbRatingReasonsItem

instance FromHttpApiData ContentRatingFpbRatingReasonsItem where
    parseQueryParam = \case
        "fpbBlasphemy" -> Right FpbBlasphemy
        "fpbCriminalTechniques" -> Right FpbCriminalTechniques
        "fpbDrugs" -> Right FpbDrugs
        "fpbHorror" -> Right FpbHorror
        "fpbImitativeActsTechniques" -> Right FpbImitativeActsTechniques
        "fpbLanguage" -> Right FpbLanguage
        "fpbNudity" -> Right FpbNudity
        "fpbPrejudice" -> Right FpbPrejudice
        "fpbSex" -> Right FpbSex
        "fpbSexualViolence" -> Right FpbSexualViolence
        "fpbViolence" -> Right FpbViolence
        x -> Left ("Unable to parse ContentRatingFpbRatingReasonsItem from: " <> x)

instance ToHttpApiData ContentRatingFpbRatingReasonsItem where
    toQueryParam = \case
        FpbBlasphemy -> "fpbBlasphemy"
        FpbCriminalTechniques -> "fpbCriminalTechniques"
        FpbDrugs -> "fpbDrugs"
        FpbHorror -> "fpbHorror"
        FpbImitativeActsTechniques -> "fpbImitativeActsTechniques"
        FpbLanguage -> "fpbLanguage"
        FpbNudity -> "fpbNudity"
        FpbPrejudice -> "fpbPrejudice"
        FpbSex -> "fpbSex"
        FpbSexualViolence -> "fpbSexualViolence"
        FpbViolence -> "fpbViolence"

instance FromJSON ContentRatingFpbRatingReasonsItem where
    parseJSON = parseJSONText "ContentRatingFpbRatingReasonsItem"

instance ToJSON ContentRatingFpbRatingReasonsItem where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoProcessingDetailsProcessingStatus

instance FromHttpApiData VideoProcessingDetailsProcessingStatus where
    parseQueryParam = \case
        "failed" -> Right VPDPSFailed
        "processing" -> Right VPDPSProcessing
        "succeeded" -> Right VPDPSSucceeded
        "terminated" -> Right VPDPSTerminated
        x -> Left ("Unable to parse VideoProcessingDetailsProcessingStatus from: " <> x)

instance ToHttpApiData VideoProcessingDetailsProcessingStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActivityContentDetailsPromotedItemCtaType

instance FromHttpApiData ActivityContentDetailsPromotedItemCtaType where
    parseQueryParam = \case
        "unspecified" -> Right Unspecified
        "visitAdvertiserSite" -> Right VisitAdvertiserSite
        x -> Left ("Unable to parse ActivityContentDetailsPromotedItemCtaType from: " <> x)

instance ToHttpApiData ActivityContentDetailsPromotedItemCtaType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListChannelType

instance FromHttpApiData SearchListChannelType where
    parseQueryParam = \case
        "any" -> Right SLCTAny
        "show" -> Right SLCTShow
        x -> Left ("Unable to parse SearchListChannelType from: " <> x)

instance ToHttpApiData SearchListChannelType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingKmrbRating

instance FromHttpApiData ContentRatingKmrbRating where
    parseQueryParam = \case
        "kmrb12plus" -> Right Kmrb12plus
        "kmrb15plus" -> Right Kmrb15plus
        "kmrbAll" -> Right KmrbAll
        "kmrbR" -> Right KmrbR
        "kmrbTeenr" -> Right KmrbTeenr
        "kmrbUnrated" -> Right KmrbUnrated
        x -> Left ("Unable to parse ContentRatingKmrbRating from: " <> x)

instance ToHttpApiData ContentRatingKmrbRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingOflcRating

instance FromHttpApiData ContentRatingOflcRating where
    parseQueryParam = \case
        "oflcG" -> Right OflcG
        "oflcM" -> Right OflcM
        "oflcPg" -> Right OflcPg
        "oflcR13" -> Right OFLCR13
        "oflcR15" -> Right OFLCR15
        "oflcR16" -> Right OFLCR16
        "oflcR18" -> Right OFLCR18
        "oflcRp13" -> Right OFLCRP13
        "oflcRp16" -> Right OFLCRP16
        "oflcUnrated" -> Right OflcUnrated
        x -> Left ("Unable to parse ContentRatingOflcRating from: " <> x)

instance ToHttpApiData ContentRatingOflcRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCNCRating

instance FromHttpApiData ContentRatingCNCRating where
    parseQueryParam = \case
        "cnc10" -> Right CNC10
        "cnc12" -> Right CNC12
        "cnc16" -> Right CNC16
        "cnc18" -> Right CNC18
        "cncE" -> Right CNCE
        "cncT" -> Right CNCT
        "cncUnrated" -> Right CNCUnrated
        x -> Left ("Unable to parse ContentRatingCNCRating from: " <> x)

instance ToHttpApiData ContentRatingCNCRating where
    toQueryParam = \case
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

-- | Rating system in Turkey - Evaluation and Classification Board of the
-- Ministry of Culture and Tourism
data ContentRatingEcbmctRating
    = Ecbmct13a
      -- ^ @ecbmct13a@
    | Ecbmct13plus
      -- ^ @ecbmct13plus@
    | Ecbmct15a
      -- ^ @ecbmct15a@
    | Ecbmct15plus
      -- ^ @ecbmct15plus@
    | Ecbmct18plus
      -- ^ @ecbmct18plus@
    | Ecbmct7a
      -- ^ @ecbmct7a@
    | Ecbmct7plus
      -- ^ @ecbmct7plus@
    | EcbmctG
      -- ^ @ecbmctG@
    | EcbmctUnrated
      -- ^ @ecbmctUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingEcbmctRating

instance FromHttpApiData ContentRatingEcbmctRating where
    parseQueryParam = \case
        "ecbmct13a" -> Right Ecbmct13a
        "ecbmct13plus" -> Right Ecbmct13plus
        "ecbmct15a" -> Right Ecbmct15a
        "ecbmct15plus" -> Right Ecbmct15plus
        "ecbmct18plus" -> Right Ecbmct18plus
        "ecbmct7a" -> Right Ecbmct7a
        "ecbmct7plus" -> Right Ecbmct7plus
        "ecbmctG" -> Right EcbmctG
        "ecbmctUnrated" -> Right EcbmctUnrated
        x -> Left ("Unable to parse ContentRatingEcbmctRating from: " <> x)

instance ToHttpApiData ContentRatingEcbmctRating where
    toQueryParam = \case
        Ecbmct13a -> "ecbmct13a"
        Ecbmct13plus -> "ecbmct13plus"
        Ecbmct15a -> "ecbmct15a"
        Ecbmct15plus -> "ecbmct15plus"
        Ecbmct18plus -> "ecbmct18plus"
        Ecbmct7a -> "ecbmct7a"
        Ecbmct7plus -> "ecbmct7plus"
        EcbmctG -> "ecbmctG"
        EcbmctUnrated -> "ecbmctUnrated"

instance FromJSON ContentRatingEcbmctRating where
    parseJSON = parseJSONText "ContentRatingEcbmctRating"

instance ToJSON ContentRatingEcbmctRating where
    toJSON = toJSONText

-- | Specifies the projection format of the video.
data VideoContentDetailsProjection
    = VCDP360
      -- ^ @360@
    | VCDPRectangular
      -- ^ @rectangular@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoContentDetailsProjection

instance FromHttpApiData VideoContentDetailsProjection where
    parseQueryParam = \case
        "360" -> Right VCDP360
        "rectangular" -> Right VCDPRectangular
        x -> Left ("Unable to parse VideoContentDetailsProjection from: " <> x)

instance ToHttpApiData VideoContentDetailsProjection where
    toQueryParam = \case
        VCDP360 -> "360"
        VCDPRectangular -> "rectangular"

instance FromJSON VideoContentDetailsProjection where
    parseJSON = parseJSONText "VideoContentDetailsProjection"

instance ToJSON VideoContentDetailsProjection where
    toJSON = toJSONText

-- | The video\'s rating in Greece.
data ContentRatingGrfilmRating
    = GrfilmE
      -- ^ @grfilmE@
    | GrfilmK
      -- ^ @grfilmK@
    | GRFILMK12
      -- ^ @grfilmK12@
    | GRFILMK13
      -- ^ @grfilmK13@
    | GRFILMK15
      -- ^ @grfilmK15@
    | GRFILMK17
      -- ^ @grfilmK17@
    | GRFILMK18
      -- ^ @grfilmK18@
    | GrfilmUnrated
      -- ^ @grfilmUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingGrfilmRating

instance FromHttpApiData ContentRatingGrfilmRating where
    parseQueryParam = \case
        "grfilmE" -> Right GrfilmE
        "grfilmK" -> Right GrfilmK
        "grfilmK12" -> Right GRFILMK12
        "grfilmK13" -> Right GRFILMK13
        "grfilmK15" -> Right GRFILMK15
        "grfilmK17" -> Right GRFILMK17
        "grfilmK18" -> Right GRFILMK18
        "grfilmUnrated" -> Right GrfilmUnrated
        x -> Left ("Unable to parse ContentRatingGrfilmRating from: " <> x)

instance ToHttpApiData ContentRatingGrfilmRating where
    toQueryParam = \case
        GrfilmE -> "grfilmE"
        GrfilmK -> "grfilmK"
        GRFILMK12 -> "grfilmK12"
        GRFILMK13 -> "grfilmK13"
        GRFILMK15 -> "grfilmK15"
        GRFILMK17 -> "grfilmK17"
        GRFILMK18 -> "grfilmK18"
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentThreadsListOrder

instance FromHttpApiData CommentThreadsListOrder where
    parseQueryParam = \case
        "relevance" -> Right CTLORelevance
        "time" -> Right CTLOTime
        x -> Left ("Unable to parse CommentThreadsListOrder from: " <> x)

instance ToHttpApiData CommentThreadsListOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingIlfilmRating

instance FromHttpApiData ContentRatingIlfilmRating where
    parseQueryParam = \case
        "ilfilm12" -> Right ILFILM12
        "ilfilm16" -> Right ILFILM16
        "ilfilm18" -> Right ILFILM18
        "ilfilmAa" -> Right IlfilmAa
        "ilfilmUnrated" -> Right IlfilmUnrated
        x -> Left ("Unable to parse ContentRatingIlfilmRating from: " <> x)

instance ToHttpApiData ContentRatingIlfilmRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingNbcplRating

instance FromHttpApiData ContentRatingNbcplRating where
    parseQueryParam = \case
        "nbcpl18plus" -> Right Nbcpl18plus
        "nbcplI" -> Right NbcplI
        "nbcplIi" -> Right NbcplIi
        "nbcplIii" -> Right NbcplIii
        "nbcplIv" -> Right NbcplIv
        "nbcplUnrated" -> Right NbcplUnrated
        x -> Left ("Unable to parse ContentRatingNbcplRating from: " <> x)

instance ToHttpApiData ContentRatingNbcplRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoStatusUploadStatus

instance FromHttpApiData VideoStatusUploadStatus where
    parseQueryParam = \case
        "deleted" -> Right VSUSDeleted
        "failed" -> Right VSUSFailed
        "processed" -> Right VSUSProcessed
        "rejected" -> Right VSUSRejected
        "uploaded" -> Right VSUSUploaded
        x -> Left ("Unable to parse VideoStatusUploadStatus from: " <> x)

instance ToHttpApiData VideoStatusUploadStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingRteRating

instance FromHttpApiData ContentRatingRteRating where
    parseQueryParam = \case
        "rteCh" -> Right RteCh
        "rteGa" -> Right RteGa
        "rteMa" -> Right RteMa
        "rtePs" -> Right RtePs
        "rteUnrated" -> Right RteUnrated
        x -> Left ("Unable to parse ContentRatingRteRating from: " <> x)

instance ToHttpApiData ContentRatingRteRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentThreadsListTextFormat

instance FromHttpApiData CommentThreadsListTextFormat where
    parseQueryParam = \case
        "html" -> Right CTLTFHTML
        "plainText" -> Right CTLTFPlainText
        x -> Left ("Unable to parse CommentThreadsListTextFormat from: " <> x)

instance ToHttpApiData CommentThreadsListTextFormat where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingIfcoRating

instance FromHttpApiData ContentRatingIfcoRating where
    parseQueryParam = \case
        "ifco12" -> Right IFCO12
        "ifco12a" -> Right Ifco12a
        "ifco15" -> Right IFCO15
        "ifco15a" -> Right Ifco15a
        "ifco16" -> Right IFCO16
        "ifco18" -> Right IFCO18
        "ifcoG" -> Right IfcoG
        "ifcoPg" -> Right IfcoPg
        "ifcoUnrated" -> Right IfcoUnrated
        x -> Left ("Unable to parse ContentRatingIfcoRating from: " <> x)

instance ToHttpApiData ContentRatingIfcoRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentsSetModerationStatusModerationStatus

instance FromHttpApiData CommentsSetModerationStatusModerationStatus where
    parseQueryParam = \case
        "heldForReview" -> Right CSMSMSHeldForReview
        "published" -> Right CSMSMSPublished
        "rejected" -> Right CSMSMSRejected
        x -> Left ("Unable to parse CommentsSetModerationStatusModerationStatus from: " <> x)

instance ToHttpApiData CommentsSetModerationStatusModerationStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActivityContentDetailsSocialType

instance FromHttpApiData ActivityContentDetailsSocialType where
    parseQueryParam = \case
        "facebook" -> Right ACDSTFacebook
        "googlePlus" -> Right ACDSTGooglePlus
        "twitter" -> Right ACDSTTwitter
        "unspecified" -> Right ACDSTUnspecified
        x -> Left ("Unable to parse ActivityContentDetailsSocialType from: " <> x)

instance ToHttpApiData ActivityContentDetailsSocialType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMedietilsynetRating

instance FromHttpApiData ContentRatingMedietilsynetRating where
    parseQueryParam = \case
        "medietilsynet11" -> Right MEDIETILSYNET11
        "medietilsynet12" -> Right MEDIETILSYNET12
        "medietilsynet15" -> Right MEDIETILSYNET15
        "medietilsynet18" -> Right MEDIETILSYNET18
        "medietilsynet6" -> Right MEDIETILSYNET6
        "medietilsynet7" -> Right MEDIETILSYNET7
        "medietilsynet9" -> Right MEDIETILSYNET9
        "medietilsynetA" -> Right MedietilsynetA
        "medietilsynetUnrated" -> Right MedietilsynetUnrated
        x -> Left ("Unable to parse ContentRatingMedietilsynetRating from: " <> x)

instance ToHttpApiData ContentRatingMedietilsynetRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlayListItemStatusPrivacyStatus

instance FromHttpApiData PlayListItemStatusPrivacyStatus where
    parseQueryParam = \case
        "private" -> Right PLISPSPrivate
        "public" -> Right PLISPSPublic
        "unlisted" -> Right PLISPSUnListed
        x -> Left ("Unable to parse PlayListItemStatusPrivacyStatus from: " <> x)

instance ToHttpApiData PlayListItemStatusPrivacyStatus where
    toQueryParam = \case
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
    = SCDATAll
      -- ^ @all@
    | SCDATUploads
      -- ^ @uploads@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SubscriptionContentDetailsActivityType

instance FromHttpApiData SubscriptionContentDetailsActivityType where
    parseQueryParam = \case
        "all" -> Right SCDATAll
        "uploads" -> Right SCDATUploads
        x -> Left ("Unable to parse SubscriptionContentDetailsActivityType from: " <> x)

instance ToHttpApiData SubscriptionContentDetailsActivityType where
    toQueryParam = \case
        SCDATAll -> "all"
        SCDATUploads -> "uploads"

instance FromJSON SubscriptionContentDetailsActivityType where
    parseJSON = parseJSONText "SubscriptionContentDetailsActivityType"

instance ToJSON SubscriptionContentDetailsActivityType where
    toJSON = toJSONText

-- | The video\'s rating from South Africa\'s Film and Publication Board.
data ContentRatingFpbRating
    = FPB10
      -- ^ @fpb10@
    | Fpb1012Pg
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingFpbRating

instance FromHttpApiData ContentRatingFpbRating where
    parseQueryParam = \case
        "fpb10" -> Right FPB10
        "fpb1012Pg" -> Right Fpb1012Pg
        "fpb13" -> Right FPB13
        "fpb16" -> Right FPB16
        "fpb18" -> Right FPB18
        "fpb79Pg" -> Right Fpb79Pg
        "fpbA" -> Right FpbA
        "fpbPg" -> Right FpbPg
        "fpbUnrated" -> Right FpbUnrated
        "fpbX18" -> Right FPBX18
        "fpbXx" -> Right FpbXx
        x -> Left ("Unable to parse ContentRatingFpbRating from: " <> x)

instance ToHttpApiData ContentRatingFpbRating where
    toQueryParam = \case
        FPB10 -> "fpb10"
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

data LiveBroadcastContentDetailsClosedCaptionsType
    = ClosedCaptionsDisabled
      -- ^ @closedCaptionsDisabled@
    | ClosedCaptionsEmbedded
      -- ^ @closedCaptionsEmbedded@
    | ClosedCaptionsHTTPPost
      -- ^ @closedCaptionsHttpPost@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastContentDetailsClosedCaptionsType

instance FromHttpApiData LiveBroadcastContentDetailsClosedCaptionsType where
    parseQueryParam = \case
        "closedCaptionsDisabled" -> Right ClosedCaptionsDisabled
        "closedCaptionsEmbedded" -> Right ClosedCaptionsEmbedded
        "closedCaptionsHttpPost" -> Right ClosedCaptionsHTTPPost
        x -> Left ("Unable to parse LiveBroadcastContentDetailsClosedCaptionsType from: " <> x)

instance ToHttpApiData LiveBroadcastContentDetailsClosedCaptionsType where
    toQueryParam = \case
        ClosedCaptionsDisabled -> "closedCaptionsDisabled"
        ClosedCaptionsEmbedded -> "closedCaptionsEmbedded"
        ClosedCaptionsHTTPPost -> "closedCaptionsHttpPost"

instance FromJSON LiveBroadcastContentDetailsClosedCaptionsType where
    parseJSON = parseJSONText "LiveBroadcastContentDetailsClosedCaptionsType"

instance ToJSON LiveBroadcastContentDetailsClosedCaptionsType where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListVideoDimension

instance FromHttpApiData SearchListVideoDimension where
    parseQueryParam = \case
        "2d" -> Right S2D
        "3d" -> Right S3D
        "any" -> Right SAny
        x -> Left ("Unable to parse SearchListVideoDimension from: " <> x)

instance ToHttpApiData SearchListVideoDimension where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingNkclvRating

instance FromHttpApiData ContentRatingNkclvRating where
    parseQueryParam = \case
        "nkclv12plus" -> Right Nkclv12plus
        "nkclv18plus" -> Right Nkclv18plus
        "nkclv7plus" -> Right Nkclv7plus
        "nkclvU" -> Right NkclvU
        "nkclvUnrated" -> Right NkclvUnrated
        x -> Left ("Unable to parse ContentRatingNkclvRating from: " <> x)

instance ToHttpApiData ContentRatingNkclvRating where
    toQueryParam = \case
        Nkclv12plus -> "nkclv12plus"
        Nkclv18plus -> "nkclv18plus"
        Nkclv7plus -> "nkclv7plus"
        NkclvU -> "nkclvU"
        NkclvUnrated -> "nkclvUnrated"

instance FromJSON ContentRatingNkclvRating where
    parseJSON = parseJSONText "ContentRatingNkclvRating"

instance ToJSON ContentRatingNkclvRating where
    toJSON = toJSONText

-- | The filter parameter specifies which channel sponsors to return.
data SponsorsListFilter
    = SLFAll
      -- ^ @all@
      -- Return all sponsors, from newest to oldest.
    | SLFNewest
      -- ^ @newest@
      -- Return the most recent sponsors, from newest to oldest.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SponsorsListFilter

instance FromHttpApiData SponsorsListFilter where
    parseQueryParam = \case
        "all" -> Right SLFAll
        "newest" -> Right SLFNewest
        x -> Left ("Unable to parse SponsorsListFilter from: " <> x)

instance ToHttpApiData SponsorsListFilter where
    toQueryParam = \case
        SLFAll -> "all"
        SLFNewest -> "newest"

instance FromJSON SponsorsListFilter where
    parseJSON = parseJSONText "SponsorsListFilter"

instance ToJSON SponsorsListFilter where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListVideoType

instance FromHttpApiData SearchListVideoType where
    parseQueryParam = \case
        "any" -> Right SLVTAny
        "episode" -> Right SLVTEpisode
        "movie" -> Right SLVTMovie
        x -> Left ("Unable to parse SearchListVideoType from: " <> x)

instance ToHttpApiData SearchListVideoType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMibacRating

instance FromHttpApiData ContentRatingMibacRating where
    parseQueryParam = \case
        "mibacT" -> Right MibacT
        "mibacUnrated" -> Right MibacUnrated
        "mibacVap" -> Right MibacVap
        "mibacVm12" -> Right MIBACVM12
        "mibacVm14" -> Right MIBACVM14
        "mibacVm18" -> Right MIBACVM18
        x -> Left ("Unable to parse ContentRatingMibacRating from: " <> x)

instance ToHttpApiData ContentRatingMibacRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingResorteviolenciaRating

instance FromHttpApiData ContentRatingResorteviolenciaRating where
    parseQueryParam = \case
        "resorteviolenciaA" -> Right ResorteviolenciaA
        "resorteviolenciaB" -> Right ResorteviolenciaB
        "resorteviolenciaC" -> Right ResorteviolenciaC
        "resorteviolenciaD" -> Right ResorteviolenciaD
        "resorteviolenciaE" -> Right ResorteviolenciaE
        "resorteviolenciaUnrated" -> Right ResorteviolenciaUnrated
        x -> Left ("Unable to parse ContentRatingResorteviolenciaRating from: " <> x)

instance ToHttpApiData ContentRatingResorteviolenciaRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingEgfilmRating

instance FromHttpApiData ContentRatingEgfilmRating where
    parseQueryParam = \case
        "egfilm18" -> Right EGFILM18
        "egfilmBn" -> Right EgfilmBn
        "egfilmGn" -> Right EgfilmGn
        "egfilmUnrated" -> Right EgfilmUnrated
        x -> Left ("Unable to parse ContentRatingEgfilmRating from: " <> x)

instance ToHttpApiData ContentRatingEgfilmRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMccypRating

instance FromHttpApiData ContentRatingMccypRating where
    parseQueryParam = \case
        "mccyp11" -> Right MCCYP11
        "mccyp15" -> Right MCCYP15
        "mccyp7" -> Right MCCYP7
        "mccypA" -> Right MccypA
        "mccypUnrated" -> Right MccypUnrated
        x -> Left ("Unable to parse ContentRatingMccypRating from: " <> x)

instance ToHttpApiData ContentRatingMccypRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlayListStatusPrivacyStatus

instance FromHttpApiData PlayListStatusPrivacyStatus where
    parseQueryParam = \case
        "private" -> Right PLSPSPrivate
        "public" -> Right PLSPSPublic
        "unlisted" -> Right PLSPSUnListed
        x -> Left ("Unable to parse PlayListStatusPrivacyStatus from: " <> x)

instance ToHttpApiData PlayListStatusPrivacyStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCsaRating

instance FromHttpApiData ContentRatingCsaRating where
    parseQueryParam = \case
        "csa10" -> Right CSA10
        "csa12" -> Right CSA12
        "csa16" -> Right CSA16
        "csa18" -> Right CSA18
        "csaInterdiction" -> Right CsaInterdiction
        "csaT" -> Right CsaT
        "csaUnrated" -> Right CsaUnrated
        x -> Left ("Unable to parse ContentRatingCsaRating from: " <> x)

instance ToHttpApiData ContentRatingCsaRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChannelSectionSnippetStyle

instance FromHttpApiData ChannelSectionSnippetStyle where
    parseQueryParam = \case
        "channelsectionStyleUndefined" -> Right ChannelsectionStyleUndefined
        "horizontalRow" -> Right HorizontalRow
        "verticalList" -> Right VerticalList
        x -> Left ("Unable to parse ChannelSectionSnippetStyle from: " <> x)

instance ToHttpApiData ChannelSectionSnippetStyle where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingEirinRating

instance FromHttpApiData ContentRatingEirinRating where
    parseQueryParam = \case
        "eirinG" -> Right EirinG
        "eirinPg12" -> Right EIRINPG12
        "eirinR15plus" -> Right EirinR15plus
        "eirinR18plus" -> Right EirinR18plus
        "eirinUnrated" -> Right EirinUnrated
        x -> Left ("Unable to parse ContentRatingEirinRating from: " <> x)

instance ToHttpApiData ContentRatingEirinRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoSuggestionsProcessingHintsItem

instance FromHttpApiData VideoSuggestionsProcessingHintsItem where
    parseQueryParam = \case
        "nonStreamableMov" -> Right NonStreamableMov
        "sendBestQualityVideo" -> Right SendBestQualityVideo
        x -> Left ("Unable to parse VideoSuggestionsProcessingHintsItem from: " <> x)

instance ToHttpApiData VideoSuggestionsProcessingHintsItem where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingNfrcRating

instance FromHttpApiData ContentRatingNfrcRating where
    parseQueryParam = \case
        "nfrcA" -> Right NfrcA
        "nfrcB" -> Right NfrcB
        "nfrcC" -> Right NfrcC
        "nfrcD" -> Right NfrcD
        "nfrcUnrated" -> Right NfrcUnrated
        "nfrcX" -> Right NfrcX
        x -> Left ("Unable to parse ContentRatingNfrcRating from: " <> x)

instance ToHttpApiData ContentRatingNfrcRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActivitySnippetType

instance FromHttpApiData ActivitySnippetType where
    parseQueryParam = \case
        "bulletin" -> Right ASTBulletin
        "channelItem" -> Right ASTChannelItem
        "comment" -> Right ASTComment
        "favorite" -> Right ASTFavorite
        "like" -> Right ASTLike
        "playlistItem" -> Right ASTPlayListItem
        "promotedItem" -> Right ASTPromotedItem
        "recommendation" -> Right ASTRecommendation
        "social" -> Right ASTSocial
        "subscription" -> Right ASTSubscription
        "upload" -> Right ASTUpload
        x -> Left ("Unable to parse ActivitySnippetType from: " <> x)

instance ToHttpApiData ActivitySnippetType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMocRating

instance FromHttpApiData ContentRatingMocRating where
    parseQueryParam = \case
        "moc12" -> Right MOC12
        "moc15" -> Right MOC15
        "moc18" -> Right MOC18
        "moc7" -> Right MOC7
        "mocBanned" -> Right MocBanned
        "mocE" -> Right MocE
        "mocT" -> Right MocT
        "mocUnrated" -> Right MocUnrated
        "mocX" -> Right MocX
        x -> Left ("Unable to parse ContentRatingMocRating from: " <> x)

instance ToHttpApiData ContentRatingMocRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListVideoEmbeddable

instance FromHttpApiData SearchListVideoEmbeddable where
    parseQueryParam = \case
        "any" -> Right SLVEAny
        "true" -> Right SLVETrue'
        x -> Left ("Unable to parse SearchListVideoEmbeddable from: " <> x)

instance ToHttpApiData SearchListVideoEmbeddable where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListEventType

instance FromHttpApiData SearchListEventType where
    parseQueryParam = \case
        "completed" -> Right SLETCompleted
        "live" -> Right SLETLive
        "upcoming" -> Right SLETUpcoming
        x -> Left ("Unable to parse SearchListEventType from: " <> x)

instance ToHttpApiData SearchListEventType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActivityContentDetailsRecommendationReason

instance FromHttpApiData ActivityContentDetailsRecommendationReason where
    parseQueryParam = \case
        "unspecified" -> Right ACDRRUnspecified
        "videoFavorited" -> Right ACDRRVideoFavorited
        "videoLiked" -> Right ACDRRVideoLiked
        "videoWatched" -> Right ACDRRVideoWatched
        x -> Left ("Unable to parse ActivityContentDetailsRecommendationReason from: " <> x)

instance ToHttpApiData ActivityContentDetailsRecommendationReason where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingKijkwijzerRating

instance FromHttpApiData ContentRatingKijkwijzerRating where
    parseQueryParam = \case
        "kijkwijzer12" -> Right KIJKWIJZER12
        "kijkwijzer16" -> Right KIJKWIJZER16
        "kijkwijzer18" -> Right KIJKWIJZER18
        "kijkwijzer6" -> Right KIJKWIJZER6
        "kijkwijzer9" -> Right KIJKWIJZER9
        "kijkwijzerAl" -> Right KijkwijzerAl
        "kijkwijzerUnrated" -> Right KijkwijzerUnrated
        x -> Left ("Unable to parse ContentRatingKijkwijzerRating from: " <> x)

instance ToHttpApiData ContentRatingKijkwijzerRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoSuggestionsProcessingErrorsItem

instance FromHttpApiData VideoSuggestionsProcessingErrorsItem where
    parseQueryParam = \case
        "archiveFile" -> Right ArchiveFile
        "audioFile" -> Right AudioFile
        "docFile" -> Right DocFile
        "imageFile" -> Right ImageFile
        "notAVideoFile" -> Right NotAVideoFile
        "projectFile" -> Right ProjectFile
        x -> Left ("Unable to parse VideoSuggestionsProcessingErrorsItem from: " <> x)

instance ToHttpApiData VideoSuggestionsProcessingErrorsItem where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoFileDetailsFileType

instance FromHttpApiData VideoFileDetailsFileType where
    parseQueryParam = \case
        "archive" -> Right VFDFTArchive
        "audio" -> Right VFDFTAudio
        "document" -> Right VFDFTDocument
        "image" -> Right VFDFTImage
        "other" -> Right VFDFTOther
        "project" -> Right VFDFTProject
        "video" -> Right VFDFTVideo
        x -> Left ("Unable to parse VideoFileDetailsFileType from: " <> x)

instance ToHttpApiData VideoFileDetailsFileType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMtrcbRating

instance FromHttpApiData ContentRatingMtrcbRating where
    parseQueryParam = \case
        "mtrcbG" -> Right MtrcbG
        "mtrcbPg" -> Right MtrcbPg
        "mtrcbR13" -> Right MTRCBR13
        "mtrcbR16" -> Right MTRCBR16
        "mtrcbR18" -> Right MTRCBR18
        "mtrcbUnrated" -> Right MtrcbUnrated
        "mtrcbX" -> Right MtrcbX
        x -> Left ("Unable to parse ContentRatingMtrcbRating from: " <> x)

instance ToHttpApiData ContentRatingMtrcbRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingFcoRating

instance FromHttpApiData ContentRatingFcoRating where
    parseQueryParam = \case
        "fcoI" -> Right FcoI
        "fcoIi" -> Right FcoIi
        "fcoIia" -> Right FcoIia
        "fcoIib" -> Right FcoIib
        "fcoIii" -> Right FcoIii
        "fcoUnrated" -> Right FcoUnrated
        x -> Left ("Unable to parse ContentRatingFcoRating from: " <> x)

instance ToHttpApiData ContentRatingFcoRating where
    toQueryParam = \case
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

-- | The frame rate of the inbound video data.
data CdnSettingsFrameRate
    = CSFR30fps
      -- ^ @30fps@
    | CSFR60fps
      -- ^ @60fps@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CdnSettingsFrameRate

instance FromHttpApiData CdnSettingsFrameRate where
    parseQueryParam = \case
        "30fps" -> Right CSFR30fps
        "60fps" -> Right CSFR60fps
        x -> Left ("Unable to parse CdnSettingsFrameRate from: " <> x)

instance ToHttpApiData CdnSettingsFrameRate where
    toQueryParam = \case
        CSFR30fps -> "30fps"
        CSFR60fps -> "60fps"

instance FromJSON CdnSettingsFrameRate where
    parseJSON = parseJSONText "CdnSettingsFrameRate"

instance ToJSON CdnSettingsFrameRate where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveStreamConfigurationIssueType

instance FromHttpApiData LiveStreamConfigurationIssueType where
    parseQueryParam = \case
        "audioBitrateHigh" -> Right AudioBitrateHigh
        "audioBitrateLow" -> Right AudioBitrateLow
        "audioBitrateMismatch" -> Right AudioBitrateMismatch
        "audioCodec" -> Right AudioCodec
        "audioCodecMismatch" -> Right AudioCodecMismatch
        "audioSampleRate" -> Right AudioSampleRate
        "audioSampleRateMismatch" -> Right AudioSampleRateMismatch
        "audioStereoMismatch" -> Right AudioStereoMismatch
        "audioTooManyChannels" -> Right AudioTooManyChannels
        "badContainer" -> Right BadContainer
        "bitrateHigh" -> Right BitrateHigh
        "bitrateLow" -> Right BitrateLow
        "frameRateHigh" -> Right FrameRateHigh
        "framerateMismatch" -> Right FramerateMismatch
        "gopMismatch" -> Right GopMismatch
        "gopSizeLong" -> Right GopSizeLong
        "gopSizeOver" -> Right GopSizeOver
        "gopSizeShort" -> Right GopSizeShort
        "interlacedVideo" -> Right InterlacedVideo
        "multipleAudioStreams" -> Right MultipleAudioStreams
        "multipleVideoStreams" -> Right MultipleVideoStreams
        "noAudioStream" -> Right NoAudioStream
        "noVideoStream" -> Right NoVideoStream
        "openGop" -> Right OpenGop
        "resolutionMismatch" -> Right ResolutionMismatch
        "videoBitrateMismatch" -> Right VideoBitrateMismatch
        "videoCodec" -> Right VideoCodec
        "videoCodecMismatch" -> Right VideoCodecMismatch
        "videoIngestionStarved" -> Right VideoIngestionStarved
        "videoInterlaceMismatch" -> Right VideoInterlaceMismatch
        "videoProfileMismatch" -> Right VideoProFileMismatch
        "videoResolutionSuboptimal" -> Right VideoResolutionSuboptimal
        "videoResolutionUnsupported" -> Right VideoResolutionUnsupported
        x -> Left ("Unable to parse LiveStreamConfigurationIssueType from: " <> x)

instance ToHttpApiData LiveStreamConfigurationIssueType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListSafeSearch

instance FromHttpApiData SearchListSafeSearch where
    parseQueryParam = \case
        "moderate" -> Right SLSSModerate
        "none" -> Right SLSSNone
        "strict" -> Right SLSSStrict
        x -> Left ("Unable to parse SearchListSafeSearch from: " <> x)

instance ToHttpApiData SearchListSafeSearch where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListVideoSyndicated

instance FromHttpApiData SearchListVideoSyndicated where
    parseQueryParam = \case
        "any" -> Right SLVSAny
        "true" -> Right SLVSTrue'
        x -> Left ("Unable to parse SearchListVideoSyndicated from: " <> x)

instance ToHttpApiData SearchListVideoSyndicated where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingDjctqRatingReasonsItem

instance FromHttpApiData ContentRatingDjctqRatingReasonsItem where
    parseQueryParam = \case
        "djctqCriminalActs" -> Right DjctqCriminalActs
        "djctqDrugs" -> Right DjctqDrugs
        "djctqExplicitSex" -> Right DjctqExplicitSex
        "djctqExtremeViolence" -> Right DjctqExtremeViolence
        "djctqIllegalDrugs" -> Right DjctqIllegalDrugs
        "djctqImpactingContent" -> Right DjctqImpactingContent
        "djctqInappropriateLanguage" -> Right DjctqInAppropriateLanguage
        "djctqLegalDrugs" -> Right DjctqLegalDrugs
        "djctqNudity" -> Right DjctqNudity
        "djctqSex" -> Right DjctqSex
        "djctqSexualContent" -> Right DjctqSexualContent
        "djctqViolence" -> Right DjctqViolence
        x -> Left ("Unable to parse ContentRatingDjctqRatingReasonsItem from: " <> x)

instance ToHttpApiData ContentRatingDjctqRatingReasonsItem where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CdnSettingsIngestionType

instance FromHttpApiData CdnSettingsIngestionType where
    parseQueryParam = \case
        "dash" -> Right Dash
        "rtmp" -> Right Rtmp
        x -> Left ("Unable to parse CdnSettingsIngestionType from: " <> x)

instance ToHttpApiData CdnSettingsIngestionType where
    toQueryParam = \case
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
    = OffSetFromEnd
      -- ^ @offsetFromEnd@
    | OffSetFromStart
      -- ^ @offsetFromStart@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InvideoTimingType

instance FromHttpApiData InvideoTimingType where
    parseQueryParam = \case
        "offsetFromEnd" -> Right OffSetFromEnd
        "offsetFromStart" -> Right OffSetFromStart
        x -> Left ("Unable to parse InvideoTimingType from: " <> x)

instance ToHttpApiData InvideoTimingType where
    toQueryParam = \case
        OffSetFromEnd -> "offsetFromEnd"
        OffSetFromStart -> "offsetFromStart"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingAgcomRating

instance FromHttpApiData ContentRatingAgcomRating where
    parseQueryParam = \case
        "agcomT" -> Right AgcomT
        "agcomUnrated" -> Right AgcomUnrated
        "agcomVm14" -> Right AGCOMVM14
        "agcomVm18" -> Right AGCOMVM18
        x -> Left ("Unable to parse ContentRatingAgcomRating from: " <> x)

instance ToHttpApiData ContentRatingAgcomRating where
    toQueryParam = \case
        AgcomT -> "agcomT"
        AgcomUnrated -> "agcomUnrated"
        AGCOMVM14 -> "agcomVm14"
        AGCOMVM18 -> "agcomVm18"

instance FromJSON ContentRatingAgcomRating where
    parseJSON = parseJSONText "ContentRatingAgcomRating"

instance ToJSON ContentRatingAgcomRating where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentSnippetModerationStatus

instance FromHttpApiData CommentSnippetModerationStatus where
    parseQueryParam = \case
        "heldForReview" -> Right CSMSHeldForReview
        "likelySpam" -> Right CSMSLikelySpam
        "published" -> Right CSMSPublished
        "rejected" -> Right CSMSRejected
        x -> Left ("Unable to parse CommentSnippetModerationStatus from: " <> x)

instance ToHttpApiData CommentSnippetModerationStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListVideoLicense

instance FromHttpApiData SearchListVideoLicense where
    parseQueryParam = \case
        "any" -> Right SLVLAny
        "creativeCommon" -> Right SLVLCreativeCommon
        "youtube" -> Right SLVLYouTube
        x -> Left ("Unable to parse SearchListVideoLicense from: " <> x)

instance ToHttpApiData SearchListVideoLicense where
    toQueryParam = \case
        SLVLAny -> "any"
        SLVLCreativeCommon -> "creativeCommon"
        SLVLYouTube -> "youtube"

instance FromJSON SearchListVideoLicense where
    parseJSON = parseJSONText "SearchListVideoLicense"

instance ToJSON SearchListVideoLicense where
    toJSON = toJSONText

-- | The type of message, this will always be present, it determines the
-- contents of the message as well as which fields will be present.
data LiveChatMessageSnippetType
    = LCMSTChatEndedEvent
      -- ^ @chatEndedEvent@
    | LCMSTFanFundingEvent
      -- ^ @fanFundingEvent@
    | LCMSTMessageDeletedEvent
      -- ^ @messageDeletedEvent@
    | LCMSTMessageRetractedEvent
      -- ^ @messageRetractedEvent@
    | LCMSTNewSponsorEvent
      -- ^ @newSponsorEvent@
    | LCMSTPollClosedEvent
      -- ^ @pollClosedEvent@
    | LCMSTPollEditedEvent
      -- ^ @pollEditedEvent@
    | LCMSTPollOpenedEvent
      -- ^ @pollOpenedEvent@
    | LCMSTPollVotedEvent
      -- ^ @pollVotedEvent@
    | LCMSTSponsorOnlyModeEndedEvent
      -- ^ @sponsorOnlyModeEndedEvent@
    | LCMSTSponsorOnlyModeStartedEvent
      -- ^ @sponsorOnlyModeStartedEvent@
    | LCMSTTextMessageEvent
      -- ^ @textMessageEvent@
    | LCMSTTombstone
      -- ^ @tombstone@
    | LCMSTUserBannedEvent
      -- ^ @userBannedEvent@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveChatMessageSnippetType

instance FromHttpApiData LiveChatMessageSnippetType where
    parseQueryParam = \case
        "chatEndedEvent" -> Right LCMSTChatEndedEvent
        "fanFundingEvent" -> Right LCMSTFanFundingEvent
        "messageDeletedEvent" -> Right LCMSTMessageDeletedEvent
        "messageRetractedEvent" -> Right LCMSTMessageRetractedEvent
        "newSponsorEvent" -> Right LCMSTNewSponsorEvent
        "pollClosedEvent" -> Right LCMSTPollClosedEvent
        "pollEditedEvent" -> Right LCMSTPollEditedEvent
        "pollOpenedEvent" -> Right LCMSTPollOpenedEvent
        "pollVotedEvent" -> Right LCMSTPollVotedEvent
        "sponsorOnlyModeEndedEvent" -> Right LCMSTSponsorOnlyModeEndedEvent
        "sponsorOnlyModeStartedEvent" -> Right LCMSTSponsorOnlyModeStartedEvent
        "textMessageEvent" -> Right LCMSTTextMessageEvent
        "tombstone" -> Right LCMSTTombstone
        "userBannedEvent" -> Right LCMSTUserBannedEvent
        x -> Left ("Unable to parse LiveChatMessageSnippetType from: " <> x)

instance ToHttpApiData LiveChatMessageSnippetType where
    toQueryParam = \case
        LCMSTChatEndedEvent -> "chatEndedEvent"
        LCMSTFanFundingEvent -> "fanFundingEvent"
        LCMSTMessageDeletedEvent -> "messageDeletedEvent"
        LCMSTMessageRetractedEvent -> "messageRetractedEvent"
        LCMSTNewSponsorEvent -> "newSponsorEvent"
        LCMSTPollClosedEvent -> "pollClosedEvent"
        LCMSTPollEditedEvent -> "pollEditedEvent"
        LCMSTPollOpenedEvent -> "pollOpenedEvent"
        LCMSTPollVotedEvent -> "pollVotedEvent"
        LCMSTSponsorOnlyModeEndedEvent -> "sponsorOnlyModeEndedEvent"
        LCMSTSponsorOnlyModeStartedEvent -> "sponsorOnlyModeStartedEvent"
        LCMSTTextMessageEvent -> "textMessageEvent"
        LCMSTTombstone -> "tombstone"
        LCMSTUserBannedEvent -> "userBannedEvent"

instance FromJSON LiveChatMessageSnippetType where
    parseJSON = parseJSONText "LiveChatMessageSnippetType"

instance ToJSON LiveChatMessageSnippetType where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveStreamStatusStreamStatus

instance FromHttpApiData LiveStreamStatusStreamStatus where
    parseQueryParam = \case
        "active" -> Right LSSSSActive
        "created" -> Right LSSSSCreated
        "error" -> Right LSSSSError'
        "inactive" -> Right LSSSSInactive
        "ready" -> Right LSSSSReady
        x -> Left ("Unable to parse LiveStreamStatusStreamStatus from: " <> x)

instance ToHttpApiData LiveStreamStatusStreamStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoStatusLicense

instance FromHttpApiData VideoStatusLicense where
    parseQueryParam = \case
        "creativeCommon" -> Right CreativeCommon
        "youtube" -> Right YouTube
        x -> Left ("Unable to parse VideoStatusLicense from: " <> x)

instance ToHttpApiData VideoStatusLicense where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingNfvcbRating

instance FromHttpApiData ContentRatingNfvcbRating where
    parseQueryParam = \case
        "nfvcb12" -> Right NFVCB12
        "nfvcb12a" -> Right Nfvcb12a
        "nfvcb15" -> Right NFVCB15
        "nfvcb18" -> Right NFVCB18
        "nfvcbG" -> Right NfvcbG
        "nfvcbPg" -> Right NfvcbPg
        "nfvcbRe" -> Right NfvcbRe
        "nfvcbUnrated" -> Right NfvcbUnrated
        x -> Left ("Unable to parse ContentRatingNfvcbRating from: " <> x)

instance ToHttpApiData ContentRatingNfvcbRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMdaRating

instance FromHttpApiData ContentRatingMdaRating where
    parseQueryParam = \case
        "mdaG" -> Right MdaG
        "mdaM18" -> Right MDAM18
        "mdaNc16" -> Right MDANC16
        "mdaPg" -> Right MdaPg
        "mdaPg13" -> Right MDAPG13
        "mdaR21" -> Right MDAR21
        "mdaUnrated" -> Right MdaUnrated
        x -> Left ("Unable to parse ContentRatingMdaRating from: " <> x)

instance ToHttpApiData ContentRatingMdaRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingAcbRating

instance FromHttpApiData ContentRatingAcbRating where
    parseQueryParam = \case
        "acbC" -> Right AcbC
        "acbE" -> Right AcbE
        "acbG" -> Right AcbG
        "acbM" -> Right AcbM
        "acbMa15plus" -> Right AcbMa15plus
        "acbP" -> Right AcbP
        "acbPg" -> Right AcbPg
        "acbR18plus" -> Right AcbR18plus
        "acbUnrated" -> Right AcbUnrated
        x -> Left ("Unable to parse ContentRatingAcbRating from: " <> x)

instance ToHttpApiData ContentRatingAcbRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingDjctqRating

instance FromHttpApiData ContentRatingDjctqRating where
    parseQueryParam = \case
        "djctq10" -> Right DJCTQ10
        "djctq12" -> Right DJCTQ12
        "djctq14" -> Right DJCTQ14
        "djctq16" -> Right DJCTQ16
        "djctq18" -> Right DJCTQ18
        "djctqL" -> Right DjctqL
        "djctqUnrated" -> Right DjctqUnrated
        x -> Left ("Unable to parse ContentRatingDjctqRating from: " <> x)

instance ToHttpApiData ContentRatingDjctqRating where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoStatusFailureReason

instance FromHttpApiData VideoStatusFailureReason where
    parseQueryParam = \case
        "codec" -> Right Codec
        "conversion" -> Right Conversion
        "emptyFile" -> Right EmptyFile
        "invalidFile" -> Right InvalidFile
        "tooSmall" -> Right TooSmall
        "uploadAborted" -> Right UploadAborted
        x -> Left ("Unable to parse VideoStatusFailureReason from: " <> x)

instance ToHttpApiData VideoStatusFailureReason where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCatvRating

instance FromHttpApiData ContentRatingCatvRating where
    parseQueryParam = \case
        "catv14plus" -> Right Catv14plus
        "catv18plus" -> Right Catv18plus
        "catvC" -> Right CatvC
        "catvC8" -> Right CATVC8
        "catvG" -> Right CatvG
        "catvPg" -> Right CatvPg
        "catvUnrated" -> Right CatvUnrated
        x -> Left ("Unable to parse ContentRatingCatvRating from: " <> x)

instance ToHttpApiData ContentRatingCatvRating where
    toQueryParam = \case
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
