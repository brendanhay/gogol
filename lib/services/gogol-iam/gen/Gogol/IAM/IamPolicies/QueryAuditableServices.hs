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
-- Module      : Gogol.IAM.IamPolicies.QueryAuditableServices
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of services that allow you to opt into audit logs that are not generated by default. To learn more about audit logs, see the <https://cloud.google.com/logging/docs/audit Logging documentation>.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.iamPolicies.queryAuditableServices@.
module Gogol.IAM.IamPolicies.QueryAuditableServices
  ( -- * Resource
    IAMIamPoliciesQueryAuditableServicesResource,

    -- ** Constructing a Request
    IAMIamPoliciesQueryAuditableServices (..),
    newIAMIamPoliciesQueryAuditableServices,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.iamPolicies.queryAuditableServices@ method which the
-- 'IAMIamPoliciesQueryAuditableServices' request conforms to.
type IAMIamPoliciesQueryAuditableServicesResource =
  "v1"
    Core.:> "iamPolicies:queryAuditableServices"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              QueryAuditableServicesRequest
    Core.:> Core.Post '[Core.JSON] QueryAuditableServicesResponse

-- | Returns a list of services that allow you to opt into audit logs that are not generated by default. To learn more about audit logs, see the <https://cloud.google.com/logging/docs/audit Logging documentation>.
--
-- /See:/ 'newIAMIamPoliciesQueryAuditableServices' smart constructor.
data IAMIamPoliciesQueryAuditableServices = IAMIamPoliciesQueryAuditableServices
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: QueryAuditableServicesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMIamPoliciesQueryAuditableServices' with the minimum fields required to make a request.
newIAMIamPoliciesQueryAuditableServices ::
  -- |  Multipart request metadata. See 'payload'.
  QueryAuditableServicesRequest ->
  IAMIamPoliciesQueryAuditableServices
newIAMIamPoliciesQueryAuditableServices payload =
  IAMIamPoliciesQueryAuditableServices
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAMIamPoliciesQueryAuditableServices
  where
  type
    Rs IAMIamPoliciesQueryAuditableServices =
      QueryAuditableServicesResponse
  type
    Scopes IAMIamPoliciesQueryAuditableServices =
      '[CloudPlatform'FullControl]
  requestClient
    IAMIamPoliciesQueryAuditableServices {..} =
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
                Core.Proxy
                  IAMIamPoliciesQueryAuditableServicesResource
            )
            Core.mempty
