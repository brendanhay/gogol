{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CommentAnalyzer.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CommentAnalyzer.Types
  ( -- * Configuration
    commentAnalyzerService,

    -- * OAuth Scopes
    Userinfo'Email,

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

import Gogol.CommentAnalyzer.Internal.Product
import Gogol.CommentAnalyzer.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1alpha1@ of the Perspective Comment Analyzer API. This contains the host and root path used as a starting point for constructing service requests.
commentAnalyzerService :: Core.ServiceConfig
commentAnalyzerService =
  Core.defaultService
    (Core.ServiceId "commentanalyzer:v1alpha1")
    "commentanalyzer.googleapis.com"

-- | View your email address
type Userinfo'Email =
  "https://www.googleapis.com/auth/userinfo.email"
