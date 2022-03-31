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
-- Module      : Gogol.CloudErrorReporting.Projects.Groups.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replace the data for the specified group. Fails if the group does not exist.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Error Reporting API Reference> for @clouderrorreporting.projects.groups.update@.
module Gogol.CloudErrorReporting.Projects.Groups.Update
  ( -- * Resource
    CloudErrorReportingProjectsGroupsUpdateResource,

    -- ** Constructing a Request
    newCloudErrorReportingProjectsGroupsUpdate,
    CloudErrorReportingProjectsGroupsUpdate,
  )
where

import Gogol.CloudErrorReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @clouderrorreporting.projects.groups.update@ method which the
-- 'CloudErrorReportingProjectsGroupsUpdate' request conforms to.
type CloudErrorReportingProjectsGroupsUpdateResource =
  "v1beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ErrorGroup
    Core.:> Core.Put '[Core.JSON] ErrorGroup

-- | Replace the data for the specified group. Fails if the group does not exist.
--
-- /See:/ 'newCloudErrorReportingProjectsGroupsUpdate' smart constructor.
data CloudErrorReportingProjectsGroupsUpdate = CloudErrorReportingProjectsGroupsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The group resource name. Example: projects\/my-project-123\/groups\/CNSgkpnppqKCUw
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ErrorGroup,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudErrorReportingProjectsGroupsUpdate' with the minimum fields required to make a request.
newCloudErrorReportingProjectsGroupsUpdate ::
  -- |  The group resource name. Example: projects\/my-project-123\/groups\/CNSgkpnppqKCUw See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ErrorGroup ->
  CloudErrorReportingProjectsGroupsUpdate
newCloudErrorReportingProjectsGroupsUpdate name payload =
  CloudErrorReportingProjectsGroupsUpdate
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
    CloudErrorReportingProjectsGroupsUpdate
  where
  type
    Rs CloudErrorReportingProjectsGroupsUpdate =
      ErrorGroup
  type
    Scopes CloudErrorReportingProjectsGroupsUpdate =
      '[CloudPlatform'FullControl]
  requestClient
    CloudErrorReportingProjectsGroupsUpdate {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudErrorReportingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudErrorReportingProjectsGroupsUpdateResource
            )
            Core.mempty
