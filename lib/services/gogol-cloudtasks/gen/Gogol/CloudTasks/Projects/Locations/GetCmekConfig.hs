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
-- Module      : Gogol.CloudTasks.Projects.Locations.GetCmekConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the CMEK config. Gets the Customer Managed Encryption Key configured with the Cloud Tasks lcoation. By default there is no kms_key configured.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.getCmekConfig@.
module Gogol.CloudTasks.Projects.Locations.GetCmekConfig
    (
    -- * Resource
      CloudTasksProjectsLocationsGetCmekConfigResource

    -- ** Constructing a Request
    , CloudTasksProjectsLocationsGetCmekConfig (..)
    , newCloudTasksProjectsLocationsGetCmekConfig
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudTasks.Types

-- | A resource alias for @cloudtasks.projects.locations.getCmekConfig@ method which the
-- 'CloudTasksProjectsLocationsGetCmekConfig' request conforms to.
type CloudTasksProjectsLocationsGetCmekConfigResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] CmekConfig

-- | Gets the CMEK config. Gets the Customer Managed Encryption Key configured with the Cloud Tasks lcoation. By default there is no kms_key configured.
--
-- /See:/ 'newCloudTasksProjectsLocationsGetCmekConfig' smart constructor.
data CloudTasksProjectsLocationsGetCmekConfig = CloudTasksProjectsLocationsGetCmekConfig
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The config. For example: projects\/PROJECT/ID\/locations\/LOCATION/ID\/CmekConfig\`
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsGetCmekConfig' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsGetCmekConfig 
    ::  Core.Text
       -- ^  Required. The config. For example: projects\/PROJECT/ID\/locations\/LOCATION/ID\/CmekConfig\` See 'name'.
    -> CloudTasksProjectsLocationsGetCmekConfig
newCloudTasksProjectsLocationsGetCmekConfig name =
  CloudTasksProjectsLocationsGetCmekConfig
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudTasksProjectsLocationsGetCmekConfig
         where
        type Rs CloudTasksProjectsLocationsGetCmekConfig =
             CmekConfig
        type Scopes CloudTasksProjectsLocationsGetCmekConfig
             = '[CloudPlatform'FullControl]
        requestClient
          CloudTasksProjectsLocationsGetCmekConfig{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudTasksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudTasksProjectsLocationsGetCmekConfigResource)
                      Core.mempty

