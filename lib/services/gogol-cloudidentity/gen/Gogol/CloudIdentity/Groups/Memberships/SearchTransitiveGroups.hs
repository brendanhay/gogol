{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudIdentity.Groups.Memberships.SearchTransitiveGroups
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search transitive groups of a member. __Note:__ This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the member is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A transitive group is any group that has a direct or indirect membership to the member. Actor must have view permissions all transitive groups.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.searchTransitiveGroups@.
module Gogol.CloudIdentity.Groups.Memberships.SearchTransitiveGroups
    (
    -- * Resource
      CloudIdentityGroupsMembershipsSearchTransitiveGroupsResource

    -- ** Constructing a Request
    , newCloudIdentityGroupsMembershipsSearchTransitiveGroups
    , CloudIdentityGroupsMembershipsSearchTransitiveGroups
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.groups.memberships.searchTransitiveGroups@ method which the
-- 'CloudIdentityGroupsMembershipsSearchTransitiveGroups' request conforms to.
type CloudIdentityGroupsMembershipsSearchTransitiveGroupsResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "memberships:searchTransitiveGroups" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "query" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               SearchTransitiveGroupsResponse

-- | Search transitive groups of a member. __Note:__ This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the member is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A transitive group is any group that has a direct or indirect membership to the member. Actor must have view permissions all transitive groups.
--
-- /See:/ 'newCloudIdentityGroupsMembershipsSearchTransitiveGroups' smart constructor.
data CloudIdentityGroupsMembershipsSearchTransitiveGroups = CloudIdentityGroupsMembershipsSearchTransitiveGroups
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The default page size is 200 (max 1000).
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The next/page/token value returned from a previous list request, if any.
    , pageToken :: (Core.Maybe Core.Text)
      -- | <https://cloud.google.com/apis/design/resource_names Resource name> of the group to search transitive memberships in. Format: @groups\/{group}@, where @group@ is always \'-\' as this API will search across all groups for a given member.
    , parent :: Core.Text
      -- | Required. A CEL expression that MUST include member specification AND label(s). This is a @required@ field. Users can search on label attributes of groups. CONTAINS match (\'in\') is supported on labels. Identity-mapped groups are uniquely identified by both a @member_key_id@ and a @member_key_namespace@, which requires an additional query input: @member_key_namespace@. Example query: @member_key_id == \'member_key_id_value\' && in labels@
    , query :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsMembershipsSearchTransitiveGroups' with the minimum fields required to make a request.
newCloudIdentityGroupsMembershipsSearchTransitiveGroups 
    ::  Core.Text
       -- ^  <https://cloud.google.com/apis/design/resource_names Resource name> of the group to search transitive memberships in. Format: @groups\/{group}@, where @group@ is always \'-\' as this API will search across all groups for a given member. See 'parent'.
    -> CloudIdentityGroupsMembershipsSearchTransitiveGroups
newCloudIdentityGroupsMembershipsSearchTransitiveGroups parent =
  CloudIdentityGroupsMembershipsSearchTransitiveGroups
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , query = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudIdentityGroupsMembershipsSearchTransitiveGroups
         where
        type Rs
               CloudIdentityGroupsMembershipsSearchTransitiveGroups
             = SearchTransitiveGroupsResponse
        type Scopes
               CloudIdentityGroupsMembershipsSearchTransitiveGroups
             =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          CloudIdentityGroupsMembershipsSearchTransitiveGroups{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              query
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudIdentityGroupsMembershipsSearchTransitiveGroupsResource)
                      Core.mempty

