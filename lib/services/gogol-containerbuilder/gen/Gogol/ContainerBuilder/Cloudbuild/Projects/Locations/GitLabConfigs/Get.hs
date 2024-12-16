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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GitLabConfigs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a @GitLabConfig@. This API is experimental
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.gitLabConfigs.get@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GitLabConfigs.Get
    (
    -- * Resource
      CloudbuildProjectsLocationsGitLabConfigsGetResource

    -- ** Constructing a Request
    , CloudbuildProjectsLocationsGitLabConfigsGet (..)
    , newCloudbuildProjectsLocationsGitLabConfigsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.gitLabConfigs.get@ method which the
-- 'CloudbuildProjectsLocationsGitLabConfigsGet' request conforms to.
type CloudbuildProjectsLocationsGitLabConfigsGetResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] GitLabConfig

-- | Retrieves a @GitLabConfig@. This API is experimental
--
-- /See:/ 'newCloudbuildProjectsLocationsGitLabConfigsGet' smart constructor.
data CloudbuildProjectsLocationsGitLabConfigsGet = CloudbuildProjectsLocationsGitLabConfigsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The config resource name.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsGitLabConfigsGet' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsGitLabConfigsGet 
    ::  Core.Text
       -- ^  Required. The config resource name. See 'name'.
    -> CloudbuildProjectsLocationsGitLabConfigsGet
newCloudbuildProjectsLocationsGitLabConfigsGet name =
  CloudbuildProjectsLocationsGitLabConfigsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsGitLabConfigsGet
         where
        type Rs CloudbuildProjectsLocationsGitLabConfigsGet =
             GitLabConfig
        type Scopes
               CloudbuildProjectsLocationsGitLabConfigsGet
             = '[CloudPlatform'FullControl]
        requestClient
          CloudbuildProjectsLocationsGitLabConfigsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsGitLabConfigsGetResource)
                      Core.mempty

