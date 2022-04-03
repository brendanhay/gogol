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
-- Module      : Gogol.Spanner.Projects.Instances.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an instance, and begins allocating or releasing resources as requested. The returned long-running operation can be used to track the progress of updating the instance. If the named instance does not exist, returns @NOT_FOUND@. Immediately upon completion of this request: * For resource types for which a decrease in the instance\'s allocation has been requested, billing is based on the newly-requested level. Until completion of the returned operation: * Cancelling the operation sets its metadata\'s cancel_time, and begins restoring resources to their pre-request values. The operation is guaranteed to succeed at undoing all resource changes, after which point it terminates with a @CANCELLED@ status. * All other attempts to modify the instance are rejected. * Reading the instance via the API continues to give the pre-request resource levels. Upon completion of the returned operation: * Billing begins for all successfully-allocated resources (some types may have lower than the requested levels). * All
-- newly-reserved resources are available for serving the instance\'s tables. * The instance\'s new resource levels are readable via the API. The returned long-running operation will have a name of the format @\/operations\/@ and can be used to track the instance modification. The metadata field type is UpdateInstanceMetadata. The response field type is Instance, if successful. Authorization requires @spanner.instances.update@ permission on the resource name.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.patch@.
module Gogol.Spanner.Projects.Instances.Patch
  ( -- * Resource
    SpannerProjectsInstancesPatchResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesPatch (..),
    newSpannerProjectsInstancesPatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.patch@ method which the
-- 'SpannerProjectsInstancesPatch' request conforms to.
type SpannerProjectsInstancesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UpdateInstanceRequest
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates an instance, and begins allocating or releasing resources as requested. The returned long-running operation can be used to track the progress of updating the instance. If the named instance does not exist, returns @NOT_FOUND@. Immediately upon completion of this request: * For resource types for which a decrease in the instance\'s allocation has been requested, billing is based on the newly-requested level. Until completion of the returned operation: * Cancelling the operation sets its metadata\'s cancel_time, and begins restoring resources to their pre-request values. The operation is guaranteed to succeed at undoing all resource changes, after which point it terminates with a @CANCELLED@ status. * All other attempts to modify the instance are rejected. * Reading the instance via the API continues to give the pre-request resource levels. Upon completion of the returned operation: * Billing begins for all successfully-allocated resources (some types may have lower than the requested levels). * All
-- newly-reserved resources are available for serving the instance\'s tables. * The instance\'s new resource levels are readable via the API. The returned long-running operation will have a name of the format @\/operations\/@ and can be used to track the instance modification. The metadata field type is UpdateInstanceMetadata. The response field type is Instance, if successful. Authorization requires @spanner.instances.update@ permission on the resource name.
--
-- /See:/ 'newSpannerProjectsInstancesPatch' smart constructor.
data SpannerProjectsInstancesPatch = SpannerProjectsInstancesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. A unique identifier for the instance, which cannot be changed after the instance is created. Values are of the form @projects\/\/instances\/a-z*[a-z0-9]@. The final segment of the name must be between 2 and 64 characters in length.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UpdateInstanceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesPatch' with the minimum fields required to make a request.
newSpannerProjectsInstancesPatch ::
  -- |  Required. A unique identifier for the instance, which cannot be changed after the instance is created. Values are of the form @projects\/\/instances\/a-z*[a-z0-9]@. The final segment of the name must be between 2 and 64 characters in length. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UpdateInstanceRequest ->
  SpannerProjectsInstancesPatch
newSpannerProjectsInstancesPatch name payload =
  SpannerProjectsInstancesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesPatch
  where
  type Rs SpannerProjectsInstancesPatch = Operation
  type
    Scopes SpannerProjectsInstancesPatch =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstancesPatch {..} =
    go
      name
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
              Core.Proxy SpannerProjectsInstancesPatchResource
          )
          Core.mempty
