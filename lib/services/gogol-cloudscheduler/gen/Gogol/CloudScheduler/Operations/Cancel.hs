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
-- Module      : Gogol.CloudScheduler.Operations.Cancel
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn\'t support this method, it returns @google.rpc.Code.UNIMPLEMENTED@. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of @1@, corresponding to @Code.CANCELLED@.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.operations.cancel@.
module Gogol.CloudScheduler.Operations.Cancel
    (
    -- * Resource
      CloudSchedulerOperationsCancelResource

    -- ** Constructing a Request
    , CloudSchedulerOperationsCancel (..)
    , newCloudSchedulerOperationsCancel
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudScheduler.Types

-- | A resource alias for @cloudscheduler.operations.cancel@ method which the
-- 'CloudSchedulerOperationsCancel' request conforms to.
type CloudSchedulerOperationsCancelResource =
     "v1" Core.:>
       Core.CaptureMode "name" "cancel" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] CancelOperationRequest
                       Core.:> Core.Post '[Core.JSON] Empty

-- | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn\'t support this method, it returns @google.rpc.Code.UNIMPLEMENTED@. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of @1@, corresponding to @Code.CANCELLED@.
--
-- /See:/ 'newCloudSchedulerOperationsCancel' smart constructor.
data CloudSchedulerOperationsCancel = CloudSchedulerOperationsCancel
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the operation resource to be cancelled.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: CancelOperationRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSchedulerOperationsCancel' with the minimum fields required to make a request.
newCloudSchedulerOperationsCancel 
    ::  Core.Text
       -- ^  The name of the operation resource to be cancelled. See 'name'.
    -> CancelOperationRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudSchedulerOperationsCancel
newCloudSchedulerOperationsCancel name payload =
  CloudSchedulerOperationsCancel
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudSchedulerOperationsCancel
         where
        type Rs CloudSchedulerOperationsCancel = Empty
        type Scopes CloudSchedulerOperationsCancel = '[]
        requestClient CloudSchedulerOperationsCancel{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudSchedulerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudSchedulerOperationsCancelResource)
                      Core.mempty

