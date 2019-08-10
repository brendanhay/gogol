{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CommentAnalyzer
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Perspective Comment Analyzer API provides information about the
-- potential impact of a comment on a conversation (e.g. it can provide a
-- score for the \"toxicity\" of a comment). Users can leverage the
-- \"SuggestCommentScore\" method to submit corrections to improve
-- Perspective over time. Users can set the \"doNotStore\" flag to ensure
-- that all submitted comments are automatically deleted after scores are
-- returned.
--
-- /See:/ <https://conversationai.github.io/ Perspective Comment Analyzer API Reference>
module Network.Google.CommentAnalyzer
    (
    -- * Service Configuration
      commentAnalyzerService

    -- * OAuth Scopes
    , userInfoEmailScope

    -- * API Declaration
    , CommentAnalyzerAPI

    -- * Resources

    -- ** commentanalyzer.comments.analyze
    , module Network.Google.Resource.CommentAnalyzer.Comments.Analyze

    -- ** commentanalyzer.comments.suggestscore
    , module Network.Google.Resource.CommentAnalyzer.Comments.Suggestscore

    -- * Types

    -- ** SpanScore
    , SpanScore
    , spanScore
    , ssBegin
    , ssScore
    , ssEnd

    -- ** AnalyzeCommentResponse
    , AnalyzeCommentResponse
    , analyzeCommentResponse
    , acrDetectedLanguages
    , acrClientToken
    , acrLanguages
    , acrAttributeScores

    -- ** SuggestCommentScoreResponse
    , SuggestCommentScoreResponse
    , suggestCommentScoreResponse
    , scsrDetectedLanguages
    , scsrClientToken
    , scsrRequestedLanguages

    -- ** Context
    , Context
    , context
    , cEntries
    , cArticleAndParentComment

    -- ** Score
    , Score
    , score
    , sValue
    , sType

    -- ** ArticleAndParentComment
    , ArticleAndParentComment
    , articleAndParentComment
    , aapcArticle
    , aapcParentComment

    -- ** AttributeParameters
    , AttributeParameters
    , attributeParameters
    , apScoreThreshold
    , apScoreType

    -- ** TextEntry
    , TextEntry
    , textEntry
    , teText
    , teType

    -- ** AttributeScores
    , AttributeScores
    , attributeScores
    , asSummaryScore
    , asSpanScores

    -- ** Xgafv
    , Xgafv (..)

    -- ** ScoreType
    , ScoreType (..)

    -- ** AnalyzeCommentResponseAttributeScores
    , AnalyzeCommentResponseAttributeScores
    , analyzeCommentResponseAttributeScores
    , acrasAddtional

    -- ** SuggestCommentScoreRequest
    , SuggestCommentScoreRequest
    , suggestCommentScoreRequest
    , sContext
    , sClientToken
    , sLanguages
    , sAttributeScores
    , sSessionId
    , sComment
    , sCommUnityId

    -- ** AttributeParametersScoreType
    , AttributeParametersScoreType (..)

    -- ** AnalyzeCommentRequest
    , AnalyzeCommentRequest
    , analyzeCommentRequest
    , aContext
    , aClientToken
    , aSpanAnnotations
    , aDoNotStore
    , aLanguages
    , aRequestedAttributes
    , aSessionId
    , aComment
    , aCommUnityId

    -- ** SuggestCommentScoreRequestAttributeScores
    , SuggestCommentScoreRequestAttributeScores
    , suggestCommentScoreRequestAttributeScores
    , scsrasAddtional

    -- ** AnalyzeCommentRequestRequestedAttributes
    , AnalyzeCommentRequestRequestedAttributes
    , analyzeCommentRequestRequestedAttributes
    , acrraAddtional

    -- ** TextEntryType
    , TextEntryType (..)
    ) where

import           Network.Google.CommentAnalyzer.Types
import           Network.Google.Prelude
import           Network.Google.Resource.CommentAnalyzer.Comments.Analyze
import           Network.Google.Resource.CommentAnalyzer.Comments.Suggestscore

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Perspective Comment Analyzer API service.
type CommentAnalyzerAPI =
     CommentsSuggestscoreResource :<|>
       CommentsAnalyzeResource
