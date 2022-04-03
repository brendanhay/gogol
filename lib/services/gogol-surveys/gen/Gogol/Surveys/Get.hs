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
-- Module      : Gogol.Surveys.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the specified survey.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference> for @surveys.surveys.get@.
module Gogol.Surveys.Get
  ( -- * Resource
    SurveysSurveysGetResource,

    -- ** Constructing a Request
    SurveysSurveysGet (..),
    newSurveysSurveysGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Surveys.Types

-- | A resource alias for @surveys.surveys.get@ method which the
-- 'SurveysSurveysGet' request conforms to.
type SurveysSurveysGetResource =
  "surveys"
    Core.:> "v2"
    Core.:> "surveys"
    Core.:> Core.Capture "surveyUrlId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Survey

-- | Retrieves information about the specified survey.
--
-- /See:/ 'newSurveysSurveysGet' smart constructor.
newtype SurveysSurveysGet = SurveysSurveysGet
  { -- | External URL ID for the survey.
    surveyUrlId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveysSurveysGet' with the minimum fields required to make a request.
newSurveysSurveysGet ::
  -- |  External URL ID for the survey. See 'surveyUrlId'.
  Core.Text ->
  SurveysSurveysGet
newSurveysSurveysGet surveyUrlId = SurveysSurveysGet {surveyUrlId = surveyUrlId}

instance Core.GoogleRequest SurveysSurveysGet where
  type Rs SurveysSurveysGet = Survey
  type
    Scopes SurveysSurveysGet =
      '[ Surveys'FullControl,
         Surveys'Readonly,
         Userinfo'Email
       ]
  requestClient SurveysSurveysGet {..} =
    go
      surveyUrlId
      (Core.Just Core.AltJSON)
      surveysService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SurveysSurveysGetResource)
          Core.mempty
