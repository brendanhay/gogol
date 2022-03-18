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
-- Module      : Network.Google.SafeBrowsing.ThreatMatches.Find
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds the threat entries that match the Safe Browsing lists.
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.threatMatches.find@.
module Network.Google.SafeBrowsing.ThreatMatches.Find
  ( -- * Resource
    SafeBrowsingThreatMatchesFindResource,

    -- ** Constructing a Request
    newSafeBrowsingThreatMatchesFind,
    SafeBrowsingThreatMatchesFind,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.threatMatches.find@ method which the
-- 'SafeBrowsingThreatMatchesFind' request conforms to.
type SafeBrowsingThreatMatchesFindResource =
  "v4"
    Core.:> "threatMatches:find"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
    Core.:> Core.Post
              '[Core.JSON]
              GoogleSecuritySafebrowsingV4FindThreatMatchesResponse

-- | Finds the threat entries that match the Safe Browsing lists.
--
-- /See:/ 'newSafeBrowsingThreatMatchesFind' smart constructor.
data SafeBrowsingThreatMatchesFind = SafeBrowsingThreatMatchesFind
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleSecuritySafebrowsingV4FindThreatMatchesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SafeBrowsingThreatMatchesFind' with the minimum fields required to make a request.
newSafeBrowsingThreatMatchesFind ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleSecuritySafebrowsingV4FindThreatMatchesRequest ->
  SafeBrowsingThreatMatchesFind
newSafeBrowsingThreatMatchesFind payload =
  SafeBrowsingThreatMatchesFind
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SafeBrowsingThreatMatchesFind
  where
  type
    Rs SafeBrowsingThreatMatchesFind =
      GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
  type Scopes SafeBrowsingThreatMatchesFind = '[]
  requestClient SafeBrowsingThreatMatchesFind {..} =
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
              Core.Proxy SafeBrowsingThreatMatchesFindResource
          )
          Core.mempty
