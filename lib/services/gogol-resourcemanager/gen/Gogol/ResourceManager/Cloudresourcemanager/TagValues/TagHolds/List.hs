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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.TagValues.TagHolds.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists TagHolds under a TagValue.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagValues.tagHolds.list@.
module Gogol.ResourceManager.Cloudresourcemanager.TagValues.TagHolds.List
  ( -- * Resource
    CloudresourcemanagerTagValuesTagHoldsListResource,

    -- ** Constructing a Request
    CloudresourcemanagerTagValuesTagHoldsList (..),
    newCloudresourcemanagerTagValuesTagHoldsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagValues.tagHolds.list@ method which the
-- 'CloudresourcemanagerTagValuesTagHoldsList' request conforms to.
type CloudresourcemanagerTagValuesTagHoldsListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "tagHolds"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListTagHoldsResponse

-- | Lists TagHolds under a TagValue.
--
-- /See:/ 'newCloudresourcemanagerTagValuesTagHoldsList' smart constructor.
data CloudresourcemanagerTagValuesTagHoldsList = CloudresourcemanagerTagValuesTagHoldsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Criteria used to select a subset of TagHolds parented by the TagValue to return. This field follows the syntax defined by aip.dev\/160; the @holder@ and @origin@ fields are supported for filtering. Currently only @AND@ syntax is supported. Some example queries are: * @holder = \/\/compute.googleapis.com\/compute\/projects\/myproject\/regions\/us-east-1\/instanceGroupManagers\/instance-group@ * @origin = 35678234@ * @holder = \/\/compute.googleapis.com\/compute\/projects\/myproject\/regions\/us-east-1\/instanceGroupManagers\/instance-group AND origin = 35678234@
    filter :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of TagHolds to return in the response. The server allows a maximum of 300 TagHolds to return. If unspecified, the server will use 100 as the default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A pagination token returned from a previous call to @ListTagHolds@ that indicates where this listing should continue from.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the parent TagValue. Must be of the form: @tagValues\/{tag-value-id}@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerTagValuesTagHoldsList' with the minimum fields required to make a request.
newCloudresourcemanagerTagValuesTagHoldsList ::
  -- |  Required. The resource name of the parent TagValue. Must be of the form: @tagValues\/{tag-value-id}@. See 'parent'.
  Core.Text ->
  CloudresourcemanagerTagValuesTagHoldsList
newCloudresourcemanagerTagValuesTagHoldsList parent =
  CloudresourcemanagerTagValuesTagHoldsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerTagValuesTagHoldsList
  where
  type
    Rs CloudresourcemanagerTagValuesTagHoldsList =
      ListTagHoldsResponse
  type
    Scopes CloudresourcemanagerTagValuesTagHoldsList =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient
    CloudresourcemanagerTagValuesTagHoldsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        resourceManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudresourcemanagerTagValuesTagHoldsListResource
            )
            Core.mempty
