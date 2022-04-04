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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Projects.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the @display_name@ and labels of the project identified by the specified @name@ (for example, @projects\/415104041262@). Deleting all labels requires an update mask for labels field. The caller must have @resourcemanager.projects.update@ permission for this project.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.patch@.
module Gogol.ResourceManager.Cloudresourcemanager.Projects.Patch
  ( -- * Resource
    CloudresourcemanagerProjectsPatchResource,

    -- ** Constructing a Request
    CloudresourcemanagerProjectsPatch (..),
    newCloudresourcemanagerProjectsPatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.patch@ method which the
-- 'CloudresourcemanagerProjectsPatch' request conforms to.
type CloudresourcemanagerProjectsPatchResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Project
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the @display_name@ and labels of the project identified by the specified @name@ (for example, @projects\/415104041262@). Deleting all labels requires an update mask for labels field. The caller must have @resourcemanager.projects.update@ permission for this project.
--
-- /See:/ 'newCloudresourcemanagerProjectsPatch' smart constructor.
data CloudresourcemanagerProjectsPatch = CloudresourcemanagerProjectsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The unique resource name of the project. It is an int64 generated number prefixed by \"projects\/\". Example: @projects\/415104041262@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Project,
    -- | Optional. An update mask to selectively update fields.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerProjectsPatch' with the minimum fields required to make a request.
newCloudresourcemanagerProjectsPatch ::
  -- |  Output only. The unique resource name of the project. It is an int64 generated number prefixed by \"projects\/\". Example: @projects\/415104041262@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Project ->
  CloudresourcemanagerProjectsPatch
newCloudresourcemanagerProjectsPatch name payload =
  CloudresourcemanagerProjectsPatch
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
    CloudresourcemanagerProjectsPatch
  where
  type Rs CloudresourcemanagerProjectsPatch = Operation
  type
    Scopes CloudresourcemanagerProjectsPatch =
      '[CloudPlatform'FullControl]
  requestClient CloudresourcemanagerProjectsPatch {..} =
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
      resourceManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudresourcemanagerProjectsPatchResource
          )
          Core.mempty
