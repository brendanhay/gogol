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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.TagKeys.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new TagKey. If another request with the same parameters is sent while the original request is in process, the second request will receive an error. A maximum of 1000 TagKeys can exist under a parent at any given time.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagKeys.create@.
module Gogol.ResourceManager.Cloudresourcemanager.TagKeys.Create
  ( -- * Resource
    CloudresourcemanagerTagKeysCreateResource,

    -- ** Constructing a Request
    CloudresourcemanagerTagKeysCreate (..),
    newCloudresourcemanagerTagKeysCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagKeys.create@ method which the
-- 'CloudresourcemanagerTagKeysCreate' request conforms to.
type CloudresourcemanagerTagKeysCreateResource =
  "v3"
    Core.:> "tagKeys"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TagKey
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a new TagKey. If another request with the same parameters is sent while the original request is in process, the second request will receive an error. A maximum of 1000 TagKeys can exist under a parent at any given time.
--
-- /See:/ 'newCloudresourcemanagerTagKeysCreate' smart constructor.
data CloudresourcemanagerTagKeysCreate = CloudresourcemanagerTagKeysCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TagKey,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional. Set to true to perform validations necessary for creating the resource, but not actually perform the action.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerTagKeysCreate' with the minimum fields required to make a request.
newCloudresourcemanagerTagKeysCreate ::
  -- |  Multipart request metadata. See 'payload'.
  TagKey ->
  CloudresourcemanagerTagKeysCreate
newCloudresourcemanagerTagKeysCreate payload =
  CloudresourcemanagerTagKeysCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerTagKeysCreate
  where
  type Rs CloudresourcemanagerTagKeysCreate = Operation
  type
    Scopes CloudresourcemanagerTagKeysCreate =
      '[CloudPlatform'FullControl]
  requestClient CloudresourcemanagerTagKeysCreate {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      validateOnly
      (Core.Just Core.AltJSON)
      payload
      resourceManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudresourcemanagerTagKeysCreateResource
          )
          Core.mempty
