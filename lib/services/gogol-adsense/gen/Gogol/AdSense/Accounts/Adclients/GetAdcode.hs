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
-- Module      : Gogol.AdSense.Accounts.Adclients.GetAdcode
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the AdSense code for a given ad client. This returns what was previously known as the \'auto ad code\'. This is only supported for ad clients with a product_code of AFC. For more information, see <https://support.google.com/adsense/answer/9274634 About the AdSense code>.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.getAdcode@.
module Gogol.AdSense.Accounts.Adclients.GetAdcode
  ( -- * Resource
    AdSenseAccountsAdclientsGetAdcodeResource,

    -- ** Constructing a Request
    newAdSenseAccountsAdclientsGetAdcode,
    AdSenseAccountsAdclientsGetAdcode,
  )
where

import Gogol.AdSense.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adsense.accounts.adclients.getAdcode@ method which the
-- 'AdSenseAccountsAdclientsGetAdcode' request conforms to.
type AdSenseAccountsAdclientsGetAdcodeResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "adcode"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AdClientAdCode

-- | Gets the AdSense code for a given ad client. This returns what was previously known as the \'auto ad code\'. This is only supported for ad clients with a product_code of AFC. For more information, see <https://support.google.com/adsense/answer/9274634 About the AdSense code>.
--
-- /See:/ 'newAdSenseAccountsAdclientsGetAdcode' smart constructor.
data AdSenseAccountsAdclientsGetAdcode = AdSenseAccountsAdclientsGetAdcode
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the ad client for which to get the adcode. Format: accounts\/{account}\/adclients\/{adclient}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsAdclientsGetAdcode' with the minimum fields required to make a request.
newAdSenseAccountsAdclientsGetAdcode ::
  -- |  Required. Name of the ad client for which to get the adcode. Format: accounts\/{account}\/adclients\/{adclient} See 'name'.
  Core.Text ->
  AdSenseAccountsAdclientsGetAdcode
newAdSenseAccountsAdclientsGetAdcode name =
  AdSenseAccountsAdclientsGetAdcode
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdSenseAccountsAdclientsGetAdcode
  where
  type
    Rs AdSenseAccountsAdclientsGetAdcode =
      AdClientAdCode
  type
    Scopes AdSenseAccountsAdclientsGetAdcode =
      '[ "https://www.googleapis.com/auth/adsense",
         "https://www.googleapis.com/auth/adsense.readonly"
       ]
  requestClient AdSenseAccountsAdclientsGetAdcode {..} =
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
              Core.Proxy AdSenseAccountsAdclientsGetAdcodeResource
          )
          Core.mempty
