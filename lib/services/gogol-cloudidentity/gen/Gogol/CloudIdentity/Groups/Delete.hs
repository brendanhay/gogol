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
-- Module      : Gogol.CloudIdentity.Groups.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a @Group@.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.delete@.
module Gogol.CloudIdentity.Groups.Delete
  ( -- * Resource
    CloudIdentityGroupsDeleteResource,

    -- ** Constructing a Request
    CloudIdentityGroupsDelete (..),
    newCloudIdentityGroupsDelete,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.groups.delete@ method which the
-- 'CloudIdentityGroupsDelete' request conforms to.
type CloudIdentityGroupsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a @Group@.
--
-- /See:/ 'newCloudIdentityGroupsDelete' smart constructor.
data CloudIdentityGroupsDelete = CloudIdentityGroupsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the @Group@ to retrieve. Must be of the form @groups\/{group}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsDelete' with the minimum fields required to make a request.
newCloudIdentityGroupsDelete ::
  -- |  Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the @Group@ to retrieve. Must be of the form @groups\/{group}@. See 'name'.
  Core.Text ->
  CloudIdentityGroupsDelete
newCloudIdentityGroupsDelete name =
  CloudIdentityGroupsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityGroupsDelete where
  type Rs CloudIdentityGroupsDelete = Operation
  type
    Scopes CloudIdentityGroupsDelete =
      '[CloudIdentity'Groups, CloudPlatform'FullControl]
  requestClient CloudIdentityGroupsDelete {..} =
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
              Core.Proxy CloudIdentityGroupsDeleteResource
          )
          Core.mempty
