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
-- Module      : Gogol.CloudIdentity.Groups.Memberships.Lookup
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up the <https://cloud.google.com/apis/design/resource_names resource name> of a @Membership@ by its @EntityKey@.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.lookup@.
module Gogol.CloudIdentity.Groups.Memberships.Lookup
    (
    -- * Resource
      CloudIdentityGroupsMembershipsLookupResource

    -- ** Constructing a Request
    , CloudIdentityGroupsMembershipsLookup (..)
    , newCloudIdentityGroupsMembershipsLookup
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.groups.memberships.lookup@ method which the
-- 'CloudIdentityGroupsMembershipsLookup' request conforms to.
type CloudIdentityGroupsMembershipsLookupResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "memberships:lookup" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "memberKey.id" Core.Text Core.:>
                   Core.QueryParam "memberKey.namespace" Core.Text
                     Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] LookupMembershipNameResponse

-- | Looks up the <https://cloud.google.com/apis/design/resource_names resource name> of a @Membership@ by its @EntityKey@.
--
-- /See:/ 'newCloudIdentityGroupsMembershipsLookup' smart constructor.
data CloudIdentityGroupsMembershipsLookup = CloudIdentityGroupsMembershipsLookup
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the entity. For Google-managed entities, the @id@ should be the email address of an existing group or user. Email addresses need to adhere to <https://support.google.com/a/answer/9193374 name guidelines for users and groups>. For external-identity-mapped entities, the @id@ must be a string conforming to the Identity Source\'s requirements. Must be unique within a @namespace@.
    , memberKeyId :: (Core.Maybe Core.Text)
      -- | The namespace in which the entity exists. If not specified, the @EntityKey@ represents a Google-managed entity such as a Google user or a Google Group. If specified, the @EntityKey@ represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of @identitysources\/{identity_source}@.
    , memberKeyNamespace :: (Core.Maybe Core.Text)
      -- | Required. The parent @Group@ resource under which to lookup the @Membership@ name. Must be of the form @groups\/{group}@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsMembershipsLookup' with the minimum fields required to make a request.
newCloudIdentityGroupsMembershipsLookup 
    ::  Core.Text
       -- ^  Required. The parent @Group@ resource under which to lookup the @Membership@ name. Must be of the form @groups\/{group}@. See 'parent'.
    -> CloudIdentityGroupsMembershipsLookup
newCloudIdentityGroupsMembershipsLookup parent =
  CloudIdentityGroupsMembershipsLookup
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , memberKeyId = Core.Nothing
    , memberKeyNamespace = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudIdentityGroupsMembershipsLookup
         where
        type Rs CloudIdentityGroupsMembershipsLookup =
             LookupMembershipNameResponse
        type Scopes CloudIdentityGroupsMembershipsLookup =
             '[CloudIdentity'Groups,
               CloudIdentity'Groups'Readonly,
               CloudPlatform'FullControl]
        requestClient
          CloudIdentityGroupsMembershipsLookup{..}
          = go parent xgafv accessToken callback memberKeyId
              memberKeyNamespace
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudIdentityGroupsMembershipsLookupResource)
                      Core.mempty

