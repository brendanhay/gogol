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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new CryptoKey within a KeyRing. CryptoKey.purpose and CryptoKey.version_template.algorithm are required.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.create@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Create
    (
    -- * Resource
      CloudKMSProjectsLocationsKeyRingsCryptoKeysCreateResource

    -- ** Constructing a Request
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCreate (..)
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudKMS.Types

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.create@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCreate' request conforms to.
type CloudKMSProjectsLocationsKeyRingsCryptoKeysCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "cryptoKeys" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "cryptoKeyId" Core.Text Core.:>
                   Core.QueryParam "skipInitialVersionCreation"
                     Core.Bool
                     Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] CryptoKey Core.:>
                             Core.Post '[Core.JSON] CryptoKey

-- | Create a new CryptoKey within a KeyRing. CryptoKey.purpose and CryptoKey.version_template.algorithm are required.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsCryptoKeysCreate' smart constructor.
data CloudKMSProjectsLocationsKeyRingsCryptoKeysCreate = CloudKMSProjectsLocationsKeyRingsCryptoKeysCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. It must be unique within a KeyRing and match the regular expression @[a-zA-Z0-9_-]{1,63}@
    , cryptoKeyId :: (Core.Maybe Core.Text)
      -- | Required. The name of the KeyRing associated with the CryptoKeys.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: CryptoKey
      -- | If set to true, the request will create a CryptoKey without any CryptoKeyVersions. You must manually call CreateCryptoKeyVersion or ImportCryptoKeyVersion before you can use this CryptoKey.
    , skipInitialVersionCreation :: (Core.Maybe Core.Bool)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCreate' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCreate 
    ::  Core.Text
       -- ^  Required. The name of the KeyRing associated with the CryptoKeys. See 'parent'.
    -> CryptoKey
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudKMSProjectsLocationsKeyRingsCryptoKeysCreate
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCreate parent payload =
  CloudKMSProjectsLocationsKeyRingsCryptoKeysCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , cryptoKeyId = Core.Nothing
    , parent = parent
    , payload = payload
    , skipInitialVersionCreation = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudKMSProjectsLocationsKeyRingsCryptoKeysCreate
         where
        type Rs
               CloudKMSProjectsLocationsKeyRingsCryptoKeysCreate
             = CryptoKey
        type Scopes
               CloudKMSProjectsLocationsKeyRingsCryptoKeysCreate
             = '[CloudPlatform'FullControl, Cloudkms'FullControl]
        requestClient
          CloudKMSProjectsLocationsKeyRingsCryptoKeysCreate{..}
          = go parent xgafv accessToken callback cryptoKeyId
              skipInitialVersionCreation
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudKMSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudKMSProjectsLocationsKeyRingsCryptoKeysCreateResource)
                      Core.mempty

