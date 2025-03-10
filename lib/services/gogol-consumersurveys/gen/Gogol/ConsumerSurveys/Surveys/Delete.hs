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
-- Module      : Gogol.ConsumerSurveys.Surveys.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a survey from view in all user GET requests.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.surveys.delete@.
module Gogol.ConsumerSurveys.Surveys.Delete
  ( -- * Resource
    ConsumerSurveysSurveysDeleteResource,

    -- ** Constructing a Request
    ConsumerSurveysSurveysDelete (..),
    newConsumerSurveysSurveysDelete,
  )
where

import Gogol.ConsumerSurveys.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @consumersurveys.surveys.delete@ method which the
-- 'ConsumerSurveysSurveysDelete' request conforms to.
type ConsumerSurveysSurveysDeleteResource =
  "consumersurveys"
    Core.:> "v2"
    Core.:> "surveys"
    Core.:> Core.Capture "surveyUrlId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] SurveysDeleteResponse

-- | Removes a survey from view in all user GET requests.
--
-- /See:/ 'newConsumerSurveysSurveysDelete' smart constructor.
newtype ConsumerSurveysSurveysDelete = ConsumerSurveysSurveysDelete
  { -- | External URL ID for the survey.
    surveyUrlId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsumerSurveysSurveysDelete' with the minimum fields required to make a request.
newConsumerSurveysSurveysDelete ::
  -- |  External URL ID for the survey. See 'surveyUrlId'.
  Core.Text ->
  ConsumerSurveysSurveysDelete
newConsumerSurveysSurveysDelete surveyUrlId =
  ConsumerSurveysSurveysDelete {surveyUrlId = surveyUrlId}

instance Core.GoogleRequest ConsumerSurveysSurveysDelete where
  type Rs ConsumerSurveysSurveysDelete = SurveysDeleteResponse
  type
    Scopes ConsumerSurveysSurveysDelete =
      '[Consumersurveys'FullControl, Userinfo'Email]
  requestClient ConsumerSurveysSurveysDelete {..} =
    go surveyUrlId (Core.Just Core.AltJSON) consumerSurveysService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ConsumerSurveysSurveysDeleteResource)
          Core.mempty
