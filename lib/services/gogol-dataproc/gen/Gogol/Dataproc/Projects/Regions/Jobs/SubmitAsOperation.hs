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
-- Module      : Gogol.Dataproc.Projects.Regions.Jobs.SubmitAsOperation
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submits job to a cluster.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.jobs.submitAsOperation@.
module Gogol.Dataproc.Projects.Regions.Jobs.SubmitAsOperation
    (
    -- * Resource
      DataprocProjectsRegionsJobsSubmitAsOperationResource

    -- ** Constructing a Request
    , DataprocProjectsRegionsJobsSubmitAsOperation (..)
    , newDataprocProjectsRegionsJobsSubmitAsOperation
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.regions.jobs.submitAsOperation@ method which the
-- 'DataprocProjectsRegionsJobsSubmitAsOperation' request conforms to.
type DataprocProjectsRegionsJobsSubmitAsOperationResource
     =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "regions" Core.:>
             Core.Capture "region" Core.Text Core.:>
               "jobs:submitAsOperation" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] SubmitJobRequest Core.:>
                               Core.Post '[Core.JSON] Operation

-- | Submits job to a cluster.
--
-- /See:/ 'newDataprocProjectsRegionsJobsSubmitAsOperation' smart constructor.
data DataprocProjectsRegionsJobsSubmitAsOperation = DataprocProjectsRegionsJobsSubmitAsOperation
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: SubmitJobRequest
      -- | Required. The ID of the Google Cloud Platform project that the job belongs to.
    , projectId :: Core.Text
      -- | Required. The Dataproc region in which to handle the request.
    , region :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsJobsSubmitAsOperation' with the minimum fields required to make a request.
newDataprocProjectsRegionsJobsSubmitAsOperation 
    ::  SubmitJobRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The ID of the Google Cloud Platform project that the job belongs to. See 'projectId'.
    -> Core.Text
       -- ^  Required. The Dataproc region in which to handle the request. See 'region'.
    -> DataprocProjectsRegionsJobsSubmitAsOperation
newDataprocProjectsRegionsJobsSubmitAsOperation payload projectId region =
  DataprocProjectsRegionsJobsSubmitAsOperation
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , projectId = projectId
    , region = region
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsRegionsJobsSubmitAsOperation
         where
        type Rs DataprocProjectsRegionsJobsSubmitAsOperation
             = Operation
        type Scopes
               DataprocProjectsRegionsJobsSubmitAsOperation
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsRegionsJobsSubmitAsOperation{..}
          = go projectId region xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsRegionsJobsSubmitAsOperationResource)
                      Core.mempty

