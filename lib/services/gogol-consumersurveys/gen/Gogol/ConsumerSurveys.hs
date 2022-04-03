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
-- Module      : Gogol.ConsumerSurveys
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and conducts surveys, lists the surveys that an authenticated user owns, and retrieves survey results and information about specified surveys.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference>
module Gogol.ConsumerSurveys
  ( -- * Configuration
    consumerSurveysService,

    -- * OAuth Scopes
    Consumersurveys'FullControl,
    Consumersurveys'Readonly,
    Userinfo'Email,

    -- * Resources

    -- ** consumersurveys.mobileapppanels.get
    ConsumerSurveysMobileapppanelsGetResource,
    ConsumerSurveysMobileapppanelsGet (..),
    newConsumerSurveysMobileapppanelsGet,

    -- ** consumersurveys.mobileapppanels.list
    ConsumerSurveysMobileapppanelsListResource,
    ConsumerSurveysMobileapppanelsList (..),
    newConsumerSurveysMobileapppanelsList,

    -- ** consumersurveys.mobileapppanels.update
    ConsumerSurveysMobileapppanelsUpdateResource,
    ConsumerSurveysMobileapppanelsUpdate (..),
    newConsumerSurveysMobileapppanelsUpdate,

    -- ** consumersurveys.results.get
    ConsumerSurveysResultsGetResource,
    ConsumerSurveysResultsGet (..),
    newConsumerSurveysResultsGet,

    -- ** consumersurveys.surveys.delete
    ConsumerSurveysSurveysDeleteResource,
    ConsumerSurveysSurveysDelete (..),
    newConsumerSurveysSurveysDelete,

    -- ** consumersurveys.surveys.get
    ConsumerSurveysSurveysGetResource,
    ConsumerSurveysSurveysGet (..),
    newConsumerSurveysSurveysGet,

    -- ** consumersurveys.surveys.insert
    ConsumerSurveysSurveysInsertResource,
    ConsumerSurveysSurveysInsert (..),
    newConsumerSurveysSurveysInsert,

    -- ** consumersurveys.surveys.list
    ConsumerSurveysSurveysListResource,
    ConsumerSurveysSurveysList (..),
    newConsumerSurveysSurveysList,

    -- ** consumersurveys.surveys.start
    ConsumerSurveysSurveysStartResource,
    ConsumerSurveysSurveysStart (..),
    newConsumerSurveysSurveysStart,

    -- ** consumersurveys.surveys.stop
    ConsumerSurveysSurveysStopResource,
    ConsumerSurveysSurveysStop (..),
    newConsumerSurveysSurveysStop,

    -- ** consumersurveys.surveys.update
    ConsumerSurveysSurveysUpdateResource,
    ConsumerSurveysSurveysUpdate (..),
    newConsumerSurveysSurveysUpdate,

    -- * Types

    -- ** FieldMask
    FieldMask (..),
    newFieldMask,

    -- ** MobileAppPanel
    MobileAppPanel (..),
    newMobileAppPanel,

    -- ** MobileAppPanelsListResponse
    MobileAppPanelsListResponse (..),
    newMobileAppPanelsListResponse,

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

import Gogol.ConsumerSurveys.Mobileapppanels.Get
import Gogol.ConsumerSurveys.Mobileapppanels.List
import Gogol.ConsumerSurveys.Mobileapppanels.Update
import Gogol.ConsumerSurveys.Results.Get
import Gogol.ConsumerSurveys.Surveys.Delete
import Gogol.ConsumerSurveys.Surveys.Get
import Gogol.ConsumerSurveys.Surveys.Insert
import Gogol.ConsumerSurveys.Surveys.List
import Gogol.ConsumerSurveys.Surveys.Start
import Gogol.ConsumerSurveys.Surveys.Stop
import Gogol.ConsumerSurveys.Surveys.Update
import Gogol.ConsumerSurveys.Types
