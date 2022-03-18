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
-- Module      : Network.Google.BigtableAdmin.Projects.Instances.Clusters.Backups.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Cloud Bigtable backups. Returns both completed and pending backups.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.backups.list@.
module Network.Google.BigtableAdmin.Projects.Instances.Clusters.Backups.List
  ( -- * Resource
    BigtableAdminProjectsInstancesClustersBackupsListResource,

    -- ** Constructing a Request
    newBigtableAdminProjectsInstancesClustersBackupsList,
    BigtableAdminProjectsInstancesClustersBackupsList,
  )
where

import Network.Google.BigtableAdmin.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.clusters.backups.list@ method which the
-- 'BigtableAdminProjectsInstancesClustersBackupsList' request conforms to.
type BigtableAdminProjectsInstancesClustersBackupsListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "backups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListBackupsResponse

-- | Lists Cloud Bigtable backups. Returns both completed and pending backups.
--
-- /See:/ 'newBigtableAdminProjectsInstancesClustersBackupsList' smart constructor.
data BigtableAdminProjectsInstancesClustersBackupsList = BigtableAdminProjectsInstancesClustersBackupsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A filter expression that filters backups listed in the response. The expression must specify the field name, a comparison operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The comparison operator must be \<, >, \<=, >=, !=, =, or :. Colon \':\' represents a HAS operator which is roughly synonymous with equality. Filter rules are case insensitive. The fields eligible for filtering are: * @name@ * @source_table@ * @state@ * @start_time@ (and values are of the format YYYY-MM-DDTHH:MM:SSZ) * @end_time@ (and values are of the format YYYY-MM-DDTHH:MM:SSZ) * @expire_time@ (and values are of the format YYYY-MM-DDTHH:MM:SSZ) * @size_bytes@ To filter on multiple expressions, provide each separate expression within parentheses. By default, each expression is an AND expression. However, you can include AND, OR, and NOT expressions explicitly. Some examples of using filters are: * @name:\"exact\"@ --> The backup\'s name is the string \"exact\". * @name:howl@
    -- --> The backup\'s name contains the string \"howl\". * @source_table:prod@ --> The source/table\'s name contains the string \"prod\". * @state:CREATING@ --> The backup is pending creation. * @state:READY@ --> The backup is fully created and ready for use. * @(name:howl) AND (start_time \< \\\"2018-03-28T14:50:00Z\\\")@ --> The backup name contains the string \"howl\" and start/time of the backup is before 2018-03-28T14:50:00Z. * @size_bytes > 10000000000@ --> The backup\'s size is greater than 10GB
    filter :: (Core.Maybe Core.Text),
    -- | An expression for specifying the sort order of the results of the request. The string value should specify one or more fields in Backup. The full syntax is described at https:\/\/aip.dev\/132#ordering. Fields supported are: * name * source/table * expire/time * start/time * end/time * size/bytes * state For example, \"start/time\". The default sorting order is ascending. To specify descending order for the field, a suffix \" desc\" should be appended to the field name. For example, \"start/time desc\". Redundant space characters in the syntax are insigificant. If order/by is empty, results will be sorted by @start_time@ in descending order starting from the most recently created backup.
    orderBy :: (Core.Maybe Core.Text),
    -- | Number of backups to be returned in the response. If 0 or less, defaults to the server\'s maximum allowed page size.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If non-empty, @page_token@ should contain a next/page/token from a previous ListBackupsResponse to the same @parent@ and with the same @filter@.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The cluster to list backups from. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}@. Use @{cluster} = \'-\'@ to list backups for all clusters in an instance, e.g., @projects\/{project}\/instances\/{instance}\/clusters\/-@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesClustersBackupsList' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesClustersBackupsList ::
  -- |  Required. The cluster to list backups from. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}@. Use @{cluster} = \'-\'@ to list backups for all clusters in an instance, e.g., @projects\/{project}\/instances\/{instance}\/clusters\/-@. See 'parent'.
  Core.Text ->
  BigtableAdminProjectsInstancesClustersBackupsList
newBigtableAdminProjectsInstancesClustersBackupsList parent =
  BigtableAdminProjectsInstancesClustersBackupsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesClustersBackupsList
  where
  type
    Rs
      BigtableAdminProjectsInstancesClustersBackupsList =
      ListBackupsResponse
  type
    Scopes
      BigtableAdminProjectsInstancesClustersBackupsList =
      '[ "https://www.googleapis.com/auth/bigtable.admin",
         "https://www.googleapis.com/auth/bigtable.admin.table",
         "https://www.googleapis.com/auth/cloud-bigtable.admin",
         "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient
    BigtableAdminProjectsInstancesClustersBackupsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
        orderBy
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
                  BigtableAdminProjectsInstancesClustersBackupsListResource
            )
            Core.mempty
