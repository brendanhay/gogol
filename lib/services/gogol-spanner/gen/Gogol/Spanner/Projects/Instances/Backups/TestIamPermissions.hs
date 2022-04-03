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
-- Module      : Gogol.Spanner.Projects.Instances.Backups.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that the caller has on the specified database or backup resource. Attempting this RPC on a non-existent Cloud Spanner database will result in a NOT/FOUND error if the user has @spanner.databases.list@ permission on the containing Cloud Spanner instance. Otherwise returns an empty set of permissions. Calling this method on a backup that does not exist will result in a NOT/FOUND error if the user has @spanner.backups.list@ permission on the containing instance.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.testIamPermissions@.
module Gogol.Spanner.Projects.Instances.Backups.TestIamPermissions
  ( -- * Resource
    SpannerProjectsInstancesBackupsTestIamPermissionsResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesBackupsTestIamPermissions (..),
    newSpannerProjectsInstancesBackupsTestIamPermissions,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.testIamPermissions@ method which the
-- 'SpannerProjectsInstancesBackupsTestIamPermissions' request conforms to.
type SpannerProjectsInstancesBackupsTestIamPermissionsResource =
  "v1"
    Core.:> Core.CaptureMode
              "resource"
              "testIamPermissions"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TestIamPermissionsRequest
    Core.:> Core.Post '[Core.JSON] TestIamPermissionsResponse

-- | Returns permissions that the caller has on the specified database or backup resource. Attempting this RPC on a non-existent Cloud Spanner database will result in a NOT/FOUND error if the user has @spanner.databases.list@ permission on the containing Cloud Spanner instance. Otherwise returns an empty set of permissions. Calling this method on a backup that does not exist will result in a NOT/FOUND error if the user has @spanner.backups.list@ permission on the containing instance.
--
-- /See:/ 'newSpannerProjectsInstancesBackupsTestIamPermissions' smart constructor.
data SpannerProjectsInstancesBackupsTestIamPermissions = SpannerProjectsInstancesBackupsTestIamPermissions
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TestIamPermissionsRequest,
    -- | REQUIRED: The Cloud Spanner resource for which permissions are being tested. The format is @projects\/\/instances\/@ for instance resources and @projects\/\/instances\/\/databases\/@ for database resources.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesBackupsTestIamPermissions' with the minimum fields required to make a request.
newSpannerProjectsInstancesBackupsTestIamPermissions ::
  -- |  Multipart request metadata. See 'payload'.
  TestIamPermissionsRequest ->
  -- |  REQUIRED: The Cloud Spanner resource for which permissions are being tested. The format is @projects\/\/instances\/@ for instance resources and @projects\/\/instances\/\/databases\/@ for database resources. See 'resource'.
  Core.Text ->
  SpannerProjectsInstancesBackupsTestIamPermissions
newSpannerProjectsInstancesBackupsTestIamPermissions payload resource =
  SpannerProjectsInstancesBackupsTestIamPermissions
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesBackupsTestIamPermissions
  where
  type
    Rs
      SpannerProjectsInstancesBackupsTestIamPermissions =
      TestIamPermissionsResponse
  type
    Scopes
      SpannerProjectsInstancesBackupsTestIamPermissions =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient
    SpannerProjectsInstancesBackupsTestIamPermissions {..} =
      go
        resource
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
                  SpannerProjectsInstancesBackupsTestIamPermissionsResource
            )
            Core.mempty
