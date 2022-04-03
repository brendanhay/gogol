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
-- Module      : Gogol.Analytics.Management.Segments.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists segments to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.segments.list@.
module Gogol.Analytics.Management.Segments.List
  ( -- * Resource
    AnalyticsManagementSegmentsListResource,

    -- ** Constructing a Request
    AnalyticsManagementSegmentsList (..),
    newAnalyticsManagementSegmentsList,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.segments.list@ method which the
-- 'AnalyticsManagementSegmentsList' request conforms to.
type AnalyticsManagementSegmentsListResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "segments"
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Segments

-- | Lists segments to which the user has access.
--
-- /See:/ 'newAnalyticsManagementSegmentsList' smart constructor.
data AnalyticsManagementSegmentsList = AnalyticsManagementSegmentsList
  { -- | The maximum number of segments to include in this response.
    maxResults :: (Core.Maybe Core.Int32),
    -- | An index of the first segment to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementSegmentsList' with the minimum fields required to make a request.
newAnalyticsManagementSegmentsList ::
  AnalyticsManagementSegmentsList
newAnalyticsManagementSegmentsList =
  AnalyticsManagementSegmentsList
    { maxResults = Core.Nothing,
      startIndex = Core.Nothing
    }

instance
  Core.GoogleRequest
    AnalyticsManagementSegmentsList
  where
  type Rs AnalyticsManagementSegmentsList = Segments
  type
    Scopes AnalyticsManagementSegmentsList =
      '[ Analytics'FullControl,
         Analytics'Edit,
         Analytics'Readonly
       ]
  requestClient AnalyticsManagementSegmentsList {..} =
    go
      maxResults
      startIndex
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementSegmentsListResource
          )
          Core.mempty
