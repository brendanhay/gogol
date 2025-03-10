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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Creatives.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a creative.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.create@.
module Gogol.AdExchangeBuyer2.Accounts.Creatives.Create
  ( -- * Resource
    AdExchangeBuyer2AccountsCreativesCreateResource,

    -- ** Constructing a Request
    AdExchangeBuyer2AccountsCreativesCreate (..),
    newAdExchangeBuyer2AccountsCreativesCreate,
  )
where

import Gogol.AdExchangeBuyer2.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer2.accounts.creatives.create@ method which the
-- 'AdExchangeBuyer2AccountsCreativesCreate' request conforms to.
type AdExchangeBuyer2AccountsCreativesCreateResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "creatives"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "duplicateIdMode"
              AccountsCreativesCreateDuplicateIdMode
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Creative
    Core.:> Core.Post '[Core.JSON] Creative

-- | Creates a creative.
--
-- /See:/ 'newAdExchangeBuyer2AccountsCreativesCreate' smart constructor.
data AdExchangeBuyer2AccountsCreativesCreate = AdExchangeBuyer2AccountsCreativesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The account that this creative belongs to. Can be used to filter the response of the creatives.list method.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Indicates if multiple creatives can share an ID or not. Default is NO_DUPLICATES (one ID per creative).
    duplicateIdMode :: (Core.Maybe AccountsCreativesCreateDuplicateIdMode),
    -- | Multipart request metadata.
    payload :: Creative,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsCreativesCreate' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsCreativesCreate ::
  -- |  The account that this creative belongs to. Can be used to filter the response of the creatives.list method. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Creative ->
  AdExchangeBuyer2AccountsCreativesCreate
newAdExchangeBuyer2AccountsCreativesCreate accountId payload =
  AdExchangeBuyer2AccountsCreativesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      duplicateIdMode = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdExchangeBuyer2AccountsCreativesCreate where
  type Rs AdExchangeBuyer2AccountsCreativesCreate = Creative
  type
    Scopes AdExchangeBuyer2AccountsCreativesCreate =
      '[Adexchange'Buyer]
  requestClient AdExchangeBuyer2AccountsCreativesCreate {..} =
    go
      accountId
      xgafv
      accessToken
      callback
      duplicateIdMode
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adExchangeBuyer2Service
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyer2AccountsCreativesCreateResource
          )
          Core.mempty
