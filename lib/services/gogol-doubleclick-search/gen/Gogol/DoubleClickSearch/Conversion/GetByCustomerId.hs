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
-- Module      : Gogol.DoubleClickSearch.Conversion.GetByCustomerId
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of conversions from a DoubleClick Search engine account.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.conversion.getByCustomerId@.
module Gogol.DoubleClickSearch.Conversion.GetByCustomerId
  ( -- * Resource
    DoubleClickSearchConversionGetByCustomerIdResource,

    -- ** Constructing a Request
    DoubleClickSearchConversionGetByCustomerId (..),
    newDoubleClickSearchConversionGetByCustomerId,
  )
where

import Gogol.DoubleClickSearch.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @doubleclicksearch.conversion.getByCustomerId@ method which the
-- 'DoubleClickSearchConversionGetByCustomerId' request conforms to.
type DoubleClickSearchConversionGetByCustomerIdResource =
  "doubleclicksearch"
    Core.:> "v2"
    Core.:> "customer"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> "conversion"
    Core.:> Core.QueryParam "endDate" Core.Int32
    Core.:> Core.QueryParam "rowCount" Core.Int32
    Core.:> Core.QueryParam "startDate" Core.Int32
    Core.:> Core.QueryParam "startRow" Core.Word32
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "adGroupId" Core.Int64
    Core.:> Core.QueryParam "adId" Core.Int64
    Core.:> Core.QueryParam "advertiserId" Core.Int64
    Core.:> Core.QueryParam "agencyId" Core.Int64
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "campaignId" Core.Int64
    Core.:> Core.QueryParam "criterionId" Core.Int64
    Core.:> Core.QueryParam "engineAccountId" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ConversionList

-- | Retrieves a list of conversions from a DoubleClick Search engine account.
--
-- /See:/ 'newDoubleClickSearchConversionGetByCustomerId' smart constructor.
data DoubleClickSearchConversionGetByCustomerId = DoubleClickSearchConversionGetByCustomerId
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Numeric ID of the ad group.
    adGroupId :: (Core.Maybe Core.Int64),
    -- | Numeric ID of the ad.
    adId :: (Core.Maybe Core.Int64),
    -- | Numeric ID of the advertiser.
    advertiserId :: (Core.Maybe Core.Int64),
    -- | Numeric ID of the agency.
    agencyId :: (Core.Maybe Core.Int64),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Numeric ID of the campaign.
    campaignId :: (Core.Maybe Core.Int64),
    -- | Numeric ID of the criterion.
    criterionId :: (Core.Maybe Core.Int64),
    -- | Customer ID of a client account in the new Search Ads 360 experience.
    customerId :: Core.Text,
    -- | Last date (inclusive) on which to retrieve conversions. Format is yyyymmdd.
    endDate :: Core.Int32,
    -- | Numeric ID of the engine account.
    engineAccountId :: (Core.Maybe Core.Int64),
    -- | The number of conversions to return per call.
    rowCount :: Core.Int32,
    -- | First date (inclusive) on which to retrieve conversions. Format is yyyymmdd.
    startDate :: Core.Int32,
    -- | The 0-based starting index for retrieving conversions results.
    startRow :: Core.Word32,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleClickSearchConversionGetByCustomerId' with the minimum fields required to make a request.
newDoubleClickSearchConversionGetByCustomerId ::
  -- |  Customer ID of a client account in the new Search Ads 360 experience. See 'customerId'.
  Core.Text ->
  -- |  Last date (inclusive) on which to retrieve conversions. Format is yyyymmdd. See 'endDate'.
  Core.Int32 ->
  -- |  The number of conversions to return per call. See 'rowCount'.
  Core.Int32 ->
  -- |  First date (inclusive) on which to retrieve conversions. Format is yyyymmdd. See 'startDate'.
  Core.Int32 ->
  -- |  The 0-based starting index for retrieving conversions results. See 'startRow'.
  Core.Word32 ->
  DoubleClickSearchConversionGetByCustomerId
newDoubleClickSearchConversionGetByCustomerId
  customerId
  endDate
  rowCount
  startDate
  startRow =
    DoubleClickSearchConversionGetByCustomerId
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        adGroupId = Core.Nothing,
        adId = Core.Nothing,
        advertiserId = Core.Nothing,
        agencyId = Core.Nothing,
        callback = Core.Nothing,
        campaignId = Core.Nothing,
        criterionId = Core.Nothing,
        customerId = customerId,
        endDate = endDate,
        engineAccountId = Core.Nothing,
        rowCount = rowCount,
        startDate = startDate,
        startRow = startRow,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DoubleClickSearchConversionGetByCustomerId
  where
  type Rs DoubleClickSearchConversionGetByCustomerId = ConversionList
  type
    Scopes DoubleClickSearchConversionGetByCustomerId =
      '[Doubleclicksearch'FullControl]
  requestClient DoubleClickSearchConversionGetByCustomerId {..} =
    go
      customerId
      (Core.Just endDate)
      (Core.Just rowCount)
      (Core.Just startDate)
      (Core.Just startRow)
      xgafv
      accessToken
      adGroupId
      adId
      advertiserId
      agencyId
      callback
      campaignId
      criterionId
      engineAccountId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      doubleClickSearchService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DoubleClickSearchConversionGetByCustomerIdResource
          )
          Core.mempty
