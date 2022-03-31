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
-- Module      : Gogol.TPU.Projects.Locations.GenerateServiceIdentity
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates the Cloud TPU service identity for the project.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.generateServiceIdentity@.
module Gogol.TPU.Projects.Locations.GenerateServiceIdentity
  ( -- * Resource
    TPUProjectsLocationsGenerateServiceIdentityResource,

    -- ** Constructing a Request
    newTPUProjectsLocationsGenerateServiceIdentity,
    TPUProjectsLocationsGenerateServiceIdentity,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TPU.Types

-- | A resource alias for @tpu.projects.locations.generateServiceIdentity@ method which the
-- 'TPUProjectsLocationsGenerateServiceIdentity' request conforms to.
type TPUProjectsLocationsGenerateServiceIdentityResource =
  "v2alpha1"
    Core.:> Core.CaptureMode
              "parent"
              "generateServiceIdentity"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GenerateServiceIdentityRequest
    Core.:> Core.Post
              '[Core.JSON]
              GenerateServiceIdentityResponse

-- | Generates the Cloud TPU service identity for the project.
--
-- /See:/ 'newTPUProjectsLocationsGenerateServiceIdentity' smart constructor.
data TPUProjectsLocationsGenerateServiceIdentity = TPUProjectsLocationsGenerateServiceIdentity
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent resource name.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GenerateServiceIdentityRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TPUProjectsLocationsGenerateServiceIdentity' with the minimum fields required to make a request.
newTPUProjectsLocationsGenerateServiceIdentity ::
  -- |  Required. The parent resource name. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GenerateServiceIdentityRequest ->
  TPUProjectsLocationsGenerateServiceIdentity
newTPUProjectsLocationsGenerateServiceIdentity parent payload =
  TPUProjectsLocationsGenerateServiceIdentity
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TPUProjectsLocationsGenerateServiceIdentity
  where
  type
    Rs TPUProjectsLocationsGenerateServiceIdentity =
      GenerateServiceIdentityResponse
  type
    Scopes
      TPUProjectsLocationsGenerateServiceIdentity =
      '[CloudPlatform'FullControl]
  requestClient
    TPUProjectsLocationsGenerateServiceIdentity {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        tPUService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TPUProjectsLocationsGenerateServiceIdentityResource
            )
            Core.mempty
