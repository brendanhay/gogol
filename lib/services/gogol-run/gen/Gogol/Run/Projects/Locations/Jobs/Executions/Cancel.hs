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
-- Module      : Gogol.Run.Projects.Locations.Jobs.Executions.Cancel
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels an Execution.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.jobs.executions.cancel@.
module Gogol.Run.Projects.Locations.Jobs.Executions.Cancel
    (
    -- * Resource
      RunProjectsLocationsJobsExecutionsCancelResource

    -- ** Constructing a Request
    , RunProjectsLocationsJobsExecutionsCancel (..)
    , newRunProjectsLocationsJobsExecutionsCancel
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.jobs.executions.cancel@ method which the
-- 'RunProjectsLocationsJobsExecutionsCancel' request conforms to.
type RunProjectsLocationsJobsExecutionsCancelResource
     =
     "v2" Core.:>
       Core.CaptureMode "name" "cancel" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GoogleCloudRunV2CancelExecutionRequest
                       Core.:>
                       Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Cancels an Execution.
--
-- /See:/ 'newRunProjectsLocationsJobsExecutionsCancel' smart constructor.
data RunProjectsLocationsJobsExecutionsCancel = RunProjectsLocationsJobsExecutionsCancel
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the Execution to cancel. Format: @projects\/{project}\/locations\/{location}\/jobs\/{job}\/executions\/{execution}@, where @{project}@ can be project id or number.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudRunV2CancelExecutionRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsJobsExecutionsCancel' with the minimum fields required to make a request.
newRunProjectsLocationsJobsExecutionsCancel 
    ::  Core.Text
       -- ^  Required. The name of the Execution to cancel. Format: @projects\/{project}\/locations\/{location}\/jobs\/{job}\/executions\/{execution}@, where @{project}@ can be project id or number. See 'name'.
    -> GoogleCloudRunV2CancelExecutionRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> RunProjectsLocationsJobsExecutionsCancel
newRunProjectsLocationsJobsExecutionsCancel name payload =
  RunProjectsLocationsJobsExecutionsCancel
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           RunProjectsLocationsJobsExecutionsCancel
         where
        type Rs RunProjectsLocationsJobsExecutionsCancel =
             GoogleLongrunningOperation
        type Scopes RunProjectsLocationsJobsExecutionsCancel
             = '[CloudPlatform'FullControl]
        requestClient
          RunProjectsLocationsJobsExecutionsCancel{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              runService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           RunProjectsLocationsJobsExecutionsCancelResource)
                      Core.mempty

