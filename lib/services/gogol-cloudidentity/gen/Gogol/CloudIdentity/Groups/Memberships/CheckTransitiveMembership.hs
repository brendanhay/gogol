{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudIdentity.Groups.Memberships.CheckTransitiveMembership
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Check a potential member for membership in a group. __Note:__ This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the member is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A member has membership to a group as long as there is a single viewable transitive membership between the group and the member. The actor must have view permissions to at least one transitive membership between the member and group.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.checkTransitiveMembership@.
module Gogol.CloudIdentity.Groups.Memberships.CheckTransitiveMembership
    (
    -- * Resource
      CloudIdentityGroupsMembershipsCheckTransitiveMembershipResource

    -- ** Constructing a Request
    , CloudIdentityGroupsMembershipsCheckTransitiveMembership (..)
    , newCloudIdentityGroupsMembershipsCheckTransitiveMembership
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.groups.memberships.checkTransitiveMembership@ method which the
-- 'CloudIdentityGroupsMembershipsCheckTransitiveMembership' request conforms to.
type CloudIdentityGroupsMembershipsCheckTransitiveMembershipResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "memberships:checkTransitiveMembership" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "query" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON]
                           CheckTransitiveMembershipResponse

-- | Check a potential member for membership in a group. __Note:__ This feature is only available to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium accounts. If the account of the member is not one of these, a 403 (PERMISSION_DENIED) HTTP status code will be returned. A member has membership to a group as long as there is a single viewable transitive membership between the group and the member. The actor must have view permissions to at least one transitive membership between the member and group.
--
-- /See:/ 'newCloudIdentityGroupsMembershipsCheckTransitiveMembership' smart constructor.
data CloudIdentityGroupsMembershipsCheckTransitiveMembership = CloudIdentityGroupsMembershipsCheckTransitiveMembership
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | <https://cloud.google.com/apis/design/resource_names Resource name> of the group to check the transitive membership in. Format: @groups\/{group}@, where @group@ is the unique id assigned to the Group to which the Membership belongs to.
    , parent :: Core.Text
      -- | Required. A CEL expression that MUST include member specification. This is a @required@ field. Certain groups are uniquely identified by both a \'member/key/id\' and a \'member/key/namespace\', which requires an additional query input: \'member/key/namespace\'. Example query: @member_key_id == \'member_key_id_value\'@
    , query :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsMembershipsCheckTransitiveMembership' with the minimum fields required to make a request.
newCloudIdentityGroupsMembershipsCheckTransitiveMembership 
    ::  Core.Text
       -- ^  <https://cloud.google.com/apis/design/resource_names Resource name> of the group to check the transitive membership in. Format: @groups\/{group}@, where @group@ is the unique id assigned to the Group to which the Membership belongs to. See 'parent'.
    -> CloudIdentityGroupsMembershipsCheckTransitiveMembership
newCloudIdentityGroupsMembershipsCheckTransitiveMembership parent =
  CloudIdentityGroupsMembershipsCheckTransitiveMembership
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , query = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudIdentityGroupsMembershipsCheckTransitiveMembership
         where
        type Rs
               CloudIdentityGroupsMembershipsCheckTransitiveMembership
             = CheckTransitiveMembershipResponse
        type Scopes
               CloudIdentityGroupsMembershipsCheckTransitiveMembership
             =
             '[CloudIdentity'Groups,
               CloudIdentity'Groups'Readonly,
               CloudPlatform'FullControl]
        requestClient
          CloudIdentityGroupsMembershipsCheckTransitiveMembership{..}
          = go parent xgafv accessToken callback query
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudIdentityGroupsMembershipsCheckTransitiveMembershipResource)
                      Core.mempty

