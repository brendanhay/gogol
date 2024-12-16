{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Run.Projects.Locations.ExportProjectMetadata
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Export generated customer metadata for a given project.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.exportProjectMetadata@.
module Gogol.Run.Projects.Locations.ExportProjectMetadata
    (
    -- * Resource
      RunProjectsLocationsExportProjectMetadataResource

    -- ** Constructing a Request
    , RunProjectsLocationsExportProjectMetadata (..)
    , newRunProjectsLocationsExportProjectMetadata
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.exportProjectMetadata@ method which the
-- 'RunProjectsLocationsExportProjectMetadata' request conforms to.
type RunProjectsLocationsExportProjectMetadataResource
     =
     "v2" Core.:>
       Core.CaptureMode "name" "exportProjectMetadata"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] GoogleCloudRunV2Metadata

-- | Export generated customer metadata for a given project.
--
-- /See:/ 'newRunProjectsLocationsExportProjectMetadata' smart constructor.
data RunProjectsLocationsExportProjectMetadata = RunProjectsLocationsExportProjectMetadata
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the project of which metadata should be exported. Format: @projects\/{project_id_or_number}\/locations\/{location}@ for Project in a given location.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsExportProjectMetadata' with the minimum fields required to make a request.
newRunProjectsLocationsExportProjectMetadata 
    ::  Core.Text
       -- ^  Required. The name of the project of which metadata should be exported. Format: @projects\/{project_id_or_number}\/locations\/{location}@ for Project in a given location. See 'name'.
    -> RunProjectsLocationsExportProjectMetadata
newRunProjectsLocationsExportProjectMetadata name =
  RunProjectsLocationsExportProjectMetadata
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           RunProjectsLocationsExportProjectMetadata
         where
        type Rs RunProjectsLocationsExportProjectMetadata =
             GoogleCloudRunV2Metadata
        type Scopes RunProjectsLocationsExportProjectMetadata
             = '[CloudPlatform'FullControl]
        requestClient
          RunProjectsLocationsExportProjectMetadata{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              runService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           RunProjectsLocationsExportProjectMetadataResource)
                      Core.mempty

