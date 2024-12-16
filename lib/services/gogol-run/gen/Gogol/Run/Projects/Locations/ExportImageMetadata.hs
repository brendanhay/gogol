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
-- Module      : Gogol.Run.Projects.Locations.ExportImageMetadata
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Export image metadata for a given resource.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.exportImageMetadata@.
module Gogol.Run.Projects.Locations.ExportImageMetadata
    (
    -- * Resource
      RunProjectsLocationsExportImageMetadataResource

    -- ** Constructing a Request
    , RunProjectsLocationsExportImageMetadata (..)
    , newRunProjectsLocationsExportImageMetadata
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.exportImageMetadata@ method which the
-- 'RunProjectsLocationsExportImageMetadata' request conforms to.
type RunProjectsLocationsExportImageMetadataResource
     =
     "v2" Core.:>
       Core.CaptureMode "name" "exportImageMetadata"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] GoogleCloudRunV2Metadata

-- | Export image metadata for a given resource.
--
-- /See:/ 'newRunProjectsLocationsExportImageMetadata' smart constructor.
data RunProjectsLocationsExportImageMetadata = RunProjectsLocationsExportImageMetadata
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the resource of which image metadata should be exported. Format: @projects\/{project_id_or_number}\/locations\/{location}\/services\/{service}\/revisions\/{revision}@ for Revision @projects\/{project_id_or_number}\/locations\/{location}\/jobs\/{job}\/executions\/{execution}@ for Execution
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsExportImageMetadata' with the minimum fields required to make a request.
newRunProjectsLocationsExportImageMetadata 
    ::  Core.Text
       -- ^  Required. The name of the resource of which image metadata should be exported. Format: @projects\/{project_id_or_number}\/locations\/{location}\/services\/{service}\/revisions\/{revision}@ for Revision @projects\/{project_id_or_number}\/locations\/{location}\/jobs\/{job}\/executions\/{execution}@ for Execution See 'name'.
    -> RunProjectsLocationsExportImageMetadata
newRunProjectsLocationsExportImageMetadata name =
  RunProjectsLocationsExportImageMetadata
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           RunProjectsLocationsExportImageMetadata
         where
        type Rs RunProjectsLocationsExportImageMetadata =
             GoogleCloudRunV2Metadata
        type Scopes RunProjectsLocationsExportImageMetadata =
             '[CloudPlatform'FullControl]
        requestClient
          RunProjectsLocationsExportImageMetadata{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              runService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           RunProjectsLocationsExportImageMetadataResource)
                      Core.mempty

