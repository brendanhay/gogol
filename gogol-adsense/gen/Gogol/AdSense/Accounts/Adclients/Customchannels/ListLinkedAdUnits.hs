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
-- Module      : Gogol.AdSense.Accounts.Adclients.Customchannels.ListLinkedAdUnits
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the ad units available for a custom channel.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.customchannels.listLinkedAdUnits@.
module Gogol.AdSense.Accounts.Adclients.Customchannels.ListLinkedAdUnits
  ( -- * Resource
    AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnitsResource,

    -- ** Constructing a Request
    newAdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits,
    AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits,
  )
where

import Gogol.AdSense.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adsense.accounts.adclients.customchannels.listLinkedAdUnits@ method which the
-- 'AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits' request conforms to.
type AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnitsResource =
  "v2"
    Core.:> Core.CaptureMode
              "parent"
              "listLinkedAdUnits"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListLinkedAdUnitsResponse

-- | Lists all the ad units available for a custom channel.
--
-- /See:/ 'newAdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits' smart constructor.
data AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits = AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of ad units to include in the response, used for paging. If unspecified, at most 10000 ad units will be returned. The maximum value is 10000; values above 10000 will be coerced to 10000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListLinkedAdUnits@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListLinkedAdUnits@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The custom channel which owns the collection of ad units. Format: accounts\/{account}\/adclients\/{adclient}\/customchannels\/{customchannel}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits' with the minimum fields required to make a request.
newAdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits ::
  -- |  Required. The custom channel which owns the collection of ad units. Format: accounts\/{account}\/adclients\/{adclient}\/customchannels\/{customchannel} See 'parent'.
  Core.Text ->
  AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits
newAdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits parent =
  AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits
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
    AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits
  where
  type
    Rs
      AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits =
      ListLinkedAdUnitsResponse
  type
    Scopes
      AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits =
      '[ "https://www.googleapis.com/auth/adsense",
         "https://www.googleapis.com/auth/adsense.readonly"
       ]
  requestClient
    AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnits {..} =
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
                  AdSenseAccountsAdclientsCustomchannelsListLinkedAdUnitsResource
            )
            Core.mempty
