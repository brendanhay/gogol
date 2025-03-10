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
-- Module      : Gogol.Vault.Matters.Undelete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes the specified matter. Returns the matter with updated state.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.undelete@.
module Gogol.Vault.Matters.Undelete
  ( -- * Resource
    VaultMattersUndeleteResource,

    -- ** Constructing a Request
    VaultMattersUndelete (..),
    newVaultMattersUndelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.undelete@ method which the
-- 'VaultMattersUndelete' request conforms to.
type VaultMattersUndeleteResource =
  "v1"
    Core.:> "matters"
    Core.:> Core.CaptureMode "matterId" "undelete" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UndeleteMatterRequest
    Core.:> Core.Post '[Core.JSON] Matter

-- | Undeletes the specified matter. Returns the matter with updated state.
--
-- /See:/ 'newVaultMattersUndelete' smart constructor.
data VaultMattersUndelete = VaultMattersUndelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The matter ID.
    matterId :: Core.Text,
    -- | Multipart request metadata.
    payload :: UndeleteMatterRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersUndelete' with the minimum fields required to make a request.
newVaultMattersUndelete ::
  -- |  The matter ID. See 'matterId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UndeleteMatterRequest ->
  VaultMattersUndelete
newVaultMattersUndelete matterId payload =
  VaultMattersUndelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      matterId = matterId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest VaultMattersUndelete where
  type Rs VaultMattersUndelete = Matter
  type Scopes VaultMattersUndelete = '[Ediscovery'FullControl]
  requestClient VaultMattersUndelete {..} =
    go
      matterId
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
          (Core.Proxy :: Core.Proxy VaultMattersUndeleteResource)
          Core.mempty
