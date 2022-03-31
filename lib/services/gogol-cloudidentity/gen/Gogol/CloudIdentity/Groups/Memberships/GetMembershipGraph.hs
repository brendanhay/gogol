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
-- Module      : Gogol.CloudIdentity.Groups.Memberships.GetMembershipGraph
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a membership graph of just a member or both a member and a group. __Note:__ This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the member is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. Given a member, the response will contain all membership paths from the member. Given both a group and a member, the response will contain all membership paths between the group and the member.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.getMembershipGraph@.
module Gogol.CloudIdentity.Groups.Memberships.GetMembershipGraph
  ( -- * Resource
    CloudIdentityGroupsMembershipsGetMembershipGraphResource,

    -- ** Constructing a Request
    newCloudIdentityGroupsMembershipsGetMembershipGraph,
    CloudIdentityGroupsMembershipsGetMembershipGraph,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.groups.memberships.getMembershipGraph@ method which the
-- 'CloudIdentityGroupsMembershipsGetMembershipGraph' request conforms to.
type CloudIdentityGroupsMembershipsGetMembershipGraphResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "memberships:getMembershipGraph"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Operation

-- | Get a membership graph of just a member or both a member and a group. __Note:__ This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the member is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. Given a member, the response will contain all membership paths from the member. Given both a group and a member, the response will contain all membership paths between the group and the member.
--
-- /See:/ 'newCloudIdentityGroupsMembershipsGetMembershipGraph' smart constructor.
data CloudIdentityGroupsMembershipsGetMembershipGraph = CloudIdentityGroupsMembershipsGetMembershipGraph
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the group to search transitive memberships in. Format: @groups\/{group}@, where @group@ is the unique ID assigned to the Group to which the Membership belongs to. group can be a wildcard collection id \"-\". When a group is specified, the membership graph will be constrained to paths between the member (defined in the query) and the parent. If a wildcard collection is provided, all membership paths connected to the member will be returned.
    parent :: Core.Text,
    -- | Required. A CEL expression that MUST include member specification AND label(s). Certain groups are uniquely identified by both a \'member/key/id\' and a \'member/key/namespace\', which requires an additional query input: \'member/key/namespace\'. Example query: @member_key_id == \'member_key_id_value\' && in labels@
    query :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsMembershipsGetMembershipGraph' with the minimum fields required to make a request.
newCloudIdentityGroupsMembershipsGetMembershipGraph ::
  -- |  Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the group to search transitive memberships in. Format: @groups\/{group}@, where @group@ is the unique ID assigned to the Group to which the Membership belongs to. group can be a wildcard collection id \"-\". When a group is specified, the membership graph will be constrained to paths between the member (defined in the query) and the parent. If a wildcard collection is provided, all membership paths connected to the member will be returned. See 'parent'.
  Core.Text ->
  CloudIdentityGroupsMembershipsGetMembershipGraph
newCloudIdentityGroupsMembershipsGetMembershipGraph parent =
  CloudIdentityGroupsMembershipsGetMembershipGraph
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      query = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityGroupsMembershipsGetMembershipGraph
  where
  type
    Rs
      CloudIdentityGroupsMembershipsGetMembershipGraph =
      Operation
  type
    Scopes
      CloudIdentityGroupsMembershipsGetMembershipGraph =
      '[ CloudIdentity'Groups,
         CloudIdentity'Groups'Readonly,
         CloudPlatform'FullControl
       ]
  requestClient
    CloudIdentityGroupsMembershipsGetMembershipGraph {..} =
      go
        parent
        xgafv
        accessToken
        callback
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
                  CloudIdentityGroupsMembershipsGetMembershipGraphResource
            )
            Core.mempty
