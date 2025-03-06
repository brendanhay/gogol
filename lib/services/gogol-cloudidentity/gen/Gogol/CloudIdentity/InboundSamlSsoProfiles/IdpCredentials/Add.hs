{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.CloudIdentity.InboundSamlSsoProfiles.IdpCredentials.Add
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an IdpCredential. Up to 2 credentials are allowed. When the target customer has enabled <https://support.google.com/a/answer/13790448 Multi-party approval for sensitive actions>, the @Operation@ in the response will have @\"done\": false@, it will not have a response, and the metadata will have @\"state\": \"awaiting-multi-party-approval\"@.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundSamlSsoProfiles.idpCredentials.add@.
module Gogol.CloudIdentity.InboundSamlSsoProfiles.IdpCredentials.Add
  ( -- * Resource
    CloudIdentityInboundSamlSsoProfilesIdpCredentialsAddResource,

    -- ** Constructing a Request
    CloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd (..),
    newCloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.inboundSamlSsoProfiles.idpCredentials.add@ method which the
-- 'CloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd' request conforms to.
type CloudIdentityInboundSamlSsoProfilesIdpCredentialsAddResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "idpCredentials:add"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AddIdpCredentialRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Adds an IdpCredential. Up to 2 credentials are allowed. When the target customer has enabled <https://support.google.com/a/answer/13790448 Multi-party approval for sensitive actions>, the @Operation@ in the response will have @\"done\": false@, it will not have a response, and the metadata will have @\"state\": \"awaiting-multi-party-approval\"@.
--
-- /See:/ 'newCloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd' smart constructor.
data CloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd = CloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The InboundSamlSsoProfile that owns the IdpCredential. Format: @inboundSamlSsoProfiles\/{sso_profile_id}@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: AddIdpCredentialRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd' with the minimum fields required to make a request.
newCloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd ::
  -- |  Required. The InboundSamlSsoProfile that owns the IdpCredential. Format: @inboundSamlSsoProfiles\/{sso_profile_id}@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AddIdpCredentialRequest ->
  CloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd
newCloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd
  parent
  payload =
    CloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    CloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd
  where
  type
    Rs CloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd =
      Operation
  type
    Scopes CloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd =
      '[CloudIdentity'Inboundsso, CloudPlatform'FullControl]
  requestClient
    CloudIdentityInboundSamlSsoProfilesIdpCredentialsAdd {..} =
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
                Core.Proxy
                  CloudIdentityInboundSamlSsoProfilesIdpCredentialsAddResource
            )
            Core.mempty
