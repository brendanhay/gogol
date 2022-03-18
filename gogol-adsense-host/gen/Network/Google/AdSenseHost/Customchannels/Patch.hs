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
-- Module      : Network.Google.AdSenseHost.Customchannels.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a custom channel in the host AdSense account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.customchannels.patch@.
module Network.Google.AdSenseHost.Customchannels.Patch
  ( -- * Resource
    AdSenseHostCustomchannelsPatchResource,

    -- ** Constructing a Request
    newAdSenseHostCustomchannelsPatch,
    AdSenseHostCustomchannelsPatch,
  )
where

import Network.Google.AdSenseHost.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adsensehost.customchannels.patch@ method which the
-- 'AdSenseHostCustomchannelsPatch' request conforms to.
type AdSenseHostCustomchannelsPatchResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "customchannels"
    Core.:> Core.QueryParam "customChannelId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CustomChannel
    Core.:> Core.Patch '[Core.JSON] CustomChannel

-- | Update a custom channel in the host AdSense account. This method supports patch semantics.
--
-- /See:/ 'newAdSenseHostCustomchannelsPatch' smart constructor.
data AdSenseHostCustomchannelsPatch = AdSenseHostCustomchannelsPatch
  { -- | Ad client in which the custom channel will be updated.
    adClientId :: Core.Text,
    -- | Custom channel to get.
    customChannelId :: Core.Text,
    -- | Multipart request metadata.
    payload :: CustomChannel
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostCustomchannelsPatch' with the minimum fields required to make a request.
newAdSenseHostCustomchannelsPatch ::
  -- |  Ad client in which the custom channel will be updated. See 'adClientId'.
  Core.Text ->
  -- |  Custom channel to get. See 'customChannelId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CustomChannel ->
  AdSenseHostCustomchannelsPatch
newAdSenseHostCustomchannelsPatch adClientId customChannelId payload =
  AdSenseHostCustomchannelsPatch
    { adClientId = adClientId,
      customChannelId = customChannelId,
      payload = payload
    }

instance
  Core.GoogleRequest
    AdSenseHostCustomchannelsPatch
  where
  type
    Rs AdSenseHostCustomchannelsPatch =
      CustomChannel
  type
    Scopes AdSenseHostCustomchannelsPatch =
      '["https://www.googleapis.com/auth/adsensehost"]
  requestClient AdSenseHostCustomchannelsPatch {..} =
    go
      adClientId
      (Core.Just customChannelId)
      (Core.Just Core.AltJSON)
      payload
      adSenseHostService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseHostCustomchannelsPatchResource
          )
          Core.mempty
