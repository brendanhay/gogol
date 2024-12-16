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
-- Module      : Gogol.ContainerAnalysis.Projects.Locations.Resources.ExportSBOM
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates an SBOM for the given resource.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.locations.resources.exportSBOM@.
module Gogol.ContainerAnalysis.Projects.Locations.Resources.ExportSBOM
    (
    -- * Resource
      ContainerAnalysisProjectsLocationsResourcesExportSBOMResource

    -- ** Constructing a Request
    , ContainerAnalysisProjectsLocationsResourcesExportSBOM (..)
    , newContainerAnalysisProjectsLocationsResourcesExportSBOM
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerAnalysis.Types

-- | A resource alias for @containeranalysis.projects.locations.resources.exportSBOM@ method which the
-- 'ContainerAnalysisProjectsLocationsResourcesExportSBOM' request conforms to.
type ContainerAnalysisProjectsLocationsResourcesExportSBOMResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "exportSBOM" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] ExportSBOMRequest Core.:>
                       Core.Post '[Core.JSON] ExportSBOMResponse

-- | Generates an SBOM for the given resource.
--
-- /See:/ 'newContainerAnalysisProjectsLocationsResourcesExportSBOM' smart constructor.
data ContainerAnalysisProjectsLocationsResourcesExportSBOM = ContainerAnalysisProjectsLocationsResourcesExportSBOM
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the resource in the form of @projects\/[PROJECT_ID]\/resources\/[RESOURCE_URL]@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: ExportSBOMRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerAnalysisProjectsLocationsResourcesExportSBOM' with the minimum fields required to make a request.
newContainerAnalysisProjectsLocationsResourcesExportSBOM 
    ::  Core.Text
       -- ^  Required. The name of the resource in the form of @projects\/[PROJECT_ID]\/resources\/[RESOURCE_URL]@. See 'name'.
    -> ExportSBOMRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContainerAnalysisProjectsLocationsResourcesExportSBOM
newContainerAnalysisProjectsLocationsResourcesExportSBOM name payload =
  ContainerAnalysisProjectsLocationsResourcesExportSBOM
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContainerAnalysisProjectsLocationsResourcesExportSBOM
         where
        type Rs
               ContainerAnalysisProjectsLocationsResourcesExportSBOM
             = ExportSBOMResponse
        type Scopes
               ContainerAnalysisProjectsLocationsResourcesExportSBOM
             = '[CloudPlatform'FullControl]
        requestClient
          ContainerAnalysisProjectsLocationsResourcesExportSBOM{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerAnalysisService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerAnalysisProjectsLocationsResourcesExportSBOMResource)
                      Core.mempty

