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
-- Module      : Gogol.AccessContextManager.AccessPolicies.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all access policies in an organization.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.list@.
module Gogol.AccessContextManager.AccessPolicies.List
  ( -- * Resource
    AccessContextManagerAccessPoliciesListResource,

    -- ** Constructing a Request
    newAccessContextManagerAccessPoliciesList,
    AccessContextManagerAccessPoliciesList,
  )
where

import Gogol.AccessContextManager.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @accesscontextmanager.accessPolicies.list@ method which the
-- 'AccessContextManagerAccessPoliciesList' request conforms to.
type AccessContextManagerAccessPoliciesListResource =
  "v1"
    Core.:> "accessPolicies"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAccessPoliciesResponse

-- | Lists all access policies in an organization.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesList' smart constructor.
data AccessContextManagerAccessPoliciesList = AccessContextManagerAccessPoliciesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Number of AccessPolicy instances to include in the list. Default 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Next page token for the next batch of AccessPolicy instances. Defaults to the first page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the container to list AccessPolicy instances from. Format: @organizations\/{org_id}@
    parent :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesList' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesList ::
  AccessContextManagerAccessPoliciesList
newAccessContextManagerAccessPoliciesList =
  AccessContextManagerAccessPoliciesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AccessContextManagerAccessPoliciesList
  where
  type
    Rs AccessContextManagerAccessPoliciesList =
      ListAccessPoliciesResponse
  type
    Scopes AccessContextManagerAccessPoliciesList =
      '[CloudPlatform'FullControl]
  requestClient
    AccessContextManagerAccessPoliciesList {..} =
      go
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        parent
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        accessContextManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AccessContextManagerAccessPoliciesListResource
            )
            Core.mempty
