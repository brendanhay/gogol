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
-- Module      : Gogol.Logging.Folders.Locations.Buckets.Views.TestIamPermissions
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.buckets.views.testIamPermissions@.
module Gogol.Logging.Folders.Locations.Buckets.Views.TestIamPermissions
  ( -- * Resource
    LoggingFoldersLocationsBucketsViewsTestIamPermissionsResource,

    -- ** Constructing a Request
    LoggingFoldersLocationsBucketsViewsTestIamPermissions (..),
    newLoggingFoldersLocationsBucketsViewsTestIamPermissions,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.folders.locations.buckets.views.testIamPermissions@ method which the
-- 'LoggingFoldersLocationsBucketsViewsTestIamPermissions' request conforms to.
type LoggingFoldersLocationsBucketsViewsTestIamPermissionsResource =
  "v2"
    Core.:> Core.CaptureMode "resource" "testIamPermissions" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TestIamPermissionsRequest
    Core.:> Core.Post '[Core.JSON] TestIamPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.
--
-- /See:/ 'newLoggingFoldersLocationsBucketsViewsTestIamPermissions' smart constructor.
data LoggingFoldersLocationsBucketsViewsTestIamPermissions = LoggingFoldersLocationsBucketsViewsTestIamPermissions
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TestIamPermissionsRequest,
    -- | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https:\/\/cloud.google.com\/apis\/design\/resource_names) for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingFoldersLocationsBucketsViewsTestIamPermissions' with the minimum fields required to make a request.
newLoggingFoldersLocationsBucketsViewsTestIamPermissions ::
  -- |  Multipart request metadata. See 'payload'.
  TestIamPermissionsRequest ->
  -- |  REQUIRED: The resource for which the policy detail is being requested. See Resource names (https:\/\/cloud.google.com\/apis\/design\/resource_names) for the appropriate value for this field. See 'resource'.
  Core.Text ->
  LoggingFoldersLocationsBucketsViewsTestIamPermissions
newLoggingFoldersLocationsBucketsViewsTestIamPermissions
  payload
  resource =
    LoggingFoldersLocationsBucketsViewsTestIamPermissions
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        payload = payload,
        resource = resource,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    LoggingFoldersLocationsBucketsViewsTestIamPermissions
  where
  type
    Rs LoggingFoldersLocationsBucketsViewsTestIamPermissions =
      TestIamPermissionsResponse
  type
    Scopes LoggingFoldersLocationsBucketsViewsTestIamPermissions =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Logging'Admin,
         Logging'Read
       ]
  requestClient
    LoggingFoldersLocationsBucketsViewsTestIamPermissions {..} =
      go
        resource
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        loggingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  LoggingFoldersLocationsBucketsViewsTestIamPermissionsResource
            )
            Core.mempty
