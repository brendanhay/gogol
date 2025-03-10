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
-- Module      : Gogol.CloudIdentity.Groups.Memberships.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a @Membership@.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.create@.
module Gogol.CloudIdentity.Groups.Memberships.Create
  ( -- * Resource
    CloudIdentityGroupsMembershipsCreateResource,

    -- ** Constructing a Request
    CloudIdentityGroupsMembershipsCreate (..),
    newCloudIdentityGroupsMembershipsCreate,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.groups.memberships.create@ method which the
-- 'CloudIdentityGroupsMembershipsCreate' request conforms to.
type CloudIdentityGroupsMembershipsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "memberships"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Membership
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a @Membership@.
--
-- /See:/ 'newCloudIdentityGroupsMembershipsCreate' smart constructor.
data CloudIdentityGroupsMembershipsCreate = CloudIdentityGroupsMembershipsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent @Group@ resource under which to create the @Membership@. Must be of the form @groups\/{group}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Membership,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsMembershipsCreate' with the minimum fields required to make a request.
newCloudIdentityGroupsMembershipsCreate ::
  -- |  Required. The parent @Group@ resource under which to create the @Membership@. Must be of the form @groups\/{group}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Membership ->
  CloudIdentityGroupsMembershipsCreate
newCloudIdentityGroupsMembershipsCreate parent payload =
  CloudIdentityGroupsMembershipsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityGroupsMembershipsCreate where
  type Rs CloudIdentityGroupsMembershipsCreate = Operation
  type
    Scopes CloudIdentityGroupsMembershipsCreate =
      '[CloudIdentity'Groups, CloudPlatform'FullControl]
  requestClient CloudIdentityGroupsMembershipsCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudIdentityService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudIdentityGroupsMembershipsCreateResource
          )
          Core.mempty
