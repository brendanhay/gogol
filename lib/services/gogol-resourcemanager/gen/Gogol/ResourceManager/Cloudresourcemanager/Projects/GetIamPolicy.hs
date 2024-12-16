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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Projects.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the IAM access control policy for the specified project, in the format @projects\/{ProjectIdOrNumber}@ e.g. projects\/123. Permission is denied if the policy or the resource do not exist.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.getIamPolicy@.
module Gogol.ResourceManager.Cloudresourcemanager.Projects.GetIamPolicy
    (
    -- * Resource
      CloudresourcemanagerProjectsGetIamPolicyResource

    -- ** Constructing a Request
    , CloudresourcemanagerProjectsGetIamPolicy (..)
    , newCloudresourcemanagerProjectsGetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.getIamPolicy@ method which the
-- 'CloudresourcemanagerProjectsGetIamPolicy' request conforms to.
type CloudresourcemanagerProjectsGetIamPolicyResource
     =
     "v3" Core.:>
       Core.CaptureMode "resource" "getIamPolicy" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] GetIamPolicyRequest Core.:>
                       Core.Post '[Core.JSON] Policy

-- | Returns the IAM access control policy for the specified project, in the format @projects\/{ProjectIdOrNumber}@ e.g. projects\/123. Permission is denied if the policy or the resource do not exist.
--
-- /See:/ 'newCloudresourcemanagerProjectsGetIamPolicy' smart constructor.
data CloudresourcemanagerProjectsGetIamPolicy = CloudresourcemanagerProjectsGetIamPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: GetIamPolicyRequest
      -- | REQUIRED: The resource for which the policy is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerProjectsGetIamPolicy' with the minimum fields required to make a request.
newCloudresourcemanagerProjectsGetIamPolicy 
    ::  GetIamPolicyRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The resource for which the policy is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
    -> CloudresourcemanagerProjectsGetIamPolicy
newCloudresourcemanagerProjectsGetIamPolicy payload resource =
  CloudresourcemanagerProjectsGetIamPolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudresourcemanagerProjectsGetIamPolicy
         where
        type Rs CloudresourcemanagerProjectsGetIamPolicy =
             Policy
        type Scopes CloudresourcemanagerProjectsGetIamPolicy
             =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
        requestClient
          CloudresourcemanagerProjectsGetIamPolicy{..}
          = go resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              resourceManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudresourcemanagerProjectsGetIamPolicyResource)
                      Core.mempty

