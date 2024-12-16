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
-- Module      : Gogol.Composer.Projects.Locations.Environments.UserWorkloadsSecrets.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a user workloads Secret. This method is supported for Cloud Composer environments in versions composer-3././-airflow-/./.* and newer.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.userWorkloadsSecrets.create@.
module Gogol.Composer.Projects.Locations.Environments.UserWorkloadsSecrets.Create
    (
    -- * Resource
      ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreateResource

    -- ** Constructing a Request
    , ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate (..)
    , newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Composer.Types

-- | A resource alias for @composer.projects.locations.environments.userWorkloadsSecrets.create@ method which the
-- 'ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate' request conforms to.
type ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "userWorkloadsSecrets" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] UserWorkloadsSecret Core.:>
                         Core.Post '[Core.JSON] UserWorkloadsSecret

-- | Creates a user workloads Secret. This method is supported for Cloud Composer environments in versions composer-3././-airflow-/./.* and newer.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate' smart constructor.
data ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate = ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The environment name to create a Secret for, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: UserWorkloadsSecret
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate 
    ::  Core.Text
       -- ^  Required. The environment name to create a Secret for, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\" See 'parent'.
    -> UserWorkloadsSecret
       -- ^  Multipart request metadata. See 'payload'.
    -> ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate
newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate parent payload =
  ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate
         where
        type Rs
               ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate
             = UserWorkloadsSecret
        type Scopes
               ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate
             = '[CloudPlatform'FullControl]
        requestClient
          ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              composerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreateResource)
                      Core.mempty

