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
-- Module      : Gogol.CloudIdentity.Groups.Memberships.ModifyMembershipRoles
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the @MembershipRole@s of a @Membership@.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.modifyMembershipRoles@.
module Gogol.CloudIdentity.Groups.Memberships.ModifyMembershipRoles
    (
    -- * Resource
      CloudIdentityGroupsMembershipsModifyMembershipRolesResource

    -- ** Constructing a Request
    , newCloudIdentityGroupsMembershipsModifyMembershipRoles
    , CloudIdentityGroupsMembershipsModifyMembershipRoles
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.groups.memberships.modifyMembershipRoles@ method which the
-- 'CloudIdentityGroupsMembershipsModifyMembershipRoles' request conforms to.
type CloudIdentityGroupsMembershipsModifyMembershipRolesResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "modifyMembershipRoles"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       ModifyMembershipRolesRequest
                       Core.:>
                       Core.Post '[Core.JSON] ModifyMembershipRolesResponse

-- | Modifies the @MembershipRole@s of a @Membership@.
--
-- /See:/ 'newCloudIdentityGroupsMembershipsModifyMembershipRoles' smart constructor.
data CloudIdentityGroupsMembershipsModifyMembershipRoles = CloudIdentityGroupsMembershipsModifyMembershipRoles
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the @Membership@ whose roles are to be modified. Must be of the form @groups\/{group}\/memberships\/{membership}@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: ModifyMembershipRolesRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsMembershipsModifyMembershipRoles' with the minimum fields required to make a request.
newCloudIdentityGroupsMembershipsModifyMembershipRoles 
    ::  Core.Text
       -- ^  Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the @Membership@ whose roles are to be modified. Must be of the form @groups\/{group}\/memberships\/{membership}@. See 'name'.
    -> ModifyMembershipRolesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudIdentityGroupsMembershipsModifyMembershipRoles
newCloudIdentityGroupsMembershipsModifyMembershipRoles name payload =
  CloudIdentityGroupsMembershipsModifyMembershipRoles
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudIdentityGroupsMembershipsModifyMembershipRoles
         where
        type Rs
               CloudIdentityGroupsMembershipsModifyMembershipRoles
             = ModifyMembershipRolesResponse
        type Scopes
               CloudIdentityGroupsMembershipsModifyMembershipRoles
             =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          CloudIdentityGroupsMembershipsModifyMembershipRoles{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudIdentityGroupsMembershipsModifyMembershipRolesResource)
                      Core.mempty

