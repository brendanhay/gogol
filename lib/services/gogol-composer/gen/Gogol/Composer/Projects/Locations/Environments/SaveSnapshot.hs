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
-- Module      : Gogol.Composer.Projects.Locations.Environments.SaveSnapshot
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a snapshots of a Cloud Composer environment. As a result of this operation, snapshot of environment\'s state is stored in a location specified in the SaveSnapshotRequest.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.saveSnapshot@.
module Gogol.Composer.Projects.Locations.Environments.SaveSnapshot
    (
    -- * Resource
      ComposerProjectsLocationsEnvironmentsSaveSnapshotResource

    -- ** Constructing a Request
    , ComposerProjectsLocationsEnvironmentsSaveSnapshot (..)
    , newComposerProjectsLocationsEnvironmentsSaveSnapshot
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Composer.Types

-- | A resource alias for @composer.projects.locations.environments.saveSnapshot@ method which the
-- 'ComposerProjectsLocationsEnvironmentsSaveSnapshot' request conforms to.
type ComposerProjectsLocationsEnvironmentsSaveSnapshotResource
     =
     "v1" Core.:>
       Core.CaptureMode "environment" "saveSnapshot"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] SaveSnapshotRequest Core.:>
                       Core.Post '[Core.JSON] Operation

-- | Creates a snapshots of a Cloud Composer environment. As a result of this operation, snapshot of environment\'s state is stored in a location specified in the SaveSnapshotRequest.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsSaveSnapshot' smart constructor.
data ComposerProjectsLocationsEnvironmentsSaveSnapshot = ComposerProjectsLocationsEnvironmentsSaveSnapshot
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The resource name of the source environment in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
    , environment :: Core.Text
      -- | Multipart request metadata.
    , payload :: SaveSnapshotRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsSaveSnapshot' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsSaveSnapshot 
    ::  Core.Text
       -- ^  The resource name of the source environment in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\" See 'environment'.
    -> SaveSnapshotRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ComposerProjectsLocationsEnvironmentsSaveSnapshot
newComposerProjectsLocationsEnvironmentsSaveSnapshot environment payload =
  ComposerProjectsLocationsEnvironmentsSaveSnapshot
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , environment = environment
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComposerProjectsLocationsEnvironmentsSaveSnapshot
         where
        type Rs
               ComposerProjectsLocationsEnvironmentsSaveSnapshot
             = Operation
        type Scopes
               ComposerProjectsLocationsEnvironmentsSaveSnapshot
             = '[CloudPlatform'FullControl]
        requestClient
          ComposerProjectsLocationsEnvironmentsSaveSnapshot{..}
          = go environment xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              composerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComposerProjectsLocationsEnvironmentsSaveSnapshotResource)
                      Core.mempty

