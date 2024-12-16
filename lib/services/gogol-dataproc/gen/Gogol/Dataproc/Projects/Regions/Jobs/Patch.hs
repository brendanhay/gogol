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
-- Module      : Gogol.Dataproc.Projects.Regions.Jobs.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a job in a project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.jobs.patch@.
module Gogol.Dataproc.Projects.Regions.Jobs.Patch
    (
    -- * Resource
      DataprocProjectsRegionsJobsPatchResource

    -- ** Constructing a Request
    , DataprocProjectsRegionsJobsPatch (..)
    , newDataprocProjectsRegionsJobsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.regions.jobs.patch@ method which the
-- 'DataprocProjectsRegionsJobsPatch' request conforms to.
type DataprocProjectsRegionsJobsPatchResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "regions" Core.:>
             Core.Capture "region" Core.Text Core.:>
               "jobs" Core.:>
                 Core.Capture "jobId" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "updateMask" Core.FieldMask Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON] Job Core.:>
                                   Core.Patch '[Core.JSON] Job

-- | Updates a job in a project.
--
-- /See:/ 'newDataprocProjectsRegionsJobsPatch' smart constructor.
data DataprocProjectsRegionsJobsPatch = DataprocProjectsRegionsJobsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The job ID.
    , jobId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Job
      -- | Required. The ID of the Google Cloud Platform project that the job belongs to.
    , projectId :: Core.Text
      -- | Required. The Dataproc region in which to handle the request.
    , region :: Core.Text
      -- | Required. Specifies the path, relative to Job, of the field to update. For example, to update the labels of a Job the update_mask parameter would be specified as labels, and the PATCH request body would specify the new value. /Note:/ Currently, labels is the only field that can be updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsJobsPatch' with the minimum fields required to make a request.
newDataprocProjectsRegionsJobsPatch 
    ::  Core.Text
       -- ^  Required. The job ID. See 'jobId'.
    -> Job
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The ID of the Google Cloud Platform project that the job belongs to. See 'projectId'.
    -> Core.Text
       -- ^  Required. The Dataproc region in which to handle the request. See 'region'.
    -> DataprocProjectsRegionsJobsPatch
newDataprocProjectsRegionsJobsPatch jobId payload projectId region =
  DataprocProjectsRegionsJobsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , jobId = jobId
    , payload = payload
    , projectId = projectId
    , region = region
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsRegionsJobsPatch
         where
        type Rs DataprocProjectsRegionsJobsPatch = Job
        type Scopes DataprocProjectsRegionsJobsPatch =
             '[CloudPlatform'FullControl]
        requestClient DataprocProjectsRegionsJobsPatch{..}
          = go projectId region jobId xgafv accessToken
              callback
              updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DataprocProjectsRegionsJobsPatchResource)
                      Core.mempty

