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
-- Module      : Gogol.ContainerAnalysis.Projects.Resources.GeneratePackagesSummary
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a summary of the packages within a given resource.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.resources.generatePackagesSummary@.
module Gogol.ContainerAnalysis.Projects.Resources.GeneratePackagesSummary
    (
    -- * Resource
      ContainerAnalysisProjectsResourcesGeneratePackagesSummaryResource

    -- ** Constructing a Request
    , ContainerAnalysisProjectsResourcesGeneratePackagesSummary (..)
    , newContainerAnalysisProjectsResourcesGeneratePackagesSummary
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerAnalysis.Types

-- | A resource alias for @containeranalysis.projects.resources.generatePackagesSummary@ method which the
-- 'ContainerAnalysisProjectsResourcesGeneratePackagesSummary' request conforms to.
type ContainerAnalysisProjectsResourcesGeneratePackagesSummaryResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "generatePackagesSummary"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GeneratePackagesSummaryRequest
                       Core.:>
                       Core.Post '[Core.JSON] PackagesSummaryResponse

-- | Gets a summary of the packages within a given resource.
--
-- /See:/ 'newContainerAnalysisProjectsResourcesGeneratePackagesSummary' smart constructor.
data ContainerAnalysisProjectsResourcesGeneratePackagesSummary = ContainerAnalysisProjectsResourcesGeneratePackagesSummary
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the resource to get a packages summary for in the form of @projects\/[PROJECT_ID]\/resources\/[RESOURCE_URL]@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GeneratePackagesSummaryRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerAnalysisProjectsResourcesGeneratePackagesSummary' with the minimum fields required to make a request.
newContainerAnalysisProjectsResourcesGeneratePackagesSummary 
    ::  Core.Text
       -- ^  Required. The name of the resource to get a packages summary for in the form of @projects\/[PROJECT_ID]\/resources\/[RESOURCE_URL]@. See 'name'.
    -> GeneratePackagesSummaryRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContainerAnalysisProjectsResourcesGeneratePackagesSummary
newContainerAnalysisProjectsResourcesGeneratePackagesSummary name payload =
  ContainerAnalysisProjectsResourcesGeneratePackagesSummary
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContainerAnalysisProjectsResourcesGeneratePackagesSummary
         where
        type Rs
               ContainerAnalysisProjectsResourcesGeneratePackagesSummary
             = PackagesSummaryResponse
        type Scopes
               ContainerAnalysisProjectsResourcesGeneratePackagesSummary
             = '[CloudPlatform'FullControl]
        requestClient
          ContainerAnalysisProjectsResourcesGeneratePackagesSummary{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerAnalysisService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerAnalysisProjectsResourcesGeneratePackagesSummaryResource)
                      Core.mempty

