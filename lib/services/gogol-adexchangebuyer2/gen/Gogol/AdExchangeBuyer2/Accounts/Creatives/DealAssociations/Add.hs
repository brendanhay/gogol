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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.Add
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associate an existing deal with a creative.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.dealAssociations.add@.
module Gogol.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.Add
  ( -- * Resource
    AdExchangeBuyer2AccountsCreativesDealAssociationsAddResource,

    -- ** Constructing a Request
    AdExchangeBuyer2AccountsCreativesDealAssociationsAdd (..),
    newAdExchangeBuyer2AccountsCreativesDealAssociationsAdd,
  )
where

import Gogol.AdExchangeBuyer2.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer2.accounts.creatives.dealAssociations.add@ method which the
-- 'AdExchangeBuyer2AccountsCreativesDealAssociationsAdd' request conforms to.
type AdExchangeBuyer2AccountsCreativesDealAssociationsAddResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "creatives"
    Core.:> Core.Capture "creativeId" Core.Text
    Core.:> "dealAssociations:add"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AddDealAssociationRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Associate an existing deal with a creative.
--
-- /See:/ 'newAdExchangeBuyer2AccountsCreativesDealAssociationsAdd' smart constructor.
data AdExchangeBuyer2AccountsCreativesDealAssociationsAdd = AdExchangeBuyer2AccountsCreativesDealAssociationsAdd
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The account the creative belongs to.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the creative associated with the deal.
    creativeId :: Core.Text,
    -- | Multipart request metadata.
    payload :: AddDealAssociationRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsCreativesDealAssociationsAdd' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsCreativesDealAssociationsAdd ::
  -- |  The account the creative belongs to. See 'accountId'.
  Core.Text ->
  -- |  The ID of the creative associated with the deal. See 'creativeId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AddDealAssociationRequest ->
  AdExchangeBuyer2AccountsCreativesDealAssociationsAdd
newAdExchangeBuyer2AccountsCreativesDealAssociationsAdd
  accountId
  creativeId
  payload =
    AdExchangeBuyer2AccountsCreativesDealAssociationsAdd
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        accountId = accountId,
        callback = Core.Nothing,
        creativeId = creativeId,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsCreativesDealAssociationsAdd
  where
  type
    Rs AdExchangeBuyer2AccountsCreativesDealAssociationsAdd =
      Empty
  type
    Scopes AdExchangeBuyer2AccountsCreativesDealAssociationsAdd =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyer2AccountsCreativesDealAssociationsAdd {..} =
      go
        accountId
        creativeId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        adExchangeBuyer2Service
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyer2AccountsCreativesDealAssociationsAddResource
            )
            Core.mempty
