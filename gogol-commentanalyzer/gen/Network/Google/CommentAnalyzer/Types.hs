{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CommentAnalyzer.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CommentAnalyzer.Types
    (
    -- * Service Configuration
      commentAnalyzerService

    -- * OAuth Scopes
    , userInfoEmailScope

    -- * SpanScore
    , SpanScore
    , spanScore
    , ssBegin
    , ssScore
    , ssEnd

    -- * AnalyzeCommentResponse
    , AnalyzeCommentResponse
    , analyzeCommentResponse
    , acrDetectedLanguages
    , acrClientToken
    , acrLanguages
    , acrAttributeScores

    -- * SuggestCommentScoreResponse
    , SuggestCommentScoreResponse
    , suggestCommentScoreResponse
    , scsrDetectedLanguages
    , scsrClientToken
    , scsrRequestedLanguages

    -- * Context
    , Context
    , context
    , cEntries
    , cArticleAndParentComment

    -- * Score
    , Score
    , score
    , sValue
    , sType

    -- * ArticleAndParentComment
    , ArticleAndParentComment
    , articleAndParentComment
    , aapcArticle
    , aapcParentComment

    -- * AttributeParameters
    , AttributeParameters
    , attributeParameters
    , apScoreThreshold
    , apScoreType

    -- * TextEntry
    , TextEntry
    , textEntry
    , teText
    , teType

    -- * AttributeScores
    , AttributeScores
    , attributeScores
    , asSummaryScore
    , asSpanScores

    -- * Xgafv
    , Xgafv (..)

    -- * ScoreType
    , ScoreType (..)

    -- * AnalyzeCommentResponseAttributeScores
    , AnalyzeCommentResponseAttributeScores
    , analyzeCommentResponseAttributeScores
    , acrasAddtional

    -- * SuggestCommentScoreRequest
    , SuggestCommentScoreRequest
    , suggestCommentScoreRequest
    , sContext
    , sClientToken
    , sLanguages
    , sAttributeScores
    , sSessionId
    , sComment
    , sCommUnityId

    -- * AttributeParametersScoreType
    , AttributeParametersScoreType (..)

    -- * AnalyzeCommentRequest
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

    -- * SuggestCommentScoreRequestAttributeScores
    , SuggestCommentScoreRequestAttributeScores
    , suggestCommentScoreRequestAttributeScores
    , scsrasAddtional

    -- * AnalyzeCommentRequestRequestedAttributes
    , AnalyzeCommentRequestRequestedAttributes
    , analyzeCommentRequestRequestedAttributes
    , acrraAddtional

    -- * TextEntryType
    , TextEntryType (..)
    ) where

import Network.Google.CommentAnalyzer.Types.Product
import Network.Google.CommentAnalyzer.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1alpha1' of the Perspective Comment Analyzer API. This contains the host and root path used as a starting point for constructing service requests.
commentAnalyzerService :: ServiceConfig
commentAnalyzerService
  = defaultService
      (ServiceId "commentanalyzer:v1alpha1")
      "commentanalyzer.googleapis.com"

-- | View your email address
userInfoEmailScope :: Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userInfoEmailScope = Proxy
