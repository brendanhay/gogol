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
-- Module      : Gogol.IAM.Policies.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified policy. You can update only the rules and the display name for the policy. To update a policy, you should use a read-modify-write loop: 1. Use GetPolicy to read the current version of the policy. 2. Modify the policy as needed. 3. Use @UpdatePolicy@ to write the updated policy. This pattern helps prevent conflicts between concurrent updates.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.policies.update@.
module Gogol.IAM.Policies.Update
  ( -- * Resource
    IAMPoliciesUpdateResource,

    -- ** Constructing a Request
    IAMPoliciesUpdate (..),
    newIAMPoliciesUpdate,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.policies.update@ method which the
-- 'IAMPoliciesUpdate' request conforms to.
type IAMPoliciesUpdateResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleIamV2Policy
    Core.:> Core.Put '[Core.JSON] GoogleLongrunningOperation

-- | Updates the specified policy. You can update only the rules and the display name for the policy. To update a policy, you should use a read-modify-write loop: 1. Use GetPolicy to read the current version of the policy. 2. Modify the policy as needed. 3. Use @UpdatePolicy@ to write the updated policy. This pattern helps prevent conflicts between concurrent updates.
--
-- /See:/ 'newIAMPoliciesUpdate' smart constructor.
data IAMPoliciesUpdate = IAMPoliciesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Immutable. The resource name of the @Policy@, which must be unique. Format: @policies\/{attachment_point}\/denypolicies\/{policy_id}@ The attachment point is identified by its URL-encoded full resource name, which means that the forward-slash character, @\/@, must be written as @%2F@. For example, @policies\/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project\/denypolicies\/my-deny-policy@. For organizations and folders, use the numeric ID in the full resource name. For projects, requests can use the alphanumeric or the numeric ID. Responses always contain the numeric ID.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleIamV2Policy,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMPoliciesUpdate' with the minimum fields required to make a request.
newIAMPoliciesUpdate ::
  -- |  Immutable. The resource name of the @Policy@, which must be unique. Format: @policies\/{attachment_point}\/denypolicies\/{policy_id}@ The attachment point is identified by its URL-encoded full resource name, which means that the forward-slash character, @\/@, must be written as @%2F@. For example, @policies\/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project\/denypolicies\/my-deny-policy@. For organizations and folders, use the numeric ID in the full resource name. For projects, requests can use the alphanumeric or the numeric ID. Responses always contain the numeric ID. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleIamV2Policy ->
  IAMPoliciesUpdate
newIAMPoliciesUpdate name payload =
  IAMPoliciesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest IAMPoliciesUpdate where
  type
    Rs IAMPoliciesUpdate =
      GoogleLongrunningOperation
  type
    Scopes IAMPoliciesUpdate =
      '[CloudPlatform'FullControl]
  requestClient IAMPoliciesUpdate {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      iAMService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy IAMPoliciesUpdateResource)
          Core.mempty
