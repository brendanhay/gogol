{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PlayMoviesPartner.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PlayMoviesPartner.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Work type as enumerated in EMA.
data AvailWorkType
    = TitleTypeUnspecified
      -- ^ @TITLE_TYPE_UNSPECIFIED@
      -- Value could not be determined, please contact technical support if it
      -- should.
    | Movie
      -- ^ @MOVIE@
      -- A movie picture.
    | Season
      -- ^ @SEASON@
      -- A season of a TV show.
    | Episode
      -- ^ @EPISODE@
      -- An episode of a TV show.
    | Bundle
      -- ^ @BUNDLE@
      -- A collection of movies, i.e. \"Googlers 1 and Googlers, the return\"
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AvailWorkType

instance FromHttpApiData AvailWorkType where
    parseQueryParam = \case
        "TITLE_TYPE_UNSPECIFIED" -> Right TitleTypeUnspecified
        "MOVIE" -> Right Movie
        "SEASON" -> Right Season
        "EPISODE" -> Right Episode
        "BUNDLE" -> Right Bundle
        x -> Left ("Unable to parse AvailWorkType from: " <> x)

instance ToHttpApiData AvailWorkType where
    toQueryParam = \case
        TitleTypeUnspecified -> "TITLE_TYPE_UNSPECIFIED"
        Movie -> "MOVIE"
        Season -> "SEASON"
        Episode -> "EPISODE"
        Bundle -> "BUNDLE"

instance FromJSON AvailWorkType where
    parseJSON = parseJSONText "AvailWorkType"

instance ToJSON AvailWorkType where
    toJSON = toJSONText

-- | High-level status of the order.
data OrderStatus
    = StatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- Value could not be determined, please contact technical support if it
      -- should.
    | StatusApproved
      -- ^ @STATUS_APPROVED@
      -- Approved by Google.
    | StatusFailed
      -- ^ @STATUS_FAILED@
      -- Waiting for partner to re-deliver the asset after a rejection by Google.
    | StatusProcessing
      -- ^ @STATUS_PROCESSING@
      -- Waiting for Google to process the asset.
    | StatusUnfulfilled
      -- ^ @STATUS_UNFULFILLED@
      -- Waiting for partner to deliver the asset.
    | StatusNotAvailable
      -- ^ @STATUS_NOT_AVAILABLE@
      -- Used when Status is not available (i.e: Orders for TV Seasons).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderStatus

instance FromHttpApiData OrderStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right StatusUnspecified
        "STATUS_APPROVED" -> Right StatusApproved
        "STATUS_FAILED" -> Right StatusFailed
        "STATUS_PROCESSING" -> Right StatusProcessing
        "STATUS_UNFULFILLED" -> Right StatusUnfulfilled
        "STATUS_NOT_AVAILABLE" -> Right StatusNotAvailable
        x -> Left ("Unable to parse OrderStatus from: " <> x)

instance ToHttpApiData OrderStatus where
    toQueryParam = \case
        StatusUnspecified -> "STATUS_UNSPECIFIED"
        StatusApproved -> "STATUS_APPROVED"
        StatusFailed -> "STATUS_FAILED"
        StatusProcessing -> "STATUS_PROCESSING"
        StatusUnfulfilled -> "STATUS_UNFULFILLED"
        StatusNotAvailable -> "STATUS_NOT_AVAILABLE"

instance FromJSON OrderStatus where
    parseJSON = parseJSONText "OrderStatus"

instance ToJSON OrderStatus where
    toJSON = toJSONText

-- | Indicates the format profile covered by the transaction.
data AvailFormatProFile
    = FormatProFileUnspecified
      -- ^ @FORMAT_PROFILE_UNSPECIFIED@
      -- Value could not be determined, please contact technical support if it
      -- should.
    | SD
      -- ^ @SD@
      -- Standard-definition format.
    | HD
      -- ^ @HD@
      -- High-definition format.
    | Uhd
      -- ^ @UHD@
      -- 4K UHD.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AvailFormatProFile

instance FromHttpApiData AvailFormatProFile where
    parseQueryParam = \case
        "FORMAT_PROFILE_UNSPECIFIED" -> Right FormatProFileUnspecified
        "SD" -> Right SD
        "HD" -> Right HD
        "UHD" -> Right Uhd
        x -> Left ("Unable to parse AvailFormatProFile from: " <> x)

instance ToHttpApiData AvailFormatProFile where
    toQueryParam = \case
        FormatProFileUnspecified -> "FORMAT_PROFILE_UNSPECIFIED"
        SD -> "SD"
        HD -> "HD"
        Uhd -> "UHD"

instance FromJSON AvailFormatProFile where
    parseJSON = parseJSONText "AvailFormatProFile"

instance ToJSON AvailFormatProFile where
    toJSON = toJSONText

-- | Type of the Edit linked to the Order.
data OrderType
    = OTTitleTypeUnspecified
      -- ^ @TITLE_TYPE_UNSPECIFIED@
      -- Value could not be determined, please contact technical support if it
      -- should.
    | OTMovie
      -- ^ @MOVIE@
      -- A movie picture.
    | OTSeason
      -- ^ @SEASON@
      -- A season of a TV show.
    | OTEpisode
      -- ^ @EPISODE@
      -- An episode of a TV show.
    | OTBundle
      -- ^ @BUNDLE@
      -- A collection of movies, i.e. \"Googlers 1 and Googlers, the return\"
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderType

instance FromHttpApiData OrderType where
    parseQueryParam = \case
        "TITLE_TYPE_UNSPECIFIED" -> Right OTTitleTypeUnspecified
        "MOVIE" -> Right OTMovie
        "SEASON" -> Right OTSeason
        "EPISODE" -> Right OTEpisode
        "BUNDLE" -> Right OTBundle
        x -> Left ("Unable to parse OrderType from: " <> x)

instance ToHttpApiData OrderType where
    toQueryParam = \case
        OTTitleTypeUnspecified -> "TITLE_TYPE_UNSPECIFIED"
        OTMovie -> "MOVIE"
        OTSeason -> "SEASON"
        OTEpisode -> "EPISODE"
        OTBundle -> "BUNDLE"

instance FromJSON OrderType where
    parseJSON = parseJSONText "OrderType"

instance ToJSON OrderType where
    toJSON = toJSONText

-- | Edit type, like Movie, Episode or Season.
data StoreInfoType
    = SITTitleTypeUnspecified
      -- ^ @TITLE_TYPE_UNSPECIFIED@
      -- Value could not be determined, please contact technical support if it
      -- should.
    | SITMovie
      -- ^ @MOVIE@
      -- A movie picture.
    | SITSeason
      -- ^ @SEASON@
      -- A season of a TV show.
    | SITEpisode
      -- ^ @EPISODE@
      -- An episode of a TV show.
    | SITBundle
      -- ^ @BUNDLE@
      -- A collection of movies, i.e. \"Googlers 1 and Googlers, the return\"
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable StoreInfoType

instance FromHttpApiData StoreInfoType where
    parseQueryParam = \case
        "TITLE_TYPE_UNSPECIFIED" -> Right SITTitleTypeUnspecified
        "MOVIE" -> Right SITMovie
        "SEASON" -> Right SITSeason
        "EPISODE" -> Right SITEpisode
        "BUNDLE" -> Right SITBundle
        x -> Left ("Unable to parse StoreInfoType from: " <> x)

instance ToHttpApiData StoreInfoType where
    toQueryParam = \case
        SITTitleTypeUnspecified -> "TITLE_TYPE_UNSPECIFIED"
        SITMovie -> "MOVIE"
        SITSeason -> "SEASON"
        SITEpisode -> "EPISODE"
        SITBundle -> "BUNDLE"

instance FromJSON StoreInfoType where
    parseJSON = parseJSONText "StoreInfoType"

instance ToJSON StoreInfoType where
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

-- | A simpler representation of the priority.
data OrderNormalizedPriority
    = NormalizedPriorityUnspecified
      -- ^ @NORMALIZED_PRIORITY_UNSPECIFIED@
      -- Value could not be determined, please contact technical support if it
      -- should.
    | LowPriority
      -- ^ @LOW_PRIORITY@
      -- A low-priority asset, typically from a library movie.
    | HighPriority
      -- ^ @HIGH_PRIORITY@
      -- A high-priority asset, typically from a new release or box office hit.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderNormalizedPriority

instance FromHttpApiData OrderNormalizedPriority where
    parseQueryParam = \case
        "NORMALIZED_PRIORITY_UNSPECIFIED" -> Right NormalizedPriorityUnspecified
        "LOW_PRIORITY" -> Right LowPriority
        "HIGH_PRIORITY" -> Right HighPriority
        x -> Left ("Unable to parse OrderNormalizedPriority from: " <> x)

instance ToHttpApiData OrderNormalizedPriority where
    toQueryParam = \case
        NormalizedPriorityUnspecified -> "NORMALIZED_PRIORITY_UNSPECIFIED"
        LowPriority -> "LOW_PRIORITY"
        HighPriority -> "HIGH_PRIORITY"

instance FromJSON OrderNormalizedPriority where
    parseJSON = parseJSONText "OrderNormalizedPriority"

instance ToJSON OrderNormalizedPriority where
    toJSON = toJSONText

-- | Type of transaction.
data AvailLicenseType
    = LicenseTypeUnspecified
      -- ^ @LICENSE_TYPE_UNSPECIFIED@
      -- Value could not be determined, please contact technical support if it
      -- should.
    | Est
      -- ^ @EST@
      -- Electronic Sell Through - purchase policy for unlimited viewing.
    | Vod
      -- ^ @VOD@
      -- Video On Demand - rental policy for temporary viewing.
    | Svod
      -- ^ @SVOD@
      -- Subscription Video On Demand - used for subscription platforms. Not
      -- supported on Google Play.
    | Poest
      -- ^ @POEST@
      -- Pre-order Electronic Sell Through - pre-order purchase only window.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AvailLicenseType

instance FromHttpApiData AvailLicenseType where
    parseQueryParam = \case
        "LICENSE_TYPE_UNSPECIFIED" -> Right LicenseTypeUnspecified
        "EST" -> Right Est
        "VOD" -> Right Vod
        "SVOD" -> Right Svod
        "POEST" -> Right Poest
        x -> Left ("Unable to parse AvailLicenseType from: " <> x)

instance ToHttpApiData AvailLicenseType where
    toQueryParam = \case
        LicenseTypeUnspecified -> "LICENSE_TYPE_UNSPECIFIED"
        Est -> "EST"
        Vod -> "VOD"
        Svod -> "SVOD"
        Poest -> "POEST"

instance FromJSON AvailLicenseType where
    parseJSON = parseJSONText "AvailLicenseType"

instance ToJSON AvailLicenseType where
    toJSON = toJSONText

-- | Detailed status of the order
data OrderStatusDetail
    = OrderStatusUnspecified
      -- ^ @ORDER_STATUS_UNSPECIFIED@
      -- Value could not be determined, please contact technical support if it
      -- should.
    | OrderStatusQcApproved
      -- ^ @ORDER_STATUS_QC_APPROVED@
      -- Approved by Google\'s Quality Control team.
    | OrderStatusQcRejection
      -- ^ @ORDER_STATUS_QC_REJECTION@
      -- Rejected by Google\'s Quality Control team, pending partner redelivery.
    | OrderStatusInternalFix
      -- ^ @ORDER_STATUS_INTERNAL_FIX@
      -- Internal error while processing the Order.
    | OrderStatusOpenOrder
      -- ^ @ORDER_STATUS_OPEN_ORDER@
      -- Waiting for initial delivery from partner.
    | OrderStatusNotAvailable
      -- ^ @ORDER_STATUS_NOT_AVAILABLE@
      -- Used on Orders that do not have Status, like TV Seasons.
    | OrderStatusAwaitingRedelivery
      -- ^ @ORDER_STATUS_AWAITING_REDELIVERY@
      -- Waiting for re-delivery from partner.
    | OrderStatusReadyForQc
      -- ^ @ORDER_STATUS_READY_FOR_QC@
      -- Asset was delivered by partner, but is being reviewed by Google\'s
      -- Quality Control team.
    | OrderStatusFileProcessing
      -- ^ @ORDER_STATUS_FILE_PROCESSING@
      -- Waiting for Google to process the asset.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderStatusDetail

instance FromHttpApiData OrderStatusDetail where
    parseQueryParam = \case
        "ORDER_STATUS_UNSPECIFIED" -> Right OrderStatusUnspecified
        "ORDER_STATUS_QC_APPROVED" -> Right OrderStatusQcApproved
        "ORDER_STATUS_QC_REJECTION" -> Right OrderStatusQcRejection
        "ORDER_STATUS_INTERNAL_FIX" -> Right OrderStatusInternalFix
        "ORDER_STATUS_OPEN_ORDER" -> Right OrderStatusOpenOrder
        "ORDER_STATUS_NOT_AVAILABLE" -> Right OrderStatusNotAvailable
        "ORDER_STATUS_AWAITING_REDELIVERY" -> Right OrderStatusAwaitingRedelivery
        "ORDER_STATUS_READY_FOR_QC" -> Right OrderStatusReadyForQc
        "ORDER_STATUS_FILE_PROCESSING" -> Right OrderStatusFileProcessing
        x -> Left ("Unable to parse OrderStatusDetail from: " <> x)

instance ToHttpApiData OrderStatusDetail where
    toQueryParam = \case
        OrderStatusUnspecified -> "ORDER_STATUS_UNSPECIFIED"
        OrderStatusQcApproved -> "ORDER_STATUS_QC_APPROVED"
        OrderStatusQcRejection -> "ORDER_STATUS_QC_REJECTION"
        OrderStatusInternalFix -> "ORDER_STATUS_INTERNAL_FIX"
        OrderStatusOpenOrder -> "ORDER_STATUS_OPEN_ORDER"
        OrderStatusNotAvailable -> "ORDER_STATUS_NOT_AVAILABLE"
        OrderStatusAwaitingRedelivery -> "ORDER_STATUS_AWAITING_REDELIVERY"
        OrderStatusReadyForQc -> "ORDER_STATUS_READY_FOR_QC"
        OrderStatusFileProcessing -> "ORDER_STATUS_FILE_PROCESSING"

instance FromJSON OrderStatusDetail where
    parseJSON = parseJSONText "OrderStatusDetail"

instance ToJSON OrderStatusDetail where
    toJSON = toJSONText
