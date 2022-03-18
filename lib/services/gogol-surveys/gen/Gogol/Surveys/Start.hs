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
-- Module      : Gogol.Surveys.Start
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Begins running a survey.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference> for @surveys.surveys.start@.
module Gogol.Surveys.Start
  ( -- * Resource
    SurveysSurveysStartResource,

    -- ** Constructing a Request
    newSurveysSurveysStart,
    SurveysSurveysStart,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Surveys.Types

-- | A resource alias for @surveys.surveys.start@ method which the
-- 'SurveysSurveysStart' request conforms to.
type SurveysSurveysStartResource =
  "surveys"
    Core.:> "v2"
    Core.:> "surveys"
    Core.:> Core.Capture "resourceId" Core.Text
    Core.:> "start"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SurveysStartRequest
    Core.:> Core.Post '[Core.JSON] SurveysStartResponse

-- | Begins running a survey.
--
-- /See:/ 'newSurveysSurveysStart' smart constructor.
data SurveysSurveysStart = SurveysSurveysStart
  { -- | Multipart request metadata.
    payload :: SurveysStartRequest,
    -- |
    resourceId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveysSurveysStart' with the minimum fields required to make a request.
newSurveysSurveysStart ::
  -- |  Multipart request metadata. See 'payload'.
  SurveysStartRequest ->
  -- |  See 'resourceId'.
  Core.Text ->
  SurveysSurveysStart
newSurveysSurveysStart payload resourceId =
  SurveysSurveysStart {payload = payload, resourceId = resourceId}

instance Core.GoogleRequest SurveysSurveysStart where
  type Rs SurveysSurveysStart = SurveysStartResponse
  type
    Scopes SurveysSurveysStart =
      '[ "https://www.googleapis.com/auth/surveys",
         "https://www.googleapis.com/auth/userinfo.email"
       ]
  requestClient SurveysSurveysStart {..} =
    go
      resourceId
      (Core.Just Core.AltJSON)
      payload
      surveysService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SurveysSurveysStartResource
          )
          Core.mempty
