{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigtableAdmin.Operations.Projects.Operations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the specified filter in the request. If the server doesn\'t support this method, it returns @UNIMPLEMENTED@.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.operations.projects.operations.list@.
module Gogol.BigtableAdmin.Operations.Projects.Operations.List
    (
    -- * Resource
      BigtableAdminOperationsProjectsOperationsListResource

    -- ** Constructing a Request
    , BigtableAdminOperationsProjectsOperationsList (..)
    , newBigtableAdminOperationsProjectsOperationsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.operations.projects.operations.list@ method which the
-- 'BigtableAdminOperationsProjectsOperationsList' request conforms to.
type BigtableAdminOperationsProjectsOperationsListResource
     =
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
                             Core.Get '[Core.JSON] ListOperationsResponse

-- | Lists operations that match the specified filter in the request. If the server doesn\'t support this method, it returns @UNIMPLEMENTED@.
--
-- /See:/ 'newBigtableAdminOperationsProjectsOperationsList' smart constructor.
data BigtableAdminOperationsProjectsOperationsList = BigtableAdminOperationsProjectsOperationsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The standard list filter.
    , filter :: (Core.Maybe Core.Text)
      -- | The name of the operation\'s parent resource.
    , name :: Core.Text
      -- | The standard list page size.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The standard list page token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminOperationsProjectsOperationsList' with the minimum fields required to make a request.
newBigtableAdminOperationsProjectsOperationsList 
    ::  Core.Text
       -- ^  The name of the operation\'s parent resource. See 'name'.
    -> BigtableAdminOperationsProjectsOperationsList
newBigtableAdminOperationsProjectsOperationsList name =
  BigtableAdminOperationsProjectsOperationsList
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
           BigtableAdminOperationsProjectsOperationsList
         where
        type Rs BigtableAdminOperationsProjectsOperationsList
             = ListOperationsResponse
        type Scopes
               BigtableAdminOperationsProjectsOperationsList
             =
             '[Bigtable'Admin, Bigtable'Admin'Cluster,
               Bigtable'Admin'Instance, CloudBigtable'Admin,
               CloudBigtable'Admin'Cluster,
               CloudPlatform'FullControl, CloudPlatform'ReadOnly]
        requestClient
          BigtableAdminOperationsProjectsOperationsList{..}
          = go name xgafv accessToken callback filter pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminOperationsProjectsOperationsListResource)
                      Core.mempty

