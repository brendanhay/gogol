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
-- Module      : Gogol.AccessContextManager.AccessPolicies.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an access policy. This method fails if the organization already has an access policy. The long-running operation has a successful status after the access policy propagates to long-lasting storage. Syntactic and basic semantic errors are returned in @metadata@ as a BadRequest proto.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.create@.
module Gogol.AccessContextManager.AccessPolicies.Create
  ( -- * Resource
    AccessContextManagerAccessPoliciesCreateResource,

    -- ** Constructing a Request
    newAccessContextManagerAccessPoliciesCreate,
    AccessContextManagerAccessPoliciesCreate,
  )
where

import Gogol.AccessContextManager.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @accesscontextmanager.accessPolicies.create@ method which the
-- 'AccessContextManagerAccessPoliciesCreate' request conforms to.
type AccessContextManagerAccessPoliciesCreateResource =
  "v1"
    Core.:> "accessPolicies"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AccessPolicy
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates an access policy. This method fails if the organization already has an access policy. The long-running operation has a successful status after the access policy propagates to long-lasting storage. Syntactic and basic semantic errors are returned in @metadata@ as a BadRequest proto.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesCreate' smart constructor.
data AccessContextManagerAccessPoliciesCreate = AccessContextManagerAccessPoliciesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AccessPolicy,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesCreate' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  AccessPolicy ->
  AccessContextManagerAccessPoliciesCreate
newAccessContextManagerAccessPoliciesCreate payload =
  AccessContextManagerAccessPoliciesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AccessContextManagerAccessPoliciesCreate
  where
  type
    Rs AccessContextManagerAccessPoliciesCreate =
      Operation
  type
    Scopes AccessContextManagerAccessPoliciesCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    AccessContextManagerAccessPoliciesCreate {..} =
      go
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        accessContextManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AccessContextManagerAccessPoliciesCreateResource
            )
            Core.mempty
