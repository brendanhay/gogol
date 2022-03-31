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
-- Module      : Gogol.CloudKMS.Projects.Locations.GenerateRandomBytes
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generate random bytes using the Cloud KMS randomness source in the provided location.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.generateRandomBytes@.
module Gogol.CloudKMS.Projects.Locations.GenerateRandomBytes
  ( -- * Resource
    CloudKMSProjectsLocationsGenerateRandomBytesResource,

    -- ** Constructing a Request
    newCloudKMSProjectsLocationsGenerateRandomBytes,
    CloudKMSProjectsLocationsGenerateRandomBytes,
  )
where

import Gogol.CloudKMS.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudkms.projects.locations.generateRandomBytes@ method which the
-- 'CloudKMSProjectsLocationsGenerateRandomBytes' request conforms to.
type CloudKMSProjectsLocationsGenerateRandomBytesResource =
  "v1"
    Core.:> Core.CaptureMode
              "location"
              "generateRandomBytes"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GenerateRandomBytesRequest
    Core.:> Core.Post '[Core.JSON] GenerateRandomBytesResponse

-- | Generate random bytes using the Cloud KMS randomness source in the provided location.
--
-- /See:/ 'newCloudKMSProjectsLocationsGenerateRandomBytes' smart constructor.
data CloudKMSProjectsLocationsGenerateRandomBytes = CloudKMSProjectsLocationsGenerateRandomBytes
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The project-specific location in which to generate random bytes. For example, \"projects\/my-project\/locations\/us-central1\".
    location :: Core.Text,
    -- | Multipart request metadata.
    payload :: GenerateRandomBytesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsGenerateRandomBytes' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsGenerateRandomBytes ::
  -- |  The project-specific location in which to generate random bytes. For example, \"projects\/my-project\/locations\/us-central1\". See 'location'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GenerateRandomBytesRequest ->
  CloudKMSProjectsLocationsGenerateRandomBytes
newCloudKMSProjectsLocationsGenerateRandomBytes location payload =
  CloudKMSProjectsLocationsGenerateRandomBytes
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      location = location,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudKMSProjectsLocationsGenerateRandomBytes
  where
  type
    Rs CloudKMSProjectsLocationsGenerateRandomBytes =
      GenerateRandomBytesResponse
  type
    Scopes
      CloudKMSProjectsLocationsGenerateRandomBytes =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient
    CloudKMSProjectsLocationsGenerateRandomBytes {..} =
      go
        location
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
                  CloudKMSProjectsLocationsGenerateRandomBytesResource
            )
            Core.mempty
