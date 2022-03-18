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
-- Module      : Network.Google.ConsumerSurveys.Surveys.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a survey. Currently the only property that can be updated is the owners property.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.surveys.update@.
module Network.Google.ConsumerSurveys.Surveys.Update
  ( -- * Resource
    ConsumerSurveysSurveysUpdateResource,

    -- ** Constructing a Request
    newConsumerSurveysSurveysUpdate,
    ConsumerSurveysSurveysUpdate,
  )
where

import Network.Google.ConsumerSurveys.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @consumersurveys.surveys.update@ method which the
-- 'ConsumerSurveysSurveysUpdate' request conforms to.
type ConsumerSurveysSurveysUpdateResource =
  "consumersurveys"
    Core.:> "v2"
    Core.:> "surveys"
    Core.:> Core.Capture "surveyUrlId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Survey
    Core.:> Core.Put '[Core.JSON] Survey

-- | Updates a survey. Currently the only property that can be updated is the owners property.
--
-- /See:/ 'newConsumerSurveysSurveysUpdate' smart constructor.
data ConsumerSurveysSurveysUpdate = ConsumerSurveysSurveysUpdate
  { -- | Multipart request metadata.
    payload :: Survey,
    -- | External URL ID for the survey.
    surveyUrlId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsumerSurveysSurveysUpdate' with the minimum fields required to make a request.
newConsumerSurveysSurveysUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  Survey ->
  -- |  External URL ID for the survey. See 'surveyUrlId'.
  Core.Text ->
  ConsumerSurveysSurveysUpdate
newConsumerSurveysSurveysUpdate payload surveyUrlId =
  ConsumerSurveysSurveysUpdate {payload = payload, surveyUrlId = surveyUrlId}

instance
  Core.GoogleRequest
    ConsumerSurveysSurveysUpdate
  where
  type Rs ConsumerSurveysSurveysUpdate = Survey
  type
    Scopes ConsumerSurveysSurveysUpdate =
      '[ "https://www.googleapis.com/auth/consumersurveys",
         "https://www.googleapis.com/auth/userinfo.email"
       ]
  requestClient ConsumerSurveysSurveysUpdate {..} =
    go
      surveyUrlId
      (Core.Just Core.AltJSON)
      payload
      consumerSurveysService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ConsumerSurveysSurveysUpdateResource
          )
          Core.mempty
