{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Language
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides natural language understanding technologies, such as sentiment
-- analysis, entity recognition, entity sentiment analysis, and other text
-- annotations, to developers.
--
-- /See:/ <https://cloud.google.com/natural-language/ Cloud Natural Language API Reference>
module Network.Google.Language
    (
    -- * Service Configuration
      languageService

    -- * OAuth Scopes
    , cloudLanguageScope
    , cloudPlatformScope

    -- * API Declaration
    , LanguageAPI

    -- * Resources

    -- ** language.documents.analyzeEntities
    , module Network.Google.Resource.Language.Documents.AnalyzeEntities

    -- ** language.documents.analyzeEntitySentiment
    , module Network.Google.Resource.Language.Documents.AnalyzeEntitySentiment

    -- ** language.documents.analyzeSentiment
    , module Network.Google.Resource.Language.Documents.AnalyzeSentiment

    -- ** language.documents.analyzeSyntax
    , module Network.Google.Resource.Language.Documents.AnalyzeSyntax

    -- ** language.documents.annotateText
    , module Network.Google.Resource.Language.Documents.AnnotateText

    -- ** language.documents.classifyText
    , module Network.Google.Resource.Language.Documents.ClassifyText

    -- * Types

    -- ** AnalyzeSyntaxRequest
    , AnalyzeSyntaxRequest
    , analyzeSyntaxRequest
    , asrEncodingType
    , asrDocument

    -- ** DependencyEdge
    , DependencyEdge
    , dependencyEdge
    , deHeadTokenIndex
    , deLabel

    -- ** ClassifyTextRequest
    , ClassifyTextRequest
    , classifyTextRequest
    , ctrDocument

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** PartOfSpeechProper
    , PartOfSpeechProper (..)

    -- ** PartOfSpeechTag
    , PartOfSpeechTag (..)

    -- ** Sentiment
    , Sentiment
    , sentiment
    , sScore
    , sMagnitude

    -- ** DocumentType
    , DocumentType (..)

    -- ** AnalyzeSyntaxRequestEncodingType
    , AnalyzeSyntaxRequestEncodingType (..)

    -- ** AnalyzeEntitySentimentRequestEncodingType
    , AnalyzeEntitySentimentRequestEncodingType (..)

    -- ** DependencyEdgeLabel
    , DependencyEdgeLabel (..)

    -- ** PartOfSpeechVoice
    , PartOfSpeechVoice (..)

    -- ** PartOfSpeechForm
    , PartOfSpeechForm (..)

    -- ** PartOfSpeechPerson
    , PartOfSpeechPerson (..)

    -- ** Token
    , Token
    , token
    , tDependencyEdge
    , tText
    , tLemma
    , tPartOfSpeech

    -- ** EntityType
    , EntityType (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** ClassificationCategory
    , ClassificationCategory
    , classificationCategory
    , ccConfidence
    , ccName

    -- ** AnnotateTextRequest
    , AnnotateTextRequest
    , annotateTextRequest
    , atrEncodingType
    , atrFeatures
    , atrDocument

    -- ** EntityMention
    , EntityMention
    , entityMention
    , emSentiment
    , emText
    , emType

    -- ** TextSpan
    , TextSpan
    , textSpan
    , tsBeginOffSet
    , tsContent

    -- ** AnalyzeEntitySentimentRequest
    , AnalyzeEntitySentimentRequest
    , analyzeEntitySentimentRequest
    , aesrEncodingType
    , aesrDocument

    -- ** AnnotateTextResponse
    , AnnotateTextResponse
    , annotateTextResponse
    , atrEntities
    , atrTokens
    , atrDocumentSentiment
    , atrCategories
    , atrSentences
    , atrLanguage

    -- ** PartOfSpeechTense
    , PartOfSpeechTense (..)

    -- ** Features
    , Features
    , features
    , fExtractSyntax
    , fExtractDocumentSentiment
    , fClassifyText
    , fExtractEntitySentiment
    , fExtractEntities

    -- ** Document
    , Document
    , document
    , dContent
    , dLanguage
    , dGcsContentURI
    , dType

    -- ** PartOfSpeechMood
    , PartOfSpeechMood (..)

    -- ** PartOfSpeechCase
    , PartOfSpeechCase (..)

    -- ** AnalyzeSentimentRequest
    , AnalyzeSentimentRequest
    , analyzeSentimentRequest
    , aEncodingType
    , aDocument

    -- ** Xgafv
    , Xgafv (..)

    -- ** AnalyzeEntitiesResponse
    , AnalyzeEntitiesResponse
    , analyzeEntitiesResponse
    , aerEntities
    , aerLanguage

    -- ** AnnotateTextRequestEncodingType
    , AnnotateTextRequestEncodingType (..)

    -- ** PartOfSpeechNumber
    , PartOfSpeechNumber (..)

    -- ** AnalyzeSentimentResponse
    , AnalyzeSentimentResponse
    , analyzeSentimentResponse
    , asrDocumentSentiment
    , asrSentences
    , asrLanguage

    -- ** AnalyzeEntitiesRequest
    , AnalyzeEntitiesRequest
    , analyzeEntitiesRequest
    , aerEncodingType
    , aerDocument

    -- ** AnalyzeEntitiesRequestEncodingType
    , AnalyzeEntitiesRequestEncodingType (..)

    -- ** Entity
    , Entity
    , entity
    , eSentiment
    , eName
    , eSalience
    , eMetadata
    , eType
    , eMentions

    -- ** AnalyzeEntitySentimentResponse
    , AnalyzeEntitySentimentResponse
    , analyzeEntitySentimentResponse
    , aesrEntities
    , aesrLanguage

    -- ** AnalyzeSyntaxResponse
    , AnalyzeSyntaxResponse
    , analyzeSyntaxResponse
    , aTokens
    , aSentences
    , aLanguage

    -- ** EntityMetadata
    , EntityMetadata
    , entityMetadata
    , emAddtional

    -- ** PartOfSpeechAspect
    , PartOfSpeechAspect (..)

    -- ** ClassifyTextResponse
    , ClassifyTextResponse
    , classifyTextResponse
    , ctrCategories

    -- ** PartOfSpeech
    , PartOfSpeech
    , partOfSpeech
    , posProper
    , posTag
    , posPerson
    , posAspect
    , posCase
    , posGender
    , posReciprocity
    , posNumber
    , posVoice
    , posForm
    , posTense
    , posMood

    -- ** PartOfSpeechReciprocity
    , PartOfSpeechReciprocity (..)

    -- ** PartOfSpeechGender
    , PartOfSpeechGender (..)

    -- ** AnalyzeSentimentRequestEncodingType
    , AnalyzeSentimentRequestEncodingType (..)

    -- ** EntityMentionType
    , EntityMentionType (..)

    -- ** Sentence
    , Sentence
    , sentence
    , sSentiment
    , sText
    ) where

import Network.Google.Prelude
import Network.Google.Language.Types
import Network.Google.Resource.Language.Documents.AnalyzeEntities
import Network.Google.Resource.Language.Documents.AnalyzeEntitySentiment
import Network.Google.Resource.Language.Documents.AnalyzeSentiment
import Network.Google.Resource.Language.Documents.AnalyzeSyntax
import Network.Google.Resource.Language.Documents.AnnotateText
import Network.Google.Resource.Language.Documents.ClassifyText

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Natural Language API service.
type LanguageAPI =
     DocumentsAnalyzeSyntaxResource :<|>
       DocumentsClassifyTextResource
       :<|> DocumentsAnnotateTextResource
       :<|> DocumentsAnalyzeEntitySentimentResource
       :<|> DocumentsAnalyzeSentimentResource
       :<|> DocumentsAnalyzeEntitiesResource
