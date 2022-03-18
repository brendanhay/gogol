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
-- Module      : Gogol.Dataproc.Projects.Regions.Clusters.Repair
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Repairs a cluster.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.repair@.
module Gogol.Dataproc.Projects.Regions.Clusters.Repair
    (
    -- * Resource
      DataprocProjectsRegionsClustersRepairResource

    -- ** Constructing a Request
    , newDataprocProjectsRegionsClustersRepair
    , DataprocProjectsRegionsClustersRepair
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.regions.clusters.repair@ method which the
-- 'DataprocProjectsRegionsClustersRepair' request conforms to.
type DataprocProjectsRegionsClustersRepairResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "regions" Core.:>
             Core.Capture "region" Core.Text Core.:>
               "clusters" Core.:>
                 Core.CaptureMode "clusterName" "repair" Core.Text
                   Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.ReqBody '[Core.JSON] RepairClusterRequest
                                 Core.:> Core.Post '[Core.JSON] Operation

-- | Repairs a cluster.
--
-- /See:/ 'newDataprocProjectsRegionsClustersRepair' smart constructor.
data DataprocProjectsRegionsClustersRepair = DataprocProjectsRegionsClustersRepair
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The cluster name.
    , clusterName :: Core.Text
      -- | Multipart request metadata.
    , payload :: RepairClusterRequest
      -- | Required. The ID of the Google Cloud Platform project the cluster belongs to.
    , projectId :: Core.Text
      -- | Required. The Dataproc region in which to handle the request.
    , region :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsClustersRepair' with the minimum fields required to make a request.
newDataprocProjectsRegionsClustersRepair 
    ::  Core.Text
       -- ^  Required. The cluster name. See 'clusterName'.
    -> RepairClusterRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The ID of the Google Cloud Platform project the cluster belongs to. See 'projectId'.
    -> Core.Text
       -- ^  Required. The Dataproc region in which to handle the request. See 'region'.
    -> DataprocProjectsRegionsClustersRepair
newDataprocProjectsRegionsClustersRepair clusterName payload projectId region =
  DataprocProjectsRegionsClustersRepair
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , clusterName = clusterName
    , payload = payload
    , projectId = projectId
    , region = region
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsRegionsClustersRepair
         where
        type Rs DataprocProjectsRegionsClustersRepair =
             Operation
        type Scopes DataprocProjectsRegionsClustersRepair =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          DataprocProjectsRegionsClustersRepair{..}
          = go projectId region clusterName xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsRegionsClustersRepairResource)
                      Core.mempty

