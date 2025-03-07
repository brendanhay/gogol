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
-- Module      : Gogol.AdSenseHost.Customchannels.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a specific custom channel from the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.customchannels.get@.
module Gogol.AdSenseHost.Customchannels.Get
  ( -- * Resource
    AdSenseHostCustomchannelsGetResource,

    -- ** Constructing a Request
    AdSenseHostCustomchannelsGet (..),
    newAdSenseHostCustomchannelsGet,
  )
where

import Gogol.AdSenseHost.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adsensehost.customchannels.get@ method which the
-- 'AdSenseHostCustomchannelsGet' request conforms to.
type AdSenseHostCustomchannelsGetResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "customchannels"
    Core.:> Core.Capture "customChannelId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CustomChannel

-- | Get a specific custom channel from the host AdSense account.
--
-- /See:/ 'newAdSenseHostCustomchannelsGet' smart constructor.
data AdSenseHostCustomchannelsGet = AdSenseHostCustomchannelsGet
  { -- | Ad client from which to get the custom channel.
    adClientId :: Core.Text,
    -- | Custom channel to get.
    customChannelId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostCustomchannelsGet' with the minimum fields required to make a request.
newAdSenseHostCustomchannelsGet ::
  -- |  Ad client from which to get the custom channel. See 'adClientId'.
  Core.Text ->
  -- |  Custom channel to get. See 'customChannelId'.
  Core.Text ->
  AdSenseHostCustomchannelsGet
newAdSenseHostCustomchannelsGet adClientId customChannelId =
  AdSenseHostCustomchannelsGet
    { adClientId = adClientId,
      customChannelId = customChannelId
    }

instance Core.GoogleRequest AdSenseHostCustomchannelsGet where
  type Rs AdSenseHostCustomchannelsGet = CustomChannel
  type
    Scopes AdSenseHostCustomchannelsGet =
      '[Adsensehost'FullControl]
  requestClient AdSenseHostCustomchannelsGet {..} =
    go
      adClientId
      customChannelId
      (Core.Just Core.AltJSON)
      adSenseHostService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AdSenseHostCustomchannelsGetResource)
          Core.mempty
