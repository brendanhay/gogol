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
-- Module      : Gogol.AbusiveExperienceReport.ViolatingSites.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists sites that are failing in the Abusive Experience Report.
--
-- /See:/ <https://developers.google.com/abusive-experience-report/ Abusive Experience Report API Reference> for @abusiveexperiencereport.violatingSites.list@.
module Gogol.AbusiveExperienceReport.ViolatingSites.List
  ( -- * Resource
    AbusiveExperienceReportViolatingSitesListResource,

    -- ** Constructing a Request
    newAbusiveExperienceReportViolatingSitesList,
    AbusiveExperienceReportViolatingSitesList,
  )
where

import Gogol.AbusiveExperienceReport.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @abusiveexperiencereport.violatingSites.list@ method which the
-- 'AbusiveExperienceReportViolatingSitesList' request conforms to.
type AbusiveExperienceReportViolatingSitesListResource =
  "v1"
    Core.:> "violatingSites"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ViolatingSitesResponse

-- | Lists sites that are failing in the Abusive Experience Report.
--
-- /See:/ 'newAbusiveExperienceReportViolatingSitesList' smart constructor.
data AbusiveExperienceReportViolatingSitesList = AbusiveExperienceReportViolatingSitesList
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

-- | Creates a value of 'AbusiveExperienceReportViolatingSitesList' with the minimum fields required to make a request.
newAbusiveExperienceReportViolatingSitesList ::
  AbusiveExperienceReportViolatingSitesList
newAbusiveExperienceReportViolatingSitesList =
  AbusiveExperienceReportViolatingSitesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AbusiveExperienceReportViolatingSitesList
  where
  type
    Rs AbusiveExperienceReportViolatingSitesList =
      ViolatingSitesResponse
  type
    Scopes AbusiveExperienceReportViolatingSitesList =
      '[]
  requestClient
    AbusiveExperienceReportViolatingSitesList {..} =
      go
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        abusiveExperienceReportService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AbusiveExperienceReportViolatingSitesListResource
            )
            Core.mempty
