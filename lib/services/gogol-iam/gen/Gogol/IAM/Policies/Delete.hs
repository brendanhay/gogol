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
-- Module      : Gogol.IAM.Policies.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a policy. This action is permanent.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.policies.delete@.
module Gogol.IAM.Policies.Delete
  ( -- * Resource
    IAMPoliciesDeleteResource,

    -- ** Constructing a Request
    IAMPoliciesDelete (..),
    newIAMPoliciesDelete,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.policies.delete@ method which the
-- 'IAMPoliciesDelete' request conforms to.
type IAMPoliciesDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "etag" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] GoogleLongrunningOperation

-- | Deletes a policy. This action is permanent.
--
-- /See:/ 'newIAMPoliciesDelete' smart constructor.
data IAMPoliciesDelete = IAMPoliciesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The expected @etag@ of the policy to delete. If the value does not match the value that is stored in IAM, the request fails with a @409@ error code and @ABORTED@ status. If you omit this field, the policy is deleted regardless of its current @etag@.
    etag :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the policy to delete. Format: @policies\/{attachment_point}\/denypolicies\/{policy_id}@ Use the URL-encoded full resource name, which means that the forward-slash character, @\/@, must be written as @%2F@. For example, @policies\/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project\/denypolicies\/my-policy@. For organizations and folders, use the numeric ID in the full resource name. For projects, you can use the alphanumeric or the numeric ID.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMPoliciesDelete' with the minimum fields required to make a request.
newIAMPoliciesDelete ::
  -- |  Required. The resource name of the policy to delete. Format: @policies\/{attachment_point}\/denypolicies\/{policy_id}@ Use the URL-encoded full resource name, which means that the forward-slash character, @\/@, must be written as @%2F@. For example, @policies\/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project\/denypolicies\/my-policy@. For organizations and folders, use the numeric ID in the full resource name. For projects, you can use the alphanumeric or the numeric ID. See 'name'.
  Core.Text ->
  IAMPoliciesDelete
newIAMPoliciesDelete name =
  IAMPoliciesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      etag = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest IAMPoliciesDelete where
  type
    Rs IAMPoliciesDelete =
      GoogleLongrunningOperation
  type
    Scopes IAMPoliciesDelete =
      '[CloudPlatform'FullControl]
  requestClient IAMPoliciesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      etag
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      iAMService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy IAMPoliciesDeleteResource)
          Core.mempty
