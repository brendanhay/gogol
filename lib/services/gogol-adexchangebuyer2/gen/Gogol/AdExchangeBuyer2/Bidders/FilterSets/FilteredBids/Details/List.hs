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
-- Module      : Gogol.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.Details.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all details associated with a specific reason for which bids were filtered, with the number of bids filtered for each detail.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.filteredBids.details.list@.
module Gogol.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.Details.List
  ( -- * Resource
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsListResource,

    -- ** Constructing a Request
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList (..),
    newAdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList,
  )
where

import Gogol.AdExchangeBuyer2.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.filteredBids.details.list@ method which the
-- 'AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList' request conforms to.
type AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsListResource =
  "v2beta1"
    Core.:> Core.Capture "filterSetName" Core.Text
    Core.:> "filteredBids"
    Core.:> Core.Capture "creativeStatusId" Core.Int32
    Core.:> "details"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListCreativeStatusBreakdownByDetailResponse

-- | List all details associated with a specific reason for which bids were filtered, with the number of bids filtered for each detail.
--
-- /See:/ 'newAdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList' smart constructor.
data AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList = AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the creative status for which to retrieve a breakdown by detail. See <https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes creative-status-codes>. Details are only available for statuses 10, 14, 15, 17, 18, 19, 86, and 87.
    creativeStatusId :: Core.Int32,
    -- | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set for bidder 123: @bidders\/123\/filterSets\/abc@ - For an account-level filter set for the buyer account representing bidder 123: @bidders\/123\/accounts\/123\/filterSets\/abc@ - For an account-level filter set for the child seat buyer account 456 whose bidder is 123: @bidders\/123\/accounts\/456\/filterSets\/abc@
    filterSetName :: Core.Text,
    -- | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results the server should return. Typically, this is the value of ListCreativeStatusBreakdownByDetailResponse.nextPageToken returned from the previous call to the filteredBids.details.list method.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList' with the minimum fields required to make a request.
newAdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList ::
  -- |  The ID of the creative status for which to retrieve a breakdown by detail. See <https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes creative-status-codes>. Details are only available for statuses 10, 14, 15, 17, 18, 19, 86, and 87. See 'creativeStatusId'.
  Core.Int32 ->
  -- |  Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set for bidder 123: @bidders\/123\/filterSets\/abc@ - For an account-level filter set for the buyer account representing bidder 123: @bidders\/123\/accounts\/123\/filterSets\/abc@ - For an account-level filter set for the child seat buyer account 456 whose bidder is 123: @bidders\/123\/accounts\/456\/filterSets\/abc@ See 'filterSetName'.
  Core.Text ->
  AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList
newAdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList
  creativeStatusId
  filterSetName =
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        creativeStatusId = creativeStatusId,
        filterSetName = filterSetName,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList
  where
  type
    Rs AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList =
      ListCreativeStatusBreakdownByDetailResponse
  type
    Scopes
      AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsList {..} =
      go
        filterSetName
        creativeStatusId
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        adExchangeBuyer2Service
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyer2BiddersFilterSetsFilteredBidsDetailsListResource
            )
            Core.mempty
