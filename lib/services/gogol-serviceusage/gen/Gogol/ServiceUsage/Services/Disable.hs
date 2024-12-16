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
-- Module      : Gogol.ServiceUsage.Services.Disable
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disable a service so that it can no longer be used with a project. This prevents unintended usage that may cause unexpected billing charges or security leaks. It is not valid to call the disable method on a service that is not currently enabled. Callers will receive a @FAILED_PRECONDITION@ status if the target service is not currently enabled.
--
-- /See:/ <https://cloud.google.com/service-usage/ Service Usage API Reference> for @serviceusage.services.disable@.
module Gogol.ServiceUsage.Services.Disable
    (
    -- * Resource
      ServiceUsageServicesDisableResource

    -- ** Constructing a Request
    , ServiceUsageServicesDisable (..)
    , newServiceUsageServicesDisable
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceUsage.Types

-- | A resource alias for @serviceusage.services.disable@ method which the
-- 'ServiceUsageServicesDisable' request conforms to.
type ServiceUsageServicesDisableResource =
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

-- | Disable a service so that it can no longer be used with a project. This prevents unintended usage that may cause unexpected billing charges or security leaks. It is not valid to call the disable method on a service that is not currently enabled. Callers will receive a @FAILED_PRECONDITION@ status if the target service is not currently enabled.
--
-- /See:/ 'newServiceUsageServicesDisable' smart constructor.
data ServiceUsageServicesDisable = ServiceUsageServicesDisable
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the consumer and service to disable the service on. The enable and disable methods currently only support projects. An example name would be: @projects\/123\/services\/serviceusage.googleapis.com@ where @123@ is the project number.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: DisableServiceRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceUsageServicesDisable' with the minimum fields required to make a request.
newServiceUsageServicesDisable 
    ::  Core.Text
       -- ^  Name of the consumer and service to disable the service on. The enable and disable methods currently only support projects. An example name would be: @projects\/123\/services\/serviceusage.googleapis.com@ where @123@ is the project number. See 'name'.
    -> DisableServiceRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ServiceUsageServicesDisable
newServiceUsageServicesDisable name payload =
  ServiceUsageServicesDisable
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ServiceUsageServicesDisable
         where
        type Rs ServiceUsageServicesDisable = Operation
        type Scopes ServiceUsageServicesDisable =
             '[CloudPlatform'FullControl, Service'Management]
        requestClient ServiceUsageServicesDisable{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              serviceUsageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ServiceUsageServicesDisableResource)
                      Core.mempty

