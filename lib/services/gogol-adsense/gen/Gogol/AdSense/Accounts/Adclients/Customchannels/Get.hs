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
-- Module      : Gogol.AdSense.Accounts.Adclients.Customchannels.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the selected custom channel.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.customchannels.get@.
module Gogol.AdSense.Accounts.Adclients.Customchannels.Get
  ( -- * Resource
    AdSenseAccountsAdclientsCustomchannelsGetResource,

    -- ** Constructing a Request
    AdSenseAccountsAdclientsCustomchannelsGet (..),
    newAdSenseAccountsAdclientsCustomchannelsGet,
  )
where

import Gogol.AdSense.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adsense.accounts.adclients.customchannels.get@ method which the
-- 'AdSenseAccountsAdclientsCustomchannelsGet' request conforms to.
type AdSenseAccountsAdclientsCustomchannelsGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CustomChannel

-- | Gets information about the selected custom channel.
--
-- /See:/ 'newAdSenseAccountsAdclientsCustomchannelsGet' smart constructor.
data AdSenseAccountsAdclientsCustomchannelsGet = AdSenseAccountsAdclientsCustomchannelsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the custom channel. Format: accounts\/{account}\/adclients\/{adclient}\/customchannels\/{customchannel}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsAdclientsCustomchannelsGet' with the minimum fields required to make a request.
newAdSenseAccountsAdclientsCustomchannelsGet ::
  -- |  Required. Name of the custom channel. Format: accounts\/{account}\/adclients\/{adclient}\/customchannels\/{customchannel} See 'name'.
  Core.Text ->
  AdSenseAccountsAdclientsCustomchannelsGet
newAdSenseAccountsAdclientsCustomchannelsGet name =
  AdSenseAccountsAdclientsCustomchannelsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdSenseAccountsAdclientsCustomchannelsGet
  where
  type Rs AdSenseAccountsAdclientsCustomchannelsGet = CustomChannel
  type
    Scopes AdSenseAccountsAdclientsCustomchannelsGet =
      '[Adsense'FullControl, Adsense'Readonly]
  requestClient AdSenseAccountsAdclientsCustomchannelsGet {..} =
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
          ( Core.Proxy ::
              Core.Proxy AdSenseAccountsAdclientsCustomchannelsGetResource
          )
          Core.mempty
