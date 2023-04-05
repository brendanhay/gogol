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
-- Module      : Gogol.IAM.Policies.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a policy.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.policies.get@.
module Gogol.IAM.Policies.Get
  ( -- * Resource
    IAMPoliciesGetResource,

    -- ** Constructing a Request
    IAMPoliciesGet (..),
    newIAMPoliciesGet,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.policies.get@ method which the
-- 'IAMPoliciesGet' request conforms to.
type IAMPoliciesGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleIamV2Policy

-- | Gets a policy.
--
-- /See:/ 'newIAMPoliciesGet' smart constructor.
data IAMPoliciesGet = IAMPoliciesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the policy to retrieve. Format: @policies\/{attachment_point}\/denypolicies\/{policy_id}@ Use the URL-encoded full resource name, which means that the forward-slash character, @\/@, must be written as @%2F@. For example, @policies\/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project\/denypolicies\/my-policy@. For organizations and folders, use the numeric ID in the full resource name. For projects, you can use the alphanumeric or the numeric ID.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMPoliciesGet' with the minimum fields required to make a request.
newIAMPoliciesGet ::
  -- |  Required. The resource name of the policy to retrieve. Format: @policies\/{attachment_point}\/denypolicies\/{policy_id}@ Use the URL-encoded full resource name, which means that the forward-slash character, @\/@, must be written as @%2F@. For example, @policies\/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project\/denypolicies\/my-policy@. For organizations and folders, use the numeric ID in the full resource name. For projects, you can use the alphanumeric or the numeric ID. See 'name'.
  Core.Text ->
  IAMPoliciesGet
newIAMPoliciesGet name =
  IAMPoliciesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest IAMPoliciesGet where
  type Rs IAMPoliciesGet = GoogleIamV2Policy
  type
    Scopes IAMPoliciesGet =
      '[CloudPlatform'FullControl]
  requestClient IAMPoliciesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      iAMService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy IAMPoliciesGetResource)
          Core.mempty
