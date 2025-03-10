{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.AdSense.Accounts.Adclients.Adunits.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an ad unit. This method can be called only by a restricted set of projects, which are usually owned by <https://developers.google.com/adsense/platforms/ AdSense for Platforms> publishers. Contact your account manager if you need to use this method. Note that ad units can only be created for ad clients with an \"AFC\" product code. For more info see the </adsense/management/reference/rest/v2/accounts.adclients AdClient resource>. For now, this method can only be used to create @DISPLAY@ ad units. See: https:\/\/support.google.com\/adsense\/answer\/9183566
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.adunits.create@.
module Gogol.AdSense.Accounts.Adclients.Adunits.Create
  ( -- * Resource
    AdSenseAccountsAdclientsAdunitsCreateResource,

    -- ** Constructing a Request
    AdSenseAccountsAdclientsAdunitsCreate (..),
    newAdSenseAccountsAdclientsAdunitsCreate,
  )
where

import Gogol.AdSense.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adsense.accounts.adclients.adunits.create@ method which the
-- 'AdSenseAccountsAdclientsAdunitsCreate' request conforms to.
type AdSenseAccountsAdclientsAdunitsCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "adunits"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AdUnit
    Core.:> Core.Post '[Core.JSON] AdUnit

-- | Creates an ad unit. This method can be called only by a restricted set of projects, which are usually owned by <https://developers.google.com/adsense/platforms/ AdSense for Platforms> publishers. Contact your account manager if you need to use this method. Note that ad units can only be created for ad clients with an \"AFC\" product code. For more info see the </adsense/management/reference/rest/v2/accounts.adclients AdClient resource>. For now, this method can only be used to create @DISPLAY@ ad units. See: https:\/\/support.google.com\/adsense\/answer\/9183566
--
-- /See:/ 'newAdSenseAccountsAdclientsAdunitsCreate' smart constructor.
data AdSenseAccountsAdclientsAdunitsCreate = AdSenseAccountsAdclientsAdunitsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Ad client to create an ad unit under. Format: accounts\/{account}\/adclients\/{adclient}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: AdUnit,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsAdclientsAdunitsCreate' with the minimum fields required to make a request.
newAdSenseAccountsAdclientsAdunitsCreate ::
  -- |  Required. Ad client to create an ad unit under. Format: accounts\/{account}\/adclients\/{adclient} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AdUnit ->
  AdSenseAccountsAdclientsAdunitsCreate
newAdSenseAccountsAdclientsAdunitsCreate parent payload =
  AdSenseAccountsAdclientsAdunitsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdSenseAccountsAdclientsAdunitsCreate where
  type Rs AdSenseAccountsAdclientsAdunitsCreate = AdUnit
  type
    Scopes AdSenseAccountsAdclientsAdunitsCreate =
      '[Adsense'FullControl]
  requestClient AdSenseAccountsAdclientsAdunitsCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adSenseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseAccountsAdclientsAdunitsCreateResource
          )
          Core.mempty
