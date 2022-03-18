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
-- Module      : Network.Google.SafeBrowsing.EncodedUpdates.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
--
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.encodedUpdates.get@.
module Network.Google.SafeBrowsing.EncodedUpdates.Get
  ( -- * Resource
    SafeBrowsingEncodedUpdatesGetResource,

    -- ** Constructing a Request
    newSafeBrowsingEncodedUpdatesGet,
    SafeBrowsingEncodedUpdatesGet,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.encodedUpdates.get@ method which the
-- 'SafeBrowsingEncodedUpdatesGet' request conforms to.
type SafeBrowsingEncodedUpdatesGetResource =
  "v4"
    Core.:> "encodedUpdates"
    Core.:> Core.Capture "encodedRequest" Core.Base64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clientId" Core.Text
    Core.:> Core.QueryParam "clientVersion" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse

-- |
--
-- /See:/ 'newSafeBrowsingEncodedUpdatesGet' smart constructor.
data SafeBrowsingEncodedUpdatesGet = SafeBrowsingEncodedUpdatesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A client ID that uniquely identifies the client implementation of the Safe Browsing API.
    clientId :: (Core.Maybe Core.Text),
    -- | The version of the client implementation.
    clientVersion :: (Core.Maybe Core.Text),
    -- | A serialized FetchThreatListUpdatesRequest proto.
    encodedRequest :: Core.Base64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SafeBrowsingEncodedUpdatesGet' with the minimum fields required to make a request.
newSafeBrowsingEncodedUpdatesGet ::
  -- |  A serialized FetchThreatListUpdatesRequest proto. See 'encodedRequest'.
  Core.Base64 ->
  SafeBrowsingEncodedUpdatesGet
newSafeBrowsingEncodedUpdatesGet encodedRequest =
  SafeBrowsingEncodedUpdatesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clientId = Core.Nothing,
      clientVersion = Core.Nothing,
      encodedRequest = encodedRequest,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SafeBrowsingEncodedUpdatesGet
  where
  type
    Rs SafeBrowsingEncodedUpdatesGet =
      GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
  type Scopes SafeBrowsingEncodedUpdatesGet = '[]
  requestClient SafeBrowsingEncodedUpdatesGet {..} =
    go
      encodedRequest
      xgafv
      accessToken
      callback
      clientId
      clientVersion
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      safeBrowsingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SafeBrowsingEncodedUpdatesGetResource
          )
          Core.mempty
