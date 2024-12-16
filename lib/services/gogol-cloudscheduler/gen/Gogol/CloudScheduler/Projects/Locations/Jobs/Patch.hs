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
-- Module      : Gogol.CloudScheduler.Projects.Locations.Jobs.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a job. If successful, the updated Job is returned. If the job does not exist, @NOT_FOUND@ is returned. If UpdateJob does not successfully return, it is possible for the job to be in an Job.State.UPDATE_FAILED state. A job in this state may not be executed. If this happens, retry the UpdateJob request until a successful response is received.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.jobs.patch@.
module Gogol.CloudScheduler.Projects.Locations.Jobs.Patch
    (
    -- * Resource
      CloudSchedulerProjectsLocationsJobsPatchResource

    -- ** Constructing a Request
    , CloudSchedulerProjectsLocationsJobsPatch (..)
    , newCloudSchedulerProjectsLocationsJobsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudScheduler.Types

-- | A resource alias for @cloudscheduler.projects.locations.jobs.patch@ method which the
-- 'CloudSchedulerProjectsLocationsJobsPatch' request conforms to.
type CloudSchedulerProjectsLocationsJobsPatchResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Job Core.:>
                         Core.Patch '[Core.JSON] Job

-- | Updates a job. If successful, the updated Job is returned. If the job does not exist, @NOT_FOUND@ is returned. If UpdateJob does not successfully return, it is possible for the job to be in an Job.State.UPDATE_FAILED state. A job in this state may not be executed. If this happens, retry the UpdateJob request until a successful response is received.
--
-- /See:/ 'newCloudSchedulerProjectsLocationsJobsPatch' smart constructor.
data CloudSchedulerProjectsLocationsJobsPatch = CloudSchedulerProjectsLocationsJobsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optionally caller-specified in CreateJob, after which it becomes output only. The job name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID@. * @PROJECT_ID@ can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see <https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects Identifying projects> * @LOCATION_ID@ is the canonical ID for the job\'s location. The list of available locations can be obtained by calling ListLocations. For more information, see https:\/\/cloud.google.com\/about\/locations\/. * @JOB_ID@ can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Job
      -- | A mask used to specify which fields of the job are being updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSchedulerProjectsLocationsJobsPatch' with the minimum fields required to make a request.
newCloudSchedulerProjectsLocationsJobsPatch 
    ::  Core.Text
       -- ^  Optionally caller-specified in CreateJob, after which it becomes output only. The job name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID@. * @PROJECT_ID@ can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see <https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects Identifying projects> * @LOCATION_ID@ is the canonical ID for the job\'s location. The list of available locations can be obtained by calling ListLocations. For more information, see https:\/\/cloud.google.com\/about\/locations\/. * @JOB_ID@ can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters. See 'name'.
    -> Job
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudSchedulerProjectsLocationsJobsPatch
newCloudSchedulerProjectsLocationsJobsPatch name payload =
  CloudSchedulerProjectsLocationsJobsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudSchedulerProjectsLocationsJobsPatch
         where
        type Rs CloudSchedulerProjectsLocationsJobsPatch =
             Job
        type Scopes CloudSchedulerProjectsLocationsJobsPatch
             = '[CloudPlatform'FullControl]
        requestClient
          CloudSchedulerProjectsLocationsJobsPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudSchedulerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudSchedulerProjectsLocationsJobsPatchResource)
                      Core.mempty

