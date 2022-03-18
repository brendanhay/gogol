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
-- Module      : Gogol.CloudIOT.Projects.Locations.Registries.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.testIamPermissions@.
module Gogol.CloudIOT.Projects.Locations.Registries.TestIamPermissions
    (
    -- * Resource
      CloudIOTProjectsLocationsRegistriesTestIamPermissionsResource

    -- ** Constructing a Request
    , newCloudIOTProjectsLocationsRegistriesTestIamPermissions
    , CloudIOTProjectsLocationsRegistriesTestIamPermissions
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIOT.Types

-- | A resource alias for @cloudiot.projects.locations.registries.testIamPermissions@ method which the
-- 'CloudIOTProjectsLocationsRegistriesTestIamPermissions' request conforms to.
type CloudIOTProjectsLocationsRegistriesTestIamPermissionsResource
     =
     "v1" Core.:>
       Core.CaptureMode "resource" "testIamPermissions"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] TestIamPermissionsRequest
                       Core.:>
                       Core.Post '[Core.JSON] TestIamPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesTestIamPermissions' smart constructor.
data CloudIOTProjectsLocationsRegistriesTestIamPermissions = CloudIOTProjectsLocationsRegistriesTestIamPermissions
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: TestIamPermissionsRequest
      -- | REQUIRED: The resource for which the policy detail is being requested. See the operation documentation for the appropriate value for this field.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesTestIamPermissions' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesTestIamPermissions 
    ::  TestIamPermissionsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The resource for which the policy detail is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
    -> CloudIOTProjectsLocationsRegistriesTestIamPermissions
newCloudIOTProjectsLocationsRegistriesTestIamPermissions payload resource =
  CloudIOTProjectsLocationsRegistriesTestIamPermissions
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudIOTProjectsLocationsRegistriesTestIamPermissions
         where
        type Rs
               CloudIOTProjectsLocationsRegistriesTestIamPermissions
             = TestIamPermissionsResponse
        type Scopes
               CloudIOTProjectsLocationsRegistriesTestIamPermissions
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          CloudIOTProjectsLocationsRegistriesTestIamPermissions{..}
          = go resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudIOTService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudIOTProjectsLocationsRegistriesTestIamPermissionsResource)
                      Core.mempty

