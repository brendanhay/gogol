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
-- Module      : Gogol.AdSense.Accounts.Adclients.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the ad client from the given resource name.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.get@.
module Gogol.AdSense.Accounts.Adclients.Get
  ( -- * Resource
    AdSenseAccountsAdclientsGetResource,

    -- ** Constructing a Request
    AdSenseAccountsAdclientsGet (..),
    newAdSenseAccountsAdclientsGet,
  )
where

import Gogol.AdSense.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adsense.accounts.adclients.get@ method which the
-- 'AdSenseAccountsAdclientsGet' request conforms to.
type AdSenseAccountsAdclientsGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AdClient

-- | Gets the ad client from the given resource name.
--
-- /See:/ 'newAdSenseAccountsAdclientsGet' smart constructor.
data AdSenseAccountsAdclientsGet = AdSenseAccountsAdclientsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the ad client to retrieve. Format: accounts\/{account}\/adclients\/{adclient}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsAdclientsGet' with the minimum fields required to make a request.
newAdSenseAccountsAdclientsGet ::
  -- |  Required. The name of the ad client to retrieve. Format: accounts\/{account}\/adclients\/{adclient} See 'name'.
  Core.Text ->
  AdSenseAccountsAdclientsGet
newAdSenseAccountsAdclientsGet name =
  AdSenseAccountsAdclientsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdSenseAccountsAdclientsGet where
  type Rs AdSenseAccountsAdclientsGet = AdClient
  type
    Scopes AdSenseAccountsAdclientsGet =
      '[Adsense'FullControl, Adsense'Readonly]
  requestClient AdSenseAccountsAdclientsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adSenseService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AdSenseAccountsAdclientsGetResource)
          Core.mempty
