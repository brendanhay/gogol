{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Surveys.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a survey. Currently the only property that can be updated is the owners property.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference> for @surveys.surveys.update@.
module Gogol.Surveys.Update
  ( -- * Resource
    SurveysSurveysUpdateResource,

    -- ** Constructing a Request
    SurveysSurveysUpdate (..),
    newSurveysSurveysUpdate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Surveys.Types

-- | A resource alias for @surveys.surveys.update@ method which the
-- 'SurveysSurveysUpdate' request conforms to.
type SurveysSurveysUpdateResource =
  "surveys"
    Core.:> "v2"
    Core.:> "surveys"
    Core.:> Core.Capture "surveyUrlId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Survey
    Core.:> Core.Put '[Core.JSON] Survey

-- | Updates a survey. Currently the only property that can be updated is the owners property.
--
-- /See:/ 'newSurveysSurveysUpdate' smart constructor.
data SurveysSurveysUpdate = SurveysSurveysUpdate
  { -- | Multipart request metadata.
    payload :: Survey,
    -- | External URL ID for the survey.
    surveyUrlId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveysSurveysUpdate' with the minimum fields required to make a request.
newSurveysSurveysUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  Survey ->
  -- |  External URL ID for the survey. See 'surveyUrlId'.
  Core.Text ->
  SurveysSurveysUpdate
newSurveysSurveysUpdate payload surveyUrlId =
  SurveysSurveysUpdate
    { payload = payload,
      surveyUrlId = surveyUrlId
    }

instance Core.GoogleRequest SurveysSurveysUpdate where
  type Rs SurveysSurveysUpdate = Survey
  type
    Scopes SurveysSurveysUpdate =
      '[Surveys'FullControl, Userinfo'Email]
  requestClient SurveysSurveysUpdate {..} =
    go surveyUrlId (Core.Just Core.AltJSON) payload surveysService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SurveysSurveysUpdateResource)
          Core.mempty
