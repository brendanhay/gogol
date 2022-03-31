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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Decrypt
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Decrypts data that was protected by Encrypt. The CryptoKey.purpose must be ENCRYPT_DECRYPT.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.decrypt@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Decrypt
  ( -- * Resource
    CloudKMSProjectsLocationsKeyRingsCryptoKeysDecryptResource,

    -- ** Constructing a Request
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt,
  )
where

import Gogol.CloudKMS.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.decrypt@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt' request conforms to.
type CloudKMSProjectsLocationsKeyRingsCryptoKeysDecryptResource =
  "v1"
    Core.:> Core.CaptureMode "name" "decrypt" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DecryptRequest
    Core.:> Core.Post '[Core.JSON] DecryptResponse

-- | Decrypts data that was protected by Encrypt. The CryptoKey.purpose must be ENCRYPT_DECRYPT.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt' smart constructor.
data CloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt = CloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the CryptoKey to use for decryption. The server will choose the appropriate version.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: DecryptRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt ::
  -- |  Required. The resource name of the CryptoKey to use for decryption. The server will choose the appropriate version. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DecryptRequest ->
  CloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt
newCloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt name payload =
  CloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt
  where
  type
    Rs
      CloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt =
      DecryptResponse
  type
    Scopes
      CloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient
    CloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudKMSService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudKMSProjectsLocationsKeyRingsCryptoKeysDecryptResource
            )
            Core.mempty
