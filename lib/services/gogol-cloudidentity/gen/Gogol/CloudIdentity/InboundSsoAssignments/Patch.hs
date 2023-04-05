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
-- Module      : Gogol.CloudIdentity.InboundSsoAssignments.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an InboundSsoAssignment. The body of this request is the @inbound_sso_assignment@ field and the @update_mask@ is relative to that. For example: a PATCH to @\/v1\/inboundSsoAssignments\/0abcdefg1234567&update_mask=rank@ with a body of @{ \"rank\": 1 }@ moves that (presumably group-targeted) SSO assignment to the highest priority and shifts any other group-targeted assignments down in priority.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundSsoAssignments.patch@.
module Gogol.CloudIdentity.InboundSsoAssignments.Patch
  ( -- * Resource
    CloudIdentityInboundSsoAssignmentsPatchResource,

    -- ** Constructing a Request
    CloudIdentityInboundSsoAssignmentsPatch (..),
    newCloudIdentityInboundSsoAssignmentsPatch,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.inboundSsoAssignments.patch@ method which the
-- 'CloudIdentityInboundSsoAssignmentsPatch' request conforms to.
type CloudIdentityInboundSsoAssignmentsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] InboundSsoAssignment
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates an InboundSsoAssignment. The body of this request is the @inbound_sso_assignment@ field and the @update_mask@ is relative to that. For example: a PATCH to @\/v1\/inboundSsoAssignments\/0abcdefg1234567&update_mask=rank@ with a body of @{ \"rank\": 1 }@ moves that (presumably group-targeted) SSO assignment to the highest priority and shifts any other group-targeted assignments down in priority.
--
-- /See:/ 'newCloudIdentityInboundSsoAssignmentsPatch' smart constructor.
data CloudIdentityInboundSsoAssignmentsPatch = CloudIdentityInboundSsoAssignmentsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. <https://cloud.google.com/apis/design/resource_names Resource name> of the Inbound SSO Assignment.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: InboundSsoAssignment,
    -- | Required. The list of fields to be updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundSsoAssignmentsPatch' with the minimum fields required to make a request.
newCloudIdentityInboundSsoAssignmentsPatch ::
  -- |  Output only. <https://cloud.google.com/apis/design/resource_names Resource name> of the Inbound SSO Assignment. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  InboundSsoAssignment ->
  CloudIdentityInboundSsoAssignmentsPatch
newCloudIdentityInboundSsoAssignmentsPatch name payload =
  CloudIdentityInboundSsoAssignmentsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityInboundSsoAssignmentsPatch
  where
  type
    Rs CloudIdentityInboundSsoAssignmentsPatch =
      Operation
  type
    Scopes CloudIdentityInboundSsoAssignmentsPatch =
      '[CloudPlatform'FullControl]
  requestClient
    CloudIdentityInboundSsoAssignmentsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudIdentityService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudIdentityInboundSsoAssignmentsPatchResource
            )
            Core.mempty
