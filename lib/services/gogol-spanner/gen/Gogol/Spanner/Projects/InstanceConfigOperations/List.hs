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
-- Module      : Gogol.Spanner.Projects.InstanceConfigOperations.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the user-managed instance configuration long-running operations in the given project. An instance configuration operation has a name of the form @projects\/\/instanceConfigs\/\/operations\/@. The long-running operation metadata field type @metadata.type_url@ describes the type of the metadata. Operations returned include those that have completed\/failed\/canceled within the last 7 days, and pending operations. Operations returned are ordered by @operation.metadata.value.start_time@ in descending order starting from the most recently started operation.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instanceConfigOperations.list@.
module Gogol.Spanner.Projects.InstanceConfigOperations.List
  ( -- * Resource
    SpannerProjectsInstanceConfigOperationsListResource,

    -- ** Constructing a Request
    SpannerProjectsInstanceConfigOperationsList (..),
    newSpannerProjectsInstanceConfigOperationsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instanceConfigOperations.list@ method which the
-- 'SpannerProjectsInstanceConfigOperationsList' request conforms to.
type SpannerProjectsInstanceConfigOperationsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "instanceConfigOperations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListInstanceConfigOperationsResponse

-- | Lists the user-managed instance configuration long-running operations in the given project. An instance configuration operation has a name of the form @projects\/\/instanceConfigs\/\/operations\/@. The long-running operation metadata field type @metadata.type_url@ describes the type of the metadata. Operations returned include those that have completed\/failed\/canceled within the last 7 days, and pending operations. Operations returned are ordered by @operation.metadata.value.start_time@ in descending order starting from the most recently started operation.
--
-- /See:/ 'newSpannerProjectsInstanceConfigOperationsList' smart constructor.
data SpannerProjectsInstanceConfigOperationsList = SpannerProjectsInstanceConfigOperationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | An expression that filters the list of returned operations. A filter expression consists of a field name, a comparison operator, and a value for filtering. The value must be a string, a number, or a boolean. The comparison operator must be one of: @\<@, @>@, @\<=@, @>=@, @!=@, @=@, or @:@. Colon @:@ is the contains operator. Filter rules are not case sensitive. The following fields in the Operation are eligible for filtering: * @name@ - The name of the long-running operation * @done@ - False if the operation is in progress, else true. * @metadata.\@type@ - the type of metadata. For example, the type string for CreateInstanceConfigMetadata is @type.googleapis.com\/google.spanner.admin.instance.v1.CreateInstanceConfigMetadata@. * @metadata.@ - any field in metadata.value. @metadata.\@type@ must be specified first, if filtering on metadata fields. * @error@ - Error associated with the long-running operation. * @response.\@type@ - the type of response. * @response.@ - any field in response.value. You can combine
    -- multiple expressions by enclosing each expression in parentheses. By default, expressions are combined with AND logic. However, you can specify AND, OR, and NOT logic explicitly. Here are a few examples: * @done:true@ - The operation is complete. * @(metadata.\@type=@ \\ @type.googleapis.com\/google.spanner.admin.instance.v1.CreateInstanceConfigMetadata) AND@ \\ @(metadata.instance_config.name:custom-config) AND@ \\ @(metadata.progress.start_time \< \\\"2021-03-28T14:50:00Z\\\") AND@ \\ @(error:*)@ - Return operations where: * The operation\'s metadata type is CreateInstanceConfigMetadata. * The instance configuration name contains \"custom-config\". * The operation started before 2021-03-28T14:50:00Z. * The operation resulted in an error.
    filter :: (Core.Maybe Core.Text),
    -- | Number of operations to be returned in the response. If 0 or less, defaults to the server\'s maximum allowed page size.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If non-empty, @page_token@ should contain a next/page/token from a previous ListInstanceConfigOperationsResponse to the same @parent@ and with the same @filter@.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The project of the instance configuration operations. Values are of the form @projects\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstanceConfigOperationsList' with the minimum fields required to make a request.
newSpannerProjectsInstanceConfigOperationsList ::
  -- |  Required. The project of the instance configuration operations. Values are of the form @projects\/@. See 'parent'.
  Core.Text ->
  SpannerProjectsInstanceConfigOperationsList
newSpannerProjectsInstanceConfigOperationsList parent =
  SpannerProjectsInstanceConfigOperationsList
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
    SpannerProjectsInstanceConfigOperationsList
  where
  type
    Rs SpannerProjectsInstanceConfigOperationsList =
      ListInstanceConfigOperationsResponse
  type
    Scopes SpannerProjectsInstanceConfigOperationsList =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstanceConfigOperationsList {..} =
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
              Core.Proxy SpannerProjectsInstanceConfigOperationsListResource
          )
          Core.mempty
