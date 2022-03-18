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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.TagBindings.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the TagBindings for the given cloud resource, as specified with @parent@. NOTE: The @parent@ field is expected to be a full resource name: https:\/\/cloud.google.com\/apis\/design\/resource/names#full/resource_name
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagBindings.list@.
module Gogol.ResourceManager.Cloudresourcemanager.TagBindings.List
  ( -- * Resource
    CloudresourcemanagerTagBindingsListResource,

    -- ** Constructing a Request
    newCloudresourcemanagerTagBindingsList,
    CloudresourcemanagerTagBindingsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagBindings.list@ method which the
-- 'CloudresourcemanagerTagBindingsList' request conforms to.
type CloudresourcemanagerTagBindingsListResource =
  "v3"
    Core.:> "tagBindings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListTagBindingsResponse

-- | Lists the TagBindings for the given cloud resource, as specified with @parent@. NOTE: The @parent@ field is expected to be a full resource name: https:\/\/cloud.google.com\/apis\/design\/resource/names#full/resource_name
--
-- /See:/ 'newCloudresourcemanagerTagBindingsList' smart constructor.
data CloudresourcemanagerTagBindingsList = CloudresourcemanagerTagBindingsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of TagBindings to return in the response. The server allows a maximum of 300 TagBindings to return. If unspecified, the server will use 100 as the default. Currently this api returns unpaginated response and @page_size@ is ignored.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A pagination token returned from a previous call to @ListTagBindings@ that indicates where this listing should continue from. Currently this api returns unpaginated response and @page_token@ is ignored.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The full resource name of a resource for which you want to list existing TagBindings. E.g. \"\/\/cloudresourcemanager.googleapis.com\/projects\/123\"
    parent :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerTagBindingsList' with the minimum fields required to make a request.
newCloudresourcemanagerTagBindingsList ::
  CloudresourcemanagerTagBindingsList
newCloudresourcemanagerTagBindingsList =
  CloudresourcemanagerTagBindingsList
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
    CloudresourcemanagerTagBindingsList
  where
  type
    Rs CloudresourcemanagerTagBindingsList =
      ListTagBindingsResponse
  type
    Scopes CloudresourcemanagerTagBindingsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient CloudresourcemanagerTagBindingsList {..} =
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
              Core.Proxy
                CloudresourcemanagerTagBindingsListResource
          )
          Core.mempty
