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
-- Module      : Gogol.Vault.Matters.Holds.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified hold.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.holds.get@.
module Gogol.Vault.Matters.Holds.Get
  ( -- * Resource
    VaultMattersHoldsGetResource,

    -- ** Constructing a Request
    VaultMattersHoldsGet (..),
    newVaultMattersHoldsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.holds.get@ method which the
-- 'VaultMattersHoldsGet' request conforms to.
type VaultMattersHoldsGetResource =
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
    Core.:> Core.QueryParam "view" MattersHoldsGetView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Hold

-- | Gets the specified hold.
--
-- /See:/ 'newVaultMattersHoldsGet' smart constructor.
data VaultMattersHoldsGet = VaultMattersHoldsGet
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
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The amount of detail to return for a hold.
    view :: (Core.Maybe MattersHoldsGetView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersHoldsGet' with the minimum fields required to make a request.
newVaultMattersHoldsGet ::
  -- |  The hold ID. See 'holdId'.
  Core.Text ->
  -- |  The matter ID. See 'matterId'.
  Core.Text ->
  VaultMattersHoldsGet
newVaultMattersHoldsGet holdId matterId =
  VaultMattersHoldsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      holdId = holdId,
      matterId = matterId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest VaultMattersHoldsGet where
  type Rs VaultMattersHoldsGet = Hold
  type
    Scopes VaultMattersHoldsGet =
      '[Ediscovery'FullControl, Ediscovery'Readonly]
  requestClient VaultMattersHoldsGet {..} =
    go
      matterId
      holdId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      vaultService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy VaultMattersHoldsGetResource)
          Core.mempty
