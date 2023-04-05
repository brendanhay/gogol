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
-- Module      : Gogol.DFAReporting.DynamicTargetingKeys.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new dynamic targeting key. Keys must be created at the advertiser level before being assigned to the advertiser\'s ads, creatives, or placements. There is a maximum of 1000 keys per advertiser, out of which a maximum of 20 keys can be assigned per ad, creative, or placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.dynamicTargetingKeys.insert@.
module Gogol.DFAReporting.DynamicTargetingKeys.Insert
  ( -- * Resource
    DFAReportingDynamicTargetingKeysInsertResource,

    -- ** Constructing a Request
    DFAReportingDynamicTargetingKeysInsert (..),
    newDFAReportingDynamicTargetingKeysInsert,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.dynamicTargetingKeys.insert@ method which the
-- 'DFAReportingDynamicTargetingKeysInsert' request conforms to.
type DFAReportingDynamicTargetingKeysInsertResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "dynamicTargetingKeys"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DynamicTargetingKey
    Core.:> Core.Post '[Core.JSON] DynamicTargetingKey

-- | Inserts a new dynamic targeting key. Keys must be created at the advertiser level before being assigned to the advertiser\'s ads, creatives, or placements. There is a maximum of 1000 keys per advertiser, out of which a maximum of 20 keys can be assigned per ad, creative, or placement.
--
-- /See:/ 'newDFAReportingDynamicTargetingKeysInsert' smart constructor.
data DFAReportingDynamicTargetingKeysInsert = DFAReportingDynamicTargetingKeysInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: DynamicTargetingKey,
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingDynamicTargetingKeysInsert' with the minimum fields required to make a request.
newDFAReportingDynamicTargetingKeysInsert ::
  -- |  Multipart request metadata. See 'payload'.
  DynamicTargetingKey ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingDynamicTargetingKeysInsert
newDFAReportingDynamicTargetingKeysInsert payload profileId =
  DFAReportingDynamicTargetingKeysInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingDynamicTargetingKeysInsert
  where
  type
    Rs DFAReportingDynamicTargetingKeysInsert =
      DynamicTargetingKey
  type
    Scopes DFAReportingDynamicTargetingKeysInsert =
      '[Dfatrafficking'FullControl]
  requestClient
    DFAReportingDynamicTargetingKeysInsert {..} =
      go
        profileId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        dFAReportingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DFAReportingDynamicTargetingKeysInsertResource
            )
            Core.mempty
