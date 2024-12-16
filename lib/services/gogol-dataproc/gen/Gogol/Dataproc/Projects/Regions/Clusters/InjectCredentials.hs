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
-- Module      : Gogol.Dataproc.Projects.Regions.Clusters.InjectCredentials
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inject encrypted credentials into all of the VMs in a cluster.The target cluster must be a personal auth cluster assigned to the user who is issuing the RPC.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.injectCredentials@.
module Gogol.Dataproc.Projects.Regions.Clusters.InjectCredentials
    (
    -- * Resource
      DataprocProjectsRegionsClustersInjectCredentialsResource

    -- ** Constructing a Request
    , DataprocProjectsRegionsClustersInjectCredentials (..)
    , newDataprocProjectsRegionsClustersInjectCredentials
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.regions.clusters.injectCredentials@ method which the
-- 'DataprocProjectsRegionsClustersInjectCredentials' request conforms to.
type DataprocProjectsRegionsClustersInjectCredentialsResource
     =
     "v1" Core.:>
       Core.Capture "project" Core.Text Core.:>
         Core.Capture "region" Core.Text Core.:>
           Core.CaptureMode "cluster" "injectCredentials"
             Core.Text
             Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] InjectCredentialsRequest
                           Core.:> Core.Post '[Core.JSON] Operation

-- | Inject encrypted credentials into all of the VMs in a cluster.The target cluster must be a personal auth cluster assigned to the user who is issuing the RPC.
--
-- /See:/ 'newDataprocProjectsRegionsClustersInjectCredentials' smart constructor.
data DataprocProjectsRegionsClustersInjectCredentials = DataprocProjectsRegionsClustersInjectCredentials
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The cluster, in the form clusters\/.
    , cluster :: Core.Text
      -- | Multipart request metadata.
    , payload :: InjectCredentialsRequest
      -- | Required. The ID of the Google Cloud Platform project the cluster belongs to, of the form projects\/.
    , project :: Core.Text
      -- | Required. The region containing the cluster, of the form regions\/.
    , region :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsClustersInjectCredentials' with the minimum fields required to make a request.
newDataprocProjectsRegionsClustersInjectCredentials 
    ::  Core.Text
       -- ^  Required. The cluster, in the form clusters\/. See 'cluster'.
    -> InjectCredentialsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The ID of the Google Cloud Platform project the cluster belongs to, of the form projects\/. See 'project'.
    -> Core.Text
       -- ^  Required. The region containing the cluster, of the form regions\/. See 'region'.
    -> DataprocProjectsRegionsClustersInjectCredentials
newDataprocProjectsRegionsClustersInjectCredentials cluster payload project region =
  DataprocProjectsRegionsClustersInjectCredentials
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , cluster = cluster
    , payload = payload
    , project = project
    , region = region
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsRegionsClustersInjectCredentials
         where
        type Rs
               DataprocProjectsRegionsClustersInjectCredentials
             = Operation
        type Scopes
               DataprocProjectsRegionsClustersInjectCredentials
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsRegionsClustersInjectCredentials{..}
          = go project region cluster xgafv accessToken
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
                           DataprocProjectsRegionsClustersInjectCredentialsResource)
                      Core.mempty

