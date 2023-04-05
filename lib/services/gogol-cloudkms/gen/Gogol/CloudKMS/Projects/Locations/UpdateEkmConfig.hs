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
-- Module      : Gogol.CloudKMS.Projects.Locations.UpdateEkmConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the EkmConfig singleton resource for a given project and location.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.updateEkmConfig@.
module Gogol.CloudKMS.Projects.Locations.UpdateEkmConfig
  ( -- * Resource
    CloudKMSProjectsLocationsUpdateEkmConfigResource,

    -- ** Constructing a Request
    CloudKMSProjectsLocationsUpdateEkmConfig (..),
    newCloudKMSProjectsLocationsUpdateEkmConfig,
  )
where

import Gogol.CloudKMS.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudkms.projects.locations.updateEkmConfig@ method which the
-- 'CloudKMSProjectsLocationsUpdateEkmConfig' request conforms to.
type CloudKMSProjectsLocationsUpdateEkmConfigResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EkmConfig
    Core.:> Core.Patch '[Core.JSON] EkmConfig

-- | Updates the EkmConfig singleton resource for a given project and location.
--
-- /See:/ 'newCloudKMSProjectsLocationsUpdateEkmConfig' smart constructor.
data CloudKMSProjectsLocationsUpdateEkmConfig = CloudKMSProjectsLocationsUpdateEkmConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The resource name for the EkmConfig in the format @projects\/*\/locations\/*\/ekmConfig@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: EkmConfig,
    -- | Required. List of fields to be updated in this request.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsUpdateEkmConfig' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsUpdateEkmConfig ::
  -- |  Output only. The resource name for the EkmConfig in the format @projects\/*\/locations\/*\/ekmConfig@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EkmConfig ->
  CloudKMSProjectsLocationsUpdateEkmConfig
newCloudKMSProjectsLocationsUpdateEkmConfig name payload =
  CloudKMSProjectsLocationsUpdateEkmConfig
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
    CloudKMSProjectsLocationsUpdateEkmConfig
  where
  type
    Rs CloudKMSProjectsLocationsUpdateEkmConfig =
      EkmConfig
  type
    Scopes CloudKMSProjectsLocationsUpdateEkmConfig =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient
    CloudKMSProjectsLocationsUpdateEkmConfig {..} =
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
        cloudKMSService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudKMSProjectsLocationsUpdateEkmConfigResource
            )
            Core.mempty
