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
-- Module      : Gogol.FirebaseRemoteConfig.Projects.UpdateRemoteConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a RemoteConfig. We treat this as an always-existing resource (when it is not found in our data store, we treat it as version 0, a template with zero conditions and zero parameters). Hence there are no Create or Delete operations. Returns the updated template when successful (and the updated eTag as a response header), or an error if things go wrong. Possible error messages: * VALIDATION/ERROR (HTTP status 400) with additional details if the template being passed in can not be validated. * AUTHENTICATION/ERROR (HTTP status 401) if the request can not be authenticate (e.g. no access token, or invalid access token). * AUTHORIZATION/ERROR (HTTP status 403) if the request can not be authorized (e.g. the user has no access to the specified project id). * VERSION/MISMATCH (HTTP status 412) when trying to update when the expected eTag (passed in via the \"If-match\" header) is not specified, or is specified but does does not match the current eTag. * Internal error (HTTP status 500) for Database problems or
-- other internal errors.
--
-- /See:/ <https://firebase.google.com/docs/remote-config/ Firebase Remote Config API Reference> for @firebaseremoteconfig.projects.updateRemoteConfig@.
module Gogol.FirebaseRemoteConfig.Projects.UpdateRemoteConfig
  ( -- * Resource
    FirebaseRemoteConfigProjectsUpdateRemoteConfigResource,

    -- ** Constructing a Request
    newFirebaseRemoteConfigProjectsUpdateRemoteConfig,
    FirebaseRemoteConfigProjectsUpdateRemoteConfig,
  )
where

import Gogol.FirebaseRemoteConfig.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @firebaseremoteconfig.projects.updateRemoteConfig@ method which the
-- 'FirebaseRemoteConfigProjectsUpdateRemoteConfig' request conforms to.
type FirebaseRemoteConfigProjectsUpdateRemoteConfigResource =
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
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RemoteConfig
    Core.:> Core.Put '[Core.JSON] RemoteConfig

-- | Update a RemoteConfig. We treat this as an always-existing resource (when it is not found in our data store, we treat it as version 0, a template with zero conditions and zero parameters). Hence there are no Create or Delete operations. Returns the updated template when successful (and the updated eTag as a response header), or an error if things go wrong. Possible error messages: * VALIDATION/ERROR (HTTP status 400) with additional details if the template being passed in can not be validated. * AUTHENTICATION/ERROR (HTTP status 401) if the request can not be authenticate (e.g. no access token, or invalid access token). * AUTHORIZATION/ERROR (HTTP status 403) if the request can not be authorized (e.g. the user has no access to the specified project id). * VERSION/MISMATCH (HTTP status 412) when trying to update when the expected eTag (passed in via the \"If-match\" header) is not specified, or is specified but does does not match the current eTag. * Internal error (HTTP status 500) for Database problems or
-- other internal errors.
--
-- /See:/ 'newFirebaseRemoteConfigProjectsUpdateRemoteConfig' smart constructor.
data FirebaseRemoteConfigProjectsUpdateRemoteConfig = FirebaseRemoteConfigProjectsUpdateRemoteConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | OAuth bearer token.
    bearerToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: RemoteConfig,
    -- | Pretty-print response.
    pp :: Core.Bool,
    -- | The GMP project identifier. Required. See note at the beginning of this file regarding project ids.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional. Defaults to \<code>false\<\/code> (UpdateRemoteConfig call should update the backend if there are no validation\/interal errors). May be set to \<code>true\<\/code> to indicate that, should no validation errors occur, the call should return a \"200 OK\" instead of performing the update. Note that other error messages (500 Internal Error, 412 Version Mismatch, etc) may still result after flipping to \<code>false\<\/code>, even if getting a \"200 OK\" when calling with \<code>true\<\/code>.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseRemoteConfigProjectsUpdateRemoteConfig' with the minimum fields required to make a request.
newFirebaseRemoteConfigProjectsUpdateRemoteConfig ::
  -- |  Multipart request metadata. See 'payload'.
  RemoteConfig ->
  -- |  The GMP project identifier. Required. See note at the beginning of this file regarding project ids. See 'project'.
  Core.Text ->
  FirebaseRemoteConfigProjectsUpdateRemoteConfig
newFirebaseRemoteConfigProjectsUpdateRemoteConfig payload project =
  FirebaseRemoteConfigProjectsUpdateRemoteConfig
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      bearerToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      pp = Core.True,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance
  Core.GoogleRequest
    FirebaseRemoteConfigProjectsUpdateRemoteConfig
  where
  type
    Rs
      FirebaseRemoteConfigProjectsUpdateRemoteConfig =
      RemoteConfig
  type
    Scopes
      FirebaseRemoteConfigProjectsUpdateRemoteConfig =
      '[]
  requestClient
    FirebaseRemoteConfigProjectsUpdateRemoteConfig {..} =
      go
        project
        xgafv
        accessToken
        bearerToken
        callback
        (Core.Just pp)
        uploadType
        uploadProtocol
        validateOnly
        (Core.Just Core.AltJSON)
        payload
        firebaseRemoteConfigService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FirebaseRemoteConfigProjectsUpdateRemoteConfigResource
            )
            Core.mempty
