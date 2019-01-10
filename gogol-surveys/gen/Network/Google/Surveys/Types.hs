{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Surveys.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Surveys.Types
    (
    -- * Service Configuration
      surveysService

    -- * OAuth Scopes
    , surveysScope
    , userInfoEmailScope
    , surveysReadOnlyScope

    -- * SurveysListResponse
    , SurveysListResponse
    , surveysListResponse
    , slrRequestId
    , slrTokenPagination
    , slrPageInfo
    , slrResources

    -- * TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpPreviousPageToken

    -- * ResultsGetRequest
    , ResultsGetRequest
    , resultsGetRequest
    , rgrResultMask

    -- * PageInfo
    , PageInfo
    , pageInfo
    , piResultPerPage
    , piTotalResults
    , piStartIndex

    -- * FieldMask
    , FieldMask
    , fieldMask
    , fmId
    , fmFields

    -- * Survey
    , Survey
    , survey
    , sAudience
    , sState
    , sOwners
    , sWantedResponseCount
    , sSurveyURLId
    , sCost
    , sRejectionReason
    , sCustomerData
    , sQuestions
    , sTitle
    , sDescription

    -- * SurveysStartResponse
    , SurveysStartResponse
    , surveysStartResponse
    , ssrRequestId

    -- * SurveysStopResponse
    , SurveysStopResponse
    , surveysStopResponse
    , sRequestId

    -- * ResultsMask
    , ResultsMask
    , resultsMask
    , rmProjection
    , rmFields

    -- * SurveyRejection
    , SurveyRejection
    , surveyRejection
    , srExplanation
    , srType

    -- * SurveyResults
    , SurveyResults
    , surveyResults
    , srStatus
    , srSurveyURLId

    -- * SurveysStartRequest
    , SurveysStartRequest
    , surveysStartRequest
    , ssrMaxCostPerResponseNanos

    -- * SurveysDeleteResponse
    , SurveysDeleteResponse
    , surveysDeleteResponse
    , sdrRequestId

    -- * SurveyQuestionImage
    , SurveyQuestionImage
    , surveyQuestionImage
    , sqiData
    , sqiURL
    , sqiAltText

    -- * SurveyAudience
    , SurveyAudience
    , surveyAudience
    , saCountry
    , saAges
    , saLanguages
    , saGender
    , saCountrySubdivision
    , saPopulationSource

    -- * SurveyCost
    , SurveyCost
    , surveyCost
    , scCurrencyCode
    , scNanos
    , scMaxCostPerResponseNanos
    , scCostPerResponseNanos

    -- * SurveyQuestion
    , SurveyQuestion
    , surveyQuestion
    , sqImages
    , sqAnswers
    , sqSingleLineResponse
    , sqMustPickSuggestion
    , sqSentimentText
    , sqThresholdAnswers
    , sqHasOther
    , sqOpenTextSuggestions
    , sqVideoId
    , sqLastAnswerPositionPinned
    , sqAnswerOrder
    , sqOpenTextPlaceholder
    , sqType
    , sqUnitOfMeasurementLabel
    , sqHighValueLabel
    , sqQuestion
    , sqNumStars
    , sqLowValueLabel
    ) where

import           Network.Google.Prelude
import           Network.Google.Surveys.Types.Product
import           Network.Google.Surveys.Types.Sum

-- | Default request referring to version 'v2' of the Surveys API. This contains the host and root path used as a starting point for constructing service requests.
surveysService :: ServiceConfig
surveysService
  = defaultService (ServiceId "surveys:v2")
      "www.googleapis.com"

-- | View and manage your surveys and results
surveysScope :: Proxy '["https://www.googleapis.com/auth/surveys"]
surveysScope = Proxy;

-- | View your email address
userInfoEmailScope :: Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userInfoEmailScope = Proxy;

-- | View your surveys and survey results
surveysReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/surveys.readonly"]
surveysReadOnlyScope = Proxy;
