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
-- Module      : Gogol.ContainerAnalysis.Projects.Occurrences.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a note or an occurrence resource. Requires @containeranalysis.notes.setIamPolicy@ or @containeranalysis.occurrences.setIamPolicy@ permission if the resource is a note or occurrence, respectively. The resource takes the format @projects\/[PROJECT_ID]\/notes\/[NOTE_ID]@ for notes and @projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]@ for occurrences.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.occurrences.getIamPolicy@.
module Gogol.ContainerAnalysis.Projects.Occurrences.GetIamPolicy
  ( -- * Resource
    ContainerAnalysisProjectsOccurrencesGetIamPolicyResource,

    -- ** Constructing a Request
    ContainerAnalysisProjectsOccurrencesGetIamPolicy (..),
    newContainerAnalysisProjectsOccurrencesGetIamPolicy,
  )
where

import Gogol.ContainerAnalysis.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @containeranalysis.projects.occurrences.getIamPolicy@ method which the
-- 'ContainerAnalysisProjectsOccurrencesGetIamPolicy' request conforms to.
type ContainerAnalysisProjectsOccurrencesGetIamPolicyResource =
  "v1"
    Core.:> Core.CaptureMode "resource" "getIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Gets the access control policy for a note or an occurrence resource. Requires @containeranalysis.notes.setIamPolicy@ or @containeranalysis.occurrences.setIamPolicy@ permission if the resource is a note or occurrence, respectively. The resource takes the format @projects\/[PROJECT_ID]\/notes\/[NOTE_ID]@ for notes and @projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]@ for occurrences.
--
-- /See:/ 'newContainerAnalysisProjectsOccurrencesGetIamPolicy' smart constructor.
data ContainerAnalysisProjectsOccurrencesGetIamPolicy = ContainerAnalysisProjectsOccurrencesGetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerAnalysisProjectsOccurrencesGetIamPolicy' with the minimum fields required to make a request.
newContainerAnalysisProjectsOccurrencesGetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  GetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
  Core.Text ->
  ContainerAnalysisProjectsOccurrencesGetIamPolicy
newContainerAnalysisProjectsOccurrencesGetIamPolicy payload resource =
  ContainerAnalysisProjectsOccurrencesGetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContainerAnalysisProjectsOccurrencesGetIamPolicy
  where
  type
    Rs
      ContainerAnalysisProjectsOccurrencesGetIamPolicy =
      Policy
  type
    Scopes
      ContainerAnalysisProjectsOccurrencesGetIamPolicy =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerAnalysisProjectsOccurrencesGetIamPolicy {..} =
      go
        resource
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        containerAnalysisService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContainerAnalysisProjectsOccurrencesGetIamPolicyResource
            )
            Core.mempty
