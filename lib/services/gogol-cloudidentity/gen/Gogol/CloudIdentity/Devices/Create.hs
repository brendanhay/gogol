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
-- Module      : Gogol.CloudIdentity.Devices.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a device. Only company-owned device may be created. __Note__: This method is available only to customers who have one of the following SKUs: Enterprise Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity Premium
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.create@.
module Gogol.CloudIdentity.Devices.Create
    (
    -- * Resource
      CloudIdentityDevicesCreateResource

    -- ** Constructing a Request
    , newCloudIdentityDevicesCreate
    , CloudIdentityDevicesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.devices.create@ method which the
-- 'CloudIdentityDevicesCreate' request conforms to.
type CloudIdentityDevicesCreateResource =
     "v1" Core.:>
       "devices" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "customer" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         GoogleAppsCloudidentityDevicesV1Device
                         Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a device. Only company-owned device may be created. __Note__: This method is available only to customers who have one of the following SKUs: Enterprise Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity Premium
--
-- /See:/ 'newCloudIdentityDevicesCreate' smart constructor.
data CloudIdentityDevicesCreate = CloudIdentityDevicesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
    , customer :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: GoogleAppsCloudidentityDevicesV1Device
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityDevicesCreate' with the minimum fields required to make a request.
newCloudIdentityDevicesCreate 
    ::  GoogleAppsCloudidentityDevicesV1Device
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudIdentityDevicesCreate
newCloudIdentityDevicesCreate payload =
  CloudIdentityDevicesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customer = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudIdentityDevicesCreate
         where
        type Rs CloudIdentityDevicesCreate = Operation
        type Scopes CloudIdentityDevicesCreate =
             '["https://www.googleapis.com/auth/cloud-identity.devices"]
        requestClient CloudIdentityDevicesCreate{..}
          = go xgafv accessToken callback customer uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudIdentityDevicesCreateResource)
                      Core.mempty

