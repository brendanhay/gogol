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
-- Module      : Gogol.CloudIdentity.InboundSamlSsoProfiles.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an InboundSamlSsoProfile.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundSamlSsoProfiles.get@.
module Gogol.CloudIdentity.InboundSamlSsoProfiles.Get
  ( -- * Resource
    CloudIdentityInboundSamlSsoProfilesGetResource,

    -- ** Constructing a Request
    CloudIdentityInboundSamlSsoProfilesGet (..),
    newCloudIdentityInboundSamlSsoProfilesGet,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.inboundSamlSsoProfiles.get@ method which the
-- 'CloudIdentityInboundSamlSsoProfilesGet' request conforms to.
type CloudIdentityInboundSamlSsoProfilesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] InboundSamlSsoProfile

-- | Gets an InboundSamlSsoProfile.
--
-- /See:/ 'newCloudIdentityInboundSamlSsoProfilesGet' smart constructor.
data CloudIdentityInboundSamlSsoProfilesGet = CloudIdentityInboundSamlSsoProfilesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the InboundSamlSsoProfile to get. Format: @inboundSamlSsoProfiles\/{sso_profile_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundSamlSsoProfilesGet' with the minimum fields required to make a request.
newCloudIdentityInboundSamlSsoProfilesGet ::
  -- |  Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the InboundSamlSsoProfile to get. Format: @inboundSamlSsoProfiles\/{sso_profile_id}@ See 'name'.
  Core.Text ->
  CloudIdentityInboundSamlSsoProfilesGet
newCloudIdentityInboundSamlSsoProfilesGet name =
  CloudIdentityInboundSamlSsoProfilesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityInboundSamlSsoProfilesGet where
  type
    Rs CloudIdentityInboundSamlSsoProfilesGet =
      InboundSamlSsoProfile
  type
    Scopes CloudIdentityInboundSamlSsoProfilesGet =
      '[ CloudIdentity'Inboundsso,
         CloudIdentity'Inboundsso'Readonly,
         CloudPlatform'FullControl
       ]
  requestClient CloudIdentityInboundSamlSsoProfilesGet {..} =
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
              Core.Proxy CloudIdentityInboundSamlSsoProfilesGetResource
          )
          Core.mempty
