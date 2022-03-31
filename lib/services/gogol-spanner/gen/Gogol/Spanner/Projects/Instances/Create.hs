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
-- Module      : Gogol.Spanner.Projects.Instances.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an instance and begins preparing it to begin serving. The returned long-running operation can be used to track the progress of preparing the new instance. The instance name is assigned by the caller. If the named instance already exists, @CreateInstance@ returns @ALREADY_EXISTS@. Immediately upon completion of this request: * The instance is readable via the API, with all requested attributes but no allocated resources. Its state is @CREATING@. Until completion of the returned operation: * Cancelling the operation renders the instance immediately unreadable via the API. * The instance can be deleted. * All other attempts to modify the instance are rejected. Upon completion of the returned operation: * Billing for all successfully-allocated resources begins (some types may have lower than the requested levels). * Databases can be created in the instance. * The instance\'s allocated resource levels are readable via the API. * The instance\'s state becomes @READY@. The returned long-running operation
-- will have a name of the format @\/operations\/@ and can be used to track creation of the instance. The metadata field type is CreateInstanceMetadata. The response field type is Instance, if successful.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.create@.
module Gogol.Spanner.Projects.Instances.Create
  ( -- * Resource
    SpannerProjectsInstancesCreateResource,

    -- ** Constructing a Request
    newSpannerProjectsInstancesCreate,
    SpannerProjectsInstancesCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.create@ method which the
-- 'SpannerProjectsInstancesCreate' request conforms to.
type SpannerProjectsInstancesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "instances"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateInstanceRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates an instance and begins preparing it to begin serving. The returned long-running operation can be used to track the progress of preparing the new instance. The instance name is assigned by the caller. If the named instance already exists, @CreateInstance@ returns @ALREADY_EXISTS@. Immediately upon completion of this request: * The instance is readable via the API, with all requested attributes but no allocated resources. Its state is @CREATING@. Until completion of the returned operation: * Cancelling the operation renders the instance immediately unreadable via the API. * The instance can be deleted. * All other attempts to modify the instance are rejected. Upon completion of the returned operation: * Billing for all successfully-allocated resources begins (some types may have lower than the requested levels). * Databases can be created in the instance. * The instance\'s allocated resource levels are readable via the API. * The instance\'s state becomes @READY@. The returned long-running operation
-- will have a name of the format @\/operations\/@ and can be used to track creation of the instance. The metadata field type is CreateInstanceMetadata. The response field type is Instance, if successful.
--
-- /See:/ 'newSpannerProjectsInstancesCreate' smart constructor.
data SpannerProjectsInstancesCreate = SpannerProjectsInstancesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the project in which to create the instance. Values are of the form @projects\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateInstanceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesCreate' with the minimum fields required to make a request.
newSpannerProjectsInstancesCreate ::
  -- |  Required. The name of the project in which to create the instance. Values are of the form @projects\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateInstanceRequest ->
  SpannerProjectsInstancesCreate
newSpannerProjectsInstancesCreate parent payload =
  SpannerProjectsInstancesCreate
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
    SpannerProjectsInstancesCreate
  where
  type Rs SpannerProjectsInstancesCreate = Operation
  type
    Scopes SpannerProjectsInstancesCreate =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstancesCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      spannerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SpannerProjectsInstancesCreateResource
          )
          Core.mempty
