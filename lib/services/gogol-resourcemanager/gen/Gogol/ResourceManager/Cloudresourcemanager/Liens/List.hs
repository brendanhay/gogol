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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Liens.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all Liens applied to the @parent@ resource. Callers of this method will require permission on the @parent@ resource. For example, a Lien with a @parent@ of @projects\/1234@ requires permission @resourcemanager.projects.get@.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.liens.list@.
module Gogol.ResourceManager.Cloudresourcemanager.Liens.List
  ( -- * Resource
    CloudresourcemanagerLiensListResource,

    -- ** Constructing a Request
    CloudresourcemanagerLiensList (..),
    newCloudresourcemanagerLiensList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.liens.list@ method which the
-- 'CloudresourcemanagerLiensList' request conforms to.
type CloudresourcemanagerLiensListResource =
  "v3"
    Core.:> "liens"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListLiensResponse

-- | List all Liens applied to the @parent@ resource. Callers of this method will require permission on the @parent@ resource. For example, a Lien with a @parent@ of @projects\/1234@ requires permission @resourcemanager.projects.get@.
--
-- /See:/ 'newCloudresourcemanagerLiensList' smart constructor.
data CloudresourcemanagerLiensList = CloudresourcemanagerLiensList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of items to return. This is a suggestion for the server. The server can return fewer liens than requested. If unspecified, server picks an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The @next_page_token@ value returned from a previous List request, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the resource to list all attached Liens. For example, @projects\/1234@. (google.api.field/policy).resource/type annotation is not set since the parent depends on the meta api implementation. This field could be a project or other sub project resources.
    parent :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerLiensList' with the minimum fields required to make a request.
newCloudresourcemanagerLiensList ::
  CloudresourcemanagerLiensList
newCloudresourcemanagerLiensList =
  CloudresourcemanagerLiensList
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
    CloudresourcemanagerLiensList
  where
  type
    Rs CloudresourcemanagerLiensList =
      ListLiensResponse
  type
    Scopes CloudresourcemanagerLiensList =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient CloudresourcemanagerLiensList {..} =
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
      resourceManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudresourcemanagerLiensListResource
          )
          Core.mempty
