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
-- Module      : Gogol.AdSenseHost.Urlchannels.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a new URL channel to the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.urlchannels.insert@.
module Gogol.AdSenseHost.Urlchannels.Insert
  ( -- * Resource
    AdSenseHostUrlchannelsInsertResource,

    -- ** Constructing a Request
    AdSenseHostUrlchannelsInsert (..),
    newAdSenseHostUrlchannelsInsert,
  )
where

import Gogol.AdSenseHost.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adsensehost.urlchannels.insert@ method which the
-- 'AdSenseHostUrlchannelsInsert' request conforms to.
type AdSenseHostUrlchannelsInsertResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "urlchannels"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UrlChannel
    Core.:> Core.Post '[Core.JSON] UrlChannel

-- | Add a new URL channel to the host AdSense account.
--
-- /See:/ 'newAdSenseHostUrlchannelsInsert' smart constructor.
data AdSenseHostUrlchannelsInsert = AdSenseHostUrlchannelsInsert
  { -- | Ad client to which the new URL channel will be added.
    adClientId :: Core.Text,
    -- | Multipart request metadata.
    payload :: UrlChannel
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostUrlchannelsInsert' with the minimum fields required to make a request.
newAdSenseHostUrlchannelsInsert ::
  -- |  Ad client to which the new URL channel will be added. See 'adClientId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UrlChannel ->
  AdSenseHostUrlchannelsInsert
newAdSenseHostUrlchannelsInsert adClientId payload =
  AdSenseHostUrlchannelsInsert
    { adClientId = adClientId,
      payload = payload
    }

instance Core.GoogleRequest AdSenseHostUrlchannelsInsert where
  type Rs AdSenseHostUrlchannelsInsert = UrlChannel
  type
    Scopes AdSenseHostUrlchannelsInsert =
      '[Adsensehost'FullControl]
  requestClient AdSenseHostUrlchannelsInsert {..} =
    go adClientId (Core.Just Core.AltJSON) payload adSenseHostService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AdSenseHostUrlchannelsInsertResource)
          Core.mempty
