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
-- Module      : Network.Google.AdSenseHost.Customchannels.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a custom channel in the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.customchannels.update@.
module Network.Google.AdSenseHost.Customchannels.Update
  ( -- * Resource
    AdSenseHostCustomchannelsUpdateResource,

    -- ** Constructing a Request
    newAdSenseHostCustomchannelsUpdate,
    AdSenseHostCustomchannelsUpdate,
  )
where

import Network.Google.AdSenseHost.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adsensehost.customchannels.update@ method which the
-- 'AdSenseHostCustomchannelsUpdate' request conforms to.
type AdSenseHostCustomchannelsUpdateResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "customchannels"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CustomChannel
    Core.:> Core.Put '[Core.JSON] CustomChannel

-- | Update a custom channel in the host AdSense account.
--
-- /See:/ 'newAdSenseHostCustomchannelsUpdate' smart constructor.
data AdSenseHostCustomchannelsUpdate = AdSenseHostCustomchannelsUpdate
  { -- | Ad client in which the custom channel will be updated.
    adClientId :: Core.Text,
    -- | Multipart request metadata.
    payload :: CustomChannel
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostCustomchannelsUpdate' with the minimum fields required to make a request.
newAdSenseHostCustomchannelsUpdate ::
  -- |  Ad client in which the custom channel will be updated. See 'adClientId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CustomChannel ->
  AdSenseHostCustomchannelsUpdate
newAdSenseHostCustomchannelsUpdate adClientId payload =
  AdSenseHostCustomchannelsUpdate {adClientId = adClientId, payload = payload}

instance
  Core.GoogleRequest
    AdSenseHostCustomchannelsUpdate
  where
  type
    Rs AdSenseHostCustomchannelsUpdate =
      CustomChannel
  type
    Scopes AdSenseHostCustomchannelsUpdate =
      '["https://www.googleapis.com/auth/adsensehost"]
  requestClient AdSenseHostCustomchannelsUpdate {..} =
    go
      adClientId
      (Core.Just Core.AltJSON)
      payload
      adSenseHostService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseHostCustomchannelsUpdateResource
          )
          Core.mempty
