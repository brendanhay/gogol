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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.TagValues.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a TagValue. The returned policy may be empty if no such policy or resource exists. The @resource@ field should be the TagValue\'s resource name. For example: @tagValues\/1234@. The caller must have the @cloudresourcemanager.googleapis.com\/tagValues.getIamPolicy@ permission on the identified TagValue to get the access control policy.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagValues.getIamPolicy@.
module Gogol.ResourceManager.Cloudresourcemanager.TagValues.GetIamPolicy
  ( -- * Resource
    CloudresourcemanagerTagValuesGetIamPolicyResource,

    -- ** Constructing a Request
    CloudresourcemanagerTagValuesGetIamPolicy (..),
    newCloudresourcemanagerTagValuesGetIamPolicy,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagValues.getIamPolicy@ method which the
-- 'CloudresourcemanagerTagValuesGetIamPolicy' request conforms to.
type CloudresourcemanagerTagValuesGetIamPolicyResource =
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

-- | Gets the access control policy for a TagValue. The returned policy may be empty if no such policy or resource exists. The @resource@ field should be the TagValue\'s resource name. For example: @tagValues\/1234@. The caller must have the @cloudresourcemanager.googleapis.com\/tagValues.getIamPolicy@ permission on the identified TagValue to get the access control policy.
--
-- /See:/ 'newCloudresourcemanagerTagValuesGetIamPolicy' smart constructor.
data CloudresourcemanagerTagValuesGetIamPolicy = CloudresourcemanagerTagValuesGetIamPolicy
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

-- | Creates a value of 'CloudresourcemanagerTagValuesGetIamPolicy' with the minimum fields required to make a request.
newCloudresourcemanagerTagValuesGetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  GetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  CloudresourcemanagerTagValuesGetIamPolicy
newCloudresourcemanagerTagValuesGetIamPolicy payload resource =
  CloudresourcemanagerTagValuesGetIamPolicy
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
    CloudresourcemanagerTagValuesGetIamPolicy
  where
  type
    Rs CloudresourcemanagerTagValuesGetIamPolicy =
      Policy
  type
    Scopes CloudresourcemanagerTagValuesGetIamPolicy =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient
    CloudresourcemanagerTagValuesGetIamPolicy {..} =
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
                  CloudresourcemanagerTagValuesGetIamPolicyResource
            )
            Core.mempty
