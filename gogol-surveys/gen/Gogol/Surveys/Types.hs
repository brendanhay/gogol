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
-- Module      : Gogol.Surveys.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Surveys.Types
  ( -- * Configuration
    surveysService,

    -- * OAuth Scopes
    surveysScope,
    surveysReadOnlyScope,
    userinfoEmailScope,

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

import qualified Gogol.Prelude as Core
import Gogol.Surveys.Internal.Product
import Gogol.Surveys.Internal.Sum

-- | Default request referring to version @v2@ of the Surveys API. This contains the host and root path used as a starting point for constructing service requests.
surveysService :: Core.ServiceConfig
surveysService =
  Core.defaultService
    (Core.ServiceId "surveys:v2")
    "www.googleapis.com"

-- | View and manage your surveys and results
surveysScope :: Core.Proxy '["https://www.googleapis.com/auth/surveys"]
surveysScope = Core.Proxy

-- | View your surveys and survey results
surveysReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/surveys.readonly"]
surveysReadOnlyScope = Core.Proxy

-- | View your email address
userinfoEmailScope :: Core.Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userinfoEmailScope = Core.Proxy
