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
-- Module      : Gogol.Dataproc.Projects.Regions.Clusters.NodeGroups.Resize
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resizes a node group in a cluster. The returned Operation.metadata is NodeGroupOperationMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#nodegroupoperationmetadata).
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.nodeGroups.resize@.
module Gogol.Dataproc.Projects.Regions.Clusters.NodeGroups.Resize
    (
    -- * Resource
      DataprocProjectsRegionsClustersNodeGroupsResizeResource

    -- ** Constructing a Request
    , DataprocProjectsRegionsClustersNodeGroupsResize (..)
    , newDataprocProjectsRegionsClustersNodeGroupsResize
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.regions.clusters.nodeGroups.resize@ method which the
-- 'DataprocProjectsRegionsClustersNodeGroupsResize' request conforms to.
type DataprocProjectsRegionsClustersNodeGroupsResizeResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "resize" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] ResizeNodeGroupRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Resizes a node group in a cluster. The returned Operation.metadata is NodeGroupOperationMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#nodegroupoperationmetadata).
--
-- /See:/ 'newDataprocProjectsRegionsClustersNodeGroupsResize' smart constructor.
data DataprocProjectsRegionsClustersNodeGroupsResize = DataprocProjectsRegionsClustersNodeGroupsResize
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the node group to resize. Format: projects\/{project}\/regions\/{region}\/clusters\/{cluster}\/nodeGroups\/{nodeGroup}
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: ResizeNodeGroupRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsClustersNodeGroupsResize' with the minimum fields required to make a request.
newDataprocProjectsRegionsClustersNodeGroupsResize 
    ::  Core.Text
       -- ^  Required. The name of the node group to resize. Format: projects\/{project}\/regions\/{region}\/clusters\/{cluster}\/nodeGroups\/{nodeGroup} See 'name'.
    -> ResizeNodeGroupRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DataprocProjectsRegionsClustersNodeGroupsResize
newDataprocProjectsRegionsClustersNodeGroupsResize name payload =
  DataprocProjectsRegionsClustersNodeGroupsResize
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsRegionsClustersNodeGroupsResize
         where
        type Rs
               DataprocProjectsRegionsClustersNodeGroupsResize
             = Operation
        type Scopes
               DataprocProjectsRegionsClustersNodeGroupsResize
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsRegionsClustersNodeGroupsResize{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsRegionsClustersNodeGroupsResizeResource)
                      Core.mempty

