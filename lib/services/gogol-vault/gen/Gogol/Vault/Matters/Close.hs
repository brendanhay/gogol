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
-- Module      : Gogol.Vault.Matters.Close
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Closes the specified matter. Returns the matter with updated state.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.close@.
module Gogol.Vault.Matters.Close
  ( -- * Resource
    VaultMattersCloseResource,

    -- ** Constructing a Request
    VaultMattersClose (..),
    newVaultMattersClose,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.close@ method which the
-- 'VaultMattersClose' request conforms to.
type VaultMattersCloseResource =
  "v1"
    Core.:> "matters"
    Core.:> Core.CaptureMode "matterId" "close" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CloseMatterRequest
    Core.:> Core.Post '[Core.JSON] CloseMatterResponse

-- | Closes the specified matter. Returns the matter with updated state.
--
-- /See:/ 'newVaultMattersClose' smart constructor.
data VaultMattersClose = VaultMattersClose
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The matter ID.
    matterId :: Core.Text,
    -- | Multipart request metadata.
    payload :: CloseMatterRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersClose' with the minimum fields required to make a request.
newVaultMattersClose ::
  -- |  The matter ID. See 'matterId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CloseMatterRequest ->
  VaultMattersClose
newVaultMattersClose matterId payload =
  VaultMattersClose
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      matterId = matterId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest VaultMattersClose where
  type Rs VaultMattersClose = CloseMatterResponse
  type
    Scopes VaultMattersClose =
      '[Ediscovery'FullControl]
  requestClient VaultMattersClose {..} =
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
          (Core.Proxy :: Core.Proxy VaultMattersCloseResource)
          Core.mempty
