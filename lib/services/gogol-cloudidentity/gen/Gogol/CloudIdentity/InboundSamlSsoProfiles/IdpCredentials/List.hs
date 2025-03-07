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
-- Module      : Gogol.CloudIdentity.InboundSamlSsoProfiles.IdpCredentials.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of IdpCredentials in an InboundSamlSsoProfile.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundSamlSsoProfiles.idpCredentials.list@.
module Gogol.CloudIdentity.InboundSamlSsoProfiles.IdpCredentials.List
  ( -- * Resource
    CloudIdentityInboundSamlSsoProfilesIdpCredentialsListResource,

    -- ** Constructing a Request
    CloudIdentityInboundSamlSsoProfilesIdpCredentialsList (..),
    newCloudIdentityInboundSamlSsoProfilesIdpCredentialsList,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.inboundSamlSsoProfiles.idpCredentials.list@ method which the
-- 'CloudIdentityInboundSamlSsoProfilesIdpCredentialsList' request conforms to.
type CloudIdentityInboundSamlSsoProfilesIdpCredentialsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "idpCredentials"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListIdpCredentialsResponse

-- | Returns a list of IdpCredentials in an InboundSamlSsoProfile.
--
-- /See:/ 'newCloudIdentityInboundSamlSsoProfilesIdpCredentialsList' smart constructor.
data CloudIdentityInboundSamlSsoProfilesIdpCredentialsList = CloudIdentityInboundSamlSsoProfilesIdpCredentialsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of @IdpCredential@s to return. The service may return fewer than this value.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListIdpCredentials@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListIdpCredentials@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent, which owns this collection of @IdpCredential@s. Format: @inboundSamlSsoProfiles\/{sso_profile_id}@
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundSamlSsoProfilesIdpCredentialsList' with the minimum fields required to make a request.
newCloudIdentityInboundSamlSsoProfilesIdpCredentialsList ::
  -- |  Required. The parent, which owns this collection of @IdpCredential@s. Format: @inboundSamlSsoProfiles\/{sso_profile_id}@ See 'parent'.
  Core.Text ->
  CloudIdentityInboundSamlSsoProfilesIdpCredentialsList
newCloudIdentityInboundSamlSsoProfilesIdpCredentialsList parent =
  CloudIdentityInboundSamlSsoProfilesIdpCredentialsList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityInboundSamlSsoProfilesIdpCredentialsList
  where
  type
    Rs CloudIdentityInboundSamlSsoProfilesIdpCredentialsList =
      ListIdpCredentialsResponse
  type
    Scopes CloudIdentityInboundSamlSsoProfilesIdpCredentialsList =
      '[ CloudIdentity'Inboundsso,
         CloudIdentity'Inboundsso'Readonly,
         CloudPlatform'FullControl
       ]
  requestClient
    CloudIdentityInboundSamlSsoProfilesIdpCredentialsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudIdentityService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudIdentityInboundSamlSsoProfilesIdpCredentialsListResource
            )
            Core.mempty
