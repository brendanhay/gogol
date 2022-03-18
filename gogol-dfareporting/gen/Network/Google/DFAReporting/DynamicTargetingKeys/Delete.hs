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
-- Module      : Network.Google.DFAReporting.DynamicTargetingKeys.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing dynamic targeting key.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.dynamicTargetingKeys.delete@.
module Network.Google.DFAReporting.DynamicTargetingKeys.Delete
  ( -- * Resource
    DFAReportingDynamicTargetingKeysDeleteResource,

    -- ** Constructing a Request
    newDFAReportingDynamicTargetingKeysDelete,
    DFAReportingDynamicTargetingKeysDelete,
  )
where

import Network.Google.DFAReporting.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dfareporting.dynamicTargetingKeys.delete@ method which the
-- 'DFAReportingDynamicTargetingKeysDelete' request conforms to.
type DFAReportingDynamicTargetingKeysDeleteResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "dynamicTargetingKeys"
    Core.:> Core.Capture "objectId" Core.Int64
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam
              "objectType"
              DynamicTargetingKeysDeleteObjectType
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes an existing dynamic targeting key.
--
-- /See:/ 'newDFAReportingDynamicTargetingKeysDelete' smart constructor.
data DFAReportingDynamicTargetingKeysDelete = DFAReportingDynamicTargetingKeysDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of this dynamic targeting key. This is a required field. Must be less than 256 characters long and cannot contain commas. All characters are converted to lowercase.
    name :: Core.Text,
    -- | ID of the object of this dynamic targeting key. This is a required field.
    objectId :: Core.Int64,
    -- | Type of the object of this dynamic targeting key. This is a required field.
    objectType :: DynamicTargetingKeysDeleteObjectType,
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingDynamicTargetingKeysDelete' with the minimum fields required to make a request.
newDFAReportingDynamicTargetingKeysDelete ::
  -- |  Name of this dynamic targeting key. This is a required field. Must be less than 256 characters long and cannot contain commas. All characters are converted to lowercase. See 'name'.
  Core.Text ->
  -- |  ID of the object of this dynamic targeting key. This is a required field. See 'objectId'.
  Core.Int64 ->
  -- |  Type of the object of this dynamic targeting key. This is a required field. See 'objectType'.
  DynamicTargetingKeysDeleteObjectType ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingDynamicTargetingKeysDelete
newDFAReportingDynamicTargetingKeysDelete name objectId objectType profileId =
  DFAReportingDynamicTargetingKeysDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      objectId = objectId,
      objectType = objectType,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingDynamicTargetingKeysDelete
  where
  type Rs DFAReportingDynamicTargetingKeysDelete = ()
  type
    Scopes DFAReportingDynamicTargetingKeysDelete =
      '["https://www.googleapis.com/auth/dfatrafficking"]
  requestClient
    DFAReportingDynamicTargetingKeysDelete {..} =
      go
        profileId
        objectId
        (Core.Just name)
        (Core.Just objectType)
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dFAReportingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DFAReportingDynamicTargetingKeysDeleteResource
            )
            Core.mempty
