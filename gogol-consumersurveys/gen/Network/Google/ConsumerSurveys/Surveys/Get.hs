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
-- Module      : Network.Google.ConsumerSurveys.Surveys.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the specified survey.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.surveys.get@.
module Network.Google.ConsumerSurveys.Surveys.Get
  ( -- * Resource
    ConsumerSurveysSurveysGetResource,

    -- ** Constructing a Request
    newConsumerSurveysSurveysGet,
    ConsumerSurveysSurveysGet,
  )
where

import Network.Google.ConsumerSurveys.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @consumersurveys.surveys.get@ method which the
-- 'ConsumerSurveysSurveysGet' request conforms to.
type ConsumerSurveysSurveysGetResource =
  "consumersurveys"
    Core.:> "v2"
    Core.:> "surveys"
    Core.:> Core.Capture "surveyUrlId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Survey

-- | Retrieves information about the specified survey.
--
-- /See:/ 'newConsumerSurveysSurveysGet' smart constructor.
newtype ConsumerSurveysSurveysGet = ConsumerSurveysSurveysGet
  { -- | External URL ID for the survey.
    surveyUrlId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsumerSurveysSurveysGet' with the minimum fields required to make a request.
newConsumerSurveysSurveysGet ::
  -- |  External URL ID for the survey. See 'surveyUrlId'.
  Core.Text ->
  ConsumerSurveysSurveysGet
newConsumerSurveysSurveysGet surveyUrlId =
  ConsumerSurveysSurveysGet {surveyUrlId = surveyUrlId}

instance Core.GoogleRequest ConsumerSurveysSurveysGet where
  type Rs ConsumerSurveysSurveysGet = Survey
  type
    Scopes ConsumerSurveysSurveysGet =
      '[ "https://www.googleapis.com/auth/consumersurveys",
         "https://www.googleapis.com/auth/consumersurveys.readonly",
         "https://www.googleapis.com/auth/userinfo.email"
       ]
  requestClient ConsumerSurveysSurveysGet {..} =
    go
      surveyUrlId
      (Core.Just Core.AltJSON)
      consumerSurveysService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ConsumerSurveysSurveysGetResource
          )
          Core.mempty
