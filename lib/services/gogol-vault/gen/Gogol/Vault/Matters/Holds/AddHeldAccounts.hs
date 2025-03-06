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
-- Module      : Gogol.Vault.Matters.Holds.AddHeldAccounts
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds accounts to a hold. Returns a list of accounts that have been successfully added. Accounts can be added only to an existing account-based hold.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.holds.addHeldAccounts@.
module Gogol.Vault.Matters.Holds.AddHeldAccounts
  ( -- * Resource
    VaultMattersHoldsAddHeldAccountsResource,

    -- ** Constructing a Request
    VaultMattersHoldsAddHeldAccounts (..),
    newVaultMattersHoldsAddHeldAccounts,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.holds.addHeldAccounts@ method which the
-- 'VaultMattersHoldsAddHeldAccounts' request conforms to.
type VaultMattersHoldsAddHeldAccountsResource =
  "v1"
    Core.:> "matters"
    Core.:> Core.Capture "matterId" Core.Text
    Core.:> "holds"
    Core.:> Core.CaptureMode "holdId" "addHeldAccounts" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AddHeldAccountsRequest
    Core.:> Core.Post '[Core.JSON] AddHeldAccountsResponse

-- | Adds accounts to a hold. Returns a list of accounts that have been successfully added. Accounts can be added only to an existing account-based hold.
--
-- /See:/ 'newVaultMattersHoldsAddHeldAccounts' smart constructor.
data VaultMattersHoldsAddHeldAccounts = VaultMattersHoldsAddHeldAccounts
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The hold ID.
    holdId :: Core.Text,
    -- | The matter ID.
    matterId :: Core.Text,
    -- | Multipart request metadata.
    payload :: AddHeldAccountsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersHoldsAddHeldAccounts' with the minimum fields required to make a request.
newVaultMattersHoldsAddHeldAccounts ::
  -- |  The hold ID. See 'holdId'.
  Core.Text ->
  -- |  The matter ID. See 'matterId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AddHeldAccountsRequest ->
  VaultMattersHoldsAddHeldAccounts
newVaultMattersHoldsAddHeldAccounts holdId matterId payload =
  VaultMattersHoldsAddHeldAccounts
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      holdId = holdId,
      matterId = matterId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest VaultMattersHoldsAddHeldAccounts where
  type Rs VaultMattersHoldsAddHeldAccounts = AddHeldAccountsResponse
  type
    Scopes VaultMattersHoldsAddHeldAccounts =
      '[Ediscovery'FullControl]
  requestClient VaultMattersHoldsAddHeldAccounts {..} =
    go
      matterId
      holdId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      vaultService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy VaultMattersHoldsAddHeldAccountsResource)
          Core.mempty
