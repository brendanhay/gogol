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
-- Module      : Gogol.IAM.IamPolicies.LintPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lints, or validates, an IAM policy. Currently checks the google.iam.v1.Binding.condition field, which contains a condition expression for a role binding. Successful calls to this method always return an HTTP @200 OK@ status code, even if the linter detects an issue in the IAM policy.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.iamPolicies.lintPolicy@.
module Gogol.IAM.IamPolicies.LintPolicy
  ( -- * Resource
    IAMIamPoliciesLintPolicyResource,

    -- ** Constructing a Request
    newIAMIamPoliciesLintPolicy,
    IAMIamPoliciesLintPolicy,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.iamPolicies.lintPolicy@ method which the
-- 'IAMIamPoliciesLintPolicy' request conforms to.
type IAMIamPoliciesLintPolicyResource =
  "v1"
    Core.:> "iamPolicies:lintPolicy"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LintPolicyRequest
    Core.:> Core.Post '[Core.JSON] LintPolicyResponse

-- | Lints, or validates, an IAM policy. Currently checks the google.iam.v1.Binding.condition field, which contains a condition expression for a role binding. Successful calls to this method always return an HTTP @200 OK@ status code, even if the linter detects an issue in the IAM policy.
--
-- /See:/ 'newIAMIamPoliciesLintPolicy' smart constructor.
data IAMIamPoliciesLintPolicy = IAMIamPoliciesLintPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: LintPolicyRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMIamPoliciesLintPolicy' with the minimum fields required to make a request.
newIAMIamPoliciesLintPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  LintPolicyRequest ->
  IAMIamPoliciesLintPolicy
newIAMIamPoliciesLintPolicy payload =
  IAMIamPoliciesLintPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest IAMIamPoliciesLintPolicy where
  type Rs IAMIamPoliciesLintPolicy = LintPolicyResponse
  type
    Scopes IAMIamPoliciesLintPolicy =
      '[CloudPlatform'FullControl]
  requestClient IAMIamPoliciesLintPolicy {..} =
    go
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
          ( Core.Proxy ::
              Core.Proxy IAMIamPoliciesLintPolicyResource
          )
          Core.mempty
