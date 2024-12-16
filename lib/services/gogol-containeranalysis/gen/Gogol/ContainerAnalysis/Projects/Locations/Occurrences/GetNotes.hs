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
-- Module      : Gogol.ContainerAnalysis.Projects.Locations.Occurrences.GetNotes
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the note attached to the specified occurrence. Consumer projects can use this method to get a note that belongs to a provider project.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.locations.occurrences.getNotes@.
module Gogol.ContainerAnalysis.Projects.Locations.Occurrences.GetNotes
    (
    -- * Resource
      ContainerAnalysisProjectsLocationsOccurrencesGetNotesResource

    -- ** Constructing a Request
    , ContainerAnalysisProjectsLocationsOccurrencesGetNotes (..)
    , newContainerAnalysisProjectsLocationsOccurrencesGetNotes
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerAnalysis.Types

-- | A resource alias for @containeranalysis.projects.locations.occurrences.getNotes@ method which the
-- 'ContainerAnalysisProjectsLocationsOccurrencesGetNotes' request conforms to.
type ContainerAnalysisProjectsLocationsOccurrencesGetNotesResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         "notes" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] Note

-- | Gets the note attached to the specified occurrence. Consumer projects can use this method to get a note that belongs to a provider project.
--
-- /See:/ 'newContainerAnalysisProjectsLocationsOccurrencesGetNotes' smart constructor.
data ContainerAnalysisProjectsLocationsOccurrencesGetNotes = ContainerAnalysisProjectsLocationsOccurrencesGetNotes
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the occurrence in the form of @projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerAnalysisProjectsLocationsOccurrencesGetNotes' with the minimum fields required to make a request.
newContainerAnalysisProjectsLocationsOccurrencesGetNotes 
    ::  Core.Text
       -- ^  Required. The name of the occurrence in the form of @projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]@. See 'name'.
    -> ContainerAnalysisProjectsLocationsOccurrencesGetNotes
newContainerAnalysisProjectsLocationsOccurrencesGetNotes name =
  ContainerAnalysisProjectsLocationsOccurrencesGetNotes
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContainerAnalysisProjectsLocationsOccurrencesGetNotes
         where
        type Rs
               ContainerAnalysisProjectsLocationsOccurrencesGetNotes
             = Note
        type Scopes
               ContainerAnalysisProjectsLocationsOccurrencesGetNotes
             = '[CloudPlatform'FullControl]
        requestClient
          ContainerAnalysisProjectsLocationsOccurrencesGetNotes{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              containerAnalysisService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerAnalysisProjectsLocationsOccurrencesGetNotesResource)
                      Core.mempty

