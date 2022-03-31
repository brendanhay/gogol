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
-- Module      : Gogol.AdSenseHost.Customchannels.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a new custom channel to the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.customchannels.insert@.
module Gogol.AdSenseHost.Customchannels.Insert
  ( -- * Resource
    AdSenseHostCustomchannelsInsertResource,

    -- ** Constructing a Request
    newAdSenseHostCustomchannelsInsert,
    AdSenseHostCustomchannelsInsert,
  )
where

import Gogol.AdSenseHost.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adsensehost.customchannels.insert@ method which the
-- 'AdSenseHostCustomchannelsInsert' request conforms to.
type AdSenseHostCustomchannelsInsertResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "customchannels"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CustomChannel
    Core.:> Core.Post '[Core.JSON] CustomChannel

-- | Add a new custom channel to the host AdSense account.
--
-- /See:/ 'newAdSenseHostCustomchannelsInsert' smart constructor.
data AdSenseHostCustomchannelsInsert = AdSenseHostCustomchannelsInsert
  { -- | Ad client to which the new custom channel will be added.
    adClientId :: Core.Text,
    -- | Multipart request metadata.
    payload :: CustomChannel
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostCustomchannelsInsert' with the minimum fields required to make a request.
newAdSenseHostCustomchannelsInsert ::
  -- |  Ad client to which the new custom channel will be added. See 'adClientId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CustomChannel ->
  AdSenseHostCustomchannelsInsert
newAdSenseHostCustomchannelsInsert adClientId payload =
  AdSenseHostCustomchannelsInsert {adClientId = adClientId, payload = payload}

instance
  Core.GoogleRequest
    AdSenseHostCustomchannelsInsert
  where
  type
    Rs AdSenseHostCustomchannelsInsert =
      CustomChannel
  type
    Scopes AdSenseHostCustomchannelsInsert =
      '[Adsensehost'FullControl]
  requestClient AdSenseHostCustomchannelsInsert {..} =
    go
      adClientId
      (Core.Just Core.AltJSON)
      payload
      adSenseHostService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseHostCustomchannelsInsertResource
          )
          Core.mempty
