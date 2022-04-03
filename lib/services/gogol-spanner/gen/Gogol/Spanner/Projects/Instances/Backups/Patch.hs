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
-- Module      : Gogol.Spanner.Projects.Instances.Backups.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a pending or completed Backup.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.patch@.
module Gogol.Spanner.Projects.Instances.Backups.Patch
  ( -- * Resource
    SpannerProjectsInstancesBackupsPatchResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesBackupsPatch (..),
    newSpannerProjectsInstancesBackupsPatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.patch@ method which the
-- 'SpannerProjectsInstancesBackupsPatch' request conforms to.
type SpannerProjectsInstancesBackupsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Backup
    Core.:> Core.Patch '[Core.JSON] Backup

-- | Updates a pending or completed Backup.
--
-- /See:/ 'newSpannerProjectsInstancesBackupsPatch' smart constructor.
data SpannerProjectsInstancesBackupsPatch = SpannerProjectsInstancesBackupsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only for the CreateBackup operation. Required for the UpdateBackup operation. A globally unique identifier for the backup which cannot be changed. Values are of the form @projects\/\/instances\/\/backups\/a-z*[a-z0-9]@ The final segment of the name must be between 2 and 60 characters in length. The backup is stored in the location(s) specified in the instance configuration of the instance containing the backup, identified by the prefix of the backup name of the form @projects\/\/instances\/@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Backup,
    -- | Required. A mask specifying which fields (e.g. @expire_time@) in the Backup resource should be updated. This mask is relative to the Backup resource, not to the request message. The field mask must always be specified; this prevents any future fields from being erased accidentally by clients that do not know about them.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesBackupsPatch' with the minimum fields required to make a request.
newSpannerProjectsInstancesBackupsPatch ::
  -- |  Output only for the CreateBackup operation. Required for the UpdateBackup operation. A globally unique identifier for the backup which cannot be changed. Values are of the form @projects\/\/instances\/\/backups\/a-z*[a-z0-9]@ The final segment of the name must be between 2 and 60 characters in length. The backup is stored in the location(s) specified in the instance configuration of the instance containing the backup, identified by the prefix of the backup name of the form @projects\/\/instances\/@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Backup ->
  SpannerProjectsInstancesBackupsPatch
newSpannerProjectsInstancesBackupsPatch name payload =
  SpannerProjectsInstancesBackupsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesBackupsPatch
  where
  type Rs SpannerProjectsInstancesBackupsPatch = Backup
  type
    Scopes SpannerProjectsInstancesBackupsPatch =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient
    SpannerProjectsInstancesBackupsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
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
                  SpannerProjectsInstancesBackupsPatchResource
            )
            Core.mempty
