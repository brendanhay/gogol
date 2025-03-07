{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all creative-deal associations.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.dealAssociations.list@.
module Gogol.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.List
  ( -- * Resource
    AdExchangeBuyer2AccountsCreativesDealAssociationsListResource,

    -- ** Constructing a Request
    AdExchangeBuyer2AccountsCreativesDealAssociationsList (..),
    newAdExchangeBuyer2AccountsCreativesDealAssociationsList,
  )
where

import Gogol.AdExchangeBuyer2.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer2.accounts.creatives.dealAssociations.list@ method which the
-- 'AdExchangeBuyer2AccountsCreativesDealAssociationsList' request conforms to.
type AdExchangeBuyer2AccountsCreativesDealAssociationsListResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "creatives"
    Core.:> Core.Capture "creativeId" Core.Text
    Core.:> "dealAssociations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDealAssociationsResponse

-- | List all creative-deal associations.
--
-- /See:/ 'newAdExchangeBuyer2AccountsCreativesDealAssociationsList' smart constructor.
data AdExchangeBuyer2AccountsCreativesDealAssociationsList = AdExchangeBuyer2AccountsCreativesDealAssociationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The account to list the associations from. Specify \"-\" to list all creatives the current user has access to.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The creative ID to list the associations from. Specify \"-\" to list all creatives under the above account.
    creativeId :: Core.Text,
    -- | Requested page size. Server may return fewer associations than requested. If unspecified, server will pick an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results the server should return. Typically, this is the value of ListDealAssociationsResponse.next/page/token returned from the previous call to \'ListDealAssociations\' method.
    pageToken :: (Core.Maybe Core.Text),
    -- | An optional query string to filter deal associations. If no filter is specified, all associations will be returned. Supported queries are: - accountId=/account/id/string/ - creativeId=/creative/id/string/ - dealsId=/deals/id/string/ - dealsStatus:{approved, conditionally/approved, disapproved, not/checked} - openAuctionStatus:{approved, conditionally/approved, disapproved, not/checked} Example: \'dealsId=12345 AND dealsStatus:disapproved\'
    query :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsCreativesDealAssociationsList' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsCreativesDealAssociationsList ::
  -- |  The account to list the associations from. Specify \"-\" to list all creatives the current user has access to. See 'accountId'.
  Core.Text ->
  -- |  The creative ID to list the associations from. Specify \"-\" to list all creatives under the above account. See 'creativeId'.
  Core.Text ->
  AdExchangeBuyer2AccountsCreativesDealAssociationsList
newAdExchangeBuyer2AccountsCreativesDealAssociationsList
  accountId
  creativeId =
    AdExchangeBuyer2AccountsCreativesDealAssociationsList
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        accountId = accountId,
        callback = Core.Nothing,
        creativeId = creativeId,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        query = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsCreativesDealAssociationsList
  where
  type
    Rs AdExchangeBuyer2AccountsCreativesDealAssociationsList =
      ListDealAssociationsResponse
  type
    Scopes AdExchangeBuyer2AccountsCreativesDealAssociationsList =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyer2AccountsCreativesDealAssociationsList {..} =
      go
        accountId
        creativeId
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        query
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        adExchangeBuyer2Service
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyer2AccountsCreativesDealAssociationsListResource
            )
            Core.mempty
