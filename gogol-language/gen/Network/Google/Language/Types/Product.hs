{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Language.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Language.Types.Product where

import           Network.Google.Language.Types.Sum
import           Network.Google.Prelude

-- | The syntax analysis request message.
--
-- /See:/ 'analyzeSyntaxRequest' smart constructor.
data AnalyzeSyntaxRequest =
  AnalyzeSyntaxRequest'
    { _asrEncodingType :: !(Maybe AnalyzeSyntaxRequestEncodingType)
    , _asrDocument     :: !(Maybe Document)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnalyzeSyntaxRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrEncodingType'
--
-- * 'asrDocument'
analyzeSyntaxRequest
    :: AnalyzeSyntaxRequest
analyzeSyntaxRequest =
  AnalyzeSyntaxRequest' {_asrEncodingType = Nothing, _asrDocument = Nothing}


-- | The encoding type used by the API to calculate offsets.
asrEncodingType :: Lens' AnalyzeSyntaxRequest (Maybe AnalyzeSyntaxRequestEncodingType)
asrEncodingType
  = lens _asrEncodingType
      (\ s a -> s{_asrEncodingType = a})

-- | Input document.
asrDocument :: Lens' AnalyzeSyntaxRequest (Maybe Document)
asrDocument
  = lens _asrDocument (\ s a -> s{_asrDocument = a})

instance FromJSON AnalyzeSyntaxRequest where
        parseJSON
          = withObject "AnalyzeSyntaxRequest"
              (\ o ->
                 AnalyzeSyntaxRequest' <$>
                   (o .:? "encodingType") <*> (o .:? "document"))

instance ToJSON AnalyzeSyntaxRequest where
        toJSON AnalyzeSyntaxRequest'{..}
          = object
              (catMaybes
                 [("encodingType" .=) <$> _asrEncodingType,
                  ("document" .=) <$> _asrDocument])

-- | Represents dependency parse tree information for a token. (For more
-- information on dependency labels, see
-- http:\/\/www.aclweb.org\/anthology\/P13-2017
--
-- /See:/ 'dependencyEdge' smart constructor.
data DependencyEdge =
  DependencyEdge'
    { _deHeadTokenIndex :: !(Maybe (Textual Int32))
    , _deLabel          :: !(Maybe DependencyEdgeLabel)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DependencyEdge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deHeadTokenIndex'
--
-- * 'deLabel'
dependencyEdge
    :: DependencyEdge
dependencyEdge =
  DependencyEdge' {_deHeadTokenIndex = Nothing, _deLabel = Nothing}


-- | Represents the head of this token in the dependency tree. This is the
-- index of the token which has an arc going to this token. The index is
-- the position of the token in the array of tokens returned by the API
-- method. If this token is a root token, then the \`head_token_index\` is
-- its own index.
deHeadTokenIndex :: Lens' DependencyEdge (Maybe Int32)
deHeadTokenIndex
  = lens _deHeadTokenIndex
      (\ s a -> s{_deHeadTokenIndex = a})
      . mapping _Coerce

-- | The parse label for the token.
deLabel :: Lens' DependencyEdge (Maybe DependencyEdgeLabel)
deLabel = lens _deLabel (\ s a -> s{_deLabel = a})

instance FromJSON DependencyEdge where
        parseJSON
          = withObject "DependencyEdge"
              (\ o ->
                 DependencyEdge' <$>
                   (o .:? "headTokenIndex") <*> (o .:? "label"))

instance ToJSON DependencyEdge where
        toJSON DependencyEdge'{..}
          = object
              (catMaybes
                 [("headTokenIndex" .=) <$> _deHeadTokenIndex,
                  ("label" .=) <$> _deLabel])

-- | The document classification request message.
--
-- /See:/ 'classifyTextRequest' smart constructor.
newtype ClassifyTextRequest =
  ClassifyTextRequest'
    { _ctrDocument :: Maybe Document
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClassifyTextRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrDocument'
classifyTextRequest
    :: ClassifyTextRequest
classifyTextRequest = ClassifyTextRequest' {_ctrDocument = Nothing}


-- | Input document.
ctrDocument :: Lens' ClassifyTextRequest (Maybe Document)
ctrDocument
  = lens _ctrDocument (\ s a -> s{_ctrDocument = a})

instance FromJSON ClassifyTextRequest where
        parseJSON
          = withObject "ClassifyTextRequest"
              (\ o -> ClassifyTextRequest' <$> (o .:? "document"))

instance ToJSON ClassifyTextRequest where
        toJSON ClassifyTextRequest'{..}
          = object
              (catMaybes [("document" .=) <$> _ctrDocument])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` that can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Represents the feeling associated with the entire text or entities in
-- the text.
--
-- /See:/ 'sentiment' smart constructor.
data Sentiment =
  Sentiment'
    { _sScore     :: !(Maybe (Textual Double))
    , _sMagnitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Sentiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sScore'
--
-- * 'sMagnitude'
sentiment
    :: Sentiment
sentiment = Sentiment' {_sScore = Nothing, _sMagnitude = Nothing}


-- | Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
-- sentiment).
sScore :: Lens' Sentiment (Maybe Double)
sScore
  = lens _sScore (\ s a -> s{_sScore = a}) .
      mapping _Coerce

-- | A non-negative number in the [0, +inf) range, which represents the
-- absolute magnitude of sentiment regardless of score (positive or
-- negative).
sMagnitude :: Lens' Sentiment (Maybe Double)
sMagnitude
  = lens _sMagnitude (\ s a -> s{_sMagnitude = a}) .
      mapping _Coerce

instance FromJSON Sentiment where
        parseJSON
          = withObject "Sentiment"
              (\ o ->
                 Sentiment' <$>
                   (o .:? "score") <*> (o .:? "magnitude"))

instance ToJSON Sentiment where
        toJSON Sentiment'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _sScore,
                  ("magnitude" .=) <$> _sMagnitude])

-- | Represents the smallest syntactic building block of the text.
--
-- /See:/ 'token' smart constructor.
data Token =
  Token'
    { _tDependencyEdge :: !(Maybe DependencyEdge)
    , _tText           :: !(Maybe TextSpan)
    , _tLemma          :: !(Maybe Text)
    , _tPartOfSpeech   :: !(Maybe PartOfSpeech)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Token' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tDependencyEdge'
--
-- * 'tText'
--
-- * 'tLemma'
--
-- * 'tPartOfSpeech'
token
    :: Token
token =
  Token'
    { _tDependencyEdge = Nothing
    , _tText = Nothing
    , _tLemma = Nothing
    , _tPartOfSpeech = Nothing
    }


-- | Dependency tree parse for this token.
tDependencyEdge :: Lens' Token (Maybe DependencyEdge)
tDependencyEdge
  = lens _tDependencyEdge
      (\ s a -> s{_tDependencyEdge = a})

-- | The token text.
tText :: Lens' Token (Maybe TextSpan)
tText = lens _tText (\ s a -> s{_tText = a})

-- | [Lemma](https:\/\/en.wikipedia.org\/wiki\/Lemma_%28morphology%29) of the
-- token.
tLemma :: Lens' Token (Maybe Text)
tLemma = lens _tLemma (\ s a -> s{_tLemma = a})

-- | Parts of speech tag for this token.
tPartOfSpeech :: Lens' Token (Maybe PartOfSpeech)
tPartOfSpeech
  = lens _tPartOfSpeech
      (\ s a -> s{_tPartOfSpeech = a})

instance FromJSON Token where
        parseJSON
          = withObject "Token"
              (\ o ->
                 Token' <$>
                   (o .:? "dependencyEdge") <*> (o .:? "text") <*>
                     (o .:? "lemma")
                     <*> (o .:? "partOfSpeech"))

instance ToJSON Token where
        toJSON Token'{..}
          = object
              (catMaybes
                 [("dependencyEdge" .=) <$> _tDependencyEdge,
                  ("text" .=) <$> _tText, ("lemma" .=) <$> _tLemma,
                  ("partOfSpeech" .=) <$> _tPartOfSpeech])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | Represents a category returned from the text classifier.
--
-- /See:/ 'classificationCategory' smart constructor.
data ClassificationCategory =
  ClassificationCategory'
    { _ccConfidence :: !(Maybe (Textual Double))
    , _ccName       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClassificationCategory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccConfidence'
--
-- * 'ccName'
classificationCategory
    :: ClassificationCategory
classificationCategory =
  ClassificationCategory' {_ccConfidence = Nothing, _ccName = Nothing}


-- | The classifier\'s confidence of the category. Number represents how
-- certain the classifier is that this category represents the given text.
ccConfidence :: Lens' ClassificationCategory (Maybe Double)
ccConfidence
  = lens _ccConfidence (\ s a -> s{_ccConfidence = a})
      . mapping _Coerce

-- | The name of the category representing the document, from the [predefined
-- taxonomy](\/natural-language\/docs\/categories).
ccName :: Lens' ClassificationCategory (Maybe Text)
ccName = lens _ccName (\ s a -> s{_ccName = a})

instance FromJSON ClassificationCategory where
        parseJSON
          = withObject "ClassificationCategory"
              (\ o ->
                 ClassificationCategory' <$>
                   (o .:? "confidence") <*> (o .:? "name"))

instance ToJSON ClassificationCategory where
        toJSON ClassificationCategory'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _ccConfidence,
                  ("name" .=) <$> _ccName])

-- | The request message for the text annotation API, which can perform
-- multiple analysis types (sentiment, entities, and syntax) in one call.
--
-- /See:/ 'annotateTextRequest' smart constructor.
data AnnotateTextRequest =
  AnnotateTextRequest'
    { _atrEncodingType :: !(Maybe AnnotateTextRequestEncodingType)
    , _atrFeatures     :: !(Maybe Features)
    , _atrDocument     :: !(Maybe Document)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnnotateTextRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atrEncodingType'
--
-- * 'atrFeatures'
--
-- * 'atrDocument'
annotateTextRequest
    :: AnnotateTextRequest
annotateTextRequest =
  AnnotateTextRequest'
    {_atrEncodingType = Nothing, _atrFeatures = Nothing, _atrDocument = Nothing}


-- | The encoding type used by the API to calculate offsets.
atrEncodingType :: Lens' AnnotateTextRequest (Maybe AnnotateTextRequestEncodingType)
atrEncodingType
  = lens _atrEncodingType
      (\ s a -> s{_atrEncodingType = a})

-- | The enabled features.
atrFeatures :: Lens' AnnotateTextRequest (Maybe Features)
atrFeatures
  = lens _atrFeatures (\ s a -> s{_atrFeatures = a})

-- | Input document.
atrDocument :: Lens' AnnotateTextRequest (Maybe Document)
atrDocument
  = lens _atrDocument (\ s a -> s{_atrDocument = a})

instance FromJSON AnnotateTextRequest where
        parseJSON
          = withObject "AnnotateTextRequest"
              (\ o ->
                 AnnotateTextRequest' <$>
                   (o .:? "encodingType") <*> (o .:? "features") <*>
                     (o .:? "document"))

instance ToJSON AnnotateTextRequest where
        toJSON AnnotateTextRequest'{..}
          = object
              (catMaybes
                 [("encodingType" .=) <$> _atrEncodingType,
                  ("features" .=) <$> _atrFeatures,
                  ("document" .=) <$> _atrDocument])

-- | Represents a mention for an entity in the text. Currently, proper noun
-- mentions are supported.
--
-- /See:/ 'entityMention' smart constructor.
data EntityMention =
  EntityMention'
    { _emSentiment :: !(Maybe Sentiment)
    , _emText      :: !(Maybe TextSpan)
    , _emType      :: !(Maybe EntityMentionType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityMention' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'emSentiment'
--
-- * 'emText'
--
-- * 'emType'
entityMention
    :: EntityMention
entityMention =
  EntityMention' {_emSentiment = Nothing, _emText = Nothing, _emType = Nothing}


-- | For calls to AnalyzeEntitySentiment or if
-- AnnotateTextRequest.Features.extract_entity_sentiment is set to true,
-- this field will contain the sentiment expressed for this mention of the
-- entity in the provided document.
emSentiment :: Lens' EntityMention (Maybe Sentiment)
emSentiment
  = lens _emSentiment (\ s a -> s{_emSentiment = a})

-- | The mention text.
emText :: Lens' EntityMention (Maybe TextSpan)
emText = lens _emText (\ s a -> s{_emText = a})

-- | The type of the entity mention.
emType :: Lens' EntityMention (Maybe EntityMentionType)
emType = lens _emType (\ s a -> s{_emType = a})

instance FromJSON EntityMention where
        parseJSON
          = withObject "EntityMention"
              (\ o ->
                 EntityMention' <$>
                   (o .:? "sentiment") <*> (o .:? "text") <*>
                     (o .:? "type"))

instance ToJSON EntityMention where
        toJSON EntityMention'{..}
          = object
              (catMaybes
                 [("sentiment" .=) <$> _emSentiment,
                  ("text" .=) <$> _emText, ("type" .=) <$> _emType])

-- | Represents an output piece of text.
--
-- /See:/ 'textSpan' smart constructor.
data TextSpan =
  TextSpan'
    { _tsBeginOffSet :: !(Maybe (Textual Int32))
    , _tsContent     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextSpan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsBeginOffSet'
--
-- * 'tsContent'
textSpan
    :: TextSpan
textSpan = TextSpan' {_tsBeginOffSet = Nothing, _tsContent = Nothing}


-- | The API calculates the beginning offset of the content in the original
-- document according to the EncodingType specified in the API request.
tsBeginOffSet :: Lens' TextSpan (Maybe Int32)
tsBeginOffSet
  = lens _tsBeginOffSet
      (\ s a -> s{_tsBeginOffSet = a})
      . mapping _Coerce

-- | The content of the output text.
tsContent :: Lens' TextSpan (Maybe Text)
tsContent
  = lens _tsContent (\ s a -> s{_tsContent = a})

instance FromJSON TextSpan where
        parseJSON
          = withObject "TextSpan"
              (\ o ->
                 TextSpan' <$>
                   (o .:? "beginOffset") <*> (o .:? "content"))

instance ToJSON TextSpan where
        toJSON TextSpan'{..}
          = object
              (catMaybes
                 [("beginOffset" .=) <$> _tsBeginOffSet,
                  ("content" .=) <$> _tsContent])

-- | The entity-level sentiment analysis request message.
--
-- /See:/ 'analyzeEntitySentimentRequest' smart constructor.
data AnalyzeEntitySentimentRequest =
  AnalyzeEntitySentimentRequest'
    { _aesrEncodingType :: !(Maybe AnalyzeEntitySentimentRequestEncodingType)
    , _aesrDocument     :: !(Maybe Document)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnalyzeEntitySentimentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aesrEncodingType'
--
-- * 'aesrDocument'
analyzeEntitySentimentRequest
    :: AnalyzeEntitySentimentRequest
analyzeEntitySentimentRequest =
  AnalyzeEntitySentimentRequest'
    {_aesrEncodingType = Nothing, _aesrDocument = Nothing}


-- | The encoding type used by the API to calculate offsets.
aesrEncodingType :: Lens' AnalyzeEntitySentimentRequest (Maybe AnalyzeEntitySentimentRequestEncodingType)
aesrEncodingType
  = lens _aesrEncodingType
      (\ s a -> s{_aesrEncodingType = a})

-- | Input document.
aesrDocument :: Lens' AnalyzeEntitySentimentRequest (Maybe Document)
aesrDocument
  = lens _aesrDocument (\ s a -> s{_aesrDocument = a})

instance FromJSON AnalyzeEntitySentimentRequest where
        parseJSON
          = withObject "AnalyzeEntitySentimentRequest"
              (\ o ->
                 AnalyzeEntitySentimentRequest' <$>
                   (o .:? "encodingType") <*> (o .:? "document"))

instance ToJSON AnalyzeEntitySentimentRequest where
        toJSON AnalyzeEntitySentimentRequest'{..}
          = object
              (catMaybes
                 [("encodingType" .=) <$> _aesrEncodingType,
                  ("document" .=) <$> _aesrDocument])

-- | The text annotations response message.
--
-- /See:/ 'annotateTextResponse' smart constructor.
data AnnotateTextResponse =
  AnnotateTextResponse'
    { _atrEntities          :: !(Maybe [Entity])
    , _atrTokens            :: !(Maybe [Token])
    , _atrDocumentSentiment :: !(Maybe Sentiment)
    , _atrCategories        :: !(Maybe [ClassificationCategory])
    , _atrSentences         :: !(Maybe [Sentence])
    , _atrLanguage          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnnotateTextResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atrEntities'
--
-- * 'atrTokens'
--
-- * 'atrDocumentSentiment'
--
-- * 'atrCategories'
--
-- * 'atrSentences'
--
-- * 'atrLanguage'
annotateTextResponse
    :: AnnotateTextResponse
annotateTextResponse =
  AnnotateTextResponse'
    { _atrEntities = Nothing
    , _atrTokens = Nothing
    , _atrDocumentSentiment = Nothing
    , _atrCategories = Nothing
    , _atrSentences = Nothing
    , _atrLanguage = Nothing
    }


-- | Entities, along with their semantic information, in the input document.
-- Populated if the user enables
-- AnnotateTextRequest.Features.extract_entities.
atrEntities :: Lens' AnnotateTextResponse [Entity]
atrEntities
  = lens _atrEntities (\ s a -> s{_atrEntities = a}) .
      _Default
      . _Coerce

-- | Tokens, along with their syntactic information, in the input document.
-- Populated if the user enables
-- AnnotateTextRequest.Features.extract_syntax.
atrTokens :: Lens' AnnotateTextResponse [Token]
atrTokens
  = lens _atrTokens (\ s a -> s{_atrTokens = a}) .
      _Default
      . _Coerce

-- | The overall sentiment for the document. Populated if the user enables
-- AnnotateTextRequest.Features.extract_document_sentiment.
atrDocumentSentiment :: Lens' AnnotateTextResponse (Maybe Sentiment)
atrDocumentSentiment
  = lens _atrDocumentSentiment
      (\ s a -> s{_atrDocumentSentiment = a})

-- | Categories identified in the input document.
atrCategories :: Lens' AnnotateTextResponse [ClassificationCategory]
atrCategories
  = lens _atrCategories
      (\ s a -> s{_atrCategories = a})
      . _Default
      . _Coerce

-- | Sentences in the input document. Populated if the user enables
-- AnnotateTextRequest.Features.extract_syntax.
atrSentences :: Lens' AnnotateTextResponse [Sentence]
atrSentences
  = lens _atrSentences (\ s a -> s{_atrSentences = a})
      . _Default
      . _Coerce

-- | The language of the text, which will be the same as the language
-- specified in the request or, if not specified, the
-- automatically-detected language. See Document.language field for more
-- details.
atrLanguage :: Lens' AnnotateTextResponse (Maybe Text)
atrLanguage
  = lens _atrLanguage (\ s a -> s{_atrLanguage = a})

instance FromJSON AnnotateTextResponse where
        parseJSON
          = withObject "AnnotateTextResponse"
              (\ o ->
                 AnnotateTextResponse' <$>
                   (o .:? "entities" .!= mempty) <*>
                     (o .:? "tokens" .!= mempty)
                     <*> (o .:? "documentSentiment")
                     <*> (o .:? "categories" .!= mempty)
                     <*> (o .:? "sentences" .!= mempty)
                     <*> (o .:? "language"))

instance ToJSON AnnotateTextResponse where
        toJSON AnnotateTextResponse'{..}
          = object
              (catMaybes
                 [("entities" .=) <$> _atrEntities,
                  ("tokens" .=) <$> _atrTokens,
                  ("documentSentiment" .=) <$> _atrDocumentSentiment,
                  ("categories" .=) <$> _atrCategories,
                  ("sentences" .=) <$> _atrSentences,
                  ("language" .=) <$> _atrLanguage])

-- | All available features for sentiment, syntax, and semantic analysis.
-- Setting each one to true will enable that specific analysis for the
-- input.
--
-- /See:/ 'features' smart constructor.
data Features =
  Features'
    { _fExtractSyntax            :: !(Maybe Bool)
    , _fExtractDocumentSentiment :: !(Maybe Bool)
    , _fClassifyText             :: !(Maybe Bool)
    , _fExtractEntitySentiment   :: !(Maybe Bool)
    , _fExtractEntities          :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Features' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fExtractSyntax'
--
-- * 'fExtractDocumentSentiment'
--
-- * 'fClassifyText'
--
-- * 'fExtractEntitySentiment'
--
-- * 'fExtractEntities'
features
    :: Features
features =
  Features'
    { _fExtractSyntax = Nothing
    , _fExtractDocumentSentiment = Nothing
    , _fClassifyText = Nothing
    , _fExtractEntitySentiment = Nothing
    , _fExtractEntities = Nothing
    }


-- | Extract syntax information.
fExtractSyntax :: Lens' Features (Maybe Bool)
fExtractSyntax
  = lens _fExtractSyntax
      (\ s a -> s{_fExtractSyntax = a})

-- | Extract document-level sentiment.
fExtractDocumentSentiment :: Lens' Features (Maybe Bool)
fExtractDocumentSentiment
  = lens _fExtractDocumentSentiment
      (\ s a -> s{_fExtractDocumentSentiment = a})

-- | Classify the full document into categories.
fClassifyText :: Lens' Features (Maybe Bool)
fClassifyText
  = lens _fClassifyText
      (\ s a -> s{_fClassifyText = a})

-- | Extract entities and their associated sentiment.
fExtractEntitySentiment :: Lens' Features (Maybe Bool)
fExtractEntitySentiment
  = lens _fExtractEntitySentiment
      (\ s a -> s{_fExtractEntitySentiment = a})

-- | Extract entities.
fExtractEntities :: Lens' Features (Maybe Bool)
fExtractEntities
  = lens _fExtractEntities
      (\ s a -> s{_fExtractEntities = a})

instance FromJSON Features where
        parseJSON
          = withObject "Features"
              (\ o ->
                 Features' <$>
                   (o .:? "extractSyntax") <*>
                     (o .:? "extractDocumentSentiment")
                     <*> (o .:? "classifyText")
                     <*> (o .:? "extractEntitySentiment")
                     <*> (o .:? "extractEntities"))

instance ToJSON Features where
        toJSON Features'{..}
          = object
              (catMaybes
                 [("extractSyntax" .=) <$> _fExtractSyntax,
                  ("extractDocumentSentiment" .=) <$>
                    _fExtractDocumentSentiment,
                  ("classifyText" .=) <$> _fClassifyText,
                  ("extractEntitySentiment" .=) <$>
                    _fExtractEntitySentiment,
                  ("extractEntities" .=) <$> _fExtractEntities])

-- | ################################################################ #
-- Represents the input to API methods.
--
-- /See:/ 'document' smart constructor.
data Document =
  Document'
    { _dContent       :: !(Maybe Text)
    , _dLanguage      :: !(Maybe Text)
    , _dGcsContentURI :: !(Maybe Text)
    , _dType          :: !(Maybe DocumentType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Document' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dContent'
--
-- * 'dLanguage'
--
-- * 'dGcsContentURI'
--
-- * 'dType'
document
    :: Document
document =
  Document'
    { _dContent = Nothing
    , _dLanguage = Nothing
    , _dGcsContentURI = Nothing
    , _dType = Nothing
    }


-- | The content of the input in string format. Cloud audit logging exempt
-- since it is based on user data.
dContent :: Lens' Document (Maybe Text)
dContent = lens _dContent (\ s a -> s{_dContent = a})

-- | The language of the document (if not specified, the language is
-- automatically detected). Both ISO and BCP-47 language codes are
-- accepted.
-- [Language Support](\/natural-language\/docs\/languages) lists currently
-- supported languages for each API method. If the language (either
-- specified by the caller or automatically detected) is not supported by
-- the called API method, an \`INVALID_ARGUMENT\` error is returned.
dLanguage :: Lens' Document (Maybe Text)
dLanguage
  = lens _dLanguage (\ s a -> s{_dLanguage = a})

-- | The Google Cloud Storage URI where the file content is located. This URI
-- must be of the form: gs:\/\/bucket_name\/object_name. For more details,
-- see https:\/\/cloud.google.com\/storage\/docs\/reference-uris. NOTE:
-- Cloud Storage object versioning is not supported.
dGcsContentURI :: Lens' Document (Maybe Text)
dGcsContentURI
  = lens _dGcsContentURI
      (\ s a -> s{_dGcsContentURI = a})

-- | Required. If the type is not set or is \`TYPE_UNSPECIFIED\`, returns an
-- \`INVALID_ARGUMENT\` error.
dType :: Lens' Document (Maybe DocumentType)
dType = lens _dType (\ s a -> s{_dType = a})

instance FromJSON Document where
        parseJSON
          = withObject "Document"
              (\ o ->
                 Document' <$>
                   (o .:? "content") <*> (o .:? "language") <*>
                     (o .:? "gcsContentUri")
                     <*> (o .:? "type"))

instance ToJSON Document where
        toJSON Document'{..}
          = object
              (catMaybes
                 [("content" .=) <$> _dContent,
                  ("language" .=) <$> _dLanguage,
                  ("gcsContentUri" .=) <$> _dGcsContentURI,
                  ("type" .=) <$> _dType])

-- | The sentiment analysis request message.
--
-- /See:/ 'analyzeSentimentRequest' smart constructor.
data AnalyzeSentimentRequest =
  AnalyzeSentimentRequest'
    { _aEncodingType :: !(Maybe AnalyzeSentimentRequestEncodingType)
    , _aDocument     :: !(Maybe Document)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnalyzeSentimentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEncodingType'
--
-- * 'aDocument'
analyzeSentimentRequest
    :: AnalyzeSentimentRequest
analyzeSentimentRequest =
  AnalyzeSentimentRequest' {_aEncodingType = Nothing, _aDocument = Nothing}


-- | The encoding type used by the API to calculate sentence offsets.
aEncodingType :: Lens' AnalyzeSentimentRequest (Maybe AnalyzeSentimentRequestEncodingType)
aEncodingType
  = lens _aEncodingType
      (\ s a -> s{_aEncodingType = a})

-- | Input document.
aDocument :: Lens' AnalyzeSentimentRequest (Maybe Document)
aDocument
  = lens _aDocument (\ s a -> s{_aDocument = a})

instance FromJSON AnalyzeSentimentRequest where
        parseJSON
          = withObject "AnalyzeSentimentRequest"
              (\ o ->
                 AnalyzeSentimentRequest' <$>
                   (o .:? "encodingType") <*> (o .:? "document"))

instance ToJSON AnalyzeSentimentRequest where
        toJSON AnalyzeSentimentRequest'{..}
          = object
              (catMaybes
                 [("encodingType" .=) <$> _aEncodingType,
                  ("document" .=) <$> _aDocument])

-- | The entity analysis response message.
--
-- /See:/ 'analyzeEntitiesResponse' smart constructor.
data AnalyzeEntitiesResponse =
  AnalyzeEntitiesResponse'
    { _aerEntities :: !(Maybe [Entity])
    , _aerLanguage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnalyzeEntitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aerEntities'
--
-- * 'aerLanguage'
analyzeEntitiesResponse
    :: AnalyzeEntitiesResponse
analyzeEntitiesResponse =
  AnalyzeEntitiesResponse' {_aerEntities = Nothing, _aerLanguage = Nothing}


-- | The recognized entities in the input document.
aerEntities :: Lens' AnalyzeEntitiesResponse [Entity]
aerEntities
  = lens _aerEntities (\ s a -> s{_aerEntities = a}) .
      _Default
      . _Coerce

-- | The language of the text, which will be the same as the language
-- specified in the request or, if not specified, the
-- automatically-detected language. See Document.language field for more
-- details.
aerLanguage :: Lens' AnalyzeEntitiesResponse (Maybe Text)
aerLanguage
  = lens _aerLanguage (\ s a -> s{_aerLanguage = a})

instance FromJSON AnalyzeEntitiesResponse where
        parseJSON
          = withObject "AnalyzeEntitiesResponse"
              (\ o ->
                 AnalyzeEntitiesResponse' <$>
                   (o .:? "entities" .!= mempty) <*> (o .:? "language"))

instance ToJSON AnalyzeEntitiesResponse where
        toJSON AnalyzeEntitiesResponse'{..}
          = object
              (catMaybes
                 [("entities" .=) <$> _aerEntities,
                  ("language" .=) <$> _aerLanguage])

-- | The sentiment analysis response message.
--
-- /See:/ 'analyzeSentimentResponse' smart constructor.
data AnalyzeSentimentResponse =
  AnalyzeSentimentResponse'
    { _asrDocumentSentiment :: !(Maybe Sentiment)
    , _asrSentences         :: !(Maybe [Sentence])
    , _asrLanguage          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnalyzeSentimentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrDocumentSentiment'
--
-- * 'asrSentences'
--
-- * 'asrLanguage'
analyzeSentimentResponse
    :: AnalyzeSentimentResponse
analyzeSentimentResponse =
  AnalyzeSentimentResponse'
    { _asrDocumentSentiment = Nothing
    , _asrSentences = Nothing
    , _asrLanguage = Nothing
    }


-- | The overall sentiment of the input document.
asrDocumentSentiment :: Lens' AnalyzeSentimentResponse (Maybe Sentiment)
asrDocumentSentiment
  = lens _asrDocumentSentiment
      (\ s a -> s{_asrDocumentSentiment = a})

-- | The sentiment for all the sentences in the document.
asrSentences :: Lens' AnalyzeSentimentResponse [Sentence]
asrSentences
  = lens _asrSentences (\ s a -> s{_asrSentences = a})
      . _Default
      . _Coerce

-- | The language of the text, which will be the same as the language
-- specified in the request or, if not specified, the
-- automatically-detected language. See Document.language field for more
-- details.
asrLanguage :: Lens' AnalyzeSentimentResponse (Maybe Text)
asrLanguage
  = lens _asrLanguage (\ s a -> s{_asrLanguage = a})

instance FromJSON AnalyzeSentimentResponse where
        parseJSON
          = withObject "AnalyzeSentimentResponse"
              (\ o ->
                 AnalyzeSentimentResponse' <$>
                   (o .:? "documentSentiment") <*>
                     (o .:? "sentences" .!= mempty)
                     <*> (o .:? "language"))

instance ToJSON AnalyzeSentimentResponse where
        toJSON AnalyzeSentimentResponse'{..}
          = object
              (catMaybes
                 [("documentSentiment" .=) <$> _asrDocumentSentiment,
                  ("sentences" .=) <$> _asrSentences,
                  ("language" .=) <$> _asrLanguage])

-- | The entity analysis request message.
--
-- /See:/ 'analyzeEntitiesRequest' smart constructor.
data AnalyzeEntitiesRequest =
  AnalyzeEntitiesRequest'
    { _aerEncodingType :: !(Maybe AnalyzeEntitiesRequestEncodingType)
    , _aerDocument     :: !(Maybe Document)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnalyzeEntitiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aerEncodingType'
--
-- * 'aerDocument'
analyzeEntitiesRequest
    :: AnalyzeEntitiesRequest
analyzeEntitiesRequest =
  AnalyzeEntitiesRequest' {_aerEncodingType = Nothing, _aerDocument = Nothing}


-- | The encoding type used by the API to calculate offsets.
aerEncodingType :: Lens' AnalyzeEntitiesRequest (Maybe AnalyzeEntitiesRequestEncodingType)
aerEncodingType
  = lens _aerEncodingType
      (\ s a -> s{_aerEncodingType = a})

-- | Input document.
aerDocument :: Lens' AnalyzeEntitiesRequest (Maybe Document)
aerDocument
  = lens _aerDocument (\ s a -> s{_aerDocument = a})

instance FromJSON AnalyzeEntitiesRequest where
        parseJSON
          = withObject "AnalyzeEntitiesRequest"
              (\ o ->
                 AnalyzeEntitiesRequest' <$>
                   (o .:? "encodingType") <*> (o .:? "document"))

instance ToJSON AnalyzeEntitiesRequest where
        toJSON AnalyzeEntitiesRequest'{..}
          = object
              (catMaybes
                 [("encodingType" .=) <$> _aerEncodingType,
                  ("document" .=) <$> _aerDocument])

-- | Represents a phrase in the text that is a known entity, such as a
-- person, an organization, or location. The API associates information,
-- such as salience and mentions, with entities.
--
-- /See:/ 'entity' smart constructor.
data Entity =
  Entity'
    { _eSentiment :: !(Maybe Sentiment)
    , _eName      :: !(Maybe Text)
    , _eSalience  :: !(Maybe (Textual Double))
    , _eMetadata  :: !(Maybe EntityMetadata)
    , _eType      :: !(Maybe EntityType)
    , _eMentions  :: !(Maybe [EntityMention])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Entity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eSentiment'
--
-- * 'eName'
--
-- * 'eSalience'
--
-- * 'eMetadata'
--
-- * 'eType'
--
-- * 'eMentions'
entity
    :: Entity
entity =
  Entity'
    { _eSentiment = Nothing
    , _eName = Nothing
    , _eSalience = Nothing
    , _eMetadata = Nothing
    , _eType = Nothing
    , _eMentions = Nothing
    }


-- | For calls to AnalyzeEntitySentiment or if
-- AnnotateTextRequest.Features.extract_entity_sentiment is set to true,
-- this field will contain the aggregate sentiment expressed for this
-- entity in the provided document.
eSentiment :: Lens' Entity (Maybe Sentiment)
eSentiment
  = lens _eSentiment (\ s a -> s{_eSentiment = a})

-- | The representative name for the entity.
eName :: Lens' Entity (Maybe Text)
eName = lens _eName (\ s a -> s{_eName = a})

-- | The salience score associated with the entity in the [0, 1.0] range. The
-- salience score for an entity provides information about the importance
-- or centrality of that entity to the entire document text. Scores closer
-- to 0 are less salient, while scores closer to 1.0 are highly salient.
eSalience :: Lens' Entity (Maybe Double)
eSalience
  = lens _eSalience (\ s a -> s{_eSalience = a}) .
      mapping _Coerce

-- | Metadata associated with the entity. Currently, Wikipedia URLs and
-- Knowledge Graph MIDs are provided, if available. The associated keys are
-- \"wikipedia_url\" and \"mid\", respectively.
eMetadata :: Lens' Entity (Maybe EntityMetadata)
eMetadata
  = lens _eMetadata (\ s a -> s{_eMetadata = a})

-- | The entity type.
eType :: Lens' Entity (Maybe EntityType)
eType = lens _eType (\ s a -> s{_eType = a})

-- | The mentions of this entity in the input document. The API currently
-- supports proper noun mentions.
eMentions :: Lens' Entity [EntityMention]
eMentions
  = lens _eMentions (\ s a -> s{_eMentions = a}) .
      _Default
      . _Coerce

instance FromJSON Entity where
        parseJSON
          = withObject "Entity"
              (\ o ->
                 Entity' <$>
                   (o .:? "sentiment") <*> (o .:? "name") <*>
                     (o .:? "salience")
                     <*> (o .:? "metadata")
                     <*> (o .:? "type")
                     <*> (o .:? "mentions" .!= mempty))

instance ToJSON Entity where
        toJSON Entity'{..}
          = object
              (catMaybes
                 [("sentiment" .=) <$> _eSentiment,
                  ("name" .=) <$> _eName,
                  ("salience" .=) <$> _eSalience,
                  ("metadata" .=) <$> _eMetadata,
                  ("type" .=) <$> _eType,
                  ("mentions" .=) <$> _eMentions])

-- | The entity-level sentiment analysis response message.
--
-- /See:/ 'analyzeEntitySentimentResponse' smart constructor.
data AnalyzeEntitySentimentResponse =
  AnalyzeEntitySentimentResponse'
    { _aesrEntities :: !(Maybe [Entity])
    , _aesrLanguage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnalyzeEntitySentimentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aesrEntities'
--
-- * 'aesrLanguage'
analyzeEntitySentimentResponse
    :: AnalyzeEntitySentimentResponse
analyzeEntitySentimentResponse =
  AnalyzeEntitySentimentResponse'
    {_aesrEntities = Nothing, _aesrLanguage = Nothing}


-- | The recognized entities in the input document with associated
-- sentiments.
aesrEntities :: Lens' AnalyzeEntitySentimentResponse [Entity]
aesrEntities
  = lens _aesrEntities (\ s a -> s{_aesrEntities = a})
      . _Default
      . _Coerce

-- | The language of the text, which will be the same as the language
-- specified in the request or, if not specified, the
-- automatically-detected language. See Document.language field for more
-- details.
aesrLanguage :: Lens' AnalyzeEntitySentimentResponse (Maybe Text)
aesrLanguage
  = lens _aesrLanguage (\ s a -> s{_aesrLanguage = a})

instance FromJSON AnalyzeEntitySentimentResponse
         where
        parseJSON
          = withObject "AnalyzeEntitySentimentResponse"
              (\ o ->
                 AnalyzeEntitySentimentResponse' <$>
                   (o .:? "entities" .!= mempty) <*> (o .:? "language"))

instance ToJSON AnalyzeEntitySentimentResponse where
        toJSON AnalyzeEntitySentimentResponse'{..}
          = object
              (catMaybes
                 [("entities" .=) <$> _aesrEntities,
                  ("language" .=) <$> _aesrLanguage])

-- | The syntax analysis response message.
--
-- /See:/ 'analyzeSyntaxResponse' smart constructor.
data AnalyzeSyntaxResponse =
  AnalyzeSyntaxResponse'
    { _aTokens    :: !(Maybe [Token])
    , _aSentences :: !(Maybe [Sentence])
    , _aLanguage  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnalyzeSyntaxResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aTokens'
--
-- * 'aSentences'
--
-- * 'aLanguage'
analyzeSyntaxResponse
    :: AnalyzeSyntaxResponse
analyzeSyntaxResponse =
  AnalyzeSyntaxResponse'
    {_aTokens = Nothing, _aSentences = Nothing, _aLanguage = Nothing}


-- | Tokens, along with their syntactic information, in the input document.
aTokens :: Lens' AnalyzeSyntaxResponse [Token]
aTokens
  = lens _aTokens (\ s a -> s{_aTokens = a}) . _Default
      . _Coerce

-- | Sentences in the input document.
aSentences :: Lens' AnalyzeSyntaxResponse [Sentence]
aSentences
  = lens _aSentences (\ s a -> s{_aSentences = a}) .
      _Default
      . _Coerce

-- | The language of the text, which will be the same as the language
-- specified in the request or, if not specified, the
-- automatically-detected language. See Document.language field for more
-- details.
aLanguage :: Lens' AnalyzeSyntaxResponse (Maybe Text)
aLanguage
  = lens _aLanguage (\ s a -> s{_aLanguage = a})

instance FromJSON AnalyzeSyntaxResponse where
        parseJSON
          = withObject "AnalyzeSyntaxResponse"
              (\ o ->
                 AnalyzeSyntaxResponse' <$>
                   (o .:? "tokens" .!= mempty) <*>
                     (o .:? "sentences" .!= mempty)
                     <*> (o .:? "language"))

instance ToJSON AnalyzeSyntaxResponse where
        toJSON AnalyzeSyntaxResponse'{..}
          = object
              (catMaybes
                 [("tokens" .=) <$> _aTokens,
                  ("sentences" .=) <$> _aSentences,
                  ("language" .=) <$> _aLanguage])

-- | Metadata associated with the entity. Currently, Wikipedia URLs and
-- Knowledge Graph MIDs are provided, if available. The associated keys are
-- \"wikipedia_url\" and \"mid\", respectively.
--
-- /See:/ 'entityMetadata' smart constructor.
newtype EntityMetadata =
  EntityMetadata'
    { _emAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'emAddtional'
entityMetadata
    :: HashMap Text Text -- ^ 'emAddtional'
    -> EntityMetadata
entityMetadata pEmAddtional_ =
  EntityMetadata' {_emAddtional = _Coerce # pEmAddtional_}


emAddtional :: Lens' EntityMetadata (HashMap Text Text)
emAddtional
  = lens _emAddtional (\ s a -> s{_emAddtional = a}) .
      _Coerce

instance FromJSON EntityMetadata where
        parseJSON
          = withObject "EntityMetadata"
              (\ o -> EntityMetadata' <$> (parseJSONObject o))

instance ToJSON EntityMetadata where
        toJSON = toJSON . _emAddtional

-- | The document classification response message.
--
-- /See:/ 'classifyTextResponse' smart constructor.
newtype ClassifyTextResponse =
  ClassifyTextResponse'
    { _ctrCategories :: Maybe [ClassificationCategory]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClassifyTextResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrCategories'
classifyTextResponse
    :: ClassifyTextResponse
classifyTextResponse = ClassifyTextResponse' {_ctrCategories = Nothing}


-- | Categories representing the input document.
ctrCategories :: Lens' ClassifyTextResponse [ClassificationCategory]
ctrCategories
  = lens _ctrCategories
      (\ s a -> s{_ctrCategories = a})
      . _Default
      . _Coerce

instance FromJSON ClassifyTextResponse where
        parseJSON
          = withObject "ClassifyTextResponse"
              (\ o ->
                 ClassifyTextResponse' <$>
                   (o .:? "categories" .!= mempty))

instance ToJSON ClassifyTextResponse where
        toJSON ClassifyTextResponse'{..}
          = object
              (catMaybes [("categories" .=) <$> _ctrCategories])

-- | Represents part of speech information for a token. Parts of speech are
-- as defined in
-- http:\/\/www.lrec-conf.org\/proceedings\/lrec2012\/pdf\/274_Paper.pdf
--
-- /See:/ 'partOfSpeech' smart constructor.
data PartOfSpeech =
  PartOfSpeech'
    { _posProper      :: !(Maybe PartOfSpeechProper)
    , _posTag         :: !(Maybe PartOfSpeechTag)
    , _posPerson      :: !(Maybe PartOfSpeechPerson)
    , _posAspect      :: !(Maybe PartOfSpeechAspect)
    , _posCase        :: !(Maybe PartOfSpeechCase)
    , _posGender      :: !(Maybe PartOfSpeechGender)
    , _posReciprocity :: !(Maybe PartOfSpeechReciprocity)
    , _posNumber      :: !(Maybe PartOfSpeechNumber)
    , _posVoice       :: !(Maybe PartOfSpeechVoice)
    , _posForm        :: !(Maybe PartOfSpeechForm)
    , _posTense       :: !(Maybe PartOfSpeechTense)
    , _posMood        :: !(Maybe PartOfSpeechMood)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartOfSpeech' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posProper'
--
-- * 'posTag'
--
-- * 'posPerson'
--
-- * 'posAspect'
--
-- * 'posCase'
--
-- * 'posGender'
--
-- * 'posReciprocity'
--
-- * 'posNumber'
--
-- * 'posVoice'
--
-- * 'posForm'
--
-- * 'posTense'
--
-- * 'posMood'
partOfSpeech
    :: PartOfSpeech
partOfSpeech =
  PartOfSpeech'
    { _posProper = Nothing
    , _posTag = Nothing
    , _posPerson = Nothing
    , _posAspect = Nothing
    , _posCase = Nothing
    , _posGender = Nothing
    , _posReciprocity = Nothing
    , _posNumber = Nothing
    , _posVoice = Nothing
    , _posForm = Nothing
    , _posTense = Nothing
    , _posMood = Nothing
    }


-- | The grammatical properness.
posProper :: Lens' PartOfSpeech (Maybe PartOfSpeechProper)
posProper
  = lens _posProper (\ s a -> s{_posProper = a})

-- | The part of speech tag.
posTag :: Lens' PartOfSpeech (Maybe PartOfSpeechTag)
posTag = lens _posTag (\ s a -> s{_posTag = a})

-- | The grammatical person.
posPerson :: Lens' PartOfSpeech (Maybe PartOfSpeechPerson)
posPerson
  = lens _posPerson (\ s a -> s{_posPerson = a})

-- | The grammatical aspect.
posAspect :: Lens' PartOfSpeech (Maybe PartOfSpeechAspect)
posAspect
  = lens _posAspect (\ s a -> s{_posAspect = a})

-- | The grammatical case.
posCase :: Lens' PartOfSpeech (Maybe PartOfSpeechCase)
posCase = lens _posCase (\ s a -> s{_posCase = a})

-- | The grammatical gender.
posGender :: Lens' PartOfSpeech (Maybe PartOfSpeechGender)
posGender
  = lens _posGender (\ s a -> s{_posGender = a})

-- | The grammatical reciprocity.
posReciprocity :: Lens' PartOfSpeech (Maybe PartOfSpeechReciprocity)
posReciprocity
  = lens _posReciprocity
      (\ s a -> s{_posReciprocity = a})

-- | The grammatical number.
posNumber :: Lens' PartOfSpeech (Maybe PartOfSpeechNumber)
posNumber
  = lens _posNumber (\ s a -> s{_posNumber = a})

-- | The grammatical voice.
posVoice :: Lens' PartOfSpeech (Maybe PartOfSpeechVoice)
posVoice = lens _posVoice (\ s a -> s{_posVoice = a})

-- | The grammatical form.
posForm :: Lens' PartOfSpeech (Maybe PartOfSpeechForm)
posForm = lens _posForm (\ s a -> s{_posForm = a})

-- | The grammatical tense.
posTense :: Lens' PartOfSpeech (Maybe PartOfSpeechTense)
posTense = lens _posTense (\ s a -> s{_posTense = a})

-- | The grammatical mood.
posMood :: Lens' PartOfSpeech (Maybe PartOfSpeechMood)
posMood = lens _posMood (\ s a -> s{_posMood = a})

instance FromJSON PartOfSpeech where
        parseJSON
          = withObject "PartOfSpeech"
              (\ o ->
                 PartOfSpeech' <$>
                   (o .:? "proper") <*> (o .:? "tag") <*>
                     (o .:? "person")
                     <*> (o .:? "aspect")
                     <*> (o .:? "case")
                     <*> (o .:? "gender")
                     <*> (o .:? "reciprocity")
                     <*> (o .:? "number")
                     <*> (o .:? "voice")
                     <*> (o .:? "form")
                     <*> (o .:? "tense")
                     <*> (o .:? "mood"))

instance ToJSON PartOfSpeech where
        toJSON PartOfSpeech'{..}
          = object
              (catMaybes
                 [("proper" .=) <$> _posProper,
                  ("tag" .=) <$> _posTag, ("person" .=) <$> _posPerson,
                  ("aspect" .=) <$> _posAspect,
                  ("case" .=) <$> _posCase,
                  ("gender" .=) <$> _posGender,
                  ("reciprocity" .=) <$> _posReciprocity,
                  ("number" .=) <$> _posNumber,
                  ("voice" .=) <$> _posVoice, ("form" .=) <$> _posForm,
                  ("tense" .=) <$> _posTense,
                  ("mood" .=) <$> _posMood])

-- | Represents a sentence in the input document.
--
-- /See:/ 'sentence' smart constructor.
data Sentence =
  Sentence'
    { _sSentiment :: !(Maybe Sentiment)
    , _sText      :: !(Maybe TextSpan)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Sentence' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSentiment'
--
-- * 'sText'
sentence
    :: Sentence
sentence = Sentence' {_sSentiment = Nothing, _sText = Nothing}


-- | For calls to AnalyzeSentiment or if
-- AnnotateTextRequest.Features.extract_document_sentiment is set to true,
-- this field will contain the sentiment for the sentence.
sSentiment :: Lens' Sentence (Maybe Sentiment)
sSentiment
  = lens _sSentiment (\ s a -> s{_sSentiment = a})

-- | The sentence text.
sText :: Lens' Sentence (Maybe TextSpan)
sText = lens _sText (\ s a -> s{_sText = a})

instance FromJSON Sentence where
        parseJSON
          = withObject "Sentence"
              (\ o ->
                 Sentence' <$> (o .:? "sentiment") <*> (o .:? "text"))

instance ToJSON Sentence where
        toJSON Sentence'{..}
          = object
              (catMaybes
                 [("sentiment" .=) <$> _sSentiment,
                  ("text" .=) <$> _sText])
