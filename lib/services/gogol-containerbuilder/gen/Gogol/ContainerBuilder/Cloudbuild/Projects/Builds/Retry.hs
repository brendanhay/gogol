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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Builds.Retry
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new build based on the specified build. This method creates a new build using the original build request, which may or may not result in an identical build. For triggered builds: * Triggered builds resolve to a precise revision; therefore a retry of a triggered build will result in a build that uses the same revision. For non-triggered builds that specify @RepoSource@: * If the original build built from the tip of a branch, the retried build will build from the tip of that branch, which may not be the same revision as the original build. * If the original build specified a commit sha or revision ID, the retried build will use the identical source. For builds that specify @StorageSource@: * If the original build pulled source from Google Cloud Storage without specifying the generation of the object, the new build will use the current object, which may be different from the original build source. * If the original build pulled source from Cloud Storage and specified the generation of the object, the
-- new build will attempt to use the same object, which may or may not be available depending on the bucket\'s lifecycle management settings.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.builds.retry@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Builds.Retry
    (
    -- * Resource
      CloudbuildProjectsBuildsRetryResource

    -- ** Constructing a Request
    , newCloudbuildProjectsBuildsRetry
    , CloudbuildProjectsBuildsRetry
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.builds.retry@ method which the
-- 'CloudbuildProjectsBuildsRetry' request conforms to.
type CloudbuildProjectsBuildsRetryResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "builds" Core.:>
             Core.CaptureMode "id" "retry" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] RetryBuildRequest Core.:>
                             Core.Post '[Core.JSON] Operation

-- | Creates a new build based on the specified build. This method creates a new build using the original build request, which may or may not result in an identical build. For triggered builds: * Triggered builds resolve to a precise revision; therefore a retry of a triggered build will result in a build that uses the same revision. For non-triggered builds that specify @RepoSource@: * If the original build built from the tip of a branch, the retried build will build from the tip of that branch, which may not be the same revision as the original build. * If the original build specified a commit sha or revision ID, the retried build will use the identical source. For builds that specify @StorageSource@: * If the original build pulled source from Google Cloud Storage without specifying the generation of the object, the new build will use the current object, which may be different from the original build source. * If the original build pulled source from Cloud Storage and specified the generation of the object, the
-- new build will attempt to use the same object, which may or may not be available depending on the bucket\'s lifecycle management settings.
--
-- /See:/ 'newCloudbuildProjectsBuildsRetry' smart constructor.
data CloudbuildProjectsBuildsRetry = CloudbuildProjectsBuildsRetry
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Build ID of the original build.
    , id :: Core.Text
      -- | Multipart request metadata.
    , payload :: RetryBuildRequest
      -- | Required. ID of the project.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsBuildsRetry' with the minimum fields required to make a request.
newCloudbuildProjectsBuildsRetry 
    ::  Core.Text
       -- ^  Required. Build ID of the original build. See 'id'.
    -> RetryBuildRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. ID of the project. See 'projectId'.
    -> CloudbuildProjectsBuildsRetry
newCloudbuildProjectsBuildsRetry id payload projectId =
  CloudbuildProjectsBuildsRetry
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , id = id
    , payload = payload
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsBuildsRetry
         where
        type Rs CloudbuildProjectsBuildsRetry = Operation
        type Scopes CloudbuildProjectsBuildsRetry =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CloudbuildProjectsBuildsRetry{..}
          = go projectId id xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudbuildProjectsBuildsRetryResource)
                      Core.mempty

