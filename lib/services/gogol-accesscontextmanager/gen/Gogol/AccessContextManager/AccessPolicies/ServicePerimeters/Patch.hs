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
-- Module      : Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a service perimeter. The long-running operation from this RPC has a successful status after the service perimeter propagates to long-lasting storage. If a service perimeter contains errors, an error response is returned for the first error encountered.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.servicePerimeters.patch@.
module Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.Patch
  ( -- * Resource
    AccessContextManagerAccessPoliciesServicePerimetersPatchResource,

    -- ** Constructing a Request
    AccessContextManagerAccessPoliciesServicePerimetersPatch (..),
    newAccessContextManagerAccessPoliciesServicePerimetersPatch,
  )
where

import Gogol.AccessContextManager.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @accesscontextmanager.accessPolicies.servicePerimeters.patch@ method which the
-- 'AccessContextManagerAccessPoliciesServicePerimetersPatch' request conforms to.
type AccessContextManagerAccessPoliciesServicePerimetersPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ServicePerimeter
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates a service perimeter. The long-running operation from this RPC has a successful status after the service perimeter propagates to long-lasting storage. If a service perimeter contains errors, an error response is returned for the first error encountered.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesServicePerimetersPatch' smart constructor.
data AccessContextManagerAccessPoliciesServicePerimetersPatch = AccessContextManagerAccessPoliciesServicePerimetersPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the ServicePerimeter. The @short_name@ component must begin with a letter and only include alphanumeric and \'_\'. Format: @accessPolicies\/{access_policy}\/servicePerimeters\/{service_perimeter}@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ServicePerimeter,
    -- | Required. Mask to control which fields get updated. Must be non-empty.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesServicePerimetersPatch' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesServicePerimetersPatch ::
  -- |  Required. Resource name for the ServicePerimeter. The @short_name@ component must begin with a letter and only include alphanumeric and \'_\'. Format: @accessPolicies\/{access_policy}\/servicePerimeters\/{service_perimeter}@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ServicePerimeter ->
  AccessContextManagerAccessPoliciesServicePerimetersPatch
newAccessContextManagerAccessPoliciesServicePerimetersPatch name payload =
  AccessContextManagerAccessPoliciesServicePerimetersPatch
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
    AccessContextManagerAccessPoliciesServicePerimetersPatch
  where
  type
    Rs
      AccessContextManagerAccessPoliciesServicePerimetersPatch =
      Operation
  type
    Scopes
      AccessContextManagerAccessPoliciesServicePerimetersPatch =
      '[CloudPlatform'FullControl]
  requestClient
    AccessContextManagerAccessPoliciesServicePerimetersPatch {..} =
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
        accessContextManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AccessContextManagerAccessPoliciesServicePerimetersPatchResource
            )
            Core.mempty
