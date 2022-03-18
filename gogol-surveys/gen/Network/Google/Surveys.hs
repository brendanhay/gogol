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
-- Module      : Network.Google.Surveys
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and conducts surveys, lists the surveys that an authenticated user owns, and retrieves survey results and information about specified surveys.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference>
module Network.Google.Surveys
  ( -- * Configuration
    surveysService,

    -- * OAuth Scopes
    surveysScope,
    surveysReadOnlyScope,
    userinfoEmailScope,

    -- * Resources

    -- ** surveys.results.get
    SurveysResultsGetResource,
    newSurveysResultsGet,
    SurveysResultsGet,

    -- ** surveys.surveys.delete
    SurveysSurveysDeleteResource,
    newSurveysSurveysDelete,
    SurveysSurveysDelete,

    -- ** surveys.surveys.get
    SurveysSurveysGetResource,
    newSurveysSurveysGet,
    SurveysSurveysGet,

    -- ** surveys.surveys.insert
    SurveysSurveysInsertResource,
    newSurveysSurveysInsert,
    SurveysSurveysInsert,

    -- ** surveys.surveys.list
    SurveysSurveysListResource,
    newSurveysSurveysList,
    SurveysSurveysList,

    -- ** surveys.surveys.start
    SurveysSurveysStartResource,
    newSurveysSurveysStart,
    SurveysSurveysStart,

    -- ** surveys.surveys.stop
    SurveysSurveysStopResource,
    newSurveysSurveysStop,
    SurveysSurveysStop,

    -- ** surveys.surveys.update
    SurveysSurveysUpdateResource,
    newSurveysSurveysUpdate,
    SurveysSurveysUpdate,

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

import Network.Google.Surveys.Delete
import Network.Google.Surveys.Get
import Network.Google.Surveys.Insert
import Network.Google.Surveys.List
import Network.Google.Surveys.Results.Get
import Network.Google.Surveys.Start
import Network.Google.Surveys.Stop
import Network.Google.Surveys.Types
import Network.Google.Surveys.Update
