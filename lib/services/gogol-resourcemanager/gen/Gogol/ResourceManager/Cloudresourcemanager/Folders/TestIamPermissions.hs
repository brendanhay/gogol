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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Folders.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified folder. The @resource@ field should be the folder\'s resource name, for example: \"folders\/1234\". There are no permissions required for making this API call.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.testIamPermissions@.
module Gogol.ResourceManager.Cloudresourcemanager.Folders.TestIamPermissions
    (
    -- * Resource
      CloudresourcemanagerFoldersTestIamPermissionsResource

    -- ** Constructing a Request
    , newCloudresourcemanagerFoldersTestIamPermissions
    , CloudresourcemanagerFoldersTestIamPermissions
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.testIamPermissions@ method which the
-- 'CloudresourcemanagerFoldersTestIamPermissions' request conforms to.
type CloudresourcemanagerFoldersTestIamPermissionsResource
     =
     "v3" Core.:>
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

-- | Returns permissions that a caller has on the specified folder. The @resource@ field should be the folder\'s resource name, for example: \"folders\/1234\". There are no permissions required for making this API call.
--
-- /See:/ 'newCloudresourcemanagerFoldersTestIamPermissions' smart constructor.
data CloudresourcemanagerFoldersTestIamPermissions = CloudresourcemanagerFoldersTestIamPermissions
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

-- | Creates a value of 'CloudresourcemanagerFoldersTestIamPermissions' with the minimum fields required to make a request.
newCloudresourcemanagerFoldersTestIamPermissions 
    ::  TestIamPermissionsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The resource for which the policy detail is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
    -> CloudresourcemanagerFoldersTestIamPermissions
newCloudresourcemanagerFoldersTestIamPermissions payload resource =
  CloudresourcemanagerFoldersTestIamPermissions
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudresourcemanagerFoldersTestIamPermissions
         where
        type Rs CloudresourcemanagerFoldersTestIamPermissions
             = TestIamPermissionsResponse
        type Scopes
               CloudresourcemanagerFoldersTestIamPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          CloudresourcemanagerFoldersTestIamPermissions{..}
          = go resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              resourceManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudresourcemanagerFoldersTestIamPermissionsResource)
                      Core.mempty

