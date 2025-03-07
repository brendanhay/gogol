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
-- Module      : Gogol.PlayMoviesPartner.Accounts.Orders.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get an Order given its id.
--
-- See /Authentication and Authorization rules/ and /Get methods rules/ for more information about this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.orders.get@.
module Gogol.PlayMoviesPartner.Accounts.Orders.Get
  ( -- * Resource
    PlayMoviesPartnerAccountsOrdersGetResource,

    -- ** Constructing a Request
    PlayMoviesPartnerAccountsOrdersGet (..),
    newPlayMoviesPartnerAccountsOrdersGet,
  )
where

import Gogol.PlayMoviesPartner.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @playmoviespartner.accounts.orders.get@ method which the
-- 'PlayMoviesPartnerAccountsOrdersGet' request conforms to.
type PlayMoviesPartnerAccountsOrdersGetResource =
  "v1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "orders"
    Core.:> Core.Capture "orderId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "bearer_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pp" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Order

-- | Get an Order given its id.
--
-- See /Authentication and Authorization rules/ and /Get methods rules/ for more information about this method.
--
-- /See:/ 'newPlayMoviesPartnerAccountsOrdersGet' smart constructor.
data PlayMoviesPartnerAccountsOrdersGet = PlayMoviesPartnerAccountsOrdersGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | REQUIRED. See /General rules/ for more information about this field.
    accountId :: Core.Text,
    -- | OAuth bearer token.
    bearerToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | REQUIRED. Order ID.
    orderId :: Core.Text,
    -- | Pretty-print response.
    pp :: Core.Bool,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayMoviesPartnerAccountsOrdersGet' with the minimum fields required to make a request.
newPlayMoviesPartnerAccountsOrdersGet ::
  -- |  REQUIRED. See /General rules/ for more information about this field. See 'accountId'.
  Core.Text ->
  -- |  REQUIRED. Order ID. See 'orderId'.
  Core.Text ->
  PlayMoviesPartnerAccountsOrdersGet
newPlayMoviesPartnerAccountsOrdersGet accountId orderId =
  PlayMoviesPartnerAccountsOrdersGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      bearerToken = Core.Nothing,
      callback = Core.Nothing,
      orderId = orderId,
      pp = Core.True,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PlayMoviesPartnerAccountsOrdersGet where
  type Rs PlayMoviesPartnerAccountsOrdersGet = Order
  type
    Scopes PlayMoviesPartnerAccountsOrdersGet =
      '[PlaymoviesPartner'Readonly]
  requestClient PlayMoviesPartnerAccountsOrdersGet {..} =
    go
      accountId
      orderId
      xgafv
      accessToken
      bearerToken
      callback
      (Core.Just pp)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      playMoviesPartnerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PlayMoviesPartnerAccountsOrdersGetResource
          )
          Core.mempty
