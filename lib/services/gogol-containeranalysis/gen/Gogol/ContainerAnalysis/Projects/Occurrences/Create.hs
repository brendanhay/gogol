{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ContainerAnalysis.Projects.Occurrences.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new occurrence.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.occurrences.create@.
module Gogol.ContainerAnalysis.Projects.Occurrences.Create
    (
    -- * Resource
      ContainerAnalysisProjectsOccurrencesCreateResource

    -- ** Constructing a Request
    , newContainerAnalysisProjectsOccurrencesCreate
    , ContainerAnalysisProjectsOccurrencesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerAnalysis.Types

-- | A resource alias for @containeranalysis.projects.occurrences.create@ method which the
-- 'ContainerAnalysisProjectsOccurrencesCreate' request conforms to.
type ContainerAnalysisProjectsOccurrencesCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "occurrences" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Occurrence Core.:>
                         Core.Post '[Core.JSON] Occurrence

-- | Creates a new occurrence.
--
-- /See:/ 'newContainerAnalysisProjectsOccurrencesCreate' smart constructor.
data ContainerAnalysisProjectsOccurrencesCreate = ContainerAnalysisProjectsOccurrencesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the project in the form of @projects\/[PROJECT_ID]@, under which the occurrence is to be created.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Occurrence
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerAnalysisProjectsOccurrencesCreate' with the minimum fields required to make a request.
newContainerAnalysisProjectsOccurrencesCreate 
    ::  Core.Text
       -- ^  Required. The name of the project in the form of @projects\/[PROJECT_ID]@, under which the occurrence is to be created. See 'parent'.
    -> Occurrence
       -- ^  Multipart request metadata. See 'payload'.
    -> ContainerAnalysisProjectsOccurrencesCreate
newContainerAnalysisProjectsOccurrencesCreate parent payload =
  ContainerAnalysisProjectsOccurrencesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContainerAnalysisProjectsOccurrencesCreate
         where
        type Rs ContainerAnalysisProjectsOccurrencesCreate =
             Occurrence
        type Scopes
               ContainerAnalysisProjectsOccurrencesCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ContainerAnalysisProjectsOccurrencesCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerAnalysisService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerAnalysisProjectsOccurrencesCreateResource)
                      Core.mempty

