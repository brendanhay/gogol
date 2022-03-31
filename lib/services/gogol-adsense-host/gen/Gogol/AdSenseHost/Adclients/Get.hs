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
-- Module      : Gogol.AdSenseHost.Adclients.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about one of the ad clients in the Host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.adclients.get@.
module Gogol.AdSenseHost.Adclients.Get
  ( -- * Resource
    AdSenseHostAdclientsGetResource,

    -- ** Constructing a Request
    newAdSenseHostAdclientsGet,
    AdSenseHostAdclientsGet,
  )
where

import Gogol.AdSenseHost.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adsensehost.adclients.get@ method which the
-- 'AdSenseHostAdclientsGet' request conforms to.
type AdSenseHostAdclientsGetResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AdClient

-- | Get information about one of the ad clients in the Host AdSense account.
--
-- /See:/ 'newAdSenseHostAdclientsGet' smart constructor.
newtype AdSenseHostAdclientsGet = AdSenseHostAdclientsGet
  { -- | Ad client to get.
    adClientId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostAdclientsGet' with the minimum fields required to make a request.
newAdSenseHostAdclientsGet ::
  -- |  Ad client to get. See 'adClientId'.
  Core.Text ->
  AdSenseHostAdclientsGet
newAdSenseHostAdclientsGet adClientId =
  AdSenseHostAdclientsGet {adClientId = adClientId}

instance Core.GoogleRequest AdSenseHostAdclientsGet where
  type Rs AdSenseHostAdclientsGet = AdClient
  type
    Scopes AdSenseHostAdclientsGet =
      '[Adsensehost'FullControl]
  requestClient AdSenseHostAdclientsGet {..} =
    go
      adClientId
      (Core.Just Core.AltJSON)
      adSenseHostService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseHostAdclientsGetResource
          )
          Core.mempty
