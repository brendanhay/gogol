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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.TagValues.TagHolds.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a TagHold. Returns ALREADY_EXISTS if a TagHold with the same resource and origin exists under the same TagValue.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagValues.tagHolds.create@.
module Gogol.ResourceManager.Cloudresourcemanager.TagValues.TagHolds.Create
  ( -- * Resource
    CloudresourcemanagerTagValuesTagHoldsCreateResource,

    -- ** Constructing a Request
    CloudresourcemanagerTagValuesTagHoldsCreate (..),
    newCloudresourcemanagerTagValuesTagHoldsCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagValues.tagHolds.create@ method which the
-- 'CloudresourcemanagerTagValuesTagHoldsCreate' request conforms to.
type CloudresourcemanagerTagValuesTagHoldsCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "tagHolds"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TagHold
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a TagHold. Returns ALREADY_EXISTS if a TagHold with the same resource and origin exists under the same TagValue.
--
-- /See:/ 'newCloudresourcemanagerTagValuesTagHoldsCreate' smart constructor.
data CloudresourcemanagerTagValuesTagHoldsCreate = CloudresourcemanagerTagValuesTagHoldsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the TagHold\'s parent TagValue. Must be of the form: @tagValues\/{tag-value-id}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: TagHold,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional. Set to true to perform the validations necessary for creating the resource, but not actually perform the action.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerTagValuesTagHoldsCreate' with the minimum fields required to make a request.
newCloudresourcemanagerTagValuesTagHoldsCreate ::
  -- |  Required. The resource name of the TagHold\'s parent TagValue. Must be of the form: @tagValues\/{tag-value-id}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  TagHold ->
  CloudresourcemanagerTagValuesTagHoldsCreate
newCloudresourcemanagerTagValuesTagHoldsCreate parent payload =
  CloudresourcemanagerTagValuesTagHoldsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerTagValuesTagHoldsCreate
  where
  type
    Rs CloudresourcemanagerTagValuesTagHoldsCreate =
      Operation
  type
    Scopes
      CloudresourcemanagerTagValuesTagHoldsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    CloudresourcemanagerTagValuesTagHoldsCreate {..} =
      go
        parent
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
                Core.Proxy
                  CloudresourcemanagerTagValuesTagHoldsCreateResource
            )
            Core.mempty
