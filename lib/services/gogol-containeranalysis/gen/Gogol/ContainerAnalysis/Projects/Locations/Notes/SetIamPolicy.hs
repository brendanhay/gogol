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
-- Module      : Gogol.ContainerAnalysis.Projects.Locations.Notes.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified note or occurrence. Requires @containeranalysis.notes.setIamPolicy@ or @containeranalysis.occurrences.setIamPolicy@ permission if the resource is a note or an occurrence, respectively. The resource takes the format @projects\/[PROJECT_ID]\/notes\/[NOTE_ID]@ for notes and @projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]@ for occurrences.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.locations.notes.setIamPolicy@.
module Gogol.ContainerAnalysis.Projects.Locations.Notes.SetIamPolicy
    (
    -- * Resource
      ContainerAnalysisProjectsLocationsNotesSetIamPolicyResource

    -- ** Constructing a Request
    , ContainerAnalysisProjectsLocationsNotesSetIamPolicy (..)
    , newContainerAnalysisProjectsLocationsNotesSetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerAnalysis.Types

-- | A resource alias for @containeranalysis.projects.locations.notes.setIamPolicy@ method which the
-- 'ContainerAnalysisProjectsLocationsNotesSetIamPolicy' request conforms to.
type ContainerAnalysisProjectsLocationsNotesSetIamPolicyResource
     =
     "v1" Core.:>
       Core.CaptureMode "resource" "setIamPolicy" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] SetIamPolicyRequest Core.:>
                       Core.Post '[Core.JSON] Policy

-- | Sets the access control policy on the specified note or occurrence. Requires @containeranalysis.notes.setIamPolicy@ or @containeranalysis.occurrences.setIamPolicy@ permission if the resource is a note or an occurrence, respectively. The resource takes the format @projects\/[PROJECT_ID]\/notes\/[NOTE_ID]@ for notes and @projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]@ for occurrences.
--
-- /See:/ 'newContainerAnalysisProjectsLocationsNotesSetIamPolicy' smart constructor.
data ContainerAnalysisProjectsLocationsNotesSetIamPolicy = ContainerAnalysisProjectsLocationsNotesSetIamPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: SetIamPolicyRequest
      -- | REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerAnalysisProjectsLocationsNotesSetIamPolicy' with the minimum fields required to make a request.
newContainerAnalysisProjectsLocationsNotesSetIamPolicy 
    ::  SetIamPolicyRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
    -> ContainerAnalysisProjectsLocationsNotesSetIamPolicy
newContainerAnalysisProjectsLocationsNotesSetIamPolicy payload resource =
  ContainerAnalysisProjectsLocationsNotesSetIamPolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContainerAnalysisProjectsLocationsNotesSetIamPolicy
         where
        type Rs
               ContainerAnalysisProjectsLocationsNotesSetIamPolicy
             = Policy
        type Scopes
               ContainerAnalysisProjectsLocationsNotesSetIamPolicy
             = '[CloudPlatform'FullControl]
        requestClient
          ContainerAnalysisProjectsLocationsNotesSetIamPolicy{..}
          = go resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerAnalysisService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerAnalysisProjectsLocationsNotesSetIamPolicyResource)
                      Core.mempty
