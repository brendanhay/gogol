{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Surveys.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a survey from view in all user GET requests.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference> for @surveys.surveys.delete@.
module Gogol.Surveys.Delete
    (
    -- * Resource
      SurveysSurveysDeleteResource

    -- ** Constructing a Request
    , newSurveysSurveysDelete
    , SurveysSurveysDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Surveys.Types

-- | A resource alias for @surveys.surveys.delete@ method which the
-- 'SurveysSurveysDelete' request conforms to.
type SurveysSurveysDeleteResource =
     "surveys" Core.:>
       "v2" Core.:>
         "surveys" Core.:>
           Core.Capture "surveyUrlId" Core.Text Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.Delete '[Core.JSON] SurveysDeleteResponse

-- | Removes a survey from view in all user GET requests.
--
-- /See:/ 'newSurveysSurveysDelete' smart constructor.
newtype SurveysSurveysDelete = SurveysSurveysDelete
    {
      -- | External URL ID for the survey.
      surveyUrlId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveysSurveysDelete' with the minimum fields required to make a request.
newSurveysSurveysDelete 
    ::  Core.Text
       -- ^  External URL ID for the survey. See 'surveyUrlId'.
    -> SurveysSurveysDelete
newSurveysSurveysDelete surveyUrlId =
  SurveysSurveysDelete {surveyUrlId = surveyUrlId}

instance Core.GoogleRequest SurveysSurveysDelete
         where
        type Rs SurveysSurveysDelete = SurveysDeleteResponse
        type Scopes SurveysSurveysDelete =
             '["https://www.googleapis.com/auth/surveys",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient SurveysSurveysDelete{..}
          = go surveyUrlId (Core.Just Core.AltJSON)
              surveysService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SurveysSurveysDeleteResource)
                      Core.mempty

