{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.ServiceBroker.SetIamPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any existing policy.
--
-- Can return Public Errors: NOT/FOUND, INVALID/ARGUMENT and PERMISSION_DENIED
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/concepts/add-on/service-broker Service Broker API Reference> for @servicebroker.setIamPolicy@.
module Gogol.ServiceBroker.SetIamPolicy
  ( -- * Resource
    ServiceBrokerSetIamPolicyResource,

    -- ** Constructing a Request
    ServiceBrokerSetIamPolicy (..),
    newServiceBrokerSetIamPolicy,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceBroker.Types

-- | A resource alias for @servicebroker.setIamPolicy@ method which the
-- 'ServiceBrokerSetIamPolicy' request conforms to.
type ServiceBrokerSetIamPolicyResource =
  "v1"
    Core.:> Core.CaptureMode "resource" "setIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleIamV1__SetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] GoogleIamV1__Policy

-- | Sets the access control policy on the specified resource. Replaces any existing policy.
--
-- Can return Public Errors: NOT/FOUND, INVALID/ARGUMENT and PERMISSION_DENIED
--
-- /See:/ 'newServiceBrokerSetIamPolicy' smart constructor.
data ServiceBrokerSetIamPolicy = ServiceBrokerSetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleIamV1__SetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceBrokerSetIamPolicy' with the minimum fields required to make a request.
newServiceBrokerSetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleIamV1__SetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  ServiceBrokerSetIamPolicy
newServiceBrokerSetIamPolicy payload resource =
  ServiceBrokerSetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ServiceBrokerSetIamPolicy where
  type Rs ServiceBrokerSetIamPolicy = GoogleIamV1__Policy
  type
    Scopes ServiceBrokerSetIamPolicy =
      '[CloudPlatform'FullControl]
  requestClient ServiceBrokerSetIamPolicy {..} =
    go
      resource
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      serviceBrokerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ServiceBrokerSetIamPolicyResource)
          Core.mempty
