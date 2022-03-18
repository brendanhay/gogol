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
-- Module      : Network.Google.Language
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides natural language understanding technologies, such as sentiment analysis, entity recognition, entity sentiment analysis, and other text annotations, to developers.
--
-- /See:/ <https://cloud.google.com/natural-language/ Cloud Natural Language API Reference>
module Network.Google.Language
  ( -- * Configuration
    languageService,

    -- * OAuth Scopes
    cloudLanguageScope,
    cloudPlatformScope,

    -- * Resources

    -- ** language.documents.analyzeEntities
    LanguageDocumentsAnalyzeEntitiesResource,
    newLanguageDocumentsAnalyzeEntities,
    LanguageDocumentsAnalyzeEntities,

    -- ** language.documents.analyzeEntitySentiment
    LanguageDocumentsAnalyzeEntitySentimentResource,
    newLanguageDocumentsAnalyzeEntitySentiment,
    LanguageDocumentsAnalyzeEntitySentiment,

    -- ** language.documents.analyzeSentiment
    LanguageDocumentsAnalyzeSentimentResource,
    newLanguageDocumentsAnalyzeSentiment,
    LanguageDocumentsAnalyzeSentiment,

    -- ** language.documents.analyzeSyntax
    LanguageDocumentsAnalyzeSyntaxResource,
    newLanguageDocumentsAnalyzeSyntax,
    LanguageDocumentsAnalyzeSyntax,

    -- ** language.documents.annotateText
    LanguageDocumentsAnnotateTextResource,
    newLanguageDocumentsAnnotateText,
    LanguageDocumentsAnnotateText,

    -- ** language.documents.classifyText
    LanguageDocumentsClassifyTextResource,
    newLanguageDocumentsClassifyText,
    LanguageDocumentsClassifyText,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AnalyzeEntitiesRequest
    AnalyzeEntitiesRequest (..),
    newAnalyzeEntitiesRequest,

    -- ** AnalyzeEntitiesRequest_EncodingType
    AnalyzeEntitiesRequest_EncodingType (..),

    -- ** AnalyzeEntitiesResponse
    AnalyzeEntitiesResponse (..),
    newAnalyzeEntitiesResponse,

    -- ** AnalyzeEntitySentimentRequest
    AnalyzeEntitySentimentRequest (..),
    newAnalyzeEntitySentimentRequest,

    -- ** AnalyzeEntitySentimentRequest_EncodingType
    AnalyzeEntitySentimentRequest_EncodingType (..),

    -- ** AnalyzeEntitySentimentResponse
    AnalyzeEntitySentimentResponse (..),
    newAnalyzeEntitySentimentResponse,

    -- ** AnalyzeSentimentRequest
    AnalyzeSentimentRequest (..),
    newAnalyzeSentimentRequest,

    -- ** AnalyzeSentimentRequest_EncodingType
    AnalyzeSentimentRequest_EncodingType (..),

    -- ** AnalyzeSentimentResponse
    AnalyzeSentimentResponse (..),
    newAnalyzeSentimentResponse,

    -- ** AnalyzeSyntaxRequest
    AnalyzeSyntaxRequest (..),
    newAnalyzeSyntaxRequest,

    -- ** AnalyzeSyntaxRequest_EncodingType
    AnalyzeSyntaxRequest_EncodingType (..),

    -- ** AnalyzeSyntaxResponse
    AnalyzeSyntaxResponse (..),
    newAnalyzeSyntaxResponse,

    -- ** AnnotateTextRequest
    AnnotateTextRequest (..),
    newAnnotateTextRequest,

    -- ** AnnotateTextRequest_EncodingType
    AnnotateTextRequest_EncodingType (..),

    -- ** AnnotateTextResponse
    AnnotateTextResponse (..),
    newAnnotateTextResponse,

    -- ** ClassificationCategory
    ClassificationCategory (..),
    newClassificationCategory,

    -- ** ClassifyTextRequest
    ClassifyTextRequest (..),
    newClassifyTextRequest,

    -- ** ClassifyTextResponse
    ClassifyTextResponse (..),
    newClassifyTextResponse,

    -- ** DependencyEdge
    DependencyEdge (..),
    newDependencyEdge,

    -- ** DependencyEdge_Label
    DependencyEdge_Label (..),

    -- ** Document
    Document (..),
    newDocument,

    -- ** Document_Type
    Document_Type (..),

    -- ** Entity
    Entity (..),
    newEntity,

    -- ** Entity_Metadata
    Entity_Metadata (..),
    newEntity_Metadata,

    -- ** Entity_Type
    Entity_Type (..),

    -- ** EntityMention
    EntityMention (..),
    newEntityMention,

    -- ** EntityMention_Type
    EntityMention_Type (..),

    -- ** Features
    Features (..),
    newFeatures,

    -- ** PartOfSpeech
    PartOfSpeech (..),
    newPartOfSpeech,

    -- ** PartOfSpeech_Aspect
    PartOfSpeech_Aspect (..),

    -- ** PartOfSpeech_Case
    PartOfSpeech_Case (..),

    -- ** PartOfSpeech_Form
    PartOfSpeech_Form (..),

    -- ** PartOfSpeech_Gender
    PartOfSpeech_Gender (..),

    -- ** PartOfSpeech_Mood
    PartOfSpeech_Mood (..),

    -- ** PartOfSpeech_Number
    PartOfSpeech_Number (..),

    -- ** PartOfSpeech_Person
    PartOfSpeech_Person (..),

    -- ** PartOfSpeech_Proper
    PartOfSpeech_Proper (..),

    -- ** PartOfSpeech_Reciprocity
    PartOfSpeech_Reciprocity (..),

    -- ** PartOfSpeech_Tag
    PartOfSpeech_Tag (..),

    -- ** PartOfSpeech_Tense
    PartOfSpeech_Tense (..),

    -- ** PartOfSpeech_Voice
    PartOfSpeech_Voice (..),

    -- ** Sentence
    Sentence (..),
    newSentence,

    -- ** Sentiment
    Sentiment (..),
    newSentiment,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TextSpan
    TextSpan (..),
    newTextSpan,

    -- ** Token
    Token (..),
    newToken,
  )
where

import Network.Google.Language.Documents.AnalyzeEntities
import Network.Google.Language.Documents.AnalyzeEntitySentiment
import Network.Google.Language.Documents.AnalyzeSentiment
import Network.Google.Language.Documents.AnalyzeSyntax
import Network.Google.Language.Documents.AnnotateText
import Network.Google.Language.Documents.ClassifyText
import Network.Google.Language.Types
