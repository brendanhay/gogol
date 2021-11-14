{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ConsumerSurveys.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ConsumerSurveys.Types
    (
    -- * Service Configuration
      consumerSurveysService

    -- * OAuth Scopes
    , userInfoEmailScope
    , consumerSurveysReadOnlyScope
    , consumerSurveysScope

    -- * SurveysListResponse
    , SurveysListResponse
    , surveysListResponse
    , slrRequestId
    , slrTokenPagination
    , slrPageInfo
    , slrResources

    -- * MobileAppPanel
    , MobileAppPanel
    , mobileAppPanel
    , mapOwners
    , mapCountry
    , mapName
    , mapMobileAppPanelId
    , mapLanguage
    , mapIsPublicPanel

    -- * TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpPreviousPageToken

    -- * ResultsGetRequest
    , ResultsGetRequest
    , resultsGetRequest
    , rgrResultMask

    -- * MobileAppPanelsListResponse
    , MobileAppPanelsListResponse
    , mobileAppPanelsListResponse
    , maplrRequestId
    , maplrTokenPagination
    , maplrPageInfo
    , maplrResources

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
    , saMobileAppPanelId
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

import Network.Google.ConsumerSurveys.Types.Product
import Network.Google.ConsumerSurveys.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v2' of the Consumer Surveys API. This contains the host and root path used as a starting point for constructing service requests.
consumerSurveysService :: ServiceConfig
consumerSurveysService
  = defaultService (ServiceId "consumersurveys:v2")
      "www.googleapis.com"

-- | View your email address
userInfoEmailScope :: Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userInfoEmailScope = Proxy

-- | View the results for your surveys
consumerSurveysReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/consumersurveys.readonly"]
consumerSurveysReadOnlyScope = Proxy

-- | View and edit your surveys and results
consumerSurveysScope :: Proxy '["https://www.googleapis.com/auth/consumersurveys"]
consumerSurveysScope = Proxy
