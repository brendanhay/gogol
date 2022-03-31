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
-- Module      : Gogol.AccessContextManager.AccessPolicies.AccessLevels.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all access levels for an access policy.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.accessLevels.list@.
module Gogol.AccessContextManager.AccessPolicies.AccessLevels.List
  ( -- * Resource
    AccessContextManagerAccessPoliciesAccessLevelsListResource,

    -- ** Constructing a Request
    newAccessContextManagerAccessPoliciesAccessLevelsList,
    AccessContextManagerAccessPoliciesAccessLevelsList,
  )
where

import Gogol.AccessContextManager.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @accesscontextmanager.accessPolicies.accessLevels.list@ method which the
-- 'AccessContextManagerAccessPoliciesAccessLevelsList' request conforms to.
type AccessContextManagerAccessPoliciesAccessLevelsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "accessLevels"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam
              "accessLevelFormat"
              AccessPoliciesAccessLevelsListAccessLevelFormat
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAccessLevelsResponse

-- | Lists all access levels for an access policy.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesAccessLevelsList' smart constructor.
data AccessContextManagerAccessPoliciesAccessLevelsList = AccessContextManagerAccessPoliciesAccessLevelsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | Whether to return @BasicLevels@ in the Cloud Common Expression language, as @CustomLevels@, rather than as @BasicLevels@. Defaults to returning @AccessLevels@ in the format they were defined.
    accessLevelFormat :: (Core.Maybe AccessPoliciesAccessLevelsListAccessLevelFormat),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Number of Access Levels to include in the list. Default 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Next page token for the next batch of Access Level instances. Defaults to the first page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the access policy to list Access Levels from. Format: @accessPolicies\/{policy_id}@
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesAccessLevelsList' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesAccessLevelsList ::
  -- |  Required. Resource name for the access policy to list Access Levels from. Format: @accessPolicies\/{policy_id}@ See 'parent'.
  Core.Text ->
  AccessContextManagerAccessPoliciesAccessLevelsList
newAccessContextManagerAccessPoliciesAccessLevelsList parent =
  AccessContextManagerAccessPoliciesAccessLevelsList
    { xgafv = Core.Nothing,
      accessLevelFormat = Core.Nothing,
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
    AccessContextManagerAccessPoliciesAccessLevelsList
  where
  type
    Rs
      AccessContextManagerAccessPoliciesAccessLevelsList =
      ListAccessLevelsResponse
  type
    Scopes
      AccessContextManagerAccessPoliciesAccessLevelsList =
      '[CloudPlatform'FullControl]
  requestClient
    AccessContextManagerAccessPoliciesAccessLevelsList {..} =
      go
        parent
        xgafv
        accessLevelFormat
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
                  AccessContextManagerAccessPoliciesAccessLevelsListResource
            )
            Core.mempty
