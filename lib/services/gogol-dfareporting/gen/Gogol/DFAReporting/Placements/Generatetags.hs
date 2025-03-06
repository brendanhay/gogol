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
-- Module      : Gogol.DFAReporting.Placements.Generatetags
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates tags for a placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placements.generatetags@.
module Gogol.DFAReporting.Placements.Generatetags
  ( -- * Resource
    DFAReportingPlacementsGeneratetagsResource,

    -- ** Constructing a Request
    DFAReportingPlacementsGeneratetags (..),
    newDFAReportingPlacementsGeneratetags,
  )
where

import Gogol.DFAReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dfareporting.placements.generatetags@ method which the
-- 'DFAReportingPlacementsGeneratetags' request conforms to.
type DFAReportingPlacementsGeneratetagsResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "placements"
    Core.:> "generatetags"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "campaignId" Core.Int64
    Core.:> Core.QueryParams "placementIds" Core.Int64
    Core.:> Core.QueryParams "tagFormats" PlacementsGeneratetagsTagFormats
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] PlacementsGenerateTagsResponse

-- | Generates tags for a placement.
--
-- /See:/ 'newDFAReportingPlacementsGeneratetags' smart constructor.
data DFAReportingPlacementsGeneratetags = DFAReportingPlacementsGeneratetags
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Generate placements belonging to this campaign. This is a required field.
    campaignId :: (Core.Maybe Core.Int64),
    -- | Generate tags for these placements.
    placementIds :: (Core.Maybe [Core.Int64]),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Tag formats to generate for these placements. /Note:/ PLACEMENT/TAG/STANDARD can only be generated for 1x1 placements.
    tagFormats :: (Core.Maybe [PlacementsGeneratetagsTagFormats]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingPlacementsGeneratetags' with the minimum fields required to make a request.
newDFAReportingPlacementsGeneratetags ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingPlacementsGeneratetags
newDFAReportingPlacementsGeneratetags profileId =
  DFAReportingPlacementsGeneratetags
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      campaignId = Core.Nothing,
      placementIds = Core.Nothing,
      profileId = profileId,
      tagFormats = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingPlacementsGeneratetags where
  type
    Rs DFAReportingPlacementsGeneratetags =
      PlacementsGenerateTagsResponse
  type
    Scopes DFAReportingPlacementsGeneratetags =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingPlacementsGeneratetags {..} =
    go
      profileId
      xgafv
      accessToken
      callback
      campaignId
      (placementIds Core.^. Core._Default)
      (tagFormats Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingPlacementsGeneratetagsResource
          )
          Core.mempty
