{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CommentAnalyzer.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CommentAnalyzer.Types.Product where

import Network.Google.CommentAnalyzer.Types.Sum
import Network.Google.Prelude

-- | This is a single score for a given span of text.
--
-- /See:/ 'spanScore' smart constructor.
data SpanScore =
  SpanScore'
    { _ssBegin :: !(Maybe (Textual Int32))
    , _ssScore :: !(Maybe Score)
    , _ssEnd :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpanScore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssBegin'
--
-- * 'ssScore'
--
-- * 'ssEnd'
spanScore
    :: SpanScore
spanScore =
  SpanScore' {_ssBegin = Nothing, _ssScore = Nothing, _ssEnd = Nothing}


-- | \"begin\" and \"end\" describe the span of the original text that the
-- attribute score applies to. The values are the UTF-16 codepoint range.
-- \"end\" is exclusive. For example, with the text \"Hi there\", the
-- begin\/end pair (0,2) describes the text \"Hi\". If \"begin\" and
-- \"end\" are unset, the score applies to the full text.
ssBegin :: Lens' SpanScore (Maybe Int32)
ssBegin
  = lens _ssBegin (\ s a -> s{_ssBegin = a}) .
      mapping _Coerce

-- | The score value.
ssScore :: Lens' SpanScore (Maybe Score)
ssScore = lens _ssScore (\ s a -> s{_ssScore = a})

ssEnd :: Lens' SpanScore (Maybe Int32)
ssEnd
  = lens _ssEnd (\ s a -> s{_ssEnd = a}) .
      mapping _Coerce

instance FromJSON SpanScore where
        parseJSON
          = withObject "SpanScore"
              (\ o ->
                 SpanScore' <$>
                   (o .:? "begin") <*> (o .:? "score") <*>
                     (o .:? "end"))

instance ToJSON SpanScore where
        toJSON SpanScore'{..}
          = object
              (catMaybes
                 [("begin" .=) <$> _ssBegin,
                  ("score" .=) <$> _ssScore, ("end" .=) <$> _ssEnd])

-- | The comment analysis response message.
--
-- /See:/ 'analyzeCommentResponse' smart constructor.
data AnalyzeCommentResponse =
  AnalyzeCommentResponse'
    { _acrDetectedLanguages :: !(Maybe [Text])
    , _acrClientToken :: !(Maybe Text)
    , _acrLanguages :: !(Maybe [Text])
    , _acrAttributeScores :: !(Maybe AnalyzeCommentResponseAttributeScores)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnalyzeCommentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrDetectedLanguages'
--
-- * 'acrClientToken'
--
-- * 'acrLanguages'
--
-- * 'acrAttributeScores'
analyzeCommentResponse
    :: AnalyzeCommentResponse
analyzeCommentResponse =
  AnalyzeCommentResponse'
    { _acrDetectedLanguages = Nothing
    , _acrClientToken = Nothing
    , _acrLanguages = Nothing
    , _acrAttributeScores = Nothing
    }


-- | Contains the languages detected from the text content, sorted in order
-- of likelihood.
acrDetectedLanguages :: Lens' AnalyzeCommentResponse [Text]
acrDetectedLanguages
  = lens _acrDetectedLanguages
      (\ s a -> s{_acrDetectedLanguages = a})
      . _Default
      . _Coerce

-- | Same token from the original AnalyzeCommentRequest.
acrClientToken :: Lens' AnalyzeCommentResponse (Maybe Text)
acrClientToken
  = lens _acrClientToken
      (\ s a -> s{_acrClientToken = a})

-- | The language(s) used by CommentAnalyzer service to choose which Model to
-- use when analyzing the comment. Might better be called
-- \"effective_languages\". The logic used to make the choice is as
-- follows: if !Request.languages.empty() effective_languages =
-- Request.languages else effective_languages = detected_languages[0]
acrLanguages :: Lens' AnalyzeCommentResponse [Text]
acrLanguages
  = lens _acrLanguages (\ s a -> s{_acrLanguages = a})
      . _Default
      . _Coerce

-- | Scores for the requested attributes. The map keys are attribute names
-- (same as the requested_attribute field in AnalyzeCommentRequest, for
-- example \"ATTACK_ON_AUTHOR\", \"INFLAMMATORY\", etc).
acrAttributeScores :: Lens' AnalyzeCommentResponse (Maybe AnalyzeCommentResponseAttributeScores)
acrAttributeScores
  = lens _acrAttributeScores
      (\ s a -> s{_acrAttributeScores = a})

instance FromJSON AnalyzeCommentResponse where
        parseJSON
          = withObject "AnalyzeCommentResponse"
              (\ o ->
                 AnalyzeCommentResponse' <$>
                   (o .:? "detectedLanguages" .!= mempty) <*>
                     (o .:? "clientToken")
                     <*> (o .:? "languages" .!= mempty)
                     <*> (o .:? "attributeScores"))

instance ToJSON AnalyzeCommentResponse where
        toJSON AnalyzeCommentResponse'{..}
          = object
              (catMaybes
                 [("detectedLanguages" .=) <$> _acrDetectedLanguages,
                  ("clientToken" .=) <$> _acrClientToken,
                  ("languages" .=) <$> _acrLanguages,
                  ("attributeScores" .=) <$> _acrAttributeScores])

-- | The comment score suggestion response message.
--
-- /See:/ 'suggestCommentScoreResponse' smart constructor.
data SuggestCommentScoreResponse =
  SuggestCommentScoreResponse'
    { _scsrDetectedLanguages :: !(Maybe [Text])
    , _scsrClientToken :: !(Maybe Text)
    , _scsrRequestedLanguages :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestCommentScoreResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scsrDetectedLanguages'
--
-- * 'scsrClientToken'
--
-- * 'scsrRequestedLanguages'
suggestCommentScoreResponse
    :: SuggestCommentScoreResponse
suggestCommentScoreResponse =
  SuggestCommentScoreResponse'
    { _scsrDetectedLanguages = Nothing
    , _scsrClientToken = Nothing
    , _scsrRequestedLanguages = Nothing
    }


-- | The list of languages detected from the comment text.
scsrDetectedLanguages :: Lens' SuggestCommentScoreResponse [Text]
scsrDetectedLanguages
  = lens _scsrDetectedLanguages
      (\ s a -> s{_scsrDetectedLanguages = a})
      . _Default
      . _Coerce

-- | Same token from the original SuggestCommentScoreRequest.
scsrClientToken :: Lens' SuggestCommentScoreResponse (Maybe Text)
scsrClientToken
  = lens _scsrClientToken
      (\ s a -> s{_scsrClientToken = a})

-- | The list of languages provided in the request.
scsrRequestedLanguages :: Lens' SuggestCommentScoreResponse [Text]
scsrRequestedLanguages
  = lens _scsrRequestedLanguages
      (\ s a -> s{_scsrRequestedLanguages = a})
      . _Default
      . _Coerce

instance FromJSON SuggestCommentScoreResponse where
        parseJSON
          = withObject "SuggestCommentScoreResponse"
              (\ o ->
                 SuggestCommentScoreResponse' <$>
                   (o .:? "detectedLanguages" .!= mempty) <*>
                     (o .:? "clientToken")
                     <*> (o .:? "requestedLanguages" .!= mempty))

instance ToJSON SuggestCommentScoreResponse where
        toJSON SuggestCommentScoreResponse'{..}
          = object
              (catMaybes
                 [("detectedLanguages" .=) <$> _scsrDetectedLanguages,
                  ("clientToken" .=) <$> _scsrClientToken,
                  ("requestedLanguages" .=) <$>
                    _scsrRequestedLanguages])

-- | Context is typically something that a Comment is referencing or replying
-- to (such as an article, or previous comment). Note: Populate only ONE OF
-- the following fields. The oneof syntax cannot be used because that would
-- require nesting entries inside another message and breaking backwards
-- compatibility. The server will return an error if more than one of the
-- following fields is present.
--
-- /See:/ 'context' smart constructor.
data Context =
  Context'
    { _cEntries :: !(Maybe [TextEntry])
    , _cArticleAndParentComment :: !(Maybe ArticleAndParentComment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Context' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEntries'
--
-- * 'cArticleAndParentComment'
context
    :: Context
context = Context' {_cEntries = Nothing, _cArticleAndParentComment = Nothing}


-- | A list of messages. For example, a linear comments section or forum
-- thread.
cEntries :: Lens' Context [TextEntry]
cEntries
  = lens _cEntries (\ s a -> s{_cEntries = a}) .
      _Default
      . _Coerce

-- | Information about the source for which the original comment was made,
-- and any parent comment info.
cArticleAndParentComment :: Lens' Context (Maybe ArticleAndParentComment)
cArticleAndParentComment
  = lens _cArticleAndParentComment
      (\ s a -> s{_cArticleAndParentComment = a})

instance FromJSON Context where
        parseJSON
          = withObject "Context"
              (\ o ->
                 Context' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "articleAndParentComment"))

instance ToJSON Context where
        toJSON Context'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _cEntries,
                  ("articleAndParentComment" .=) <$>
                    _cArticleAndParentComment])

-- | Analysis scores are described by a value and a ScoreType.
--
-- /See:/ 'score' smart constructor.
data Score =
  Score'
    { _sValue :: !(Maybe (Textual Double))
    , _sType :: !(Maybe ScoreType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Score' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sValue'
--
-- * 'sType'
score
    :: Score
score = Score' {_sValue = Nothing, _sType = Nothing}


-- | Score value. Semantics described by type below.
sValue :: Lens' Score (Maybe Double)
sValue
  = lens _sValue (\ s a -> s{_sValue = a}) .
      mapping _Coerce

-- | The type of the above value.
sType :: Lens' Score (Maybe ScoreType)
sType = lens _sType (\ s a -> s{_sType = a})

instance FromJSON Score where
        parseJSON
          = withObject "Score"
              (\ o ->
                 Score' <$> (o .:? "value") <*> (o .:? "type"))

instance ToJSON Score where
        toJSON Score'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _sValue, ("type" .=) <$> _sType])

-- | A type of context specific to a comment left on a single-threaded
-- comment message board, where comments are either a top level comment or
-- the child of a top level comment.
--
-- /See:/ 'articleAndParentComment' smart constructor.
data ArticleAndParentComment =
  ArticleAndParentComment'
    { _aapcArticle :: !(Maybe TextEntry)
    , _aapcParentComment :: !(Maybe TextEntry)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ArticleAndParentComment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aapcArticle'
--
-- * 'aapcParentComment'
articleAndParentComment
    :: ArticleAndParentComment
articleAndParentComment =
  ArticleAndParentComment'
    {_aapcArticle = Nothing, _aapcParentComment = Nothing}


-- | The source content about which the comment was made (article text,
-- article summary, video transcript, etc).
aapcArticle :: Lens' ArticleAndParentComment (Maybe TextEntry)
aapcArticle
  = lens _aapcArticle (\ s a -> s{_aapcArticle = a})

-- | Refers to text that is a direct parent of the source comment, such as in
-- a one-deep threaded message board. This field will only be present for
-- comments that are replies to other comments and will not be populated
-- for direct comments on the article_text.
aapcParentComment :: Lens' ArticleAndParentComment (Maybe TextEntry)
aapcParentComment
  = lens _aapcParentComment
      (\ s a -> s{_aapcParentComment = a})

instance FromJSON ArticleAndParentComment where
        parseJSON
          = withObject "ArticleAndParentComment"
              (\ o ->
                 ArticleAndParentComment' <$>
                   (o .:? "article") <*> (o .:? "parentComment"))

instance ToJSON ArticleAndParentComment where
        toJSON ArticleAndParentComment'{..}
          = object
              (catMaybes
                 [("article" .=) <$> _aapcArticle,
                  ("parentComment" .=) <$> _aapcParentComment])

-- | Configurable parameters for attribute scoring.
--
-- /See:/ 'attributeParameters' smart constructor.
data AttributeParameters =
  AttributeParameters'
    { _apScoreThreshold :: !(Maybe (Textual Double))
    , _apScoreType :: !(Maybe AttributeParametersScoreType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AttributeParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apScoreThreshold'
--
-- * 'apScoreType'
attributeParameters
    :: AttributeParameters
attributeParameters =
  AttributeParameters' {_apScoreThreshold = Nothing, _apScoreType = Nothing}


-- | Don\'t return scores for this attribute that are below this threshold.
-- If unset, a default threshold will be applied. A FloatValue wrapper is
-- used to distinguish between 0 vs. default\/unset.
apScoreThreshold :: Lens' AttributeParameters (Maybe Double)
apScoreThreshold
  = lens _apScoreThreshold
      (\ s a -> s{_apScoreThreshold = a})
      . mapping _Coerce

-- | What type of scores to return. If unset, defaults to probability scores.
apScoreType :: Lens' AttributeParameters (Maybe AttributeParametersScoreType)
apScoreType
  = lens _apScoreType (\ s a -> s{_apScoreType = a})

instance FromJSON AttributeParameters where
        parseJSON
          = withObject "AttributeParameters"
              (\ o ->
                 AttributeParameters' <$>
                   (o .:? "scoreThreshold") <*> (o .:? "scoreType"))

instance ToJSON AttributeParameters where
        toJSON AttributeParameters'{..}
          = object
              (catMaybes
                 [("scoreThreshold" .=) <$> _apScoreThreshold,
                  ("scoreType" .=) <$> _apScoreType])

-- | Represents a body of text.
--
-- /See:/ 'textEntry' smart constructor.
data TextEntry =
  TextEntry'
    { _teText :: !(Maybe Text)
    , _teType :: !(Maybe TextEntryType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'teText'
--
-- * 'teType'
textEntry
    :: TextEntry
textEntry = TextEntry' {_teText = Nothing, _teType = Nothing}


-- | UTF-8 encoded text.
teText :: Lens' TextEntry (Maybe Text)
teText = lens _teText (\ s a -> s{_teText = a})

-- | Type of the text field.
teType :: Lens' TextEntry (Maybe TextEntryType)
teType = lens _teType (\ s a -> s{_teType = a})

instance FromJSON TextEntry where
        parseJSON
          = withObject "TextEntry"
              (\ o ->
                 TextEntry' <$> (o .:? "text") <*> (o .:? "type"))

instance ToJSON TextEntry where
        toJSON TextEntry'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _teText, ("type" .=) <$> _teType])

-- | This holds score values for a single attribute. It contains both
-- per-span scores as well as an overall summary score..
--
-- /See:/ 'attributeScores' smart constructor.
data AttributeScores =
  AttributeScores'
    { _asSummaryScore :: !(Maybe Score)
    , _asSpanScores :: !(Maybe [SpanScore])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AttributeScores' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asSummaryScore'
--
-- * 'asSpanScores'
attributeScores
    :: AttributeScores
attributeScores =
  AttributeScores' {_asSummaryScore = Nothing, _asSpanScores = Nothing}


-- | Overall score for comment as a whole.
asSummaryScore :: Lens' AttributeScores (Maybe Score)
asSummaryScore
  = lens _asSummaryScore
      (\ s a -> s{_asSummaryScore = a})

-- | Per-span scores.
asSpanScores :: Lens' AttributeScores [SpanScore]
asSpanScores
  = lens _asSpanScores (\ s a -> s{_asSpanScores = a})
      . _Default
      . _Coerce

instance FromJSON AttributeScores where
        parseJSON
          = withObject "AttributeScores"
              (\ o ->
                 AttributeScores' <$>
                   (o .:? "summaryScore") <*>
                     (o .:? "spanScores" .!= mempty))

instance ToJSON AttributeScores where
        toJSON AttributeScores'{..}
          = object
              (catMaybes
                 [("summaryScore" .=) <$> _asSummaryScore,
                  ("spanScores" .=) <$> _asSpanScores])

-- | Scores for the requested attributes. The map keys are attribute names
-- (same as the requested_attribute field in AnalyzeCommentRequest, for
-- example \"ATTACK_ON_AUTHOR\", \"INFLAMMATORY\", etc).
--
-- /See:/ 'analyzeCommentResponseAttributeScores' smart constructor.
newtype AnalyzeCommentResponseAttributeScores =
  AnalyzeCommentResponseAttributeScores'
    { _acrasAddtional :: HashMap Text AttributeScores
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnalyzeCommentResponseAttributeScores' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrasAddtional'
analyzeCommentResponseAttributeScores
    :: HashMap Text AttributeScores -- ^ 'acrasAddtional'
    -> AnalyzeCommentResponseAttributeScores
analyzeCommentResponseAttributeScores pAcrasAddtional_ =
  AnalyzeCommentResponseAttributeScores'
    {_acrasAddtional = _Coerce # pAcrasAddtional_}


acrasAddtional :: Lens' AnalyzeCommentResponseAttributeScores (HashMap Text AttributeScores)
acrasAddtional
  = lens _acrasAddtional
      (\ s a -> s{_acrasAddtional = a})
      . _Coerce

instance FromJSON
           AnalyzeCommentResponseAttributeScores
         where
        parseJSON
          = withObject "AnalyzeCommentResponseAttributeScores"
              (\ o ->
                 AnalyzeCommentResponseAttributeScores' <$>
                   (parseJSONObject o))

instance ToJSON AnalyzeCommentResponseAttributeScores
         where
        toJSON = toJSON . _acrasAddtional

-- | The comment score suggestion request message.
--
-- /See:/ 'suggestCommentScoreRequest' smart constructor.
data SuggestCommentScoreRequest =
  SuggestCommentScoreRequest'
    { _sContext :: !(Maybe Context)
    , _sClientToken :: !(Maybe Text)
    , _sLanguages :: !(Maybe [Text])
    , _sAttributeScores :: !(Maybe SuggestCommentScoreRequestAttributeScores)
    , _sSessionId :: !(Maybe Text)
    , _sComment :: !(Maybe TextEntry)
    , _sCommUnityId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestCommentScoreRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sContext'
--
-- * 'sClientToken'
--
-- * 'sLanguages'
--
-- * 'sAttributeScores'
--
-- * 'sSessionId'
--
-- * 'sComment'
--
-- * 'sCommUnityId'
suggestCommentScoreRequest
    :: SuggestCommentScoreRequest
suggestCommentScoreRequest =
  SuggestCommentScoreRequest'
    { _sContext = Nothing
    , _sClientToken = Nothing
    , _sLanguages = Nothing
    , _sAttributeScores = Nothing
    , _sSessionId = Nothing
    , _sComment = Nothing
    , _sCommUnityId = Nothing
    }


-- | The context of the comment.
sContext :: Lens' SuggestCommentScoreRequest (Maybe Context)
sContext = lens _sContext (\ s a -> s{_sContext = a})

-- | Opaque token that is echoed from the request to the response.
sClientToken :: Lens' SuggestCommentScoreRequest (Maybe Text)
sClientToken
  = lens _sClientToken (\ s a -> s{_sClientToken = a})

-- | The language(s) of the comment and context. If none are specified, we
-- attempt to automatically detect the language. Both ISO and BCP-47
-- language codes are accepted.
sLanguages :: Lens' SuggestCommentScoreRequest [Text]
sLanguages
  = lens _sLanguages (\ s a -> s{_sLanguages = a}) .
      _Default
      . _Coerce

-- | Attribute scores for the comment. The map keys are attribute names, same
-- as the requested_attribute field in AnalyzeCommentRequest (for example
-- \"ATTACK_ON_AUTHOR\", \"INFLAMMATORY\", etc.). This field has the same
-- type as the \`attribute_scores\` field in AnalyzeCommentResponse. To
-- specify an overall attribute score for the entire comment as a whole,
-- use the \`summary_score\` field of the mapped AttributeScores object. To
-- specify scores on specific subparts of the comment, use the
-- \`span_scores\` field. All SpanScore objects must have begin and end
-- fields set. All Score objects must be explicitly set (for binary
-- classification, use the score values 0 and 1). If Score objects don\'t
-- include a ScoreType, \`PROBABILITY\` is assumed. \`attribute_scores\`
-- must not be empty. The mapped AttributeScores objects also must not be
-- empty. An \`INVALID_ARGUMENT\` error is returned for all malformed
-- requests.
sAttributeScores :: Lens' SuggestCommentScoreRequest (Maybe SuggestCommentScoreRequestAttributeScores)
sAttributeScores
  = lens _sAttributeScores
      (\ s a -> s{_sAttributeScores = a})

-- | Session ID. Used to join related RPCs into a single session. For
-- example, an interactive tool that calls both the AnalyzeComment and
-- SuggestCommentScore RPCs should set all invocations of both RPCs to the
-- same Session ID, typically a random 64-bit integer.
sSessionId :: Lens' SuggestCommentScoreRequest (Maybe Text)
sSessionId
  = lens _sSessionId (\ s a -> s{_sSessionId = a})

-- | The comment being scored.
sComment :: Lens' SuggestCommentScoreRequest (Maybe TextEntry)
sComment = lens _sComment (\ s a -> s{_sComment = a})

-- | Optional identifier associating this comment score suggestion with a
-- particular sub-community. Different communities may have different norms
-- and rules. Specifying this value enables training community-specific
-- models.
sCommUnityId :: Lens' SuggestCommentScoreRequest (Maybe Text)
sCommUnityId
  = lens _sCommUnityId (\ s a -> s{_sCommUnityId = a})

instance FromJSON SuggestCommentScoreRequest where
        parseJSON
          = withObject "SuggestCommentScoreRequest"
              (\ o ->
                 SuggestCommentScoreRequest' <$>
                   (o .:? "context") <*> (o .:? "clientToken") <*>
                     (o .:? "languages" .!= mempty)
                     <*> (o .:? "attributeScores")
                     <*> (o .:? "sessionId")
                     <*> (o .:? "comment")
                     <*> (o .:? "communityId"))

instance ToJSON SuggestCommentScoreRequest where
        toJSON SuggestCommentScoreRequest'{..}
          = object
              (catMaybes
                 [("context" .=) <$> _sContext,
                  ("clientToken" .=) <$> _sClientToken,
                  ("languages" .=) <$> _sLanguages,
                  ("attributeScores" .=) <$> _sAttributeScores,
                  ("sessionId" .=) <$> _sSessionId,
                  ("comment" .=) <$> _sComment,
                  ("communityId" .=) <$> _sCommUnityId])

-- | The comment analysis request message. LINT.IfChange
--
-- /See:/ 'analyzeCommentRequest' smart constructor.
data AnalyzeCommentRequest =
  AnalyzeCommentRequest'
    { _aContext :: !(Maybe Context)
    , _aClientToken :: !(Maybe Text)
    , _aSpanAnnotations :: !(Maybe Bool)
    , _aDoNotStore :: !(Maybe Bool)
    , _aLanguages :: !(Maybe [Text])
    , _aRequestedAttributes :: !(Maybe AnalyzeCommentRequestRequestedAttributes)
    , _aSessionId :: !(Maybe Text)
    , _aComment :: !(Maybe TextEntry)
    , _aCommUnityId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnalyzeCommentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aContext'
--
-- * 'aClientToken'
--
-- * 'aSpanAnnotations'
--
-- * 'aDoNotStore'
--
-- * 'aLanguages'
--
-- * 'aRequestedAttributes'
--
-- * 'aSessionId'
--
-- * 'aComment'
--
-- * 'aCommUnityId'
analyzeCommentRequest
    :: AnalyzeCommentRequest
analyzeCommentRequest =
  AnalyzeCommentRequest'
    { _aContext = Nothing
    , _aClientToken = Nothing
    , _aSpanAnnotations = Nothing
    , _aDoNotStore = Nothing
    , _aLanguages = Nothing
    , _aRequestedAttributes = Nothing
    , _aSessionId = Nothing
    , _aComment = Nothing
    , _aCommUnityId = Nothing
    }


-- | The context of the comment.
aContext :: Lens' AnalyzeCommentRequest (Maybe Context)
aContext = lens _aContext (\ s a -> s{_aContext = a})

-- | Opaque token that is echoed from the request to the response.
aClientToken :: Lens' AnalyzeCommentRequest (Maybe Text)
aClientToken
  = lens _aClientToken (\ s a -> s{_aClientToken = a})

-- | An advisory parameter that will return span annotations if the model is
-- capable of providing scores with sub-comment resolution. This will
-- likely increase the size of the returned message.
aSpanAnnotations :: Lens' AnalyzeCommentRequest (Maybe Bool)
aSpanAnnotations
  = lens _aSpanAnnotations
      (\ s a -> s{_aSpanAnnotations = a})

-- | Do not store the comment or context sent in this request. By default,
-- the service may store comments\/context for debugging purposes.
aDoNotStore :: Lens' AnalyzeCommentRequest (Maybe Bool)
aDoNotStore
  = lens _aDoNotStore (\ s a -> s{_aDoNotStore = a})

-- | The language(s) of the comment and context. If none are specified, we
-- attempt to automatically detect the language. Specifying multiple
-- languages means the text contains multiple lanugages. Both ISO and
-- BCP-47 language codes are accepted. The server returns an error if no
-- language was specified and language detection fails. The server also
-- returns an error if the languages (either specified by the caller, or
-- auto-detected) are not *all* supported by the service.
aLanguages :: Lens' AnalyzeCommentRequest [Text]
aLanguages
  = lens _aLanguages (\ s a -> s{_aLanguages = a}) .
      _Default
      . _Coerce

-- | Specification of requested attributes. The AttributeParameters serve as
-- configuration for each associated attribute. The map keys are attribute
-- names. The available attributes may be different on each RFE
-- installation, and can be seen by calling ListAttributes (see above). For
-- the prod installation, known as Perspective API, at
-- blade:commentanalyzer-esf and commentanalyzer.googleapis.com, see
-- go\/checker-models (internal) and
-- https:\/\/github.com\/conversationai\/perspectiveapi\/blob\/master\/2-api\/models.md#all-attribute-types.
aRequestedAttributes :: Lens' AnalyzeCommentRequest (Maybe AnalyzeCommentRequestRequestedAttributes)
aRequestedAttributes
  = lens _aRequestedAttributes
      (\ s a -> s{_aRequestedAttributes = a})

-- | Session ID. Used to join related RPCs into a single session. For
-- example, an interactive tool that calls both the AnalyzeComment and
-- SuggestCommentScore RPCs should set all invocations of both RPCs to the
-- same Session ID, typically a random 64-bit integer.
aSessionId :: Lens' AnalyzeCommentRequest (Maybe Text)
aSessionId
  = lens _aSessionId (\ s a -> s{_aSessionId = a})

-- | The comment to analyze.
aComment :: Lens' AnalyzeCommentRequest (Maybe TextEntry)
aComment = lens _aComment (\ s a -> s{_aComment = a})

-- | Optional identifier associating this AnalyzeCommentRequest with a
-- particular client\'s community. Different communities may have different
-- norms and rules. Specifying this value enables us to explore building
-- community-specific models for clients.
aCommUnityId :: Lens' AnalyzeCommentRequest (Maybe Text)
aCommUnityId
  = lens _aCommUnityId (\ s a -> s{_aCommUnityId = a})

instance FromJSON AnalyzeCommentRequest where
        parseJSON
          = withObject "AnalyzeCommentRequest"
              (\ o ->
                 AnalyzeCommentRequest' <$>
                   (o .:? "context") <*> (o .:? "clientToken") <*>
                     (o .:? "spanAnnotations")
                     <*> (o .:? "doNotStore")
                     <*> (o .:? "languages" .!= mempty)
                     <*> (o .:? "requestedAttributes")
                     <*> (o .:? "sessionId")
                     <*> (o .:? "comment")
                     <*> (o .:? "communityId"))

instance ToJSON AnalyzeCommentRequest where
        toJSON AnalyzeCommentRequest'{..}
          = object
              (catMaybes
                 [("context" .=) <$> _aContext,
                  ("clientToken" .=) <$> _aClientToken,
                  ("spanAnnotations" .=) <$> _aSpanAnnotations,
                  ("doNotStore" .=) <$> _aDoNotStore,
                  ("languages" .=) <$> _aLanguages,
                  ("requestedAttributes" .=) <$> _aRequestedAttributes,
                  ("sessionId" .=) <$> _aSessionId,
                  ("comment" .=) <$> _aComment,
                  ("communityId" .=) <$> _aCommUnityId])

-- | Attribute scores for the comment. The map keys are attribute names, same
-- as the requested_attribute field in AnalyzeCommentRequest (for example
-- \"ATTACK_ON_AUTHOR\", \"INFLAMMATORY\", etc.). This field has the same
-- type as the \`attribute_scores\` field in AnalyzeCommentResponse. To
-- specify an overall attribute score for the entire comment as a whole,
-- use the \`summary_score\` field of the mapped AttributeScores object. To
-- specify scores on specific subparts of the comment, use the
-- \`span_scores\` field. All SpanScore objects must have begin and end
-- fields set. All Score objects must be explicitly set (for binary
-- classification, use the score values 0 and 1). If Score objects don\'t
-- include a ScoreType, \`PROBABILITY\` is assumed. \`attribute_scores\`
-- must not be empty. The mapped AttributeScores objects also must not be
-- empty. An \`INVALID_ARGUMENT\` error is returned for all malformed
-- requests.
--
-- /See:/ 'suggestCommentScoreRequestAttributeScores' smart constructor.
newtype SuggestCommentScoreRequestAttributeScores =
  SuggestCommentScoreRequestAttributeScores'
    { _scsrasAddtional :: HashMap Text AttributeScores
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestCommentScoreRequestAttributeScores' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scsrasAddtional'
suggestCommentScoreRequestAttributeScores
    :: HashMap Text AttributeScores -- ^ 'scsrasAddtional'
    -> SuggestCommentScoreRequestAttributeScores
suggestCommentScoreRequestAttributeScores pScsrasAddtional_ =
  SuggestCommentScoreRequestAttributeScores'
    {_scsrasAddtional = _Coerce # pScsrasAddtional_}


scsrasAddtional :: Lens' SuggestCommentScoreRequestAttributeScores (HashMap Text AttributeScores)
scsrasAddtional
  = lens _scsrasAddtional
      (\ s a -> s{_scsrasAddtional = a})
      . _Coerce

instance FromJSON
           SuggestCommentScoreRequestAttributeScores
         where
        parseJSON
          = withObject
              "SuggestCommentScoreRequestAttributeScores"
              (\ o ->
                 SuggestCommentScoreRequestAttributeScores' <$>
                   (parseJSONObject o))

instance ToJSON
           SuggestCommentScoreRequestAttributeScores
         where
        toJSON = toJSON . _scsrasAddtional

-- | Specification of requested attributes. The AttributeParameters serve as
-- configuration for each associated attribute. The map keys are attribute
-- names. The available attributes may be different on each RFE
-- installation, and can be seen by calling ListAttributes (see above). For
-- the prod installation, known as Perspective API, at
-- blade:commentanalyzer-esf and commentanalyzer.googleapis.com, see
-- go\/checker-models (internal) and
-- https:\/\/github.com\/conversationai\/perspectiveapi\/blob\/master\/2-api\/models.md#all-attribute-types.
--
-- /See:/ 'analyzeCommentRequestRequestedAttributes' smart constructor.
newtype AnalyzeCommentRequestRequestedAttributes =
  AnalyzeCommentRequestRequestedAttributes'
    { _acrraAddtional :: HashMap Text AttributeParameters
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnalyzeCommentRequestRequestedAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrraAddtional'
analyzeCommentRequestRequestedAttributes
    :: HashMap Text AttributeParameters -- ^ 'acrraAddtional'
    -> AnalyzeCommentRequestRequestedAttributes
analyzeCommentRequestRequestedAttributes pAcrraAddtional_ =
  AnalyzeCommentRequestRequestedAttributes'
    {_acrraAddtional = _Coerce # pAcrraAddtional_}


acrraAddtional :: Lens' AnalyzeCommentRequestRequestedAttributes (HashMap Text AttributeParameters)
acrraAddtional
  = lens _acrraAddtional
      (\ s a -> s{_acrraAddtional = a})
      . _Coerce

instance FromJSON
           AnalyzeCommentRequestRequestedAttributes
         where
        parseJSON
          = withObject
              "AnalyzeCommentRequestRequestedAttributes"
              (\ o ->
                 AnalyzeCommentRequestRequestedAttributes' <$>
                   (parseJSONObject o))

instance ToJSON
           AnalyzeCommentRequestRequestedAttributes
         where
        toJSON = toJSON . _acrraAddtional
