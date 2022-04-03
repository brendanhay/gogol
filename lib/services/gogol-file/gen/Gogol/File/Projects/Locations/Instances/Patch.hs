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
-- Module      : Gogol.File.Projects.Locations.Instances.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings of a specific instance.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.instances.patch@.
module Gogol.File.Projects.Locations.Instances.Patch
  ( -- * Resource
    FileProjectsLocationsInstancesPatchResource,

    -- ** Constructing a Request
    FileProjectsLocationsInstancesPatch (..),
    newFileProjectsLocationsInstancesPatch,
  )
where

import Gogol.File.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @file.projects.locations.instances.patch@ method which the
-- 'FileProjectsLocationsInstancesPatch' request conforms to.
type FileProjectsLocationsInstancesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Instance
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the settings of a specific instance.
--
-- /See:/ 'newFileProjectsLocationsInstancesPatch' smart constructor.
data FileProjectsLocationsInstancesPatch = FileProjectsLocationsInstancesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the instance, in the format @projects\/{project}\/locations\/{location}\/instances\/{instance}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Instance,
    -- | Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated paths field may only include these fields: * \"description\" * \"file_shares\" * \"labels\"
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileProjectsLocationsInstancesPatch' with the minimum fields required to make a request.
newFileProjectsLocationsInstancesPatch ::
  -- |  Output only. The resource name of the instance, in the format @projects\/{project}\/locations\/{location}\/instances\/{instance}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Instance ->
  FileProjectsLocationsInstancesPatch
newFileProjectsLocationsInstancesPatch name payload =
  FileProjectsLocationsInstancesPatch
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
    FileProjectsLocationsInstancesPatch
  where
  type
    Rs FileProjectsLocationsInstancesPatch =
      Operation
  type
    Scopes FileProjectsLocationsInstancesPatch =
      '[CloudPlatform'FullControl]
  requestClient FileProjectsLocationsInstancesPatch {..} =
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
      fileService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                FileProjectsLocationsInstancesPatchResource
          )
          Core.mempty
