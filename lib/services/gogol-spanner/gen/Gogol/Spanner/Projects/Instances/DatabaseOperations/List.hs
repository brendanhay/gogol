{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Spanner.Projects.Instances.DatabaseOperations.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists database longrunning-operations. A database operation has a name of the form @projects\/\/instances\/\/databases\/\/operations\/@. The long-running operation metadata field type @metadata.type_url@ describes the type of the metadata. Operations returned include those that have completed\/failed\/canceled within the last 7 days, and pending operations.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databaseOperations.list@.
module Gogol.Spanner.Projects.Instances.DatabaseOperations.List
  ( -- * Resource
    SpannerProjectsInstancesDatabaseOperationsListResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabaseOperationsList (..),
    newSpannerProjectsInstancesDatabaseOperationsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databaseOperations.list@ method which the
-- 'SpannerProjectsInstancesDatabaseOperationsList' request conforms to.
type SpannerProjectsInstancesDatabaseOperationsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "databaseOperations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDatabaseOperationsResponse

-- | Lists database longrunning-operations. A database operation has a name of the form @projects\/\/instances\/\/databases\/\/operations\/@. The long-running operation metadata field type @metadata.type_url@ describes the type of the metadata. Operations returned include those that have completed\/failed\/canceled within the last 7 days, and pending operations.
--
-- /See:/ 'newSpannerProjectsInstancesDatabaseOperationsList' smart constructor.
data SpannerProjectsInstancesDatabaseOperationsList = SpannerProjectsInstancesDatabaseOperationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | An expression that filters the list of returned operations. A filter expression consists of a field name, a comparison operator, and a value for filtering. The value must be a string, a number, or a boolean. The comparison operator must be one of: @\<@, @>@, @\<=@, @>=@, @!=@, @=@, or @:@. Colon @:@ is the contains operator. Filter rules are not case sensitive. The following fields in the operation are eligible for filtering: * @name@ - The name of the long-running operation * @done@ - False if the operation is in progress, else true. * @metadata.\@type@ - the type of metadata. For example, the type string for RestoreDatabaseMetadata is @type.googleapis.com\/google.spanner.admin.database.v1.RestoreDatabaseMetadata@. * @metadata.@ - any field in metadata.value. @metadata.\@type@ must be specified first, if filtering on metadata fields. * @error@ - Error associated with the long-running operation. * @response.\@type@ - the type of response. * @response.@ - any field in response.value. You can combine multiple
    -- expressions by enclosing each expression in parentheses. By default, expressions are combined with AND logic. However, you can specify AND, OR, and NOT logic explicitly. Here are a few examples: * @done:true@ - The operation is complete. * @(metadata.\@type=type.googleapis.com\/google.spanner.admin.database.v1.RestoreDatabaseMetadata) AND@ \\ @(metadata.source_type:BACKUP) AND@ \\ @(metadata.backup_info.backup:backup_howl) AND@ \\ @(metadata.name:restored_howl) AND@ \\ @(metadata.progress.start_time \< \\\"2018-03-28T14:50:00Z\\\") AND@ \\ @(error:*)@ - Return operations where: * The operation\'s metadata type is RestoreDatabaseMetadata. * The database is restored from a backup. * The backup name contains \"backup/howl\". * The restored database\'s name contains \"restored/howl\". * The operation started before 2018-03-28T14:50:00Z. * The operation resulted in an error.
    filter :: (Core.Maybe Core.Text),
    -- | Number of operations to be returned in the response. If 0 or less, defaults to the server\'s maximum allowed page size.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If non-empty, @page_token@ should contain a next/page/token from a previous ListDatabaseOperationsResponse to the same @parent@ and with the same @filter@.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The instance of the database operations. Values are of the form @projects\/\/instances\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabaseOperationsList' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabaseOperationsList ::
  -- |  Required. The instance of the database operations. Values are of the form @projects\/\/instances\/@. See 'parent'.
  Core.Text ->
  SpannerProjectsInstancesDatabaseOperationsList
newSpannerProjectsInstancesDatabaseOperationsList parent =
  SpannerProjectsInstancesDatabaseOperationsList
    { xgafv =
        Core.Nothing,
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
    SpannerProjectsInstancesDatabaseOperationsList
  where
  type
    Rs SpannerProjectsInstancesDatabaseOperationsList =
      ListDatabaseOperationsResponse
  type
    Scopes SpannerProjectsInstancesDatabaseOperationsList =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstancesDatabaseOperationsList {..} =
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
              Core.Proxy SpannerProjectsInstancesDatabaseOperationsListResource
          )
          Core.mempty
