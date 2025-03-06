{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.DFAReporting.FloodlightActivityGroups.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new floodlight activity group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivityGroups.insert@.
module Gogol.DFAReporting.FloodlightActivityGroups.Insert
  ( -- * Resource
    DFAReportingFloodlightActivityGroupsInsertResource,

    -- ** Constructing a Request
    DFAReportingFloodlightActivityGroupsInsert (..),
    newDFAReportingFloodlightActivityGroupsInsert,
  )
where

import Gogol.DFAReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dfareporting.floodlightActivityGroups.insert@ method which the
-- 'DFAReportingFloodlightActivityGroupsInsert' request conforms to.
type DFAReportingFloodlightActivityGroupsInsertResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "floodlightActivityGroups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] FloodlightActivityGroup
    Core.:> Core.Post '[Core.JSON] FloodlightActivityGroup

-- | Inserts a new floodlight activity group.
--
-- /See:/ 'newDFAReportingFloodlightActivityGroupsInsert' smart constructor.
data DFAReportingFloodlightActivityGroupsInsert = DFAReportingFloodlightActivityGroupsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: FloodlightActivityGroup,
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingFloodlightActivityGroupsInsert' with the minimum fields required to make a request.
newDFAReportingFloodlightActivityGroupsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  FloodlightActivityGroup ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingFloodlightActivityGroupsInsert
newDFAReportingFloodlightActivityGroupsInsert payload profileId =
  DFAReportingFloodlightActivityGroupsInsert
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
    DFAReportingFloodlightActivityGroupsInsert
  where
  type
    Rs DFAReportingFloodlightActivityGroupsInsert =
      FloodlightActivityGroup
  type
    Scopes DFAReportingFloodlightActivityGroupsInsert =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingFloodlightActivityGroupsInsert {..} =
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
              Core.Proxy DFAReportingFloodlightActivityGroupsInsertResource
          )
          Core.mempty
