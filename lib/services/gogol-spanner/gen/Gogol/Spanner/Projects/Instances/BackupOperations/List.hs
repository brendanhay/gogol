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
-- Module      : Gogol.Spanner.Projects.Instances.BackupOperations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the backup long-running operations in the given instance. A backup operation has a name of the form @projects\/\/instances\/\/backups\/\/operations\/@. The long-running operation metadata field type @metadata.type_url@ describes the type of the metadata. Operations returned include those that have completed\/failed\/canceled within the last 7 days, and pending operations. Operations returned are ordered by @operation.metadata.value.progress.start_time@ in descending order starting from the most recently started operation.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backupOperations.list@.
module Gogol.Spanner.Projects.Instances.BackupOperations.List
  ( -- * Resource
    SpannerProjectsInstancesBackupOperationsListResource,

    -- ** Constructing a Request
    newSpannerProjectsInstancesBackupOperationsList,
    SpannerProjectsInstancesBackupOperationsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backupOperations.list@ method which the
-- 'SpannerProjectsInstancesBackupOperationsList' request conforms to.
type SpannerProjectsInstancesBackupOperationsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "backupOperations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListBackupOperationsResponse

-- | Lists the backup long-running operations in the given instance. A backup operation has a name of the form @projects\/\/instances\/\/backups\/\/operations\/@. The long-running operation metadata field type @metadata.type_url@ describes the type of the metadata. Operations returned include those that have completed\/failed\/canceled within the last 7 days, and pending operations. Operations returned are ordered by @operation.metadata.value.progress.start_time@ in descending order starting from the most recently started operation.
--
-- /See:/ 'newSpannerProjectsInstancesBackupOperationsList' smart constructor.
data SpannerProjectsInstancesBackupOperationsList = SpannerProjectsInstancesBackupOperationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | An expression that filters the list of returned backup operations. A filter expression consists of a field name, a comparison operator, and a value for filtering. The value must be a string, a number, or a boolean. The comparison operator must be one of: @\<@, @>@, @\<=@, @>=@, @!=@, @=@, or @:@. Colon @:@ is the contains operator. Filter rules are not case sensitive. The following fields in the operation are eligible for filtering: * @name@ - The name of the long-running operation * @done@ - False if the operation is in progress, else true. * @metadata.\@type@ - the type of metadata. For example, the type string for CreateBackupMetadata is @type.googleapis.com\/google.spanner.admin.database.v1.CreateBackupMetadata@. * @metadata.@ - any field in metadata.value. @metadata.\@type@ must be specified first if filtering on metadata fields. * @error@ - Error associated with the long-running operation. * @response.\@type@ - the type of response. * @response.@ - any field in response.value. You can combine multiple
    -- expressions by enclosing each expression in parentheses. By default, expressions are combined with AND logic, but you can specify AND, OR, and NOT logic explicitly. Here are a few examples: * @done:true@ - The operation is complete. * @(metadata.\@type=type.googleapis.com\/google.spanner.admin.database.v1.CreateBackupMetadata) AND@ \\ @metadata.database:prod@ - Returns operations where: * The operation\'s metadata type is CreateBackupMetadata. * The database the backup was taken from has a name containing the string \"prod\". * @(metadata.\@type=type.googleapis.com\/google.spanner.admin.database.v1.CreateBackupMetadata) AND@ \\ @(metadata.name:howl) AND@ \\ @(metadata.progress.start_time \< \\\"2018-03-28T14:50:00Z\\\") AND@ \\ @(error:*)@ - Returns operations where: * The operation\'s metadata type is CreateBackupMetadata. * The backup name contains the string \"howl\". * The operation started before 2018-03-28T14:50:00Z. * The operation resulted in an error.
    filter :: (Core.Maybe Core.Text),
    -- | Number of operations to be returned in the response. If 0 or less, defaults to the server\'s maximum allowed page size.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If non-empty, @page_token@ should contain a next/page/token from a previous ListBackupOperationsResponse to the same @parent@ and with the same @filter@.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The instance of the backup operations. Values are of the form @projects\/\/instances\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesBackupOperationsList' with the minimum fields required to make a request.
newSpannerProjectsInstancesBackupOperationsList ::
  -- |  Required. The instance of the backup operations. Values are of the form @projects\/\/instances\/@. See 'parent'.
  Core.Text ->
  SpannerProjectsInstancesBackupOperationsList
newSpannerProjectsInstancesBackupOperationsList parent =
  SpannerProjectsInstancesBackupOperationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesBackupOperationsList
  where
  type
    Rs SpannerProjectsInstancesBackupOperationsList =
      ListBackupOperationsResponse
  type
    Scopes
      SpannerProjectsInstancesBackupOperationsList =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient
    SpannerProjectsInstancesBackupOperationsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        spannerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  SpannerProjectsInstancesBackupOperationsListResource
            )
            Core.mempty
