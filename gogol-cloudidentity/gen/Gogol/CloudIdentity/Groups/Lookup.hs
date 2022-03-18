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
-- Module      : Gogol.CloudIdentity.Groups.Lookup
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up the <https://cloud.google.com/apis/design/resource_names resource name> of a @Group@ by its @EntityKey@.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.lookup@.
module Gogol.CloudIdentity.Groups.Lookup
  ( -- * Resource
    CloudIdentityGroupsLookupResource,

    -- ** Constructing a Request
    newCloudIdentityGroupsLookup,
    CloudIdentityGroupsLookup,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.groups.lookup@ method which the
-- 'CloudIdentityGroupsLookup' request conforms to.
type CloudIdentityGroupsLookupResource =
  "v1"
    Core.:> "groups:lookup"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "groupKey.id" Core.Text
    Core.:> Core.QueryParam "groupKey.namespace" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] LookupGroupNameResponse

-- | Looks up the <https://cloud.google.com/apis/design/resource_names resource name> of a @Group@ by its @EntityKey@.
--
-- /See:/ 'newCloudIdentityGroupsLookup' smart constructor.
data CloudIdentityGroupsLookup = CloudIdentityGroupsLookup
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the entity. For Google-managed entities, the @id@ should be the email address of an existing group or user. For external-identity-mapped entities, the @id@ must be a string conforming to the Identity Source\'s requirements. Must be unique within a @namespace@.
    groupKeyId :: (Core.Maybe Core.Text),
    -- | The namespace in which the entity exists. If not specified, the @EntityKey@ represents a Google-managed entity such as a Google user or a Google Group. If specified, the @EntityKey@ represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of @identitysources\/{identity_source}@.
    groupKeyNamespace :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsLookup' with the minimum fields required to make a request.
newCloudIdentityGroupsLookup ::
  CloudIdentityGroupsLookup
newCloudIdentityGroupsLookup =
  CloudIdentityGroupsLookup
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      groupKeyId = Core.Nothing,
      groupKeyNamespace = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityGroupsLookup where
  type
    Rs CloudIdentityGroupsLookup =
      LookupGroupNameResponse
  type
    Scopes CloudIdentityGroupsLookup =
      '[ "https://www.googleapis.com/auth/cloud-identity.groups",
         "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient CloudIdentityGroupsLookup {..} =
    go
      xgafv
      accessToken
      callback
      groupKeyId
      groupKeyNamespace
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudIdentityService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudIdentityGroupsLookupResource
          )
          Core.mempty
