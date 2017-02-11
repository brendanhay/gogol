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
-- Google Cloud Natural Language API provides natural language
-- understanding technologies to developers. Examples include sentiment
-- analysis, entity recognition, and text annotations.
--
-- /See:/ <https://cloud.google.com/natural-language/ Google Cloud Natural Language API Reference>
module Network.Google.Language
    (
    -- * Service Configuration
      languageService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , LanguageAPI

    -- * Resources

    -- ** language.documents.analyzeEntities
    , module Network.Google.Resource.Language.Documents.AnalyzeEntities

    -- ** language.documents.analyzeSentiment
    , module Network.Google.Resource.Language.Documents.AnalyzeSentiment

    -- ** language.documents.analyzeSyntax
    , module Network.Google.Resource.Language.Documents.AnalyzeSyntax

    -- ** language.documents.annotateText
    , module Network.Google.Resource.Language.Documents.AnnotateText

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

    -- ** AnnotateTextRequest
    , AnnotateTextRequest
    , annotateTextRequest
    , atrEncodingType
    , atrFeatures
    , atrDocument

    -- ** EntityMention
    , EntityMention
    , entityMention
    , emText
    , emType

    -- ** TextSpan
    , TextSpan
    , textSpan
    , tsBeginOffSet
    , tsContent

    -- ** AnnotateTextResponse
    , AnnotateTextResponse
    , annotateTextResponse
    , atrEntities
    , atrTokens
    , atrDocumentSentiment
    , atrSentences
    , atrLanguage

    -- ** PartOfSpeechTense
    , PartOfSpeechTense (..)

    -- ** Features
    , Features
    , features
    , fExtractSyntax
    , fExtractDocumentSentiment
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
    , eName
    , eSalience
    , eMetadata
    , eType
    , eMentions

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

import           Network.Google.Language.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Language.Documents.AnalyzeEntities
import           Network.Google.Resource.Language.Documents.AnalyzeSentiment
import           Network.Google.Resource.Language.Documents.AnalyzeSyntax
import           Network.Google.Resource.Language.Documents.AnnotateText

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Cloud Natural Language API service.
type LanguageAPI =
     DocumentsAnalyzeSyntaxResource :<|>
       DocumentsAnnotateTextResource
       :<|> DocumentsAnalyzeSentimentResource
       :<|> DocumentsAnalyzeEntitiesResource
