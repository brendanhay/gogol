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
-- Module      : Gogol.CommentAnalyzer.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CommentAnalyzer.Internal.Product
  ( -- * AnalyzeCommentRequest
    AnalyzeCommentRequest (..),
    newAnalyzeCommentRequest,

    -- * AnalyzeCommentRequest_RequestedAttributes
    AnalyzeCommentRequest_RequestedAttributes (..),
    newAnalyzeCommentRequest_RequestedAttributes,

    -- * AnalyzeCommentResponse
    AnalyzeCommentResponse (..),
    newAnalyzeCommentResponse,

    -- * AnalyzeCommentResponse_AttributeScores
    AnalyzeCommentResponse_AttributeScores (..),
    newAnalyzeCommentResponse_AttributeScores,

    -- * ArticleAndParentComment
    ArticleAndParentComment (..),
    newArticleAndParentComment,

    -- * AttributeParameters
    AttributeParameters (..),
    newAttributeParameters,

    -- * AttributeScores
    AttributeScores (..),
    newAttributeScores,

    -- * Context
    Context (..),
    newContext,

    -- * Score
    Score (..),
    newScore,

    -- * SpanScore
    SpanScore (..),
    newSpanScore,

    -- * SuggestCommentScoreRequest
    SuggestCommentScoreRequest (..),
    newSuggestCommentScoreRequest,

    -- * SuggestCommentScoreRequest_AttributeScores
    SuggestCommentScoreRequest_AttributeScores (..),
    newSuggestCommentScoreRequest_AttributeScores,

    -- * SuggestCommentScoreResponse
    SuggestCommentScoreResponse (..),
    newSuggestCommentScoreResponse,

    -- * TextEntry
    TextEntry (..),
    newTextEntry,
  )
where

import Gogol.CommentAnalyzer.Internal.Sum
import qualified Gogol.Prelude as Core

-- | The comment analysis request message. LINT.IfChange
--
-- /See:/ 'newAnalyzeCommentRequest' smart constructor.
data AnalyzeCommentRequest = AnalyzeCommentRequest
  { -- | Opaque token that is echoed from the request to the response.
    clientToken :: (Core.Maybe Core.Text),
    -- | The comment to analyze.
    comment :: (Core.Maybe TextEntry),
    -- | Optional identifier associating this AnalyzeCommentRequest with a particular client\'s community. Different communities may have different norms and rules. Specifying this value enables us to explore building community-specific models for clients.
    communityId :: (Core.Maybe Core.Text),
    -- | The context of the comment.
    context :: (Core.Maybe Context),
    -- | Do not store the comment or context sent in this request. By default, the service may store comments\/context for debugging purposes.
    doNotStore :: (Core.Maybe Core.Bool),
    -- | The language(s) of the comment and context. If none are specified, we attempt to automatically detect the language. Specifying multiple languages means the text contains multiple lanugages. Both ISO and BCP-47 language codes are accepted.
    --
    -- The server returns an error if no language was specified and language detection fails. The server also returns an error if the languages (either specified by the caller, or auto-detected) are not /all/ supported by the service.
    languages :: (Core.Maybe [Core.Text]),
    -- | Specification of requested attributes. The AttributeParameters serve as configuration for each associated attribute. The map keys are attribute names. The available attributes may be different on each RFE installation, and can be seen by calling ListAttributes (see above). For the prod installation, known as Perspective API, at blade:commentanalyzer-esf and commentanalyzer.googleapis.com, see go\/checker-models (internal) and https:\/\/github.com\/conversationai\/perspectiveapi\/blob\/master\/2-api\/models.md#all-attribute-types.
    requestedAttributes :: (Core.Maybe AnalyzeCommentRequest_RequestedAttributes),
    -- | Session ID. Used to join related RPCs into a single session. For example, an interactive tool that calls both the AnalyzeComment and SuggestCommentScore RPCs should set all invocations of both RPCs to the same Session ID, typically a random 64-bit integer.
    sessionId :: (Core.Maybe Core.Text),
    -- | An advisory parameter that will return span annotations if the model is capable of providing scores with sub-comment resolution. This will likely increase the size of the returned message.
    spanAnnotations :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeCommentRequest' with the minimum fields required to make a request.
newAnalyzeCommentRequest ::
  AnalyzeCommentRequest
newAnalyzeCommentRequest =
  AnalyzeCommentRequest
    { clientToken = Core.Nothing,
      comment = Core.Nothing,
      communityId = Core.Nothing,
      context = Core.Nothing,
      doNotStore = Core.Nothing,
      languages = Core.Nothing,
      requestedAttributes = Core.Nothing,
      sessionId = Core.Nothing,
      spanAnnotations = Core.Nothing
    }

instance Core.FromJSON AnalyzeCommentRequest where
  parseJSON =
    Core.withObject
      "AnalyzeCommentRequest"
      ( \o ->
          AnalyzeCommentRequest
            Core.<$> (o Core..:? "clientToken")
            Core.<*> (o Core..:? "comment")
            Core.<*> (o Core..:? "communityId")
            Core.<*> (o Core..:? "context")
            Core.<*> (o Core..:? "doNotStore")
            Core.<*> (o Core..:? "languages" Core..!= Core.mempty)
            Core.<*> (o Core..:? "requestedAttributes")
            Core.<*> (o Core..:? "sessionId")
            Core.<*> (o Core..:? "spanAnnotations")
      )

instance Core.ToJSON AnalyzeCommentRequest where
  toJSON AnalyzeCommentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientToken" Core..=) Core.<$> clientToken,
            ("comment" Core..=) Core.<$> comment,
            ("communityId" Core..=) Core.<$> communityId,
            ("context" Core..=) Core.<$> context,
            ("doNotStore" Core..=) Core.<$> doNotStore,
            ("languages" Core..=) Core.<$> languages,
            ("requestedAttributes" Core..=)
              Core.<$> requestedAttributes,
            ("sessionId" Core..=) Core.<$> sessionId,
            ("spanAnnotations" Core..=)
              Core.<$> spanAnnotations
          ]
      )

-- | Specification of requested attributes. The AttributeParameters serve as configuration for each associated attribute. The map keys are attribute names. The available attributes may be different on each RFE installation, and can be seen by calling ListAttributes (see above). For the prod installation, known as Perspective API, at blade:commentanalyzer-esf and commentanalyzer.googleapis.com, see go\/checker-models (internal) and https:\/\/github.com\/conversationai\/perspectiveapi\/blob\/master\/2-api\/models.md#all-attribute-types.
--
-- /See:/ 'newAnalyzeCommentRequest_RequestedAttributes' smart constructor.
newtype AnalyzeCommentRequest_RequestedAttributes = AnalyzeCommentRequest_RequestedAttributes
  { -- |
    addtional :: (Core.HashMap Core.Text AttributeParameters)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeCommentRequest_RequestedAttributes' with the minimum fields required to make a request.
newAnalyzeCommentRequest_RequestedAttributes ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text AttributeParameters ->
  AnalyzeCommentRequest_RequestedAttributes
newAnalyzeCommentRequest_RequestedAttributes addtional =
  AnalyzeCommentRequest_RequestedAttributes {addtional = addtional}

instance
  Core.FromJSON
    AnalyzeCommentRequest_RequestedAttributes
  where
  parseJSON =
    Core.withObject
      "AnalyzeCommentRequest_RequestedAttributes"
      ( \o ->
          AnalyzeCommentRequest_RequestedAttributes
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    AnalyzeCommentRequest_RequestedAttributes
  where
  toJSON AnalyzeCommentRequest_RequestedAttributes {..} =
    Core.toJSON addtional

-- | The comment analysis response message.
--
-- /See:/ 'newAnalyzeCommentResponse' smart constructor.
data AnalyzeCommentResponse = AnalyzeCommentResponse
  { -- | Scores for the requested attributes. The map keys are attribute names (same as the requested/attribute field in AnalyzeCommentRequest, for example \"ATTACK/ON_AUTHOR\", \"INFLAMMATORY\", etc).
    attributeScores :: (Core.Maybe AnalyzeCommentResponse_AttributeScores),
    -- | Same token from the original AnalyzeCommentRequest.
    clientToken :: (Core.Maybe Core.Text),
    -- | Contains the languages detected from the text content, sorted in order of likelihood.
    detectedLanguages :: (Core.Maybe [Core.Text]),
    -- | The language(s) used by CommentAnalyzer service to choose which Model to use when analyzing the comment. Might better be called \"effective/languages\". The logic used to make the choice is as follows: if !Request.languages.empty() effective/languages = Request.languages else effective/languages = detected/languages[0]
    languages :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeCommentResponse' with the minimum fields required to make a request.
newAnalyzeCommentResponse ::
  AnalyzeCommentResponse
newAnalyzeCommentResponse =
  AnalyzeCommentResponse
    { attributeScores = Core.Nothing,
      clientToken = Core.Nothing,
      detectedLanguages = Core.Nothing,
      languages = Core.Nothing
    }

instance Core.FromJSON AnalyzeCommentResponse where
  parseJSON =
    Core.withObject
      "AnalyzeCommentResponse"
      ( \o ->
          AnalyzeCommentResponse
            Core.<$> (o Core..:? "attributeScores")
            Core.<*> (o Core..:? "clientToken")
            Core.<*> (o Core..:? "detectedLanguages" Core..!= Core.mempty)
            Core.<*> (o Core..:? "languages" Core..!= Core.mempty)
      )

instance Core.ToJSON AnalyzeCommentResponse where
  toJSON AnalyzeCommentResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributeScores" Core..=)
              Core.<$> attributeScores,
            ("clientToken" Core..=) Core.<$> clientToken,
            ("detectedLanguages" Core..=)
              Core.<$> detectedLanguages,
            ("languages" Core..=) Core.<$> languages
          ]
      )

-- | Scores for the requested attributes. The map keys are attribute names (same as the requested/attribute field in AnalyzeCommentRequest, for example \"ATTACK/ON_AUTHOR\", \"INFLAMMATORY\", etc).
--
-- /See:/ 'newAnalyzeCommentResponse_AttributeScores' smart constructor.
newtype AnalyzeCommentResponse_AttributeScores = AnalyzeCommentResponse_AttributeScores
  { -- |
    addtional :: (Core.HashMap Core.Text AttributeScores)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeCommentResponse_AttributeScores' with the minimum fields required to make a request.
newAnalyzeCommentResponse_AttributeScores ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text AttributeScores ->
  AnalyzeCommentResponse_AttributeScores
newAnalyzeCommentResponse_AttributeScores addtional =
  AnalyzeCommentResponse_AttributeScores {addtional = addtional}

instance
  Core.FromJSON
    AnalyzeCommentResponse_AttributeScores
  where
  parseJSON =
    Core.withObject
      "AnalyzeCommentResponse_AttributeScores"
      ( \o ->
          AnalyzeCommentResponse_AttributeScores
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    AnalyzeCommentResponse_AttributeScores
  where
  toJSON AnalyzeCommentResponse_AttributeScores {..} =
    Core.toJSON addtional

-- | A type of context specific to a comment left on a single-threaded comment message board, where comments are either a top level comment or the child of a top level comment.
--
-- /See:/ 'newArticleAndParentComment' smart constructor.
data ArticleAndParentComment = ArticleAndParentComment
  { -- | The source content about which the comment was made (article text, article summary, video transcript, etc).
    article :: (Core.Maybe TextEntry),
    -- | Refers to text that is a direct parent of the source comment, such as in a one-deep threaded message board. This field will only be present for comments that are replies to other comments and will not be populated for direct comments on the article_text.
    parentComment :: (Core.Maybe TextEntry)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ArticleAndParentComment' with the minimum fields required to make a request.
newArticleAndParentComment ::
  ArticleAndParentComment
newArticleAndParentComment =
  ArticleAndParentComment {article = Core.Nothing, parentComment = Core.Nothing}

instance Core.FromJSON ArticleAndParentComment where
  parseJSON =
    Core.withObject
      "ArticleAndParentComment"
      ( \o ->
          ArticleAndParentComment
            Core.<$> (o Core..:? "article")
            Core.<*> (o Core..:? "parentComment")
      )

instance Core.ToJSON ArticleAndParentComment where
  toJSON ArticleAndParentComment {..} =
    Core.object
      ( Core.catMaybes
          [ ("article" Core..=) Core.<$> article,
            ("parentComment" Core..=) Core.<$> parentComment
          ]
      )

-- | Configurable parameters for attribute scoring.
--
-- /See:/ 'newAttributeParameters' smart constructor.
data AttributeParameters = AttributeParameters
  { -- | Don\'t return scores for this attribute that are below this threshold. If unset, a default threshold will be applied. A FloatValue wrapper is used to distinguish between 0 vs. default\/unset.
    scoreThreshold :: (Core.Maybe Core.Double),
    -- | What type of scores to return. If unset, defaults to probability scores.
    scoreType :: (Core.Maybe AttributeParameters_ScoreType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttributeParameters' with the minimum fields required to make a request.
newAttributeParameters ::
  AttributeParameters
newAttributeParameters =
  AttributeParameters {scoreThreshold = Core.Nothing, scoreType = Core.Nothing}

instance Core.FromJSON AttributeParameters where
  parseJSON =
    Core.withObject
      "AttributeParameters"
      ( \o ->
          AttributeParameters
            Core.<$> (o Core..:? "scoreThreshold")
            Core.<*> (o Core..:? "scoreType")
      )

instance Core.ToJSON AttributeParameters where
  toJSON AttributeParameters {..} =
    Core.object
      ( Core.catMaybes
          [ ("scoreThreshold" Core..=) Core.<$> scoreThreshold,
            ("scoreType" Core..=) Core.<$> scoreType
          ]
      )

-- | This holds score values for a single attribute. It contains both per-span scores as well as an overall summary score..
--
-- /See:/ 'newAttributeScores' smart constructor.
data AttributeScores = AttributeScores
  { -- | Per-span scores.
    spanScores :: (Core.Maybe [SpanScore]),
    -- | Overall score for comment as a whole.
    summaryScore :: (Core.Maybe Score)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttributeScores' with the minimum fields required to make a request.
newAttributeScores ::
  AttributeScores
newAttributeScores =
  AttributeScores {spanScores = Core.Nothing, summaryScore = Core.Nothing}

instance Core.FromJSON AttributeScores where
  parseJSON =
    Core.withObject
      "AttributeScores"
      ( \o ->
          AttributeScores
            Core.<$> (o Core..:? "spanScores" Core..!= Core.mempty)
            Core.<*> (o Core..:? "summaryScore")
      )

instance Core.ToJSON AttributeScores where
  toJSON AttributeScores {..} =
    Core.object
      ( Core.catMaybes
          [ ("spanScores" Core..=) Core.<$> spanScores,
            ("summaryScore" Core..=) Core.<$> summaryScore
          ]
      )

-- | Context is typically something that a Comment is referencing or replying to (such as an article, or previous comment). Note: Populate only ONE OF the following fields. The oneof syntax cannot be used because that would require nesting entries inside another message and breaking backwards compatibility. The server will return an error if more than one of the following fields is present.
--
-- /See:/ 'newContext' smart constructor.
data Context = Context
  { -- | Information about the source for which the original comment was made, and any parent comment info.
    articleAndParentComment :: (Core.Maybe ArticleAndParentComment),
    -- | A list of messages. For example, a linear comments section or forum thread.
    entries :: (Core.Maybe [TextEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Context' with the minimum fields required to make a request.
newContext ::
  Context
newContext =
  Context {articleAndParentComment = Core.Nothing, entries = Core.Nothing}

instance Core.FromJSON Context where
  parseJSON =
    Core.withObject
      "Context"
      ( \o ->
          Context
            Core.<$> (o Core..:? "articleAndParentComment")
            Core.<*> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance Core.ToJSON Context where
  toJSON Context {..} =
    Core.object
      ( Core.catMaybes
          [ ("articleAndParentComment" Core..=)
              Core.<$> articleAndParentComment,
            ("entries" Core..=) Core.<$> entries
          ]
      )

-- | Analysis scores are described by a value and a ScoreType.
--
-- /See:/ 'newScore' smart constructor.
data Score = Score
  { -- | The type of the above value.
    type' :: (Core.Maybe Score_Type),
    -- | Score value. Semantics described by type below.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Score' with the minimum fields required to make a request.
newScore ::
  Score
newScore = Score {type' = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Score where
  parseJSON =
    Core.withObject
      "Score"
      ( \o ->
          Score
            Core.<$> (o Core..:? "type") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Score where
  toJSON Score {..} =
    Core.object
      ( Core.catMaybes
          [ ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | This is a single score for a given span of text.
--
-- /See:/ 'newSpanScore' smart constructor.
data SpanScore = SpanScore
  { -- | \"begin\" and \"end\" describe the span of the original text that the attribute score applies to. The values are the UTF-16 codepoint range. \"end\" is exclusive. For example, with the text \"Hi there\", the begin\/end pair (0,2) describes the text \"Hi\".
    --
    -- If \"begin\" and \"end\" are unset, the score applies to the full text.
    begin :: (Core.Maybe Core.Int32),
    -- |
    end :: (Core.Maybe Core.Int32),
    -- | The score value.
    score :: (Core.Maybe Score)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpanScore' with the minimum fields required to make a request.
newSpanScore ::
  SpanScore
newSpanScore =
  SpanScore {begin = Core.Nothing, end = Core.Nothing, score = Core.Nothing}

instance Core.FromJSON SpanScore where
  parseJSON =
    Core.withObject
      "SpanScore"
      ( \o ->
          SpanScore
            Core.<$> (o Core..:? "begin")
            Core.<*> (o Core..:? "end")
            Core.<*> (o Core..:? "score")
      )

instance Core.ToJSON SpanScore where
  toJSON SpanScore {..} =
    Core.object
      ( Core.catMaybes
          [ ("begin" Core..=) Core.<$> begin,
            ("end" Core..=) Core.<$> end,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | The comment score suggestion request message.
--
-- /See:/ 'newSuggestCommentScoreRequest' smart constructor.
data SuggestCommentScoreRequest = SuggestCommentScoreRequest
  { -- | Attribute scores for the comment. The map keys are attribute names, same as the requested/attribute field in AnalyzeCommentRequest (for example \"ATTACK/ON_AUTHOR\", \"INFLAMMATORY\", etc.). This field has the same type as the @attribute_scores@ field in AnalyzeCommentResponse.
    --
    -- To specify an overall attribute score for the entire comment as a whole, use the @summary_score@ field of the mapped AttributeScores object. To specify scores on specific subparts of the comment, use the @span_scores@ field. All SpanScore objects must have begin and end fields set.
    --
    -- All Score objects must be explicitly set (for binary classification, use the score values 0 and 1). If Score objects don\'t include a ScoreType, @PROBABILITY@ is assumed.
    --
    -- @attribute_scores@ must not be empty. The mapped AttributeScores objects also must not be empty. An @INVALID_ARGUMENT@ error is returned for all malformed requests.
    attributeScores :: (Core.Maybe SuggestCommentScoreRequest_AttributeScores),
    -- | Opaque token that is echoed from the request to the response.
    clientToken :: (Core.Maybe Core.Text),
    -- | The comment being scored.
    comment :: (Core.Maybe TextEntry),
    -- | Optional identifier associating this comment score suggestion with a particular sub-community. Different communities may have different norms and rules. Specifying this value enables training community-specific models.
    communityId :: (Core.Maybe Core.Text),
    -- | The context of the comment.
    context :: (Core.Maybe Context),
    -- | The language(s) of the comment and context. If none are specified, we attempt to automatically detect the language. Both ISO and BCP-47 language codes are accepted.
    languages :: (Core.Maybe [Core.Text]),
    -- | Session ID. Used to join related RPCs into a single session. For example, an interactive tool that calls both the AnalyzeComment and SuggestCommentScore RPCs should set all invocations of both RPCs to the same Session ID, typically a random 64-bit integer.
    sessionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestCommentScoreRequest' with the minimum fields required to make a request.
newSuggestCommentScoreRequest ::
  SuggestCommentScoreRequest
newSuggestCommentScoreRequest =
  SuggestCommentScoreRequest
    { attributeScores = Core.Nothing,
      clientToken = Core.Nothing,
      comment = Core.Nothing,
      communityId = Core.Nothing,
      context = Core.Nothing,
      languages = Core.Nothing,
      sessionId = Core.Nothing
    }

instance Core.FromJSON SuggestCommentScoreRequest where
  parseJSON =
    Core.withObject
      "SuggestCommentScoreRequest"
      ( \o ->
          SuggestCommentScoreRequest
            Core.<$> (o Core..:? "attributeScores")
            Core.<*> (o Core..:? "clientToken")
            Core.<*> (o Core..:? "comment")
            Core.<*> (o Core..:? "communityId")
            Core.<*> (o Core..:? "context")
            Core.<*> (o Core..:? "languages" Core..!= Core.mempty)
            Core.<*> (o Core..:? "sessionId")
      )

instance Core.ToJSON SuggestCommentScoreRequest where
  toJSON SuggestCommentScoreRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributeScores" Core..=)
              Core.<$> attributeScores,
            ("clientToken" Core..=) Core.<$> clientToken,
            ("comment" Core..=) Core.<$> comment,
            ("communityId" Core..=) Core.<$> communityId,
            ("context" Core..=) Core.<$> context,
            ("languages" Core..=) Core.<$> languages,
            ("sessionId" Core..=) Core.<$> sessionId
          ]
      )

-- | Attribute scores for the comment. The map keys are attribute names, same as the requested/attribute field in AnalyzeCommentRequest (for example \"ATTACK/ON_AUTHOR\", \"INFLAMMATORY\", etc.). This field has the same type as the @attribute_scores@ field in AnalyzeCommentResponse.
--
-- To specify an overall attribute score for the entire comment as a whole, use the @summary_score@ field of the mapped AttributeScores object. To specify scores on specific subparts of the comment, use the @span_scores@ field. All SpanScore objects must have begin and end fields set.
--
-- All Score objects must be explicitly set (for binary classification, use the score values 0 and 1). If Score objects don\'t include a ScoreType, @PROBABILITY@ is assumed.
--
-- @attribute_scores@ must not be empty. The mapped AttributeScores objects also must not be empty. An @INVALID_ARGUMENT@ error is returned for all malformed requests.
--
-- /See:/ 'newSuggestCommentScoreRequest_AttributeScores' smart constructor.
newtype SuggestCommentScoreRequest_AttributeScores = SuggestCommentScoreRequest_AttributeScores
  { -- |
    addtional :: (Core.HashMap Core.Text AttributeScores)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestCommentScoreRequest_AttributeScores' with the minimum fields required to make a request.
newSuggestCommentScoreRequest_AttributeScores ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text AttributeScores ->
  SuggestCommentScoreRequest_AttributeScores
newSuggestCommentScoreRequest_AttributeScores addtional =
  SuggestCommentScoreRequest_AttributeScores {addtional = addtional}

instance
  Core.FromJSON
    SuggestCommentScoreRequest_AttributeScores
  where
  parseJSON =
    Core.withObject
      "SuggestCommentScoreRequest_AttributeScores"
      ( \o ->
          SuggestCommentScoreRequest_AttributeScores
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    SuggestCommentScoreRequest_AttributeScores
  where
  toJSON SuggestCommentScoreRequest_AttributeScores {..} =
    Core.toJSON addtional

-- | The comment score suggestion response message.
--
-- /See:/ 'newSuggestCommentScoreResponse' smart constructor.
data SuggestCommentScoreResponse = SuggestCommentScoreResponse
  { -- | Same token from the original SuggestCommentScoreRequest.
    clientToken :: (Core.Maybe Core.Text),
    -- | The list of languages detected from the comment text.
    detectedLanguages :: (Core.Maybe [Core.Text]),
    -- | The list of languages provided in the request.
    requestedLanguages :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestCommentScoreResponse' with the minimum fields required to make a request.
newSuggestCommentScoreResponse ::
  SuggestCommentScoreResponse
newSuggestCommentScoreResponse =
  SuggestCommentScoreResponse
    { clientToken = Core.Nothing,
      detectedLanguages = Core.Nothing,
      requestedLanguages = Core.Nothing
    }

instance Core.FromJSON SuggestCommentScoreResponse where
  parseJSON =
    Core.withObject
      "SuggestCommentScoreResponse"
      ( \o ->
          SuggestCommentScoreResponse
            Core.<$> (o Core..:? "clientToken")
            Core.<*> (o Core..:? "detectedLanguages" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "requestedLanguages"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON SuggestCommentScoreResponse where
  toJSON SuggestCommentScoreResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientToken" Core..=) Core.<$> clientToken,
            ("detectedLanguages" Core..=)
              Core.<$> detectedLanguages,
            ("requestedLanguages" Core..=)
              Core.<$> requestedLanguages
          ]
      )

-- | Represents a body of text.
--
-- /See:/ 'newTextEntry' smart constructor.
data TextEntry = TextEntry
  { -- | UTF-8 encoded text.
    text :: (Core.Maybe Core.Text),
    -- | Type of the text field.
    type' :: (Core.Maybe TextEntry_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextEntry' with the minimum fields required to make a request.
newTextEntry ::
  TextEntry
newTextEntry = TextEntry {text = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON TextEntry where
  parseJSON =
    Core.withObject
      "TextEntry"
      ( \o ->
          TextEntry
            Core.<$> (o Core..:? "text") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON TextEntry where
  toJSON TextEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("text" Core..=) Core.<$> text,
            ("type" Core..=) Core.<$> type'
          ]
      )
