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
-- Module      : Gogol.Vault.Matters.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified matter.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.get@.
module Gogol.Vault.Matters.Get
  ( -- * Resource
    VaultMattersGetResource,

    -- ** Constructing a Request
    newVaultMattersGet,
    VaultMattersGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.get@ method which the
-- 'VaultMattersGet' request conforms to.
type VaultMattersGetResource =
  "v1"
    Core.:> "matters"
    Core.:> Core.Capture "matterId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" MattersGetView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Matter

-- | Gets the specified matter.
--
-- /See:/ 'newVaultMattersGet' smart constructor.
data VaultMattersGet = VaultMattersGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The matter ID.
    matterId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Specifies how much information about the matter to return in the response.
    view :: (Core.Maybe MattersGetView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersGet' with the minimum fields required to make a request.
newVaultMattersGet ::
  -- |  The matter ID. See 'matterId'.
  Core.Text ->
  VaultMattersGet
newVaultMattersGet matterId =
  VaultMattersGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      matterId = matterId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest VaultMattersGet where
  type Rs VaultMattersGet = Matter
  type
    Scopes VaultMattersGet =
      '[ "https://www.googleapis.com/auth/ediscovery",
         "https://www.googleapis.com/auth/ediscovery.readonly"
       ]
  requestClient VaultMattersGet {..} =
    go
      matterId
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
          (Core.Proxy :: Core.Proxy VaultMattersGetResource)
          Core.mempty
