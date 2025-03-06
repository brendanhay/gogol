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
-- Module      : Gogol.Surveys
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and conducts surveys, lists the surveys that an authenticated user owns, and retrieves survey results and information about specified surveys.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference>
module Gogol.Surveys
  ( -- * Configuration
    surveysService,

    -- * OAuth Scopes
    Surveys'FullControl,
    Surveys'Readonly,
    Userinfo'Email,

    -- * Resources

    -- ** surveys.results.get
    SurveysResultsGetResource,
    SurveysResultsGet (..),
    newSurveysResultsGet,

    -- ** surveys.surveys.delete
    SurveysSurveysDeleteResource,
    SurveysSurveysDelete (..),
    newSurveysSurveysDelete,

    -- ** surveys.surveys.get
    SurveysSurveysGetResource,
    SurveysSurveysGet (..),
    newSurveysSurveysGet,

    -- ** surveys.surveys.insert
    SurveysSurveysInsertResource,
    SurveysSurveysInsert (..),
    newSurveysSurveysInsert,

    -- ** surveys.surveys.list
    SurveysSurveysListResource,
    SurveysSurveysList (..),
    newSurveysSurveysList,

    -- ** surveys.surveys.start
    SurveysSurveysStartResource,
    SurveysSurveysStart (..),
    newSurveysSurveysStart,

    -- ** surveys.surveys.stop
    SurveysSurveysStopResource,
    SurveysSurveysStop (..),
    newSurveysSurveysStop,

    -- ** surveys.surveys.update
    SurveysSurveysUpdateResource,
    SurveysSurveysUpdate (..),
    newSurveysSurveysUpdate,

    -- * Types

    -- ** FieldMask
    FieldMask (..),
    newFieldMask,

    -- ** PageInfo
    PageInfo (..),
    newPageInfo,

    -- ** ResultsGetRequest
    ResultsGetRequest (..),
    newResultsGetRequest,

    -- ** ResultsMask
    ResultsMask (..),
    newResultsMask,

    -- ** Survey
    Survey (..),
    newSurvey,

    -- ** SurveyAudience
    SurveyAudience (..),
    newSurveyAudience,

    -- ** SurveyCost
    SurveyCost (..),
    newSurveyCost,

    -- ** SurveyQuestion
    SurveyQuestion (..),
    newSurveyQuestion,

    -- ** SurveyQuestionImage
    SurveyQuestionImage (..),
    newSurveyQuestionImage,

    -- ** SurveyRejection
    SurveyRejection (..),
    newSurveyRejection,

    -- ** SurveyResults
    SurveyResults (..),
    newSurveyResults,

    -- ** SurveysDeleteResponse
    SurveysDeleteResponse (..),
    newSurveysDeleteResponse,

    -- ** SurveysListResponse
    SurveysListResponse (..),
    newSurveysListResponse,

    -- ** SurveysStartRequest
    SurveysStartRequest (..),
    newSurveysStartRequest,

    -- ** SurveysStartResponse
    SurveysStartResponse (..),
    newSurveysStartResponse,

    -- ** SurveysStopResponse
    SurveysStopResponse (..),
    newSurveysStopResponse,

    -- ** TokenPagination
    TokenPagination (..),
    newTokenPagination,
  )
where

import Gogol.Surveys.Delete
import Gogol.Surveys.Get
import Gogol.Surveys.Insert
import Gogol.Surveys.List
import Gogol.Surveys.Results.Get
import Gogol.Surveys.Start
import Gogol.Surveys.Stop
import Gogol.Surveys.Types
import Gogol.Surveys.Update
