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
-- Module      : Gogol.FirebaseRemoteConfig.Projects.GetRemoteConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the latest version Remote Configuration for a project. Returns the RemoteConfig as the payload, and also the eTag as a response header.
--
-- /See:/ <https://firebase.google.com/docs/remote-config/ Firebase Remote Config API Reference> for @firebaseremoteconfig.projects.getRemoteConfig@.
module Gogol.FirebaseRemoteConfig.Projects.GetRemoteConfig
  ( -- * Resource
    FirebaseRemoteConfigProjectsGetRemoteConfigResource,

    -- ** Constructing a Request
    FirebaseRemoteConfigProjectsGetRemoteConfig (..),
    newFirebaseRemoteConfigProjectsGetRemoteConfig,
  )
where

import Gogol.FirebaseRemoteConfig.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firebaseremoteconfig.projects.getRemoteConfig@ method which the
-- 'FirebaseRemoteConfigProjectsGetRemoteConfig' request conforms to.
type FirebaseRemoteConfigProjectsGetRemoteConfigResource =
  "v1"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "remoteConfig"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "bearer_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pp" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] RemoteConfig

-- | Get the latest version Remote Configuration for a project. Returns the RemoteConfig as the payload, and also the eTag as a response header.
--
-- /See:/ 'newFirebaseRemoteConfigProjectsGetRemoteConfig' smart constructor.
data FirebaseRemoteConfigProjectsGetRemoteConfig = FirebaseRemoteConfigProjectsGetRemoteConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | OAuth bearer token.
    bearerToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Pretty-print response.
    pp :: Core.Bool,
    -- | The GMP project identifier. Required. See note at the beginning of this file regarding project ids.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseRemoteConfigProjectsGetRemoteConfig' with the minimum fields required to make a request.
newFirebaseRemoteConfigProjectsGetRemoteConfig ::
  -- |  The GMP project identifier. Required. See note at the beginning of this file regarding project ids. See 'project'.
  Core.Text ->
  FirebaseRemoteConfigProjectsGetRemoteConfig
newFirebaseRemoteConfigProjectsGetRemoteConfig project =
  FirebaseRemoteConfigProjectsGetRemoteConfig
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      bearerToken = Core.Nothing,
      callback = Core.Nothing,
      pp = Core.True,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FirebaseRemoteConfigProjectsGetRemoteConfig
  where
  type Rs FirebaseRemoteConfigProjectsGetRemoteConfig = RemoteConfig
  type Scopes FirebaseRemoteConfigProjectsGetRemoteConfig = '[]
  requestClient FirebaseRemoteConfigProjectsGetRemoteConfig {..} =
    go
      project
      xgafv
      accessToken
      bearerToken
      callback
      (Core.Just pp)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      firebaseRemoteConfigService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FirebaseRemoteConfigProjectsGetRemoteConfigResource
          )
          Core.mempty
