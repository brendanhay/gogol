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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.AppProfiles.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about app profiles in an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.appProfiles.list@.
module Gogol.BigtableAdmin.Projects.Instances.AppProfiles.List
  ( -- * Resource
    BigtableAdminProjectsInstancesAppProfilesListResource,

    -- ** Constructing a Request
    newBigtableAdminProjectsInstancesAppProfilesList,
    BigtableAdminProjectsInstancesAppProfilesList,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.appProfiles.list@ method which the
-- 'BigtableAdminProjectsInstancesAppProfilesList' request conforms to.
type BigtableAdminProjectsInstancesAppProfilesListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "appProfiles"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAppProfilesResponse

-- | Lists information about app profiles in an instance.
--
-- /See:/ 'newBigtableAdminProjectsInstancesAppProfilesList' smart constructor.
data BigtableAdminProjectsInstancesAppProfilesList = BigtableAdminProjectsInstancesAppProfilesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Maximum number of results per page. A page/size of zero lets the server choose the number of items to return. A page/size which is strictly positive will return at most that many items. A negative page/size will cause an error. Following the first request, subsequent paginated calls are not required to pass a page/size. If a page/size is set in subsequent calls, it must match the page/size given in the first request.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The value of @next_page_token@ returned by a previous call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The unique name of the instance for which a list of app profiles is requested. Values are of the form @projects\/{project}\/instances\/{instance}@. Use @{instance} = \'-\'@ to list AppProfiles for all Instances in a project, e.g., @projects\/myproject\/instances\/-@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesAppProfilesList' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesAppProfilesList ::
  -- |  Required. The unique name of the instance for which a list of app profiles is requested. Values are of the form @projects\/{project}\/instances\/{instance}@. Use @{instance} = \'-\'@ to list AppProfiles for all Instances in a project, e.g., @projects\/myproject\/instances\/-@. See 'parent'.
  Core.Text ->
  BigtableAdminProjectsInstancesAppProfilesList
newBigtableAdminProjectsInstancesAppProfilesList parent =
  BigtableAdminProjectsInstancesAppProfilesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesAppProfilesList
  where
  type
    Rs BigtableAdminProjectsInstancesAppProfilesList =
      ListAppProfilesResponse
  type
    Scopes
      BigtableAdminProjectsInstancesAppProfilesList =
      '[ "https://www.googleapis.com/auth/bigtable.admin",
         "https://www.googleapis.com/auth/bigtable.admin.cluster",
         "https://www.googleapis.com/auth/bigtable.admin.instance",
         "https://www.googleapis.com/auth/cloud-bigtable.admin",
         "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient
    BigtableAdminProjectsInstancesAppProfilesList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        bigtableAdminService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigtableAdminProjectsInstancesAppProfilesListResource
            )
            Core.mempty
