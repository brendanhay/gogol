{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.IAM.Policies.ListPolicies
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the policies of the specified kind that are attached to a resource. The response lists only policy metadata. In particular, policy rules are omitted.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.policies.listPolicies@.
module Gogol.IAM.Policies.ListPolicies
  ( -- * Resource
    IAMPoliciesListPoliciesResource,

    -- ** Constructing a Request
    IAMPoliciesListPolicies (..),
    newIAMPoliciesListPolicies,
  )
where

import Gogol.IAM.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @iam.policies.listPolicies@ method which the
-- 'IAMPoliciesListPolicies' request conforms to.
type IAMPoliciesListPoliciesResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleIamV2ListPoliciesResponse

-- | Retrieves the policies of the specified kind that are attached to a resource. The response lists only policy metadata. In particular, policy rules are omitted.
--
-- /See:/ 'newIAMPoliciesListPolicies' smart constructor.
data IAMPoliciesListPolicies = IAMPoliciesListPolicies
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of policies to return. IAM ignores this value and uses the value 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token received in a ListPoliciesResponse. Provide this token to retrieve the next page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource that the policy is attached to, along with the kind of policy to list. Format: @policies\/{attachment_point}\/denypolicies@ The attachment point is identified by its URL-encoded full resource name, which means that the forward-slash character, @\/@, must be written as @%2F@. For example, @policies\/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project\/denypolicies@. For organizations and folders, use the numeric ID in the full resource name. For projects, you can use the alphanumeric or the numeric ID.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMPoliciesListPolicies' with the minimum fields required to make a request.
newIAMPoliciesListPolicies ::
  -- |  Required. The resource that the policy is attached to, along with the kind of policy to list. Format: @policies\/{attachment_point}\/denypolicies@ The attachment point is identified by its URL-encoded full resource name, which means that the forward-slash character, @\/@, must be written as @%2F@. For example, @policies\/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project\/denypolicies@. For organizations and folders, use the numeric ID in the full resource name. For projects, you can use the alphanumeric or the numeric ID. See 'parent'.
  Core.Text ->
  IAMPoliciesListPolicies
newIAMPoliciesListPolicies parent =
  IAMPoliciesListPolicies
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest IAMPoliciesListPolicies where
  type Rs IAMPoliciesListPolicies = GoogleIamV2ListPoliciesResponse
  type Scopes IAMPoliciesListPolicies = '[CloudPlatform'FullControl]
  requestClient IAMPoliciesListPolicies {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      iAMService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy IAMPoliciesListPoliciesResource)
          Core.mempty
