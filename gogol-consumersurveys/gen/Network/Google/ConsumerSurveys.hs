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
-- Module      : Network.Google.ConsumerSurveys
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and conducts surveys, lists the surveys that an authenticated user owns, and retrieves survey results and information about specified surveys.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference>
module Network.Google.ConsumerSurveys
  ( -- * Configuration
    consumerSurveysService,

    -- * OAuth Scopes
    consumerSurveysScope,
    consumerSurveysReadOnlyScope,
    userinfoEmailScope,

    -- * Resources

    -- ** consumersurveys.mobileapppanels.get
    ConsumerSurveysMobileapppanelsGetResource,
    newConsumerSurveysMobileapppanelsGet,
    ConsumerSurveysMobileapppanelsGet,

    -- ** consumersurveys.mobileapppanels.list
    ConsumerSurveysMobileapppanelsListResource,
    newConsumerSurveysMobileapppanelsList,
    ConsumerSurveysMobileapppanelsList,

    -- ** consumersurveys.mobileapppanels.update
    ConsumerSurveysMobileapppanelsUpdateResource,
    newConsumerSurveysMobileapppanelsUpdate,
    ConsumerSurveysMobileapppanelsUpdate,

    -- ** consumersurveys.results.get
    ConsumerSurveysResultsGetResource,
    newConsumerSurveysResultsGet,
    ConsumerSurveysResultsGet,

    -- ** consumersurveys.surveys.delete
    ConsumerSurveysSurveysDeleteResource,
    newConsumerSurveysSurveysDelete,
    ConsumerSurveysSurveysDelete,

    -- ** consumersurveys.surveys.get
    ConsumerSurveysSurveysGetResource,
    newConsumerSurveysSurveysGet,
    ConsumerSurveysSurveysGet,

    -- ** consumersurveys.surveys.insert
    ConsumerSurveysSurveysInsertResource,
    newConsumerSurveysSurveysInsert,
    ConsumerSurveysSurveysInsert,

    -- ** consumersurveys.surveys.list
    ConsumerSurveysSurveysListResource,
    newConsumerSurveysSurveysList,
    ConsumerSurveysSurveysList,

    -- ** consumersurveys.surveys.start
    ConsumerSurveysSurveysStartResource,
    newConsumerSurveysSurveysStart,
    ConsumerSurveysSurveysStart,

    -- ** consumersurveys.surveys.stop
    ConsumerSurveysSurveysStopResource,
    newConsumerSurveysSurveysStop,
    ConsumerSurveysSurveysStop,

    -- ** consumersurveys.surveys.update
    ConsumerSurveysSurveysUpdateResource,
    newConsumerSurveysSurveysUpdate,
    ConsumerSurveysSurveysUpdate,

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

import Network.Google.ConsumerSurveys.Mobileapppanels.Get
import Network.Google.ConsumerSurveys.Mobileapppanels.List
import Network.Google.ConsumerSurveys.Mobileapppanels.Update
import Network.Google.ConsumerSurveys.Results.Get
import Network.Google.ConsumerSurveys.Surveys.Delete
import Network.Google.ConsumerSurveys.Surveys.Get
import Network.Google.ConsumerSurveys.Surveys.Insert
import Network.Google.ConsumerSurveys.Surveys.List
import Network.Google.ConsumerSurveys.Surveys.Start
import Network.Google.ConsumerSurveys.Surveys.Stop
import Network.Google.ConsumerSurveys.Surveys.Update
import Network.Google.ConsumerSurveys.Types
