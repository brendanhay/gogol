{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Run.Projects.Locations.Operations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the specified filter in the request. If the server doesn\'t support this method, it returns @UNIMPLEMENTED@. NOTE: the @name@ binding allows API services to override the binding to use different resource name schemes, such as @users\/*\/operations@. To override the binding, API services can add a binding such as @\"\/v1\/{name=users\/*}\/operations\"@ to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.operations.list@.
module Gogol.Run.Projects.Locations.Operations.List
    (
    -- * Resource
      RunProjectsLocationsOperationsListResource

    -- ** Constructing a Request
    , newRunProjectsLocationsOperationsList
    , RunProjectsLocationsOperationsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.operations.list@ method which the
-- 'RunProjectsLocationsOperationsList' request conforms to.
type RunProjectsLocationsOperationsListResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         "operations" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               GoogleLongrunningListOperationsResponse

-- | Lists operations that match the specified filter in the request. If the server doesn\'t support this method, it returns @UNIMPLEMENTED@. NOTE: the @name@ binding allows API services to override the binding to use different resource name schemes, such as @users\/*\/operations@. To override the binding, API services can add a binding such as @\"\/v1\/{name=users\/*}\/operations\"@ to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.
--
-- /See:/ 'newRunProjectsLocationsOperationsList' smart constructor.
data RunProjectsLocationsOperationsList = RunProjectsLocationsOperationsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. A filter for matching the completed or in-progress operations. The supported formats of /filter/ are: To query for only completed operations: done:true To query for only ongoing operations: done:false Must be empty to query for all of the latest operations for the given parent project.
    , filter :: (Core.Maybe Core.Text)
      -- | Required. To query for all of the operations for a project.
    , name :: Core.Text
      -- | The maximum number of records that should be returned. Requested page size cannot exceed 100. If not set or set to less than or equal to 0, the default page size is 100. .
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Token identifying which result to start with, which is returned by a previous list call.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsOperationsList' with the minimum fields required to make a request.
newRunProjectsLocationsOperationsList 
    ::  Core.Text
       -- ^  Required. To query for all of the operations for a project. See 'name'.
    -> RunProjectsLocationsOperationsList
newRunProjectsLocationsOperationsList name =
  RunProjectsLocationsOperationsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , name = name
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           RunProjectsLocationsOperationsList
         where
        type Rs RunProjectsLocationsOperationsList =
             GoogleLongrunningListOperationsResponse
        type Scopes RunProjectsLocationsOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient RunProjectsLocationsOperationsList{..}
          = go name xgafv accessToken callback filter pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              runService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           RunProjectsLocationsOperationsListResource)
                      Core.mempty

