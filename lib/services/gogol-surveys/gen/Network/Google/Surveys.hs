{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Surveys
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and conducts surveys, lists the surveys that an authenticated
-- user owns, and retrieves survey results and information about specified
-- surveys.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference>
module Network.Google.Surveys
    (
    -- * Service Configuration
      surveysService

    -- * OAuth Scopes
    , surveysScope
    , userInfoEmailScope
    , surveysReadOnlyScope

    -- * API Declaration
    , SurveysAPI

    -- * Resources

    -- ** surveys.results.get
    , module Network.Google.Resource.Surveys.Results.Get

    -- ** surveys.surveys.delete
    , module Network.Google.Resource.Surveys.Surveys.Delete

    -- ** surveys.surveys.get
    , module Network.Google.Resource.Surveys.Surveys.Get

    -- ** surveys.surveys.insert
    , module Network.Google.Resource.Surveys.Surveys.Insert

    -- ** surveys.surveys.list
    , module Network.Google.Resource.Surveys.Surveys.List

    -- ** surveys.surveys.start
    , module Network.Google.Resource.Surveys.Surveys.Start

    -- ** surveys.surveys.stop
    , module Network.Google.Resource.Surveys.Surveys.Stop

    -- ** surveys.surveys.update
    , module Network.Google.Resource.Surveys.Surveys.Update

    -- * Types

    -- ** SurveysListResponse
    , SurveysListResponse
    , surveysListResponse
    , slrRequestId
    , slrTokenPagination
    , slrPageInfo
    , slrResources

    -- ** TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpPreviousPageToken

    -- ** ResultsGetRequest
    , ResultsGetRequest
    , resultsGetRequest
    , rgrResultMask

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

import Network.Google.Prelude
import Network.Google.Resource.Surveys.Results.Get
import Network.Google.Resource.Surveys.Surveys.Delete
import Network.Google.Resource.Surveys.Surveys.Get
import Network.Google.Resource.Surveys.Surveys.Insert
import Network.Google.Resource.Surveys.Surveys.List
import Network.Google.Resource.Surveys.Surveys.Start
import Network.Google.Resource.Surveys.Surveys.Stop
import Network.Google.Resource.Surveys.Surveys.Update
import Network.Google.Surveys.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Surveys API service.
type SurveysAPI =
     ResultsGetResource :<|> SurveysInsertResource :<|>
       SurveysListResource
       :<|> SurveysStartResource
       :<|> SurveysGetResource
       :<|> SurveysStopResource
       :<|> SurveysDeleteResource
       :<|> SurveysUpdateResource
