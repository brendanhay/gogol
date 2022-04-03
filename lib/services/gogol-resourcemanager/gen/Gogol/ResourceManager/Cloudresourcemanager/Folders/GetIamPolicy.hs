{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Folders.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a folder. The returned policy may be empty if no such policy or resource exists. The @resource@ field should be the folder\'s resource name, for example: \"folders\/1234\". The caller must have @resourcemanager.folders.getIamPolicy@ permission on the identified folder.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.getIamPolicy@.
module Gogol.ResourceManager.Cloudresourcemanager.Folders.GetIamPolicy
  ( -- * Resource
    CloudresourcemanagerFoldersGetIamPolicyResource,

    -- ** Constructing a Request
    CloudresourcemanagerFoldersGetIamPolicy (..),
    newCloudresourcemanagerFoldersGetIamPolicy,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.getIamPolicy@ method which the
-- 'CloudresourcemanagerFoldersGetIamPolicy' request conforms to.
type CloudresourcemanagerFoldersGetIamPolicyResource =
  "v3"
    Core.:> Core.CaptureMode "resource" "getIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Gets the access control policy for a folder. The returned policy may be empty if no such policy or resource exists. The @resource@ field should be the folder\'s resource name, for example: \"folders\/1234\". The caller must have @resourcemanager.folders.getIamPolicy@ permission on the identified folder.
--
-- /See:/ 'newCloudresourcemanagerFoldersGetIamPolicy' smart constructor.
data CloudresourcemanagerFoldersGetIamPolicy = CloudresourcemanagerFoldersGetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerFoldersGetIamPolicy' with the minimum fields required to make a request.
newCloudresourcemanagerFoldersGetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  GetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  CloudresourcemanagerFoldersGetIamPolicy
newCloudresourcemanagerFoldersGetIamPolicy payload resource =
  CloudresourcemanagerFoldersGetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerFoldersGetIamPolicy
  where
  type
    Rs CloudresourcemanagerFoldersGetIamPolicy =
      Policy
  type
    Scopes CloudresourcemanagerFoldersGetIamPolicy =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient
    CloudresourcemanagerFoldersGetIamPolicy {..} =
      go
        resource
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        resourceManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudresourcemanagerFoldersGetIamPolicyResource
            )
            Core.mempty
