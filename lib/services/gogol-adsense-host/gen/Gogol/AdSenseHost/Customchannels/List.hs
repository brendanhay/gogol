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
-- Module      : Gogol.AdSenseHost.Customchannels.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all host custom channels in this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.customchannels.list@.
module Gogol.AdSenseHost.Customchannels.List
  ( -- * Resource
    AdSenseHostCustomchannelsListResource,

    -- ** Constructing a Request
    AdSenseHostCustomchannelsList (..),
    newAdSenseHostCustomchannelsList,
  )
where

import Gogol.AdSenseHost.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adsensehost.customchannels.list@ method which the
-- 'AdSenseHostCustomchannelsList' request conforms to.
type AdSenseHostCustomchannelsListResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "customchannels"
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CustomChannels

-- | List all host custom channels in this AdSense account.
--
-- /See:/ 'newAdSenseHostCustomchannelsList' smart constructor.
data AdSenseHostCustomchannelsList = AdSenseHostCustomchannelsList
  { -- | Ad client for which to list custom channels.
    adClientId :: Core.Text,
    -- | The maximum number of custom channels to include in the response, used for paging.
    maxResults :: (Core.Maybe Core.Word32),
    -- | A continuation token, used to page through custom channels. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response.
    pageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostCustomchannelsList' with the minimum fields required to make a request.
newAdSenseHostCustomchannelsList ::
  -- |  Ad client for which to list custom channels. See 'adClientId'.
  Core.Text ->
  AdSenseHostCustomchannelsList
newAdSenseHostCustomchannelsList adClientId =
  AdSenseHostCustomchannelsList
    { adClientId = adClientId,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing
    }

instance Core.GoogleRequest AdSenseHostCustomchannelsList where
  type Rs AdSenseHostCustomchannelsList = CustomChannels
  type
    Scopes AdSenseHostCustomchannelsList =
      '[Adsensehost'FullControl]
  requestClient AdSenseHostCustomchannelsList {..} =
    go
      adClientId
      maxResults
      pageToken
      (Core.Just Core.AltJSON)
      adSenseHostService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AdSenseHostCustomchannelsListResource)
          Core.mempty
