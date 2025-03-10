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
-- Module      : Gogol.CloudKMS.Projects.Locations.EkmConnections.VerifyConnectivity
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies that Cloud KMS can successfully connect to the external key manager specified by an EkmConnection. If there is an error connecting to the EKM, this method returns a FAILED/PRECONDITION status containing structured information as described at https:\/\/cloud.google.com\/kms\/docs\/reference\/ekm/errors.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.ekmConnections.verifyConnectivity@.
module Gogol.CloudKMS.Projects.Locations.EkmConnections.VerifyConnectivity
  ( -- * Resource
    CloudKMSProjectsLocationsEkmConnectionsVerifyConnectivityResource,

    -- ** Constructing a Request
    CloudKMSProjectsLocationsEkmConnectionsVerifyConnectivity (..),
    newCloudKMSProjectsLocationsEkmConnectionsVerifyConnectivity,
  )
where

import Gogol.CloudKMS.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudkms.projects.locations.ekmConnections.verifyConnectivity@ method which the
-- 'CloudKMSProjectsLocationsEkmConnectionsVerifyConnectivity' request conforms to.
type CloudKMSProjectsLocationsEkmConnectionsVerifyConnectivityResource =
  "v1"
    Core.:> Core.CaptureMode "name" "verifyConnectivity" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] VerifyConnectivityResponse

-- | Verifies that Cloud KMS can successfully connect to the external key manager specified by an EkmConnection. If there is an error connecting to the EKM, this method returns a FAILED/PRECONDITION status containing structured information as described at https:\/\/cloud.google.com\/kms\/docs\/reference\/ekm/errors.
--
-- /See:/ 'newCloudKMSProjectsLocationsEkmConnectionsVerifyConnectivity' smart constructor.
data CloudKMSProjectsLocationsEkmConnectionsVerifyConnectivity = CloudKMSProjectsLocationsEkmConnectionsVerifyConnectivity
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the EkmConnection to verify.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsEkmConnectionsVerifyConnectivity' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsEkmConnectionsVerifyConnectivity ::
  -- |  Required. The name of the EkmConnection to verify. See 'name'.
  Core.Text ->
  CloudKMSProjectsLocationsEkmConnectionsVerifyConnectivity
newCloudKMSProjectsLocationsEkmConnectionsVerifyConnectivity name =
  CloudKMSProjectsLocationsEkmConnectionsVerifyConnectivity
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudKMSProjectsLocationsEkmConnectionsVerifyConnectivity
  where
  type
    Rs CloudKMSProjectsLocationsEkmConnectionsVerifyConnectivity =
      VerifyConnectivityResponse
  type
    Scopes
      CloudKMSProjectsLocationsEkmConnectionsVerifyConnectivity =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient
    CloudKMSProjectsLocationsEkmConnectionsVerifyConnectivity {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudKMSService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudKMSProjectsLocationsEkmConnectionsVerifyConnectivityResource
            )
            Core.mempty
