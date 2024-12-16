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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.ConnectedRepositories.BatchCreate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Batch connecting Bitbucket Server repositories to Cloud Build.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.bitbucketServerConfigs.connectedRepositories.batchCreate@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.ConnectedRepositories.BatchCreate
    (
    -- * Resource
      CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreateResource

    -- ** Constructing a Request
    , CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate (..)
    , newCloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.bitbucketServerConfigs.connectedRepositories.batchCreate@ method which the
-- 'CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate' request conforms to.
type CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "connectedRepositories:batchCreate" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         BatchCreateBitbucketServerConnectedRepositoriesRequest
                         Core.:> Core.Post '[Core.JSON] Operation

-- | Batch connecting Bitbucket Server repositories to Cloud Build.
--
-- /See:/ 'newCloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate' smart constructor.
data CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate = CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the @BitbucketServerConfig@ that added connected repository. Format: @projects\/{project}\/locations\/{location}\/bitbucketServerConfigs\/{config}@
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchCreateBitbucketServerConnectedRepositoriesRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate 
    ::  Core.Text
       -- ^  The name of the @BitbucketServerConfig@ that added connected repository. Format: @projects\/{project}\/locations\/{location}\/bitbucketServerConfigs\/{config}@ See 'parent'.
    -> BatchCreateBitbucketServerConnectedRepositoriesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate
newCloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate parent payload =
  CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate
         where
        type Rs
               CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate
             = Operation
        type Scopes
               CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate
             = '[CloudPlatform'FullControl]
        requestClient
          CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreateResource)
                      Core.mempty

