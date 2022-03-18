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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new @BitbucketServerConfig@. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.bitbucketServerConfigs.create@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.Create
    (
    -- * Resource
      CloudbuildProjectsLocationsBitbucketServerConfigsCreateResource

    -- ** Constructing a Request
    , newCloudbuildProjectsLocationsBitbucketServerConfigsCreate
    , CloudbuildProjectsLocationsBitbucketServerConfigsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.bitbucketServerConfigs.create@ method which the
-- 'CloudbuildProjectsLocationsBitbucketServerConfigsCreate' request conforms to.
type CloudbuildProjectsLocationsBitbucketServerConfigsCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "bitbucketServerConfigs" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "bitbucketServerConfigId" Core.Text
                 Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] BitbucketServerConfig
                           Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a new @BitbucketServerConfig@. This API is experimental.
--
-- /See:/ 'newCloudbuildProjectsLocationsBitbucketServerConfigsCreate' smart constructor.
data CloudbuildProjectsLocationsBitbucketServerConfigsCreate = CloudbuildProjectsLocationsBitbucketServerConfigsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Optional. The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig\'s resource name. bitbucket/server/config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character.
    , bitbucketServerConfigId :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Name of the parent resource.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: BitbucketServerConfig
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsBitbucketServerConfigsCreate' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsBitbucketServerConfigsCreate 
    ::  Core.Text
       -- ^  Required. Name of the parent resource. See 'parent'.
    -> BitbucketServerConfig
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudbuildProjectsLocationsBitbucketServerConfigsCreate
newCloudbuildProjectsLocationsBitbucketServerConfigsCreate parent payload =
  CloudbuildProjectsLocationsBitbucketServerConfigsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , bitbucketServerConfigId = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsBitbucketServerConfigsCreate
         where
        type Rs
               CloudbuildProjectsLocationsBitbucketServerConfigsCreate
             = Operation
        type Scopes
               CloudbuildProjectsLocationsBitbucketServerConfigsCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          CloudbuildProjectsLocationsBitbucketServerConfigsCreate{..}
          = go parent xgafv accessToken bitbucketServerConfigId
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsBitbucketServerConfigsCreateResource)
                      Core.mempty

