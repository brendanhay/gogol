{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.AdExperienceReport.ViolatingSites.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists sites that are failing in the Ad Experience Report on at least one platform.
--
-- /See:/ <https://developers.google.com/ad-experience-report/ Ad Experience Report API Reference> for @adexperiencereport.violatingSites.list@.
module Gogol.AdExperienceReport.ViolatingSites.List
  ( -- * Resource
    AdExperienceReportViolatingSitesListResource,

    -- ** Constructing a Request
    AdExperienceReportViolatingSitesList (..),
    newAdExperienceReportViolatingSitesList,
  )
where

import Gogol.AdExperienceReport.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexperiencereport.violatingSites.list@ method which the
-- 'AdExperienceReportViolatingSitesList' request conforms to.
type AdExperienceReportViolatingSitesListResource =
  "v1"
    Core.:> "violatingSites"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ViolatingSitesResponse

-- | Lists sites that are failing in the Ad Experience Report on at least one platform.
--
-- /See:/ 'newAdExperienceReportViolatingSitesList' smart constructor.
data AdExperienceReportViolatingSitesList = AdExperienceReportViolatingSitesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExperienceReportViolatingSitesList' with the minimum fields required to make a request.
newAdExperienceReportViolatingSitesList ::
  AdExperienceReportViolatingSitesList
newAdExperienceReportViolatingSitesList =
  AdExperienceReportViolatingSitesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdExperienceReportViolatingSitesList where
  type
    Rs AdExperienceReportViolatingSitesList =
      ViolatingSitesResponse
  type Scopes AdExperienceReportViolatingSitesList = '[]
  requestClient AdExperienceReportViolatingSitesList {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adExperienceReportService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExperienceReportViolatingSitesListResource
          )
          Core.mempty
