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
-- Module      : Gogol.Language.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Language.Types
  ( -- * Configuration
    languageService,

    -- * OAuth Scopes
    cloudLanguageScope,
    cloudPlatformScope,

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

import Gogol.Language.Internal.Product
import Gogol.Language.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Cloud Natural Language API. This contains the host and root path used as a starting point for constructing service requests.
languageService :: Core.ServiceConfig
languageService =
  Core.defaultService
    (Core.ServiceId "language:v1")
    "language.googleapis.com"

-- | Apply machine learning models to reveal the structure and meaning of text
cloudLanguageScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-language"]
cloudLanguageScope = Core.Proxy

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
