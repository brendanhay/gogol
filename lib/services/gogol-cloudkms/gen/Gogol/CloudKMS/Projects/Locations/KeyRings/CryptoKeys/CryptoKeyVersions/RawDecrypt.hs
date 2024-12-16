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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.RawDecrypt
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Decrypts data that was originally encrypted using a raw cryptographic mechanism. The CryptoKey.purpose must be RAW/ENCRYPT/DECRYPT.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.rawDecrypt@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.RawDecrypt
    (
    -- * Resource
      CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecryptResource

    -- ** Constructing a Request
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecrypt (..)
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecrypt
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudKMS.Types

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.rawDecrypt@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecrypt' request conforms to.
type CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecryptResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "rawDecrypt" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] RawDecryptRequest Core.:>
                       Core.Post '[Core.JSON] RawDecryptResponse

-- | Decrypts data that was originally encrypted using a raw cryptographic mechanism. The CryptoKey.purpose must be RAW/ENCRYPT/DECRYPT.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecrypt' smart constructor.
data CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecrypt = CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecrypt
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the CryptoKeyVersion to use for decryption.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: RawDecryptRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecrypt' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecrypt 
    ::  Core.Text
       -- ^  Required. The resource name of the CryptoKeyVersion to use for decryption. See 'name'.
    -> RawDecryptRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecrypt
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecrypt name payload =
  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecrypt
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecrypt
         where
        type Rs
               CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecrypt
             = RawDecryptResponse
        type Scopes
               CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecrypt
             = '[CloudPlatform'FullControl, Cloudkms'FullControl]
        requestClient
          CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecrypt{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudKMSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRawDecryptResource)
                      Core.mempty

