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
-- Module      : Gogol.CloudErrorReporting.Projects.Groups.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the specified group.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Error Reporting API Reference> for @clouderrorreporting.projects.groups.get@.
module Gogol.CloudErrorReporting.Projects.Groups.Get
  ( -- * Resource
    CloudErrorReportingProjectsGroupsGetResource,

    -- ** Constructing a Request
    newCloudErrorReportingProjectsGroupsGet,
    CloudErrorReportingProjectsGroupsGet,
  )
where

import Gogol.CloudErrorReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @clouderrorreporting.projects.groups.get@ method which the
-- 'CloudErrorReportingProjectsGroupsGet' request conforms to.
type CloudErrorReportingProjectsGroupsGetResource =
  "v1beta1"
    Core.:> Core.Capture "groupName" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ErrorGroup

-- | Get the specified group.
--
-- /See:/ 'newCloudErrorReportingProjectsGroupsGet' smart constructor.
data CloudErrorReportingProjectsGroupsGet = CloudErrorReportingProjectsGroupsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The group resource name. Written as @projects\/{projectID}\/groups\/{group_name}@. Call <https://cloud.google.com/error-reporting/reference/rest/v1beta1/projects.groupStats/list groupStats.list> to return a list of groups belonging to this project. Example: @projects\/my-project-123\/groups\/my-group@
    groupName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudErrorReportingProjectsGroupsGet' with the minimum fields required to make a request.
newCloudErrorReportingProjectsGroupsGet ::
  -- |  Required. The group resource name. Written as @projects\/{projectID}\/groups\/{group_name}@. Call <https://cloud.google.com/error-reporting/reference/rest/v1beta1/projects.groupStats/list groupStats.list> to return a list of groups belonging to this project. Example: @projects\/my-project-123\/groups\/my-group@ See 'groupName'.
  Core.Text ->
  CloudErrorReportingProjectsGroupsGet
newCloudErrorReportingProjectsGroupsGet groupName =
  CloudErrorReportingProjectsGroupsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      groupName = groupName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudErrorReportingProjectsGroupsGet
  where
  type
    Rs CloudErrorReportingProjectsGroupsGet =
      ErrorGroup
  type
    Scopes CloudErrorReportingProjectsGroupsGet =
      '[CloudPlatform'FullControl]
  requestClient
    CloudErrorReportingProjectsGroupsGet {..} =
      go
        groupName
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudErrorReportingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudErrorReportingProjectsGroupsGetResource
            )
            Core.mempty
