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
-- Module      : Network.Google.AdExchangeBuyer2.Bidders.Accounts.FilterSets.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all filter sets for the account with the given account ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.list@.
module Network.Google.AdExchangeBuyer2.Bidders.Accounts.FilterSets.List
  ( -- * Resource
    AdExchangeBuyer2BiddersAccountsFilterSetsListResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2BiddersAccountsFilterSetsList,
    AdExchangeBuyer2BiddersAccountsFilterSetsList,
  )
where

import Network.Google.AdExchangeBuyer2.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.list@ method which the
-- 'AdExchangeBuyer2BiddersAccountsFilterSetsList' request conforms to.
type AdExchangeBuyer2BiddersAccountsFilterSetsListResource =
  "v2beta1"
    Core.:> Core.Capture "ownerName" Core.Text
    Core.:> "filterSets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListFilterSetsResponse

-- | Lists all filter sets for the account with the given account ID.
--
-- /See:/ 'newAdExchangeBuyer2BiddersAccountsFilterSetsList' smart constructor.
data AdExchangeBuyer2BiddersAccountsFilterSetsList = AdExchangeBuyer2BiddersAccountsFilterSetsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the owner (bidder or account) of the filter sets to be listed. For example: - For a bidder-level filter set for bidder 123: @bidders\/123@ - For an account-level filter set for the buyer account representing bidder 123: @bidders\/123\/accounts\/123@ - For an account-level filter set for the child seat buyer account 456 whose bidder is 123: @bidders\/123\/accounts\/456@
    ownerName :: Core.Text,
    -- | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results the server should return. Typically, this is the value of ListFilterSetsResponse.nextPageToken returned from the previous call to the accounts.filterSets.list method.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2BiddersAccountsFilterSetsList' with the minimum fields required to make a request.
newAdExchangeBuyer2BiddersAccountsFilterSetsList ::
  -- |  Name of the owner (bidder or account) of the filter sets to be listed. For example: - For a bidder-level filter set for bidder 123: @bidders\/123@ - For an account-level filter set for the buyer account representing bidder 123: @bidders\/123\/accounts\/123@ - For an account-level filter set for the child seat buyer account 456 whose bidder is 123: @bidders\/123\/accounts\/456@ See 'ownerName'.
  Core.Text ->
  AdExchangeBuyer2BiddersAccountsFilterSetsList
newAdExchangeBuyer2BiddersAccountsFilterSetsList ownerName =
  AdExchangeBuyer2BiddersAccountsFilterSetsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      ownerName = ownerName,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2BiddersAccountsFilterSetsList
  where
  type
    Rs AdExchangeBuyer2BiddersAccountsFilterSetsList =
      ListFilterSetsResponse
  type
    Scopes
      AdExchangeBuyer2BiddersAccountsFilterSetsList =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient
    AdExchangeBuyer2BiddersAccountsFilterSetsList {..} =
      go
        ownerName
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
                  AdExchangeBuyer2BiddersAccountsFilterSetsListResource
            )
            Core.mempty
