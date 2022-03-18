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
-- Module      : Gogol.Vault.Matters.Holds.RemoveHeldAccounts
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified accounts from a hold. Returns a list of statuses in the same order as the request.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.holds.removeHeldAccounts@.
module Gogol.Vault.Matters.Holds.RemoveHeldAccounts
  ( -- * Resource
    VaultMattersHoldsRemoveHeldAccountsResource,

    -- ** Constructing a Request
    newVaultMattersHoldsRemoveHeldAccounts,
    VaultMattersHoldsRemoveHeldAccounts,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.holds.removeHeldAccounts@ method which the
-- 'VaultMattersHoldsRemoveHeldAccounts' request conforms to.
type VaultMattersHoldsRemoveHeldAccountsResource =
  "v1"
    Core.:> "matters"
    Core.:> Core.Capture "matterId" Core.Text
    Core.:> "holds"
    Core.:> Core.CaptureMode
              "holdId"
              "removeHeldAccounts"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RemoveHeldAccountsRequest
    Core.:> Core.Post '[Core.JSON] RemoveHeldAccountsResponse

-- | Removes the specified accounts from a hold. Returns a list of statuses in the same order as the request.
--
-- /See:/ 'newVaultMattersHoldsRemoveHeldAccounts' smart constructor.
data VaultMattersHoldsRemoveHeldAccounts = VaultMattersHoldsRemoveHeldAccounts
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
    payload :: RemoveHeldAccountsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersHoldsRemoveHeldAccounts' with the minimum fields required to make a request.
newVaultMattersHoldsRemoveHeldAccounts ::
  -- |  The hold ID. See 'holdId'.
  Core.Text ->
  -- |  The matter ID. See 'matterId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RemoveHeldAccountsRequest ->
  VaultMattersHoldsRemoveHeldAccounts
newVaultMattersHoldsRemoveHeldAccounts holdId matterId payload =
  VaultMattersHoldsRemoveHeldAccounts
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      holdId = holdId,
      matterId = matterId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    VaultMattersHoldsRemoveHeldAccounts
  where
  type
    Rs VaultMattersHoldsRemoveHeldAccounts =
      RemoveHeldAccountsResponse
  type
    Scopes VaultMattersHoldsRemoveHeldAccounts =
      '["https://www.googleapis.com/auth/ediscovery"]
  requestClient VaultMattersHoldsRemoveHeldAccounts {..} =
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
          ( Core.Proxy ::
              Core.Proxy
                VaultMattersHoldsRemoveHeldAccountsResource
          )
          Core.mempty
