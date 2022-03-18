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
-- Module      : Network.Google.Vault.Matters.Exports.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an export.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.exports.get@.
module Network.Google.Vault.Matters.Exports.Get
  ( -- * Resource
    VaultMattersExportsGetResource,

    -- ** Constructing a Request
    newVaultMattersExportsGet,
    VaultMattersExportsGet,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.exports.get@ method which the
-- 'VaultMattersExportsGet' request conforms to.
type VaultMattersExportsGetResource =
  "v1"
    Core.:> "matters"
    Core.:> Core.Capture "matterId" Core.Text
    Core.:> "exports"
    Core.:> Core.Capture "exportId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Export

-- | Gets an export.
--
-- /See:/ 'newVaultMattersExportsGet' smart constructor.
data VaultMattersExportsGet = VaultMattersExportsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The export ID.
    exportId :: Core.Text,
    -- | The matter ID.
    matterId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersExportsGet' with the minimum fields required to make a request.
newVaultMattersExportsGet ::
  -- |  The export ID. See 'exportId'.
  Core.Text ->
  -- |  The matter ID. See 'matterId'.
  Core.Text ->
  VaultMattersExportsGet
newVaultMattersExportsGet exportId matterId =
  VaultMattersExportsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      exportId = exportId,
      matterId = matterId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest VaultMattersExportsGet where
  type Rs VaultMattersExportsGet = Export
  type
    Scopes VaultMattersExportsGet =
      '[ "https://www.googleapis.com/auth/ediscovery",
         "https://www.googleapis.com/auth/ediscovery.readonly"
       ]
  requestClient VaultMattersExportsGet {..} =
    go
      matterId
      exportId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      vaultService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy VaultMattersExportsGetResource
          )
          Core.mempty
