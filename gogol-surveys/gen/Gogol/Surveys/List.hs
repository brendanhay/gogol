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
-- Module      : Gogol.Surveys.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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
    newSurveysSurveysList,
    SurveysSurveysList,
  )
where

import qualified Gogol.Prelude as Core
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
  { -- |
    maxResults :: (Core.Maybe Core.Word32),
    -- |
    startIndex :: (Core.Maybe Core.Word32),
    -- |
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
      '[ "https://www.googleapis.com/auth/surveys",
         "https://www.googleapis.com/auth/surveys.readonly",
         "https://www.googleapis.com/auth/userinfo.email"
       ]
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
