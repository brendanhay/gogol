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
-- Module      : Gogol.AdSense.Accounts.Adclients.Adunits.ListLinkedCustomChannels
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the custom channels available for an ad unit.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.adunits.listLinkedCustomChannels@.
module Gogol.AdSense.Accounts.Adclients.Adunits.ListLinkedCustomChannels
  ( -- * Resource
    AdSenseAccountsAdclientsAdunitsListLinkedCustomChannelsResource,

    -- ** Constructing a Request
    newAdSenseAccountsAdclientsAdunitsListLinkedCustomChannels,
    AdSenseAccountsAdclientsAdunitsListLinkedCustomChannels,
  )
where

import Gogol.AdSense.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adsense.accounts.adclients.adunits.listLinkedCustomChannels@ method which the
-- 'AdSenseAccountsAdclientsAdunitsListLinkedCustomChannels' request conforms to.
type AdSenseAccountsAdclientsAdunitsListLinkedCustomChannelsResource =
  "v2"
    Core.:> Core.CaptureMode
              "parent"
              "listLinkedCustomChannels"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListLinkedCustomChannelsResponse

-- | Lists all the custom channels available for an ad unit.
--
-- /See:/ 'newAdSenseAccountsAdclientsAdunitsListLinkedCustomChannels' smart constructor.
data AdSenseAccountsAdclientsAdunitsListLinkedCustomChannels = AdSenseAccountsAdclientsAdunitsListLinkedCustomChannels
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of custom channels to include in the response, used for paging. If unspecified, at most 10000 custom channels will be returned. The maximum value is 10000; values above 10000 will be coerced to 10000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListLinkedCustomChannels@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListLinkedCustomChannels@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The ad unit which owns the collection of custom channels. Format: accounts\/{account}\/adclients\/{adclient}\/adunits\/{adunit}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsAdclientsAdunitsListLinkedCustomChannels' with the minimum fields required to make a request.
newAdSenseAccountsAdclientsAdunitsListLinkedCustomChannels ::
  -- |  Required. The ad unit which owns the collection of custom channels. Format: accounts\/{account}\/adclients\/{adclient}\/adunits\/{adunit} See 'parent'.
  Core.Text ->
  AdSenseAccountsAdclientsAdunitsListLinkedCustomChannels
newAdSenseAccountsAdclientsAdunitsListLinkedCustomChannels parent =
  AdSenseAccountsAdclientsAdunitsListLinkedCustomChannels
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdSenseAccountsAdclientsAdunitsListLinkedCustomChannels
  where
  type
    Rs
      AdSenseAccountsAdclientsAdunitsListLinkedCustomChannels =
      ListLinkedCustomChannelsResponse
  type
    Scopes
      AdSenseAccountsAdclientsAdunitsListLinkedCustomChannels =
      '[ "https://www.googleapis.com/auth/adsense",
         "https://www.googleapis.com/auth/adsense.readonly"
       ]
  requestClient
    AdSenseAccountsAdclientsAdunitsListLinkedCustomChannels {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        adSenseService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdSenseAccountsAdclientsAdunitsListLinkedCustomChannelsResource
            )
            Core.mempty
