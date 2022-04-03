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
-- Module      : Gogol.CloudFunctions.Projects.Locations.Operations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the specified filter in the request. If the server doesn\'t support this method, it returns @UNIMPLEMENTED@. NOTE: the @name@ binding allows API services to override the binding to use different resource name schemes, such as @users\/*\/operations@. To override the binding, API services can add a binding such as @\"\/v1\/{name=users\/*}\/operations\"@ to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.operations.list@.
module Gogol.CloudFunctions.Projects.Locations.Operations.List
  ( -- * Resource
    CloudFunctionsProjectsLocationsOperationsListResource,

    -- ** Constructing a Request
    CloudFunctionsProjectsLocationsOperationsList (..),
    newCloudFunctionsProjectsLocationsOperationsList,
  )
where

import Gogol.CloudFunctions.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudfunctions.projects.locations.operations.list@ method which the
-- 'CloudFunctionsProjectsLocationsOperationsList' request conforms to.
type CloudFunctionsProjectsLocationsOperationsListResource =
  "v2beta"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "operations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListOperationsResponse

-- | Lists operations that match the specified filter in the request. If the server doesn\'t support this method, it returns @UNIMPLEMENTED@. NOTE: the @name@ binding allows API services to override the binding to use different resource name schemes, such as @users\/*\/operations@. To override the binding, API services can add a binding such as @\"\/v1\/{name=users\/*}\/operations\"@ to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.
--
-- /See:/ 'newCloudFunctionsProjectsLocationsOperationsList' smart constructor.
data CloudFunctionsProjectsLocationsOperationsList = CloudFunctionsProjectsLocationsOperationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. A filter for matching the requested operations. The supported formats of /filter/ are: To query for a specific function: project:/,location:/,function:* To query for all of the latest operations for a project: project:*,latest:true
    filter :: (Core.Maybe Core.Text),
    -- | Must not be set.
    name :: Core.Text,
    -- | The maximum number of records that should be returned. Requested page size cannot exceed 100. If not set, the default page size is 100. Pagination is only supported when querying for a specific function.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Token identifying which result to start with, which is returned by a previous list call. Pagination is only supported when querying for a specific function.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsOperationsList' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsOperationsList ::
  -- |  Must not be set. See 'name'.
  Core.Text ->
  CloudFunctionsProjectsLocationsOperationsList
newCloudFunctionsProjectsLocationsOperationsList name =
  CloudFunctionsProjectsLocationsOperationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudFunctionsProjectsLocationsOperationsList
  where
  type
    Rs CloudFunctionsProjectsLocationsOperationsList =
      ListOperationsResponse
  type
    Scopes
      CloudFunctionsProjectsLocationsOperationsList =
      '[CloudPlatform'FullControl]
  requestClient
    CloudFunctionsProjectsLocationsOperationsList {..} =
      go
        name
        xgafv
        accessToken
        callback
        filter
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudFunctionsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudFunctionsProjectsLocationsOperationsListResource
            )
            Core.mempty
