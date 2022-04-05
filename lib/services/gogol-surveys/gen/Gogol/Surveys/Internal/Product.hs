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
-- Module      : Gogol.Surveys.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Surveys.Internal.Product
  ( -- * FieldMask
    FieldMask (..),
    newFieldMask,

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

import qualified Gogol.Prelude as Core
import Gogol.Surveys.Internal.Sum

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
            Core.<$> (o Core..:? "fields") Core.<*> (o Core..:? "id")
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
            Core.<$> (o Core..:? "fields")
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

-- | Representation of an individual survey object.
--
-- /See:/ 'newSurvey' smart constructor.
data Survey = Survey
  { -- | Targeting-criteria message containing demographic information
    audience :: (Core.Maybe SurveyAudience),
    -- | Cost to run the survey and collect the necessary number of responses.
    cost :: (Core.Maybe SurveyCost),
    -- | Additional information to store on behalf of the API consumer and associate with this question. This binary blob is treated as opaque. This field is limited to 64K bytes.
    customerData :: (Core.Maybe Core.Base64),
    -- | Text description of the survey.
    description :: (Core.Maybe Core.Text),
    -- | List of email addresses for survey owners. Must contain at least the address of the user making the API call.
    owners :: (Core.Maybe [Core.Text]),
    -- | List of questions defining the survey.
    questions :: (Core.Maybe [SurveyQuestion]),
    -- | Reason for the survey being rejected. Only present if the survey state is rejected.
    rejectionReason :: (Core.Maybe SurveyRejection),
    -- | State that the survey is in.
    state :: (Core.Maybe Core.Text),
    -- | Unique survey ID, that is viewable in the URL of the Survey Creator UI
    surveyUrlId :: (Core.Maybe Core.Text),
    -- | Optional name that will be given to the survey.
    title :: (Core.Maybe Core.Text),
    -- | Number of responses desired for the survey.
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
            Core.<*> (o Core..:? "owners")
            Core.<*> (o Core..:? "questions")
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

-- | Specifications for the target audience of a survey run through the API.
--
-- /See:/ 'newSurveyAudience' smart constructor.
data SurveyAudience = SurveyAudience
  { -- | Optional list of age buckets to target. Supported age buckets are: [\'18-24\', \'25-34\', \'35-44\', \'45-54\', \'55-64\', \'65+\']
    ages :: (Core.Maybe [Core.Text]),
    -- | Required country code that surveys should be targeted to. Accepts standard ISO 3166-1 2 character language codes. For instance, \'US\' for the United States, and \'GB\' for the United Kingdom.
    country :: (Core.Maybe Core.Text),
    -- | Country subdivision (states\/provinces\/etc) that surveys should be targeted to. For all countries except GB, ISO-3166-2 subdivision code is required (eg. \'US-OH\' for Ohio, United States). For GB, NUTS 1 statistical region codes for the United Kingdom is required (eg. \'UK-UKC\' for North East England).
    countrySubdivision :: (Core.Maybe Core.Text),
    -- | Optional gender to target.
    gender :: (Core.Maybe Core.Text),
    -- | Language code that surveys should be targeted to. For instance, \'en-US\'. Surveys may target bilingual users by specifying a list of language codes (for example, \'de\' and \'en-US\'). In that case, all languages will be used for targeting users but the survey content (which is displayed) must match the first language listed. Accepts standard BCP47 language codes. See specification.
    languages :: (Core.Maybe [Core.Text]),
    -- | Online population source where the respondents are sampled from.
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
      populationSource = Core.Nothing
    }

instance Core.FromJSON SurveyAudience where
  parseJSON =
    Core.withObject
      "SurveyAudience"
      ( \o ->
          SurveyAudience
            Core.<$> (o Core..:? "ages")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "countrySubdivision")
            Core.<*> (o Core..:? "gender")
            Core.<*> (o Core..:? "languages")
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
            ("populationSource" Core..=)
              Core.<$> populationSource
          ]
      )

-- | Message defining the cost to run a given survey through API.
--
-- /See:/ 'newSurveyCost' smart constructor.
data SurveyCost = SurveyCost
  { -- | Cost per survey response in nano units of the given currency. To get the total cost for a survey, multiply this value by wanted/response/count.
    costPerResponseNanos :: (Core.Maybe Core.Int64),
    -- | Currency code that the cost is given in.
    currencyCode :: (Core.Maybe Core.Text),
    -- | /Deprecated/ Threshold to start a survey automatically if the quoted price is at most this value. When a survey has a Screener (threshold) question, it must go through an incidence pricing test to determine the final cost per response. Typically you will have to make a followup call to start the survey giving the final computed cost per response. If the survey has no threshold_answers, setting this property will return an error. By specifying this property, you indicate the max price per response you are willing to pay in advance of the incidence test. If the price turns out to be lower than the specified value, the survey will begin immediately and you will be charged at the rate determined by the incidence pricing test. If the price turns out to be greater than the specified value the survey will not be started and you will instead be notified what price was determined by the incidence test. At that point, you must raise the value of this property to be greater than or equal to that cost before attempting
    -- to start the survey again. This will immediately start the survey as long the incidence test was run within the last 21 days. This will no longer be available after June 2018.
    maxCostPerResponseNanos :: (Core.Maybe Core.Int64),
    -- | Cost of survey in nano units of the given currency. DEPRECATED in favor of cost/per/response_nanos
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
            Core.<$> ( o Core..:? "costPerResponseNanos"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "currencyCode")
            Core.<*> ( o Core..:? "maxCostPerResponseNanos"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "nanos"
                         Core.<&> Core.fmap Core.fromAsText
                     )
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

-- | Message defining the question specifications.
--
-- /See:/ 'newSurveyQuestion' smart constructor.
data SurveyQuestion = SurveyQuestion
  { -- | The randomization option for multiple choice and multi-select questions. If not specified, this option defaults to randomize.
    answerOrder :: (Core.Maybe Core.Text),
    -- | Required list of answer options for a question.
    answers :: (Core.Maybe [Core.Text]),
    -- | Option to allow open-ended text box for Single Answer and Multiple Answer question types. This can be used with SINGLE/ANSWER, SINGLE/ANSWER/WITH/IMAGE, MULTIPLE/ANSWERS, and MULTIPLE/ANSWERS/WITH/IMAGE question types.
    hasOther :: (Core.Maybe Core.Bool),
    -- | For rating questions, the text for the higher end of the scale, such as \'Best\'. For numeric questions, a string representing a floating-point that is the maximum allowed number for a response.
    highValueLabel :: (Core.Maybe Core.Text),
    -- |
    images :: (Core.Maybe [SurveyQuestionImage]),
    -- | Currently only support pinning an answer option to the last position.
    lastAnswerPositionPinned :: (Core.Maybe Core.Bool),
    -- | For rating questions, the text for the lower end of the scale, such as \'Worst\'. For numeric questions, a string representing a floating-point that is the minimum allowed number for a response.
    lowValueLabel :: (Core.Maybe Core.Text),
    -- | Option to force the user to pick one of the open text suggestions. This requires that suggestions are provided for this question.
    mustPickSuggestion :: (Core.Maybe Core.Bool),
    -- | Number of stars to use for ratings questions.
    numStars :: (Core.Maybe Core.Text),
    -- | Placeholder text for an open text question.
    openTextPlaceholder :: (Core.Maybe Core.Text),
    -- | A list of suggested answers for open text question auto-complete. This is only valid if single/line/response is true.
    openTextSuggestions :: (Core.Maybe [Core.Text]),
    -- | Required question text shown to the respondent.
    question :: (Core.Maybe Core.Text),
    -- | Used by the Rating Scale with Text question type. This text goes along with the question field that is presented to the respondent, and is the actual text that the respondent is asked to rate.
    sentimentText :: (Core.Maybe Core.Text),
    -- | Option to allow multiple line open text responses instead of a single line response. Note that we don\'t show auto-complete suggestions with multiple line responses.
    singleLineResponse :: (Core.Maybe Core.Bool),
    -- | The threshold\/screener answer options, which will screen a user into the rest of the survey. These will be a subset of the answer option strings.
    thresholdAnswers :: (Core.Maybe [Core.Text]),
    -- | Required field defining the question type. For details about configuring different type of questions, consult the question configuration guide.
    type' :: (Core.Maybe Core.Text),
    -- | Optional unit of measurement for display (for example: hours, people, miles).
    unitOfMeasurementLabel :: (Core.Maybe Core.Text),
    -- | The YouTube video ID to be show in video questions.
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
            Core.<*> (o Core..:? "answers")
            Core.<*> (o Core..:? "hasOther")
            Core.<*> (o Core..:? "highValueLabel")
            Core.<*> (o Core..:? "images")
            Core.<*> (o Core..:? "lastAnswerPositionPinned")
            Core.<*> (o Core..:? "lowValueLabel")
            Core.<*> (o Core..:? "mustPickSuggestion")
            Core.<*> (o Core..:? "numStars")
            Core.<*> (o Core..:? "openTextPlaceholder")
            Core.<*> (o Core..:? "openTextSuggestions")
            Core.<*> (o Core..:? "question")
            Core.<*> (o Core..:? "sentimentText")
            Core.<*> (o Core..:? "singleLineResponse")
            Core.<*> (o Core..:? "thresholdAnswers")
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

-- | Container object for image data and alt_text.
--
-- /See:/ 'newSurveyQuestionImage' smart constructor.
data SurveyQuestionImage = SurveyQuestionImage
  { -- | The alt text property used in image tags is required for all images.
    altText :: (Core.Maybe Core.Text),
    -- | Inline jpeg, gif, tiff, bmp, or png image raw bytes for an image question types.
    data' :: (Core.Maybe Core.Base64),
    -- | The read-only URL for the hosted images.
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

-- | Message representing why the survey was rejected from review, if it was.
--
-- /See:/ 'newSurveyRejection' smart constructor.
data SurveyRejection = SurveyRejection
  { -- | A human-readable explanation of what was wrong with the survey.
    explanation :: (Core.Maybe Core.Text),
    -- | Which category of rejection this was. See the Google Surveys Help Center for additional details on each category.
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

-- | Reference to the current results for a given survey.
--
-- /See:/ 'newSurveyResults' smart constructor.
data SurveyResults = SurveyResults
  { -- | Human readable string describing the status of the request.
    status :: (Core.Maybe Core.Text),
    -- | External survey ID as viewable by survey owners in the editor view.
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
            Core.<*> (o Core..:? "resources")
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
  { -- | /Deprecated/ Threshold to start a survey automatically if the quoted prices is less than or equal to this value. See Survey.Cost for more details. This will no longer be available after June 2018.
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
            Core.<$> ( o Core..:? "maxCostPerResponseNanos"
                         Core.<&> Core.fmap Core.fromAsText
                     )
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
