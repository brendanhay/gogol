{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.RawEncrypt
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Encrypts data using portable cryptographic primitives. Most users should choose Encrypt and Decrypt rather than their raw counterparts. The CryptoKey.purpose must be RAW/ENCRYPT/DECRYPT.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.rawEncrypt@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.RawEncrypt
    (
    -- * Resource
      CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncryptResource

    -- ** Constructing a Request
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncrypt (..)
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncrypt
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudKMS.Types

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.rawEncrypt@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncrypt' request conforms to.
type CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncryptResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "rawEncrypt" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] RawEncryptRequest Core.:>
                       Core.Post '[Core.JSON] RawEncryptResponse

-- | Encrypts data using portable cryptographic primitives. Most users should choose Encrypt and Decrypt rather than their raw counterparts. The CryptoKey.purpose must be RAW/ENCRYPT/DECRYPT.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncrypt' smart constructor.
data CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncrypt = CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncrypt
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the CryptoKeyVersion to use for encryption.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: RawEncryptRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncrypt' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncrypt 
    ::  Core.Text
       -- ^  Required. The resource name of the CryptoKeyVersion to use for encryption. See 'name'.
    -> RawEncryptRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncrypt
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncrypt name payload =
  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncrypt
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncrypt
         where
        type Rs
               CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncrypt
             = RawEncryptResponse
        type Scopes
               CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncrypt
             = '[CloudPlatform'FullControl, Cloudkms'FullControl]
        requestClient
          CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncrypt{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudKMSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawEncryptResource)
                      Core.mempty

