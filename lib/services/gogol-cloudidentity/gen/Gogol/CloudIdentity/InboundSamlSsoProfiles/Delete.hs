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
-- Module      : Gogol.CloudIdentity.InboundSamlSsoProfiles.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an InboundSamlSsoProfile.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundSamlSsoProfiles.delete@.
module Gogol.CloudIdentity.InboundSamlSsoProfiles.Delete
  ( -- * Resource
    CloudIdentityInboundSamlSsoProfilesDeleteResource,

    -- ** Constructing a Request
    CloudIdentityInboundSamlSsoProfilesDelete (..),
    newCloudIdentityInboundSamlSsoProfilesDelete,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.inboundSamlSsoProfiles.delete@ method which the
-- 'CloudIdentityInboundSamlSsoProfilesDelete' request conforms to.
type CloudIdentityInboundSamlSsoProfilesDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes an InboundSamlSsoProfile.
--
-- /See:/ 'newCloudIdentityInboundSamlSsoProfilesDelete' smart constructor.
data CloudIdentityInboundSamlSsoProfilesDelete = CloudIdentityInboundSamlSsoProfilesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the InboundSamlSsoProfile to delete. Format: @inboundSamlSsoProfiles\/{sso_profile_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundSamlSsoProfilesDelete' with the minimum fields required to make a request.
newCloudIdentityInboundSamlSsoProfilesDelete ::
  -- |  Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the InboundSamlSsoProfile to delete. Format: @inboundSamlSsoProfiles\/{sso_profile_id}@ See 'name'.
  Core.Text ->
  CloudIdentityInboundSamlSsoProfilesDelete
newCloudIdentityInboundSamlSsoProfilesDelete name =
  CloudIdentityInboundSamlSsoProfilesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityInboundSamlSsoProfilesDelete
  where
  type
    Rs CloudIdentityInboundSamlSsoProfilesDelete =
      Operation
  type
    Scopes CloudIdentityInboundSamlSsoProfilesDelete =
      '[CloudPlatform'FullControl]
  requestClient
    CloudIdentityInboundSamlSsoProfilesDelete {..} =
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
                Core.Proxy
                  CloudIdentityInboundSamlSsoProfilesDeleteResource
            )
            Core.mempty
