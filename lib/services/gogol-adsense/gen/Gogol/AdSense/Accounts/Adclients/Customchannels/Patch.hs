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
-- Module      : Gogol.AdSense.Accounts.Adclients.Customchannels.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a custom channel. This method can be called only by a restricted set of projects, which are usually owned by <https://developers.google.com/adsense/platforms/ AdSense for Platforms> publishers. Contact your account manager if you need to use this method.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.customchannels.patch@.
module Gogol.AdSense.Accounts.Adclients.Customchannels.Patch
  ( -- * Resource
    AdSenseAccountsAdclientsCustomchannelsPatchResource,

    -- ** Constructing a Request
    AdSenseAccountsAdclientsCustomchannelsPatch (..),
    newAdSenseAccountsAdclientsCustomchannelsPatch,
  )
where

import Gogol.AdSense.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adsense.accounts.adclients.customchannels.patch@ method which the
-- 'AdSenseAccountsAdclientsCustomchannelsPatch' request conforms to.
type AdSenseAccountsAdclientsCustomchannelsPatchResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CustomChannel
    Core.:> Core.Patch '[Core.JSON] CustomChannel

-- | Updates a custom channel. This method can be called only by a restricted set of projects, which are usually owned by <https://developers.google.com/adsense/platforms/ AdSense for Platforms> publishers. Contact your account manager if you need to use this method.
--
-- /See:/ 'newAdSenseAccountsAdclientsCustomchannelsPatch' smart constructor.
data AdSenseAccountsAdclientsCustomchannelsPatch = AdSenseAccountsAdclientsCustomchannelsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. Resource name of the custom channel. Format: accounts\/{account}\/adclients\/{adclient}\/customchannels\/{customchannel}
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CustomChannel,
    -- | The list of fields to update. If empty, a full update is performed.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsAdclientsCustomchannelsPatch' with the minimum fields required to make a request.
newAdSenseAccountsAdclientsCustomchannelsPatch ::
  -- |  Output only. Resource name of the custom channel. Format: accounts\/{account}\/adclients\/{adclient}\/customchannels\/{customchannel} See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CustomChannel ->
  AdSenseAccountsAdclientsCustomchannelsPatch
newAdSenseAccountsAdclientsCustomchannelsPatch name payload =
  AdSenseAccountsAdclientsCustomchannelsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdSenseAccountsAdclientsCustomchannelsPatch
  where
  type Rs AdSenseAccountsAdclientsCustomchannelsPatch = CustomChannel
  type
    Scopes AdSenseAccountsAdclientsCustomchannelsPatch =
      '[Adsense'FullControl]
  requestClient AdSenseAccountsAdclientsCustomchannelsPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adSenseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseAccountsAdclientsCustomchannelsPatchResource
          )
          Core.mempty
