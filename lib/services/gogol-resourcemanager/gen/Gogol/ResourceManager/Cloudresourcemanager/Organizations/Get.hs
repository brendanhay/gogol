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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Organizations.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches an organization resource identified by the specified resource name.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.organizations.get@.
module Gogol.ResourceManager.Cloudresourcemanager.Organizations.Get
  ( -- * Resource
    CloudresourcemanagerOrganizationsGetResource,

    -- ** Constructing a Request
    CloudresourcemanagerOrganizationsGet (..),
    newCloudresourcemanagerOrganizationsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.organizations.get@ method which the
-- 'CloudresourcemanagerOrganizationsGet' request conforms to.
type CloudresourcemanagerOrganizationsGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Organization

-- | Fetches an organization resource identified by the specified resource name.
--
-- /See:/ 'newCloudresourcemanagerOrganizationsGet' smart constructor.
data CloudresourcemanagerOrganizationsGet = CloudresourcemanagerOrganizationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Organization to fetch. This is the organization\'s relative path in the API, formatted as \"organizations\/[organizationId]\". For example, \"organizations\/1234\".
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerOrganizationsGet' with the minimum fields required to make a request.
newCloudresourcemanagerOrganizationsGet ::
  -- |  Required. The resource name of the Organization to fetch. This is the organization\'s relative path in the API, formatted as \"organizations\/[organizationId]\". For example, \"organizations\/1234\". See 'name'.
  Core.Text ->
  CloudresourcemanagerOrganizationsGet
newCloudresourcemanagerOrganizationsGet name =
  CloudresourcemanagerOrganizationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerOrganizationsGet
  where
  type
    Rs CloudresourcemanagerOrganizationsGet =
      Organization
  type
    Scopes CloudresourcemanagerOrganizationsGet =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient
    CloudresourcemanagerOrganizationsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        resourceManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudresourcemanagerOrganizationsGetResource
            )
            Core.mempty
