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
-- Module      : Gogol.AdSense.Accounts.Adclients.Customchannels.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a custom channel. This method can only be used by projects enabled for the <https://developers.google.com/adsense/platforms/ AdSense for Platforms> product.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.customchannels.delete@.
module Gogol.AdSense.Accounts.Adclients.Customchannels.Delete
  ( -- * Resource
    AdSenseAccountsAdclientsCustomchannelsDeleteResource,

    -- ** Constructing a Request
    AdSenseAccountsAdclientsCustomchannelsDelete (..),
    newAdSenseAccountsAdclientsCustomchannelsDelete,
  )
where

import Gogol.AdSense.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adsense.accounts.adclients.customchannels.delete@ method which the
-- 'AdSenseAccountsAdclientsCustomchannelsDelete' request conforms to.
type AdSenseAccountsAdclientsCustomchannelsDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a custom channel. This method can only be used by projects enabled for the <https://developers.google.com/adsense/platforms/ AdSense for Platforms> product.
--
-- /See:/ 'newAdSenseAccountsAdclientsCustomchannelsDelete' smart constructor.
data AdSenseAccountsAdclientsCustomchannelsDelete = AdSenseAccountsAdclientsCustomchannelsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the custom channel to delete. Format: accounts\/{account}\/adclients\/{adclient}\/customchannels\/{customchannel}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsAdclientsCustomchannelsDelete' with the minimum fields required to make a request.
newAdSenseAccountsAdclientsCustomchannelsDelete ::
  -- |  Required. Name of the custom channel to delete. Format: accounts\/{account}\/adclients\/{adclient}\/customchannels\/{customchannel} See 'name'.
  Core.Text ->
  AdSenseAccountsAdclientsCustomchannelsDelete
newAdSenseAccountsAdclientsCustomchannelsDelete name =
  AdSenseAccountsAdclientsCustomchannelsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdSenseAccountsAdclientsCustomchannelsDelete
  where
  type
    Rs AdSenseAccountsAdclientsCustomchannelsDelete =
      Empty
  type
    Scopes
      AdSenseAccountsAdclientsCustomchannelsDelete =
      '[Adsense'FullControl]
  requestClient
    AdSenseAccountsAdclientsCustomchannelsDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        adSenseService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdSenseAccountsAdclientsCustomchannelsDeleteResource
            )
            Core.mempty
