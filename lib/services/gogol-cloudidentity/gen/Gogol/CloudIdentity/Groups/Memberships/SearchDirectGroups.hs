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
-- Module      : Gogol.CloudIdentity.Groups.Memberships.SearchDirectGroups
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches direct groups of a member.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.searchDirectGroups@.
module Gogol.CloudIdentity.Groups.Memberships.SearchDirectGroups
  ( -- * Resource
    CloudIdentityGroupsMembershipsSearchDirectGroupsResource,

    -- ** Constructing a Request
    CloudIdentityGroupsMembershipsSearchDirectGroups (..),
    newCloudIdentityGroupsMembershipsSearchDirectGroups,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.groups.memberships.searchDirectGroups@ method which the
-- 'CloudIdentityGroupsMembershipsSearchDirectGroups' request conforms to.
type CloudIdentityGroupsMembershipsSearchDirectGroupsResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "memberships:searchDirectGroups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SearchDirectGroupsResponse

-- | Searches direct groups of a member.
--
-- /See:/ 'newCloudIdentityGroupsMembershipsSearchDirectGroups' smart constructor.
data CloudIdentityGroupsMembershipsSearchDirectGroups = CloudIdentityGroupsMembershipsSearchDirectGroups
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ordering of membership relation for the display name or email in the response. The syntax for this field can be found at https:\/\/cloud.google.com\/apis\/design\/design/patterns#sorting/order. Example: Sort by the ascending display name: order/by=\"group/name\" or order/by=\"group/name asc\". Sort by the descending display name: order/by=\"group/name desc\". Sort by the ascending group key: order/by=\"group/key\" or order/by=\"group/key asc\". Sort by the descending group key: order/by=\"group/key desc\".
    orderBy :: (Core.Maybe Core.Text),
    -- | The default page size is 200 (max 1000).
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous list request, if any
    pageToken :: (Core.Maybe Core.Text),
    -- | <https://cloud.google.com/apis/design/resource_names Resource name> of the group to search transitive memberships in. Format: groups\/{group/id}, where group/id is always \'-\' as this API will search across all groups for a given member.
    parent :: Core.Text,
    -- | Required. A CEL expression that MUST include member specification AND label(s). Users can search on label attributes of groups. CONTAINS match (\'in\') is supported on labels. Identity-mapped groups are uniquely identified by both a @member_key_id@ and a @member_key_namespace@, which requires an additional query input: @member_key_namespace@. Example query: @member_key_id == \'member_key_id_value\' && \'label_value\' in labels@
    query :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsMembershipsSearchDirectGroups' with the minimum fields required to make a request.
newCloudIdentityGroupsMembershipsSearchDirectGroups ::
  -- |  <https://cloud.google.com/apis/design/resource_names Resource name> of the group to search transitive memberships in. Format: groups\/{group/id}, where group/id is always \'-\' as this API will search across all groups for a given member. See 'parent'.
  Core.Text ->
  CloudIdentityGroupsMembershipsSearchDirectGroups
newCloudIdentityGroupsMembershipsSearchDirectGroups parent =
  CloudIdentityGroupsMembershipsSearchDirectGroups
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      query = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityGroupsMembershipsSearchDirectGroups
  where
  type
    Rs
      CloudIdentityGroupsMembershipsSearchDirectGroups =
      SearchDirectGroupsResponse
  type
    Scopes
      CloudIdentityGroupsMembershipsSearchDirectGroups =
      '[]
  requestClient
    CloudIdentityGroupsMembershipsSearchDirectGroups {..} =
      go
        parent
        xgafv
        accessToken
        callback
        orderBy
        pageSize
        pageToken
        query
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudIdentityService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudIdentityGroupsMembershipsSearchDirectGroupsResource
            )
            Core.mempty
