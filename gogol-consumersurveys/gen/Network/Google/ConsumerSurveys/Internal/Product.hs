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
-- Module      : Network.Google.ConsumerSurveys.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.ConsumerSurveys.Internal.Product
  ( -- * FieldMask
    FieldMask (..),
    newFieldMask,

    -- * MobileAppPanel
    MobileAppPanel (..),
    newMobileAppPanel,

    -- * MobileAppPanelsListResponse
    MobileAppPanelsListResponse (..),
    newMobileAppPanelsListResponse,

    -- * PageInfo
    PageInfo (..),
    newPageInfo,

    -- * ResultsGetRequest
    ResultsGetRequest (..),
    newResultsGetRequest,

    -- * ResultsMask
    ResultsMask (..),
    newResultsMask,

    -- * Survey
    Survey (..),
    newSurvey,

    -- * SurveyAudience
    SurveyAudience (..),
    newSurveyAudience,

    -- * SurveyCost
    SurveyCost (..),
    newSurveyCost,

    -- * SurveyQuestion
    SurveyQuestion (..),
    newSurveyQuestion,

    -- * SurveyQuestionImage
    SurveyQuestionImage (..),
    newSurveyQuestionImage,

    -- * SurveyRejection
    SurveyRejection (..),
    newSurveyRejection,

    -- * SurveyResults
    SurveyResults (..),
    newSurveyResults,

    -- * SurveysDeleteResponse
    SurveysDeleteResponse (..),
    newSurveysDeleteResponse,

    -- * SurveysListResponse
    SurveysListResponse (..),
    newSurveysListResponse,

    -- * SurveysStartRequest
    SurveysStartRequest (..),
    newSurveysStartRequest,

    -- * SurveysStartResponse
    SurveysStartResponse (..),
    newSurveysStartResponse,

    -- * SurveysStopResponse
    SurveysStopResponse (..),
    newSurveysStopResponse,

    -- * TokenPagination
    TokenPagination (..),
    newTokenPagination,
  )
where

import Network.Google.ConsumerSurveys.Internal.Sum
import qualified Network.Google.Prelude as Core

--
-- /See:/ 'newFieldMask' smart constructor.
data FieldMask = FieldMask
  { -- |
    fields :: (Core.Maybe [FieldMask]),
    -- |
    id :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FieldMask' with the minimum fields required to make a request.
newFieldMask ::
  FieldMask
newFieldMask = FieldMask {fields = Core.Nothing, id = Core.Nothing}

instance Core.FromJSON FieldMask where
  parseJSON =
    Core.withObject
      "FieldMask"
      ( \o ->
          FieldMask
            Core.<$> (o Core..:? "fields" Core..!= Core.mempty)
            Core.<*> (o Core..:? "id")
      )

instance Core.ToJSON FieldMask where
  toJSON FieldMask {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("id" Core..=) Core.<$> id
          ]
      )

--
-- /See:/ 'newMobileAppPanel' smart constructor.
data MobileAppPanel = MobileAppPanel
  { -- |
    country :: (Core.Maybe Core.Text),
    -- |
    isPublicPanel :: (Core.Maybe Core.Bool),
    -- |
    language :: (Core.Maybe Core.Text),
    -- |
    mobileAppPanelId :: (Core.Maybe Core.Text),
    -- |
    name :: (Core.Maybe Core.Text),
    -- |
    owners :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MobileAppPanel' with the minimum fields required to make a request.
newMobileAppPanel ::
  MobileAppPanel
newMobileAppPanel =
  MobileAppPanel
    { country = Core.Nothing,
      isPublicPanel = Core.Nothing,
      language = Core.Nothing,
      mobileAppPanelId = Core.Nothing,
      name = Core.Nothing,
      owners = Core.Nothing
    }

instance Core.FromJSON MobileAppPanel where
  parseJSON =
    Core.withObject
      "MobileAppPanel"
      ( \o ->
          MobileAppPanel
            Core.<$> (o Core..:? "country")
            Core.<*> (o Core..:? "isPublicPanel")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "mobileAppPanelId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "owners" Core..!= Core.mempty)
      )

instance Core.ToJSON MobileAppPanel where
  toJSON MobileAppPanel {..} =
    Core.object
      ( Core.catMaybes
          [ ("country" Core..=) Core.<$> country,
            ("isPublicPanel" Core..=) Core.<$> isPublicPanel,
            ("language" Core..=) Core.<$> language,
            ("mobileAppPanelId" Core..=)
              Core.<$> mobileAppPanelId,
            ("name" Core..=) Core.<$> name,
            ("owners" Core..=) Core.<$> owners
          ]
      )

--
-- /See:/ 'newMobileAppPanelsListResponse' smart constructor.
data MobileAppPanelsListResponse = MobileAppPanelsListResponse
  { -- |
    pageInfo :: (Core.Maybe PageInfo),
    -- | Unique request ID used for logging and debugging. Please include in any error reporting or troubleshooting requests.
    requestId :: (Core.Maybe Core.Text),
    -- | An individual predefined panel of Opinion Rewards mobile users.
    resources :: (Core.Maybe [MobileAppPanel]),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MobileAppPanelsListResponse' with the minimum fields required to make a request.
newMobileAppPanelsListResponse ::
  MobileAppPanelsListResponse
newMobileAppPanelsListResponse =
  MobileAppPanelsListResponse
    { pageInfo = Core.Nothing,
      requestId = Core.Nothing,
      resources = Core.Nothing,
      tokenPagination = Core.Nothing
    }

instance Core.FromJSON MobileAppPanelsListResponse where
  parseJSON =
    Core.withObject
      "MobileAppPanelsListResponse"
      ( \o ->
          MobileAppPanelsListResponse
            Core.<$> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "requestId")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
            Core.<*> (o Core..:? "tokenPagination")
      )

instance Core.ToJSON MobileAppPanelsListResponse where
  toJSON MobileAppPanelsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("pageInfo" Core..=) Core.<$> pageInfo,
            ("requestId" Core..=) Core.<$> requestId,
            ("resources" Core..=) Core.<$> resources,
            ("tokenPagination" Core..=)
              Core.<$> tokenPagination
          ]
      )

--
-- /See:/ 'newPageInfo' smart constructor.
data PageInfo = PageInfo
  { -- |
    resultPerPage :: (Core.Maybe Core.Int32),
    -- |
    startIndex :: (Core.Maybe Core.Int32),
    -- |
    totalResults :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PageInfo' with the minimum fields required to make a request.
newPageInfo ::
  PageInfo
newPageInfo =
  PageInfo
    { resultPerPage = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing
    }

instance Core.FromJSON PageInfo where
  parseJSON =
    Core.withObject
      "PageInfo"
      ( \o ->
          PageInfo
            Core.<$> (o Core..:? "resultPerPage")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
      )

instance Core.ToJSON PageInfo where
  toJSON PageInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("resultPerPage" Core..=) Core.<$> resultPerPage,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults
          ]
      )

--
-- /See:/ 'newResultsGetRequest' smart constructor.
newtype ResultsGetRequest = ResultsGetRequest
  { -- |
    resultMask :: (Core.Maybe ResultsMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResultsGetRequest' with the minimum fields required to make a request.
newResultsGetRequest ::
  ResultsGetRequest
newResultsGetRequest = ResultsGetRequest {resultMask = Core.Nothing}

instance Core.FromJSON ResultsGetRequest where
  parseJSON =
    Core.withObject
      "ResultsGetRequest"
      ( \o ->
          ResultsGetRequest Core.<$> (o Core..:? "resultMask")
      )

instance Core.ToJSON ResultsGetRequest where
  toJSON ResultsGetRequest {..} =
    Core.object
      ( Core.catMaybes
          [("resultMask" Core..=) Core.<$> resultMask]
      )

--
-- /See:/ 'newResultsMask' smart constructor.
data ResultsMask = ResultsMask
  { -- |
    fields :: (Core.Maybe [FieldMask]),
    -- |
    projection :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResultsMask' with the minimum fields required to make a request.
newResultsMask ::
  ResultsMask
newResultsMask = ResultsMask {fields = Core.Nothing, projection = Core.Nothing}

instance Core.FromJSON ResultsMask where
  parseJSON =
    Core.withObject
      "ResultsMask"
      ( \o ->
          ResultsMask
            Core.<$> (o Core..:? "fields" Core..!= Core.mempty)
            Core.<*> (o Core..:? "projection")
      )

instance Core.ToJSON ResultsMask where
  toJSON ResultsMask {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("projection" Core..=) Core.<$> projection
          ]
      )

--
-- /See:/ 'newSurvey' smart constructor.
data Survey = Survey
  { -- |
    audience :: (Core.Maybe SurveyAudience),
    -- |
    cost :: (Core.Maybe SurveyCost),
    -- |
    customerData :: (Core.Maybe Core.Base64),
    -- |
    description :: (Core.Maybe Core.Text),
    -- |
    owners :: (Core.Maybe [Core.Text]),
    -- |
    questions :: (Core.Maybe [SurveyQuestion]),
    -- |
    rejectionReason :: (Core.Maybe SurveyRejection),
    -- |
    state :: (Core.Maybe Core.Text),
    -- |
    surveyUrlId :: (Core.Maybe Core.Text),
    -- |
    title :: (Core.Maybe Core.Text),
    -- |
    wantedResponseCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Survey' with the minimum fields required to make a request.
newSurvey ::
  Survey
newSurvey =
  Survey
    { audience = Core.Nothing,
      cost = Core.Nothing,
      customerData = Core.Nothing,
      description = Core.Nothing,
      owners = Core.Nothing,
      questions = Core.Nothing,
      rejectionReason = Core.Nothing,
      state = Core.Nothing,
      surveyUrlId = Core.Nothing,
      title = Core.Nothing,
      wantedResponseCount = Core.Nothing
    }

instance Core.FromJSON Survey where
  parseJSON =
    Core.withObject
      "Survey"
      ( \o ->
          Survey
            Core.<$> (o Core..:? "audience")
            Core.<*> (o Core..:? "cost")
            Core.<*> (o Core..:? "customerData")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "owners" Core..!= Core.mempty)
            Core.<*> (o Core..:? "questions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "rejectionReason")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "surveyUrlId")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "wantedResponseCount")
      )

instance Core.ToJSON Survey where
  toJSON Survey {..} =
    Core.object
      ( Core.catMaybes
          [ ("audience" Core..=) Core.<$> audience,
            ("cost" Core..=) Core.<$> cost,
            ("customerData" Core..=) Core.<$> customerData,
            ("description" Core..=) Core.<$> description,
            ("owners" Core..=) Core.<$> owners,
            ("questions" Core..=) Core.<$> questions,
            ("rejectionReason" Core..=) Core.<$> rejectionReason,
            ("state" Core..=) Core.<$> state,
            ("surveyUrlId" Core..=) Core.<$> surveyUrlId,
            ("title" Core..=) Core.<$> title,
            ("wantedResponseCount" Core..=)
              Core.<$> wantedResponseCount
          ]
      )

--
-- /See:/ 'newSurveyAudience' smart constructor.
data SurveyAudience = SurveyAudience
  { -- |
    ages :: (Core.Maybe [Core.Text]),
    -- |
    country :: (Core.Maybe Core.Text),
    -- |
    countrySubdivision :: (Core.Maybe Core.Text),
    -- |
    gender :: (Core.Maybe Core.Text),
    -- |
    languages :: (Core.Maybe [Core.Text]),
    -- |
    mobileAppPanelId :: (Core.Maybe Core.Text),
    -- |
    populationSource :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveyAudience' with the minimum fields required to make a request.
newSurveyAudience ::
  SurveyAudience
newSurveyAudience =
  SurveyAudience
    { ages = Core.Nothing,
      country = Core.Nothing,
      countrySubdivision = Core.Nothing,
      gender = Core.Nothing,
      languages = Core.Nothing,
      mobileAppPanelId = Core.Nothing,
      populationSource = Core.Nothing
    }

instance Core.FromJSON SurveyAudience where
  parseJSON =
    Core.withObject
      "SurveyAudience"
      ( \o ->
          SurveyAudience
            Core.<$> (o Core..:? "ages" Core..!= Core.mempty)
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "countrySubdivision")
            Core.<*> (o Core..:? "gender")
            Core.<*> (o Core..:? "languages" Core..!= Core.mempty)
            Core.<*> (o Core..:? "mobileAppPanelId")
            Core.<*> (o Core..:? "populationSource")
      )

instance Core.ToJSON SurveyAudience where
  toJSON SurveyAudience {..} =
    Core.object
      ( Core.catMaybes
          [ ("ages" Core..=) Core.<$> ages,
            ("country" Core..=) Core.<$> country,
            ("countrySubdivision" Core..=)
              Core.<$> countrySubdivision,
            ("gender" Core..=) Core.<$> gender,
            ("languages" Core..=) Core.<$> languages,
            ("mobileAppPanelId" Core..=)
              Core.<$> mobileAppPanelId,
            ("populationSource" Core..=)
              Core.<$> populationSource
          ]
      )

--
-- /See:/ 'newSurveyCost' smart constructor.
data SurveyCost = SurveyCost
  { -- |
    costPerResponseNanos :: (Core.Maybe Core.Int64),
    -- |
    currencyCode :: (Core.Maybe Core.Text),
    -- |
    maxCostPerResponseNanos :: (Core.Maybe Core.Int64),
    -- |
    nanos :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveyCost' with the minimum fields required to make a request.
newSurveyCost ::
  SurveyCost
newSurveyCost =
  SurveyCost
    { costPerResponseNanos = Core.Nothing,
      currencyCode = Core.Nothing,
      maxCostPerResponseNanos = Core.Nothing,
      nanos = Core.Nothing
    }

instance Core.FromJSON SurveyCost where
  parseJSON =
    Core.withObject
      "SurveyCost"
      ( \o ->
          SurveyCost
            Core.<$> (o Core..:? "costPerResponseNanos")
            Core.<*> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "maxCostPerResponseNanos")
            Core.<*> (o Core..:? "nanos")
      )

instance Core.ToJSON SurveyCost where
  toJSON SurveyCost {..} =
    Core.object
      ( Core.catMaybes
          [ ("costPerResponseNanos" Core..=) Core.. Core.AsText
              Core.<$> costPerResponseNanos,
            ("currencyCode" Core..=) Core.<$> currencyCode,
            ("maxCostPerResponseNanos" Core..=)
              Core.. Core.AsText
              Core.<$> maxCostPerResponseNanos,
            ("nanos" Core..=) Core.. Core.AsText Core.<$> nanos
          ]
      )

--
-- /See:/ 'newSurveyQuestion' smart constructor.
data SurveyQuestion = SurveyQuestion
  { -- |
    answerOrder :: (Core.Maybe Core.Text),
    -- |
    answers :: (Core.Maybe [Core.Text]),
    -- |
    hasOther :: (Core.Maybe Core.Bool),
    -- |
    highValueLabel :: (Core.Maybe Core.Text),
    -- |
    images :: (Core.Maybe [SurveyQuestionImage]),
    -- |
    lastAnswerPositionPinned :: (Core.Maybe Core.Bool),
    -- |
    lowValueLabel :: (Core.Maybe Core.Text),
    -- |
    mustPickSuggestion :: (Core.Maybe Core.Bool),
    -- |
    numStars :: (Core.Maybe Core.Text),
    -- |
    openTextPlaceholder :: (Core.Maybe Core.Text),
    -- |
    openTextSuggestions :: (Core.Maybe [Core.Text]),
    -- |
    question :: (Core.Maybe Core.Text),
    -- |
    sentimentText :: (Core.Maybe Core.Text),
    -- |
    singleLineResponse :: (Core.Maybe Core.Bool),
    -- |
    thresholdAnswers :: (Core.Maybe [Core.Text]),
    -- |
    type' :: (Core.Maybe Core.Text),
    -- |
    unitOfMeasurementLabel :: (Core.Maybe Core.Text),
    -- |
    videoId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveyQuestion' with the minimum fields required to make a request.
newSurveyQuestion ::
  SurveyQuestion
newSurveyQuestion =
  SurveyQuestion
    { answerOrder = Core.Nothing,
      answers = Core.Nothing,
      hasOther = Core.Nothing,
      highValueLabel = Core.Nothing,
      images = Core.Nothing,
      lastAnswerPositionPinned = Core.Nothing,
      lowValueLabel = Core.Nothing,
      mustPickSuggestion = Core.Nothing,
      numStars = Core.Nothing,
      openTextPlaceholder = Core.Nothing,
      openTextSuggestions = Core.Nothing,
      question = Core.Nothing,
      sentimentText = Core.Nothing,
      singleLineResponse = Core.Nothing,
      thresholdAnswers = Core.Nothing,
      type' = Core.Nothing,
      unitOfMeasurementLabel = Core.Nothing,
      videoId = Core.Nothing
    }

instance Core.FromJSON SurveyQuestion where
  parseJSON =
    Core.withObject
      "SurveyQuestion"
      ( \o ->
          SurveyQuestion
            Core.<$> (o Core..:? "answerOrder")
            Core.<*> (o Core..:? "answers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "hasOther")
            Core.<*> (o Core..:? "highValueLabel")
            Core.<*> (o Core..:? "images" Core..!= Core.mempty)
            Core.<*> (o Core..:? "lastAnswerPositionPinned")
            Core.<*> (o Core..:? "lowValueLabel")
            Core.<*> (o Core..:? "mustPickSuggestion")
            Core.<*> (o Core..:? "numStars")
            Core.<*> (o Core..:? "openTextPlaceholder")
            Core.<*> ( o Core..:? "openTextSuggestions"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "question")
            Core.<*> (o Core..:? "sentimentText")
            Core.<*> (o Core..:? "singleLineResponse")
            Core.<*> (o Core..:? "thresholdAnswers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "unitOfMeasurementLabel")
            Core.<*> (o Core..:? "videoId")
      )

instance Core.ToJSON SurveyQuestion where
  toJSON SurveyQuestion {..} =
    Core.object
      ( Core.catMaybes
          [ ("answerOrder" Core..=) Core.<$> answerOrder,
            ("answers" Core..=) Core.<$> answers,
            ("hasOther" Core..=) Core.<$> hasOther,
            ("highValueLabel" Core..=) Core.<$> highValueLabel,
            ("images" Core..=) Core.<$> images,
            ("lastAnswerPositionPinned" Core..=)
              Core.<$> lastAnswerPositionPinned,
            ("lowValueLabel" Core..=) Core.<$> lowValueLabel,
            ("mustPickSuggestion" Core..=)
              Core.<$> mustPickSuggestion,
            ("numStars" Core..=) Core.<$> numStars,
            ("openTextPlaceholder" Core..=)
              Core.<$> openTextPlaceholder,
            ("openTextSuggestions" Core..=)
              Core.<$> openTextSuggestions,
            ("question" Core..=) Core.<$> question,
            ("sentimentText" Core..=) Core.<$> sentimentText,
            ("singleLineResponse" Core..=)
              Core.<$> singleLineResponse,
            ("thresholdAnswers" Core..=)
              Core.<$> thresholdAnswers,
            ("type" Core..=) Core.<$> type',
            ("unitOfMeasurementLabel" Core..=)
              Core.<$> unitOfMeasurementLabel,
            ("videoId" Core..=) Core.<$> videoId
          ]
      )

--
-- /See:/ 'newSurveyQuestionImage' smart constructor.
data SurveyQuestionImage = SurveyQuestionImage
  { -- |
    altText :: (Core.Maybe Core.Text),
    -- |
    data' :: (Core.Maybe Core.Base64),
    -- |
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveyQuestionImage' with the minimum fields required to make a request.
newSurveyQuestionImage ::
  SurveyQuestionImage
newSurveyQuestionImage =
  SurveyQuestionImage
    { altText = Core.Nothing,
      data' = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON SurveyQuestionImage where
  parseJSON =
    Core.withObject
      "SurveyQuestionImage"
      ( \o ->
          SurveyQuestionImage
            Core.<$> (o Core..:? "altText")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON SurveyQuestionImage where
  toJSON SurveyQuestionImage {..} =
    Core.object
      ( Core.catMaybes
          [ ("altText" Core..=) Core.<$> altText,
            ("data" Core..=) Core.<$> data',
            ("url" Core..=) Core.<$> url
          ]
      )

--
-- /See:/ 'newSurveyRejection' smart constructor.
data SurveyRejection = SurveyRejection
  { -- |
    explanation :: (Core.Maybe Core.Text),
    -- |
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveyRejection' with the minimum fields required to make a request.
newSurveyRejection ::
  SurveyRejection
newSurveyRejection =
  SurveyRejection {explanation = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON SurveyRejection where
  parseJSON =
    Core.withObject
      "SurveyRejection"
      ( \o ->
          SurveyRejection
            Core.<$> (o Core..:? "explanation")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON SurveyRejection where
  toJSON SurveyRejection {..} =
    Core.object
      ( Core.catMaybes
          [ ("explanation" Core..=) Core.<$> explanation,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newSurveyResults' smart constructor.
data SurveyResults = SurveyResults
  { -- |
    status :: (Core.Maybe Core.Text),
    -- |
    surveyUrlId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveyResults' with the minimum fields required to make a request.
newSurveyResults ::
  SurveyResults
newSurveyResults =
  SurveyResults {status = Core.Nothing, surveyUrlId = Core.Nothing}

instance Core.FromJSON SurveyResults where
  parseJSON =
    Core.withObject
      "SurveyResults"
      ( \o ->
          SurveyResults
            Core.<$> (o Core..:? "status")
            Core.<*> (o Core..:? "surveyUrlId")
      )

instance Core.ToJSON SurveyResults where
  toJSON SurveyResults {..} =
    Core.object
      ( Core.catMaybes
          [ ("status" Core..=) Core.<$> status,
            ("surveyUrlId" Core..=) Core.<$> surveyUrlId
          ]
      )

--
-- /See:/ 'newSurveysDeleteResponse' smart constructor.
newtype SurveysDeleteResponse = SurveysDeleteResponse
  { -- | Unique request ID used for logging and debugging. Please include in any error reporting or troubleshooting requests.
    requestId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveysDeleteResponse' with the minimum fields required to make a request.
newSurveysDeleteResponse ::
  SurveysDeleteResponse
newSurveysDeleteResponse = SurveysDeleteResponse {requestId = Core.Nothing}

instance Core.FromJSON SurveysDeleteResponse where
  parseJSON =
    Core.withObject
      "SurveysDeleteResponse"
      ( \o ->
          SurveysDeleteResponse
            Core.<$> (o Core..:? "requestId")
      )

instance Core.ToJSON SurveysDeleteResponse where
  toJSON SurveysDeleteResponse {..} =
    Core.object
      ( Core.catMaybes
          [("requestId" Core..=) Core.<$> requestId]
      )

--
-- /See:/ 'newSurveysListResponse' smart constructor.
data SurveysListResponse = SurveysListResponse
  { -- |
    pageInfo :: (Core.Maybe PageInfo),
    -- | Unique request ID used for logging and debugging. Please include in any error reporting or troubleshooting requests.
    requestId :: (Core.Maybe Core.Text),
    -- | An individual survey resource.
    resources :: (Core.Maybe [Survey]),
    -- |
    tokenPagination :: (Core.Maybe TokenPagination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveysListResponse' with the minimum fields required to make a request.
newSurveysListResponse ::
  SurveysListResponse
newSurveysListResponse =
  SurveysListResponse
    { pageInfo = Core.Nothing,
      requestId = Core.Nothing,
      resources = Core.Nothing,
      tokenPagination = Core.Nothing
    }

instance Core.FromJSON SurveysListResponse where
  parseJSON =
    Core.withObject
      "SurveysListResponse"
      ( \o ->
          SurveysListResponse
            Core.<$> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "requestId")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
            Core.<*> (o Core..:? "tokenPagination")
      )

instance Core.ToJSON SurveysListResponse where
  toJSON SurveysListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("pageInfo" Core..=) Core.<$> pageInfo,
            ("requestId" Core..=) Core.<$> requestId,
            ("resources" Core..=) Core.<$> resources,
            ("tokenPagination" Core..=)
              Core.<$> tokenPagination
          ]
      )

--
-- /See:/ 'newSurveysStartRequest' smart constructor.
newtype SurveysStartRequest = SurveysStartRequest
  { -- | Threshold to start a survey automically if the quoted prices is less than or equal to this value. See Survey.Cost for more details.
    maxCostPerResponseNanos :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveysStartRequest' with the minimum fields required to make a request.
newSurveysStartRequest ::
  SurveysStartRequest
newSurveysStartRequest =
  SurveysStartRequest {maxCostPerResponseNanos = Core.Nothing}

instance Core.FromJSON SurveysStartRequest where
  parseJSON =
    Core.withObject
      "SurveysStartRequest"
      ( \o ->
          SurveysStartRequest
            Core.<$> (o Core..:? "maxCostPerResponseNanos")
      )

instance Core.ToJSON SurveysStartRequest where
  toJSON SurveysStartRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxCostPerResponseNanos" Core..=)
              Core.. Core.AsText
              Core.<$> maxCostPerResponseNanos
          ]
      )

--
-- /See:/ 'newSurveysStartResponse' smart constructor.
newtype SurveysStartResponse = SurveysStartResponse
  { -- | Unique request ID used for logging and debugging. Please include in any error reporting or troubleshooting requests.
    requestId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveysStartResponse' with the minimum fields required to make a request.
newSurveysStartResponse ::
  SurveysStartResponse
newSurveysStartResponse = SurveysStartResponse {requestId = Core.Nothing}

instance Core.FromJSON SurveysStartResponse where
  parseJSON =
    Core.withObject
      "SurveysStartResponse"
      ( \o ->
          SurveysStartResponse
            Core.<$> (o Core..:? "requestId")
      )

instance Core.ToJSON SurveysStartResponse where
  toJSON SurveysStartResponse {..} =
    Core.object
      ( Core.catMaybes
          [("requestId" Core..=) Core.<$> requestId]
      )

--
-- /See:/ 'newSurveysStopResponse' smart constructor.
newtype SurveysStopResponse = SurveysStopResponse
  { -- | Unique request ID used for logging and debugging. Please include in any error reporting or troubleshooting requests.
    requestId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SurveysStopResponse' with the minimum fields required to make a request.
newSurveysStopResponse ::
  SurveysStopResponse
newSurveysStopResponse = SurveysStopResponse {requestId = Core.Nothing}

instance Core.FromJSON SurveysStopResponse where
  parseJSON =
    Core.withObject
      "SurveysStopResponse"
      ( \o ->
          SurveysStopResponse
            Core.<$> (o Core..:? "requestId")
      )

instance Core.ToJSON SurveysStopResponse where
  toJSON SurveysStopResponse {..} =
    Core.object
      ( Core.catMaybes
          [("requestId" Core..=) Core.<$> requestId]
      )

--
-- /See:/ 'newTokenPagination' smart constructor.
data TokenPagination = TokenPagination
  { -- |
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    previousPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TokenPagination' with the minimum fields required to make a request.
newTokenPagination ::
  TokenPagination
newTokenPagination =
  TokenPagination
    { nextPageToken = Core.Nothing,
      previousPageToken = Core.Nothing
    }

instance Core.FromJSON TokenPagination where
  parseJSON =
    Core.withObject
      "TokenPagination"
      ( \o ->
          TokenPagination
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "previousPageToken")
      )

instance Core.ToJSON TokenPagination where
  toJSON TokenPagination {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("previousPageToken" Core..=)
              Core.<$> previousPageToken
          ]
      )
