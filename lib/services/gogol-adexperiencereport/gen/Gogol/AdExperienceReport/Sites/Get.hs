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
-- Module      : Gogol.AdExperienceReport.Sites.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a site\'s Ad Experience Report summary.
--
-- /See:/ <https://developers.google.com/ad-experience-report/ Ad Experience Report API Reference> for @adexperiencereport.sites.get@.
module Gogol.AdExperienceReport.Sites.Get
  ( -- * Resource
    AdExperienceReportSitesGetResource,

    -- ** Constructing a Request
    AdExperienceReportSitesGet (..),
    newAdExperienceReportSitesGet,
  )
where

import Gogol.AdExperienceReport.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexperiencereport.sites.get@ method which the
-- 'AdExperienceReportSitesGet' request conforms to.
type AdExperienceReportSitesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SiteSummaryResponse

-- | Gets a site\'s Ad Experience Report summary.
--
-- /See:/ 'newAdExperienceReportSitesGet' smart constructor.
data AdExperienceReportSitesGet = AdExperienceReportSitesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the site whose summary to get, e.g. @sites\/http%3A%2F%2Fwww.google.com%2F@. Format: @sites\/{site}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExperienceReportSitesGet' with the minimum fields required to make a request.
newAdExperienceReportSitesGet ::
  -- |  Required. The name of the site whose summary to get, e.g. @sites\/http%3A%2F%2Fwww.google.com%2F@. Format: @sites\/{site}@ See 'name'.
  Core.Text ->
  AdExperienceReportSitesGet
newAdExperienceReportSitesGet name =
  AdExperienceReportSitesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdExperienceReportSitesGet where
  type Rs AdExperienceReportSitesGet = SiteSummaryResponse
  type Scopes AdExperienceReportSitesGet = '[]
  requestClient AdExperienceReportSitesGet {..} =
    go
      name
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
          (Core.Proxy :: Core.Proxy AdExperienceReportSitesGetResource)
          Core.mempty
