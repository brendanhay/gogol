{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ConsumerSurveys
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and conducts surveys, lists the surveys that an authenticated
-- user owns, and retrieves survey results and information about specified
-- surveys.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference>
module Network.Google.ConsumerSurveys
    (
    -- * Service Configuration
      consumerSurveysService

    -- * OAuth Scopes
    , userInfoEmailScope
    , consumerSurveysReadOnlyScope
    , consumerSurveysScope

    -- * API Declaration
    , ConsumerSurveysAPI

    -- * Resources

    -- ** consumersurveys.mobileapppanels.get
    , module Network.Google.Resource.ConsumerSurveys.MobileApppanels.Get

    -- ** consumersurveys.mobileapppanels.list
    , module Network.Google.Resource.ConsumerSurveys.MobileApppanels.List

    -- ** consumersurveys.mobileapppanels.update
    , module Network.Google.Resource.ConsumerSurveys.MobileApppanels.Update

    -- ** consumersurveys.results.get
    , module Network.Google.Resource.ConsumerSurveys.Results.Get

    -- ** consumersurveys.surveys.delete
    , module Network.Google.Resource.ConsumerSurveys.Surveys.Delete

    -- ** consumersurveys.surveys.get
    , module Network.Google.Resource.ConsumerSurveys.Surveys.Get

    -- ** consumersurveys.surveys.insert
    , module Network.Google.Resource.ConsumerSurveys.Surveys.Insert

    -- ** consumersurveys.surveys.list
    , module Network.Google.Resource.ConsumerSurveys.Surveys.List

    -- ** consumersurveys.surveys.start
    , module Network.Google.Resource.ConsumerSurveys.Surveys.Start

    -- ** consumersurveys.surveys.stop
    , module Network.Google.Resource.ConsumerSurveys.Surveys.Stop

    -- ** consumersurveys.surveys.update
    , module Network.Google.Resource.ConsumerSurveys.Surveys.Update

    -- * Types

    -- ** SurveysListResponse
    , SurveysListResponse
    , surveysListResponse
    , slrRequestId
    , slrTokenPagination
    , slrPageInfo
    , slrResources

    -- ** MobileAppPanel
    , MobileAppPanel
    , mobileAppPanel
    , mapOwners
    , mapCountry
    , mapName
    , mapMobileAppPanelId
    , mapLanguage
    , mapIsPublicPanel

    -- ** TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpPreviousPageToken

    -- ** ResultsGetRequest
    , ResultsGetRequest
    , resultsGetRequest
    , rgrResultMask

    -- ** MobileAppPanelsListResponse
    , MobileAppPanelsListResponse
    , mobileAppPanelsListResponse
    , maplrRequestId
    , maplrTokenPagination
    , maplrPageInfo
    , maplrResources

    -- ** PageInfo
    , PageInfo
    , pageInfo
    , piResultPerPage
    , piTotalResults
    , piStartIndex

    -- ** FieldMask
    , FieldMask
    , fieldMask
    , fmId
    , fmFields

    -- ** Survey
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

    -- ** SurveysStartResponse
    , SurveysStartResponse
    , surveysStartResponse
    , ssrRequestId

    -- ** SurveysStopResponse
    , SurveysStopResponse
    , surveysStopResponse
    , sRequestId

    -- ** ResultsMask
    , ResultsMask
    , resultsMask
    , rmProjection
    , rmFields

    -- ** SurveyRejection
    , SurveyRejection
    , surveyRejection
    , srExplanation
    , srType

    -- ** SurveyResults
    , SurveyResults
    , surveyResults
    , srStatus
    , srSurveyURLId

    -- ** SurveysStartRequest
    , SurveysStartRequest
    , surveysStartRequest
    , ssrMaxCostPerResponseNanos

    -- ** SurveysDeleteResponse
    , SurveysDeleteResponse
    , surveysDeleteResponse
    , sdrRequestId

    -- ** SurveyQuestionImage
    , SurveyQuestionImage
    , surveyQuestionImage
    , sqiData
    , sqiURL
    , sqiAltText

    -- ** SurveyAudience
    , SurveyAudience
    , surveyAudience
    , saCountry
    , saAges
    , saLanguages
    , saGender
    , saMobileAppPanelId
    , saCountrySubdivision
    , saPopulationSource

    -- ** SurveyCost
    , SurveyCost
    , surveyCost
    , scCurrencyCode
    , scNanos
    , scMaxCostPerResponseNanos
    , scCostPerResponseNanos

    -- ** SurveyQuestion
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

import           Network.Google.ConsumerSurveys.Types
import           Network.Google.Prelude
import           Network.Google.Resource.ConsumerSurveys.MobileApppanels.Get
import           Network.Google.Resource.ConsumerSurveys.MobileApppanels.List
import           Network.Google.Resource.ConsumerSurveys.MobileApppanels.Update
import           Network.Google.Resource.ConsumerSurveys.Results.Get
import           Network.Google.Resource.ConsumerSurveys.Surveys.Delete
import           Network.Google.Resource.ConsumerSurveys.Surveys.Get
import           Network.Google.Resource.ConsumerSurveys.Surveys.Insert
import           Network.Google.Resource.ConsumerSurveys.Surveys.List
import           Network.Google.Resource.ConsumerSurveys.Surveys.Start
import           Network.Google.Resource.ConsumerSurveys.Surveys.Stop
import           Network.Google.Resource.ConsumerSurveys.Surveys.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Consumer Surveys API service.
type ConsumerSurveysAPI =
     MobileApppanelsListResource :<|>
       MobileApppanelsGetResource
       :<|> MobileApppanelsUpdateResource
       :<|> ResultsGetResource
       :<|> SurveysInsertResource
       :<|> SurveysListResource
       :<|> SurveysStartResource
       :<|> SurveysGetResource
       :<|> SurveysStopResource
       :<|> SurveysDeleteResource
       :<|> SurveysUpdateResource
