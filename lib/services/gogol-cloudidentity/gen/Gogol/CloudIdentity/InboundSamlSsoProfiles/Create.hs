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
-- Module      : Gogol.CloudIdentity.InboundSamlSsoProfiles.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an InboundSamlSsoProfile for a customer. When the target customer has enabled <https://support.google.com/a/answer/13790448 Multi-party approval for sensitive actions>, the @Operation@ in the response will have @\"done\": false@, it will not have a response, and the metadata will have @\"state\": \"awaiting-multi-party-approval\"@.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundSamlSsoProfiles.create@.
module Gogol.CloudIdentity.InboundSamlSsoProfiles.Create
  ( -- * Resource
    CloudIdentityInboundSamlSsoProfilesCreateResource,

    -- ** Constructing a Request
    CloudIdentityInboundSamlSsoProfilesCreate (..),
    newCloudIdentityInboundSamlSsoProfilesCreate,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.inboundSamlSsoProfiles.create@ method which the
-- 'CloudIdentityInboundSamlSsoProfilesCreate' request conforms to.
type CloudIdentityInboundSamlSsoProfilesCreateResource =
  "v1"
    Core.:> "inboundSamlSsoProfiles"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] InboundSamlSsoProfile
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates an InboundSamlSsoProfile for a customer. When the target customer has enabled <https://support.google.com/a/answer/13790448 Multi-party approval for sensitive actions>, the @Operation@ in the response will have @\"done\": false@, it will not have a response, and the metadata will have @\"state\": \"awaiting-multi-party-approval\"@.
--
-- /See:/ 'newCloudIdentityInboundSamlSsoProfilesCreate' smart constructor.
data CloudIdentityInboundSamlSsoProfilesCreate = CloudIdentityInboundSamlSsoProfilesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: InboundSamlSsoProfile,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundSamlSsoProfilesCreate' with the minimum fields required to make a request.
newCloudIdentityInboundSamlSsoProfilesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  InboundSamlSsoProfile ->
  CloudIdentityInboundSamlSsoProfilesCreate
newCloudIdentityInboundSamlSsoProfilesCreate payload =
  CloudIdentityInboundSamlSsoProfilesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityInboundSamlSsoProfilesCreate
  where
  type Rs CloudIdentityInboundSamlSsoProfilesCreate = Operation
  type
    Scopes CloudIdentityInboundSamlSsoProfilesCreate =
      '[CloudIdentity'Inboundsso, CloudPlatform'FullControl]
  requestClient CloudIdentityInboundSamlSsoProfilesCreate {..} =
    go
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
              Core.Proxy CloudIdentityInboundSamlSsoProfilesCreateResource
          )
          Core.mempty
