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
-- Module      : Gogol.AdSense.Accounts.Adclients.Customchannels.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a custom channel. This method can be called only by a restricted set of projects, which are usually owned by <https://developers.google.com/adsense/platforms/ AdSense for Platforms> publishers. Contact your account manager if you need to use this method.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.customchannels.create@.
module Gogol.AdSense.Accounts.Adclients.Customchannels.Create
  ( -- * Resource
    AdSenseAccountsAdclientsCustomchannelsCreateResource,

    -- ** Constructing a Request
    AdSenseAccountsAdclientsCustomchannelsCreate (..),
    newAdSenseAccountsAdclientsCustomchannelsCreate,
  )
where

import Gogol.AdSense.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adsense.accounts.adclients.customchannels.create@ method which the
-- 'AdSenseAccountsAdclientsCustomchannelsCreate' request conforms to.
type AdSenseAccountsAdclientsCustomchannelsCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "customchannels"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CustomChannel
    Core.:> Core.Post '[Core.JSON] CustomChannel

-- | Creates a custom channel. This method can be called only by a restricted set of projects, which are usually owned by <https://developers.google.com/adsense/platforms/ AdSense for Platforms> publishers. Contact your account manager if you need to use this method.
--
-- /See:/ 'newAdSenseAccountsAdclientsCustomchannelsCreate' smart constructor.
data AdSenseAccountsAdclientsCustomchannelsCreate = AdSenseAccountsAdclientsCustomchannelsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ad client to create a custom channel under. Format: accounts\/{account}\/adclients\/{adclient}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CustomChannel,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsAdclientsCustomchannelsCreate' with the minimum fields required to make a request.
newAdSenseAccountsAdclientsCustomchannelsCreate ::
  -- |  Required. The ad client to create a custom channel under. Format: accounts\/{account}\/adclients\/{adclient} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CustomChannel ->
  AdSenseAccountsAdclientsCustomchannelsCreate
newAdSenseAccountsAdclientsCustomchannelsCreate parent payload =
  AdSenseAccountsAdclientsCustomchannelsCreate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdSenseAccountsAdclientsCustomchannelsCreate
  where
  type
    Rs AdSenseAccountsAdclientsCustomchannelsCreate =
      CustomChannel
  type
    Scopes AdSenseAccountsAdclientsCustomchannelsCreate =
      '[Adsense'FullControl]
  requestClient AdSenseAccountsAdclientsCustomchannelsCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adSenseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseAccountsAdclientsCustomchannelsCreateResource
          )
          Core.mempty
