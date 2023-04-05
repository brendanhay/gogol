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
-- Module      : Gogol.AdSense.Accounts.Adclients.Adunits.GetAdcode
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the ad unit code for a given ad unit. For more information, see <https://support.google.com/adsense/answer/9274634 About the AdSense code> and <https://support.google.com/adsense/answer/9190028 Where to place the ad code in your HTML>.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.adunits.getAdcode@.
module Gogol.AdSense.Accounts.Adclients.Adunits.GetAdcode
  ( -- * Resource
    AdSenseAccountsAdclientsAdunitsGetAdcodeResource,

    -- ** Constructing a Request
    AdSenseAccountsAdclientsAdunitsGetAdcode (..),
    newAdSenseAccountsAdclientsAdunitsGetAdcode,
  )
where

import Gogol.AdSense.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adsense.accounts.adclients.adunits.getAdcode@ method which the
-- 'AdSenseAccountsAdclientsAdunitsGetAdcode' request conforms to.
type AdSenseAccountsAdclientsAdunitsGetAdcodeResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "adcode"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AdUnitAdCode

-- | Gets the ad unit code for a given ad unit. For more information, see <https://support.google.com/adsense/answer/9274634 About the AdSense code> and <https://support.google.com/adsense/answer/9190028 Where to place the ad code in your HTML>.
--
-- /See:/ 'newAdSenseAccountsAdclientsAdunitsGetAdcode' smart constructor.
data AdSenseAccountsAdclientsAdunitsGetAdcode = AdSenseAccountsAdclientsAdunitsGetAdcode
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the adunit for which to get the adcode. Format: accounts\/{account}\/adclients\/{adclient}\/adunits\/{adunit}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsAdclientsAdunitsGetAdcode' with the minimum fields required to make a request.
newAdSenseAccountsAdclientsAdunitsGetAdcode ::
  -- |  Required. Name of the adunit for which to get the adcode. Format: accounts\/{account}\/adclients\/{adclient}\/adunits\/{adunit} See 'name'.
  Core.Text ->
  AdSenseAccountsAdclientsAdunitsGetAdcode
newAdSenseAccountsAdclientsAdunitsGetAdcode name =
  AdSenseAccountsAdclientsAdunitsGetAdcode
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdSenseAccountsAdclientsAdunitsGetAdcode
  where
  type
    Rs AdSenseAccountsAdclientsAdunitsGetAdcode =
      AdUnitAdCode
  type
    Scopes AdSenseAccountsAdclientsAdunitsGetAdcode =
      '[Adsense'FullControl, Adsense'Readonly]
  requestClient
    AdSenseAccountsAdclientsAdunitsGetAdcode {..} =
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
                  AdSenseAccountsAdclientsAdunitsGetAdcodeResource
            )
            Core.mempty
