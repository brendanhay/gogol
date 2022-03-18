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
-- Module      : Network.Google.ConsumerSurveys.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.ConsumerSurveys.Types
  ( -- * Configuration
    consumerSurveysService,

    -- * OAuth Scopes
    consumerSurveysScope,
    consumerSurveysReadOnlyScope,
    userinfoEmailScope,

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

import Network.Google.ConsumerSurveys.Internal.Product
import Network.Google.ConsumerSurveys.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v2@ of the Consumer Surveys API. This contains the host and root path used as a starting point for constructing service requests.
consumerSurveysService :: Core.ServiceConfig
consumerSurveysService =
  Core.defaultService
    (Core.ServiceId "consumersurveys:v2")
    "www.googleapis.com"

-- | View and edit your surveys and results
consumerSurveysScope :: Core.Proxy '["https://www.googleapis.com/auth/consumersurveys"]
consumerSurveysScope = Core.Proxy

-- | View the results for your surveys
consumerSurveysReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/consumersurveys.readonly"]
consumerSurveysReadOnlyScope = Core.Proxy

-- | View your email address
userinfoEmailScope :: Core.Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userinfoEmailScope = Core.Proxy
