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
-- Module      : Gogol.Surveys.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the surveys owned by the authenticated user.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference> for @surveys.surveys.list@.
module Gogol.Surveys.List
  ( -- * Resource
    SurveysSurveysListResource,

    -- ** Constructing a Request
    SurveysSurveysList (..),
    newSurveysSurveysList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Surveys.Types

-- | A resource alias for @surveys.surveys.list@ method which the
-- 'SurveysSurveysList' request conforms to.
type SurveysSurveysListResource =
  "surveys"
    Core.:> "v2"
    Core.:> "surveys"
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "startIndex" Core.Word32
    Core.:> Core.QueryParam "token" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SurveysListResponse

-- | Lists the surveys owned by the authenticated user.
--
-- /See:/ 'newSurveysSurveysList' smart constructor.
data SurveysSurveysList = SurveysSurveysList
  { maxResults :: (Core.Maybe Core.Word32),
    startIndex :: (Core.Maybe Core.Word32),
    token :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveysSurveysList' with the minimum fields required to make a request.
newSurveysSurveysList ::
  SurveysSurveysList
newSurveysSurveysList =
  SurveysSurveysList
    { maxResults = Core.Nothing,
      startIndex = Core.Nothing,
      token = Core.Nothing
    }

instance Core.GoogleRequest SurveysSurveysList where
  type Rs SurveysSurveysList = SurveysListResponse
  type
    Scopes SurveysSurveysList =
      '[Surveys'FullControl, Surveys'Readonly, Userinfo'Email]
  requestClient SurveysSurveysList {..} =
    go
      maxResults
      startIndex
      token
      (Core.Just Core.AltJSON)
      surveysService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SurveysSurveysListResource)
          Core.mempty
