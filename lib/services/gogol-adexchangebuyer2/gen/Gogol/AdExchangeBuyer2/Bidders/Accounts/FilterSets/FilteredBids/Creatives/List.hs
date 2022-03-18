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
-- Module      : Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.Creatives.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all creatives associated with a specific reason for which bids were filtered, with the number of bids filtered for each creative.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.filteredBids.creatives.list@.
module Gogol.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.Creatives.List
  ( -- * Resource
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesListResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList,
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.filteredBids.creatives.list@ method which the
-- 'AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList' request conforms to.
type AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesListResource =
  "v2beta1"
    Core.:> Core.Capture "filterSetName" Core.Text
    Core.:> "filteredBids"
    Core.:> Core.Capture "creativeStatusId" Core.Int32
    Core.:> "creatives"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListCreativeStatusBreakdownByCreativeResponse

-- | List all creatives associated with a specific reason for which bids were filtered, with the number of bids filtered for each creative.
--
-- /See:/ 'newAdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList' smart constructor.
data AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList = AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the creative status for which to retrieve a breakdown by creative. See <https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes creative-status-codes>.
    creativeStatusId :: Core.Int32,
    -- | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set for bidder 123: @bidders\/123\/filterSets\/abc@ - For an account-level filter set for the buyer account representing bidder 123: @bidders\/123\/accounts\/123\/filterSets\/abc@ - For an account-level filter set for the child seat buyer account 456 whose bidder is 123: @bidders\/123\/accounts\/456\/filterSets\/abc@
    filterSetName :: Core.Text,
    -- | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results the server should return. Typically, this is the value of ListCreativeStatusBreakdownByCreativeResponse.nextPageToken returned from the previous call to the filteredBids.creatives.list method.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList' with the minimum fields required to make a request.
newAdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList ::
  -- |  The ID of the creative status for which to retrieve a breakdown by creative. See <https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes creative-status-codes>. See 'creativeStatusId'.
  Core.Int32 ->
  -- |  Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set for bidder 123: @bidders\/123\/filterSets\/abc@ - For an account-level filter set for the buyer account representing bidder 123: @bidders\/123\/accounts\/123\/filterSets\/abc@ - For an account-level filter set for the child seat buyer account 456 whose bidder is 123: @bidders\/123\/accounts\/456\/filterSets\/abc@ See 'filterSetName'.
  Core.Text ->
  AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList
newAdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList creativeStatusId filterSetName =
  AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList
    { xgafv = Core.Nothing,
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
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList
  where
  type
    Rs
      AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList =
      ListCreativeStatusBreakdownByCreativeResponse
  type
    Scopes
      AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient
    AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesList {..} =
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
                  AdExchangeBuyer2BiddersAccountsFilterSetsFilteredBidsCreativesListResource
            )
            Core.mempty
