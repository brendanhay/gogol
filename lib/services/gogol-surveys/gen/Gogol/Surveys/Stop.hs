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
-- Module      : Gogol.Surveys.Stop
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a running survey.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference> for @surveys.surveys.stop@.
module Gogol.Surveys.Stop
  ( -- * Resource
    SurveysSurveysStopResource,

    -- ** Constructing a Request
    newSurveysSurveysStop,
    SurveysSurveysStop,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Surveys.Types

-- | A resource alias for @surveys.surveys.stop@ method which the
-- 'SurveysSurveysStop' request conforms to.
type SurveysSurveysStopResource =
  "surveys"
    Core.:> "v2"
    Core.:> "surveys"
    Core.:> Core.Capture "resourceId" Core.Text
    Core.:> "stop"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] SurveysStopResponse

-- | Stops a running survey.
--
-- /See:/ 'newSurveysSurveysStop' smart constructor.
newtype SurveysSurveysStop = SurveysSurveysStop
  { -- |
    resourceId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveysSurveysStop' with the minimum fields required to make a request.
newSurveysSurveysStop ::
  -- |  See 'resourceId'.
  Core.Text ->
  SurveysSurveysStop
newSurveysSurveysStop resourceId = SurveysSurveysStop {resourceId = resourceId}

instance Core.GoogleRequest SurveysSurveysStop where
  type Rs SurveysSurveysStop = SurveysStopResponse
  type
    Scopes SurveysSurveysStop =
      '[Surveys'FullControl, Userinfo'Email]
  requestClient SurveysSurveysStop {..} =
    go
      resourceId
      (Core.Just Core.AltJSON)
      surveysService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SurveysSurveysStopResource)
          Core.mempty
