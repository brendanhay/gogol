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
-- Module      : Gogol.ContainerAnalysis.Projects.Notes.Occurrences.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists occurrences referencing the specified note. Provider projects can use this method to get all occurrences across consumer projects referencing the specified note.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.notes.occurrences.list@.
module Gogol.ContainerAnalysis.Projects.Notes.Occurrences.List
    (
    -- * Resource
      ContainerAnalysisProjectsNotesOccurrencesListResource

    -- ** Constructing a Request
    , newContainerAnalysisProjectsNotesOccurrencesList
    , ContainerAnalysisProjectsNotesOccurrencesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerAnalysis.Types

-- | A resource alias for @containeranalysis.projects.notes.occurrences.list@ method which the
-- 'ContainerAnalysisProjectsNotesOccurrencesList' request conforms to.
type ContainerAnalysisProjectsNotesOccurrencesListResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         "occurrences" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListNoteOccurrencesResponse

-- | Lists occurrences referencing the specified note. Provider projects can use this method to get all occurrences across consumer projects referencing the specified note.
--
-- /See:/ 'newContainerAnalysisProjectsNotesOccurrencesList' smart constructor.
data ContainerAnalysisProjectsNotesOccurrencesList = ContainerAnalysisProjectsNotesOccurrencesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The filter expression.
    , filter :: (Core.Maybe Core.Text)
      -- | Required. The name of the note to list occurrences for in the form of @projects\/[PROVIDER_ID]\/notes\/[NOTE_ID]@.
    , name :: Core.Text
      -- | Number of occurrences to return in the list.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Token to provide to skip to a particular spot in the list.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerAnalysisProjectsNotesOccurrencesList' with the minimum fields required to make a request.
newContainerAnalysisProjectsNotesOccurrencesList 
    ::  Core.Text
       -- ^  Required. The name of the note to list occurrences for in the form of @projects\/[PROVIDER_ID]\/notes\/[NOTE_ID]@. See 'name'.
    -> ContainerAnalysisProjectsNotesOccurrencesList
newContainerAnalysisProjectsNotesOccurrencesList name =
  ContainerAnalysisProjectsNotesOccurrencesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , name = name
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContainerAnalysisProjectsNotesOccurrencesList
         where
        type Rs ContainerAnalysisProjectsNotesOccurrencesList
             = ListNoteOccurrencesResponse
        type Scopes
               ContainerAnalysisProjectsNotesOccurrencesList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ContainerAnalysisProjectsNotesOccurrencesList{..}
          = go name xgafv accessToken callback filter pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              containerAnalysisService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerAnalysisProjectsNotesOccurrencesListResource)
                      Core.mempty

