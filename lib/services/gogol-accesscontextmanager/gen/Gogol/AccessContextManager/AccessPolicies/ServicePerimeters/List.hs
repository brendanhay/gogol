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
-- Module      : Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all service perimeters for an access policy.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.servicePerimeters.list@.
module Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.List
  ( -- * Resource
    AccessContextManagerAccessPoliciesServicePerimetersListResource,

    -- ** Constructing a Request
    AccessContextManagerAccessPoliciesServicePerimetersList (..),
    newAccessContextManagerAccessPoliciesServicePerimetersList,
  )
where

import Gogol.AccessContextManager.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @accesscontextmanager.accessPolicies.servicePerimeters.list@ method which the
-- 'AccessContextManagerAccessPoliciesServicePerimetersList' request conforms to.
type AccessContextManagerAccessPoliciesServicePerimetersListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "servicePerimeters"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListServicePerimetersResponse

-- | Lists all service perimeters for an access policy.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesServicePerimetersList' smart constructor.
data AccessContextManagerAccessPoliciesServicePerimetersList = AccessContextManagerAccessPoliciesServicePerimetersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Number of Service Perimeters to include in the list. Default 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Next page token for the next batch of Service Perimeter instances. Defaults to the first page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the access policy to list Service Perimeters from. Format: @accessPolicies\/{policy_id}@
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesServicePerimetersList' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesServicePerimetersList ::
  -- |  Required. Resource name for the access policy to list Service Perimeters from. Format: @accessPolicies\/{policy_id}@ See 'parent'.
  Core.Text ->
  AccessContextManagerAccessPoliciesServicePerimetersList
newAccessContextManagerAccessPoliciesServicePerimetersList parent =
  AccessContextManagerAccessPoliciesServicePerimetersList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AccessContextManagerAccessPoliciesServicePerimetersList
  where
  type
    Rs AccessContextManagerAccessPoliciesServicePerimetersList =
      ListServicePerimetersResponse
  type
    Scopes AccessContextManagerAccessPoliciesServicePerimetersList =
      '[CloudPlatform'FullControl]
  requestClient
    AccessContextManagerAccessPoliciesServicePerimetersList {..} =
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
        accessContextManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AccessContextManagerAccessPoliciesServicePerimetersListResource
            )
            Core.mempty
