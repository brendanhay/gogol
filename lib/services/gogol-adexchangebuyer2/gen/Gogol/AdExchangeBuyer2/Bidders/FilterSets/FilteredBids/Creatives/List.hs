{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.Creatives.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all creatives associated with a specific reason for which bids were filtered, with the number of bids filtered for each creative.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.filteredBids.creatives.list@.
module Gogol.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.Creatives.List
    (
    -- * Resource
      AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesListResource

    -- ** Constructing a Request
    , newAdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList
    , AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer2.Types

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.filteredBids.creatives.list@ method which the
-- 'AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList' request conforms to.
type AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesListResource
     =
     "v2beta1" Core.:>
       Core.Capture "filterSetName" Core.Text Core.:>
         "filteredBids" Core.:>
           Core.Capture "creativeStatusId" Core.Int32 Core.:>
             "creatives" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "pageSize" Core.Int32 Core.:>
                       Core.QueryParam "pageToken" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON]
                                 ListCreativeStatusBreakdownByCreativeResponse

-- | List all creatives associated with a specific reason for which bids were filtered, with the number of bids filtered for each creative.
--
-- /See:/ 'newAdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList' smart constructor.
data AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList = AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the creative status for which to retrieve a breakdown by creative. See <https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes creative-status-codes>.
    , creativeStatusId :: Core.Int32
      -- | Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set for bidder 123: @bidders\/123\/filterSets\/abc@ - For an account-level filter set for the buyer account representing bidder 123: @bidders\/123\/accounts\/123\/filterSets\/abc@ - For an account-level filter set for the child seat buyer account 456 whose bidder is 123: @bidders\/123\/accounts\/456\/filterSets\/abc@
    , filterSetName :: Core.Text
      -- | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appropriate default.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A token identifying a page of results the server should return. Typically, this is the value of ListCreativeStatusBreakdownByCreativeResponse.nextPageToken returned from the previous call to the filteredBids.creatives.list method.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList' with the minimum fields required to make a request.
newAdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList 
    ::  Core.Int32
       -- ^  The ID of the creative status for which to retrieve a breakdown by creative. See <https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes creative-status-codes>. See 'creativeStatusId'.
    -> Core.Text
       -- ^  Name of the filter set that should be applied to the requested metrics. For example: - For a bidder-level filter set for bidder 123: @bidders\/123\/filterSets\/abc@ - For an account-level filter set for the buyer account representing bidder 123: @bidders\/123\/accounts\/123\/filterSets\/abc@ - For an account-level filter set for the child seat buyer account 456 whose bidder is 123: @bidders\/123\/accounts\/456\/filterSets\/abc@ See 'filterSetName'.
    -> AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList
newAdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList creativeStatusId filterSetName =
  AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , creativeStatusId = creativeStatusId
    , filterSetName = filterSetName
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList
         where
        type Rs
               AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList
             = ListCreativeStatusBreakdownByCreativeResponse
        type Scopes
               AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesList{..}
          = go filterSetName creativeStatusId xgafv accessToken
              callback
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adExchangeBuyer2Service
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeBuyer2BiddersFilterSetsFilteredBidsCreativesListResource)
                      Core.mempty

