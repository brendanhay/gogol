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
-- Module      : Gogol.CloudIdentity.InboundSamlSsoProfiles.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an InboundSamlSsoProfile.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundSamlSsoProfiles.patch@.
module Gogol.CloudIdentity.InboundSamlSsoProfiles.Patch
  ( -- * Resource
    CloudIdentityInboundSamlSsoProfilesPatchResource,

    -- ** Constructing a Request
    CloudIdentityInboundSamlSsoProfilesPatch (..),
    newCloudIdentityInboundSamlSsoProfilesPatch,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.inboundSamlSsoProfiles.patch@ method which the
-- 'CloudIdentityInboundSamlSsoProfilesPatch' request conforms to.
type CloudIdentityInboundSamlSsoProfilesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] InboundSamlSsoProfile
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates an InboundSamlSsoProfile.
--
-- /See:/ 'newCloudIdentityInboundSamlSsoProfilesPatch' smart constructor.
data CloudIdentityInboundSamlSsoProfilesPatch = CloudIdentityInboundSamlSsoProfilesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. <https://cloud.google.com/apis/design/resource_names Resource name> of the SAML SSO profile.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: InboundSamlSsoProfile,
    -- | Required. The list of fields to be updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundSamlSsoProfilesPatch' with the minimum fields required to make a request.
newCloudIdentityInboundSamlSsoProfilesPatch ::
  -- |  Output only. <https://cloud.google.com/apis/design/resource_names Resource name> of the SAML SSO profile. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  InboundSamlSsoProfile ->
  CloudIdentityInboundSamlSsoProfilesPatch
newCloudIdentityInboundSamlSsoProfilesPatch name payload =
  CloudIdentityInboundSamlSsoProfilesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityInboundSamlSsoProfilesPatch
  where
  type
    Rs CloudIdentityInboundSamlSsoProfilesPatch =
      Operation
  type
    Scopes CloudIdentityInboundSamlSsoProfilesPatch =
      '[CloudPlatform'FullControl]
  requestClient
    CloudIdentityInboundSamlSsoProfilesPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
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
                  CloudIdentityInboundSamlSsoProfilesPatchResource
            )
            Core.mempty
