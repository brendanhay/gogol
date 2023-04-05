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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.EffectiveTags.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a list of effective tags for the given Google Cloud resource, as specified in @parent@.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.effectiveTags.list@.
module Gogol.ResourceManager.Cloudresourcemanager.EffectiveTags.List
  ( -- * Resource
    CloudresourcemanagerEffectiveTagsListResource,

    -- ** Constructing a Request
    CloudresourcemanagerEffectiveTagsList (..),
    newCloudresourcemanagerEffectiveTagsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.effectiveTags.list@ method which the
-- 'CloudresourcemanagerEffectiveTagsList' request conforms to.
type CloudresourcemanagerEffectiveTagsListResource =
  "v3"
    Core.:> "effectiveTags"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListEffectiveTagsResponse

-- | Return a list of effective tags for the given Google Cloud resource, as specified in @parent@.
--
-- /See:/ 'newCloudresourcemanagerEffectiveTagsList' smart constructor.
data CloudresourcemanagerEffectiveTagsList = CloudresourcemanagerEffectiveTagsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of effective tags to return in the response. The server allows a maximum of 300 effective tags to return in a single page. If unspecified, the server will use 100 as the default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A pagination token returned from a previous call to @ListEffectiveTags@ that indicates from where this listing should continue.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The full resource name of a resource for which you want to list the effective tags. E.g. \"\/\/cloudresourcemanager.googleapis.com\/projects\/123\"
    parent :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerEffectiveTagsList' with the minimum fields required to make a request.
newCloudresourcemanagerEffectiveTagsList ::
  CloudresourcemanagerEffectiveTagsList
newCloudresourcemanagerEffectiveTagsList =
  CloudresourcemanagerEffectiveTagsList
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
    CloudresourcemanagerEffectiveTagsList
  where
  type
    Rs CloudresourcemanagerEffectiveTagsList =
      ListEffectiveTagsResponse
  type
    Scopes CloudresourcemanagerEffectiveTagsList =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient
    CloudresourcemanagerEffectiveTagsList {..} =
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
                  CloudresourcemanagerEffectiveTagsListResource
            )
            Core.mempty
