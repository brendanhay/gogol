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
-- Module      : Gogol.CloudIdentity.Groups.Memberships.SearchTransitiveMemberships
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search transitive memberships of a group. __Note:__ This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the group is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A transitive membership is any direct or indirect membership of a group. Actor must have view permissions to all transitive memberships.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.searchTransitiveMemberships@.
module Gogol.CloudIdentity.Groups.Memberships.SearchTransitiveMemberships
  ( -- * Resource
    CloudIdentityGroupsMembershipsSearchTransitiveMembershipsResource,

    -- ** Constructing a Request
    CloudIdentityGroupsMembershipsSearchTransitiveMemberships (..),
    newCloudIdentityGroupsMembershipsSearchTransitiveMemberships,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.groups.memberships.searchTransitiveMemberships@ method which the
-- 'CloudIdentityGroupsMembershipsSearchTransitiveMemberships' request conforms to.
type CloudIdentityGroupsMembershipsSearchTransitiveMembershipsResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "memberships:searchTransitiveMemberships"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SearchTransitiveMembershipsResponse

-- | Search transitive memberships of a group. __Note:__ This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the group is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A transitive membership is any direct or indirect membership of a group. Actor must have view permissions to all transitive memberships.
--
-- /See:/ 'newCloudIdentityGroupsMembershipsSearchTransitiveMemberships' smart constructor.
data CloudIdentityGroupsMembershipsSearchTransitiveMemberships = CloudIdentityGroupsMembershipsSearchTransitiveMemberships
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The default page size is 200 (max 1000).
    pageSize :: (Core.Maybe Core.Int32),
    -- | The @next_page_token@ value returned from a previous list request, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | <https://cloud.google.com/apis/design/resource_names Resource name> of the group to search transitive memberships in. Format: @groups\/{group}@, where @group@ is the unique ID assigned to the Group.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsMembershipsSearchTransitiveMemberships' with the minimum fields required to make a request.
newCloudIdentityGroupsMembershipsSearchTransitiveMemberships ::
  -- |  <https://cloud.google.com/apis/design/resource_names Resource name> of the group to search transitive memberships in. Format: @groups\/{group}@, where @group@ is the unique ID assigned to the Group. See 'parent'.
  Core.Text ->
  CloudIdentityGroupsMembershipsSearchTransitiveMemberships
newCloudIdentityGroupsMembershipsSearchTransitiveMemberships parent =
  CloudIdentityGroupsMembershipsSearchTransitiveMemberships
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
    CloudIdentityGroupsMembershipsSearchTransitiveMemberships
  where
  type
    Rs CloudIdentityGroupsMembershipsSearchTransitiveMemberships =
      SearchTransitiveMembershipsResponse
  type
    Scopes
      CloudIdentityGroupsMembershipsSearchTransitiveMemberships =
      '[ CloudIdentity'Groups,
         CloudIdentity'Groups'Readonly,
         CloudPlatform'FullControl
       ]
  requestClient
    CloudIdentityGroupsMembershipsSearchTransitiveMemberships {..} =
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
        cloudIdentityService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudIdentityGroupsMembershipsSearchTransitiveMembershipsResource
            )
            Core.mempty
