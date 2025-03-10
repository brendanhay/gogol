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
-- Module      : Gogol.BinaryAuthorization.Projects.Platforms.Policies.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists platform policies owned by a project in the specified platform. Returns @INVALID_ARGUMENT@ if the project or the platform doesn\'t exist.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.platforms.policies.list@.
module Gogol.BinaryAuthorization.Projects.Platforms.Policies.List
  ( -- * Resource
    BinaryAuthorizationProjectsPlatformsPoliciesListResource,

    -- ** Constructing a Request
    BinaryAuthorizationProjectsPlatformsPoliciesList (..),
    newBinaryAuthorizationProjectsPlatformsPoliciesList,
  )
where

import Gogol.BinaryAuthorization.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @binaryauthorization.projects.platforms.policies.list@ method which the
-- 'BinaryAuthorizationProjectsPlatformsPoliciesList' request conforms to.
type BinaryAuthorizationProjectsPlatformsPoliciesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "policies"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListPlatformPoliciesResponse

-- | Lists platform policies owned by a project in the specified platform. Returns @INVALID_ARGUMENT@ if the project or the platform doesn\'t exist.
--
-- /See:/ 'newBinaryAuthorizationProjectsPlatformsPoliciesList' smart constructor.
data BinaryAuthorizationProjectsPlatformsPoliciesList = BinaryAuthorizationProjectsPlatformsPoliciesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Requested page size. The server may return fewer results than requested. If unspecified, the server picks an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results the server should return. Typically, this is the value of ListPlatformPoliciesResponse.next/page/token returned from the previous call to the @ListPlatformPolicies@ method.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the platform associated with the platform policies using the format @projects\/*\/platforms\/*@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorizationProjectsPlatformsPoliciesList' with the minimum fields required to make a request.
newBinaryAuthorizationProjectsPlatformsPoliciesList ::
  -- |  Required. The resource name of the platform associated with the platform policies using the format @projects\/*\/platforms\/*@. See 'parent'.
  Core.Text ->
  BinaryAuthorizationProjectsPlatformsPoliciesList
newBinaryAuthorizationProjectsPlatformsPoliciesList parent =
  BinaryAuthorizationProjectsPlatformsPoliciesList
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
    BinaryAuthorizationProjectsPlatformsPoliciesList
  where
  type
    Rs BinaryAuthorizationProjectsPlatformsPoliciesList =
      ListPlatformPoliciesResponse
  type
    Scopes BinaryAuthorizationProjectsPlatformsPoliciesList =
      '[CloudPlatform'FullControl]
  requestClient BinaryAuthorizationProjectsPlatformsPoliciesList {..} =
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
      binaryAuthorizationService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                BinaryAuthorizationProjectsPlatformsPoliciesListResource
          )
          Core.mempty
