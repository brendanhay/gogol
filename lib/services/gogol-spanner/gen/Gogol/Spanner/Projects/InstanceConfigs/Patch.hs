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
-- Module      : Gogol.Spanner.Projects.InstanceConfigs.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an instance config. The returned long-running operation can be used to track the progress of updating the instance. If the named instance config does not exist, returns @NOT_FOUND@. Only user managed configurations can be updated. Immediately after the request returns: * The instance config\'s reconciling field is set to true. While the operation is pending: * Cancelling the operation sets its metadata\'s cancel_time. The operation is guaranteed to succeed at undoing all changes, after which point it terminates with a @CANCELLED@ status. * All other attempts to modify the instance config are rejected. * Reading the instance config via the API continues to give the pre-request values. Upon completion of the returned operation: * Creating instances using the instance configuration uses the new values. * The instance config\'s new values are readable via the API. * The instance config\'s reconciling field becomes false. The returned long-running operation will have a name of the format @\/operations\/@
-- and can be used to track the instance config modification. The metadata field type is UpdateInstanceConfigMetadata. The response field type is InstanceConfig, if successful. Authorization requires @spanner.instanceConfigs.update@ permission on the resource name.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instanceConfigs.patch@.
module Gogol.Spanner.Projects.InstanceConfigs.Patch
  ( -- * Resource
    SpannerProjectsInstanceConfigsPatchResource,

    -- ** Constructing a Request
    SpannerProjectsInstanceConfigsPatch (..),
    newSpannerProjectsInstanceConfigsPatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instanceConfigs.patch@ method which the
-- 'SpannerProjectsInstanceConfigsPatch' request conforms to.
type SpannerProjectsInstanceConfigsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UpdateInstanceConfigRequest
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates an instance config. The returned long-running operation can be used to track the progress of updating the instance. If the named instance config does not exist, returns @NOT_FOUND@. Only user managed configurations can be updated. Immediately after the request returns: * The instance config\'s reconciling field is set to true. While the operation is pending: * Cancelling the operation sets its metadata\'s cancel_time. The operation is guaranteed to succeed at undoing all changes, after which point it terminates with a @CANCELLED@ status. * All other attempts to modify the instance config are rejected. * Reading the instance config via the API continues to give the pre-request values. Upon completion of the returned operation: * Creating instances using the instance configuration uses the new values. * The instance config\'s new values are readable via the API. * The instance config\'s reconciling field becomes false. The returned long-running operation will have a name of the format @\/operations\/@
-- and can be used to track the instance config modification. The metadata field type is UpdateInstanceConfigMetadata. The response field type is InstanceConfig, if successful. Authorization requires @spanner.instanceConfigs.update@ permission on the resource name.
--
-- /See:/ 'newSpannerProjectsInstanceConfigsPatch' smart constructor.
data SpannerProjectsInstanceConfigsPatch = SpannerProjectsInstanceConfigsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A unique identifier for the instance configuration. Values are of the form @projects\/\/instanceConfigs\/a-z*@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UpdateInstanceConfigRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstanceConfigsPatch' with the minimum fields required to make a request.
newSpannerProjectsInstanceConfigsPatch ::
  -- |  A unique identifier for the instance configuration. Values are of the form @projects\/\/instanceConfigs\/a-z*@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UpdateInstanceConfigRequest ->
  SpannerProjectsInstanceConfigsPatch
newSpannerProjectsInstanceConfigsPatch name payload =
  SpannerProjectsInstanceConfigsPatch
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
    SpannerProjectsInstanceConfigsPatch
  where
  type
    Rs SpannerProjectsInstanceConfigsPatch =
      Operation
  type
    Scopes SpannerProjectsInstanceConfigsPatch =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstanceConfigsPatch {..} =
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
              Core.Proxy
                SpannerProjectsInstanceConfigsPatchResource
          )
          Core.mempty
