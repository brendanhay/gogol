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
-- Module      : Gogol.AdSenseHost.Adclients.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all host ad clients in this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.adclients.list@.
module Gogol.AdSenseHost.Adclients.List
  ( -- * Resource
    AdSenseHostAdclientsListResource,

    -- ** Constructing a Request
    newAdSenseHostAdclientsList,
    AdSenseHostAdclientsList,
  )
where

import Gogol.AdSenseHost.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adsensehost.adclients.list@ method which the
-- 'AdSenseHostAdclientsList' request conforms to.
type AdSenseHostAdclientsListResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "adclients"
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AdClients

-- | List all host ad clients in this AdSense account.
--
-- /See:/ 'newAdSenseHostAdclientsList' smart constructor.
data AdSenseHostAdclientsList = AdSenseHostAdclientsList
  { -- | The maximum number of ad clients to include in the response, used for paging.
    maxResults :: (Core.Maybe Core.Word32),
    -- | A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response.
    pageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostAdclientsList' with the minimum fields required to make a request.
newAdSenseHostAdclientsList ::
  AdSenseHostAdclientsList
newAdSenseHostAdclientsList =
  AdSenseHostAdclientsList {maxResults = Core.Nothing, pageToken = Core.Nothing}

instance Core.GoogleRequest AdSenseHostAdclientsList where
  type Rs AdSenseHostAdclientsList = AdClients
  type
    Scopes AdSenseHostAdclientsList =
      '[Adsensehost'FullControl]
  requestClient AdSenseHostAdclientsList {..} =
    go
      maxResults
      pageToken
      (Core.Just Core.AltJSON)
      adSenseHostService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseHostAdclientsListResource
          )
          Core.mempty
