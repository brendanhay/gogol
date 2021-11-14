{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTube.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTube.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The video\'s rating from Portugal\'s Comissão de Classificação de
-- Espect´culos.
data ContentRatingCceRating
    = CceUnspecified
      -- ^ @cceUnspecified@
    | CCEM4
      -- ^ @cceM4@
      -- 4
    | CCEM6
      -- ^ @cceM6@
      -- 6
    | CCEM12
      -- ^ @cceM12@
      -- 12
    | CCEM16
      -- ^ @cceM16@
      -- 16
    | CCEM18
      -- ^ @cceM18@
      -- 18
    | CceUnrated
      -- ^ @cceUnrated@
    | CCEM14
      -- ^ @cceM14@
      -- 14
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCceRating

instance FromHttpApiData ContentRatingCceRating where
    parseQueryParam = \case
        "cceUnspecified" -> Right CceUnspecified
        "cceM4" -> Right CCEM4
        "cceM6" -> Right CCEM6
        "cceM12" -> Right CCEM12
        "cceM16" -> Right CCEM16
        "cceM18" -> Right CCEM18
        "cceUnrated" -> Right CceUnrated
        "cceM14" -> Right CCEM14
        x -> Left ("Unable to parse ContentRatingCceRating from: " <> x)

instance ToHttpApiData ContentRatingCceRating where
    toQueryParam = \case
        CceUnspecified -> "cceUnspecified"
        CCEM4 -> "cceM4"
        CCEM6 -> "cceM6"
        CCEM12 -> "cceM12"
        CCEM16 -> "cceM16"
        CCEM18 -> "cceM18"
        CceUnrated -> "cceUnrated"
        CCEM14 -> "cceM14"

instance FromJSON ContentRatingCceRating where
    parseJSON = parseJSONText "ContentRatingCceRating"

instance ToJSON ContentRatingCceRating where
    toJSON = toJSONText

-- | The video\'s rating in Switzerland.
data ContentRatingChfilmRating
    = ChfilmUnspecified
      -- ^ @chfilmUnspecified@
    | CHFILM0
      -- ^ @chfilm0@
      -- 0
    | CHFILM6
      -- ^ @chfilm6@
      -- 6
    | CHFILM12
      -- ^ @chfilm12@
      -- 12
    | CHFILM16
      -- ^ @chfilm16@
      -- 16
    | CHFILM18
      -- ^ @chfilm18@
      -- 18
    | ChfilmUnrated
      -- ^ @chfilmUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingChfilmRating

instance FromHttpApiData ContentRatingChfilmRating where
    parseQueryParam = \case
        "chfilmUnspecified" -> Right ChfilmUnspecified
        "chfilm0" -> Right CHFILM0
        "chfilm6" -> Right CHFILM6
        "chfilm12" -> Right CHFILM12
        "chfilm16" -> Right CHFILM16
        "chfilm18" -> Right CHFILM18
        "chfilmUnrated" -> Right ChfilmUnrated
        x -> Left ("Unable to parse ContentRatingChfilmRating from: " <> x)

instance ToHttpApiData ContentRatingChfilmRating where
    toQueryParam = \case
        ChfilmUnspecified -> "chfilmUnspecified"
        CHFILM0 -> "chfilm0"
        CHFILM6 -> "chfilm6"
        CHFILM12 -> "chfilm12"
        CHFILM16 -> "chfilm16"
        CHFILM18 -> "chfilm18"
        ChfilmUnrated -> "chfilmUnrated"

instance FromJSON ContentRatingChfilmRating where
    parseJSON = parseJSONText "ContentRatingChfilmRating"

instance ToJSON ContentRatingChfilmRating where
    toJSON = toJSONText

-- | The video\'s rating from Malta\'s Film Age-Classification Board.
data ContentRatingMccaaRating
    = MccaaUnspecified
      -- ^ @mccaaUnspecified@
    | MccaaU
      -- ^ @mccaaU@
      -- U
    | MccaaPg
      -- ^ @mccaaPg@
      -- PG
    | Mccaa12a
      -- ^ @mccaa12a@
      -- 12A
    | MCCAA12
      -- ^ @mccaa12@
      -- 12
    | MCCAA14
      -- ^ @mccaa14@
      -- 14 - this rating was removed from the new classification structure
      -- introduced in 2013.
    | MCCAA15
      -- ^ @mccaa15@
      -- 15
    | MCCAA16
      -- ^ @mccaa16@
      -- 16 - this rating was removed from the new classification structure
      -- introduced in 2013.
    | MCCAA18
      -- ^ @mccaa18@
      -- 18
    | MccaaUnrated
      -- ^ @mccaaUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMccaaRating

instance FromHttpApiData ContentRatingMccaaRating where
    parseQueryParam = \case
        "mccaaUnspecified" -> Right MccaaUnspecified
        "mccaaU" -> Right MccaaU
        "mccaaPg" -> Right MccaaPg
        "mccaa12a" -> Right Mccaa12a
        "mccaa12" -> Right MCCAA12
        "mccaa14" -> Right MCCAA14
        "mccaa15" -> Right MCCAA15
        "mccaa16" -> Right MCCAA16
        "mccaa18" -> Right MCCAA18
        "mccaaUnrated" -> Right MccaaUnrated
        x -> Left ("Unable to parse ContentRatingMccaaRating from: " <> x)

instance ToHttpApiData ContentRatingMccaaRating where
    toQueryParam = \case
        MccaaUnspecified -> "mccaaUnspecified"
        MccaaU -> "mccaaU"
        MccaaPg -> "mccaaPg"
        Mccaa12a -> "mccaa12a"
        MCCAA12 -> "mccaa12"
        MCCAA14 -> "mccaa14"
        MCCAA15 -> "mccaa15"
        MCCAA16 -> "mccaa16"
        MCCAA18 -> "mccaa18"
        MccaaUnrated -> "mccaaUnrated"

instance FromJSON ContentRatingMccaaRating where
    parseJSON = parseJSONText "ContentRatingMccaaRating"

instance ToJSON ContentRatingMccaaRating where
    toJSON = toJSONText

-- | Return the videos that are in the specified chart.
data VideosListChart
    = ChartUnspecified
      -- ^ @chartUnspecified@
    | MostPopular
      -- ^ @mostPopular@
      -- Return the most popular videos for the specified content region and
      -- video category.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideosListChart

instance FromHttpApiData VideosListChart where
    parseQueryParam = \case
        "chartUnspecified" -> Right ChartUnspecified
        "mostPopular" -> Right MostPopular
        x -> Left ("Unable to parse VideosListChart from: " <> x)

instance ToHttpApiData VideosListChart where
    toQueryParam = \case
        ChartUnspecified -> "chartUnspecified"
        MostPopular -> "mostPopular"

instance FromJSON VideosListChart where
    parseJSON = parseJSONText "VideosListChart"

instance ToJSON VideosListChart where
    toJSON = toJSONText

-- | The video\'s Motion Picture Association of America (MPAA) rating.
data ContentRatingMpaaRating
    = MpaaUnspecified
      -- ^ @mpaaUnspecified@
    | MpaaG
      -- ^ @mpaaG@
      -- G
    | MpaaPg
      -- ^ @mpaaPg@
      -- PG
    | MPAAPG13
      -- ^ @mpaaPg13@
      -- PG-13
    | MpaaR
      -- ^ @mpaaR@
      -- R
    | MPAANC17
      -- ^ @mpaaNc17@
      -- NC-17
    | MpaaX
      -- ^ @mpaaX@
      -- ! X
    | MpaaUnrated
      -- ^ @mpaaUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMpaaRating

instance FromHttpApiData ContentRatingMpaaRating where
    parseQueryParam = \case
        "mpaaUnspecified" -> Right MpaaUnspecified
        "mpaaG" -> Right MpaaG
        "mpaaPg" -> Right MpaaPg
        "mpaaPg13" -> Right MPAAPG13
        "mpaaR" -> Right MpaaR
        "mpaaNc17" -> Right MPAANC17
        "mpaaX" -> Right MpaaX
        "mpaaUnrated" -> Right MpaaUnrated
        x -> Left ("Unable to parse ContentRatingMpaaRating from: " <> x)

instance ToHttpApiData ContentRatingMpaaRating where
    toQueryParam = \case
        MpaaUnspecified -> "mpaaUnspecified"
        MpaaG -> "mpaaG"
        MpaaPg -> "mpaaPg"
        MPAAPG13 -> "mpaaPg13"
        MpaaR -> "mpaaR"
        MPAANC17 -> "mpaaNc17"
        MpaaX -> "mpaaX"
        MpaaUnrated -> "mpaaUnrated"

instance FromJSON ContentRatingMpaaRating where
    parseJSON = parseJSONText "ContentRatingMpaaRating"

instance ToJSON ContentRatingMpaaRating where
    toJSON = toJSONText

-- | The caption track\'s type.
data CaptionSnippetTrackKind
    = Standard
      -- ^ @standard@
    | Asr
      -- ^ @ASR@
    | Forced
      -- ^ @forced@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CaptionSnippetTrackKind

instance FromHttpApiData CaptionSnippetTrackKind where
    parseQueryParam = \case
        "standard" -> Right Standard
        "ASR" -> Right Asr
        "forced" -> Right Forced
        x -> Left ("Unable to parse CaptionSnippetTrackKind from: " <> x)

instance ToHttpApiData CaptionSnippetTrackKind where
    toQueryParam = \case
        Standard -> "standard"
        Asr -> "ASR"
        Forced -> "forced"

instance FromJSON CaptionSnippetTrackKind where
    parseJSON = parseJSONText "CaptionSnippetTrackKind"

instance ToJSON CaptionSnippetTrackKind where
    toJSON = toJSONText

-- | Indicates if the video is an upcoming\/active live broadcast. Or it\'s
-- \"none\" if the video is not an upcoming\/active live broadcast.
data VideoSnippetLiveBroadcastContent
    = None
      -- ^ @none@
    | Upcoming
      -- ^ @upcoming@
      -- The live broadcast is upcoming.
    | Live
      -- ^ @live@
      -- The live broadcast is active.
    | Completed
      -- ^ @completed@
      -- The live broadcast has been completed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoSnippetLiveBroadcastContent

instance FromHttpApiData VideoSnippetLiveBroadcastContent where
    parseQueryParam = \case
        "none" -> Right None
        "upcoming" -> Right Upcoming
        "live" -> Right Live
        "completed" -> Right Completed
        x -> Left ("Unable to parse VideoSnippetLiveBroadcastContent from: " <> x)

instance ToHttpApiData VideoSnippetLiveBroadcastContent where
    toQueryParam = \case
        None -> "none"
        Upcoming -> "upcoming"
        Live -> "live"
        Completed -> "completed"

instance FromJSON VideoSnippetLiveBroadcastContent where
    parseJSON = parseJSONText "VideoSnippetLiveBroadcastContent"

instance ToJSON VideoSnippetLiveBroadcastContent where
    toJSON = toJSONText

-- | Defines the context of the ping.
data ChannelConversionPingContext
    = Subscribe
      -- ^ @subscribe@
    | Unsubscribe
      -- ^ @unsubscribe@
    | Cview
      -- ^ @cview@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChannelConversionPingContext

instance FromHttpApiData ChannelConversionPingContext where
    parseQueryParam = \case
        "subscribe" -> Right Subscribe
        "unsubscribe" -> Right Unsubscribe
        "cview" -> Right Cview
        x -> Left ("Unable to parse ChannelConversionPingContext from: " <> x)

instance ToHttpApiData ChannelConversionPingContext where
    toQueryParam = \case
        Subscribe -> "subscribe"
        Unsubscribe -> "unsubscribe"
        Cview -> "cview"

instance FromJSON ChannelConversionPingContext where
    parseJSON = parseJSONText "ChannelConversionPingContext"

instance ToJSON ChannelConversionPingContext where
    toJSON = toJSONText

-- | The video\'s rating from the Hungarian Nemzeti Filmiroda, the Rating
-- Committee of the National Office of Film.
data ContentRatingRcnofRating
    = RcnofUnspecified
      -- ^ @rcnofUnspecified@
    | RcnofI
      -- ^ @rcnofI@
    | RcnofIi
      -- ^ @rcnofIi@
    | RcnofIii
      -- ^ @rcnofIii@
    | RcnofIv
      -- ^ @rcnofIv@
    | RcnofV
      -- ^ @rcnofV@
    | RcnofVi
      -- ^ @rcnofVi@
    | RcnofUnrated
      -- ^ @rcnofUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingRcnofRating

instance FromHttpApiData ContentRatingRcnofRating where
    parseQueryParam = \case
        "rcnofUnspecified" -> Right RcnofUnspecified
        "rcnofI" -> Right RcnofI
        "rcnofIi" -> Right RcnofIi
        "rcnofIii" -> Right RcnofIii
        "rcnofIv" -> Right RcnofIv
        "rcnofV" -> Right RcnofV
        "rcnofVi" -> Right RcnofVi
        "rcnofUnrated" -> Right RcnofUnrated
        x -> Left ("Unable to parse ContentRatingRcnofRating from: " <> x)

instance ToHttpApiData ContentRatingRcnofRating where
    toQueryParam = \case
        RcnofUnspecified -> "rcnofUnspecified"
        RcnofI -> "rcnofI"
        RcnofIi -> "rcnofIi"
        RcnofIii -> "rcnofIii"
        RcnofIv -> "rcnofIv"
        RcnofV -> "rcnofV"
        RcnofVi -> "rcnofVi"
        RcnofUnrated -> "rcnofUnrated"

instance FromJSON ContentRatingRcnofRating where
    parseJSON = parseJSONText "ContentRatingRcnofRating"

instance ToJSON ContentRatingRcnofRating where
    toJSON = toJSONText

-- | The video\'s privacy status.
data VideoStatusPrivacyStatus
    = Public
      -- ^ @public@
    | UnListed
      -- ^ @unlisted@
    | Private
      -- ^ @private@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoStatusPrivacyStatus

instance FromHttpApiData VideoStatusPrivacyStatus where
    parseQueryParam = \case
        "public" -> Right Public
        "unlisted" -> Right UnListed
        "private" -> Right Private
        x -> Left ("Unable to parse VideoStatusPrivacyStatus from: " <> x)

instance ToHttpApiData VideoStatusPrivacyStatus where
    toQueryParam = \case
        Public -> "public"
        UnListed -> "unlisted"
        Private -> "private"

instance FromJSON VideoStatusPrivacyStatus where
    parseJSON = parseJSONText "VideoStatusPrivacyStatus"

instance ToJSON VideoStatusPrivacyStatus where
    toJSON = toJSONText

-- | The broadcast\'s status. The status can be updated using the API\'s
-- liveBroadcasts.transition method.
data LiveBroadcastStatusLifeCycleStatus
    = LBSLCSLifeCycleStatusUnspecified
      -- ^ @lifeCycleStatusUnspecified@
      -- No value or the value is unknown.
    | LBSLCSCreated
      -- ^ @created@
      -- Incomplete settings, but otherwise valid
    | LBSLCSReady
      -- ^ @ready@
      -- Complete settings
    | LBSLCSTesting
      -- ^ @testing@
      -- Visible only to partner, may need special UI treatment
    | LBSLCSLive
      -- ^ @live@
      -- Viper is recording; this means the \"clock\" is running
    | LBSLCSComplete
      -- ^ @complete@
      -- The broadcast is finished.
    | LBSLCSRevoked
      -- ^ @revoked@
      -- This broadcast was removed by admin action
    | LBSLCSTestStarting
      -- ^ @testStarting@
      -- Transition into TESTING has been requested
    | LBSLCSLiveStarting
      -- ^ @liveStarting@
      -- Transition into LIVE has been requested
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastStatusLifeCycleStatus

instance FromHttpApiData LiveBroadcastStatusLifeCycleStatus where
    parseQueryParam = \case
        "lifeCycleStatusUnspecified" -> Right LBSLCSLifeCycleStatusUnspecified
        "created" -> Right LBSLCSCreated
        "ready" -> Right LBSLCSReady
        "testing" -> Right LBSLCSTesting
        "live" -> Right LBSLCSLive
        "complete" -> Right LBSLCSComplete
        "revoked" -> Right LBSLCSRevoked
        "testStarting" -> Right LBSLCSTestStarting
        "liveStarting" -> Right LBSLCSLiveStarting
        x -> Left ("Unable to parse LiveBroadcastStatusLifeCycleStatus from: " <> x)

instance ToHttpApiData LiveBroadcastStatusLifeCycleStatus where
    toQueryParam = \case
        LBSLCSLifeCycleStatusUnspecified -> "lifeCycleStatusUnspecified"
        LBSLCSCreated -> "created"
        LBSLCSReady -> "ready"
        LBSLCSTesting -> "testing"
        LBSLCSLive -> "live"
        LBSLCSComplete -> "complete"
        LBSLCSRevoked -> "revoked"
        LBSLCSTestStarting -> "testStarting"
        LBSLCSLiveStarting -> "liveStarting"

instance FromJSON LiveBroadcastStatusLifeCycleStatus where
    parseJSON = parseJSONText "LiveBroadcastStatusLifeCycleStatus"

instance ToJSON LiveBroadcastStatusLifeCycleStatus where
    toJSON = toJSONText

-- | The reason that YouTube failed to process the caption track. This
-- property is only present if the state property\'s value is failed.
data CaptionSnippetFailureReason
    = UnknownFormat
      -- ^ @unknownFormat@
    | UnsupportedFormat
      -- ^ @unsupportedFormat@
    | ProcessingFailed
      -- ^ @processingFailed@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CaptionSnippetFailureReason

instance FromHttpApiData CaptionSnippetFailureReason where
    parseQueryParam = \case
        "unknownFormat" -> Right UnknownFormat
        "unsupportedFormat" -> Right UnsupportedFormat
        "processingFailed" -> Right ProcessingFailed
        x -> Left ("Unable to parse CaptionSnippetFailureReason from: " <> x)

instance ToHttpApiData CaptionSnippetFailureReason where
    toQueryParam = \case
        UnknownFormat -> "unknownFormat"
        UnsupportedFormat -> "unsupportedFormat"
        ProcessingFailed -> "processingFailed"

instance FromJSON CaptionSnippetFailureReason where
    parseJSON = parseJSONText "CaptionSnippetFailureReason"

instance ToJSON CaptionSnippetFailureReason where
    toJSON = toJSONText

-- | Type of the link to be deleted.
data ThirdPartyLinksDeleteType
    = LinkUnspecified
      -- ^ @linkUnspecified@
    | ChannelToStoreLink
      -- ^ @channelToStoreLink@
      -- A link that is connecting (or about to connect) a channel with a store
      -- on a merchandising platform in order to enable retail commerce
      -- capabilities for that channel on YouTube.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ThirdPartyLinksDeleteType

instance FromHttpApiData ThirdPartyLinksDeleteType where
    parseQueryParam = \case
        "linkUnspecified" -> Right LinkUnspecified
        "channelToStoreLink" -> Right ChannelToStoreLink
        x -> Left ("Unable to parse ThirdPartyLinksDeleteType from: " <> x)

instance ToHttpApiData ThirdPartyLinksDeleteType where
    toQueryParam = \case
        LinkUnspecified -> "linkUnspecified"
        ChannelToStoreLink -> "channelToStoreLink"

instance FromJSON ThirdPartyLinksDeleteType where
    parseJSON = parseJSONText "ThirdPartyLinksDeleteType"

instance ToJSON ThirdPartyLinksDeleteType where
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
    = UploadFailed
      -- ^ @uploadFailed@
    | TranscodeFailed
      -- ^ @transcodeFailed@
    | StreamingFailed
      -- ^ @streamingFailed@
    | Other
      -- ^ @other@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoProcessingDetailsProcessingFailureReason

instance FromHttpApiData VideoProcessingDetailsProcessingFailureReason where
    parseQueryParam = \case
        "uploadFailed" -> Right UploadFailed
        "transcodeFailed" -> Right TranscodeFailed
        "streamingFailed" -> Right StreamingFailed
        "other" -> Right Other
        x -> Left ("Unable to parse VideoProcessingDetailsProcessingFailureReason from: " <> x)

instance ToHttpApiData VideoProcessingDetailsProcessingFailureReason where
    toQueryParam = \case
        UploadFailed -> "uploadFailed"
        TranscodeFailed -> "transcodeFailed"
        StreamingFailed -> "streamingFailed"
        Other -> "other"

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
    = FskUnspecified
      -- ^ @fskUnspecified@
    | FSK0
      -- ^ @fsk0@
      -- FSK 0
    | FSK6
      -- ^ @fsk6@
      -- FSK 6
    | FSK12
      -- ^ @fsk12@
      -- FSK 12
    | FSK16
      -- ^ @fsk16@
      -- FSK 16
    | FSK18
      -- ^ @fsk18@
      -- FSK 18
    | FskUnrated
      -- ^ @fskUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingFskRating

instance FromHttpApiData ContentRatingFskRating where
    parseQueryParam = \case
        "fskUnspecified" -> Right FskUnspecified
        "fsk0" -> Right FSK0
        "fsk6" -> Right FSK6
        "fsk12" -> Right FSK12
        "fsk16" -> Right FSK16
        "fsk18" -> Right FSK18
        "fskUnrated" -> Right FskUnrated
        x -> Left ("Unable to parse ContentRatingFskRating from: " <> x)

instance ToHttpApiData ContentRatingFskRating where
    toQueryParam = \case
        FskUnspecified -> "fskUnspecified"
        FSK0 -> "fsk0"
        FSK6 -> "fsk6"
        FSK12 -> "fsk12"
        FSK16 -> "fsk16"
        FSK18 -> "fsk18"
        FskUnrated -> "fskUnrated"

instance FromJSON ContentRatingFskRating where
    parseJSON = parseJSONText "ContentRatingFskRating"

instance ToJSON ContentRatingFskRating where
    toJSON = toJSONText

-- | The video\'s rating from Finland\'s Kansallinen Audiovisuaalinen
-- Instituutti (National Audiovisual Institute).
data ContentRatingMekuRating
    = MekuUnspecified
      -- ^ @mekuUnspecified@
    | MekuS
      -- ^ @mekuS@
      -- S
    | MEKU7
      -- ^ @meku7@
      -- 7
    | MEKU12
      -- ^ @meku12@
      -- 12
    | MEKU16
      -- ^ @meku16@
      -- 16
    | MEKU18
      -- ^ @meku18@
      -- 18
    | MekuUnrated
      -- ^ @mekuUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMekuRating

instance FromHttpApiData ContentRatingMekuRating where
    parseQueryParam = \case
        "mekuUnspecified" -> Right MekuUnspecified
        "mekuS" -> Right MekuS
        "meku7" -> Right MEKU7
        "meku12" -> Right MEKU12
        "meku16" -> Right MEKU16
        "meku18" -> Right MEKU18
        "mekuUnrated" -> Right MekuUnrated
        x -> Left ("Unable to parse ContentRatingMekuRating from: " <> x)

instance ToHttpApiData ContentRatingMekuRating where
    toQueryParam = \case
        MekuUnspecified -> "mekuUnspecified"
        MekuS -> "mekuS"
        MEKU7 -> "meku7"
        MEKU12 -> "meku12"
        MEKU16 -> "meku16"
        MEKU18 -> "meku18"
        MekuUnrated -> "mekuUnrated"

instance FromJSON ContentRatingMekuRating where
    parseJSON = parseJSONText "ContentRatingMekuRating"

instance ToJSON ContentRatingMekuRating where
    toJSON = toJSONText

-- | The value of definition indicates whether the video is available in high
-- definition or only in standard definition.
data VideoContentDetailsDefinition
    = SD
      -- ^ @sd@
      -- sd
    | HD
      -- ^ @hd@
      -- hd
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoContentDetailsDefinition

instance FromHttpApiData VideoContentDetailsDefinition where
    parseQueryParam = \case
        "sd" -> Right SD
        "hd" -> Right HD
        x -> Left ("Unable to parse VideoContentDetailsDefinition from: " <> x)

instance ToHttpApiData VideoContentDetailsDefinition where
    toQueryParam = \case
        SD -> "sd"
        HD -> "hd"

instance FromJSON VideoContentDetailsDefinition where
    parseJSON = parseJSONText "VideoContentDetailsDefinition"

instance ToJSON VideoContentDetailsDefinition where
    toJSON = toJSONText

-- | The video\'s rating in Estonia.
data ContentRatingEefilmRating
    = EefilmUnspecified
      -- ^ @eefilmUnspecified@
    | EefilmPere
      -- ^ @eefilmPere@
      -- Pere
    | EefilmL
      -- ^ @eefilmL@
      -- L
    | EEFILMMS6
      -- ^ @eefilmMs6@
      -- MS-6
    | EEFILMK6
      -- ^ @eefilmK6@
      -- K-6
    | EEFILMMS12
      -- ^ @eefilmMs12@
      -- MS-12
    | EEFILMK12
      -- ^ @eefilmK12@
      -- K-12
    | EEFILMK14
      -- ^ @eefilmK14@
      -- K-14
    | EEFILMK16
      -- ^ @eefilmK16@
      -- K-16
    | EefilmUnrated
      -- ^ @eefilmUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingEefilmRating

instance FromHttpApiData ContentRatingEefilmRating where
    parseQueryParam = \case
        "eefilmUnspecified" -> Right EefilmUnspecified
        "eefilmPere" -> Right EefilmPere
        "eefilmL" -> Right EefilmL
        "eefilmMs6" -> Right EEFILMMS6
        "eefilmK6" -> Right EEFILMK6
        "eefilmMs12" -> Right EEFILMMS12
        "eefilmK12" -> Right EEFILMK12
        "eefilmK14" -> Right EEFILMK14
        "eefilmK16" -> Right EEFILMK16
        "eefilmUnrated" -> Right EefilmUnrated
        x -> Left ("Unable to parse ContentRatingEefilmRating from: " <> x)

instance ToHttpApiData ContentRatingEefilmRating where
    toQueryParam = \case
        EefilmUnspecified -> "eefilmUnspecified"
        EefilmPere -> "eefilmPere"
        EefilmL -> "eefilmL"
        EEFILMMS6 -> "eefilmMs6"
        EEFILMK6 -> "eefilmK6"
        EEFILMMS12 -> "eefilmMs12"
        EEFILMK12 -> "eefilmK12"
        EEFILMK14 -> "eefilmK14"
        EEFILMK16 -> "eefilmK16"
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
    = LBSPSPublic
      -- ^ @public@
    | LBSPSUnListed
      -- ^ @unlisted@
    | LBSPSPrivate
      -- ^ @private@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastStatusPrivacyStatus

instance FromHttpApiData LiveBroadcastStatusPrivacyStatus where
    parseQueryParam = \case
        "public" -> Right LBSPSPublic
        "unlisted" -> Right LBSPSUnListed
        "private" -> Right LBSPSPrivate
        x -> Left ("Unable to parse LiveBroadcastStatusPrivacyStatus from: " <> x)

instance ToHttpApiData LiveBroadcastStatusPrivacyStatus where
    toQueryParam = \case
        LBSPSPublic -> "public"
        LBSPSUnListed -> "unlisted"
        LBSPSPrivate -> "private"

instance FromJSON LiveBroadcastStatusPrivacyStatus where
    parseJSON = parseJSONText "LiveBroadcastStatusPrivacyStatus"

instance ToJSON LiveBroadcastStatusPrivacyStatus where
    toJSON = toJSONText

-- | The video\'s rating in Peru.
data ContentRatingPefilmRating
    = PefilmUnspecified
      -- ^ @pefilmUnspecified@
    | PefilmPt
      -- ^ @pefilmPt@
      -- PT
    | PefilmPg
      -- ^ @pefilmPg@
      -- PG
    | PEFILM14
      -- ^ @pefilm14@
      -- 14
    | PEFILM18
      -- ^ @pefilm18@
      -- 18
    | PefilmUnrated
      -- ^ @pefilmUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingPefilmRating

instance FromHttpApiData ContentRatingPefilmRating where
    parseQueryParam = \case
        "pefilmUnspecified" -> Right PefilmUnspecified
        "pefilmPt" -> Right PefilmPt
        "pefilmPg" -> Right PefilmPg
        "pefilm14" -> Right PEFILM14
        "pefilm18" -> Right PEFILM18
        "pefilmUnrated" -> Right PefilmUnrated
        x -> Left ("Unable to parse ContentRatingPefilmRating from: " <> x)

instance ToHttpApiData ContentRatingPefilmRating where
    toQueryParam = \case
        PefilmUnspecified -> "pefilmUnspecified"
        PefilmPt -> "pefilmPt"
        PefilmPg -> "pefilmPg"
        PEFILM14 -> "pefilm14"
        PEFILM18 -> "pefilm18"
        PefilmUnrated -> "pefilmUnrated"

instance FromJSON ContentRatingPefilmRating where
    parseJSON = parseJSONText "ContentRatingPefilmRating"

instance ToJSON ContentRatingPefilmRating where
    toJSON = toJSONText

-- | The resolution of the inbound video data.
data CdnSettingsResolution
    = CSR240p
      -- ^ @240p@
    | CSR360p
      -- ^ @360p@
    | CSR480p
      -- ^ @480p@
    | CSR720p
      -- ^ @720p@
    | CSR1080p
      -- ^ @1080p@
    | CSR1440p
      -- ^ @1440p@
    | CSR2160p
      -- ^ @2160p@
    | CSRVariable
      -- ^ @variable@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CdnSettingsResolution

instance FromHttpApiData CdnSettingsResolution where
    parseQueryParam = \case
        "240p" -> Right CSR240p
        "360p" -> Right CSR360p
        "480p" -> Right CSR480p
        "720p" -> Right CSR720p
        "1080p" -> Right CSR1080p
        "1440p" -> Right CSR1440p
        "2160p" -> Right CSR2160p
        "variable" -> Right CSRVariable
        x -> Left ("Unable to parse CdnSettingsResolution from: " <> x)

instance ToHttpApiData CdnSettingsResolution where
    toQueryParam = \case
        CSR240p -> "240p"
        CSR360p -> "360p"
        CSR480p -> "480p"
        CSR720p -> "720p"
        CSR1080p -> "1080p"
        CSR1440p -> "1440p"
        CSR2160p -> "2160p"
        CSRVariable -> "variable"

instance FromJSON CdnSettingsResolution where
    parseJSON = parseJSONText "CdnSettingsResolution"

instance ToJSON CdnSettingsResolution where
    toJSON = toJSONText

-- | It indicates if the resource (video or channel) has upcoming\/active
-- live broadcast content. Or it\'s \"none\" if there is not any
-- upcoming\/active live broadcasts.
data SearchResultSnippetLiveBroadcastContent
    = SRSLBCNone
      -- ^ @none@
    | SRSLBCUpcoming
      -- ^ @upcoming@
      -- The live broadcast is upcoming.
    | SRSLBCLive
      -- ^ @live@
      -- The live broadcast is active.
    | SRSLBCCompleted
      -- ^ @completed@
      -- The live broadcast has been completed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchResultSnippetLiveBroadcastContent

instance FromHttpApiData SearchResultSnippetLiveBroadcastContent where
    parseQueryParam = \case
        "none" -> Right SRSLBCNone
        "upcoming" -> Right SRSLBCUpcoming
        "live" -> Right SRSLBCLive
        "completed" -> Right SRSLBCCompleted
        x -> Left ("Unable to parse SearchResultSnippetLiveBroadcastContent from: " <> x)

instance ToHttpApiData SearchResultSnippetLiveBroadcastContent where
    toQueryParam = \case
        SRSLBCNone -> "none"
        SRSLBCUpcoming -> "upcoming"
        SRSLBCLive -> "live"
        SRSLBCCompleted -> "completed"

instance FromJSON SearchResultSnippetLiveBroadcastContent where
    parseJSON = parseJSONText "SearchResultSnippetLiveBroadcastContent"

instance ToJSON SearchResultSnippetLiveBroadcastContent where
    toJSON = toJSONText

-- | The video\'s Anatel (Asociación Nacional de Televisión) rating for
-- Chilean television.
data ContentRatingAnatelRating
    = AnatelUnspecified
      -- ^ @anatelUnspecified@
    | AnatelF
      -- ^ @anatelF@
      -- F
    | AnatelI
      -- ^ @anatelI@
      -- I
    | ANATELI7
      -- ^ @anatelI7@
      -- I-7
    | ANATELI10
      -- ^ @anatelI10@
      -- I-10
    | ANATELI12
      -- ^ @anatelI12@
      -- I-12
    | AnatelR
      -- ^ @anatelR@
      -- R
    | AnatelA
      -- ^ @anatelA@
      -- A
    | AnatelUnrated
      -- ^ @anatelUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingAnatelRating

instance FromHttpApiData ContentRatingAnatelRating where
    parseQueryParam = \case
        "anatelUnspecified" -> Right AnatelUnspecified
        "anatelF" -> Right AnatelF
        "anatelI" -> Right AnatelI
        "anatelI7" -> Right ANATELI7
        "anatelI10" -> Right ANATELI10
        "anatelI12" -> Right ANATELI12
        "anatelR" -> Right AnatelR
        "anatelA" -> Right AnatelA
        "anatelUnrated" -> Right AnatelUnrated
        x -> Left ("Unable to parse ContentRatingAnatelRating from: " <> x)

instance ToHttpApiData ContentRatingAnatelRating where
    toQueryParam = \case
        AnatelUnspecified -> "anatelUnspecified"
        AnatelF -> "anatelF"
        AnatelI -> "anatelI"
        ANATELI7 -> "anatelI7"
        ANATELI10 -> "anatelI10"
        ANATELI12 -> "anatelI12"
        AnatelR -> "anatelR"
        AnatelA -> "anatelA"
        AnatelUnrated -> "anatelUnrated"

instance FromJSON ContentRatingAnatelRating where
    parseJSON = parseJSONText "ContentRatingAnatelRating"

instance ToJSON ContentRatingAnatelRating where
    toJSON = toJSONText

-- | Sort order of the results.
data SearchListOrder
    = SearchSortUnspecified
      -- ^ @searchSortUnspecified@
    | Date
      -- ^ @date@
      -- Resources are sorted in reverse chronological order based on the date
      -- they were created.
    | Rating
      -- ^ @rating@
      -- Resources are sorted from highest to lowest rating.
    | ViewCount
      -- ^ @viewCount@
      -- Resources are sorted from highest to lowest number of views.
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListOrder

instance FromHttpApiData SearchListOrder where
    parseQueryParam = \case
        "searchSortUnspecified" -> Right SearchSortUnspecified
        "date" -> Right Date
        "rating" -> Right Rating
        "viewCount" -> Right ViewCount
        "relevance" -> Right Relevance
        "title" -> Right Title
        "videoCount" -> Right VideoCount
        x -> Left ("Unable to parse SearchListOrder from: " <> x)

instance ToHttpApiData SearchListOrder where
    toQueryParam = \case
        SearchSortUnspecified -> "searchSortUnspecified"
        Date -> "date"
        Rating -> "rating"
        ViewCount -> "viewCount"
        Relevance -> "relevance"
        Title -> "title"
        VideoCount -> "videoCount"

instance FromJSON SearchListOrder where
    parseJSON = parseJSONText "SearchListOrder"

instance ToJSON SearchListOrder where
    toJSON = toJSONText

-- | The video\'s Consejo de Calificación Cinematográfica (Chile) rating.
data ContentRatingCccRating
    = CccUnspecified
      -- ^ @cccUnspecified@
    | CccTe
      -- ^ @cccTe@
      -- Todo espectador
    | CCC6
      -- ^ @ccc6@
      -- 6+ - Inconveniente para menores de 7 años
    | CCC14
      -- ^ @ccc14@
      -- 14+
    | CCC18
      -- ^ @ccc18@
      -- 18+
    | Ccc18v
      -- ^ @ccc18v@
      -- 18+ - contenido excesivamente violento
    | Ccc18s
      -- ^ @ccc18s@
      -- 18+ - contenido pornográfico
    | CccUnrated
      -- ^ @cccUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCccRating

instance FromHttpApiData ContentRatingCccRating where
    parseQueryParam = \case
        "cccUnspecified" -> Right CccUnspecified
        "cccTe" -> Right CccTe
        "ccc6" -> Right CCC6
        "ccc14" -> Right CCC14
        "ccc18" -> Right CCC18
        "ccc18v" -> Right Ccc18v
        "ccc18s" -> Right Ccc18s
        "cccUnrated" -> Right CccUnrated
        x -> Left ("Unable to parse ContentRatingCccRating from: " <> x)

instance ToHttpApiData ContentRatingCccRating where
    toQueryParam = \case
        CccUnspecified -> "cccUnspecified"
        CccTe -> "cccTe"
        CCC6 -> "ccc6"
        CCC14 -> "ccc14"
        CCC18 -> "ccc18"
        Ccc18v -> "ccc18v"
        Ccc18s -> "ccc18s"
        CccUnrated -> "cccUnrated"

instance FromJSON ContentRatingCccRating where
    parseJSON = parseJSONText "ContentRatingCccRating"

instance ToJSON ContentRatingCccRating where
    toJSON = toJSONText

-- | The type of audio track associated with the caption track.
data CaptionSnippetAudioTrackType
    = Unknown
      -- ^ @unknown@
    | Primary
      -- ^ @primary@
    | Commentary
      -- ^ @commentary@
    | Descriptive
      -- ^ @descriptive@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CaptionSnippetAudioTrackType

instance FromHttpApiData CaptionSnippetAudioTrackType where
    parseQueryParam = \case
        "unknown" -> Right Unknown
        "primary" -> Right Primary
        "commentary" -> Right Commentary
        "descriptive" -> Right Descriptive
        x -> Left ("Unable to parse CaptionSnippetAudioTrackType from: " <> x)

instance ToHttpApiData CaptionSnippetAudioTrackType where
    toQueryParam = \case
        Unknown -> "unknown"
        Primary -> "primary"
        Commentary -> "commentary"
        Descriptive -> "descriptive"

instance FromJSON CaptionSnippetAudioTrackType where
    parseJSON = parseJSONText "CaptionSnippetAudioTrackType"

instance ToJSON CaptionSnippetAudioTrackType where
    toJSON = toJSONText

-- | Parameter that specifies which channel members to return.
data MembersListMode
    = ListMembersModeUnknown
      -- ^ @listMembersModeUnknown@
    | Updates
      -- ^ @updates@
      -- Return only members that joined after the first call with this mode was
      -- made.
    | AllCurrent
      -- ^ @all_current@
      -- Return all current members, from newest to oldest.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MembersListMode

instance FromHttpApiData MembersListMode where
    parseQueryParam = \case
        "listMembersModeUnknown" -> Right ListMembersModeUnknown
        "updates" -> Right Updates
        "all_current" -> Right AllCurrent
        x -> Left ("Unable to parse MembersListMode from: " <> x)

instance ToHttpApiData MembersListMode where
    toQueryParam = \case
        ListMembersModeUnknown -> "listMembersModeUnknown"
        Updates -> "updates"
        AllCurrent -> "all_current"

instance FromJSON MembersListMode where
    parseJSON = parseJSONText "MembersListMode"

instance ToJSON MembersListMode where
    toJSON = toJSONText

-- | Privacy status of the channel.
data ChannelStatusPrivacyStatus
    = CSPSPublic
      -- ^ @public@
    | CSPSUnListed
      -- ^ @unlisted@
    | CSPSPrivate
      -- ^ @private@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChannelStatusPrivacyStatus

instance FromHttpApiData ChannelStatusPrivacyStatus where
    parseQueryParam = \case
        "public" -> Right CSPSPublic
        "unlisted" -> Right CSPSUnListed
        "private" -> Right CSPSPrivate
        x -> Left ("Unable to parse ChannelStatusPrivacyStatus from: " <> x)

instance ToHttpApiData ChannelStatusPrivacyStatus where
    toQueryParam = \case
        CSPSPublic -> "public"
        CSPSUnListed -> "unlisted"
        CSPSPrivate -> "private"

instance FromJSON ChannelStatusPrivacyStatus where
    parseJSON = parseJSONText "ChannelStatusPrivacyStatus"

instance ToJSON ChannelStatusPrivacyStatus where
    toJSON = toJSONText

data VideoSuggestionsEditorSuggestionsItem
    = VideoAutoLevels
      -- ^ @videoAutoLevels@
      -- Picture brightness levels seem off and could be corrected.
    | VideoStabilize
      -- ^ @videoStabilize@
      -- The video appears shaky and could be stabilized.
    | VideoCrop
      -- ^ @videoCrop@
      -- Margins (mattes) detected around the picture could be cropped.
    | AudioQuietAudioSwap
      -- ^ @audioQuietAudioSwap@
      -- The audio track appears silent and could be swapped with a better
      -- quality one.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoSuggestionsEditorSuggestionsItem

instance FromHttpApiData VideoSuggestionsEditorSuggestionsItem where
    parseQueryParam = \case
        "videoAutoLevels" -> Right VideoAutoLevels
        "videoStabilize" -> Right VideoStabilize
        "videoCrop" -> Right VideoCrop
        "audioQuietAudioSwap" -> Right AudioQuietAudioSwap
        x -> Left ("Unable to parse VideoSuggestionsEditorSuggestionsItem from: " <> x)

instance ToHttpApiData VideoSuggestionsEditorSuggestionsItem where
    toQueryParam = \case
        VideoAutoLevels -> "videoAutoLevels"
        VideoStabilize -> "videoStabilize"
        VideoCrop -> "videoCrop"
        AudioQuietAudioSwap -> "audioQuietAudioSwap"

instance FromJSON VideoSuggestionsEditorSuggestionsItem where
    parseJSON = parseJSONText "VideoSuggestionsEditorSuggestionsItem"

instance ToJSON VideoSuggestionsEditorSuggestionsItem where
    toJSON = toJSONText

-- | The video\'s rating from the Canadian Radio-Television and
-- Telecommunications Commission (CRTC) for Canadian French-language
-- broadcasts. For more information, see the Canadian Broadcast Standards
-- Council website.
data ContentRatingCatvfrRating
    = CatvfrUnspecified
      -- ^ @catvfrUnspecified@
    | CatvfrG
      -- ^ @catvfrG@
      -- G
    | Catvfr8plus
      -- ^ @catvfr8plus@
      -- 8+
    | Catvfr13plus
      -- ^ @catvfr13plus@
      -- 13+
    | Catvfr16plus
      -- ^ @catvfr16plus@
      -- 16+
    | Catvfr18plus
      -- ^ @catvfr18plus@
      -- 18+
    | CatvfrUnrated
      -- ^ @catvfrUnrated@
    | CatvfrE
      -- ^ @catvfrE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCatvfrRating

instance FromHttpApiData ContentRatingCatvfrRating where
    parseQueryParam = \case
        "catvfrUnspecified" -> Right CatvfrUnspecified
        "catvfrG" -> Right CatvfrG
        "catvfr8plus" -> Right Catvfr8plus
        "catvfr13plus" -> Right Catvfr13plus
        "catvfr16plus" -> Right Catvfr16plus
        "catvfr18plus" -> Right Catvfr18plus
        "catvfrUnrated" -> Right CatvfrUnrated
        "catvfrE" -> Right CatvfrE
        x -> Left ("Unable to parse ContentRatingCatvfrRating from: " <> x)

instance ToHttpApiData ContentRatingCatvfrRating where
    toQueryParam = \case
        CatvfrUnspecified -> "catvfrUnspecified"
        CatvfrG -> "catvfrG"
        Catvfr8plus -> "catvfr8plus"
        Catvfr13plus -> "catvfr13plus"
        Catvfr16plus -> "catvfr16plus"
        Catvfr18plus -> "catvfr18plus"
        CatvfrUnrated -> "catvfrUnrated"
        CatvfrE -> "catvfrE"

instance FromJSON ContentRatingCatvfrRating where
    parseJSON = parseJSONText "ContentRatingCatvfrRating"

instance ToJSON ContentRatingCatvfrRating where
    toJSON = toJSONText

-- | The video\'s rating from Romania\'s CONSILIUL NATIONAL AL
-- AUDIOVIZUALULUI (CNA).
data ContentRatingCnaRating
    = CnaUnspecified
      -- ^ @cnaUnspecified@
    | CnaAp
      -- ^ @cnaAp@
      -- AP
    | CNA12
      -- ^ @cna12@
      -- 12
    | CNA15
      -- ^ @cna15@
      -- 15
    | CNA18
      -- ^ @cna18@
      -- 18
    | Cna18plus
      -- ^ @cna18plus@
      -- 18+
    | CnaUnrated
      -- ^ @cnaUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCnaRating

instance FromHttpApiData ContentRatingCnaRating where
    parseQueryParam = \case
        "cnaUnspecified" -> Right CnaUnspecified
        "cnaAp" -> Right CnaAp
        "cna12" -> Right CNA12
        "cna15" -> Right CNA15
        "cna18" -> Right CNA18
        "cna18plus" -> Right Cna18plus
        "cnaUnrated" -> Right CnaUnrated
        x -> Left ("Unable to parse ContentRatingCnaRating from: " <> x)

instance ToHttpApiData ContentRatingCnaRating where
    toQueryParam = \case
        CnaUnspecified -> "cnaUnspecified"
        CnaAp -> "cnaAp"
        CNA12 -> "cna12"
        CNA15 -> "cna15"
        CNA18 -> "cna18"
        Cna18plus -> "cna18plus"
        CnaUnrated -> "cnaUnrated"

instance FromJSON ContentRatingCnaRating where
    parseJSON = parseJSONText "ContentRatingCnaRating"

instance ToJSON ContentRatingCnaRating where
    toJSON = toJSONText

data ThirdPartyLinkStatusLinkStatus
    = TPLSLSUnknown
      -- ^ @unknown@
    | TPLSLSFailed
      -- ^ @failed@
    | TPLSLSPending
      -- ^ @pending@
    | TPLSLSLinked
      -- ^ @linked@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ThirdPartyLinkStatusLinkStatus

instance FromHttpApiData ThirdPartyLinkStatusLinkStatus where
    parseQueryParam = \case
        "unknown" -> Right TPLSLSUnknown
        "failed" -> Right TPLSLSFailed
        "pending" -> Right TPLSLSPending
        "linked" -> Right TPLSLSLinked
        x -> Left ("Unable to parse ThirdPartyLinkStatusLinkStatus from: " <> x)

instance ToHttpApiData ThirdPartyLinkStatusLinkStatus where
    toQueryParam = \case
        TPLSLSUnknown -> "unknown"
        TPLSLSFailed -> "failed"
        TPLSLSPending -> "pending"
        TPLSLSLinked -> "linked"

instance FromJSON ThirdPartyLinkStatusLinkStatus where
    parseJSON = parseJSONText "ThirdPartyLinkStatusLinkStatus"

instance ToJSON ThirdPartyLinkStatusLinkStatus where
    toJSON = toJSONText

-- | The video\'s Canadian Home Video Rating System (CHVRS) rating.
data ContentRatingChvrsRating
    = ChvrsUnspecified
      -- ^ @chvrsUnspecified@
    | ChvrsG
      -- ^ @chvrsG@
      -- G
    | ChvrsPg
      -- ^ @chvrsPg@
      -- PG
    | Chvrs14a
      -- ^ @chvrs14a@
      -- 14A
    | Chvrs18a
      -- ^ @chvrs18a@
      -- 18A
    | ChvrsR
      -- ^ @chvrsR@
      -- R
    | ChvrsE
      -- ^ @chvrsE@
      -- E
    | ChvrsUnrated
      -- ^ @chvrsUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingChvrsRating

instance FromHttpApiData ContentRatingChvrsRating where
    parseQueryParam = \case
        "chvrsUnspecified" -> Right ChvrsUnspecified
        "chvrsG" -> Right ChvrsG
        "chvrsPg" -> Right ChvrsPg
        "chvrs14a" -> Right Chvrs14a
        "chvrs18a" -> Right Chvrs18a
        "chvrsR" -> Right ChvrsR
        "chvrsE" -> Right ChvrsE
        "chvrsUnrated" -> Right ChvrsUnrated
        x -> Left ("Unable to parse ContentRatingChvrsRating from: " <> x)

instance ToHttpApiData ContentRatingChvrsRating where
    toQueryParam = \case
        ChvrsUnspecified -> "chvrsUnspecified"
        ChvrsG -> "chvrsG"
        ChvrsPg -> "chvrsPg"
        Chvrs14a -> "chvrs14a"
        Chvrs18a -> "chvrs18a"
        ChvrsR -> "chvrsR"
        ChvrsE -> "chvrsE"
        ChvrsUnrated -> "chvrsUnrated"

instance FromJSON ContentRatingChvrsRating where
    parseJSON = parseJSONText "ContentRatingChvrsRating"

instance ToJSON ContentRatingChvrsRating where
    toJSON = toJSONText

-- | The video\'s INCAA (Instituto Nacional de Cine y Artes Audiovisuales -
-- Argentina) rating.
data ContentRatingIncaaRating
    = IncaaUnspecified
      -- ^ @incaaUnspecified@
    | IncaaAtp
      -- ^ @incaaAtp@
      -- ATP (Apta para todo publico)
    | INCAASAM13
      -- ^ @incaaSam13@
      -- 13 (Solo apta para mayores de 13 años)
    | INCAASAM16
      -- ^ @incaaSam16@
      -- 16 (Solo apta para mayores de 16 años)
    | INCAASAM18
      -- ^ @incaaSam18@
      -- 18 (Solo apta para mayores de 18 años)
    | IncaaC
      -- ^ @incaaC@
      -- X (Solo apta para mayores de 18 años, de exhibición condicionada)
    | IncaaUnrated
      -- ^ @incaaUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingIncaaRating

instance FromHttpApiData ContentRatingIncaaRating where
    parseQueryParam = \case
        "incaaUnspecified" -> Right IncaaUnspecified
        "incaaAtp" -> Right IncaaAtp
        "incaaSam13" -> Right INCAASAM13
        "incaaSam16" -> Right INCAASAM16
        "incaaSam18" -> Right INCAASAM18
        "incaaC" -> Right IncaaC
        "incaaUnrated" -> Right IncaaUnrated
        x -> Left ("Unable to parse ContentRatingIncaaRating from: " <> x)

instance ToHttpApiData ContentRatingIncaaRating where
    toQueryParam = \case
        IncaaUnspecified -> "incaaUnspecified"
        IncaaAtp -> "incaaAtp"
        INCAASAM13 -> "incaaSam13"
        INCAASAM16 -> "incaaSam16"
        INCAASAM18 -> "incaaSam18"
        IncaaC -> "incaaC"
        IncaaUnrated -> "incaaUnrated"

instance FromJSON ContentRatingIncaaRating where
    parseJSON = parseJSONText "ContentRatingIncaaRating"

instance ToJSON ContentRatingIncaaRating where
    toJSON = toJSONText

-- | The video\'s rating from Statens medieråd (Sweden\'s National Media
-- Council).
data ContentRatingSmsaRating
    = SmsaUnspecified
      -- ^ @smsaUnspecified@
    | SmsaA
      -- ^ @smsaA@
      -- All ages
    | SMSA7
      -- ^ @smsa7@
      -- 7
    | SMSA11
      -- ^ @smsa11@
      -- 11
    | SMSA15
      -- ^ @smsa15@
      -- 15
    | SmsaUnrated
      -- ^ @smsaUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingSmsaRating

instance FromHttpApiData ContentRatingSmsaRating where
    parseQueryParam = \case
        "smsaUnspecified" -> Right SmsaUnspecified
        "smsaA" -> Right SmsaA
        "smsa7" -> Right SMSA7
        "smsa11" -> Right SMSA11
        "smsa15" -> Right SMSA15
        "smsaUnrated" -> Right SmsaUnrated
        x -> Left ("Unable to parse ContentRatingSmsaRating from: " <> x)

instance ToHttpApiData ContentRatingSmsaRating where
    toQueryParam = \case
        SmsaUnspecified -> "smsaUnspecified"
        SmsaA -> "smsaA"
        SMSA7 -> "smsa7"
        SMSA11 -> "smsa11"
        SMSA15 -> "smsa15"
        SmsaUnrated -> "smsaUnrated"

instance FromJSON ContentRatingSmsaRating where
    parseJSON = parseJSONText "ContentRatingSmsaRating"

instance ToJSON ContentRatingSmsaRating where
    toJSON = toJSONText

-- | The video\'s Central Board of Film Certification (CBFC - India) rating.
data ContentRatingCbfcRating
    = CbfcUnspecified
      -- ^ @cbfcUnspecified@
    | CbfcU
      -- ^ @cbfcU@
      -- U
    | CbfcUA
      -- ^ @cbfcUA@
      -- U\/A
    | CbfcA
      -- ^ @cbfcA@
      -- A
    | CbfcS
      -- ^ @cbfcS@
      -- S
    | CbfcUnrated
      -- ^ @cbfcUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCbfcRating

instance FromHttpApiData ContentRatingCbfcRating where
    parseQueryParam = \case
        "cbfcUnspecified" -> Right CbfcUnspecified
        "cbfcU" -> Right CbfcU
        "cbfcUA" -> Right CbfcUA
        "cbfcA" -> Right CbfcA
        "cbfcS" -> Right CbfcS
        "cbfcUnrated" -> Right CbfcUnrated
        x -> Left ("Unable to parse ContentRatingCbfcRating from: " <> x)

instance ToHttpApiData ContentRatingCbfcRating where
    toQueryParam = \case
        CbfcUnspecified -> "cbfcUnspecified"
        CbfcU -> "cbfcU"
        CbfcUA -> "cbfcUA"
        CbfcA -> "cbfcA"
        CbfcS -> "cbfcS"
        CbfcUnrated -> "cbfcUnrated"

instance FromJSON ContentRatingCbfcRating where
    parseJSON = parseJSONText "ContentRatingCbfcRating"

instance ToJSON ContentRatingCbfcRating where
    toJSON = toJSONText

-- | The video\'s rating from the Kenya Film Classification Board.
data ContentRatingKfcbRating
    = KfcbUnspecified
      -- ^ @kfcbUnspecified@
    | KfcbG
      -- ^ @kfcbG@
      -- GE
    | KfcbPg
      -- ^ @kfcbPg@
      -- PG
    | Kfcb16plus
      -- ^ @kfcb16plus@
      -- 16
    | KfcbR
      -- ^ @kfcbR@
      -- 18
    | KfcbUnrated
      -- ^ @kfcbUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingKfcbRating

instance FromHttpApiData ContentRatingKfcbRating where
    parseQueryParam = \case
        "kfcbUnspecified" -> Right KfcbUnspecified
        "kfcbG" -> Right KfcbG
        "kfcbPg" -> Right KfcbPg
        "kfcb16plus" -> Right Kfcb16plus
        "kfcbR" -> Right KfcbR
        "kfcbUnrated" -> Right KfcbUnrated
        x -> Left ("Unable to parse ContentRatingKfcbRating from: " <> x)

instance ToHttpApiData ContentRatingKfcbRating where
    toQueryParam = \case
        KfcbUnspecified -> "kfcbUnspecified"
        KfcbG -> "kfcbG"
        KfcbPg -> "kfcbPg"
        Kfcb16plus -> "kfcb16plus"
        KfcbR -> "kfcbR"
        KfcbUnrated -> "kfcbUnrated"

instance FromJSON ContentRatingKfcbRating where
    parseJSON = parseJSONText "ContentRatingKfcbRating"

instance ToJSON ContentRatingKfcbRating where
    toJSON = toJSONText

-- | How severe this issue is to the stream.
data LiveStreamConfigurationIssueSeverity
    = Info
      -- ^ @info@
    | Warning
      -- ^ @warning@
    | Error'
      -- ^ @error@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveStreamConfigurationIssueSeverity

instance FromHttpApiData LiveStreamConfigurationIssueSeverity where
    parseQueryParam = \case
        "info" -> Right Info
        "warning" -> Right Warning
        "error" -> Right Error'
        x -> Left ("Unable to parse LiveStreamConfigurationIssueSeverity from: " <> x)

instance ToHttpApiData LiveStreamConfigurationIssueSeverity where
    toQueryParam = \case
        Info -> "info"
        Warning -> "warning"
        Error' -> "error"

instance FromJSON LiveStreamConfigurationIssueSeverity where
    parseJSON = parseJSONText "LiveStreamConfigurationIssueSeverity"

instance ToJSON LiveStreamConfigurationIssueSeverity where
    toJSON = toJSONText

-- | Type of the link named after the entities that are being linked.
data ThirdPartyLinkSnippetType
    = TPLSTLinkUnspecified
      -- ^ @linkUnspecified@
    | TPLSTChannelToStoreLink
      -- ^ @channelToStoreLink@
      -- A link that is connecting (or about to connect) a channel with a store
      -- on a merchandising platform in order to enable retail commerce
      -- capabilities for that channel on YouTube.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ThirdPartyLinkSnippetType

instance FromHttpApiData ThirdPartyLinkSnippetType where
    parseQueryParam = \case
        "linkUnspecified" -> Right TPLSTLinkUnspecified
        "channelToStoreLink" -> Right TPLSTChannelToStoreLink
        x -> Left ("Unable to parse ThirdPartyLinkSnippetType from: " <> x)

instance ToHttpApiData ThirdPartyLinkSnippetType where
    toQueryParam = \case
        TPLSTLinkUnspecified -> "linkUnspecified"
        TPLSTChannelToStoreLink -> "channelToStoreLink"

instance FromJSON ThirdPartyLinkSnippetType where
    parseJSON = parseJSONText "ThirdPartyLinkSnippetType"

instance ToJSON ThirdPartyLinkSnippetType where
    toJSON = toJSONText

-- | Filter on the definition of the videos.
data SearchListVideoDefinition
    = SLVDAny
      -- ^ @any@
      -- Return all videos, regardless of their resolution.
    | SLVDStandard
      -- ^ @standard@
      -- Only retrieve videos in standard definition.
    | SLVDHigh
      -- ^ @high@
      -- Only retrieve HD videos.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListVideoDefinition

instance FromHttpApiData SearchListVideoDefinition where
    parseQueryParam = \case
        "any" -> Right SLVDAny
        "standard" -> Right SLVDStandard
        "high" -> Right SLVDHigh
        x -> Left ("Unable to parse SearchListVideoDefinition from: " <> x)

instance ToHttpApiData SearchListVideoDefinition where
    toQueryParam = \case
        SLVDAny -> "any"
        SLVDStandard -> "standard"
        SLVDHigh -> "high"

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
    = LsfUnspecified
      -- ^ @lsfUnspecified@
    | LsfSu
      -- ^ @lsfSu@
      -- SU
    | LsfA
      -- ^ @lsfA@
      -- A
    | LsfBo
      -- ^ @lsfBo@
      -- BO
    | LSF13
      -- ^ @lsf13@
      -- 13
    | LsfR
      -- ^ @lsfR@
      -- R
    | LSF17
      -- ^ @lsf17@
      -- 17
    | LsfD
      -- ^ @lsfD@
      -- D
    | LSF21
      -- ^ @lsf21@
      -- 21
    | LsfUnrated
      -- ^ @lsfUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingLsfRating

instance FromHttpApiData ContentRatingLsfRating where
    parseQueryParam = \case
        "lsfUnspecified" -> Right LsfUnspecified
        "lsfSu" -> Right LsfSu
        "lsfA" -> Right LsfA
        "lsfBo" -> Right LsfBo
        "lsf13" -> Right LSF13
        "lsfR" -> Right LsfR
        "lsf17" -> Right LSF17
        "lsfD" -> Right LsfD
        "lsf21" -> Right LSF21
        "lsfUnrated" -> Right LsfUnrated
        x -> Left ("Unable to parse ContentRatingLsfRating from: " <> x)

instance ToHttpApiData ContentRatingLsfRating where
    toQueryParam = \case
        LsfUnspecified -> "lsfUnspecified"
        LsfSu -> "lsfSu"
        LsfA -> "lsfA"
        LsfBo -> "lsfBo"
        LSF13 -> "lsf13"
        LsfR -> "lsfR"
        LSF17 -> "lsf17"
        LsfD -> "lsfD"
        LSF21 -> "lsf21"
        LsfUnrated -> "lsfUnrated"

instance FromJSON ContentRatingLsfRating where
    parseJSON = parseJSONText "ContentRatingLsfRating"

instance ToJSON ContentRatingLsfRating where
    toJSON = toJSONText

-- | The rating system for trailer, DVD, and Ad in the US. See
-- http:\/\/movielabs.com\/md\/ratings\/v2.3\/html\/US_MPAAT_Ratings.html.
data ContentRatingMpaatRating
    = MpaatUnspecified
      -- ^ @mpaatUnspecified@
    | MpaatGb
      -- ^ @mpaatGb@
      -- GB
    | MpaatRb
      -- ^ @mpaatRb@
      -- RB
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMpaatRating

instance FromHttpApiData ContentRatingMpaatRating where
    parseQueryParam = \case
        "mpaatUnspecified" -> Right MpaatUnspecified
        "mpaatGb" -> Right MpaatGb
        "mpaatRb" -> Right MpaatRb
        x -> Left ("Unable to parse ContentRatingMpaatRating from: " <> x)

instance ToHttpApiData ContentRatingMpaatRating where
    toQueryParam = \case
        MpaatUnspecified -> "mpaatUnspecified"
        MpaatGb -> "mpaatGb"
        MpaatRb -> "mpaatRb"

instance FromJSON ContentRatingMpaatRating where
    parseJSON = parseJSONText "ContentRatingMpaatRating"

instance ToJSON ContentRatingMpaatRating where
    toJSON = toJSONText

-- | The type of ban.
data LiveChatBanSnippetType
    = LCBSTLiveChatBanTypeUnspecified
      -- ^ @liveChatBanTypeUnspecified@
      -- An invalid ban type.
    | LCBSTPermanent
      -- ^ @permanent@
      -- A permanent ban.
    | LCBSTTemporary
      -- ^ @temporary@
      -- A temporary ban.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveChatBanSnippetType

instance FromHttpApiData LiveChatBanSnippetType where
    parseQueryParam = \case
        "liveChatBanTypeUnspecified" -> Right LCBSTLiveChatBanTypeUnspecified
        "permanent" -> Right LCBSTPermanent
        "temporary" -> Right LCBSTTemporary
        x -> Left ("Unable to parse LiveChatBanSnippetType from: " <> x)

instance ToHttpApiData LiveChatBanSnippetType where
    toQueryParam = \case
        LCBSTLiveChatBanTypeUnspecified -> "liveChatBanTypeUnspecified"
        LCBSTPermanent -> "permanent"
        LCBSTTemporary -> "temporary"

instance FromJSON LiveChatBanSnippetType where
    parseJSON = parseJSONText "LiveChatBanSnippetType"

instance ToJSON LiveChatBanSnippetType where
    toJSON = toJSONText

-- | The video\'s rating from Thailand\'s Board of Film and Video Censors.
data ContentRatingBfvcRating
    = BfvcUnspecified
      -- ^ @bfvcUnspecified@
    | BfvcG
      -- ^ @bfvcG@
      -- G
    | BfvcE
      -- ^ @bfvcE@
      -- E
    | BFVC13
      -- ^ @bfvc13@
      -- 13
    | BFVC15
      -- ^ @bfvc15@
      -- 15
    | BFVC18
      -- ^ @bfvc18@
      -- 18
    | BFVC20
      -- ^ @bfvc20@
      -- 20
    | BfvcB
      -- ^ @bfvcB@
      -- B
    | BfvcUnrated
      -- ^ @bfvcUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingBfvcRating

instance FromHttpApiData ContentRatingBfvcRating where
    parseQueryParam = \case
        "bfvcUnspecified" -> Right BfvcUnspecified
        "bfvcG" -> Right BfvcG
        "bfvcE" -> Right BfvcE
        "bfvc13" -> Right BFVC13
        "bfvc15" -> Right BFVC15
        "bfvc18" -> Right BFVC18
        "bfvc20" -> Right BFVC20
        "bfvcB" -> Right BfvcB
        "bfvcUnrated" -> Right BfvcUnrated
        x -> Left ("Unable to parse ContentRatingBfvcRating from: " <> x)

instance ToHttpApiData ContentRatingBfvcRating where
    toQueryParam = \case
        BfvcUnspecified -> "bfvcUnspecified"
        BfvcG -> "bfvcG"
        BfvcE -> "bfvcE"
        BFVC13 -> "bfvc13"
        BFVC15 -> "bfvc15"
        BFVC18 -> "bfvc18"
        BFVC20 -> "bfvc20"
        BfvcB -> "bfvcB"
        BfvcUnrated -> "bfvcUnrated"

instance FromJSON ContentRatingBfvcRating where
    parseJSON = parseJSONText "ContentRatingBfvcRating"

instance ToJSON ContentRatingBfvcRating where
    toJSON = toJSONText

-- | Filter on the duration of the videos.
data SearchListVideoDuration
    = VideoDurationUnspecified
      -- ^ @videoDurationUnspecified@
    | Any
      -- ^ @any@
      -- Do not filter video search results based on their duration. This is the
      -- default value.
    | Short
      -- ^ @short@
      -- Only include videos that are less than four minutes long.
    | Medium
      -- ^ @medium@
      -- Only include videos that are between four and 20 minutes long
      -- (inclusive).
    | Long
      -- ^ @long@
      -- Only include videos longer than 20 minutes.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListVideoDuration

instance FromHttpApiData SearchListVideoDuration where
    parseQueryParam = \case
        "videoDurationUnspecified" -> Right VideoDurationUnspecified
        "any" -> Right Any
        "short" -> Right Short
        "medium" -> Right Medium
        "long" -> Right Long
        x -> Left ("Unable to parse SearchListVideoDuration from: " <> x)

instance ToHttpApiData SearchListVideoDuration where
    toQueryParam = \case
        VideoDurationUnspecified -> "videoDurationUnspecified"
        Any -> "any"
        Short -> "short"
        Medium -> "medium"
        Long -> "long"

instance FromJSON SearchListVideoDuration where
    parseJSON = parseJSONText "SearchListVideoDuration"

instance ToJSON SearchListVideoDuration where
    toJSON = toJSONText

-- | Filter on the presence of captions on the videos.
data SearchListVideoCaption
    = SLVCVideoCaptionUnspecified
      -- ^ @videoCaptionUnspecified@
    | SLVCAny
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
        "videoCaptionUnspecified" -> Right SLVCVideoCaptionUnspecified
        "any" -> Right SLVCAny
        "closedCaption" -> Right SLVCClosedCaption
        "none" -> Right SLVCNone
        x -> Left ("Unable to parse SearchListVideoCaption from: " <> x)

instance ToHttpApiData SearchListVideoCaption where
    toQueryParam = \case
        SLVCVideoCaptionUnspecified -> "videoCaptionUnspecified"
        SLVCAny -> "any"
        SLVCClosedCaption -> "closedCaption"
        SLVCNone -> "none"

instance FromJSON SearchListVideoCaption where
    parseJSON = parseJSONText "SearchListVideoCaption"

instance ToJSON SearchListVideoCaption where
    toJSON = toJSONText

-- | Return videos liked\/disliked by the authenticated user. Does not
-- support RateType.RATED_TYPE_NONE.
data VideosListMyRating
    = VLMRNone
      -- ^ @none@
    | VLMRLike
      -- ^ @like@
      -- The entity is liked.
    | VLMRDislike
      -- ^ @dislike@
      -- The entity is disliked.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideosListMyRating

instance FromHttpApiData VideosListMyRating where
    parseQueryParam = \case
        "none" -> Right VLMRNone
        "like" -> Right VLMRLike
        "dislike" -> Right VLMRDislike
        x -> Left ("Unable to parse VideosListMyRating from: " <> x)

instance ToHttpApiData VideosListMyRating where
    toQueryParam = \case
        VLMRNone -> "none"
        VLMRLike -> "like"
        VLMRDislike -> "dislike"

instance FromJSON VideosListMyRating where
    parseJSON = parseJSONText "VideosListMyRating"

instance ToJSON VideosListMyRating where
    toJSON = toJSONText

-- | The rating the viewer has given to this comment. For the time being this
-- will never return RATE_TYPE_DISLIKE and instead return RATE_TYPE_NONE.
-- This may change in the future.
data CommentSnippetViewerRating
    = CSVRNone
      -- ^ @none@
    | CSVRLike
      -- ^ @like@
      -- The entity is liked.
    | CSVRDislike
      -- ^ @dislike@
      -- The entity is disliked.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentSnippetViewerRating

instance FromHttpApiData CommentSnippetViewerRating where
    parseQueryParam = \case
        "none" -> Right CSVRNone
        "like" -> Right CSVRLike
        "dislike" -> Right CSVRDislike
        x -> Left ("Unable to parse CommentSnippetViewerRating from: " <> x)

instance ToHttpApiData CommentSnippetViewerRating where
    toQueryParam = \case
        CSVRNone -> "none"
        CSVRLike -> "like"
        CSVRDislike -> "dislike"

instance FromJSON CommentSnippetViewerRating where
    parseJSON = parseJSONText "CommentSnippetViewerRating"

instance ToJSON CommentSnippetViewerRating where
    toJSON = toJSONText

-- | The video\'s rating from Malaysia\'s Film Censorship Board.
data ContentRatingFcbmRating
    = FcbmUnspecified
      -- ^ @fcbmUnspecified@
    | FcbmU
      -- ^ @fcbmU@
      -- U
    | FCBMPG13
      -- ^ @fcbmPg13@
      -- PG13
    | FCBMP13
      -- ^ @fcbmP13@
      -- P13
    | FCBM18
      -- ^ @fcbm18@
      -- 18
    | Fcbm18sx
      -- ^ @fcbm18sx@
      -- 18SX
    | Fcbm18pa
      -- ^ @fcbm18pa@
      -- 18PA
    | Fcbm18sg
      -- ^ @fcbm18sg@
      -- 18SG
    | Fcbm18pl
      -- ^ @fcbm18pl@
      -- 18PL
    | FcbmUnrated
      -- ^ @fcbmUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingFcbmRating

instance FromHttpApiData ContentRatingFcbmRating where
    parseQueryParam = \case
        "fcbmUnspecified" -> Right FcbmUnspecified
        "fcbmU" -> Right FcbmU
        "fcbmPg13" -> Right FCBMPG13
        "fcbmP13" -> Right FCBMP13
        "fcbm18" -> Right FCBM18
        "fcbm18sx" -> Right Fcbm18sx
        "fcbm18pa" -> Right Fcbm18pa
        "fcbm18sg" -> Right Fcbm18sg
        "fcbm18pl" -> Right Fcbm18pl
        "fcbmUnrated" -> Right FcbmUnrated
        x -> Left ("Unable to parse ContentRatingFcbmRating from: " <> x)

instance ToHttpApiData ContentRatingFcbmRating where
    toQueryParam = \case
        FcbmUnspecified -> "fcbmUnspecified"
        FcbmU -> "fcbmU"
        FCBMPG13 -> "fcbmPg13"
        FCBMP13 -> "fcbmP13"
        FCBM18 -> "fcbm18"
        Fcbm18sx -> "fcbm18sx"
        Fcbm18pa -> "fcbm18pa"
        Fcbm18sg -> "fcbm18sg"
        Fcbm18pl -> "fcbm18pl"
        FcbmUnrated -> "fcbmUnrated"

instance FromJSON ContentRatingFcbmRating where
    parseJSON = parseJSONText "ContentRatingFcbmRating"

instance ToJSON ContentRatingFcbmRating where
    toJSON = toJSONText

-- | Return broadcasts with a certain status, e.g. active broadcasts.
data LiveBroadcastsListBroadcastStatus
    = LBLBSBroadcastStatusFilterUnspecified
      -- ^ @broadcastStatusFilterUnspecified@
    | LBLBSAll
      -- ^ @all@
      -- Return all broadcasts.
    | LBLBSActive
      -- ^ @active@
      -- Return current live broadcasts.
    | LBLBSUpcoming
      -- ^ @upcoming@
      -- Return broadcasts that have not yet started.
    | LBLBSCompleted
      -- ^ @completed@
      -- Return broadcasts that have already ended.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastsListBroadcastStatus

instance FromHttpApiData LiveBroadcastsListBroadcastStatus where
    parseQueryParam = \case
        "broadcastStatusFilterUnspecified" -> Right LBLBSBroadcastStatusFilterUnspecified
        "all" -> Right LBLBSAll
        "active" -> Right LBLBSActive
        "upcoming" -> Right LBLBSUpcoming
        "completed" -> Right LBLBSCompleted
        x -> Left ("Unable to parse LiveBroadcastsListBroadcastStatus from: " <> x)

instance ToHttpApiData LiveBroadcastsListBroadcastStatus where
    toQueryParam = \case
        LBLBSBroadcastStatusFilterUnspecified -> "broadcastStatusFilterUnspecified"
        LBLBSAll -> "all"
        LBLBSActive -> "active"
        LBLBSUpcoming -> "upcoming"
        LBLBSCompleted -> "completed"

instance FromJSON LiveBroadcastsListBroadcastStatus where
    parseJSON = parseJSONText "LiveBroadcastsListBroadcastStatus"

instance ToJSON LiveBroadcastsListBroadcastStatus where
    toJSON = toJSONText

-- | The video\'s rating from Taiwan\'s Ministry of Culture (文化部).
data ContentRatingMoctwRating
    = MoctwUnspecified
      -- ^ @moctwUnspecified@
    | MoctwG
      -- ^ @moctwG@
      -- G
    | MoctwP
      -- ^ @moctwP@
      -- P
    | MoctwPg
      -- ^ @moctwPg@
      -- PG
    | MoctwR
      -- ^ @moctwR@
      -- R
    | MoctwUnrated
      -- ^ @moctwUnrated@
    | MOCTWR12
      -- ^ @moctwR12@
      -- R-12
    | MOCTWR15
      -- ^ @moctwR15@
      -- R-15
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMoctwRating

instance FromHttpApiData ContentRatingMoctwRating where
    parseQueryParam = \case
        "moctwUnspecified" -> Right MoctwUnspecified
        "moctwG" -> Right MoctwG
        "moctwP" -> Right MoctwP
        "moctwPg" -> Right MoctwPg
        "moctwR" -> Right MoctwR
        "moctwUnrated" -> Right MoctwUnrated
        "moctwR12" -> Right MOCTWR12
        "moctwR15" -> Right MOCTWR15
        x -> Left ("Unable to parse ContentRatingMoctwRating from: " <> x)

instance ToHttpApiData ContentRatingMoctwRating where
    toQueryParam = \case
        MoctwUnspecified -> "moctwUnspecified"
        MoctwG -> "moctwG"
        MoctwP -> "moctwP"
        MoctwPg -> "moctwPg"
        MoctwR -> "moctwR"
        MoctwUnrated -> "moctwUnrated"
        MOCTWR12 -> "moctwR12"
        MOCTWR15 -> "moctwR15"

instance FromJSON ContentRatingMoctwRating where
    parseJSON = parseJSONText "ContentRatingMoctwRating"

instance ToJSON ContentRatingMoctwRating where
    toJSON = toJSONText

-- | The video\'s rating from the Austrian Board of Media Classification
-- (Bundesministerium für Unterricht, Kunst und Kultur).
data ContentRatingBmukkRating
    = BmukkUnspecified
      -- ^ @bmukkUnspecified@
    | BmukkAa
      -- ^ @bmukkAa@
      -- Unrestricted
    | BMUKK6
      -- ^ @bmukk6@
      -- 6+
    | BMUKK8
      -- ^ @bmukk8@
      -- 8+
    | BMUKK10
      -- ^ @bmukk10@
      -- 10+
    | BMUKK12
      -- ^ @bmukk12@
      -- 12+
    | BMUKK14
      -- ^ @bmukk14@
      -- 14+
    | BMUKK16
      -- ^ @bmukk16@
      -- 16+
    | BmukkUnrated
      -- ^ @bmukkUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingBmukkRating

instance FromHttpApiData ContentRatingBmukkRating where
    parseQueryParam = \case
        "bmukkUnspecified" -> Right BmukkUnspecified
        "bmukkAa" -> Right BmukkAa
        "bmukk6" -> Right BMUKK6
        "bmukk8" -> Right BMUKK8
        "bmukk10" -> Right BMUKK10
        "bmukk12" -> Right BMUKK12
        "bmukk14" -> Right BMUKK14
        "bmukk16" -> Right BMUKK16
        "bmukkUnrated" -> Right BmukkUnrated
        x -> Left ("Unable to parse ContentRatingBmukkRating from: " <> x)

instance ToHttpApiData ContentRatingBmukkRating where
    toQueryParam = \case
        BmukkUnspecified -> "bmukkUnspecified"
        BmukkAa -> "bmukkAa"
        BMUKK6 -> "bmukk6"
        BMUKK8 -> "bmukk8"
        BMUKK10 -> "bmukk10"
        BMUKK12 -> "bmukk12"
        BMUKK14 -> "bmukk14"
        BMUKK16 -> "bmukk16"
        BmukkUnrated -> "bmukkUnrated"

instance FromJSON ContentRatingBmukkRating where
    parseJSON = parseJSONText "ContentRatingBmukkRating"

instance ToJSON ContentRatingBmukkRating where
    toJSON = toJSONText

-- | The video\'s Instituto de la Cinematografía y de las Artes Audiovisuales
-- (ICAA - Spain) rating.
data ContentRatingIcaaRating
    = IcaaUnspecified
      -- ^ @icaaUnspecified@
    | IcaaApta
      -- ^ @icaaApta@
      -- APTA
    | ICAA7
      -- ^ @icaa7@
      -- 7
    | ICAA12
      -- ^ @icaa12@
      -- 12
    | ICAA13
      -- ^ @icaa13@
      -- 13
    | ICAA16
      -- ^ @icaa16@
      -- 16
    | ICAA18
      -- ^ @icaa18@
      -- 18
    | IcaaX
      -- ^ @icaaX@
      -- X
    | IcaaUnrated
      -- ^ @icaaUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingIcaaRating

instance FromHttpApiData ContentRatingIcaaRating where
    parseQueryParam = \case
        "icaaUnspecified" -> Right IcaaUnspecified
        "icaaApta" -> Right IcaaApta
        "icaa7" -> Right ICAA7
        "icaa12" -> Right ICAA12
        "icaa13" -> Right ICAA13
        "icaa16" -> Right ICAA16
        "icaa18" -> Right ICAA18
        "icaaX" -> Right IcaaX
        "icaaUnrated" -> Right IcaaUnrated
        x -> Left ("Unable to parse ContentRatingIcaaRating from: " <> x)

instance ToHttpApiData ContentRatingIcaaRating where
    toQueryParam = \case
        IcaaUnspecified -> "icaaUnspecified"
        IcaaApta -> "icaaApta"
        ICAA7 -> "icaa7"
        ICAA12 -> "icaa12"
        ICAA13 -> "icaa13"
        ICAA16 -> "icaa16"
        ICAA18 -> "icaa18"
        IcaaX -> "icaaX"
        IcaaUnrated -> "icaaUnrated"

instance FromJSON ContentRatingIcaaRating where
    parseJSON = parseJSONText "ContentRatingIcaaRating"

instance ToJSON ContentRatingIcaaRating where
    toJSON = toJSONText

-- | This value explains why YouTube rejected an uploaded video. This
-- property is only present if the uploadStatus property indicates that the
-- upload was rejected.
data VideoStatusRejectionReason
    = Copyright
      -- ^ @copyright@
      -- Copyright infringement.
    | InAppropriate
      -- ^ @inappropriate@
      -- Inappropriate video content.
    | Duplicate
      -- ^ @duplicate@
      -- Duplicate upload in the same channel.
    | TermsOfUse
      -- ^ @termsOfUse@
      -- Terms of use violation.
    | UploaderAccountSuspended
      -- ^ @uploaderAccountSuspended@
      -- Uploader account was suspended.
    | Length
      -- ^ @length@
      -- Video duration was too long.
    | Claim
      -- ^ @claim@
      -- Blocked by content owner.
    | UploaderAccountClosed
      -- ^ @uploaderAccountClosed@
      -- Uploader closed his\/her account.
    | Trademark
      -- ^ @trademark@
      -- Trademark infringement.
    | Legal
      -- ^ @legal@
      -- An unspecified legal reason.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoStatusRejectionReason

instance FromHttpApiData VideoStatusRejectionReason where
    parseQueryParam = \case
        "copyright" -> Right Copyright
        "inappropriate" -> Right InAppropriate
        "duplicate" -> Right Duplicate
        "termsOfUse" -> Right TermsOfUse
        "uploaderAccountSuspended" -> Right UploaderAccountSuspended
        "length" -> Right Length
        "claim" -> Right Claim
        "uploaderAccountClosed" -> Right UploaderAccountClosed
        "trademark" -> Right Trademark
        "legal" -> Right Legal
        x -> Left ("Unable to parse VideoStatusRejectionReason from: " <> x)

instance ToHttpApiData VideoStatusRejectionReason where
    toQueryParam = \case
        Copyright -> "copyright"
        InAppropriate -> "inappropriate"
        Duplicate -> "duplicate"
        TermsOfUse -> "termsOfUse"
        UploaderAccountSuspended -> "uploaderAccountSuspended"
        Length -> "length"
        Claim -> "claim"
        UploaderAccountClosed -> "uploaderAccountClosed"
        Trademark -> "trademark"
        Legal -> "legal"

instance FromJSON VideoStatusRejectionReason where
    parseJSON = parseJSONText "VideoStatusRejectionReason"

instance ToJSON VideoStatusRejectionReason where
    toJSON = toJSONText

-- | The video\'s rating in the Czech Republic.
data ContentRatingCzfilmRating
    = CzfilmUnspecified
      -- ^ @czfilmUnspecified@
    | CzfilmU
      -- ^ @czfilmU@
      -- U
    | CZFILM12
      -- ^ @czfilm12@
      -- 12
    | CZFILM14
      -- ^ @czfilm14@
      -- 14
    | CZFILM18
      -- ^ @czfilm18@
      -- 18
    | CzfilmUnrated
      -- ^ @czfilmUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCzfilmRating

instance FromHttpApiData ContentRatingCzfilmRating where
    parseQueryParam = \case
        "czfilmUnspecified" -> Right CzfilmUnspecified
        "czfilmU" -> Right CzfilmU
        "czfilm12" -> Right CZFILM12
        "czfilm14" -> Right CZFILM14
        "czfilm18" -> Right CZFILM18
        "czfilmUnrated" -> Right CzfilmUnrated
        x -> Left ("Unable to parse ContentRatingCzfilmRating from: " <> x)

instance ToHttpApiData ContentRatingCzfilmRating where
    toQueryParam = \case
        CzfilmUnspecified -> "czfilmUnspecified"
        CzfilmU -> "czfilmU"
        CZFILM12 -> "czfilm12"
        CZFILM14 -> "czfilm14"
        CZFILM18 -> "czfilm18"
        CzfilmUnrated -> "czfilmUnrated"

instance FromJSON ContentRatingCzfilmRating where
    parseJSON = parseJSONText "ContentRatingCzfilmRating"

instance ToJSON ContentRatingCzfilmRating where
    toJSON = toJSONText

-- | The video\'s National Film Registry of the Russian Federation (MKRF -
-- Russia) rating.
data ContentRatingRussiaRating
    = RussiaUnspecified
      -- ^ @russiaUnspecified@
    | RUSSIA0
      -- ^ @russia0@
      -- 0+
    | RUSSIA6
      -- ^ @russia6@
      -- 6+
    | RUSSIA12
      -- ^ @russia12@
      -- 12+
    | RUSSIA16
      -- ^ @russia16@
      -- 16+
    | RUSSIA18
      -- ^ @russia18@
      -- 18+
    | RussiaUnrated
      -- ^ @russiaUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingRussiaRating

instance FromHttpApiData ContentRatingRussiaRating where
    parseQueryParam = \case
        "russiaUnspecified" -> Right RussiaUnspecified
        "russia0" -> Right RUSSIA0
        "russia6" -> Right RUSSIA6
        "russia12" -> Right RUSSIA12
        "russia16" -> Right RUSSIA16
        "russia18" -> Right RUSSIA18
        "russiaUnrated" -> Right RussiaUnrated
        x -> Left ("Unable to parse ContentRatingRussiaRating from: " <> x)

instance ToHttpApiData ContentRatingRussiaRating where
    toQueryParam = \case
        RussiaUnspecified -> "russiaUnspecified"
        RUSSIA0 -> "russia0"
        RUSSIA6 -> "russia6"
        RUSSIA12 -> "russia12"
        RUSSIA16 -> "russia16"
        RUSSIA18 -> "russia18"
        RussiaUnrated -> "russiaUnrated"

instance FromJSON ContentRatingRussiaRating where
    parseJSON = parseJSONText "ContentRatingRussiaRating"

instance ToJSON ContentRatingRussiaRating where
    toJSON = toJSONText

-- | The video\'s rating from the Commission de Contrôle des Films (Belgium).
data ContentRatingCicfRating
    = CicfUnspecified
      -- ^ @cicfUnspecified@
    | CicfE
      -- ^ @cicfE@
      -- E
    | CicfKtEa
      -- ^ @cicfKtEa@
      -- KT\/EA
    | CicfKntEna
      -- ^ @cicfKntEna@
      -- KNT\/ENA
    | CicfUnrated
      -- ^ @cicfUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCicfRating

instance FromHttpApiData ContentRatingCicfRating where
    parseQueryParam = \case
        "cicfUnspecified" -> Right CicfUnspecified
        "cicfE" -> Right CicfE
        "cicfKtEa" -> Right CicfKtEa
        "cicfKntEna" -> Right CicfKntEna
        "cicfUnrated" -> Right CicfUnrated
        x -> Left ("Unable to parse ContentRatingCicfRating from: " <> x)

instance ToHttpApiData ContentRatingCicfRating where
    toQueryParam = \case
        CicfUnspecified -> "cicfUnspecified"
        CicfE -> "cicfE"
        CicfKtEa -> "cicfKtEa"
        CicfKntEna -> "cicfKntEna"
        CicfUnrated -> "cicfUnrated"

instance FromJSON ContentRatingCicfRating where
    parseJSON = parseJSONText "ContentRatingCicfRating"

instance ToJSON ContentRatingCicfRating where
    toJSON = toJSONText

-- | This property has been deprecated. Use the
-- contentDetails.contentRating.cncRating instead.
data ContentRatingFmocRating
    = FmocUnspecified
      -- ^ @fmocUnspecified@
    | FmocU
      -- ^ @fmocU@
      -- U
    | FMOC10
      -- ^ @fmoc10@
      -- 10
    | FMOC12
      -- ^ @fmoc12@
      -- 12
    | FMOC16
      -- ^ @fmoc16@
      -- 16
    | FMOC18
      -- ^ @fmoc18@
      -- 18
    | FmocE
      -- ^ @fmocE@
      -- E
    | FmocUnrated
      -- ^ @fmocUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingFmocRating

instance FromHttpApiData ContentRatingFmocRating where
    parseQueryParam = \case
        "fmocUnspecified" -> Right FmocUnspecified
        "fmocU" -> Right FmocU
        "fmoc10" -> Right FMOC10
        "fmoc12" -> Right FMOC12
        "fmoc16" -> Right FMOC16
        "fmoc18" -> Right FMOC18
        "fmocE" -> Right FmocE
        "fmocUnrated" -> Right FmocUnrated
        x -> Left ("Unable to parse ContentRatingFmocRating from: " <> x)

instance ToHttpApiData ContentRatingFmocRating where
    toQueryParam = \case
        FmocUnspecified -> "fmocUnspecified"
        FmocU -> "fmocU"
        FMOC10 -> "fmoc10"
        FMOC12 -> "fmoc12"
        FMOC16 -> "fmoc16"
        FMOC18 -> "fmoc18"
        FmocE -> "fmocE"
        FmocUnrated -> "fmocUnrated"

instance FromJSON ContentRatingFmocRating where
    parseJSON = parseJSONText "ContentRatingFmocRating"

instance ToJSON ContentRatingFmocRating where
    toJSON = toJSONText

-- | The status to which the broadcast is going to transition.
data LiveBroadcastsTransitionBroadcastStatus
    = LBTBSStatusUnspecified
      -- ^ @statusUnspecified@
    | LBTBSTesting
      -- ^ @testing@
      -- Start testing the broadcast. YouTube transmits video to the broadcast\'s
      -- monitor stream. Note that you can only transition a broadcast to the
      -- testing state if its contentDetails.monitorStream.enableMonitorStream
      -- property is set to true.\",
    | LBTBSLive
      -- ^ @live@
      -- Return only persistent broadcasts.
    | LBTBSComplete
      -- ^ @complete@
      -- The broadcast is over. YouTube stops transmitting video.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastsTransitionBroadcastStatus

instance FromHttpApiData LiveBroadcastsTransitionBroadcastStatus where
    parseQueryParam = \case
        "statusUnspecified" -> Right LBTBSStatusUnspecified
        "testing" -> Right LBTBSTesting
        "live" -> Right LBTBSLive
        "complete" -> Right LBTBSComplete
        x -> Left ("Unable to parse LiveBroadcastsTransitionBroadcastStatus from: " <> x)

instance ToHttpApiData LiveBroadcastsTransitionBroadcastStatus where
    toQueryParam = \case
        LBTBSStatusUnspecified -> "statusUnspecified"
        LBTBSTesting -> "testing"
        LBTBSLive -> "live"
        LBTBSComplete -> "complete"

instance FromJSON LiveBroadcastsTransitionBroadcastStatus where
    parseJSON = parseJSONText "LiveBroadcastsTransitionBroadcastStatus"

instance ToJSON LiveBroadcastsTransitionBroadcastStatus where
    toJSON = toJSONText

-- | The video\'s rating from the Maldives National Bureau of Classification.
data ContentRatingNbcRating
    = NbcUnspecified
      -- ^ @nbcUnspecified@
    | NbcG
      -- ^ @nbcG@
      -- G
    | NbcPg
      -- ^ @nbcPg@
      -- PG
    | Nbc12plus
      -- ^ @nbc12plus@
      -- 12+
    | Nbc15plus
      -- ^ @nbc15plus@
      -- 15+
    | Nbc18plus
      -- ^ @nbc18plus@
      -- 18+
    | Nbc18plusr
      -- ^ @nbc18plusr@
      -- 18+R
    | NbcPu
      -- ^ @nbcPu@
      -- PU
    | NbcUnrated
      -- ^ @nbcUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingNbcRating

instance FromHttpApiData ContentRatingNbcRating where
    parseQueryParam = \case
        "nbcUnspecified" -> Right NbcUnspecified
        "nbcG" -> Right NbcG
        "nbcPg" -> Right NbcPg
        "nbc12plus" -> Right Nbc12plus
        "nbc15plus" -> Right Nbc15plus
        "nbc18plus" -> Right Nbc18plus
        "nbc18plusr" -> Right Nbc18plusr
        "nbcPu" -> Right NbcPu
        "nbcUnrated" -> Right NbcUnrated
        x -> Left ("Unable to parse ContentRatingNbcRating from: " <> x)

instance ToHttpApiData ContentRatingNbcRating where
    toQueryParam = \case
        NbcUnspecified -> "nbcUnspecified"
        NbcG -> "nbcG"
        NbcPg -> "nbcPg"
        Nbc12plus -> "nbc12plus"
        Nbc15plus -> "nbc15plus"
        Nbc18plus -> "nbc18plus"
        Nbc18plusr -> "nbc18plusr"
        NbcPu -> "nbcPu"
        NbcUnrated -> "nbcUnrated"

instance FromJSON ContentRatingNbcRating where
    parseJSON = parseJSONText "ContentRatingNbcRating"

instance ToJSON ContentRatingNbcRating where
    toJSON = toJSONText

-- | Priority of the live broadcast event (internal state).
data LiveBroadcastStatusLiveBroadcastPriority
    = LiveBroadcastPriorityUnspecified
      -- ^ @liveBroadcastPriorityUnspecified@
    | Low
      -- ^ @low@
      -- Low priority broadcast: for low view count HoAs or other low priority
      -- broadcasts.
    | Normal
      -- ^ @normal@
      -- Normal priority broadcast: for regular HoAs and broadcasts.
    | High
      -- ^ @high@
      -- High priority broadcast: for high profile HoAs, like PixelCorp ones.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastStatusLiveBroadcastPriority

instance FromHttpApiData LiveBroadcastStatusLiveBroadcastPriority where
    parseQueryParam = \case
        "liveBroadcastPriorityUnspecified" -> Right LiveBroadcastPriorityUnspecified
        "low" -> Right Low
        "normal" -> Right Normal
        "high" -> Right High
        x -> Left ("Unable to parse LiveBroadcastStatusLiveBroadcastPriority from: " <> x)

instance ToHttpApiData LiveBroadcastStatusLiveBroadcastPriority where
    toQueryParam = \case
        LiveBroadcastPriorityUnspecified -> "liveBroadcastPriorityUnspecified"
        Low -> "low"
        Normal -> "normal"
        High -> "high"

instance FromJSON LiveBroadcastStatusLiveBroadcastPriority where
    parseJSON = parseJSONText "LiveBroadcastStatusLiveBroadcastPriority"

instance ToJSON LiveBroadcastStatusLiveBroadcastPriority where
    toJSON = toJSONText

-- | The status code of this stream
data LiveStreamHealthStatusStatus
    = Good
      -- ^ @good@
    | OK
      -- ^ @ok@
    | Bad
      -- ^ @bad@
    | NoData
      -- ^ @noData@
    | Revoked
      -- ^ @revoked@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveStreamHealthStatusStatus

instance FromHttpApiData LiveStreamHealthStatusStatus where
    parseQueryParam = \case
        "good" -> Right Good
        "ok" -> Right OK
        "bad" -> Right Bad
        "noData" -> Right NoData
        "revoked" -> Right Revoked
        x -> Left ("Unable to parse LiveStreamHealthStatusStatus from: " <> x)

instance ToHttpApiData LiveStreamHealthStatusStatus where
    toQueryParam = \case
        Good -> "good"
        OK -> "ok"
        Bad -> "bad"
        NoData -> "noData"
        Revoked -> "revoked"

instance FromJSON LiveStreamHealthStatusStatus where
    parseJSON = parseJSONText "LiveStreamHealthStatusStatus"

instance ToJSON LiveStreamHealthStatusStatus where
    toJSON = toJSONText

-- | If both this and enable_low_latency are set, they must match.
-- LATENCY_NORMAL should match enable_low_latency=false LATENCY_LOW should
-- match enable_low_latency=true LATENCY_ULTRA_LOW should have
-- enable_low_latency omitted.
data LiveBroadcastContentDetailsLatencyPreference
    = LBCDLPLatencyPreferenceUnspecified
      -- ^ @latencyPreferenceUnspecified@
    | LBCDLPNormal
      -- ^ @normal@
      -- Best for: highest quality viewer playbacks and higher resolutions.
    | LBCDLPLow
      -- ^ @low@
      -- Best for: near real-time interaction, with minimal playback buffering.
    | LBCDLPUltraLow
      -- ^ @ultraLow@
      -- Best for: real-time interaction Does not support: Closed captions,
      -- 1440p, and 4k resolutions
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastContentDetailsLatencyPreference

instance FromHttpApiData LiveBroadcastContentDetailsLatencyPreference where
    parseQueryParam = \case
        "latencyPreferenceUnspecified" -> Right LBCDLPLatencyPreferenceUnspecified
        "normal" -> Right LBCDLPNormal
        "low" -> Right LBCDLPLow
        "ultraLow" -> Right LBCDLPUltraLow
        x -> Left ("Unable to parse LiveBroadcastContentDetailsLatencyPreference from: " <> x)

instance ToHttpApiData LiveBroadcastContentDetailsLatencyPreference where
    toQueryParam = \case
        LBCDLPLatencyPreferenceUnspecified -> "latencyPreferenceUnspecified"
        LBCDLPNormal -> "normal"
        LBCDLPLow -> "low"
        LBCDLPUltraLow -> "ultraLow"

instance FromJSON LiveBroadcastContentDetailsLatencyPreference where
    parseJSON = parseJSONText "LiveBroadcastContentDetailsLatencyPreference"

instance ToJSON LiveBroadcastContentDetailsLatencyPreference where
    toJSON = toJSONText

-- | Rating of a video.
data VideoRatingRating
    = VRRNone
      -- ^ @none@
    | VRRLike
      -- ^ @like@
      -- The entity is liked.
    | VRRDislike
      -- ^ @dislike@
      -- The entity is disliked.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoRatingRating

instance FromHttpApiData VideoRatingRating where
    parseQueryParam = \case
        "none" -> Right VRRNone
        "like" -> Right VRRLike
        "dislike" -> Right VRRDislike
        x -> Left ("Unable to parse VideoRatingRating from: " <> x)

instance ToHttpApiData VideoRatingRating where
    toQueryParam = \case
        VRRNone -> "none"
        VRRLike -> "like"
        VRRDislike -> "dislike"

instance FromJSON VideoRatingRating where
    parseJSON = parseJSONText "VideoRatingRating"

instance ToJSON VideoRatingRating where
    toJSON = toJSONText

data VideoSuggestionsProcessingWarningsItem
    = UnknownContainer
      -- ^ @unknownContainer@
      -- Unrecognized file format, transcoding is likely to fail.
    | UnknownVideoCodec
      -- ^ @unknownVideoCodec@
      -- Unrecognized video codec, transcoding is likely to fail.
    | UnknownAudioCodec
      -- ^ @unknownAudioCodec@
      -- Unrecognized audio codec, transcoding is likely to fail.
    | InconsistentResolution
      -- ^ @inconsistentResolution@
      -- Conflicting container and stream resolutions.
    | HasEditList
      -- ^ @hasEditlist@
      -- Edit lists are not currently supported.
    | ProblematicVideoCodec
      -- ^ @problematicVideoCodec@
      -- Video codec that is known to cause problems was used.
    | ProblematicAudioCodec
      -- ^ @problematicAudioCodec@
      -- Audio codec that is known to cause problems was used.
    | UnsupportedVrStereoMode
      -- ^ @unsupportedVrStereoMode@
      -- Unsupported VR video stereo mode.
    | UnsupportedSphericalProjectionType
      -- ^ @unsupportedSphericalProjectionType@
      -- Unsupported spherical video projection type.
    | UnsupportedHdrPixelFormat
      -- ^ @unsupportedHdrPixelFormat@
      -- Unsupported HDR pixel format.
    | UnsupportedHdrColorMetadata
      -- ^ @unsupportedHdrColorMetadata@
      -- Unspecified HDR color metadata.
    | ProblematicHdrLookupTable
      -- ^ @problematicHdrLookupTable@
      -- Problematic HDR lookup table attached.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoSuggestionsProcessingWarningsItem

instance FromHttpApiData VideoSuggestionsProcessingWarningsItem where
    parseQueryParam = \case
        "unknownContainer" -> Right UnknownContainer
        "unknownVideoCodec" -> Right UnknownVideoCodec
        "unknownAudioCodec" -> Right UnknownAudioCodec
        "inconsistentResolution" -> Right InconsistentResolution
        "hasEditlist" -> Right HasEditList
        "problematicVideoCodec" -> Right ProblematicVideoCodec
        "problematicAudioCodec" -> Right ProblematicAudioCodec
        "unsupportedVrStereoMode" -> Right UnsupportedVrStereoMode
        "unsupportedSphericalProjectionType" -> Right UnsupportedSphericalProjectionType
        "unsupportedHdrPixelFormat" -> Right UnsupportedHdrPixelFormat
        "unsupportedHdrColorMetadata" -> Right UnsupportedHdrColorMetadata
        "problematicHdrLookupTable" -> Right ProblematicHdrLookupTable
        x -> Left ("Unable to parse VideoSuggestionsProcessingWarningsItem from: " <> x)

instance ToHttpApiData VideoSuggestionsProcessingWarningsItem where
    toQueryParam = \case
        UnknownContainer -> "unknownContainer"
        UnknownVideoCodec -> "unknownVideoCodec"
        UnknownAudioCodec -> "unknownAudioCodec"
        InconsistentResolution -> "inconsistentResolution"
        HasEditList -> "hasEditlist"
        ProblematicVideoCodec -> "problematicVideoCodec"
        ProblematicAudioCodec -> "problematicAudioCodec"
        UnsupportedVrStereoMode -> "unsupportedVrStereoMode"
        UnsupportedSphericalProjectionType -> "unsupportedSphericalProjectionType"
        UnsupportedHdrPixelFormat -> "unsupportedHdrPixelFormat"
        UnsupportedHdrColorMetadata -> "unsupportedHdrColorMetadata"
        ProblematicHdrLookupTable -> "problematicHdrLookupTable"

instance FromJSON VideoSuggestionsProcessingWarningsItem where
    parseJSON = parseJSONText "VideoSuggestionsProcessingWarningsItem"

instance ToJSON VideoSuggestionsProcessingWarningsItem where
    toJSON = toJSONText

-- | Describes in which corner of the video the visual widget will appear.
data InvideoPositionCornerPosition
    = TopLeft
      -- ^ @topLeft@
    | TopRight
      -- ^ @topRight@
    | BottomLeft
      -- ^ @bottomLeft@
    | BottomRight
      -- ^ @bottomRight@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InvideoPositionCornerPosition

instance FromHttpApiData InvideoPositionCornerPosition where
    parseQueryParam = \case
        "topLeft" -> Right TopLeft
        "topRight" -> Right TopRight
        "bottomLeft" -> Right BottomLeft
        "bottomRight" -> Right BottomRight
        x -> Left ("Unable to parse InvideoPositionCornerPosition from: " <> x)

instance ToHttpApiData InvideoPositionCornerPosition where
    toQueryParam = \case
        TopLeft -> "topLeft"
        TopRight -> "topRight"
        BottomLeft -> "bottomLeft"
        BottomRight -> "bottomRight"

instance FromJSON InvideoPositionCornerPosition where
    parseJSON = parseJSONText "InvideoPositionCornerPosition"

instance ToJSON InvideoPositionCornerPosition where
    toJSON = toJSONText

-- | The long uploads status of this channel. See
-- https:\/\/support.google.com\/youtube\/answer\/71673 for more
-- information.
data ChannelStatusLongUploadsStatus
    = LongUploadsUnspecified
      -- ^ @longUploadsUnspecified@
    | Allowed
      -- ^ @allowed@
    | Eligible
      -- ^ @eligible@
    | Disallowed
      -- ^ @disallowed@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChannelStatusLongUploadsStatus

instance FromHttpApiData ChannelStatusLongUploadsStatus where
    parseQueryParam = \case
        "longUploadsUnspecified" -> Right LongUploadsUnspecified
        "allowed" -> Right Allowed
        "eligible" -> Right Eligible
        "disallowed" -> Right Disallowed
        x -> Left ("Unable to parse ChannelStatusLongUploadsStatus from: " <> x)

instance ToHttpApiData ChannelStatusLongUploadsStatus where
    toQueryParam = \case
        LongUploadsUnspecified -> "longUploadsUnspecified"
        Allowed -> "allowed"
        Eligible -> "eligible"
        Disallowed -> "disallowed"

instance FromJSON ChannelStatusLongUploadsStatus where
    parseJSON = parseJSONText "ChannelStatusLongUploadsStatus"

instance ToJSON ChannelStatusLongUploadsStatus where
    toJSON = toJSONText

-- | The video\'s rating from Luxembourg\'s Commission de surveillance de la
-- classification des films (CSCF).
data ContentRatingCscfRating
    = CscfUnspecified
      -- ^ @cscfUnspecified@
    | CscfAl
      -- ^ @cscfAl@
      -- AL
    | CscfA
      -- ^ @cscfA@
      -- A
    | CSCF6
      -- ^ @cscf6@
      -- 6
    | CSCF9
      -- ^ @cscf9@
      -- 9
    | CSCF12
      -- ^ @cscf12@
      -- 12
    | CSCF16
      -- ^ @cscf16@
      -- 16
    | CSCF18
      -- ^ @cscf18@
      -- 18
    | CscfUnrated
      -- ^ @cscfUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCscfRating

instance FromHttpApiData ContentRatingCscfRating where
    parseQueryParam = \case
        "cscfUnspecified" -> Right CscfUnspecified
        "cscfAl" -> Right CscfAl
        "cscfA" -> Right CscfA
        "cscf6" -> Right CSCF6
        "cscf9" -> Right CSCF9
        "cscf12" -> Right CSCF12
        "cscf16" -> Right CSCF16
        "cscf18" -> Right CSCF18
        "cscfUnrated" -> Right CscfUnrated
        x -> Left ("Unable to parse ContentRatingCscfRating from: " <> x)

instance ToHttpApiData ContentRatingCscfRating where
    toQueryParam = \case
        CscfUnspecified -> "cscfUnspecified"
        CscfAl -> "cscfAl"
        CscfA -> "cscfA"
        CSCF6 -> "cscf6"
        CSCF9 -> "cscf9"
        CSCF12 -> "cscf12"
        CSCF16 -> "cscf16"
        CSCF18 -> "cscf18"
        CscfUnrated -> "cscfUnrated"

instance FromJSON ContentRatingCscfRating where
    parseJSON = parseJSONText "ContentRatingCscfRating"

instance ToJSON ContentRatingCscfRating where
    toJSON = toJSONText

-- | Get a third party link of the given type.
data ThirdPartyLinksListType
    = TPLLTLinkUnspecified
      -- ^ @linkUnspecified@
    | TPLLTChannelToStoreLink
      -- ^ @channelToStoreLink@
      -- A link that is connecting (or about to connect) a channel with a store
      -- on a merchandising platform in order to enable retail commerce
      -- capabilities for that channel on YouTube.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ThirdPartyLinksListType

instance FromHttpApiData ThirdPartyLinksListType where
    parseQueryParam = \case
        "linkUnspecified" -> Right TPLLTLinkUnspecified
        "channelToStoreLink" -> Right TPLLTChannelToStoreLink
        x -> Left ("Unable to parse ThirdPartyLinksListType from: " <> x)

instance ToHttpApiData ThirdPartyLinksListType where
    toQueryParam = \case
        TPLLTLinkUnspecified -> "linkUnspecified"
        TPLLTChannelToStoreLink -> "channelToStoreLink"

instance FromJSON ThirdPartyLinksListType where
    parseJSON = parseJSONText "ThirdPartyLinksListType"

instance ToJSON ThirdPartyLinksListType where
    toJSON = toJSONText

-- | The broadcast\'s recording status.
data LiveBroadcastStatusRecordingStatus
    = LiveBroadcastRecordingStatusUnspecified
      -- ^ @liveBroadcastRecordingStatusUnspecified@
      -- No value or the value is unknown.
    | NotRecording
      -- ^ @notRecording@
      -- The recording has not yet been started.
    | Recording
      -- ^ @recording@
      -- The recording is currently on.
    | Recorded
      -- ^ @recorded@
      -- The recording is completed, and cannot be started again.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastStatusRecordingStatus

instance FromHttpApiData LiveBroadcastStatusRecordingStatus where
    parseQueryParam = \case
        "liveBroadcastRecordingStatusUnspecified" -> Right LiveBroadcastRecordingStatusUnspecified
        "notRecording" -> Right NotRecording
        "recording" -> Right Recording
        "recorded" -> Right Recorded
        x -> Left ("Unable to parse LiveBroadcastStatusRecordingStatus from: " <> x)

instance ToHttpApiData LiveBroadcastStatusRecordingStatus where
    toQueryParam = \case
        LiveBroadcastRecordingStatusUnspecified -> "liveBroadcastRecordingStatusUnspecified"
        NotRecording -> "notRecording"
        Recording -> "recording"
        Recorded -> "recorded"

instance FromJSON LiveBroadcastStatusRecordingStatus where
    parseJSON = parseJSONText "LiveBroadcastStatusRecordingStatus"

instance ToJSON LiveBroadcastStatusRecordingStatus where
    toJSON = toJSONText

-- | The amount that YouTube needs to rotate the original source content to
-- properly display the video.
data VideoFileDetailsVideoStreamRotation
    = VFDVSRNone
      -- ^ @none@
    | VFDVSRClockwise
      -- ^ @clockwise@
    | VFDVSRUpsideDown
      -- ^ @upsideDown@
    | VFDVSRCounterClockwise
      -- ^ @counterClockwise@
    | VFDVSROther
      -- ^ @other@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoFileDetailsVideoStreamRotation

instance FromHttpApiData VideoFileDetailsVideoStreamRotation where
    parseQueryParam = \case
        "none" -> Right VFDVSRNone
        "clockwise" -> Right VFDVSRClockwise
        "upsideDown" -> Right VFDVSRUpsideDown
        "counterClockwise" -> Right VFDVSRCounterClockwise
        "other" -> Right VFDVSROther
        x -> Left ("Unable to parse VideoFileDetailsVideoStreamRotation from: " <> x)

instance ToHttpApiData VideoFileDetailsVideoStreamRotation where
    toQueryParam = \case
        VFDVSRNone -> "none"
        VFDVSRClockwise -> "clockwise"
        VFDVSRUpsideDown -> "upsideDown"
        VFDVSRCounterClockwise -> "counterClockwise"
        VFDVSROther -> "other"

instance FromJSON VideoFileDetailsVideoStreamRotation where
    parseJSON = parseJSONText "VideoFileDetailsVideoStreamRotation"

instance ToJSON VideoFileDetailsVideoStreamRotation where
    toJSON = toJSONText

-- | The video\'s General Directorate of Radio, Television and Cinematography
-- (Mexico) rating.
data ContentRatingRtcRating
    = RtcUnspecified
      -- ^ @rtcUnspecified@
    | RtcAa
      -- ^ @rtcAa@
      -- AA
    | RtcA
      -- ^ @rtcA@
      -- A
    | RtcB
      -- ^ @rtcB@
      -- B
    | RTCB15
      -- ^ @rtcB15@
      -- B15
    | RtcC
      -- ^ @rtcC@
      -- C
    | RtcD
      -- ^ @rtcD@
      -- D
    | RtcUnrated
      -- ^ @rtcUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingRtcRating

instance FromHttpApiData ContentRatingRtcRating where
    parseQueryParam = \case
        "rtcUnspecified" -> Right RtcUnspecified
        "rtcAa" -> Right RtcAa
        "rtcA" -> Right RtcA
        "rtcB" -> Right RtcB
        "rtcB15" -> Right RTCB15
        "rtcC" -> Right RtcC
        "rtcD" -> Right RtcD
        "rtcUnrated" -> Right RtcUnrated
        x -> Left ("Unable to parse ContentRatingRtcRating from: " <> x)

instance ToHttpApiData ContentRatingRtcRating where
    toQueryParam = \case
        RtcUnspecified -> "rtcUnspecified"
        RtcAa -> "rtcAa"
        RtcA -> "rtcA"
        RtcB -> "rtcB"
        RTCB15 -> "rtcB15"
        RtcC -> "rtcC"
        RtcD -> "rtcD"
        RtcUnrated -> "rtcUnrated"

instance FromJSON ContentRatingRtcRating where
    parseJSON = parseJSONText "ContentRatingRtcRating"

instance ToJSON ContentRatingRtcRating where
    toJSON = toJSONText

-- | Limits the returned comment threads to those with the specified
-- moderation status. Not compatible with the \'id\' filter. Valid values:
-- published, heldForReview, likelySpam.
data CommentThreadsListModerationStatus
    = Published
      -- ^ @published@
      -- The comment is available for public display.
    | HeldForReview
      -- ^ @heldForReview@
      -- The comment is awaiting review by a moderator.
    | LikelySpam
      -- ^ @likelySpam@
    | Rejected
      -- ^ @rejected@
      -- The comment is unfit for display.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentThreadsListModerationStatus

instance FromHttpApiData CommentThreadsListModerationStatus where
    parseQueryParam = \case
        "published" -> Right Published
        "heldForReview" -> Right HeldForReview
        "likelySpam" -> Right LikelySpam
        "rejected" -> Right Rejected
        x -> Left ("Unable to parse CommentThreadsListModerationStatus from: " <> x)

instance ToHttpApiData CommentThreadsListModerationStatus where
    toQueryParam = \case
        Published -> "published"
        HeldForReview -> "heldForReview"
        LikelySpam -> "likelySpam"
        Rejected -> "rejected"

instance FromJSON CommentThreadsListModerationStatus where
    parseJSON = parseJSONText "CommentThreadsListModerationStatus"

instance ToJSON CommentThreadsListModerationStatus where
    toJSON = toJSONText

-- | The video\'s rating in Iceland.
data ContentRatingSmaisRating
    = SmaisUnspecified
      -- ^ @smaisUnspecified@
    | SmaisL
      -- ^ @smaisL@
      -- L
    | SMAIS7
      -- ^ @smais7@
      -- 7
    | SMAIS12
      -- ^ @smais12@
      -- 12
    | SMAIS14
      -- ^ @smais14@
      -- 14
    | SMAIS16
      -- ^ @smais16@
      -- 16
    | SMAIS18
      -- ^ @smais18@
      -- 18
    | SmaisUnrated
      -- ^ @smaisUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingSmaisRating

instance FromHttpApiData ContentRatingSmaisRating where
    parseQueryParam = \case
        "smaisUnspecified" -> Right SmaisUnspecified
        "smaisL" -> Right SmaisL
        "smais7" -> Right SMAIS7
        "smais12" -> Right SMAIS12
        "smais14" -> Right SMAIS14
        "smais16" -> Right SMAIS16
        "smais18" -> Right SMAIS18
        "smaisUnrated" -> Right SmaisUnrated
        x -> Left ("Unable to parse ContentRatingSmaisRating from: " <> x)

instance ToHttpApiData ContentRatingSmaisRating where
    toQueryParam = \case
        SmaisUnspecified -> "smaisUnspecified"
        SmaisL -> "smaisL"
        SMAIS7 -> "smais7"
        SMAIS12 -> "smais12"
        SMAIS14 -> "smais14"
        SMAIS16 -> "smais16"
        SMAIS18 -> "smais18"
        SmaisUnrated -> "smaisUnrated"

instance FromJSON ContentRatingSmaisRating where
    parseJSON = parseJSONText "ContentRatingSmaisRating"

instance ToJSON ContentRatingSmaisRating where
    toJSON = toJSONText

-- | A rating that YouTube uses to identify age-restricted content.
data ContentRatingYtRating
    = YtUnspecified
      -- ^ @ytUnspecified@
    | YtAgeRestricted
      -- ^ @ytAgeRestricted@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingYtRating

instance FromHttpApiData ContentRatingYtRating where
    parseQueryParam = \case
        "ytUnspecified" -> Right YtUnspecified
        "ytAgeRestricted" -> Right YtAgeRestricted
        x -> Left ("Unable to parse ContentRatingYtRating from: " <> x)

instance ToHttpApiData ContentRatingYtRating where
    toQueryParam = \case
        YtUnspecified -> "ytUnspecified"
        YtAgeRestricted -> "ytAgeRestricted"

instance FromJSON ContentRatingYtRating where
    parseJSON = parseJSONText "ContentRatingYtRating"

instance ToJSON ContentRatingYtRating where
    toJSON = toJSONText

-- | The value of captions indicates whether the video has captions or not.
data VideoContentDetailsCaption
    = True'
      -- ^ @true@
    | False'
      -- ^ @false@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoContentDetailsCaption

instance FromHttpApiData VideoContentDetailsCaption where
    parseQueryParam = \case
        "true" -> Right True'
        "false" -> Right False'
        x -> Left ("Unable to parse VideoContentDetailsCaption from: " <> x)

instance ToHttpApiData VideoContentDetailsCaption where
    toQueryParam = \case
        True' -> "true"
        False' -> "false"

instance FromJSON VideoContentDetailsCaption where
    parseJSON = parseJSONText "VideoContentDetailsCaption"

instance ToJSON VideoContentDetailsCaption where
    toJSON = toJSONText

-- | The order of the returned subscriptions
data SubscriptionsListOrder
    = SLOSubscriptionOrderUnspecified
      -- ^ @subscriptionOrderUnspecified@
    | SLORelevance
      -- ^ @relevance@
      -- Sort by relevance.
    | SLOUnread
      -- ^ @unread@
      -- Sort by order of activity.
    | SLOAlphabetical
      -- ^ @alphabetical@
      -- Sort alphabetically.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SubscriptionsListOrder

instance FromHttpApiData SubscriptionsListOrder where
    parseQueryParam = \case
        "subscriptionOrderUnspecified" -> Right SLOSubscriptionOrderUnspecified
        "relevance" -> Right SLORelevance
        "unread" -> Right SLOUnread
        "alphabetical" -> Right SLOAlphabetical
        x -> Left ("Unable to parse SubscriptionsListOrder from: " <> x)

instance ToHttpApiData SubscriptionsListOrder where
    toQueryParam = \case
        SLOSubscriptionOrderUnspecified -> "subscriptionOrderUnspecified"
        SLORelevance -> "relevance"
        SLOUnread -> "unread"
        SLOAlphabetical -> "alphabetical"

instance FromJSON SubscriptionsListOrder where
    parseJSON = parseJSONText "SubscriptionsListOrder"

instance ToJSON SubscriptionsListOrder where
    toJSON = toJSONText

-- | The video\'s British Board of Film Classification (BBFC) rating.
data ContentRatingBbfcRating
    = BbfcUnspecified
      -- ^ @bbfcUnspecified@
    | BbfcU
      -- ^ @bbfcU@
      -- U
    | BbfcPg
      -- ^ @bbfcPg@
      -- PG
    | Bbfc12a
      -- ^ @bbfc12a@
      -- 12A
    | BBFC12
      -- ^ @bbfc12@
      -- 12
    | BBFC15
      -- ^ @bbfc15@
      -- 15
    | BBFC18
      -- ^ @bbfc18@
      -- 18
    | BBFCR18
      -- ^ @bbfcR18@
      -- R18
    | BbfcUnrated
      -- ^ @bbfcUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingBbfcRating

instance FromHttpApiData ContentRatingBbfcRating where
    parseQueryParam = \case
        "bbfcUnspecified" -> Right BbfcUnspecified
        "bbfcU" -> Right BbfcU
        "bbfcPg" -> Right BbfcPg
        "bbfc12a" -> Right Bbfc12a
        "bbfc12" -> Right BBFC12
        "bbfc15" -> Right BBFC15
        "bbfc18" -> Right BBFC18
        "bbfcR18" -> Right BBFCR18
        "bbfcUnrated" -> Right BbfcUnrated
        x -> Left ("Unable to parse ContentRatingBbfcRating from: " <> x)

instance ToHttpApiData ContentRatingBbfcRating where
    toQueryParam = \case
        BbfcUnspecified -> "bbfcUnspecified"
        BbfcU -> "bbfcU"
        BbfcPg -> "bbfcPg"
        Bbfc12a -> "bbfc12a"
        BBFC12 -> "bbfc12"
        BBFC15 -> "bbfc15"
        BBFC18 -> "bbfc18"
        BBFCR18 -> "bbfcR18"
        BbfcUnrated -> "bbfcUnrated"

instance FromJSON ContentRatingBbfcRating where
    parseJSON = parseJSONText "ContentRatingBbfcRating"

instance ToJSON ContentRatingBbfcRating where
    toJSON = toJSONText

-- | The video\'s TV Parental Guidelines (TVPG) rating.
data ContentRatingTvpgRating
    = TvpgUnspecified
      -- ^ @tvpgUnspecified@
    | TvpgY
      -- ^ @tvpgY@
      -- TV-Y
    | TVPGY7
      -- ^ @tvpgY7@
      -- TV-Y7
    | TvpgY7Fv
      -- ^ @tvpgY7Fv@
      -- TV-Y7-FV
    | TvpgG
      -- ^ @tvpgG@
      -- TV-G
    | TvpgPg
      -- ^ @tvpgPg@
      -- TV-PG
    | PG14
      -- ^ @pg14@
      -- TV-14
    | TvpgMa
      -- ^ @tvpgMa@
      -- TV-MA
    | TvpgUnrated
      -- ^ @tvpgUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingTvpgRating

instance FromHttpApiData ContentRatingTvpgRating where
    parseQueryParam = \case
        "tvpgUnspecified" -> Right TvpgUnspecified
        "tvpgY" -> Right TvpgY
        "tvpgY7" -> Right TVPGY7
        "tvpgY7Fv" -> Right TvpgY7Fv
        "tvpgG" -> Right TvpgG
        "tvpgPg" -> Right TvpgPg
        "pg14" -> Right PG14
        "tvpgMa" -> Right TvpgMa
        "tvpgUnrated" -> Right TvpgUnrated
        x -> Left ("Unable to parse ContentRatingTvpgRating from: " <> x)

instance ToHttpApiData ContentRatingTvpgRating where
    toQueryParam = \case
        TvpgUnspecified -> "tvpgUnspecified"
        TvpgY -> "tvpgY"
        TVPGY7 -> "tvpgY7"
        TvpgY7Fv -> "tvpgY7Fv"
        TvpgG -> "tvpgG"
        TvpgPg -> "tvpgPg"
        PG14 -> "pg14"
        TvpgMa -> "tvpgMa"
        TvpgUnrated -> "tvpgUnrated"

instance FromJSON ContentRatingTvpgRating where
    parseJSON = parseJSONText "ContentRatingTvpgRating"

instance ToJSON ContentRatingTvpgRating where
    toJSON = toJSONText

-- | The requested text format for the returned comments.
data CommentsListTextFormat
    = TextFormatUnspecified
      -- ^ @textFormatUnspecified@
    | HTML
      -- ^ @html@
      -- Returns the comments in HTML format. This is the default value.
    | PlainText
      -- ^ @plainText@
      -- Returns the comments in plain text format.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentsListTextFormat

instance FromHttpApiData CommentsListTextFormat where
    parseQueryParam = \case
        "textFormatUnspecified" -> Right TextFormatUnspecified
        "html" -> Right HTML
        "plainText" -> Right PlainText
        x -> Left ("Unable to parse CommentsListTextFormat from: " <> x)

instance ToHttpApiData CommentsListTextFormat where
    toQueryParam = \case
        TextFormatUnspecified -> "textFormatUnspecified"
        HTML -> "html"
        PlainText -> "plainText"

instance FromJSON CommentsListTextFormat where
    parseJSON = parseJSONText "CommentsListTextFormat"

instance ToJSON CommentsListTextFormat where
    toJSON = toJSONText

data VideosRateRating
    = VNone
      -- ^ @none@
    | VLike
      -- ^ @like@
      -- The entity is liked.
    | VDislike
      -- ^ @dislike@
      -- The entity is disliked.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideosRateRating

instance FromHttpApiData VideosRateRating where
    parseQueryParam = \case
        "none" -> Right VNone
        "like" -> Right VLike
        "dislike" -> Right VDislike
        x -> Left ("Unable to parse VideosRateRating from: " <> x)

instance ToHttpApiData VideosRateRating where
    toQueryParam = \case
        VNone -> "none"
        VLike -> "like"
        VDislike -> "dislike"

instance FromJSON VideosRateRating where
    parseJSON = parseJSONText "VideosRateRating"

instance ToJSON VideosRateRating where
    toJSON = toJSONText

-- | The projection format of this broadcast. This defaults to rectangular.
data LiveBroadcastContentDetailsProjection
    = LBCDPProjectionUnspecified
      -- ^ @projectionUnspecified@
    | LBCDPRectangular
      -- ^ @rectangular@
    | LBCDP360
      -- ^ @360@
    | LBCDPMesh
      -- ^ @mesh@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastContentDetailsProjection

instance FromHttpApiData LiveBroadcastContentDetailsProjection where
    parseQueryParam = \case
        "projectionUnspecified" -> Right LBCDPProjectionUnspecified
        "rectangular" -> Right LBCDPRectangular
        "360" -> Right LBCDP360
        "mesh" -> Right LBCDPMesh
        x -> Left ("Unable to parse LiveBroadcastContentDetailsProjection from: " <> x)

instance ToHttpApiData LiveBroadcastContentDetailsProjection where
    toQueryParam = \case
        LBCDPProjectionUnspecified -> "projectionUnspecified"
        LBCDPRectangular -> "rectangular"
        LBCDP360 -> "360"
        LBCDPMesh -> "mesh"

instance FromJSON LiveBroadcastContentDetailsProjection where
    parseJSON = parseJSONText "LiveBroadcastContentDetailsProjection"

instance ToJSON LiveBroadcastContentDetailsProjection where
    toJSON = toJSONText

-- | The caption track\'s status.
data CaptionSnippetStatus
    = Serving
      -- ^ @serving@
    | Syncing
      -- ^ @syncing@
    | Failed
      -- ^ @failed@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CaptionSnippetStatus

instance FromHttpApiData CaptionSnippetStatus where
    parseQueryParam = \case
        "serving" -> Right Serving
        "syncing" -> Right Syncing
        "failed" -> Right Failed
        x -> Left ("Unable to parse CaptionSnippetStatus from: " <> x)

instance ToHttpApiData CaptionSnippetStatus where
    toQueryParam = \case
        Serving -> "serving"
        Syncing -> "syncing"
        Failed -> "failed"

instance FromJSON CaptionSnippetStatus where
    parseJSON = parseJSONText "CaptionSnippetStatus"

instance ToJSON CaptionSnippetStatus where
    toJSON = toJSONText

-- | The video\'s rating in Slovakia.
data ContentRatingSkfilmRating
    = SkfilmUnspecified
      -- ^ @skfilmUnspecified@
    | SkfilmG
      -- ^ @skfilmG@
      -- G
    | SKFILMP2
      -- ^ @skfilmP2@
      -- P2
    | SKFILMP5
      -- ^ @skfilmP5@
      -- P5
    | SKFILMP8
      -- ^ @skfilmP8@
      -- P8
    | SkfilmUnrated
      -- ^ @skfilmUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingSkfilmRating

instance FromHttpApiData ContentRatingSkfilmRating where
    parseQueryParam = \case
        "skfilmUnspecified" -> Right SkfilmUnspecified
        "skfilmG" -> Right SkfilmG
        "skfilmP2" -> Right SKFILMP2
        "skfilmP5" -> Right SKFILMP5
        "skfilmP8" -> Right SKFILMP8
        "skfilmUnrated" -> Right SkfilmUnrated
        x -> Left ("Unable to parse ContentRatingSkfilmRating from: " <> x)

instance ToHttpApiData ContentRatingSkfilmRating where
    toQueryParam = \case
        SkfilmUnspecified -> "skfilmUnspecified"
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
    = ChannelsectionTypeUndefined
      -- ^ @channelsectionTypeUndefined@
    | SinglePlayList
      -- ^ @singlePlaylist@
    | MultiplePlayLists
      -- ^ @multiplePlaylists@
    | PopularUploads
      -- ^ @popularUploads@
    | RecentUploads
      -- ^ @recentUploads@
    | Likes
      -- ^ @likes@
    | AllPlayLists
      -- ^ @allPlaylists@
    | LikedPlayLists
      -- ^ @likedPlaylists@
    | RecentPosts
      -- ^ @recentPosts@
    | RecentActivity
      -- ^ @recentActivity@
    | LiveEvents
      -- ^ @liveEvents@
    | UpcomingEvents
      -- ^ @upcomingEvents@
    | CompletedEvents
      -- ^ @completedEvents@
    | MultipleChannels
      -- ^ @multipleChannels@
    | PostedVideos
      -- ^ @postedVideos@
    | PostedPlayLists
      -- ^ @postedPlaylists@
    | Subscriptions
      -- ^ @subscriptions@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChannelSectionSnippetType

instance FromHttpApiData ChannelSectionSnippetType where
    parseQueryParam = \case
        "channelsectionTypeUndefined" -> Right ChannelsectionTypeUndefined
        "singlePlaylist" -> Right SinglePlayList
        "multiplePlaylists" -> Right MultiplePlayLists
        "popularUploads" -> Right PopularUploads
        "recentUploads" -> Right RecentUploads
        "likes" -> Right Likes
        "allPlaylists" -> Right AllPlayLists
        "likedPlaylists" -> Right LikedPlayLists
        "recentPosts" -> Right RecentPosts
        "recentActivity" -> Right RecentActivity
        "liveEvents" -> Right LiveEvents
        "upcomingEvents" -> Right UpcomingEvents
        "completedEvents" -> Right CompletedEvents
        "multipleChannels" -> Right MultipleChannels
        "postedVideos" -> Right PostedVideos
        "postedPlaylists" -> Right PostedPlayLists
        "subscriptions" -> Right Subscriptions
        x -> Left ("Unable to parse ChannelSectionSnippetType from: " <> x)

instance ToHttpApiData ChannelSectionSnippetType where
    toQueryParam = \case
        ChannelsectionTypeUndefined -> "channelsectionTypeUndefined"
        SinglePlayList -> "singlePlaylist"
        MultiplePlayLists -> "multiplePlaylists"
        PopularUploads -> "popularUploads"
        RecentUploads -> "recentUploads"
        Likes -> "likes"
        AllPlayLists -> "allPlaylists"
        LikedPlayLists -> "likedPlaylists"
        RecentPosts -> "recentPosts"
        RecentActivity -> "recentActivity"
        LiveEvents -> "liveEvents"
        UpcomingEvents -> "upcomingEvents"
        CompletedEvents -> "completedEvents"
        MultipleChannels -> "multipleChannels"
        PostedVideos -> "postedVideos"
        PostedPlayLists -> "postedPlaylists"
        Subscriptions -> "subscriptions"

instance FromJSON ChannelSectionSnippetType where
    parseJSON = parseJSONText "ChannelSectionSnippetType"

instance ToJSON ChannelSectionSnippetType where
    toJSON = toJSONText

-- | Return only broadcasts with the selected type.
data LiveBroadcastsListBroadcastType
    = BroadcastTypeFilterUnspecified
      -- ^ @broadcastTypeFilterUnspecified@
    | All
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
        "broadcastTypeFilterUnspecified" -> Right BroadcastTypeFilterUnspecified
        "all" -> Right All
        "event" -> Right Event
        "persistent" -> Right Persistent
        x -> Left ("Unable to parse LiveBroadcastsListBroadcastType from: " <> x)

instance ToHttpApiData LiveBroadcastsListBroadcastType where
    toQueryParam = \case
        BroadcastTypeFilterUnspecified -> "broadcastTypeFilterUnspecified"
        All -> "all"
        Event -> "event"
        Persistent -> "persistent"

instance FromJSON LiveBroadcastsListBroadcastType where
    parseJSON = parseJSONText "LiveBroadcastsListBroadcastType"

instance ToJSON LiveBroadcastsListBroadcastType where
    toJSON = toJSONText

data ContentRatingFpbRatingReasonsItem
    = FpbRatingReasonUnspecified
      -- ^ @fpbRatingReasonUnspecified@
    | FpbBlasphemy
      -- ^ @fpbBlasphemy@
      -- South Africa rating content descriptors.
    | FpbLanguage
      -- ^ @fpbLanguage@
    | FpbNudity
      -- ^ @fpbNudity@
    | FpbPrejudice
      -- ^ @fpbPrejudice@
    | FpbSex
      -- ^ @fpbSex@
    | FpbViolence
      -- ^ @fpbViolence@
    | FpbDrugs
      -- ^ @fpbDrugs@
    | FpbSexualViolence
      -- ^ @fpbSexualViolence@
    | FpbHorror
      -- ^ @fpbHorror@
    | FpbCriminalTechniques
      -- ^ @fpbCriminalTechniques@
    | FpbImitativeActsTechniques
      -- ^ @fpbImitativeActsTechniques@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingFpbRatingReasonsItem

instance FromHttpApiData ContentRatingFpbRatingReasonsItem where
    parseQueryParam = \case
        "fpbRatingReasonUnspecified" -> Right FpbRatingReasonUnspecified
        "fpbBlasphemy" -> Right FpbBlasphemy
        "fpbLanguage" -> Right FpbLanguage
        "fpbNudity" -> Right FpbNudity
        "fpbPrejudice" -> Right FpbPrejudice
        "fpbSex" -> Right FpbSex
        "fpbViolence" -> Right FpbViolence
        "fpbDrugs" -> Right FpbDrugs
        "fpbSexualViolence" -> Right FpbSexualViolence
        "fpbHorror" -> Right FpbHorror
        "fpbCriminalTechniques" -> Right FpbCriminalTechniques
        "fpbImitativeActsTechniques" -> Right FpbImitativeActsTechniques
        x -> Left ("Unable to parse ContentRatingFpbRatingReasonsItem from: " <> x)

instance ToHttpApiData ContentRatingFpbRatingReasonsItem where
    toQueryParam = \case
        FpbRatingReasonUnspecified -> "fpbRatingReasonUnspecified"
        FpbBlasphemy -> "fpbBlasphemy"
        FpbLanguage -> "fpbLanguage"
        FpbNudity -> "fpbNudity"
        FpbPrejudice -> "fpbPrejudice"
        FpbSex -> "fpbSex"
        FpbViolence -> "fpbViolence"
        FpbDrugs -> "fpbDrugs"
        FpbSexualViolence -> "fpbSexualViolence"
        FpbHorror -> "fpbHorror"
        FpbCriminalTechniques -> "fpbCriminalTechniques"
        FpbImitativeActsTechniques -> "fpbImitativeActsTechniques"

instance FromJSON ContentRatingFpbRatingReasonsItem where
    parseJSON = parseJSONText "ContentRatingFpbRatingReasonsItem"

instance ToJSON ContentRatingFpbRatingReasonsItem where
    toJSON = toJSONText

-- | The video\'s processing status. This value indicates whether YouTube was
-- able to process the video or if the video is still being processed.
data VideoProcessingDetailsProcessingStatus
    = VPDPSProcessing
      -- ^ @processing@
    | VPDPSSucceeded
      -- ^ @succeeded@
    | VPDPSFailed
      -- ^ @failed@
    | VPDPSTerminated
      -- ^ @terminated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoProcessingDetailsProcessingStatus

instance FromHttpApiData VideoProcessingDetailsProcessingStatus where
    parseQueryParam = \case
        "processing" -> Right VPDPSProcessing
        "succeeded" -> Right VPDPSSucceeded
        "failed" -> Right VPDPSFailed
        "terminated" -> Right VPDPSTerminated
        x -> Left ("Unable to parse VideoProcessingDetailsProcessingStatus from: " <> x)

instance ToHttpApiData VideoProcessingDetailsProcessingStatus where
    toQueryParam = \case
        VPDPSProcessing -> "processing"
        VPDPSSucceeded -> "succeeded"
        VPDPSFailed -> "failed"
        VPDPSTerminated -> "terminated"

instance FromJSON VideoProcessingDetailsProcessingStatus where
    parseJSON = parseJSONText "VideoProcessingDetailsProcessingStatus"

instance ToJSON VideoProcessingDetailsProcessingStatus where
    toJSON = toJSONText

-- | The type of call-to-action, a message to the user indicating action that
-- can be taken.
data ActivityContentDetailsPromotedItemCtaType
    = CtaTypeUnspecified
      -- ^ @ctaTypeUnspecified@
    | VisitAdvertiserSite
      -- ^ @visitAdvertiserSite@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActivityContentDetailsPromotedItemCtaType

instance FromHttpApiData ActivityContentDetailsPromotedItemCtaType where
    parseQueryParam = \case
        "ctaTypeUnspecified" -> Right CtaTypeUnspecified
        "visitAdvertiserSite" -> Right VisitAdvertiserSite
        x -> Left ("Unable to parse ActivityContentDetailsPromotedItemCtaType from: " <> x)

instance ToHttpApiData ActivityContentDetailsPromotedItemCtaType where
    toQueryParam = \case
        CtaTypeUnspecified -> "ctaTypeUnspecified"
        VisitAdvertiserSite -> "visitAdvertiserSite"

instance FromJSON ActivityContentDetailsPromotedItemCtaType where
    parseJSON = parseJSONText "ActivityContentDetailsPromotedItemCtaType"

instance ToJSON ActivityContentDetailsPromotedItemCtaType where
    toJSON = toJSONText

-- | Add a filter on the channel search.
data SearchListChannelType
    = SLCTChannelTypeUnspecified
      -- ^ @channelTypeUnspecified@
    | SLCTAny
      -- ^ @any@
      -- Return all channels.
    | SLCTShow
      -- ^ @show@
      -- Only retrieve shows.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListChannelType

instance FromHttpApiData SearchListChannelType where
    parseQueryParam = \case
        "channelTypeUnspecified" -> Right SLCTChannelTypeUnspecified
        "any" -> Right SLCTAny
        "show" -> Right SLCTShow
        x -> Left ("Unable to parse SearchListChannelType from: " <> x)

instance ToHttpApiData SearchListChannelType where
    toQueryParam = \case
        SLCTChannelTypeUnspecified -> "channelTypeUnspecified"
        SLCTAny -> "any"
        SLCTShow -> "show"

instance FromJSON SearchListChannelType where
    parseJSON = parseJSONText "SearchListChannelType"

instance ToJSON SearchListChannelType where
    toJSON = toJSONText

-- | The video\'s Korea Media Rating Board (영상물등급위원회) rating. The
-- KMRB rates videos in South Korea.
data ContentRatingKmrbRating
    = KmrbUnspecified
      -- ^ @kmrbUnspecified@
    | KmrbAll
      -- ^ @kmrbAll@
      -- 전체관람가
    | Kmrb12plus
      -- ^ @kmrb12plus@
      -- 12세 이상 관람가
    | Kmrb15plus
      -- ^ @kmrb15plus@
      -- 15세 이상 관람가
    | KmrbTeenr
      -- ^ @kmrbTeenr@
    | KmrbR
      -- ^ @kmrbR@
      -- 청소년 관람불가
    | KmrbUnrated
      -- ^ @kmrbUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingKmrbRating

instance FromHttpApiData ContentRatingKmrbRating where
    parseQueryParam = \case
        "kmrbUnspecified" -> Right KmrbUnspecified
        "kmrbAll" -> Right KmrbAll
        "kmrb12plus" -> Right Kmrb12plus
        "kmrb15plus" -> Right Kmrb15plus
        "kmrbTeenr" -> Right KmrbTeenr
        "kmrbR" -> Right KmrbR
        "kmrbUnrated" -> Right KmrbUnrated
        x -> Left ("Unable to parse ContentRatingKmrbRating from: " <> x)

instance ToHttpApiData ContentRatingKmrbRating where
    toQueryParam = \case
        KmrbUnspecified -> "kmrbUnspecified"
        KmrbAll -> "kmrbAll"
        Kmrb12plus -> "kmrb12plus"
        Kmrb15plus -> "kmrb15plus"
        KmrbTeenr -> "kmrbTeenr"
        KmrbR -> "kmrbR"
        KmrbUnrated -> "kmrbUnrated"

instance FromJSON ContentRatingKmrbRating where
    parseJSON = parseJSONText "ContentRatingKmrbRating"

instance ToJSON ContentRatingKmrbRating where
    toJSON = toJSONText

-- | The video\'s Office of Film and Literature Classification (OFLC - New
-- Zealand) rating.
data ContentRatingOflcRating
    = OflcUnspecified
      -- ^ @oflcUnspecified@
    | OflcG
      -- ^ @oflcG@
      -- G
    | OflcPg
      -- ^ @oflcPg@
      -- PG
    | OflcM
      -- ^ @oflcM@
      -- M
    | OFLCR13
      -- ^ @oflcR13@
      -- R13
    | OFLCR15
      -- ^ @oflcR15@
      -- R15
    | OFLCR16
      -- ^ @oflcR16@
      -- R16
    | OFLCR18
      -- ^ @oflcR18@
      -- R18
    | OflcUnrated
      -- ^ @oflcUnrated@
    | OFLCRP13
      -- ^ @oflcRp13@
      -- RP13
    | OFLCRP16
      -- ^ @oflcRp16@
      -- RP16
    | OFLCRP18
      -- ^ @oflcRp18@
      -- RP18
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingOflcRating

instance FromHttpApiData ContentRatingOflcRating where
    parseQueryParam = \case
        "oflcUnspecified" -> Right OflcUnspecified
        "oflcG" -> Right OflcG
        "oflcPg" -> Right OflcPg
        "oflcM" -> Right OflcM
        "oflcR13" -> Right OFLCR13
        "oflcR15" -> Right OFLCR15
        "oflcR16" -> Right OFLCR16
        "oflcR18" -> Right OFLCR18
        "oflcUnrated" -> Right OflcUnrated
        "oflcRp13" -> Right OFLCRP13
        "oflcRp16" -> Right OFLCRP16
        "oflcRp18" -> Right OFLCRP18
        x -> Left ("Unable to parse ContentRatingOflcRating from: " <> x)

instance ToHttpApiData ContentRatingOflcRating where
    toQueryParam = \case
        OflcUnspecified -> "oflcUnspecified"
        OflcG -> "oflcG"
        OflcPg -> "oflcPg"
        OflcM -> "oflcM"
        OFLCR13 -> "oflcR13"
        OFLCR15 -> "oflcR15"
        OFLCR16 -> "oflcR16"
        OFLCR18 -> "oflcR18"
        OflcUnrated -> "oflcUnrated"
        OFLCRP13 -> "oflcRp13"
        OFLCRP16 -> "oflcRp16"
        OFLCRP18 -> "oflcRp18"

instance FromJSON ContentRatingOflcRating where
    parseJSON = parseJSONText "ContentRatingOflcRating"

instance ToJSON ContentRatingOflcRating where
    toJSON = toJSONText

-- | Rating system in France - Commission de classification cinematographique
data ContentRatingCNCRating
    = CNCUnspecified
      -- ^ @cncUnspecified@
    | CNCT
      -- ^ @cncT@
      -- T
    | CNC10
      -- ^ @cnc10@
      -- 10
    | CNC12
      -- ^ @cnc12@
      -- 12
    | CNC16
      -- ^ @cnc16@
      -- 16
    | CNC18
      -- ^ @cnc18@
      -- 18
    | CNCE
      -- ^ @cncE@
      -- E
    | CNCInterdiction
      -- ^ @cncInterdiction@
      -- interdiction
    | CNCUnrated
      -- ^ @cncUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCNCRating

instance FromHttpApiData ContentRatingCNCRating where
    parseQueryParam = \case
        "cncUnspecified" -> Right CNCUnspecified
        "cncT" -> Right CNCT
        "cnc10" -> Right CNC10
        "cnc12" -> Right CNC12
        "cnc16" -> Right CNC16
        "cnc18" -> Right CNC18
        "cncE" -> Right CNCE
        "cncInterdiction" -> Right CNCInterdiction
        "cncUnrated" -> Right CNCUnrated
        x -> Left ("Unable to parse ContentRatingCNCRating from: " <> x)

instance ToHttpApiData ContentRatingCNCRating where
    toQueryParam = \case
        CNCUnspecified -> "cncUnspecified"
        CNCT -> "cncT"
        CNC10 -> "cnc10"
        CNC12 -> "cnc12"
        CNC16 -> "cnc16"
        CNC18 -> "cnc18"
        CNCE -> "cncE"
        CNCInterdiction -> "cncInterdiction"
        CNCUnrated -> "cncUnrated"

instance FromJSON ContentRatingCNCRating where
    parseJSON = parseJSONText "ContentRatingCNCRating"

instance ToJSON ContentRatingCNCRating where
    toJSON = toJSONText

-- | Rating system in Turkey - Evaluation and Classification Board of the
-- Ministry of Culture and Tourism
data ContentRatingEcbmctRating
    = EcbmctUnspecified
      -- ^ @ecbmctUnspecified@
    | EcbmctG
      -- ^ @ecbmctG@
      -- G
    | Ecbmct7a
      -- ^ @ecbmct7a@
      -- 7A
    | Ecbmct7plus
      -- ^ @ecbmct7plus@
      -- 7+
    | Ecbmct13a
      -- ^ @ecbmct13a@
      -- 13A
    | Ecbmct13plus
      -- ^ @ecbmct13plus@
      -- 13+
    | Ecbmct15a
      -- ^ @ecbmct15a@
      -- 15A
    | Ecbmct15plus
      -- ^ @ecbmct15plus@
      -- 15+
    | Ecbmct18plus
      -- ^ @ecbmct18plus@
      -- 18+
    | EcbmctUnrated
      -- ^ @ecbmctUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingEcbmctRating

instance FromHttpApiData ContentRatingEcbmctRating where
    parseQueryParam = \case
        "ecbmctUnspecified" -> Right EcbmctUnspecified
        "ecbmctG" -> Right EcbmctG
        "ecbmct7a" -> Right Ecbmct7a
        "ecbmct7plus" -> Right Ecbmct7plus
        "ecbmct13a" -> Right Ecbmct13a
        "ecbmct13plus" -> Right Ecbmct13plus
        "ecbmct15a" -> Right Ecbmct15a
        "ecbmct15plus" -> Right Ecbmct15plus
        "ecbmct18plus" -> Right Ecbmct18plus
        "ecbmctUnrated" -> Right EcbmctUnrated
        x -> Left ("Unable to parse ContentRatingEcbmctRating from: " <> x)

instance ToHttpApiData ContentRatingEcbmctRating where
    toQueryParam = \case
        EcbmctUnspecified -> "ecbmctUnspecified"
        EcbmctG -> "ecbmctG"
        Ecbmct7a -> "ecbmct7a"
        Ecbmct7plus -> "ecbmct7plus"
        Ecbmct13a -> "ecbmct13a"
        Ecbmct13plus -> "ecbmct13plus"
        Ecbmct15a -> "ecbmct15a"
        Ecbmct15plus -> "ecbmct15plus"
        Ecbmct18plus -> "ecbmct18plus"
        EcbmctUnrated -> "ecbmctUnrated"

instance FromJSON ContentRatingEcbmctRating where
    parseJSON = parseJSONText "ContentRatingEcbmctRating"

instance ToJSON ContentRatingEcbmctRating where
    toJSON = toJSONText

-- | Specifies the projection format of the video.
data VideoContentDetailsProjection
    = VCDPRectangular
      -- ^ @rectangular@
    | VCDP360
      -- ^ @360@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoContentDetailsProjection

instance FromHttpApiData VideoContentDetailsProjection where
    parseQueryParam = \case
        "rectangular" -> Right VCDPRectangular
        "360" -> Right VCDP360
        x -> Left ("Unable to parse VideoContentDetailsProjection from: " <> x)

instance ToHttpApiData VideoContentDetailsProjection where
    toQueryParam = \case
        VCDPRectangular -> "rectangular"
        VCDP360 -> "360"

instance FromJSON VideoContentDetailsProjection where
    parseJSON = parseJSONText "VideoContentDetailsProjection"

instance ToJSON VideoContentDetailsProjection where
    toJSON = toJSONText

-- | The video\'s rating in Greece.
data ContentRatingGrfilmRating
    = GrfilmUnspecified
      -- ^ @grfilmUnspecified@
    | GrfilmK
      -- ^ @grfilmK@
      -- K
    | GrfilmE
      -- ^ @grfilmE@
      -- E
    | GRFILMK12
      -- ^ @grfilmK12@
      -- K-12
    | GRFILMK13
      -- ^ @grfilmK13@
      -- K-13
    | GRFILMK15
      -- ^ @grfilmK15@
      -- K-15
    | GRFILMK17
      -- ^ @grfilmK17@
      -- K-17
    | GRFILMK18
      -- ^ @grfilmK18@
      -- K-18
    | GrfilmUnrated
      -- ^ @grfilmUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingGrfilmRating

instance FromHttpApiData ContentRatingGrfilmRating where
    parseQueryParam = \case
        "grfilmUnspecified" -> Right GrfilmUnspecified
        "grfilmK" -> Right GrfilmK
        "grfilmE" -> Right GrfilmE
        "grfilmK12" -> Right GRFILMK12
        "grfilmK13" -> Right GRFILMK13
        "grfilmK15" -> Right GRFILMK15
        "grfilmK17" -> Right GRFILMK17
        "grfilmK18" -> Right GRFILMK18
        "grfilmUnrated" -> Right GrfilmUnrated
        x -> Left ("Unable to parse ContentRatingGrfilmRating from: " <> x)

instance ToHttpApiData ContentRatingGrfilmRating where
    toQueryParam = \case
        GrfilmUnspecified -> "grfilmUnspecified"
        GrfilmK -> "grfilmK"
        GrfilmE -> "grfilmE"
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

-- | The 3D stereo layout of this broadcast. This defaults to mono.
data LiveBroadcastContentDetailsStereoLayout
    = StereoLayoutUnspecified
      -- ^ @stereoLayoutUnspecified@
    | Mono
      -- ^ @mono@
    | LeftRight
      -- ^ @leftRight@
    | TopBottom
      -- ^ @topBottom@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastContentDetailsStereoLayout

instance FromHttpApiData LiveBroadcastContentDetailsStereoLayout where
    parseQueryParam = \case
        "stereoLayoutUnspecified" -> Right StereoLayoutUnspecified
        "mono" -> Right Mono
        "leftRight" -> Right LeftRight
        "topBottom" -> Right TopBottom
        x -> Left ("Unable to parse LiveBroadcastContentDetailsStereoLayout from: " <> x)

instance ToHttpApiData LiveBroadcastContentDetailsStereoLayout where
    toQueryParam = \case
        StereoLayoutUnspecified -> "stereoLayoutUnspecified"
        Mono -> "mono"
        LeftRight -> "leftRight"
        TopBottom -> "topBottom"

instance FromJSON LiveBroadcastContentDetailsStereoLayout where
    parseJSON = parseJSONText "LiveBroadcastContentDetailsStereoLayout"

instance ToJSON LiveBroadcastContentDetailsStereoLayout where
    toJSON = toJSONText

data CommentThreadsListOrder
    = CTLOOrderUnspecified
      -- ^ @orderUnspecified@
    | CTLOTime
      -- ^ @time@
      -- Order by time.
    | CTLORelevance
      -- ^ @relevance@
      -- Order by relevance.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentThreadsListOrder

instance FromHttpApiData CommentThreadsListOrder where
    parseQueryParam = \case
        "orderUnspecified" -> Right CTLOOrderUnspecified
        "time" -> Right CTLOTime
        "relevance" -> Right CTLORelevance
        x -> Left ("Unable to parse CommentThreadsListOrder from: " <> x)

instance ToHttpApiData CommentThreadsListOrder where
    toQueryParam = \case
        CTLOOrderUnspecified -> "orderUnspecified"
        CTLOTime -> "time"
        CTLORelevance -> "relevance"

instance FromJSON CommentThreadsListOrder where
    parseJSON = parseJSONText "CommentThreadsListOrder"

instance ToJSON CommentThreadsListOrder where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The video\'s rating in Israel.
data ContentRatingIlfilmRating
    = IlfilmUnspecified
      -- ^ @ilfilmUnspecified@
    | IlfilmAa
      -- ^ @ilfilmAa@
      -- AA
    | ILFILM12
      -- ^ @ilfilm12@
      -- 12
    | ILFILM14
      -- ^ @ilfilm14@
      -- 14
    | ILFILM16
      -- ^ @ilfilm16@
      -- 16
    | ILFILM18
      -- ^ @ilfilm18@
      -- 18
    | IlfilmUnrated
      -- ^ @ilfilmUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingIlfilmRating

instance FromHttpApiData ContentRatingIlfilmRating where
    parseQueryParam = \case
        "ilfilmUnspecified" -> Right IlfilmUnspecified
        "ilfilmAa" -> Right IlfilmAa
        "ilfilm12" -> Right ILFILM12
        "ilfilm14" -> Right ILFILM14
        "ilfilm16" -> Right ILFILM16
        "ilfilm18" -> Right ILFILM18
        "ilfilmUnrated" -> Right IlfilmUnrated
        x -> Left ("Unable to parse ContentRatingIlfilmRating from: " <> x)

instance ToHttpApiData ContentRatingIlfilmRating where
    toQueryParam = \case
        IlfilmUnspecified -> "ilfilmUnspecified"
        IlfilmAa -> "ilfilmAa"
        ILFILM12 -> "ilfilm12"
        ILFILM14 -> "ilfilm14"
        ILFILM16 -> "ilfilm16"
        ILFILM18 -> "ilfilm18"
        IlfilmUnrated -> "ilfilmUnrated"

instance FromJSON ContentRatingIlfilmRating where
    parseJSON = parseJSONText "ContentRatingIlfilmRating"

instance ToJSON ContentRatingIlfilmRating where
    toJSON = toJSONText

-- | The video\'s rating in Poland.
data ContentRatingNbcplRating
    = NbcplUnspecified
      -- ^ @nbcplUnspecified@
    | NbcplI
      -- ^ @nbcplI@
    | NbcplIi
      -- ^ @nbcplIi@
    | NbcplIii
      -- ^ @nbcplIii@
    | NbcplIv
      -- ^ @nbcplIv@
    | Nbcpl18plus
      -- ^ @nbcpl18plus@
    | NbcplUnrated
      -- ^ @nbcplUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingNbcplRating

instance FromHttpApiData ContentRatingNbcplRating where
    parseQueryParam = \case
        "nbcplUnspecified" -> Right NbcplUnspecified
        "nbcplI" -> Right NbcplI
        "nbcplIi" -> Right NbcplIi
        "nbcplIii" -> Right NbcplIii
        "nbcplIv" -> Right NbcplIv
        "nbcpl18plus" -> Right Nbcpl18plus
        "nbcplUnrated" -> Right NbcplUnrated
        x -> Left ("Unable to parse ContentRatingNbcplRating from: " <> x)

instance ToHttpApiData ContentRatingNbcplRating where
    toQueryParam = \case
        NbcplUnspecified -> "nbcplUnspecified"
        NbcplI -> "nbcplI"
        NbcplIi -> "nbcplIi"
        NbcplIii -> "nbcplIii"
        NbcplIv -> "nbcplIv"
        Nbcpl18plus -> "nbcpl18plus"
        NbcplUnrated -> "nbcplUnrated"

instance FromJSON ContentRatingNbcplRating where
    parseJSON = parseJSONText "ContentRatingNbcplRating"

instance ToJSON ContentRatingNbcplRating where
    toJSON = toJSONText

-- | The status of the uploaded video.
data VideoStatusUploadStatus
    = VSUSUploaded
      -- ^ @uploaded@
      -- Video has been uploaded but not processed yet.
    | VSUSProcessed
      -- ^ @processed@
      -- Video has been successfully processed.
    | VSUSFailed
      -- ^ @failed@
      -- Processing has failed. See FailureReason.
    | VSUSRejected
      -- ^ @rejected@
      -- Video has been rejected. See RejectionReason.
    | VSUSDeleted
      -- ^ @deleted@
      -- Video has been deleted.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoStatusUploadStatus

instance FromHttpApiData VideoStatusUploadStatus where
    parseQueryParam = \case
        "uploaded" -> Right VSUSUploaded
        "processed" -> Right VSUSProcessed
        "failed" -> Right VSUSFailed
        "rejected" -> Right VSUSRejected
        "deleted" -> Right VSUSDeleted
        x -> Left ("Unable to parse VideoStatusUploadStatus from: " <> x)

instance ToHttpApiData VideoStatusUploadStatus where
    toQueryParam = \case
        VSUSUploaded -> "uploaded"
        VSUSProcessed -> "processed"
        VSUSFailed -> "failed"
        VSUSRejected -> "rejected"
        VSUSDeleted -> "deleted"

instance FromJSON VideoStatusUploadStatus where
    parseJSON = parseJSONText "VideoStatusUploadStatus"

instance ToJSON VideoStatusUploadStatus where
    toJSON = toJSONText

-- | The video\'s rating from Ireland\'s Raidió Teilifís Éireann.
data ContentRatingRteRating
    = RteUnspecified
      -- ^ @rteUnspecified@
    | RteGa
      -- ^ @rteGa@
      -- GA
    | RteCh
      -- ^ @rteCh@
      -- CH
    | RtePs
      -- ^ @rtePs@
      -- PS
    | RteMa
      -- ^ @rteMa@
      -- MA
    | RteUnrated
      -- ^ @rteUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingRteRating

instance FromHttpApiData ContentRatingRteRating where
    parseQueryParam = \case
        "rteUnspecified" -> Right RteUnspecified
        "rteGa" -> Right RteGa
        "rteCh" -> Right RteCh
        "rtePs" -> Right RtePs
        "rteMa" -> Right RteMa
        "rteUnrated" -> Right RteUnrated
        x -> Left ("Unable to parse ContentRatingRteRating from: " <> x)

instance ToHttpApiData ContentRatingRteRating where
    toQueryParam = \case
        RteUnspecified -> "rteUnspecified"
        RteGa -> "rteGa"
        RteCh -> "rteCh"
        RtePs -> "rtePs"
        RteMa -> "rteMa"
        RteUnrated -> "rteUnrated"

instance FromJSON ContentRatingRteRating where
    parseJSON = parseJSONText "ContentRatingRteRating"

instance ToJSON ContentRatingRteRating where
    toJSON = toJSONText

-- | The requested text format for the returned comments.
data CommentThreadsListTextFormat
    = CTLTFTextFormatUnspecified
      -- ^ @textFormatUnspecified@
    | CTLTFHTML
      -- ^ @html@
      -- Returns the comments in HTML format. This is the default value.
    | CTLTFPlainText
      -- ^ @plainText@
      -- Returns the comments in plain text format.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentThreadsListTextFormat

instance FromHttpApiData CommentThreadsListTextFormat where
    parseQueryParam = \case
        "textFormatUnspecified" -> Right CTLTFTextFormatUnspecified
        "html" -> Right CTLTFHTML
        "plainText" -> Right CTLTFPlainText
        x -> Left ("Unable to parse CommentThreadsListTextFormat from: " <> x)

instance ToHttpApiData CommentThreadsListTextFormat where
    toQueryParam = \case
        CTLTFTextFormatUnspecified -> "textFormatUnspecified"
        CTLTFHTML -> "html"
        CTLTFPlainText -> "plainText"

instance FromJSON CommentThreadsListTextFormat where
    parseJSON = parseJSONText "CommentThreadsListTextFormat"

instance ToJSON CommentThreadsListTextFormat where
    toJSON = toJSONText

-- | The video\'s Irish Film Classification Office (IFCO - Ireland) rating.
-- See the IFCO website for more information.
data ContentRatingIfcoRating
    = IfcoUnspecified
      -- ^ @ifcoUnspecified@
    | IfcoG
      -- ^ @ifcoG@
      -- G
    | IfcoPg
      -- ^ @ifcoPg@
      -- PG
    | IFCO12
      -- ^ @ifco12@
      -- 12
    | Ifco12a
      -- ^ @ifco12a@
      -- 12A
    | IFCO15
      -- ^ @ifco15@
      -- 15
    | Ifco15a
      -- ^ @ifco15a@
      -- 15A
    | IFCO16
      -- ^ @ifco16@
      -- 16
    | IFCO18
      -- ^ @ifco18@
      -- 18
    | IfcoUnrated
      -- ^ @ifcoUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingIfcoRating

instance FromHttpApiData ContentRatingIfcoRating where
    parseQueryParam = \case
        "ifcoUnspecified" -> Right IfcoUnspecified
        "ifcoG" -> Right IfcoG
        "ifcoPg" -> Right IfcoPg
        "ifco12" -> Right IFCO12
        "ifco12a" -> Right Ifco12a
        "ifco15" -> Right IFCO15
        "ifco15a" -> Right Ifco15a
        "ifco16" -> Right IFCO16
        "ifco18" -> Right IFCO18
        "ifcoUnrated" -> Right IfcoUnrated
        x -> Left ("Unable to parse ContentRatingIfcoRating from: " <> x)

instance ToHttpApiData ContentRatingIfcoRating where
    toQueryParam = \case
        IfcoUnspecified -> "ifcoUnspecified"
        IfcoG -> "ifcoG"
        IfcoPg -> "ifcoPg"
        IFCO12 -> "ifco12"
        Ifco12a -> "ifco12a"
        IFCO15 -> "ifco15"
        Ifco15a -> "ifco15a"
        IFCO16 -> "ifco16"
        IFCO18 -> "ifco18"
        IfcoUnrated -> "ifcoUnrated"

instance FromJSON ContentRatingIfcoRating where
    parseJSON = parseJSONText "ContentRatingIfcoRating"

instance ToJSON ContentRatingIfcoRating where
    toJSON = toJSONText

-- | Specifies the requested moderation status. Note, comments can be in
-- statuses, which are not available through this call. For example, this
-- call does not allow to mark a comment as \'likely spam\'. Valid values:
-- MODERATION_STATUS_PUBLISHED, MODERATION_STATUS_HELD_FOR_REVIEW,
-- MODERATION_STATUS_REJECTED.
data CommentsSetModerationStatusModerationStatus
    = CSMSMSPublished
      -- ^ @published@
      -- The comment is available for public display.
    | CSMSMSHeldForReview
      -- ^ @heldForReview@
      -- The comment is awaiting review by a moderator.
    | CSMSMSLikelySpam
      -- ^ @likelySpam@
    | CSMSMSRejected
      -- ^ @rejected@
      -- The comment is unfit for display.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentsSetModerationStatusModerationStatus

instance FromHttpApiData CommentsSetModerationStatusModerationStatus where
    parseQueryParam = \case
        "published" -> Right CSMSMSPublished
        "heldForReview" -> Right CSMSMSHeldForReview
        "likelySpam" -> Right CSMSMSLikelySpam
        "rejected" -> Right CSMSMSRejected
        x -> Left ("Unable to parse CommentsSetModerationStatusModerationStatus from: " <> x)

instance ToHttpApiData CommentsSetModerationStatusModerationStatus where
    toQueryParam = \case
        CSMSMSPublished -> "published"
        CSMSMSHeldForReview -> "heldForReview"
        CSMSMSLikelySpam -> "likelySpam"
        CSMSMSRejected -> "rejected"

instance FromJSON CommentsSetModerationStatusModerationStatus where
    parseJSON = parseJSONText "CommentsSetModerationStatusModerationStatus"

instance ToJSON CommentsSetModerationStatusModerationStatus where
    toJSON = toJSONText

-- | The name of the social network.
data ActivityContentDetailsSocialType
    = Unspecified
      -- ^ @unspecified@
    | GooglePlus
      -- ^ @googlePlus@
    | Facebook
      -- ^ @facebook@
    | Twitter
      -- ^ @twitter@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActivityContentDetailsSocialType

instance FromHttpApiData ActivityContentDetailsSocialType where
    parseQueryParam = \case
        "unspecified" -> Right Unspecified
        "googlePlus" -> Right GooglePlus
        "facebook" -> Right Facebook
        "twitter" -> Right Twitter
        x -> Left ("Unable to parse ActivityContentDetailsSocialType from: " <> x)

instance ToHttpApiData ActivityContentDetailsSocialType where
    toQueryParam = \case
        Unspecified -> "unspecified"
        GooglePlus -> "googlePlus"
        Facebook -> "facebook"
        Twitter -> "twitter"

instance FromJSON ActivityContentDetailsSocialType where
    parseJSON = parseJSONText "ActivityContentDetailsSocialType"

instance ToJSON ActivityContentDetailsSocialType where
    toJSON = toJSONText

-- | The video\'s rating from Medietilsynet, the Norwegian Media Authority.
data ContentRatingMedietilsynetRating
    = MedietilsynetUnspecified
      -- ^ @medietilsynetUnspecified@
    | MedietilsynetA
      -- ^ @medietilsynetA@
      -- A
    | MEDIETILSYNET6
      -- ^ @medietilsynet6@
      -- 6
    | MEDIETILSYNET7
      -- ^ @medietilsynet7@
      -- 7
    | MEDIETILSYNET9
      -- ^ @medietilsynet9@
      -- 9
    | MEDIETILSYNET11
      -- ^ @medietilsynet11@
      -- 11
    | MEDIETILSYNET12
      -- ^ @medietilsynet12@
      -- 12
    | MEDIETILSYNET15
      -- ^ @medietilsynet15@
      -- 15
    | MEDIETILSYNET18
      -- ^ @medietilsynet18@
      -- 18
    | MedietilsynetUnrated
      -- ^ @medietilsynetUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMedietilsynetRating

instance FromHttpApiData ContentRatingMedietilsynetRating where
    parseQueryParam = \case
        "medietilsynetUnspecified" -> Right MedietilsynetUnspecified
        "medietilsynetA" -> Right MedietilsynetA
        "medietilsynet6" -> Right MEDIETILSYNET6
        "medietilsynet7" -> Right MEDIETILSYNET7
        "medietilsynet9" -> Right MEDIETILSYNET9
        "medietilsynet11" -> Right MEDIETILSYNET11
        "medietilsynet12" -> Right MEDIETILSYNET12
        "medietilsynet15" -> Right MEDIETILSYNET15
        "medietilsynet18" -> Right MEDIETILSYNET18
        "medietilsynetUnrated" -> Right MedietilsynetUnrated
        x -> Left ("Unable to parse ContentRatingMedietilsynetRating from: " <> x)

instance ToHttpApiData ContentRatingMedietilsynetRating where
    toQueryParam = \case
        MedietilsynetUnspecified -> "medietilsynetUnspecified"
        MedietilsynetA -> "medietilsynetA"
        MEDIETILSYNET6 -> "medietilsynet6"
        MEDIETILSYNET7 -> "medietilsynet7"
        MEDIETILSYNET9 -> "medietilsynet9"
        MEDIETILSYNET11 -> "medietilsynet11"
        MEDIETILSYNET12 -> "medietilsynet12"
        MEDIETILSYNET15 -> "medietilsynet15"
        MEDIETILSYNET18 -> "medietilsynet18"
        MedietilsynetUnrated -> "medietilsynetUnrated"

instance FromJSON ContentRatingMedietilsynetRating where
    parseJSON = parseJSONText "ContentRatingMedietilsynetRating"

instance ToJSON ContentRatingMedietilsynetRating where
    toJSON = toJSONText

-- | This resource\'s privacy status.
data PlayListItemStatusPrivacyStatus
    = PLISPSPublic
      -- ^ @public@
    | PLISPSUnListed
      -- ^ @unlisted@
    | PLISPSPrivate
      -- ^ @private@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlayListItemStatusPrivacyStatus

instance FromHttpApiData PlayListItemStatusPrivacyStatus where
    parseQueryParam = \case
        "public" -> Right PLISPSPublic
        "unlisted" -> Right PLISPSUnListed
        "private" -> Right PLISPSPrivate
        x -> Left ("Unable to parse PlayListItemStatusPrivacyStatus from: " <> x)

instance ToHttpApiData PlayListItemStatusPrivacyStatus where
    toQueryParam = \case
        PLISPSPublic -> "public"
        PLISPSUnListed -> "unlisted"
        PLISPSPrivate -> "private"

instance FromJSON PlayListItemStatusPrivacyStatus where
    parseJSON = parseJSONText "PlayListItemStatusPrivacyStatus"

instance ToJSON PlayListItemStatusPrivacyStatus where
    toJSON = toJSONText

-- | The type of activity this subscription is for (only uploads,
-- everything).
data SubscriptionContentDetailsActivityType
    = SCDATSubscriptionActivityTypeUnspecified
      -- ^ @subscriptionActivityTypeUnspecified@
    | SCDATAll
      -- ^ @all@
    | SCDATUploads
      -- ^ @uploads@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SubscriptionContentDetailsActivityType

instance FromHttpApiData SubscriptionContentDetailsActivityType where
    parseQueryParam = \case
        "subscriptionActivityTypeUnspecified" -> Right SCDATSubscriptionActivityTypeUnspecified
        "all" -> Right SCDATAll
        "uploads" -> Right SCDATUploads
        x -> Left ("Unable to parse SubscriptionContentDetailsActivityType from: " <> x)

instance ToHttpApiData SubscriptionContentDetailsActivityType where
    toQueryParam = \case
        SCDATSubscriptionActivityTypeUnspecified -> "subscriptionActivityTypeUnspecified"
        SCDATAll -> "all"
        SCDATUploads -> "uploads"

instance FromJSON SubscriptionContentDetailsActivityType where
    parseJSON = parseJSONText "SubscriptionContentDetailsActivityType"

instance ToJSON SubscriptionContentDetailsActivityType where
    toJSON = toJSONText

-- | The video\'s rating from South Africa\'s Film and Publication Board.
data ContentRatingFpbRating
    = FpbUnspecified
      -- ^ @fpbUnspecified@
    | FpbA
      -- ^ @fpbA@
      -- A
    | FpbPg
      -- ^ @fpbPg@
      -- PG
    | Fpb79Pg
      -- ^ @fpb79Pg@
      -- 7-9PG
    | Fpb1012Pg
      -- ^ @fpb1012Pg@
      -- 10-12PG
    | FPB13
      -- ^ @fpb13@
      -- 13
    | FPB16
      -- ^ @fpb16@
      -- 16
    | FPB18
      -- ^ @fpb18@
      -- 18
    | FPBX18
      -- ^ @fpbX18@
      -- X18
    | FpbXx
      -- ^ @fpbXx@
      -- XX
    | FpbUnrated
      -- ^ @fpbUnrated@
    | FPB10
      -- ^ @fpb10@
      -- 10
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingFpbRating

instance FromHttpApiData ContentRatingFpbRating where
    parseQueryParam = \case
        "fpbUnspecified" -> Right FpbUnspecified
        "fpbA" -> Right FpbA
        "fpbPg" -> Right FpbPg
        "fpb79Pg" -> Right Fpb79Pg
        "fpb1012Pg" -> Right Fpb1012Pg
        "fpb13" -> Right FPB13
        "fpb16" -> Right FPB16
        "fpb18" -> Right FPB18
        "fpbX18" -> Right FPBX18
        "fpbXx" -> Right FpbXx
        "fpbUnrated" -> Right FpbUnrated
        "fpb10" -> Right FPB10
        x -> Left ("Unable to parse ContentRatingFpbRating from: " <> x)

instance ToHttpApiData ContentRatingFpbRating where
    toQueryParam = \case
        FpbUnspecified -> "fpbUnspecified"
        FpbA -> "fpbA"
        FpbPg -> "fpbPg"
        Fpb79Pg -> "fpb79Pg"
        Fpb1012Pg -> "fpb1012Pg"
        FPB13 -> "fpb13"
        FPB16 -> "fpb16"
        FPB18 -> "fpb18"
        FPBX18 -> "fpbX18"
        FpbXx -> "fpbXx"
        FpbUnrated -> "fpbUnrated"
        FPB10 -> "fpb10"

instance FromJSON ContentRatingFpbRating where
    parseJSON = parseJSONText "ContentRatingFpbRating"

instance ToJSON ContentRatingFpbRating where
    toJSON = toJSONText

data LiveBroadcastContentDetailsClosedCaptionsType
    = ClosedCaptionsTypeUnspecified
      -- ^ @closedCaptionsTypeUnspecified@
    | ClosedCaptionsDisabled
      -- ^ @closedCaptionsDisabled@
    | ClosedCaptionsHTTPPost
      -- ^ @closedCaptionsHttpPost@
    | ClosedCaptionsEmbedded
      -- ^ @closedCaptionsEmbedded@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveBroadcastContentDetailsClosedCaptionsType

instance FromHttpApiData LiveBroadcastContentDetailsClosedCaptionsType where
    parseQueryParam = \case
        "closedCaptionsTypeUnspecified" -> Right ClosedCaptionsTypeUnspecified
        "closedCaptionsDisabled" -> Right ClosedCaptionsDisabled
        "closedCaptionsHttpPost" -> Right ClosedCaptionsHTTPPost
        "closedCaptionsEmbedded" -> Right ClosedCaptionsEmbedded
        x -> Left ("Unable to parse LiveBroadcastContentDetailsClosedCaptionsType from: " <> x)

instance ToHttpApiData LiveBroadcastContentDetailsClosedCaptionsType where
    toQueryParam = \case
        ClosedCaptionsTypeUnspecified -> "closedCaptionsTypeUnspecified"
        ClosedCaptionsDisabled -> "closedCaptionsDisabled"
        ClosedCaptionsHTTPPost -> "closedCaptionsHttpPost"
        ClosedCaptionsEmbedded -> "closedCaptionsEmbedded"

instance FromJSON LiveBroadcastContentDetailsClosedCaptionsType where
    parseJSON = parseJSONText "LiveBroadcastContentDetailsClosedCaptionsType"

instance ToJSON LiveBroadcastContentDetailsClosedCaptionsType where
    toJSON = toJSONText

-- | Filter on 3d videos.
data SearchListVideoDimension
    = SAny
      -- ^ @any@
      -- Include both 3D and non-3D videos in returned results. This is the
      -- default value.
    | S2D
      -- ^ @2d@
      -- Restrict search results to exclude 3D videos.
    | S3D
      -- ^ @3d@
      -- Restrict search results to only include 3D videos.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListVideoDimension

instance FromHttpApiData SearchListVideoDimension where
    parseQueryParam = \case
        "any" -> Right SAny
        "2d" -> Right S2D
        "3d" -> Right S3D
        x -> Left ("Unable to parse SearchListVideoDimension from: " <> x)

instance ToHttpApiData SearchListVideoDimension where
    toQueryParam = \case
        SAny -> "any"
        S2D -> "2d"
        S3D -> "3d"

instance FromJSON SearchListVideoDimension where
    parseJSON = parseJSONText "SearchListVideoDimension"

instance ToJSON SearchListVideoDimension where
    toJSON = toJSONText

-- | The video\'s rating from the Nacionãlais Kino centrs (National Film
-- Centre of Latvia).
data ContentRatingNkclvRating
    = NkclvUnspecified
      -- ^ @nkclvUnspecified@
    | NkclvU
      -- ^ @nkclvU@
      -- U
    | Nkclv7plus
      -- ^ @nkclv7plus@
      -- 7+
    | Nkclv12plus
      -- ^ @nkclv12plus@
      -- 12+
    | Nkclv16plus
      -- ^ @nkclv16plus@
      -- ! 16+
    | Nkclv18plus
      -- ^ @nkclv18plus@
      -- 18+
    | NkclvUnrated
      -- ^ @nkclvUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingNkclvRating

instance FromHttpApiData ContentRatingNkclvRating where
    parseQueryParam = \case
        "nkclvUnspecified" -> Right NkclvUnspecified
        "nkclvU" -> Right NkclvU
        "nkclv7plus" -> Right Nkclv7plus
        "nkclv12plus" -> Right Nkclv12plus
        "nkclv16plus" -> Right Nkclv16plus
        "nkclv18plus" -> Right Nkclv18plus
        "nkclvUnrated" -> Right NkclvUnrated
        x -> Left ("Unable to parse ContentRatingNkclvRating from: " <> x)

instance ToHttpApiData ContentRatingNkclvRating where
    toQueryParam = \case
        NkclvUnspecified -> "nkclvUnspecified"
        NkclvU -> "nkclvU"
        Nkclv7plus -> "nkclv7plus"
        Nkclv12plus -> "nkclv12plus"
        Nkclv16plus -> "nkclv16plus"
        Nkclv18plus -> "nkclv18plus"
        NkclvUnrated -> "nkclvUnrated"

instance FromJSON ContentRatingNkclvRating where
    parseJSON = parseJSONText "ContentRatingNkclvRating"

instance ToJSON ContentRatingNkclvRating where
    toJSON = toJSONText

-- | Filter on videos of a specific type.
data SearchListVideoType
    = SLVTVideoTypeUnspecified
      -- ^ @videoTypeUnspecified@
    | SLVTAny
      -- ^ @any@
      -- Return all videos.
    | SLVTMovie
      -- ^ @movie@
      -- Only retrieve movies.
    | SLVTEpisode
      -- ^ @episode@
      -- Only retrieve episodes of shows.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListVideoType

instance FromHttpApiData SearchListVideoType where
    parseQueryParam = \case
        "videoTypeUnspecified" -> Right SLVTVideoTypeUnspecified
        "any" -> Right SLVTAny
        "movie" -> Right SLVTMovie
        "episode" -> Right SLVTEpisode
        x -> Left ("Unable to parse SearchListVideoType from: " <> x)

instance ToHttpApiData SearchListVideoType where
    toQueryParam = \case
        SLVTVideoTypeUnspecified -> "videoTypeUnspecified"
        SLVTAny -> "any"
        SLVTMovie -> "movie"
        SLVTEpisode -> "episode"

instance FromJSON SearchListVideoType where
    parseJSON = parseJSONText "SearchListVideoType"

instance ToJSON SearchListVideoType where
    toJSON = toJSONText

-- | The video\'s rating from the Ministero dei Beni e delle Attività
-- Culturali e del Turismo (Italy).
data ContentRatingMibacRating
    = MibacUnspecified
      -- ^ @mibacUnspecified@
    | MibacT
      -- ^ @mibacT@
    | MibacVap
      -- ^ @mibacVap@
    | MIBACVM12
      -- ^ @mibacVm12@
    | MIBACVM14
      -- ^ @mibacVm14@
    | MIBACVM18
      -- ^ @mibacVm18@
    | MibacUnrated
      -- ^ @mibacUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMibacRating

instance FromHttpApiData ContentRatingMibacRating where
    parseQueryParam = \case
        "mibacUnspecified" -> Right MibacUnspecified
        "mibacT" -> Right MibacT
        "mibacVap" -> Right MibacVap
        "mibacVm12" -> Right MIBACVM12
        "mibacVm14" -> Right MIBACVM14
        "mibacVm18" -> Right MIBACVM18
        "mibacUnrated" -> Right MibacUnrated
        x -> Left ("Unable to parse ContentRatingMibacRating from: " <> x)

instance ToHttpApiData ContentRatingMibacRating where
    toQueryParam = \case
        MibacUnspecified -> "mibacUnspecified"
        MibacT -> "mibacT"
        MibacVap -> "mibacVap"
        MIBACVM12 -> "mibacVm12"
        MIBACVM14 -> "mibacVm14"
        MIBACVM18 -> "mibacVm18"
        MibacUnrated -> "mibacUnrated"

instance FromJSON ContentRatingMibacRating where
    parseJSON = parseJSONText "ContentRatingMibacRating"

instance ToJSON ContentRatingMibacRating where
    toJSON = toJSONText

-- | The video\'s rating in Venezuela.
data ContentRatingResorteviolenciaRating
    = ResorteviolenciaUnspecified
      -- ^ @resorteviolenciaUnspecified@
    | ResorteviolenciaA
      -- ^ @resorteviolenciaA@
      -- A
    | ResorteviolenciaB
      -- ^ @resorteviolenciaB@
      -- B
    | ResorteviolenciaC
      -- ^ @resorteviolenciaC@
      -- C
    | ResorteviolenciaD
      -- ^ @resorteviolenciaD@
      -- D
    | ResorteviolenciaE
      -- ^ @resorteviolenciaE@
      -- E
    | ResorteviolenciaUnrated
      -- ^ @resorteviolenciaUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingResorteviolenciaRating

instance FromHttpApiData ContentRatingResorteviolenciaRating where
    parseQueryParam = \case
        "resorteviolenciaUnspecified" -> Right ResorteviolenciaUnspecified
        "resorteviolenciaA" -> Right ResorteviolenciaA
        "resorteviolenciaB" -> Right ResorteviolenciaB
        "resorteviolenciaC" -> Right ResorteviolenciaC
        "resorteviolenciaD" -> Right ResorteviolenciaD
        "resorteviolenciaE" -> Right ResorteviolenciaE
        "resorteviolenciaUnrated" -> Right ResorteviolenciaUnrated
        x -> Left ("Unable to parse ContentRatingResorteviolenciaRating from: " <> x)

instance ToHttpApiData ContentRatingResorteviolenciaRating where
    toQueryParam = \case
        ResorteviolenciaUnspecified -> "resorteviolenciaUnspecified"
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
    = EgfilmUnspecified
      -- ^ @egfilmUnspecified@
    | EgfilmGn
      -- ^ @egfilmGn@
      -- GN
    | EGFILM18
      -- ^ @egfilm18@
      -- 18
    | EgfilmBn
      -- ^ @egfilmBn@
      -- BN
    | EgfilmUnrated
      -- ^ @egfilmUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingEgfilmRating

instance FromHttpApiData ContentRatingEgfilmRating where
    parseQueryParam = \case
        "egfilmUnspecified" -> Right EgfilmUnspecified
        "egfilmGn" -> Right EgfilmGn
        "egfilm18" -> Right EGFILM18
        "egfilmBn" -> Right EgfilmBn
        "egfilmUnrated" -> Right EgfilmUnrated
        x -> Left ("Unable to parse ContentRatingEgfilmRating from: " <> x)

instance ToHttpApiData ContentRatingEgfilmRating where
    toQueryParam = \case
        EgfilmUnspecified -> "egfilmUnspecified"
        EgfilmGn -> "egfilmGn"
        EGFILM18 -> "egfilm18"
        EgfilmBn -> "egfilmBn"
        EgfilmUnrated -> "egfilmUnrated"

instance FromJSON ContentRatingEgfilmRating where
    parseJSON = parseJSONText "ContentRatingEgfilmRating"

instance ToJSON ContentRatingEgfilmRating where
    toJSON = toJSONText

-- | The video\'s rating from the Danish Film Institute\'s (Det Danske
-- Filminstitut) Media Council for Children and Young People.
data ContentRatingMccypRating
    = MccypUnspecified
      -- ^ @mccypUnspecified@
    | MccypA
      -- ^ @mccypA@
      -- A
    | MCCYP7
      -- ^ @mccyp7@
      -- 7
    | MCCYP11
      -- ^ @mccyp11@
      -- 11
    | MCCYP15
      -- ^ @mccyp15@
      -- 15
    | MccypUnrated
      -- ^ @mccypUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMccypRating

instance FromHttpApiData ContentRatingMccypRating where
    parseQueryParam = \case
        "mccypUnspecified" -> Right MccypUnspecified
        "mccypA" -> Right MccypA
        "mccyp7" -> Right MCCYP7
        "mccyp11" -> Right MCCYP11
        "mccyp15" -> Right MCCYP15
        "mccypUnrated" -> Right MccypUnrated
        x -> Left ("Unable to parse ContentRatingMccypRating from: " <> x)

instance ToHttpApiData ContentRatingMccypRating where
    toQueryParam = \case
        MccypUnspecified -> "mccypUnspecified"
        MccypA -> "mccypA"
        MCCYP7 -> "mccyp7"
        MCCYP11 -> "mccyp11"
        MCCYP15 -> "mccyp15"
        MccypUnrated -> "mccypUnrated"

instance FromJSON ContentRatingMccypRating where
    parseJSON = parseJSONText "ContentRatingMccypRating"

instance ToJSON ContentRatingMccypRating where
    toJSON = toJSONText

-- | The playlist\'s privacy status.
data PlayListStatusPrivacyStatus
    = PLSPSPublic
      -- ^ @public@
    | PLSPSUnListed
      -- ^ @unlisted@
    | PLSPSPrivate
      -- ^ @private@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlayListStatusPrivacyStatus

instance FromHttpApiData PlayListStatusPrivacyStatus where
    parseQueryParam = \case
        "public" -> Right PLSPSPublic
        "unlisted" -> Right PLSPSUnListed
        "private" -> Right PLSPSPrivate
        x -> Left ("Unable to parse PlayListStatusPrivacyStatus from: " <> x)

instance ToHttpApiData PlayListStatusPrivacyStatus where
    toQueryParam = \case
        PLSPSPublic -> "public"
        PLSPSUnListed -> "unlisted"
        PLSPSPrivate -> "private"

instance FromJSON PlayListStatusPrivacyStatus where
    parseJSON = parseJSONText "PlayListStatusPrivacyStatus"

instance ToJSON PlayListStatusPrivacyStatus where
    toJSON = toJSONText

-- | The video\'s rating from France\'s Conseil supérieur de l’audiovisuel,
-- which rates broadcast content.
data ContentRatingCsaRating
    = CsaUnspecified
      -- ^ @csaUnspecified@
    | CsaT
      -- ^ @csaT@
      -- T
    | CSA10
      -- ^ @csa10@
      -- 10
    | CSA12
      -- ^ @csa12@
      -- 12
    | CSA16
      -- ^ @csa16@
      -- 16
    | CSA18
      -- ^ @csa18@
      -- 18
    | CsaInterdiction
      -- ^ @csaInterdiction@
      -- Interdiction
    | CsaUnrated
      -- ^ @csaUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCsaRating

instance FromHttpApiData ContentRatingCsaRating where
    parseQueryParam = \case
        "csaUnspecified" -> Right CsaUnspecified
        "csaT" -> Right CsaT
        "csa10" -> Right CSA10
        "csa12" -> Right CSA12
        "csa16" -> Right CSA16
        "csa18" -> Right CSA18
        "csaInterdiction" -> Right CsaInterdiction
        "csaUnrated" -> Right CsaUnrated
        x -> Left ("Unable to parse ContentRatingCsaRating from: " <> x)

instance ToHttpApiData ContentRatingCsaRating where
    toQueryParam = \case
        CsaUnspecified -> "csaUnspecified"
        CsaT -> "csaT"
        CSA10 -> "csa10"
        CSA12 -> "csa12"
        CSA16 -> "csa16"
        CSA18 -> "csa18"
        CsaInterdiction -> "csaInterdiction"
        CsaUnrated -> "csaUnrated"

instance FromJSON ContentRatingCsaRating where
    parseJSON = parseJSONText "ContentRatingCsaRating"

instance ToJSON ContentRatingCsaRating where
    toJSON = toJSONText

-- | The style of the channel section.
data ChannelSectionSnippetStyle
    = ChannelsectionStyleUnspecified
      -- ^ @channelsectionStyleUnspecified@
    | HorizontalRow
      -- ^ @horizontalRow@
    | VerticalList
      -- ^ @verticalList@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChannelSectionSnippetStyle

instance FromHttpApiData ChannelSectionSnippetStyle where
    parseQueryParam = \case
        "channelsectionStyleUnspecified" -> Right ChannelsectionStyleUnspecified
        "horizontalRow" -> Right HorizontalRow
        "verticalList" -> Right VerticalList
        x -> Left ("Unable to parse ChannelSectionSnippetStyle from: " <> x)

instance ToHttpApiData ChannelSectionSnippetStyle where
    toQueryParam = \case
        ChannelsectionStyleUnspecified -> "channelsectionStyleUnspecified"
        HorizontalRow -> "horizontalRow"
        VerticalList -> "verticalList"

instance FromJSON ChannelSectionSnippetStyle where
    parseJSON = parseJSONText "ChannelSectionSnippetStyle"

instance ToJSON ChannelSectionSnippetStyle where
    toJSON = toJSONText

-- | The video\'s Eirin (映倫) rating. Eirin is the Japanese rating system.
data ContentRatingEirinRating
    = EirinUnspecified
      -- ^ @eirinUnspecified@
    | EirinG
      -- ^ @eirinG@
      -- G
    | EIRINPG12
      -- ^ @eirinPg12@
      -- PG-12
    | EirinR15plus
      -- ^ @eirinR15plus@
      -- R15+
    | EirinR18plus
      -- ^ @eirinR18plus@
      -- R18+
    | EirinUnrated
      -- ^ @eirinUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingEirinRating

instance FromHttpApiData ContentRatingEirinRating where
    parseQueryParam = \case
        "eirinUnspecified" -> Right EirinUnspecified
        "eirinG" -> Right EirinG
        "eirinPg12" -> Right EIRINPG12
        "eirinR15plus" -> Right EirinR15plus
        "eirinR18plus" -> Right EirinR18plus
        "eirinUnrated" -> Right EirinUnrated
        x -> Left ("Unable to parse ContentRatingEirinRating from: " <> x)

instance ToHttpApiData ContentRatingEirinRating where
    toQueryParam = \case
        EirinUnspecified -> "eirinUnspecified"
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
      -- The MP4 file is not streamable, this will slow down the processing. MOOV
      -- atom was not found at the beginning of the file.
    | SendBestQualityVideo
      -- ^ @sendBestQualityVideo@
      -- Probably a better quality version of the video exists. The video has
      -- wide screen aspect ratio, but is not an HD video.
    | SphericalVideo
      -- ^ @sphericalVideo@
      -- Uploaded video is spherical video.
    | SpatialAudio
      -- ^ @spatialAudio@
      -- Uploaded video has spatial audio.
    | VrVideo
      -- ^ @vrVideo@
      -- Uploaded video is VR video.
    | HdrVideo
      -- ^ @hdrVideo@
      -- Uploaded video is HDR video.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoSuggestionsProcessingHintsItem

instance FromHttpApiData VideoSuggestionsProcessingHintsItem where
    parseQueryParam = \case
        "nonStreamableMov" -> Right NonStreamableMov
        "sendBestQualityVideo" -> Right SendBestQualityVideo
        "sphericalVideo" -> Right SphericalVideo
        "spatialAudio" -> Right SpatialAudio
        "vrVideo" -> Right VrVideo
        "hdrVideo" -> Right HdrVideo
        x -> Left ("Unable to parse VideoSuggestionsProcessingHintsItem from: " <> x)

instance ToHttpApiData VideoSuggestionsProcessingHintsItem where
    toQueryParam = \case
        NonStreamableMov -> "nonStreamableMov"
        SendBestQualityVideo -> "sendBestQualityVideo"
        SphericalVideo -> "sphericalVideo"
        SpatialAudio -> "spatialAudio"
        VrVideo -> "vrVideo"
        HdrVideo -> "hdrVideo"

instance FromJSON VideoSuggestionsProcessingHintsItem where
    parseJSON = parseJSONText "VideoSuggestionsProcessingHintsItem"

instance ToJSON VideoSuggestionsProcessingHintsItem where
    toJSON = toJSONText

-- | The video\'s rating from the Bulgarian National Film Center.
data ContentRatingNfrcRating
    = NfrcUnspecified
      -- ^ @nfrcUnspecified@
    | NfrcA
      -- ^ @nfrcA@
      -- A
    | NfrcB
      -- ^ @nfrcB@
      -- B
    | NfrcC
      -- ^ @nfrcC@
      -- C
    | NfrcD
      -- ^ @nfrcD@
      -- D
    | NfrcX
      -- ^ @nfrcX@
      -- X
    | NfrcUnrated
      -- ^ @nfrcUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingNfrcRating

instance FromHttpApiData ContentRatingNfrcRating where
    parseQueryParam = \case
        "nfrcUnspecified" -> Right NfrcUnspecified
        "nfrcA" -> Right NfrcA
        "nfrcB" -> Right NfrcB
        "nfrcC" -> Right NfrcC
        "nfrcD" -> Right NfrcD
        "nfrcX" -> Right NfrcX
        "nfrcUnrated" -> Right NfrcUnrated
        x -> Left ("Unable to parse ContentRatingNfrcRating from: " <> x)

instance ToHttpApiData ContentRatingNfrcRating where
    toQueryParam = \case
        NfrcUnspecified -> "nfrcUnspecified"
        NfrcA -> "nfrcA"
        NfrcB -> "nfrcB"
        NfrcC -> "nfrcC"
        NfrcD -> "nfrcD"
        NfrcX -> "nfrcX"
        NfrcUnrated -> "nfrcUnrated"

instance FromJSON ContentRatingNfrcRating where
    parseJSON = parseJSONText "ContentRatingNfrcRating"

instance ToJSON ContentRatingNfrcRating where
    toJSON = toJSONText

-- | The type of activity that the resource describes.
data ActivitySnippetType
    = ASTTypeUnspecified
      -- ^ @typeUnspecified@
    | ASTUpload
      -- ^ @upload@
    | ASTLike
      -- ^ @like@
    | ASTFavorite
      -- ^ @favorite@
    | ASTComment
      -- ^ @comment@
    | ASTSubscription
      -- ^ @subscription@
    | ASTPlayListItem
      -- ^ @playlistItem@
    | ASTRecommendation
      -- ^ @recommendation@
    | ASTBulletin
      -- ^ @bulletin@
    | ASTSocial
      -- ^ @social@
    | ASTChannelItem
      -- ^ @channelItem@
    | ASTPromotedItem
      -- ^ @promotedItem@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActivitySnippetType

instance FromHttpApiData ActivitySnippetType where
    parseQueryParam = \case
        "typeUnspecified" -> Right ASTTypeUnspecified
        "upload" -> Right ASTUpload
        "like" -> Right ASTLike
        "favorite" -> Right ASTFavorite
        "comment" -> Right ASTComment
        "subscription" -> Right ASTSubscription
        "playlistItem" -> Right ASTPlayListItem
        "recommendation" -> Right ASTRecommendation
        "bulletin" -> Right ASTBulletin
        "social" -> Right ASTSocial
        "channelItem" -> Right ASTChannelItem
        "promotedItem" -> Right ASTPromotedItem
        x -> Left ("Unable to parse ActivitySnippetType from: " <> x)

instance ToHttpApiData ActivitySnippetType where
    toQueryParam = \case
        ASTTypeUnspecified -> "typeUnspecified"
        ASTUpload -> "upload"
        ASTLike -> "like"
        ASTFavorite -> "favorite"
        ASTComment -> "comment"
        ASTSubscription -> "subscription"
        ASTPlayListItem -> "playlistItem"
        ASTRecommendation -> "recommendation"
        ASTBulletin -> "bulletin"
        ASTSocial -> "social"
        ASTChannelItem -> "channelItem"
        ASTPromotedItem -> "promotedItem"

instance FromJSON ActivitySnippetType where
    parseJSON = parseJSONText "ActivitySnippetType"

instance ToJSON ActivitySnippetType where
    toJSON = toJSONText

-- | The video\'s Ministerio de Cultura (Colombia) rating.
data ContentRatingMocRating
    = MocUnspecified
      -- ^ @mocUnspecified@
    | MocE
      -- ^ @mocE@
      -- E
    | MocT
      -- ^ @mocT@
      -- T
    | MOC7
      -- ^ @moc7@
      -- 7
    | MOC12
      -- ^ @moc12@
      -- 12
    | MOC15
      -- ^ @moc15@
      -- 15
    | MOC18
      -- ^ @moc18@
      -- 18
    | MocX
      -- ^ @mocX@
      -- X
    | MocBanned
      -- ^ @mocBanned@
      -- Banned
    | MocUnrated
      -- ^ @mocUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMocRating

instance FromHttpApiData ContentRatingMocRating where
    parseQueryParam = \case
        "mocUnspecified" -> Right MocUnspecified
        "mocE" -> Right MocE
        "mocT" -> Right MocT
        "moc7" -> Right MOC7
        "moc12" -> Right MOC12
        "moc15" -> Right MOC15
        "moc18" -> Right MOC18
        "mocX" -> Right MocX
        "mocBanned" -> Right MocBanned
        "mocUnrated" -> Right MocUnrated
        x -> Left ("Unable to parse ContentRatingMocRating from: " <> x)

instance ToHttpApiData ContentRatingMocRating where
    toQueryParam = \case
        MocUnspecified -> "mocUnspecified"
        MocE -> "mocE"
        MocT -> "mocT"
        MOC7 -> "moc7"
        MOC12 -> "moc12"
        MOC15 -> "moc15"
        MOC18 -> "moc18"
        MocX -> "mocX"
        MocBanned -> "mocBanned"
        MocUnrated -> "mocUnrated"

instance FromJSON ContentRatingMocRating where
    parseJSON = parseJSONText "ContentRatingMocRating"

instance ToJSON ContentRatingMocRating where
    toJSON = toJSONText

-- | Filter on embeddable videos.
data SearchListVideoEmbeddable
    = SLVEVideoEmbeddableUnspecified
      -- ^ @videoEmbeddableUnspecified@
    | SLVEAny
      -- ^ @any@
      -- Return all videos, embeddable or not.
    | SLVETrue'
      -- ^ @true@
      -- Only retrieve embeddable videos.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListVideoEmbeddable

instance FromHttpApiData SearchListVideoEmbeddable where
    parseQueryParam = \case
        "videoEmbeddableUnspecified" -> Right SLVEVideoEmbeddableUnspecified
        "any" -> Right SLVEAny
        "true" -> Right SLVETrue'
        x -> Left ("Unable to parse SearchListVideoEmbeddable from: " <> x)

instance ToHttpApiData SearchListVideoEmbeddable where
    toQueryParam = \case
        SLVEVideoEmbeddableUnspecified -> "videoEmbeddableUnspecified"
        SLVEAny -> "any"
        SLVETrue' -> "true"

instance FromJSON SearchListVideoEmbeddable where
    parseJSON = parseJSONText "SearchListVideoEmbeddable"

instance ToJSON SearchListVideoEmbeddable where
    toJSON = toJSONText

-- | The video\'s rating system for Vietnam - MCST
data ContentRatingMcstRating
    = McstUnspecified
      -- ^ @mcstUnspecified@
    | McstP
      -- ^ @mcstP@
      -- P
    | MCST0
      -- ^ @mcst0@
      -- 0
    | MCSTC13
      -- ^ @mcstC13@
      -- C13
    | MCSTC16
      -- ^ @mcstC16@
      -- C16
    | Mcst16plus
      -- ^ @mcst16plus@
      -- 16+
    | MCSTC18
      -- ^ @mcstC18@
      -- C18
    | McstGPg
      -- ^ @mcstGPg@
      -- MCST_G_PG
    | McstUnrated
      -- ^ @mcstUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMcstRating

instance FromHttpApiData ContentRatingMcstRating where
    parseQueryParam = \case
        "mcstUnspecified" -> Right McstUnspecified
        "mcstP" -> Right McstP
        "mcst0" -> Right MCST0
        "mcstC13" -> Right MCSTC13
        "mcstC16" -> Right MCSTC16
        "mcst16plus" -> Right Mcst16plus
        "mcstC18" -> Right MCSTC18
        "mcstGPg" -> Right McstGPg
        "mcstUnrated" -> Right McstUnrated
        x -> Left ("Unable to parse ContentRatingMcstRating from: " <> x)

instance ToHttpApiData ContentRatingMcstRating where
    toQueryParam = \case
        McstUnspecified -> "mcstUnspecified"
        McstP -> "mcstP"
        MCST0 -> "mcst0"
        MCSTC13 -> "mcstC13"
        MCSTC16 -> "mcstC16"
        Mcst16plus -> "mcst16plus"
        MCSTC18 -> "mcstC18"
        McstGPg -> "mcstGPg"
        McstUnrated -> "mcstUnrated"

instance FromJSON ContentRatingMcstRating where
    parseJSON = parseJSONText "ContentRatingMcstRating"

instance ToJSON ContentRatingMcstRating where
    toJSON = toJSONText

-- | Filter on the livestream status of the videos.
data SearchListEventType
    = SLETNone
      -- ^ @none@
    | SLETUpcoming
      -- ^ @upcoming@
      -- The live broadcast is upcoming.
    | SLETLive
      -- ^ @live@
      -- The live broadcast is active.
    | SLETCompleted
      -- ^ @completed@
      -- The live broadcast has been completed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListEventType

instance FromHttpApiData SearchListEventType where
    parseQueryParam = \case
        "none" -> Right SLETNone
        "upcoming" -> Right SLETUpcoming
        "live" -> Right SLETLive
        "completed" -> Right SLETCompleted
        x -> Left ("Unable to parse SearchListEventType from: " <> x)

instance ToHttpApiData SearchListEventType where
    toQueryParam = \case
        SLETNone -> "none"
        SLETUpcoming -> "upcoming"
        SLETLive -> "live"
        SLETCompleted -> "completed"

instance FromJSON SearchListEventType where
    parseJSON = parseJSONText "SearchListEventType"

instance ToJSON SearchListEventType where
    toJSON = toJSONText

-- | The rating system for MENA countries, a clone of MPAA. It is needed to
-- prevent titles go live w\/o additional QC check, since some of them can
-- be inappropriate for the countries at all. See b\/33408548 for more
-- details.
data ContentRatingMenaMpaaRating
    = MenaMpaaUnspecified
      -- ^ @menaMpaaUnspecified@
    | MenaMpaaG
      -- ^ @menaMpaaG@
      -- G
    | MenaMpaaPg
      -- ^ @menaMpaaPg@
      -- PG
    | MENAMPAAPG13
      -- ^ @menaMpaaPg13@
      -- PG-13
    | MenaMpaaR
      -- ^ @menaMpaaR@
      -- R
    | MenaMpaaUnrated
      -- ^ @menaMpaaUnrated@
      -- To keep the same enum values as MPAA\'s items have, skip NC_17.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMenaMpaaRating

instance FromHttpApiData ContentRatingMenaMpaaRating where
    parseQueryParam = \case
        "menaMpaaUnspecified" -> Right MenaMpaaUnspecified
        "menaMpaaG" -> Right MenaMpaaG
        "menaMpaaPg" -> Right MenaMpaaPg
        "menaMpaaPg13" -> Right MENAMPAAPG13
        "menaMpaaR" -> Right MenaMpaaR
        "menaMpaaUnrated" -> Right MenaMpaaUnrated
        x -> Left ("Unable to parse ContentRatingMenaMpaaRating from: " <> x)

instance ToHttpApiData ContentRatingMenaMpaaRating where
    toQueryParam = \case
        MenaMpaaUnspecified -> "menaMpaaUnspecified"
        MenaMpaaG -> "menaMpaaG"
        MenaMpaaPg -> "menaMpaaPg"
        MENAMPAAPG13 -> "menaMpaaPg13"
        MenaMpaaR -> "menaMpaaR"
        MenaMpaaUnrated -> "menaMpaaUnrated"

instance FromJSON ContentRatingMenaMpaaRating where
    parseJSON = parseJSONText "ContentRatingMenaMpaaRating"

instance ToJSON ContentRatingMenaMpaaRating where
    toJSON = toJSONText

-- | The reason that the resource is recommended to the user.
data ActivityContentDetailsRecommendationReason
    = ReasonUnspecified
      -- ^ @reasonUnspecified@
    | VideoFavorited
      -- ^ @videoFavorited@
    | VideoLiked
      -- ^ @videoLiked@
    | VideoWatched
      -- ^ @videoWatched@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActivityContentDetailsRecommendationReason

instance FromHttpApiData ActivityContentDetailsRecommendationReason where
    parseQueryParam = \case
        "reasonUnspecified" -> Right ReasonUnspecified
        "videoFavorited" -> Right VideoFavorited
        "videoLiked" -> Right VideoLiked
        "videoWatched" -> Right VideoWatched
        x -> Left ("Unable to parse ActivityContentDetailsRecommendationReason from: " <> x)

instance ToHttpApiData ActivityContentDetailsRecommendationReason where
    toQueryParam = \case
        ReasonUnspecified -> "reasonUnspecified"
        VideoFavorited -> "videoFavorited"
        VideoLiked -> "videoLiked"
        VideoWatched -> "videoWatched"

instance FromJSON ActivityContentDetailsRecommendationReason where
    parseJSON = parseJSONText "ActivityContentDetailsRecommendationReason"

instance ToJSON ActivityContentDetailsRecommendationReason where
    toJSON = toJSONText

-- | The video\'s NICAM\/Kijkwijzer rating from the Nederlands Instituut voor
-- de Classificatie van Audiovisuele Media (Netherlands).
data ContentRatingKijkwijzerRating
    = KijkwijzerUnspecified
      -- ^ @kijkwijzerUnspecified@
    | KijkwijzerAl
      -- ^ @kijkwijzerAl@
      -- AL
    | KIJKWIJZER6
      -- ^ @kijkwijzer6@
      -- 6
    | KIJKWIJZER9
      -- ^ @kijkwijzer9@
      -- 9
    | KIJKWIJZER12
      -- ^ @kijkwijzer12@
      -- 12
    | KIJKWIJZER16
      -- ^ @kijkwijzer16@
      -- 16
    | KIJKWIJZER18
      -- ^ @kijkwijzer18@
    | KijkwijzerUnrated
      -- ^ @kijkwijzerUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingKijkwijzerRating

instance FromHttpApiData ContentRatingKijkwijzerRating where
    parseQueryParam = \case
        "kijkwijzerUnspecified" -> Right KijkwijzerUnspecified
        "kijkwijzerAl" -> Right KijkwijzerAl
        "kijkwijzer6" -> Right KIJKWIJZER6
        "kijkwijzer9" -> Right KIJKWIJZER9
        "kijkwijzer12" -> Right KIJKWIJZER12
        "kijkwijzer16" -> Right KIJKWIJZER16
        "kijkwijzer18" -> Right KIJKWIJZER18
        "kijkwijzerUnrated" -> Right KijkwijzerUnrated
        x -> Left ("Unable to parse ContentRatingKijkwijzerRating from: " <> x)

instance ToHttpApiData ContentRatingKijkwijzerRating where
    toQueryParam = \case
        KijkwijzerUnspecified -> "kijkwijzerUnspecified"
        KijkwijzerAl -> "kijkwijzerAl"
        KIJKWIJZER6 -> "kijkwijzer6"
        KIJKWIJZER9 -> "kijkwijzer9"
        KIJKWIJZER12 -> "kijkwijzer12"
        KIJKWIJZER16 -> "kijkwijzer16"
        KIJKWIJZER18 -> "kijkwijzer18"
        KijkwijzerUnrated -> "kijkwijzerUnrated"

instance FromJSON ContentRatingKijkwijzerRating where
    parseJSON = parseJSONText "ContentRatingKijkwijzerRating"

instance ToJSON ContentRatingKijkwijzerRating where
    toJSON = toJSONText

data VideoSuggestionsProcessingErrorsItem
    = AudioFile
      -- ^ @audioFile@
      -- File contains audio only (e.g., an MP3 file).
    | ImageFile
      -- ^ @imageFile@
      -- Image file (e.g., a JPEG image).
    | ProjectFile
      -- ^ @projectFile@
      -- Movie project file (e.g., Microsoft Windows Movie Maker project).
    | NotAVideoFile
      -- ^ @notAVideoFile@
      -- Other non-video file.
    | DocFile
      -- ^ @docFile@
      -- Document or text file (e.g., MS Word document).
    | ArchiveFile
      -- ^ @archiveFile@
      -- An archive file (e.g., a ZIP archive).
    | UnsupportedSpatialAudioLayout
      -- ^ @unsupportedSpatialAudioLayout@
      -- Unsupported spatial audio layout type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoSuggestionsProcessingErrorsItem

instance FromHttpApiData VideoSuggestionsProcessingErrorsItem where
    parseQueryParam = \case
        "audioFile" -> Right AudioFile
        "imageFile" -> Right ImageFile
        "projectFile" -> Right ProjectFile
        "notAVideoFile" -> Right NotAVideoFile
        "docFile" -> Right DocFile
        "archiveFile" -> Right ArchiveFile
        "unsupportedSpatialAudioLayout" -> Right UnsupportedSpatialAudioLayout
        x -> Left ("Unable to parse VideoSuggestionsProcessingErrorsItem from: " <> x)

instance ToHttpApiData VideoSuggestionsProcessingErrorsItem where
    toQueryParam = \case
        AudioFile -> "audioFile"
        ImageFile -> "imageFile"
        ProjectFile -> "projectFile"
        NotAVideoFile -> "notAVideoFile"
        DocFile -> "docFile"
        ArchiveFile -> "archiveFile"
        UnsupportedSpatialAudioLayout -> "unsupportedSpatialAudioLayout"

instance FromJSON VideoSuggestionsProcessingErrorsItem where
    parseJSON = parseJSONText "VideoSuggestionsProcessingErrorsItem"

instance ToJSON VideoSuggestionsProcessingErrorsItem where
    toJSON = toJSONText

-- | The uploaded file\'s type as detected by YouTube\'s video processing
-- engine. Currently, YouTube only processes video files, but this field is
-- present whether a video file or another type of file was uploaded.
data VideoFileDetailsFileType
    = VFDFTVideo
      -- ^ @video@
      -- Known video file (e.g., an MP4 file).
    | VFDFTAudio
      -- ^ @audio@
      -- Audio only file (e.g., an MP3 file).
    | VFDFTImage
      -- ^ @image@
      -- Image file (e.g., a JPEG image).
    | VFDFTArchive
      -- ^ @archive@
      -- Archive file (e.g., a ZIP archive).
    | VFDFTDocument
      -- ^ @document@
      -- Document or text file (e.g., MS Word document).
    | VFDFTProject
      -- ^ @project@
      -- Movie project file (e.g., Microsoft Windows Movie Maker project).
    | VFDFTOther
      -- ^ @other@
      -- Other non-video file type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoFileDetailsFileType

instance FromHttpApiData VideoFileDetailsFileType where
    parseQueryParam = \case
        "video" -> Right VFDFTVideo
        "audio" -> Right VFDFTAudio
        "image" -> Right VFDFTImage
        "archive" -> Right VFDFTArchive
        "document" -> Right VFDFTDocument
        "project" -> Right VFDFTProject
        "other" -> Right VFDFTOther
        x -> Left ("Unable to parse VideoFileDetailsFileType from: " <> x)

instance ToHttpApiData VideoFileDetailsFileType where
    toQueryParam = \case
        VFDFTVideo -> "video"
        VFDFTAudio -> "audio"
        VFDFTImage -> "image"
        VFDFTArchive -> "archive"
        VFDFTDocument -> "document"
        VFDFTProject -> "project"
        VFDFTOther -> "other"

instance FromJSON VideoFileDetailsFileType where
    parseJSON = parseJSONText "VideoFileDetailsFileType"

instance ToJSON VideoFileDetailsFileType where
    toJSON = toJSONText

-- | The video\'s rating from the Movie and Television Review and
-- Classification Board (Philippines).
data ContentRatingMtrcbRating
    = MtrcbUnspecified
      -- ^ @mtrcbUnspecified@
    | MtrcbG
      -- ^ @mtrcbG@
      -- G
    | MtrcbPg
      -- ^ @mtrcbPg@
      -- PG
    | MTRCBR13
      -- ^ @mtrcbR13@
      -- R-13
    | MTRCBR16
      -- ^ @mtrcbR16@
      -- R-16
    | MTRCBR18
      -- ^ @mtrcbR18@
      -- R-18
    | MtrcbX
      -- ^ @mtrcbX@
      -- X
    | MtrcbUnrated
      -- ^ @mtrcbUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMtrcbRating

instance FromHttpApiData ContentRatingMtrcbRating where
    parseQueryParam = \case
        "mtrcbUnspecified" -> Right MtrcbUnspecified
        "mtrcbG" -> Right MtrcbG
        "mtrcbPg" -> Right MtrcbPg
        "mtrcbR13" -> Right MTRCBR13
        "mtrcbR16" -> Right MTRCBR16
        "mtrcbR18" -> Right MTRCBR18
        "mtrcbX" -> Right MtrcbX
        "mtrcbUnrated" -> Right MtrcbUnrated
        x -> Left ("Unable to parse ContentRatingMtrcbRating from: " <> x)

instance ToHttpApiData ContentRatingMtrcbRating where
    toQueryParam = \case
        MtrcbUnspecified -> "mtrcbUnspecified"
        MtrcbG -> "mtrcbG"
        MtrcbPg -> "mtrcbPg"
        MTRCBR13 -> "mtrcbR13"
        MTRCBR16 -> "mtrcbR16"
        MTRCBR18 -> "mtrcbR18"
        MtrcbX -> "mtrcbX"
        MtrcbUnrated -> "mtrcbUnrated"

instance FromJSON ContentRatingMtrcbRating where
    parseJSON = parseJSONText "ContentRatingMtrcbRating"

instance ToJSON ContentRatingMtrcbRating where
    toJSON = toJSONText

-- | The video\'s rating from Hong Kong\'s Office for Film, Newspaper and
-- Article Administration.
data ContentRatingFcoRating
    = FcoUnspecified
      -- ^ @fcoUnspecified@
    | FcoI
      -- ^ @fcoI@
      -- I
    | FcoIia
      -- ^ @fcoIia@
      -- IIA
    | FcoIib
      -- ^ @fcoIib@
      -- IIB
    | FcoIi
      -- ^ @fcoIi@
      -- II
    | FcoIii
      -- ^ @fcoIii@
      -- III
    | FcoUnrated
      -- ^ @fcoUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingFcoRating

instance FromHttpApiData ContentRatingFcoRating where
    parseQueryParam = \case
        "fcoUnspecified" -> Right FcoUnspecified
        "fcoI" -> Right FcoI
        "fcoIia" -> Right FcoIia
        "fcoIib" -> Right FcoIib
        "fcoIi" -> Right FcoIi
        "fcoIii" -> Right FcoIii
        "fcoUnrated" -> Right FcoUnrated
        x -> Left ("Unable to parse ContentRatingFcoRating from: " <> x)

instance ToHttpApiData ContentRatingFcoRating where
    toQueryParam = \case
        FcoUnspecified -> "fcoUnspecified"
        FcoI -> "fcoI"
        FcoIia -> "fcoIia"
        FcoIib -> "fcoIib"
        FcoIi -> "fcoIi"
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
    | CSFRVariable
      -- ^ @variable@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CdnSettingsFrameRate

instance FromHttpApiData CdnSettingsFrameRate where
    parseQueryParam = \case
        "30fps" -> Right CSFR30fps
        "60fps" -> Right CSFR60fps
        "variable" -> Right CSFRVariable
        x -> Left ("Unable to parse CdnSettingsFrameRate from: " <> x)

instance ToHttpApiData CdnSettingsFrameRate where
    toQueryParam = \case
        CSFR30fps -> "30fps"
        CSFR60fps -> "60fps"
        CSFRVariable -> "variable"

instance FromJSON CdnSettingsFrameRate where
    parseJSON = parseJSONText "CdnSettingsFrameRate"

instance ToJSON CdnSettingsFrameRate where
    toJSON = toJSONText

-- | The kind of error happening.
data LiveStreamConfigurationIssueType
    = GopSizeOver
      -- ^ @gopSizeOver@
    | GopSizeLong
      -- ^ @gopSizeLong@
    | GopSizeShort
      -- ^ @gopSizeShort@
    | OpenGop
      -- ^ @openGop@
    | BadContainer
      -- ^ @badContainer@
    | AudioBitrateHigh
      -- ^ @audioBitrateHigh@
    | AudioBitrateLow
      -- ^ @audioBitrateLow@
    | AudioSampleRate
      -- ^ @audioSampleRate@
    | BitrateHigh
      -- ^ @bitrateHigh@
    | BitrateLow
      -- ^ @bitrateLow@
    | AudioCodec
      -- ^ @audioCodec@
    | VideoCodec
      -- ^ @videoCodec@
    | NoAudioStream
      -- ^ @noAudioStream@
    | NoVideoStream
      -- ^ @noVideoStream@
    | MultipleVideoStreams
      -- ^ @multipleVideoStreams@
    | MultipleAudioStreams
      -- ^ @multipleAudioStreams@
    | AudioTooManyChannels
      -- ^ @audioTooManyChannels@
    | InterlacedVideo
      -- ^ @interlacedVideo@
    | FrameRateHigh
      -- ^ @frameRateHigh@
    | ResolutionMismatch
      -- ^ @resolutionMismatch@
    | VideoCodecMismatch
      -- ^ @videoCodecMismatch@
    | VideoInterlaceMismatch
      -- ^ @videoInterlaceMismatch@
    | VideoProFileMismatch
      -- ^ @videoProfileMismatch@
    | VideoBitrateMismatch
      -- ^ @videoBitrateMismatch@
    | FramerateMismatch
      -- ^ @framerateMismatch@
    | GopMismatch
      -- ^ @gopMismatch@
    | AudioSampleRateMismatch
      -- ^ @audioSampleRateMismatch@
    | AudioStereoMismatch
      -- ^ @audioStereoMismatch@
    | AudioCodecMismatch
      -- ^ @audioCodecMismatch@
    | AudioBitrateMismatch
      -- ^ @audioBitrateMismatch@
    | VideoResolutionSuboptimal
      -- ^ @videoResolutionSuboptimal@
    | VideoResolutionUnsupported
      -- ^ @videoResolutionUnsupported@
    | VideoIngestionStarved
      -- ^ @videoIngestionStarved@
    | VideoIngestionFasterThanRealtime
      -- ^ @videoIngestionFasterThanRealtime@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveStreamConfigurationIssueType

instance FromHttpApiData LiveStreamConfigurationIssueType where
    parseQueryParam = \case
        "gopSizeOver" -> Right GopSizeOver
        "gopSizeLong" -> Right GopSizeLong
        "gopSizeShort" -> Right GopSizeShort
        "openGop" -> Right OpenGop
        "badContainer" -> Right BadContainer
        "audioBitrateHigh" -> Right AudioBitrateHigh
        "audioBitrateLow" -> Right AudioBitrateLow
        "audioSampleRate" -> Right AudioSampleRate
        "bitrateHigh" -> Right BitrateHigh
        "bitrateLow" -> Right BitrateLow
        "audioCodec" -> Right AudioCodec
        "videoCodec" -> Right VideoCodec
        "noAudioStream" -> Right NoAudioStream
        "noVideoStream" -> Right NoVideoStream
        "multipleVideoStreams" -> Right MultipleVideoStreams
        "multipleAudioStreams" -> Right MultipleAudioStreams
        "audioTooManyChannels" -> Right AudioTooManyChannels
        "interlacedVideo" -> Right InterlacedVideo
        "frameRateHigh" -> Right FrameRateHigh
        "resolutionMismatch" -> Right ResolutionMismatch
        "videoCodecMismatch" -> Right VideoCodecMismatch
        "videoInterlaceMismatch" -> Right VideoInterlaceMismatch
        "videoProfileMismatch" -> Right VideoProFileMismatch
        "videoBitrateMismatch" -> Right VideoBitrateMismatch
        "framerateMismatch" -> Right FramerateMismatch
        "gopMismatch" -> Right GopMismatch
        "audioSampleRateMismatch" -> Right AudioSampleRateMismatch
        "audioStereoMismatch" -> Right AudioStereoMismatch
        "audioCodecMismatch" -> Right AudioCodecMismatch
        "audioBitrateMismatch" -> Right AudioBitrateMismatch
        "videoResolutionSuboptimal" -> Right VideoResolutionSuboptimal
        "videoResolutionUnsupported" -> Right VideoResolutionUnsupported
        "videoIngestionStarved" -> Right VideoIngestionStarved
        "videoIngestionFasterThanRealtime" -> Right VideoIngestionFasterThanRealtime
        x -> Left ("Unable to parse LiveStreamConfigurationIssueType from: " <> x)

instance ToHttpApiData LiveStreamConfigurationIssueType where
    toQueryParam = \case
        GopSizeOver -> "gopSizeOver"
        GopSizeLong -> "gopSizeLong"
        GopSizeShort -> "gopSizeShort"
        OpenGop -> "openGop"
        BadContainer -> "badContainer"
        AudioBitrateHigh -> "audioBitrateHigh"
        AudioBitrateLow -> "audioBitrateLow"
        AudioSampleRate -> "audioSampleRate"
        BitrateHigh -> "bitrateHigh"
        BitrateLow -> "bitrateLow"
        AudioCodec -> "audioCodec"
        VideoCodec -> "videoCodec"
        NoAudioStream -> "noAudioStream"
        NoVideoStream -> "noVideoStream"
        MultipleVideoStreams -> "multipleVideoStreams"
        MultipleAudioStreams -> "multipleAudioStreams"
        AudioTooManyChannels -> "audioTooManyChannels"
        InterlacedVideo -> "interlacedVideo"
        FrameRateHigh -> "frameRateHigh"
        ResolutionMismatch -> "resolutionMismatch"
        VideoCodecMismatch -> "videoCodecMismatch"
        VideoInterlaceMismatch -> "videoInterlaceMismatch"
        VideoProFileMismatch -> "videoProfileMismatch"
        VideoBitrateMismatch -> "videoBitrateMismatch"
        FramerateMismatch -> "framerateMismatch"
        GopMismatch -> "gopMismatch"
        AudioSampleRateMismatch -> "audioSampleRateMismatch"
        AudioStereoMismatch -> "audioStereoMismatch"
        AudioCodecMismatch -> "audioCodecMismatch"
        AudioBitrateMismatch -> "audioBitrateMismatch"
        VideoResolutionSuboptimal -> "videoResolutionSuboptimal"
        VideoResolutionUnsupported -> "videoResolutionUnsupported"
        VideoIngestionStarved -> "videoIngestionStarved"
        VideoIngestionFasterThanRealtime -> "videoIngestionFasterThanRealtime"

instance FromJSON LiveStreamConfigurationIssueType where
    parseJSON = parseJSONText "LiveStreamConfigurationIssueType"

instance ToJSON LiveStreamConfigurationIssueType where
    toJSON = toJSONText

-- | Indicates whether the search results should include restricted content
-- as well as standard content.
data SearchListSafeSearch
    = SLSSSafeSearchSettingUnspecified
      -- ^ @safeSearchSettingUnspecified@
    | SLSSNone
      -- ^ @none@
      -- YouTube will not filter the search result set.
    | SLSSModerate
      -- ^ @moderate@
      -- YouTube will filter some content from search results and, at the least,
      -- will filter content that is restricted in your locale. Based on their
      -- content, search results could be removed from search results or demoted
      -- in search results. This is the default parameter value.
    | SLSSStrict
      -- ^ @strict@
      -- YouTube will try to exclude all restricted content from the search
      -- result set. Based on their content, search results could be removed from
      -- search results or demoted in search results.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListSafeSearch

instance FromHttpApiData SearchListSafeSearch where
    parseQueryParam = \case
        "safeSearchSettingUnspecified" -> Right SLSSSafeSearchSettingUnspecified
        "none" -> Right SLSSNone
        "moderate" -> Right SLSSModerate
        "strict" -> Right SLSSStrict
        x -> Left ("Unable to parse SearchListSafeSearch from: " <> x)

instance ToHttpApiData SearchListSafeSearch where
    toQueryParam = \case
        SLSSSafeSearchSettingUnspecified -> "safeSearchSettingUnspecified"
        SLSSNone -> "none"
        SLSSModerate -> "moderate"
        SLSSStrict -> "strict"

instance FromJSON SearchListSafeSearch where
    parseJSON = parseJSONText "SearchListSafeSearch"

instance ToJSON SearchListSafeSearch where
    toJSON = toJSONText

-- | Filter on syndicated videos.
data SearchListVideoSyndicated
    = SLVSVideoSyndicatedUnspecified
      -- ^ @videoSyndicatedUnspecified@
    | SLVSAny
      -- ^ @any@
      -- Return all videos, syndicated or not.
    | SLVSTrue'
      -- ^ @true@
      -- Only retrieve syndicated videos.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListVideoSyndicated

instance FromHttpApiData SearchListVideoSyndicated where
    parseQueryParam = \case
        "videoSyndicatedUnspecified" -> Right SLVSVideoSyndicatedUnspecified
        "any" -> Right SLVSAny
        "true" -> Right SLVSTrue'
        x -> Left ("Unable to parse SearchListVideoSyndicated from: " <> x)

instance ToHttpApiData SearchListVideoSyndicated where
    toQueryParam = \case
        SLVSVideoSyndicatedUnspecified -> "videoSyndicatedUnspecified"
        SLVSAny -> "any"
        SLVSTrue' -> "true"

instance FromJSON SearchListVideoSyndicated where
    parseJSON = parseJSONText "SearchListVideoSyndicated"

instance ToJSON SearchListVideoSyndicated where
    toJSON = toJSONText

data ContentRatingDjctqRatingReasonsItem
    = DjctqRatingReasonUnspecified
      -- ^ @djctqRatingReasonUnspecified@
    | DjctqViolence
      -- ^ @djctqViolence@
      -- Brazil rating content descriptors. See http:\/\/go\/brazilratings
      -- section F. Violência (Violence)
    | DjctqExtremeViolence
      -- ^ @djctqExtremeViolence@
      -- Violência extrema (Extreme violence)
    | DjctqSexualContent
      -- ^ @djctqSexualContent@
      -- Conteúdo sexual (Sexual content)
    | DjctqNudity
      -- ^ @djctqNudity@
      -- Nudez (Nudity)
    | DjctqSex
      -- ^ @djctqSex@
      -- Sexo (Sex)
    | DjctqExplicitSex
      -- ^ @djctqExplicitSex@
      -- Sexo Explícito (Explicit sex)
    | DjctqDrugs
      -- ^ @djctqDrugs@
      -- Drogas (Drugs)
    | DjctqLegalDrugs
      -- ^ @djctqLegalDrugs@
      -- Drogas Lícitas (Legal drugs)
    | DjctqIllegalDrugs
      -- ^ @djctqIllegalDrugs@
      -- Drogas Ilícitas (Illegal drugs)
    | DjctqInAppropriateLanguage
      -- ^ @djctqInappropriateLanguage@
      -- Linguagem Imprópria (Inappropriate language)
    | DjctqCriminalActs
      -- ^ @djctqCriminalActs@
      -- Atos Criminosos (Criminal Acts)
    | DjctqImpactingContent
      -- ^ @djctqImpactingContent@
      -- Conteúdo Impactante (Impacting content)
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingDjctqRatingReasonsItem

instance FromHttpApiData ContentRatingDjctqRatingReasonsItem where
    parseQueryParam = \case
        "djctqRatingReasonUnspecified" -> Right DjctqRatingReasonUnspecified
        "djctqViolence" -> Right DjctqViolence
        "djctqExtremeViolence" -> Right DjctqExtremeViolence
        "djctqSexualContent" -> Right DjctqSexualContent
        "djctqNudity" -> Right DjctqNudity
        "djctqSex" -> Right DjctqSex
        "djctqExplicitSex" -> Right DjctqExplicitSex
        "djctqDrugs" -> Right DjctqDrugs
        "djctqLegalDrugs" -> Right DjctqLegalDrugs
        "djctqIllegalDrugs" -> Right DjctqIllegalDrugs
        "djctqInappropriateLanguage" -> Right DjctqInAppropriateLanguage
        "djctqCriminalActs" -> Right DjctqCriminalActs
        "djctqImpactingContent" -> Right DjctqImpactingContent
        x -> Left ("Unable to parse ContentRatingDjctqRatingReasonsItem from: " <> x)

instance ToHttpApiData ContentRatingDjctqRatingReasonsItem where
    toQueryParam = \case
        DjctqRatingReasonUnspecified -> "djctqRatingReasonUnspecified"
        DjctqViolence -> "djctqViolence"
        DjctqExtremeViolence -> "djctqExtremeViolence"
        DjctqSexualContent -> "djctqSexualContent"
        DjctqNudity -> "djctqNudity"
        DjctqSex -> "djctqSex"
        DjctqExplicitSex -> "djctqExplicitSex"
        DjctqDrugs -> "djctqDrugs"
        DjctqLegalDrugs -> "djctqLegalDrugs"
        DjctqIllegalDrugs -> "djctqIllegalDrugs"
        DjctqInAppropriateLanguage -> "djctqInappropriateLanguage"
        DjctqCriminalActs -> "djctqCriminalActs"
        DjctqImpactingContent -> "djctqImpactingContent"

instance FromJSON ContentRatingDjctqRatingReasonsItem where
    parseJSON = parseJSONText "ContentRatingDjctqRatingReasonsItem"

instance ToJSON ContentRatingDjctqRatingReasonsItem where
    toJSON = toJSONText

-- | The method or protocol used to transmit the video stream.
data CdnSettingsIngestionType
    = Rtmp
      -- ^ @rtmp@
    | Dash
      -- ^ @dash@
    | Webrtc
      -- ^ @webrtc@
    | Hls
      -- ^ @hls@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CdnSettingsIngestionType

instance FromHttpApiData CdnSettingsIngestionType where
    parseQueryParam = \case
        "rtmp" -> Right Rtmp
        "dash" -> Right Dash
        "webrtc" -> Right Webrtc
        "hls" -> Right Hls
        x -> Left ("Unable to parse CdnSettingsIngestionType from: " <> x)

instance ToHttpApiData CdnSettingsIngestionType where
    toQueryParam = \case
        Rtmp -> "rtmp"
        Dash -> "dash"
        Webrtc -> "webrtc"
        Hls -> "hls"

instance FromJSON CdnSettingsIngestionType where
    parseJSON = parseJSONText "CdnSettingsIngestionType"

instance ToJSON CdnSettingsIngestionType where
    toJSON = toJSONText

-- | Describes a timing type. If the value is offsetFromStart, then the
-- offsetMs field represents an offset from the start of the video. If the
-- value is offsetFromEnd, then the offsetMs field represents an offset
-- from the end of the video.
data InvideoTimingType
    = OffSetFromStart
      -- ^ @offsetFromStart@
    | OffSetFromEnd
      -- ^ @offsetFromEnd@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InvideoTimingType

instance FromHttpApiData InvideoTimingType where
    parseQueryParam = \case
        "offsetFromStart" -> Right OffSetFromStart
        "offsetFromEnd" -> Right OffSetFromEnd
        x -> Left ("Unable to parse InvideoTimingType from: " <> x)

instance ToHttpApiData InvideoTimingType where
    toQueryParam = \case
        OffSetFromStart -> "offsetFromStart"
        OffSetFromEnd -> "offsetFromEnd"

instance FromJSON InvideoTimingType where
    parseJSON = parseJSONText "InvideoTimingType"

instance ToJSON InvideoTimingType where
    toJSON = toJSONText

-- | The video\'s rating from Italy\'s Autorità per le Garanzie nelle
-- Comunicazioni (AGCOM).
data ContentRatingAgcomRating
    = AgcomUnspecified
      -- ^ @agcomUnspecified@
    | AgcomT
      -- ^ @agcomT@
      -- T
    | AGCOMVM14
      -- ^ @agcomVm14@
      -- VM14
    | AGCOMVM18
      -- ^ @agcomVm18@
      -- VM18
    | AgcomUnrated
      -- ^ @agcomUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingAgcomRating

instance FromHttpApiData ContentRatingAgcomRating where
    parseQueryParam = \case
        "agcomUnspecified" -> Right AgcomUnspecified
        "agcomT" -> Right AgcomT
        "agcomVm14" -> Right AGCOMVM14
        "agcomVm18" -> Right AGCOMVM18
        "agcomUnrated" -> Right AgcomUnrated
        x -> Left ("Unable to parse ContentRatingAgcomRating from: " <> x)

instance ToHttpApiData ContentRatingAgcomRating where
    toQueryParam = \case
        AgcomUnspecified -> "agcomUnspecified"
        AgcomT -> "agcomT"
        AGCOMVM14 -> "agcomVm14"
        AGCOMVM18 -> "agcomVm18"
        AgcomUnrated -> "agcomUnrated"

instance FromJSON ContentRatingAgcomRating where
    parseJSON = parseJSONText "ContentRatingAgcomRating"

instance ToJSON ContentRatingAgcomRating where
    toJSON = toJSONText

-- | The comment\'s moderation status. Will not be set if the comments were
-- requested through the id filter.
data CommentSnippetModerationStatus
    = CSMSPublished
      -- ^ @published@
      -- The comment is available for public display.
    | CSMSHeldForReview
      -- ^ @heldForReview@
      -- The comment is awaiting review by a moderator.
    | CSMSLikelySpam
      -- ^ @likelySpam@
    | CSMSRejected
      -- ^ @rejected@
      -- The comment is unfit for display.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentSnippetModerationStatus

instance FromHttpApiData CommentSnippetModerationStatus where
    parseQueryParam = \case
        "published" -> Right CSMSPublished
        "heldForReview" -> Right CSMSHeldForReview
        "likelySpam" -> Right CSMSLikelySpam
        "rejected" -> Right CSMSRejected
        x -> Left ("Unable to parse CommentSnippetModerationStatus from: " <> x)

instance ToHttpApiData CommentSnippetModerationStatus where
    toQueryParam = \case
        CSMSPublished -> "published"
        CSMSHeldForReview -> "heldForReview"
        CSMSLikelySpam -> "likelySpam"
        CSMSRejected -> "rejected"

instance FromJSON CommentSnippetModerationStatus where
    parseJSON = parseJSONText "CommentSnippetModerationStatus"

instance ToJSON CommentSnippetModerationStatus where
    toJSON = toJSONText

-- | Filter on the license of the videos.
data SearchListVideoLicense
    = SLVLAny
      -- ^ @any@
      -- Return all videos, regardless of which license they have, that match the
      -- query parameters.
    | SLVLYouTube
      -- ^ @youtube@
      -- Only return videos that have the standard YouTube license.
    | SLVLCreativeCommon
      -- ^ @creativeCommon@
      -- Only return videos that have a Creative Commons license. Users can reuse
      -- videos with this license in other videos that they create. Learn more.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchListVideoLicense

instance FromHttpApiData SearchListVideoLicense where
    parseQueryParam = \case
        "any" -> Right SLVLAny
        "youtube" -> Right SLVLYouTube
        "creativeCommon" -> Right SLVLCreativeCommon
        x -> Left ("Unable to parse SearchListVideoLicense from: " <> x)

instance ToHttpApiData SearchListVideoLicense where
    toQueryParam = \case
        SLVLAny -> "any"
        SLVLYouTube -> "youtube"
        SLVLCreativeCommon -> "creativeCommon"

instance FromJSON SearchListVideoLicense where
    parseJSON = parseJSONText "SearchListVideoLicense"

instance ToJSON SearchListVideoLicense where
    toJSON = toJSONText

-- | The type of message, this will always be present, it determines the
-- contents of the message as well as which fields will be present.
data LiveChatMessageSnippetType
    = LCMSTInvalidType
      -- ^ @invalidType@
    | LCMSTTextMessageEvent
      -- ^ @textMessageEvent@
    | LCMSTTombstone
      -- ^ @tombstone@
    | LCMSTFanFundingEvent
      -- ^ @fanFundingEvent@
    | LCMSTChatEndedEvent
      -- ^ @chatEndedEvent@
    | LCMSTSponsorOnlyModeStartedEvent
      -- ^ @sponsorOnlyModeStartedEvent@
    | LCMSTSponsorOnlyModeEndedEvent
      -- ^ @sponsorOnlyModeEndedEvent@
    | LCMSTNewSponsorEvent
      -- ^ @newSponsorEvent@
    | LCMSTMessageDeletedEvent
      -- ^ @messageDeletedEvent@
    | LCMSTMessageRetractedEvent
      -- ^ @messageRetractedEvent@
    | LCMSTUserBannedEvent
      -- ^ @userBannedEvent@
    | LCMSTSuperChatEvent
      -- ^ @superChatEvent@
    | LCMSTSuperStickerEvent
      -- ^ @superStickerEvent@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveChatMessageSnippetType

instance FromHttpApiData LiveChatMessageSnippetType where
    parseQueryParam = \case
        "invalidType" -> Right LCMSTInvalidType
        "textMessageEvent" -> Right LCMSTTextMessageEvent
        "tombstone" -> Right LCMSTTombstone
        "fanFundingEvent" -> Right LCMSTFanFundingEvent
        "chatEndedEvent" -> Right LCMSTChatEndedEvent
        "sponsorOnlyModeStartedEvent" -> Right LCMSTSponsorOnlyModeStartedEvent
        "sponsorOnlyModeEndedEvent" -> Right LCMSTSponsorOnlyModeEndedEvent
        "newSponsorEvent" -> Right LCMSTNewSponsorEvent
        "messageDeletedEvent" -> Right LCMSTMessageDeletedEvent
        "messageRetractedEvent" -> Right LCMSTMessageRetractedEvent
        "userBannedEvent" -> Right LCMSTUserBannedEvent
        "superChatEvent" -> Right LCMSTSuperChatEvent
        "superStickerEvent" -> Right LCMSTSuperStickerEvent
        x -> Left ("Unable to parse LiveChatMessageSnippetType from: " <> x)

instance ToHttpApiData LiveChatMessageSnippetType where
    toQueryParam = \case
        LCMSTInvalidType -> "invalidType"
        LCMSTTextMessageEvent -> "textMessageEvent"
        LCMSTTombstone -> "tombstone"
        LCMSTFanFundingEvent -> "fanFundingEvent"
        LCMSTChatEndedEvent -> "chatEndedEvent"
        LCMSTSponsorOnlyModeStartedEvent -> "sponsorOnlyModeStartedEvent"
        LCMSTSponsorOnlyModeEndedEvent -> "sponsorOnlyModeEndedEvent"
        LCMSTNewSponsorEvent -> "newSponsorEvent"
        LCMSTMessageDeletedEvent -> "messageDeletedEvent"
        LCMSTMessageRetractedEvent -> "messageRetractedEvent"
        LCMSTUserBannedEvent -> "userBannedEvent"
        LCMSTSuperChatEvent -> "superChatEvent"
        LCMSTSuperStickerEvent -> "superStickerEvent"

instance FromJSON LiveChatMessageSnippetType where
    parseJSON = parseJSONText "LiveChatMessageSnippetType"

instance ToJSON LiveChatMessageSnippetType where
    toJSON = toJSONText

data LiveStreamStatusStreamStatus
    = LSSSSCreated
      -- ^ @created@
    | LSSSSReady
      -- ^ @ready@
    | LSSSSActive
      -- ^ @active@
    | LSSSSInactive
      -- ^ @inactive@
    | LSSSSError'
      -- ^ @error@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LiveStreamStatusStreamStatus

instance FromHttpApiData LiveStreamStatusStreamStatus where
    parseQueryParam = \case
        "created" -> Right LSSSSCreated
        "ready" -> Right LSSSSReady
        "active" -> Right LSSSSActive
        "inactive" -> Right LSSSSInactive
        "error" -> Right LSSSSError'
        x -> Left ("Unable to parse LiveStreamStatusStreamStatus from: " <> x)

instance ToHttpApiData LiveStreamStatusStreamStatus where
    toQueryParam = \case
        LSSSSCreated -> "created"
        LSSSSReady -> "ready"
        LSSSSActive -> "active"
        LSSSSInactive -> "inactive"
        LSSSSError' -> "error"

instance FromJSON LiveStreamStatusStreamStatus where
    parseJSON = parseJSONText "LiveStreamStatusStreamStatus"

instance ToJSON LiveStreamStatusStreamStatus where
    toJSON = toJSONText

-- | The video\'s license. \'mutable youtube.videos.insert
-- youtube.videos.update
data VideoStatusLicense
    = YouTube
      -- ^ @youtube@
    | CreativeCommon
      -- ^ @creativeCommon@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoStatusLicense

instance FromHttpApiData VideoStatusLicense where
    parseQueryParam = \case
        "youtube" -> Right YouTube
        "creativeCommon" -> Right CreativeCommon
        x -> Left ("Unable to parse VideoStatusLicense from: " <> x)

instance ToHttpApiData VideoStatusLicense where
    toQueryParam = \case
        YouTube -> "youtube"
        CreativeCommon -> "creativeCommon"

instance FromJSON VideoStatusLicense where
    parseJSON = parseJSONText "VideoStatusLicense"

instance ToJSON VideoStatusLicense where
    toJSON = toJSONText

-- | The video\'s rating from Nigeria\'s National Film and Video Censors
-- Board.
data ContentRatingNfvcbRating
    = NfvcbUnspecified
      -- ^ @nfvcbUnspecified@
    | NfvcbG
      -- ^ @nfvcbG@
      -- G
    | NfvcbPg
      -- ^ @nfvcbPg@
      -- PG
    | NFVCB12
      -- ^ @nfvcb12@
      -- 12
    | Nfvcb12a
      -- ^ @nfvcb12a@
      -- 12A
    | NFVCB15
      -- ^ @nfvcb15@
      -- 15
    | NFVCB18
      -- ^ @nfvcb18@
      -- 18
    | NfvcbRe
      -- ^ @nfvcbRe@
      -- RE
    | NfvcbUnrated
      -- ^ @nfvcbUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingNfvcbRating

instance FromHttpApiData ContentRatingNfvcbRating where
    parseQueryParam = \case
        "nfvcbUnspecified" -> Right NfvcbUnspecified
        "nfvcbG" -> Right NfvcbG
        "nfvcbPg" -> Right NfvcbPg
        "nfvcb12" -> Right NFVCB12
        "nfvcb12a" -> Right Nfvcb12a
        "nfvcb15" -> Right NFVCB15
        "nfvcb18" -> Right NFVCB18
        "nfvcbRe" -> Right NfvcbRe
        "nfvcbUnrated" -> Right NfvcbUnrated
        x -> Left ("Unable to parse ContentRatingNfvcbRating from: " <> x)

instance ToHttpApiData ContentRatingNfvcbRating where
    toQueryParam = \case
        NfvcbUnspecified -> "nfvcbUnspecified"
        NfvcbG -> "nfvcbG"
        NfvcbPg -> "nfvcbPg"
        NFVCB12 -> "nfvcb12"
        Nfvcb12a -> "nfvcb12a"
        NFVCB15 -> "nfvcb15"
        NFVCB18 -> "nfvcb18"
        NfvcbRe -> "nfvcbRe"
        NfvcbUnrated -> "nfvcbUnrated"

instance FromJSON ContentRatingNfvcbRating where
    parseJSON = parseJSONText "ContentRatingNfvcbRating"

instance ToJSON ContentRatingNfvcbRating where
    toJSON = toJSONText

-- | The video\'s rating from Singapore\'s Media Development Authority (MDA)
-- and, specifically, it\'s Board of Film Censors (BFC).
data ContentRatingMdaRating
    = MdaUnspecified
      -- ^ @mdaUnspecified@
    | MdaG
      -- ^ @mdaG@
      -- G
    | MdaPg
      -- ^ @mdaPg@
      -- PG
    | MDAPG13
      -- ^ @mdaPg13@
      -- PG13
    | MDANC16
      -- ^ @mdaNc16@
      -- NC16
    | MDAM18
      -- ^ @mdaM18@
      -- M18
    | MDAR21
      -- ^ @mdaR21@
      -- R21
    | MdaUnrated
      -- ^ @mdaUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingMdaRating

instance FromHttpApiData ContentRatingMdaRating where
    parseQueryParam = \case
        "mdaUnspecified" -> Right MdaUnspecified
        "mdaG" -> Right MdaG
        "mdaPg" -> Right MdaPg
        "mdaPg13" -> Right MDAPG13
        "mdaNc16" -> Right MDANC16
        "mdaM18" -> Right MDAM18
        "mdaR21" -> Right MDAR21
        "mdaUnrated" -> Right MdaUnrated
        x -> Left ("Unable to parse ContentRatingMdaRating from: " <> x)

instance ToHttpApiData ContentRatingMdaRating where
    toQueryParam = \case
        MdaUnspecified -> "mdaUnspecified"
        MdaG -> "mdaG"
        MdaPg -> "mdaPg"
        MDAPG13 -> "mdaPg13"
        MDANC16 -> "mdaNc16"
        MDAM18 -> "mdaM18"
        MDAR21 -> "mdaR21"
        MdaUnrated -> "mdaUnrated"

instance FromJSON ContentRatingMdaRating where
    parseJSON = parseJSONText "ContentRatingMdaRating"

instance ToJSON ContentRatingMdaRating where
    toJSON = toJSONText

-- | The National Media Council ratings system for United Arab Emirates.
data ContentRatingNmcRating
    = NmcUnspecified
      -- ^ @nmcUnspecified@
    | NmcG
      -- ^ @nmcG@
      -- G
    | NmcPg
      -- ^ @nmcPg@
      -- PG
    | NMCPG13
      -- ^ @nmcPg13@
      -- PG-13
    | NMCPG15
      -- ^ @nmcPg15@
      -- PG-15
    | Nmc15plus
      -- ^ @nmc15plus@
      -- 15+
    | Nmc18plus
      -- ^ @nmc18plus@
      -- 18+
    | Nmc18tc
      -- ^ @nmc18tc@
      -- 18TC
    | NmcUnrated
      -- ^ @nmcUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingNmcRating

instance FromHttpApiData ContentRatingNmcRating where
    parseQueryParam = \case
        "nmcUnspecified" -> Right NmcUnspecified
        "nmcG" -> Right NmcG
        "nmcPg" -> Right NmcPg
        "nmcPg13" -> Right NMCPG13
        "nmcPg15" -> Right NMCPG15
        "nmc15plus" -> Right Nmc15plus
        "nmc18plus" -> Right Nmc18plus
        "nmc18tc" -> Right Nmc18tc
        "nmcUnrated" -> Right NmcUnrated
        x -> Left ("Unable to parse ContentRatingNmcRating from: " <> x)

instance ToHttpApiData ContentRatingNmcRating where
    toQueryParam = \case
        NmcUnspecified -> "nmcUnspecified"
        NmcG -> "nmcG"
        NmcPg -> "nmcPg"
        NMCPG13 -> "nmcPg13"
        NMCPG15 -> "nmcPg15"
        Nmc15plus -> "nmc15plus"
        Nmc18plus -> "nmc18plus"
        Nmc18tc -> "nmc18tc"
        NmcUnrated -> "nmcUnrated"

instance FromJSON ContentRatingNmcRating where
    parseJSON = parseJSONText "ContentRatingNmcRating"

instance ToJSON ContentRatingNmcRating where
    toJSON = toJSONText

-- | The video\'s Australian Classification Board (ACB) or Australian
-- Communications and Media Authority (ACMA) rating. ACMA ratings are used
-- to classify children\'s television programming.
data ContentRatingAcbRating
    = AcbUnspecified
      -- ^ @acbUnspecified@
    | AcbE
      -- ^ @acbE@
      -- E
    | AcbP
      -- ^ @acbP@
      -- Programs that have been given a P classification by the Australian
      -- Communications and Media Authority. These programs are intended for
      -- preschool children.
    | AcbC
      -- ^ @acbC@
      -- Programs that have been given a C classification by the Australian
      -- Communications and Media Authority. These programs are intended for
      -- children (other than preschool children) who are younger than 14 years
      -- of age.
    | AcbG
      -- ^ @acbG@
      -- G
    | AcbPg
      -- ^ @acbPg@
      -- PG
    | AcbM
      -- ^ @acbM@
      -- M
    | AcbMa15plus
      -- ^ @acbMa15plus@
      -- MA15+
    | AcbR18plus
      -- ^ @acbR18plus@
      -- R18+
    | AcbUnrated
      -- ^ @acbUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingAcbRating

instance FromHttpApiData ContentRatingAcbRating where
    parseQueryParam = \case
        "acbUnspecified" -> Right AcbUnspecified
        "acbE" -> Right AcbE
        "acbP" -> Right AcbP
        "acbC" -> Right AcbC
        "acbG" -> Right AcbG
        "acbPg" -> Right AcbPg
        "acbM" -> Right AcbM
        "acbMa15plus" -> Right AcbMa15plus
        "acbR18plus" -> Right AcbR18plus
        "acbUnrated" -> Right AcbUnrated
        x -> Left ("Unable to parse ContentRatingAcbRating from: " <> x)

instance ToHttpApiData ContentRatingAcbRating where
    toQueryParam = \case
        AcbUnspecified -> "acbUnspecified"
        AcbE -> "acbE"
        AcbP -> "acbP"
        AcbC -> "acbC"
        AcbG -> "acbG"
        AcbPg -> "acbPg"
        AcbM -> "acbM"
        AcbMa15plus -> "acbMa15plus"
        AcbR18plus -> "acbR18plus"
        AcbUnrated -> "acbUnrated"

instance FromJSON ContentRatingAcbRating where
    parseJSON = parseJSONText "ContentRatingAcbRating"

instance ToJSON ContentRatingAcbRating where
    toJSON = toJSONText

-- | The video\'s Departamento de Justiça, Classificação, Qualificação e
-- Títulos (DJCQT - Brazil) rating.
data ContentRatingDjctqRating
    = DjctqUnspecified
      -- ^ @djctqUnspecified@
    | DjctqL
      -- ^ @djctqL@
      -- L
    | DJCTQ10
      -- ^ @djctq10@
      -- 10
    | DJCTQ12
      -- ^ @djctq12@
      -- 12
    | DJCTQ14
      -- ^ @djctq14@
      -- 14
    | DJCTQ16
      -- ^ @djctq16@
      -- 16
    | DJCTQ18
      -- ^ @djctq18@
      -- 18
    | DjctqEr
      -- ^ @djctqEr@
    | DJCTQL10
      -- ^ @djctqL10@
    | DJCTQL12
      -- ^ @djctqL12@
    | DJCTQL14
      -- ^ @djctqL14@
    | DJCTQL16
      -- ^ @djctqL16@
    | DJCTQL18
      -- ^ @djctqL18@
    | DJCTQ1012
      -- ^ @djctq1012@
    | DJCTQ1014
      -- ^ @djctq1014@
    | DJCTQ1016
      -- ^ @djctq1016@
    | DJCTQ1018
      -- ^ @djctq1018@
    | DJCTQ1214
      -- ^ @djctq1214@
    | DJCTQ1216
      -- ^ @djctq1216@
    | DJCTQ1218
      -- ^ @djctq1218@
    | DJCTQ1416
      -- ^ @djctq1416@
    | DJCTQ1418
      -- ^ @djctq1418@
    | DJCTQ1618
      -- ^ @djctq1618@
    | DjctqUnrated
      -- ^ @djctqUnrated@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingDjctqRating

instance FromHttpApiData ContentRatingDjctqRating where
    parseQueryParam = \case
        "djctqUnspecified" -> Right DjctqUnspecified
        "djctqL" -> Right DjctqL
        "djctq10" -> Right DJCTQ10
        "djctq12" -> Right DJCTQ12
        "djctq14" -> Right DJCTQ14
        "djctq16" -> Right DJCTQ16
        "djctq18" -> Right DJCTQ18
        "djctqEr" -> Right DjctqEr
        "djctqL10" -> Right DJCTQL10
        "djctqL12" -> Right DJCTQL12
        "djctqL14" -> Right DJCTQL14
        "djctqL16" -> Right DJCTQL16
        "djctqL18" -> Right DJCTQL18
        "djctq1012" -> Right DJCTQ1012
        "djctq1014" -> Right DJCTQ1014
        "djctq1016" -> Right DJCTQ1016
        "djctq1018" -> Right DJCTQ1018
        "djctq1214" -> Right DJCTQ1214
        "djctq1216" -> Right DJCTQ1216
        "djctq1218" -> Right DJCTQ1218
        "djctq1416" -> Right DJCTQ1416
        "djctq1418" -> Right DJCTQ1418
        "djctq1618" -> Right DJCTQ1618
        "djctqUnrated" -> Right DjctqUnrated
        x -> Left ("Unable to parse ContentRatingDjctqRating from: " <> x)

instance ToHttpApiData ContentRatingDjctqRating where
    toQueryParam = \case
        DjctqUnspecified -> "djctqUnspecified"
        DjctqL -> "djctqL"
        DJCTQ10 -> "djctq10"
        DJCTQ12 -> "djctq12"
        DJCTQ14 -> "djctq14"
        DJCTQ16 -> "djctq16"
        DJCTQ18 -> "djctq18"
        DjctqEr -> "djctqEr"
        DJCTQL10 -> "djctqL10"
        DJCTQL12 -> "djctqL12"
        DJCTQL14 -> "djctqL14"
        DJCTQL16 -> "djctqL16"
        DJCTQL18 -> "djctqL18"
        DJCTQ1012 -> "djctq1012"
        DJCTQ1014 -> "djctq1014"
        DJCTQ1016 -> "djctq1016"
        DJCTQ1018 -> "djctq1018"
        DJCTQ1214 -> "djctq1214"
        DJCTQ1216 -> "djctq1216"
        DJCTQ1218 -> "djctq1218"
        DJCTQ1416 -> "djctq1416"
        DJCTQ1418 -> "djctq1418"
        DJCTQ1618 -> "djctq1618"
        DjctqUnrated -> "djctqUnrated"

instance FromJSON ContentRatingDjctqRating where
    parseJSON = parseJSONText "ContentRatingDjctqRating"

instance ToJSON ContentRatingDjctqRating where
    toJSON = toJSONText

-- | This value explains why a video failed to upload. This property is only
-- present if the uploadStatus property indicates that the upload failed.
data VideoStatusFailureReason
    = Conversion
      -- ^ @conversion@
      -- Unable to convert video content.
    | InvalidFile
      -- ^ @invalidFile@
      -- Invalid file format.
    | EmptyFile
      -- ^ @emptyFile@
      -- Empty file.
    | TooSmall
      -- ^ @tooSmall@
      -- File was too small.
    | Codec
      -- ^ @codec@
      -- Unsupported codec.
    | UploadAborted
      -- ^ @uploadAborted@
      -- Upload wasn\'t finished.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoStatusFailureReason

instance FromHttpApiData VideoStatusFailureReason where
    parseQueryParam = \case
        "conversion" -> Right Conversion
        "invalidFile" -> Right InvalidFile
        "emptyFile" -> Right EmptyFile
        "tooSmall" -> Right TooSmall
        "codec" -> Right Codec
        "uploadAborted" -> Right UploadAborted
        x -> Left ("Unable to parse VideoStatusFailureReason from: " <> x)

instance ToHttpApiData VideoStatusFailureReason where
    toQueryParam = \case
        Conversion -> "conversion"
        InvalidFile -> "invalidFile"
        EmptyFile -> "emptyFile"
        TooSmall -> "tooSmall"
        Codec -> "codec"
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
    = CatvUnspecified
      -- ^ @catvUnspecified@
    | CatvC
      -- ^ @catvC@
      -- C
    | CATVC8
      -- ^ @catvC8@
      -- C8
    | CatvG
      -- ^ @catvG@
      -- G
    | CatvPg
      -- ^ @catvPg@
      -- PG
    | Catv14plus
      -- ^ @catv14plus@
      -- 14+
    | Catv18plus
      -- ^ @catv18plus@
      -- 18+
    | CatvUnrated
      -- ^ @catvUnrated@
    | CatvE
      -- ^ @catvE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContentRatingCatvRating

instance FromHttpApiData ContentRatingCatvRating where
    parseQueryParam = \case
        "catvUnspecified" -> Right CatvUnspecified
        "catvC" -> Right CatvC
        "catvC8" -> Right CATVC8
        "catvG" -> Right CatvG
        "catvPg" -> Right CatvPg
        "catv14plus" -> Right Catv14plus
        "catv18plus" -> Right Catv18plus
        "catvUnrated" -> Right CatvUnrated
        "catvE" -> Right CatvE
        x -> Left ("Unable to parse ContentRatingCatvRating from: " <> x)

instance ToHttpApiData ContentRatingCatvRating where
    toQueryParam = \case
        CatvUnspecified -> "catvUnspecified"
        CatvC -> "catvC"
        CATVC8 -> "catvC8"
        CatvG -> "catvG"
        CatvPg -> "catvPg"
        Catv14plus -> "catv14plus"
        Catv18plus -> "catv18plus"
        CatvUnrated -> "catvUnrated"
        CatvE -> "catvE"

instance FromJSON ContentRatingCatvRating where
    parseJSON = parseJSONText "ContentRatingCatvRating"

instance ToJSON ContentRatingCatvRating where
    toJSON = toJSONText
