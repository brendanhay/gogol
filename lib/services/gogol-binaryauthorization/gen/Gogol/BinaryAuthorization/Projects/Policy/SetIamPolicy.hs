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
-- Module      : Gogol.BinaryAuthorization.Projects.Policy.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any existing policy. Can return @NOT_FOUND@, @INVALID_ARGUMENT@, and @PERMISSION_DENIED@ errors.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.policy.setIamPolicy@.
module Gogol.BinaryAuthorization.Projects.Policy.SetIamPolicy
    (
    -- * Resource
      BinaryAuthorizationProjectsPolicySetIamPolicyResource

    -- ** Constructing a Request
    , newBinaryAuthorizationProjectsPolicySetIamPolicy
    , BinaryAuthorizationProjectsPolicySetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BinaryAuthorization.Types

-- | A resource alias for @binaryauthorization.projects.policy.setIamPolicy@ method which the
-- 'BinaryAuthorizationProjectsPolicySetIamPolicy' request conforms to.
type BinaryAuthorizationProjectsPolicySetIamPolicyResource
     =
     "v1" Core.:>
       Core.CaptureMode "resource" "setIamPolicy" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] SetIamPolicyRequest Core.:>
                       Core.Post '[Core.JSON] IamPolicy

-- | Sets the access control policy on the specified resource. Replaces any existing policy. Can return @NOT_FOUND@, @INVALID_ARGUMENT@, and @PERMISSION_DENIED@ errors.
--
-- /See:/ 'newBinaryAuthorizationProjectsPolicySetIamPolicy' smart constructor.
data BinaryAuthorizationProjectsPolicySetIamPolicy = BinaryAuthorizationProjectsPolicySetIamPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: SetIamPolicyRequest
      -- | REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorizationProjectsPolicySetIamPolicy' with the minimum fields required to make a request.
newBinaryAuthorizationProjectsPolicySetIamPolicy 
    ::  SetIamPolicyRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field. See 'resource'.
    -> BinaryAuthorizationProjectsPolicySetIamPolicy
newBinaryAuthorizationProjectsPolicySetIamPolicy payload resource =
  BinaryAuthorizationProjectsPolicySetIamPolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BinaryAuthorizationProjectsPolicySetIamPolicy
         where
        type Rs BinaryAuthorizationProjectsPolicySetIamPolicy
             = IamPolicy
        type Scopes
               BinaryAuthorizationProjectsPolicySetIamPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          BinaryAuthorizationProjectsPolicySetIamPolicy{..}
          = go resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              binaryAuthorizationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BinaryAuthorizationProjectsPolicySetIamPolicyResource)
                      Core.mempty

