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
-- Module      : Gogol.Vault.Matters.Holds.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the scope (organizational unit or accounts) and query parameters of a hold. You cannot add accounts to a hold that covers an organizational unit, nor can you add organizational units to a hold that covers individual accounts. If you try, the unsupported values are ignored.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.holds.update@.
module Gogol.Vault.Matters.Holds.Update
  ( -- * Resource
    VaultMattersHoldsUpdateResource,

    -- ** Constructing a Request
    VaultMattersHoldsUpdate (..),
    newVaultMattersHoldsUpdate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.holds.update@ method which the
-- 'VaultMattersHoldsUpdate' request conforms to.
type VaultMattersHoldsUpdateResource =
  "v1"
    Core.:> "matters"
    Core.:> Core.Capture "matterId" Core.Text
    Core.:> "holds"
    Core.:> Core.Capture "holdId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Hold
    Core.:> Core.Put '[Core.JSON] Hold

-- | Updates the scope (organizational unit or accounts) and query parameters of a hold. You cannot add accounts to a hold that covers an organizational unit, nor can you add organizational units to a hold that covers individual accounts. If you try, the unsupported values are ignored.
--
-- /See:/ 'newVaultMattersHoldsUpdate' smart constructor.
data VaultMattersHoldsUpdate = VaultMattersHoldsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the hold.
    holdId :: Core.Text,
    -- | The matter ID.
    matterId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Hold,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersHoldsUpdate' with the minimum fields required to make a request.
newVaultMattersHoldsUpdate ::
  -- |  The ID of the hold. See 'holdId'.
  Core.Text ->
  -- |  The matter ID. See 'matterId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Hold ->
  VaultMattersHoldsUpdate
newVaultMattersHoldsUpdate holdId matterId payload =
  VaultMattersHoldsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      holdId = holdId,
      matterId = matterId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest VaultMattersHoldsUpdate where
  type Rs VaultMattersHoldsUpdate = Hold
  type
    Scopes VaultMattersHoldsUpdate =
      '[Ediscovery'FullControl]
  requestClient VaultMattersHoldsUpdate {..} =
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
              Core.Proxy VaultMattersHoldsUpdateResource
          )
          Core.mempty
