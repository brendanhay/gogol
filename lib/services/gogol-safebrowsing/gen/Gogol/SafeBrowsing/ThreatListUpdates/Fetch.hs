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
-- Module      : Gogol.SafeBrowsing.ThreatListUpdates.Fetch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches the most recent threat list updates. A client can request updates for multiple lists at once.
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.threatListUpdates.fetch@.
module Gogol.SafeBrowsing.ThreatListUpdates.Fetch
  ( -- * Resource
    SafeBrowsingThreatListUpdatesFetchResource,

    -- ** Constructing a Request
    newSafeBrowsingThreatListUpdatesFetch,
    SafeBrowsingThreatListUpdatesFetch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.threatListUpdates.fetch@ method which the
-- 'SafeBrowsingThreatListUpdatesFetch' request conforms to.
type SafeBrowsingThreatListUpdatesFetchResource =
  "v4"
    Core.:> "threatListUpdates:fetch"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
    Core.:> Core.Post
              '[Core.JSON]
              GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse

-- | Fetches the most recent threat list updates. A client can request updates for multiple lists at once.
--
-- /See:/ 'newSafeBrowsingThreatListUpdatesFetch' smart constructor.
data SafeBrowsingThreatListUpdatesFetch = SafeBrowsingThreatListUpdatesFetch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SafeBrowsingThreatListUpdatesFetch' with the minimum fields required to make a request.
newSafeBrowsingThreatListUpdatesFetch ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest ->
  SafeBrowsingThreatListUpdatesFetch
newSafeBrowsingThreatListUpdatesFetch payload =
  SafeBrowsingThreatListUpdatesFetch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SafeBrowsingThreatListUpdatesFetch
  where
  type
    Rs SafeBrowsingThreatListUpdatesFetch =
      GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
  type Scopes SafeBrowsingThreatListUpdatesFetch = '[]
  requestClient SafeBrowsingThreatListUpdatesFetch {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      safeBrowsingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                SafeBrowsingThreatListUpdatesFetchResource
          )
          Core.mempty
