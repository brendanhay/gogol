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
-- Module      : Gogol.FirebaseDynamicLinks.InstallAttribution
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get iOS strong\/weak-match info for post-install attribution.
--
-- /See:/ <https://firebase.google.com/docs/dynamic-links/ Firebase Dynamic Links API Reference> for @firebasedynamiclinks.installAttribution@.
module Gogol.FirebaseDynamicLinks.InstallAttribution
  ( -- * Resource
    FirebaseDynamicLinksInstallAttributionResource,

    -- ** Constructing a Request
    FirebaseDynamicLinksInstallAttribution (..),
    newFirebaseDynamicLinksInstallAttribution,
  )
where

import Gogol.FirebaseDynamicLinks.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firebasedynamiclinks.installAttribution@ method which the
-- 'FirebaseDynamicLinksInstallAttribution' request conforms to.
type FirebaseDynamicLinksInstallAttributionResource =
  "v1"
    Core.:> "installAttribution"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GetIosPostInstallAttributionRequest
    Core.:> Core.Post '[Core.JSON] GetIosPostInstallAttributionResponse

-- | Get iOS strong\/weak-match info for post-install attribution.
--
-- /See:/ 'newFirebaseDynamicLinksInstallAttribution' smart constructor.
data FirebaseDynamicLinksInstallAttribution = FirebaseDynamicLinksInstallAttribution
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GetIosPostInstallAttributionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseDynamicLinksInstallAttribution' with the minimum fields required to make a request.
newFirebaseDynamicLinksInstallAttribution ::
  -- |  Multipart request metadata. See 'payload'.
  GetIosPostInstallAttributionRequest ->
  FirebaseDynamicLinksInstallAttribution
newFirebaseDynamicLinksInstallAttribution payload =
  FirebaseDynamicLinksInstallAttribution
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FirebaseDynamicLinksInstallAttribution where
  type
    Rs FirebaseDynamicLinksInstallAttribution =
      GetIosPostInstallAttributionResponse
  type
    Scopes FirebaseDynamicLinksInstallAttribution =
      '[Firebase'FullControl]
  requestClient FirebaseDynamicLinksInstallAttribution {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      firebaseDynamicLinksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FirebaseDynamicLinksInstallAttributionResource
          )
          Core.mempty
