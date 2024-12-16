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
-- Module      : Gogol.ServiceUser.Projects.Services.Disable
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disable a service so it can no longer be used with a project. This prevents unintended usage that may cause unexpected billing charges or security leaks.
-- 
-- Operation\<response: google.protobuf.Empty>
--
-- /See:/ <https://cloud.google.com/service-management/ Service User API Reference> for @serviceuser.projects.services.disable@.
module Gogol.ServiceUser.Projects.Services.Disable
    (
    -- * Resource
      ServiceUserProjectsServicesDisableResource

    -- ** Constructing a Request
    , ServiceUserProjectsServicesDisable (..)
    , newServiceUserProjectsServicesDisable
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceUser.Types

-- | A resource alias for @serviceuser.projects.services.disable@ method which the
-- 'ServiceUserProjectsServicesDisable' request conforms to.
type ServiceUserProjectsServicesDisableResource =
     "v1" Core.:>
       Core.CaptureMode "name" "disable" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] DisableServiceRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Disable a service so it can no longer be used with a project. This prevents unintended usage that may cause unexpected billing charges or security leaks.
-- 
-- Operation\<response: google.protobuf.Empty>
--
-- /See:/ 'newServiceUserProjectsServicesDisable' smart constructor.
data ServiceUserProjectsServicesDisable = ServiceUserProjectsServicesDisable
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the consumer and the service to disable for that consumer.
      -- 
      -- The Service User implementation accepts the following forms for consumer: - \"project:\<project_id>\"
      -- 
      -- A valid path would be: - projects\/my-project\/services\/servicemanagement.googleapis.com
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: DisableServiceRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceUserProjectsServicesDisable' with the minimum fields required to make a request.
newServiceUserProjectsServicesDisable 
    ::  Core.Text
       -- ^  Name of the consumer and the service to disable for that consumer.
       -- 
       -- The Service User implementation accepts the following forms for consumer: - \"project:\<project_id>\"
       -- 
       -- A valid path would be: - projects\/my-project\/services\/servicemanagement.googleapis.com See 'name'.
    -> DisableServiceRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ServiceUserProjectsServicesDisable
newServiceUserProjectsServicesDisable name payload =
  ServiceUserProjectsServicesDisable
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ServiceUserProjectsServicesDisable
         where
        type Rs ServiceUserProjectsServicesDisable =
             Operation
        type Scopes ServiceUserProjectsServicesDisable =
             '[CloudPlatform'FullControl, Service'Management]
        requestClient ServiceUserProjectsServicesDisable{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              serviceUserService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ServiceUserProjectsServicesDisableResource)
                      Core.mempty

