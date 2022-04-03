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
-- Module      : Gogol.DFAReporting.FloodlightActivities.Generatetag
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a tag for a floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivities.generatetag@.
module Gogol.DFAReporting.FloodlightActivities.Generatetag
  ( -- * Resource
    DFAReportingFloodlightActivitiesGeneratetagResource,

    -- ** Constructing a Request
    DFAReportingFloodlightActivitiesGeneratetag (..),
    newDFAReportingFloodlightActivitiesGeneratetag,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.floodlightActivities.generatetag@ method which the
-- 'DFAReportingFloodlightActivitiesGeneratetag' request conforms to.
type DFAReportingFloodlightActivitiesGeneratetagResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "floodlightActivities"
    Core.:> "generatetag"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "floodlightActivityId" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post
              '[Core.JSON]
              FloodlightActivitiesGenerateTagResponse

-- | Generates a tag for a floodlight activity.
--
-- /See:/ 'newDFAReportingFloodlightActivitiesGeneratetag' smart constructor.
data DFAReportingFloodlightActivitiesGeneratetag = DFAReportingFloodlightActivitiesGeneratetag
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Floodlight activity ID for which we want to generate a tag.
    floodlightActivityId :: (Core.Maybe Core.Int64),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingFloodlightActivitiesGeneratetag' with the minimum fields required to make a request.
newDFAReportingFloodlightActivitiesGeneratetag ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingFloodlightActivitiesGeneratetag
newDFAReportingFloodlightActivitiesGeneratetag profileId =
  DFAReportingFloodlightActivitiesGeneratetag
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      floodlightActivityId = Core.Nothing,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingFloodlightActivitiesGeneratetag
  where
  type
    Rs DFAReportingFloodlightActivitiesGeneratetag =
      FloodlightActivitiesGenerateTagResponse
  type
    Scopes
      DFAReportingFloodlightActivitiesGeneratetag =
      '[Dfatrafficking'FullControl]
  requestClient
    DFAReportingFloodlightActivitiesGeneratetag {..} =
      go
        profileId
        xgafv
        accessToken
        callback
        floodlightActivityId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dFAReportingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DFAReportingFloodlightActivitiesGeneratetagResource
            )
            Core.mempty
