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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.AsymmetricDecrypt
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Decrypts data that was encrypted with a public key retrieved from GetPublicKey corresponding to a CryptoKeyVersion with CryptoKey.purpose ASYMMETRIC_DECRYPT.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricDecrypt@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.AsymmetricDecrypt
  ( -- * Resource
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecryptResource,

    -- ** Constructing a Request
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt,
  )
where

import Gogol.CloudKMS.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricDecrypt@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt' request conforms to.
type CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecryptResource =
  "v1"
    Core.:> Core.CaptureMode "name" "asymmetricDecrypt" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AsymmetricDecryptRequest
    Core.:> Core.Post '[Core.JSON] AsymmetricDecryptResponse

-- | Decrypts data that was encrypted with a public key retrieved from GetPublicKey corresponding to a CryptoKeyVersion with CryptoKey.purpose ASYMMETRIC_DECRYPT.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt' smart constructor.
data CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt = CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the CryptoKeyVersion to use for decryption.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: AsymmetricDecryptRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt ::
  -- |  Required. The resource name of the CryptoKeyVersion to use for decryption. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AsymmetricDecryptRequest ->
  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt name payload =
  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt
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
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt
  where
  type
    Rs
      CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt =
      AsymmetricDecryptResponse
  type
    Scopes
      CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloudkms"
       ]
  requestClient
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt {..} =
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
                  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecryptResource
            )
            Core.mempty
