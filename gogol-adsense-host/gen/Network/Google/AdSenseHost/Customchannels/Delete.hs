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
-- Module      : Network.Google.AdSenseHost.Customchannels.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a specific custom channel from the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.customchannels.delete@.
module Network.Google.AdSenseHost.Customchannels.Delete
  ( -- * Resource
    AdSenseHostCustomchannelsDeleteResource,

    -- ** Constructing a Request
    newAdSenseHostCustomchannelsDelete,
    AdSenseHostCustomchannelsDelete,
  )
where

import Network.Google.AdSenseHost.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adsensehost.customchannels.delete@ method which the
-- 'AdSenseHostCustomchannelsDelete' request conforms to.
type AdSenseHostCustomchannelsDeleteResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "customchannels"
    Core.:> Core.Capture "customChannelId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] CustomChannel

-- | Delete a specific custom channel from the host AdSense account.
--
-- /See:/ 'newAdSenseHostCustomchannelsDelete' smart constructor.
data AdSenseHostCustomchannelsDelete = AdSenseHostCustomchannelsDelete
  { -- | Ad client from which to delete the custom channel.
    adClientId :: Core.Text,
    -- | Custom channel to delete.
    customChannelId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostCustomchannelsDelete' with the minimum fields required to make a request.
newAdSenseHostCustomchannelsDelete ::
  -- |  Ad client from which to delete the custom channel. See 'adClientId'.
  Core.Text ->
  -- |  Custom channel to delete. See 'customChannelId'.
  Core.Text ->
  AdSenseHostCustomchannelsDelete
newAdSenseHostCustomchannelsDelete adClientId customChannelId =
  AdSenseHostCustomchannelsDelete
    { adClientId = adClientId,
      customChannelId = customChannelId
    }

instance
  Core.GoogleRequest
    AdSenseHostCustomchannelsDelete
  where
  type
    Rs AdSenseHostCustomchannelsDelete =
      CustomChannel
  type
    Scopes AdSenseHostCustomchannelsDelete =
      '["https://www.googleapis.com/auth/adsensehost"]
  requestClient AdSenseHostCustomchannelsDelete {..} =
    go
      adClientId
      customChannelId
      (Core.Just Core.AltJSON)
      adSenseHostService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseHostCustomchannelsDeleteResource
          )
          Core.mempty
