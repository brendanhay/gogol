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
-- Module      : Gogol.CommentAnalyzer
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Perspective Comment Analyzer API provides information about the potential impact of a comment on a conversation (e.g. it can provide a score for the \"toxicity\" of a comment). Users can leverage the \"SuggestCommentScore\" method to submit corrections to improve Perspective over time. Users can set the \"doNotStore\" flag to ensure that all submitted comments are automatically deleted after scores are returned.
--
-- /See:/ <https://github.com/conversationai/perspectiveapi/blob/master/README.md Perspective Comment Analyzer API Reference>
module Gogol.CommentAnalyzer
  ( -- * Configuration
    commentAnalyzerService,

    -- * OAuth Scopes
    Userinfo'Email,

    -- * Resources

    -- ** commentanalyzer.comments.analyze
    CommentAnalyzerCommentsAnalyzeResource,
    newCommentAnalyzerCommentsAnalyze,
    CommentAnalyzerCommentsAnalyze,

    -- ** commentanalyzer.comments.suggestscore
    CommentAnalyzerCommentsSuggestscoreResource,
    newCommentAnalyzerCommentsSuggestscore,
    CommentAnalyzerCommentsSuggestscore,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AnalyzeCommentRequest
    AnalyzeCommentRequest (..),
    newAnalyzeCommentRequest,

    -- ** AnalyzeCommentRequest_RequestedAttributes
    AnalyzeCommentRequest_RequestedAttributes (..),
    newAnalyzeCommentRequest_RequestedAttributes,

    -- ** AnalyzeCommentResponse
    AnalyzeCommentResponse (..),
    newAnalyzeCommentResponse,

    -- ** AnalyzeCommentResponse_AttributeScores
    AnalyzeCommentResponse_AttributeScores (..),
    newAnalyzeCommentResponse_AttributeScores,

    -- ** ArticleAndParentComment
    ArticleAndParentComment (..),
    newArticleAndParentComment,

    -- ** AttributeParameters
    AttributeParameters (..),
    newAttributeParameters,

    -- ** AttributeParameters_ScoreType
    AttributeParameters_ScoreType (..),

    -- ** AttributeScores
    AttributeScores (..),
    newAttributeScores,

    -- ** Context
    Context (..),
    newContext,

    -- ** Score
    Score (..),
    newScore,

    -- ** Score_Type
    Score_Type (..),

    -- ** SpanScore
    SpanScore (..),
    newSpanScore,

    -- ** SuggestCommentScoreRequest
    SuggestCommentScoreRequest (..),
    newSuggestCommentScoreRequest,

    -- ** SuggestCommentScoreRequest_AttributeScores
    SuggestCommentScoreRequest_AttributeScores (..),
    newSuggestCommentScoreRequest_AttributeScores,

    -- ** SuggestCommentScoreResponse
    SuggestCommentScoreResponse (..),
    newSuggestCommentScoreResponse,

    -- ** TextEntry
    TextEntry (..),
    newTextEntry,

    -- ** TextEntry_Type
    TextEntry_Type (..),
  )
where

import Gogol.CommentAnalyzer.Comments.Analyze
import Gogol.CommentAnalyzer.Comments.Suggestscore
import Gogol.CommentAnalyzer.Types
