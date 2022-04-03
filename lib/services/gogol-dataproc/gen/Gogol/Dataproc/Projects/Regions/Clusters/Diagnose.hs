{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Dataproc.Projects.Regions.Clusters.Diagnose
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets cluster diagnostic information. The returned Operation.metadata will be ClusterOperationMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#clusteroperationmetadata). After the operation completes, Operation.response contains DiagnoseClusterResults (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#diagnoseclusterresults).
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.diagnose@.
module Gogol.Dataproc.Projects.Regions.Clusters.Diagnose
  ( -- * Resource
    DataprocProjectsRegionsClustersDiagnoseResource,

    -- ** Constructing a Request
    DataprocProjectsRegionsClustersDiagnose (..),
    newDataprocProjectsRegionsClustersDiagnose,
  )
where

import Gogol.Dataproc.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataproc.projects.regions.clusters.diagnose@ method which the
-- 'DataprocProjectsRegionsClustersDiagnose' request conforms to.
type DataprocProjectsRegionsClustersDiagnoseResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "clusters"
    Core.:> Core.CaptureMode "clusterName" "diagnose" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DiagnoseClusterRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Gets cluster diagnostic information. The returned Operation.metadata will be ClusterOperationMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#clusteroperationmetadata). After the operation completes, Operation.response contains DiagnoseClusterResults (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#diagnoseclusterresults).
--
-- /See:/ 'newDataprocProjectsRegionsClustersDiagnose' smart constructor.
data DataprocProjectsRegionsClustersDiagnose = DataprocProjectsRegionsClustersDiagnose
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The cluster name.
    clusterName :: Core.Text,
    -- | Multipart request metadata.
    payload :: DiagnoseClusterRequest,
    -- | Required. The ID of the Google Cloud Platform project that the cluster belongs to.
    projectId :: Core.Text,
    -- | Required. The Dataproc region in which to handle the request.
    region :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsClustersDiagnose' with the minimum fields required to make a request.
newDataprocProjectsRegionsClustersDiagnose ::
  -- |  Required. The cluster name. See 'clusterName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DiagnoseClusterRequest ->
  -- |  Required. The ID of the Google Cloud Platform project that the cluster belongs to. See 'projectId'.
  Core.Text ->
  -- |  Required. The Dataproc region in which to handle the request. See 'region'.
  Core.Text ->
  DataprocProjectsRegionsClustersDiagnose
newDataprocProjectsRegionsClustersDiagnose clusterName payload projectId region =
  DataprocProjectsRegionsClustersDiagnose
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clusterName = clusterName,
      payload = payload,
      projectId = projectId,
      region = region,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsRegionsClustersDiagnose
  where
  type
    Rs DataprocProjectsRegionsClustersDiagnose =
      Operation
  type
    Scopes DataprocProjectsRegionsClustersDiagnose =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsRegionsClustersDiagnose {..} =
      go
        projectId
        region
        clusterName
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        dataprocService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataprocProjectsRegionsClustersDiagnoseResource
            )
            Core.mempty
