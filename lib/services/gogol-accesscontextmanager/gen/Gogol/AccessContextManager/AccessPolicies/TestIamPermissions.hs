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
-- Module      : Gogol.AccessContextManager.AccessPolicies.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the IAM permissions that the caller has on the specified Access Context Manager resource. The resource can be an AccessPolicy, AccessLevel, or ServicePerimeter. This method does not support other resources.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.testIamPermissions@.
module Gogol.AccessContextManager.AccessPolicies.TestIamPermissions
    (
    -- * Resource
      AccessContextManagerAccessPoliciesTestIamPermissionsResource

    -- ** Constructing a Request
    , newAccessContextManagerAccessPoliciesTestIamPermissions
    , AccessContextManagerAccessPoliciesTestIamPermissions
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessContextManager.Types

-- | A resource alias for @accesscontextmanager.accessPolicies.testIamPermissions@ method which the
-- 'AccessContextManagerAccessPoliciesTestIamPermissions' request conforms to.
type AccessContextManagerAccessPoliciesTestIamPermissionsResource
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

-- | Returns the IAM permissions that the caller has on the specified Access Context Manager resource. The resource can be an AccessPolicy, AccessLevel, or ServicePerimeter. This method does not support other resources.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesTestIamPermissions' smart constructor.
data AccessContextManagerAccessPoliciesTestIamPermissions = AccessContextManagerAccessPoliciesTestIamPermissions
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

-- | Creates a value of 'AccessContextManagerAccessPoliciesTestIamPermissions' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesTestIamPermissions 
    ::  TestIamPermissionsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The resource for which the policy detail is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
    -> AccessContextManagerAccessPoliciesTestIamPermissions
newAccessContextManagerAccessPoliciesTestIamPermissions payload resource =
  AccessContextManagerAccessPoliciesTestIamPermissions
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessContextManagerAccessPoliciesTestIamPermissions
         where
        type Rs
               AccessContextManagerAccessPoliciesTestIamPermissions
             = TestIamPermissionsResponse
        type Scopes
               AccessContextManagerAccessPoliciesTestIamPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AccessContextManagerAccessPoliciesTestIamPermissions{..}
          = go resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              accessContextManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessContextManagerAccessPoliciesTestIamPermissionsResource)
                      Core.mempty

