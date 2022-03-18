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
-- Module      : Network.Google.CloudIdentity.Groups.Memberships.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a @Membership@.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.get@.
module Network.Google.CloudIdentity.Groups.Memberships.Get
  ( -- * Resource
    CloudIdentityGroupsMembershipsGetResource,

    -- ** Constructing a Request
    newCloudIdentityGroupsMembershipsGet,
    CloudIdentityGroupsMembershipsGet,
  )
where

import Network.Google.CloudIdentity.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudidentity.groups.memberships.get@ method which the
-- 'CloudIdentityGroupsMembershipsGet' request conforms to.
type CloudIdentityGroupsMembershipsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Membership

-- | Retrieves a @Membership@.
--
-- /See:/ 'newCloudIdentityGroupsMembershipsGet' smart constructor.
data CloudIdentityGroupsMembershipsGet = CloudIdentityGroupsMembershipsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the @Membership@ to retrieve. Must be of the form @groups\/{group}\/memberships\/{membership}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsMembershipsGet' with the minimum fields required to make a request.
newCloudIdentityGroupsMembershipsGet ::
  -- |  Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the @Membership@ to retrieve. Must be of the form @groups\/{group}\/memberships\/{membership}@. See 'name'.
  Core.Text ->
  CloudIdentityGroupsMembershipsGet
newCloudIdentityGroupsMembershipsGet name =
  CloudIdentityGroupsMembershipsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityGroupsMembershipsGet
  where
  type
    Rs CloudIdentityGroupsMembershipsGet =
      Membership
  type
    Scopes CloudIdentityGroupsMembershipsGet =
      '[ "https://www.googleapis.com/auth/cloud-identity.groups",
         "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient CloudIdentityGroupsMembershipsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudIdentityService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudIdentityGroupsMembershipsGetResource
          )
          Core.mempty
