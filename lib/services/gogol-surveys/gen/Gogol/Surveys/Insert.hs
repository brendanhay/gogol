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
-- Module      : Gogol.Surveys.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a survey.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference> for @surveys.surveys.insert@.
module Gogol.Surveys.Insert
  ( -- * Resource
    SurveysSurveysInsertResource,

    -- ** Constructing a Request
    SurveysSurveysInsert (..),
    newSurveysSurveysInsert,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Surveys.Types

-- | A resource alias for @surveys.surveys.insert@ method which the
-- 'SurveysSurveysInsert' request conforms to.
type SurveysSurveysInsertResource =
  "surveys"
    Core.:> "v2"
    Core.:> "surveys"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Survey
    Core.:> Core.Post '[Core.JSON] Survey

-- | Creates a survey.
--
-- /See:/ 'newSurveysSurveysInsert' smart constructor.
newtype SurveysSurveysInsert = SurveysSurveysInsert
  { -- | Multipart request metadata.
    payload :: Survey
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveysSurveysInsert' with the minimum fields required to make a request.
newSurveysSurveysInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Survey ->
  SurveysSurveysInsert
newSurveysSurveysInsert payload =
  SurveysSurveysInsert {payload = payload}

instance Core.GoogleRequest SurveysSurveysInsert where
  type Rs SurveysSurveysInsert = Survey
  type
    Scopes SurveysSurveysInsert =
      '[Surveys'FullControl, Userinfo'Email]
  requestClient SurveysSurveysInsert {..} =
    go (Core.Just Core.AltJSON) payload surveysService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SurveysSurveysInsertResource)
          Core.mempty
