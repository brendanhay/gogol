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
-- Module      : Gogol.CloudIdentity.InboundSamlSsoProfiles.IdpCredentials.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an IdpCredential.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundSamlSsoProfiles.idpCredentials.get@.
module Gogol.CloudIdentity.InboundSamlSsoProfiles.IdpCredentials.Get
  ( -- * Resource
    CloudIdentityInboundSamlSsoProfilesIdpCredentialsGetResource,

    -- ** Constructing a Request
    CloudIdentityInboundSamlSsoProfilesIdpCredentialsGet (..),
    newCloudIdentityInboundSamlSsoProfilesIdpCredentialsGet,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.inboundSamlSsoProfiles.idpCredentials.get@ method which the
-- 'CloudIdentityInboundSamlSsoProfilesIdpCredentialsGet' request conforms to.
type CloudIdentityInboundSamlSsoProfilesIdpCredentialsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] IdpCredential

-- | Gets an IdpCredential.
--
-- /See:/ 'newCloudIdentityInboundSamlSsoProfilesIdpCredentialsGet' smart constructor.
data CloudIdentityInboundSamlSsoProfilesIdpCredentialsGet = CloudIdentityInboundSamlSsoProfilesIdpCredentialsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the IdpCredential to retrieve. Format: @inboundSamlSsoProfiles\/{sso_profile_id}\/idpCredentials\/{idp_credential_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundSamlSsoProfilesIdpCredentialsGet' with the minimum fields required to make a request.
newCloudIdentityInboundSamlSsoProfilesIdpCredentialsGet ::
  -- |  Required. The <https://cloud.google.com/apis/design/resource_names resource name> of the IdpCredential to retrieve. Format: @inboundSamlSsoProfiles\/{sso_profile_id}\/idpCredentials\/{idp_credential_id}@ See 'name'.
  Core.Text ->
  CloudIdentityInboundSamlSsoProfilesIdpCredentialsGet
newCloudIdentityInboundSamlSsoProfilesIdpCredentialsGet name =
  CloudIdentityInboundSamlSsoProfilesIdpCredentialsGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityInboundSamlSsoProfilesIdpCredentialsGet
  where
  type
    Rs CloudIdentityInboundSamlSsoProfilesIdpCredentialsGet =
      IdpCredential
  type
    Scopes CloudIdentityInboundSamlSsoProfilesIdpCredentialsGet =
      '[ CloudIdentity'Inboundsso,
         CloudIdentity'Inboundsso'Readonly,
         CloudPlatform'FullControl
       ]
  requestClient
    CloudIdentityInboundSamlSsoProfilesIdpCredentialsGet {..} =
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
                  CloudIdentityInboundSamlSsoProfilesIdpCredentialsGetResource
            )
            Core.mempty
