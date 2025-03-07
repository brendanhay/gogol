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
-- Module      : Gogol.ConsumerSurveys.Surveys.Stop
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a running survey.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.surveys.stop@.
module Gogol.ConsumerSurveys.Surveys.Stop
  ( -- * Resource
    ConsumerSurveysSurveysStopResource,

    -- ** Constructing a Request
    ConsumerSurveysSurveysStop (..),
    newConsumerSurveysSurveysStop,
  )
where

import Gogol.ConsumerSurveys.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @consumersurveys.surveys.stop@ method which the
-- 'ConsumerSurveysSurveysStop' request conforms to.
type ConsumerSurveysSurveysStopResource =
  "consumersurveys"
    Core.:> "v2"
    Core.:> "surveys"
    Core.:> Core.Capture "resourceId" Core.Text
    Core.:> "stop"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] SurveysStopResponse

-- | Stops a running survey.
--
-- /See:/ 'newConsumerSurveysSurveysStop' smart constructor.
newtype ConsumerSurveysSurveysStop = ConsumerSurveysSurveysStop
  { resourceId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsumerSurveysSurveysStop' with the minimum fields required to make a request.
newConsumerSurveysSurveysStop ::
  -- |  See 'resourceId'.
  Core.Text ->
  ConsumerSurveysSurveysStop
newConsumerSurveysSurveysStop resourceId =
  ConsumerSurveysSurveysStop {resourceId = resourceId}

instance Core.GoogleRequest ConsumerSurveysSurveysStop where
  type Rs ConsumerSurveysSurveysStop = SurveysStopResponse
  type
    Scopes ConsumerSurveysSurveysStop =
      '[Consumersurveys'FullControl, Userinfo'Email]
  requestClient ConsumerSurveysSurveysStop {..} =
    go resourceId (Core.Just Core.AltJSON) consumerSurveysService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ConsumerSurveysSurveysStopResource)
          Core.mempty
