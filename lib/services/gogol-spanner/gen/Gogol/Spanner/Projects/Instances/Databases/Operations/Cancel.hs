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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Operations.Cancel
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn\'t support this method, it returns @google.rpc.Code.UNIMPLEMENTED@. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.operations.cancel@.
module Gogol.Spanner.Projects.Instances.Databases.Operations.Cancel
    (
    -- * Resource
      SpannerProjectsInstancesDatabasesOperationsCancelResource

    -- ** Constructing a Request
    , newSpannerProjectsInstancesDatabasesOperationsCancel
    , SpannerProjectsInstancesDatabasesOperationsCancel
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.operations.cancel@ method which the
-- 'SpannerProjectsInstancesDatabasesOperationsCancel' request conforms to.
type SpannerProjectsInstancesDatabasesOperationsCancelResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "cancel" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Post '[Core.JSON] Empty

-- | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn\'t support this method, it returns @google.rpc.Code.UNIMPLEMENTED@. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesOperationsCancel' smart constructor.
data SpannerProjectsInstancesDatabasesOperationsCancel = SpannerProjectsInstancesDatabasesOperationsCancel
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the operation resource to be cancelled.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesOperationsCancel' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesOperationsCancel 
    ::  Core.Text
       -- ^  The name of the operation resource to be cancelled. See 'name'.
    -> SpannerProjectsInstancesDatabasesOperationsCancel
newSpannerProjectsInstancesDatabasesOperationsCancel name =
  SpannerProjectsInstancesDatabasesOperationsCancel
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SpannerProjectsInstancesDatabasesOperationsCancel
         where
        type Rs
               SpannerProjectsInstancesDatabasesOperationsCancel
             = Empty
        type Scopes
               SpannerProjectsInstancesDatabasesOperationsCancel
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          SpannerProjectsInstancesDatabasesOperationsCancel{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              spannerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SpannerProjectsInstancesDatabasesOperationsCancelResource)
                      Core.mempty

