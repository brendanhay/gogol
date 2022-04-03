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
-- Module      : Gogol.DLP.Projects.Locations.DlpJobs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a long-running DlpJob. This method indicates that the client is no longer interested in the DlpJob result. The job will be cancelled if possible. See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.dlpJobs.delete@.
module Gogol.DLP.Projects.Locations.DlpJobs.Delete
  ( -- * Resource
    DLPProjectsLocationsDlpJobsDeleteResource,

    -- ** Constructing a Request
    DLPProjectsLocationsDlpJobsDelete (..),
    newDLPProjectsLocationsDlpJobsDelete,
  )
where

import Gogol.DLP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dlp.projects.locations.dlpJobs.delete@ method which the
-- 'DLPProjectsLocationsDlpJobsDelete' request conforms to.
type DLPProjectsLocationsDlpJobsDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Deletes a long-running DlpJob. This method indicates that the client is no longer interested in the DlpJob result. The job will be cancelled if possible. See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn more.
--
-- /See:/ 'newDLPProjectsLocationsDlpJobsDelete' smart constructor.
data DLPProjectsLocationsDlpJobsDelete = DLPProjectsLocationsDlpJobsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the DlpJob resource to be deleted.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsDlpJobsDelete' with the minimum fields required to make a request.
newDLPProjectsLocationsDlpJobsDelete ::
  -- |  Required. The name of the DlpJob resource to be deleted. See 'name'.
  Core.Text ->
  DLPProjectsLocationsDlpJobsDelete
newDLPProjectsLocationsDlpJobsDelete name =
  DLPProjectsLocationsDlpJobsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DLPProjectsLocationsDlpJobsDelete
  where
  type
    Rs DLPProjectsLocationsDlpJobsDelete =
      GoogleProtobufEmpty
  type
    Scopes DLPProjectsLocationsDlpJobsDelete =
      '[CloudPlatform'FullControl]
  requestClient DLPProjectsLocationsDlpJobsDelete {..} =
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
              Core.Proxy DLPProjectsLocationsDlpJobsDeleteResource
          )
          Core.mempty
