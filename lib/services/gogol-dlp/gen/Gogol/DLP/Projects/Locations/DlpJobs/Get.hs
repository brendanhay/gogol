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
-- Module      : Gogol.DLP.Projects.Locations.DlpJobs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running DlpJob. See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.dlpJobs.get@.
module Gogol.DLP.Projects.Locations.DlpJobs.Get
  ( -- * Resource
    DLPProjectsLocationsDlpJobsGetResource,

    -- ** Constructing a Request
    DLPProjectsLocationsDlpJobsGet (..),
    newDLPProjectsLocationsDlpJobsGet,
  )
where

import Gogol.DLP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dlp.projects.locations.dlpJobs.get@ method which the
-- 'DLPProjectsLocationsDlpJobsGet' request conforms to.
type DLPProjectsLocationsDlpJobsGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GooglePrivacyDlpV2DlpJob

-- | Gets the latest state of a long-running DlpJob. See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn more.
--
-- /See:/ 'newDLPProjectsLocationsDlpJobsGet' smart constructor.
data DLPProjectsLocationsDlpJobsGet = DLPProjectsLocationsDlpJobsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the DlpJob resource.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsDlpJobsGet' with the minimum fields required to make a request.
newDLPProjectsLocationsDlpJobsGet ::
  -- |  Required. The name of the DlpJob resource. See 'name'.
  Core.Text ->
  DLPProjectsLocationsDlpJobsGet
newDLPProjectsLocationsDlpJobsGet name =
  DLPProjectsLocationsDlpJobsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DLPProjectsLocationsDlpJobsGet
  where
  type
    Rs DLPProjectsLocationsDlpJobsGet =
      GooglePrivacyDlpV2DlpJob
  type
    Scopes DLPProjectsLocationsDlpJobsGet =
      '[CloudPlatform'FullControl]
  requestClient DLPProjectsLocationsDlpJobsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dLPService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DLPProjectsLocationsDlpJobsGetResource
          )
          Core.mempty
