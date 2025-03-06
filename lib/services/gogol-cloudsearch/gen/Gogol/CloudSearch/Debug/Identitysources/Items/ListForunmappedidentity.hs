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
-- Module      : Gogol.CloudSearch.Debug.Identitysources.Items.ListForunmappedidentity
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists names of items associated with an unmapped identity. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.debug.identitysources.items.listForunmappedidentity@.
module Gogol.CloudSearch.Debug.Identitysources.Items.ListForunmappedidentity
  ( -- * Resource
    CloudSearchDebugIdentitysourcesItemsListForunmappedidentityResource,

    -- ** Constructing a Request
    CloudSearchDebugIdentitysourcesItemsListForunmappedidentity (..),
    newCloudSearchDebugIdentitysourcesItemsListForunmappedidentity,
  )
where

import Gogol.CloudSearch.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudsearch.debug.identitysources.items.listForunmappedidentity@ method which the
-- 'CloudSearchDebugIdentitysourcesItemsListForunmappedidentity' request conforms to.
type CloudSearchDebugIdentitysourcesItemsListForunmappedidentityResource =
  "v1"
    Core.:> "debug"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "items:forunmappedidentity"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "debugOptions.enableDebugging" Core.Bool
    Core.:> Core.QueryParam "groupResourceName" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "userResourceName" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListItemNamesForUnmappedIdentityResponse

-- | Lists names of items associated with an unmapped identity. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchDebugIdentitysourcesItemsListForunmappedidentity' smart constructor.
data CloudSearchDebugIdentitysourcesItemsListForunmappedidentity = CloudSearchDebugIdentitysourcesItemsListForunmappedidentity
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.
    debugOptionsEnableDebugging :: (Core.Maybe Core.Bool),
    groupResourceName :: (Core.Maybe Core.Text),
    -- | Maximum number of items to fetch in a request. Defaults to 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous List request, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | The name of the identity source, in the following format: identitysources\/{source_id}}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    userResourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchDebugIdentitysourcesItemsListForunmappedidentity' with the minimum fields required to make a request.
newCloudSearchDebugIdentitysourcesItemsListForunmappedidentity ::
  -- |  The name of the identity source, in the following format: identitysources\/{source_id}} See 'parent'.
  Core.Text ->
  CloudSearchDebugIdentitysourcesItemsListForunmappedidentity
newCloudSearchDebugIdentitysourcesItemsListForunmappedidentity
  parent =
    CloudSearchDebugIdentitysourcesItemsListForunmappedidentity
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        debugOptionsEnableDebugging =
          Core.Nothing,
        groupResourceName = Core.Nothing,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        parent = parent,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        userResourceName = Core.Nothing
      }

instance
  Core.GoogleRequest
    CloudSearchDebugIdentitysourcesItemsListForunmappedidentity
  where
  type
    Rs CloudSearchDebugIdentitysourcesItemsListForunmappedidentity =
      ListItemNamesForUnmappedIdentityResponse
  type
    Scopes
      CloudSearchDebugIdentitysourcesItemsListForunmappedidentity =
      '[CloudSearch'FullControl, CloudSearch'Debug]
  requestClient
    CloudSearchDebugIdentitysourcesItemsListForunmappedidentity {..} =
      go
        parent
        xgafv
        accessToken
        callback
        debugOptionsEnableDebugging
        groupResourceName
        pageSize
        pageToken
        uploadType
        uploadProtocol
        userResourceName
        (Core.Just Core.AltJSON)
        cloudSearchService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudSearchDebugIdentitysourcesItemsListForunmappedidentityResource
            )
            Core.mempty
