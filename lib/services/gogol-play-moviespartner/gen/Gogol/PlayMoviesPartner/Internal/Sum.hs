{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.PlayMoviesPartner.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.PlayMoviesPartner.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Avail_FormatProfile
    Avail_FormatProfile
      ( Avail_FormatProfile_FORMATPROFILEUNSPECIFIED,
        Avail_FormatProfile_SD,
        Avail_FormatProfile_HD,
        Avail_FormatProfile_Uhd,
        ..
      ),

    -- * Avail_LicenseType
    Avail_LicenseType
      ( Avail_LicenseType_LICENSETYPEUNSPECIFIED,
        Avail_LicenseType_Est,
        Avail_LicenseType_Vod,
        Avail_LicenseType_Svod,
        Avail_LicenseType_Poest,
        ..
      ),

    -- * Avail_WorkType
    Avail_WorkType
      ( Avail_WorkType_TITLETYPEUNSPECIFIED,
        Avail_WorkType_Movie,
        Avail_WorkType_Season,
        Avail_WorkType_Episode,
        Avail_WorkType_Bundle,
        ..
      ),

    -- * Order_NormalizedPriority
    Order_NormalizedPriority
      ( Order_NormalizedPriority_NORMALIZEDPRIORITYUNSPECIFIED,
        Order_NormalizedPriority_LOWPRIORITY,
        Order_NormalizedPriority_HIGHPRIORITY,
        ..
      ),

    -- * Order_Status
    Order_Status
      ( Order_Status_STATUSUNSPECIFIED,
        Order_Status_STATUSAPPROVED,
        Order_Status_STATUSFAILED,
        Order_Status_STATUSPROCESSING,
        Order_Status_STATUSUNFULFILLED,
        Order_Status_STATUSNOTAVAILABLE,
        ..
      ),

    -- * Order_StatusDetail
    Order_StatusDetail
      ( Order_StatusDetail_ORDERSTATUSUNSPECIFIED,
        Order_StatusDetail_ORDERSTATUSQCAPPROVED,
        Order_StatusDetail_ORDERSTATUSQCREJECTION,
        Order_StatusDetail_ORDERSTATUSINTERNALFIX,
        Order_StatusDetail_ORDERSTATUSOPENORDER,
        Order_StatusDetail_ORDERSTATUSNOTAVAILABLE,
        Order_StatusDetail_ORDERSTATUSAWAITINGREDELIVERY,
        Order_StatusDetail_ORDERSTATUSREADYFORQC,
        Order_StatusDetail_ORDERSTATUSFILEPROCESSING,
        ..
      ),

    -- * Order_Type
    Order_Type
      ( Order_Type_TITLETYPEUNSPECIFIED,
        Order_Type_Movie,
        Order_Type_Season,
        Order_Type_Episode,
        Order_Type_Bundle,
        ..
      ),

    -- * StoreInfo_Type
    StoreInfo_Type
      ( StoreInfo_Type_TITLETYPEUNSPECIFIED,
        StoreInfo_Type_Movie,
        StoreInfo_Type_Season,
        StoreInfo_Type_Episode,
        StoreInfo_Type_Bundle,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Indicates the format profile covered by the transaction.
newtype Avail_FormatProfile = Avail_FormatProfile {fromAvail_FormatProfile :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Value could not be determined, please contact technical support if it should.
pattern Avail_FormatProfile_FORMATPROFILEUNSPECIFIED :: Avail_FormatProfile
pattern Avail_FormatProfile_FORMATPROFILEUNSPECIFIED = Avail_FormatProfile "FORMAT_PROFILE_UNSPECIFIED"

-- | Standard-definition format.
pattern Avail_FormatProfile_SD :: Avail_FormatProfile
pattern Avail_FormatProfile_SD = Avail_FormatProfile "SD"

-- | High-definition format.
pattern Avail_FormatProfile_HD :: Avail_FormatProfile
pattern Avail_FormatProfile_HD = Avail_FormatProfile "HD"

-- | 4K UHD.
pattern Avail_FormatProfile_Uhd :: Avail_FormatProfile
pattern Avail_FormatProfile_Uhd = Avail_FormatProfile "UHD"

{-# COMPLETE
  Avail_FormatProfile_FORMATPROFILEUNSPECIFIED,
  Avail_FormatProfile_SD,
  Avail_FormatProfile_HD,
  Avail_FormatProfile_Uhd,
  Avail_FormatProfile
  #-}

-- | Type of transaction.
newtype Avail_LicenseType = Avail_LicenseType {fromAvail_LicenseType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Value could not be determined, please contact technical support if it should.
pattern Avail_LicenseType_LICENSETYPEUNSPECIFIED :: Avail_LicenseType
pattern Avail_LicenseType_LICENSETYPEUNSPECIFIED = Avail_LicenseType "LICENSE_TYPE_UNSPECIFIED"

-- | Electronic Sell Through - purchase policy for unlimited viewing.
pattern Avail_LicenseType_Est :: Avail_LicenseType
pattern Avail_LicenseType_Est = Avail_LicenseType "EST"

-- | Video On Demand - rental policy for temporary viewing.
pattern Avail_LicenseType_Vod :: Avail_LicenseType
pattern Avail_LicenseType_Vod = Avail_LicenseType "VOD"

-- | Subscription Video On Demand - used for subscription platforms. Not supported on Google Play.
pattern Avail_LicenseType_Svod :: Avail_LicenseType
pattern Avail_LicenseType_Svod = Avail_LicenseType "SVOD"

-- | Pre-order Electronic Sell Through - pre-order purchase only window.
pattern Avail_LicenseType_Poest :: Avail_LicenseType
pattern Avail_LicenseType_Poest = Avail_LicenseType "POEST"

{-# COMPLETE
  Avail_LicenseType_LICENSETYPEUNSPECIFIED,
  Avail_LicenseType_Est,
  Avail_LicenseType_Vod,
  Avail_LicenseType_Svod,
  Avail_LicenseType_Poest,
  Avail_LicenseType
  #-}

-- | Work type as enumerated in EMA.
newtype Avail_WorkType = Avail_WorkType {fromAvail_WorkType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Value could not be determined, please contact technical support if it should.
pattern Avail_WorkType_TITLETYPEUNSPECIFIED :: Avail_WorkType
pattern Avail_WorkType_TITLETYPEUNSPECIFIED = Avail_WorkType "TITLE_TYPE_UNSPECIFIED"

-- | A movie picture.
pattern Avail_WorkType_Movie :: Avail_WorkType
pattern Avail_WorkType_Movie = Avail_WorkType "MOVIE"

-- | A season of a TV show.
pattern Avail_WorkType_Season :: Avail_WorkType
pattern Avail_WorkType_Season = Avail_WorkType "SEASON"

-- | An episode of a TV show.
pattern Avail_WorkType_Episode :: Avail_WorkType
pattern Avail_WorkType_Episode = Avail_WorkType "EPISODE"

-- | A collection of movies, i.e. \"Googlers 1 and Googlers, the return\"
pattern Avail_WorkType_Bundle :: Avail_WorkType
pattern Avail_WorkType_Bundle = Avail_WorkType "BUNDLE"

{-# COMPLETE
  Avail_WorkType_TITLETYPEUNSPECIFIED,
  Avail_WorkType_Movie,
  Avail_WorkType_Season,
  Avail_WorkType_Episode,
  Avail_WorkType_Bundle,
  Avail_WorkType
  #-}

-- | A simpler representation of the priority.
newtype Order_NormalizedPriority = Order_NormalizedPriority {fromOrder_NormalizedPriority :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Value could not be determined, please contact technical support if it should.
pattern Order_NormalizedPriority_NORMALIZEDPRIORITYUNSPECIFIED :: Order_NormalizedPriority
pattern Order_NormalizedPriority_NORMALIZEDPRIORITYUNSPECIFIED = Order_NormalizedPriority "NORMALIZED_PRIORITY_UNSPECIFIED"

-- | A low-priority asset, typically from a library movie.
pattern Order_NormalizedPriority_LOWPRIORITY :: Order_NormalizedPriority
pattern Order_NormalizedPriority_LOWPRIORITY = Order_NormalizedPriority "LOW_PRIORITY"

-- | A high-priority asset, typically from a new release or box office hit.
pattern Order_NormalizedPriority_HIGHPRIORITY :: Order_NormalizedPriority
pattern Order_NormalizedPriority_HIGHPRIORITY = Order_NormalizedPriority "HIGH_PRIORITY"

{-# COMPLETE
  Order_NormalizedPriority_NORMALIZEDPRIORITYUNSPECIFIED,
  Order_NormalizedPriority_LOWPRIORITY,
  Order_NormalizedPriority_HIGHPRIORITY,
  Order_NormalizedPriority
  #-}

-- | High-level status of the order.
newtype Order_Status = Order_Status {fromOrder_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Value could not be determined, please contact technical support if it should.
pattern Order_Status_STATUSUNSPECIFIED :: Order_Status
pattern Order_Status_STATUSUNSPECIFIED = Order_Status "STATUS_UNSPECIFIED"

-- | Approved by Google.
pattern Order_Status_STATUSAPPROVED :: Order_Status
pattern Order_Status_STATUSAPPROVED = Order_Status "STATUS_APPROVED"

-- | Waiting for partner to re-deliver the asset after a rejection by Google.
pattern Order_Status_STATUSFAILED :: Order_Status
pattern Order_Status_STATUSFAILED = Order_Status "STATUS_FAILED"

-- | Waiting for Google to process the asset.
pattern Order_Status_STATUSPROCESSING :: Order_Status
pattern Order_Status_STATUSPROCESSING = Order_Status "STATUS_PROCESSING"

-- | Waiting for partner to deliver the asset.
pattern Order_Status_STATUSUNFULFILLED :: Order_Status
pattern Order_Status_STATUSUNFULFILLED = Order_Status "STATUS_UNFULFILLED"

-- | Used when Status is not available (i.e: Orders for TV Seasons).
pattern Order_Status_STATUSNOTAVAILABLE :: Order_Status
pattern Order_Status_STATUSNOTAVAILABLE = Order_Status "STATUS_NOT_AVAILABLE"

{-# COMPLETE
  Order_Status_STATUSUNSPECIFIED,
  Order_Status_STATUSAPPROVED,
  Order_Status_STATUSFAILED,
  Order_Status_STATUSPROCESSING,
  Order_Status_STATUSUNFULFILLED,
  Order_Status_STATUSNOTAVAILABLE,
  Order_Status
  #-}

-- | Detailed status of the order
newtype Order_StatusDetail = Order_StatusDetail {fromOrder_StatusDetail :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Value could not be determined, please contact technical support if it should.
pattern Order_StatusDetail_ORDERSTATUSUNSPECIFIED :: Order_StatusDetail
pattern Order_StatusDetail_ORDERSTATUSUNSPECIFIED = Order_StatusDetail "ORDER_STATUS_UNSPECIFIED"

-- | Approved by Google\'s Quality Control team.
pattern Order_StatusDetail_ORDERSTATUSQCAPPROVED :: Order_StatusDetail
pattern Order_StatusDetail_ORDERSTATUSQCAPPROVED = Order_StatusDetail "ORDER_STATUS_QC_APPROVED"

-- | Rejected by Google\'s Quality Control team, pending partner redelivery.
pattern Order_StatusDetail_ORDERSTATUSQCREJECTION :: Order_StatusDetail
pattern Order_StatusDetail_ORDERSTATUSQCREJECTION = Order_StatusDetail "ORDER_STATUS_QC_REJECTION"

-- | Internal error while processing the Order.
pattern Order_StatusDetail_ORDERSTATUSINTERNALFIX :: Order_StatusDetail
pattern Order_StatusDetail_ORDERSTATUSINTERNALFIX = Order_StatusDetail "ORDER_STATUS_INTERNAL_FIX"

-- | Waiting for initial delivery from partner.
pattern Order_StatusDetail_ORDERSTATUSOPENORDER :: Order_StatusDetail
pattern Order_StatusDetail_ORDERSTATUSOPENORDER = Order_StatusDetail "ORDER_STATUS_OPEN_ORDER"

-- | Used on Orders that do not have Status, like TV Seasons.
pattern Order_StatusDetail_ORDERSTATUSNOTAVAILABLE :: Order_StatusDetail
pattern Order_StatusDetail_ORDERSTATUSNOTAVAILABLE = Order_StatusDetail "ORDER_STATUS_NOT_AVAILABLE"

-- | Waiting for re-delivery from partner.
pattern Order_StatusDetail_ORDERSTATUSAWAITINGREDELIVERY :: Order_StatusDetail
pattern Order_StatusDetail_ORDERSTATUSAWAITINGREDELIVERY = Order_StatusDetail "ORDER_STATUS_AWAITING_REDELIVERY"

-- | Asset was delivered by partner, but is being reviewed by Google\'s Quality Control team.
pattern Order_StatusDetail_ORDERSTATUSREADYFORQC :: Order_StatusDetail
pattern Order_StatusDetail_ORDERSTATUSREADYFORQC = Order_StatusDetail "ORDER_STATUS_READY_FOR_QC"

-- | Waiting for Google to process the asset.
pattern Order_StatusDetail_ORDERSTATUSFILEPROCESSING :: Order_StatusDetail
pattern Order_StatusDetail_ORDERSTATUSFILEPROCESSING = Order_StatusDetail "ORDER_STATUS_FILE_PROCESSING"

{-# COMPLETE
  Order_StatusDetail_ORDERSTATUSUNSPECIFIED,
  Order_StatusDetail_ORDERSTATUSQCAPPROVED,
  Order_StatusDetail_ORDERSTATUSQCREJECTION,
  Order_StatusDetail_ORDERSTATUSINTERNALFIX,
  Order_StatusDetail_ORDERSTATUSOPENORDER,
  Order_StatusDetail_ORDERSTATUSNOTAVAILABLE,
  Order_StatusDetail_ORDERSTATUSAWAITINGREDELIVERY,
  Order_StatusDetail_ORDERSTATUSREADYFORQC,
  Order_StatusDetail_ORDERSTATUSFILEPROCESSING,
  Order_StatusDetail
  #-}

-- | Type of the Edit linked to the Order.
newtype Order_Type = Order_Type {fromOrder_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Value could not be determined, please contact technical support if it should.
pattern Order_Type_TITLETYPEUNSPECIFIED :: Order_Type
pattern Order_Type_TITLETYPEUNSPECIFIED = Order_Type "TITLE_TYPE_UNSPECIFIED"

-- | A movie picture.
pattern Order_Type_Movie :: Order_Type
pattern Order_Type_Movie = Order_Type "MOVIE"

-- | A season of a TV show.
pattern Order_Type_Season :: Order_Type
pattern Order_Type_Season = Order_Type "SEASON"

-- | An episode of a TV show.
pattern Order_Type_Episode :: Order_Type
pattern Order_Type_Episode = Order_Type "EPISODE"

-- | A collection of movies, i.e. \"Googlers 1 and Googlers, the return\"
pattern Order_Type_Bundle :: Order_Type
pattern Order_Type_Bundle = Order_Type "BUNDLE"

{-# COMPLETE
  Order_Type_TITLETYPEUNSPECIFIED,
  Order_Type_Movie,
  Order_Type_Season,
  Order_Type_Episode,
  Order_Type_Bundle,
  Order_Type
  #-}

-- | Edit type, like Movie, Episode or Season.
newtype StoreInfo_Type = StoreInfo_Type {fromStoreInfo_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Value could not be determined, please contact technical support if it should.
pattern StoreInfo_Type_TITLETYPEUNSPECIFIED :: StoreInfo_Type
pattern StoreInfo_Type_TITLETYPEUNSPECIFIED = StoreInfo_Type "TITLE_TYPE_UNSPECIFIED"

-- | A movie picture.
pattern StoreInfo_Type_Movie :: StoreInfo_Type
pattern StoreInfo_Type_Movie = StoreInfo_Type "MOVIE"

-- | A season of a TV show.
pattern StoreInfo_Type_Season :: StoreInfo_Type
pattern StoreInfo_Type_Season = StoreInfo_Type "SEASON"

-- | An episode of a TV show.
pattern StoreInfo_Type_Episode :: StoreInfo_Type
pattern StoreInfo_Type_Episode = StoreInfo_Type "EPISODE"

-- | A collection of movies, i.e. \"Googlers 1 and Googlers, the return\"
pattern StoreInfo_Type_Bundle :: StoreInfo_Type
pattern StoreInfo_Type_Bundle = StoreInfo_Type "BUNDLE"

{-# COMPLETE
  StoreInfo_Type_TITLETYPEUNSPECIFIED,
  StoreInfo_Type_Movie,
  StoreInfo_Type_Season,
  StoreInfo_Type_Episode,
  StoreInfo_Type_Bundle,
  StoreInfo_Type
  #-}
