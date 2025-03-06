{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ReCaptchaEnterprise.Projects.Assessments.Annotate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Annotates a previously created Assessment to provide additional information on whether the event turned out to be authentic or fraudulent.
--
-- /See:/ <https://cloud.google.com/recaptcha-enterprise/ reCAPTCHA Enterprise API Reference> for @recaptchaenterprise.projects.assessments.annotate@.
module Gogol.ReCaptchaEnterprise.Projects.Assessments.Annotate
  ( -- * Resource
    ReCaptchaEnterpriseProjectsAssessmentsAnnotateResource,

    -- ** Constructing a Request
    ReCaptchaEnterpriseProjectsAssessmentsAnnotate (..),
    newReCaptchaEnterpriseProjectsAssessmentsAnnotate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReCaptchaEnterprise.Types

-- | A resource alias for @recaptchaenterprise.projects.assessments.annotate@ method which the
-- 'ReCaptchaEnterpriseProjectsAssessmentsAnnotate' request conforms to.
type ReCaptchaEnterpriseProjectsAssessmentsAnnotateResource =
  "v1"
    Core.:> Core.CaptureMode "name" "annotate" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
    Core.:> Core.Post
              '[Core.JSON]
              GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse

-- | Annotates a previously created Assessment to provide additional information on whether the event turned out to be authentic or fraudulent.
--
-- /See:/ 'newReCaptchaEnterpriseProjectsAssessmentsAnnotate' smart constructor.
data ReCaptchaEnterpriseProjectsAssessmentsAnnotate = ReCaptchaEnterpriseProjectsAssessmentsAnnotate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Assessment, in the format @projects\/{project}\/assessments\/{assessment}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReCaptchaEnterpriseProjectsAssessmentsAnnotate' with the minimum fields required to make a request.
newReCaptchaEnterpriseProjectsAssessmentsAnnotate ::
  -- |  Required. The resource name of the Assessment, in the format @projects\/{project}\/assessments\/{assessment}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest ->
  ReCaptchaEnterpriseProjectsAssessmentsAnnotate
newReCaptchaEnterpriseProjectsAssessmentsAnnotate name payload =
  ReCaptchaEnterpriseProjectsAssessmentsAnnotate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ReCaptchaEnterpriseProjectsAssessmentsAnnotate
  where
  type
    Rs ReCaptchaEnterpriseProjectsAssessmentsAnnotate =
      GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
  type
    Scopes ReCaptchaEnterpriseProjectsAssessmentsAnnotate =
      '[CloudPlatform'FullControl]
  requestClient ReCaptchaEnterpriseProjectsAssessmentsAnnotate {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      reCaptchaEnterpriseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ReCaptchaEnterpriseProjectsAssessmentsAnnotateResource
          )
          Core.mempty
