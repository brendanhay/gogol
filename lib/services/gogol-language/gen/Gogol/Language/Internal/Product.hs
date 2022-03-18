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
-- Module      : Gogol.Language.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Language.Internal.Product
  ( -- * AnalyzeEntitiesRequest
    AnalyzeEntitiesRequest (..),
    newAnalyzeEntitiesRequest,

    -- * AnalyzeEntitiesResponse
    AnalyzeEntitiesResponse (..),
    newAnalyzeEntitiesResponse,

    -- * AnalyzeEntitySentimentRequest
    AnalyzeEntitySentimentRequest (..),
    newAnalyzeEntitySentimentRequest,

    -- * AnalyzeEntitySentimentResponse
    AnalyzeEntitySentimentResponse (..),
    newAnalyzeEntitySentimentResponse,

    -- * AnalyzeSentimentRequest
    AnalyzeSentimentRequest (..),
    newAnalyzeSentimentRequest,

    -- * AnalyzeSentimentResponse
    AnalyzeSentimentResponse (..),
    newAnalyzeSentimentResponse,

    -- * AnalyzeSyntaxRequest
    AnalyzeSyntaxRequest (..),
    newAnalyzeSyntaxRequest,

    -- * AnalyzeSyntaxResponse
    AnalyzeSyntaxResponse (..),
    newAnalyzeSyntaxResponse,

    -- * AnnotateTextRequest
    AnnotateTextRequest (..),
    newAnnotateTextRequest,

    -- * AnnotateTextResponse
    AnnotateTextResponse (..),
    newAnnotateTextResponse,

    -- * ClassificationCategory
    ClassificationCategory (..),
    newClassificationCategory,

    -- * ClassifyTextRequest
    ClassifyTextRequest (..),
    newClassifyTextRequest,

    -- * ClassifyTextResponse
    ClassifyTextResponse (..),
    newClassifyTextResponse,

    -- * DependencyEdge
    DependencyEdge (..),
    newDependencyEdge,

    -- * Document
    Document (..),
    newDocument,

    -- * Entity
    Entity (..),
    newEntity,

    -- * Entity_Metadata
    Entity_Metadata (..),
    newEntity_Metadata,

    -- * EntityMention
    EntityMention (..),
    newEntityMention,

    -- * Features
    Features (..),
    newFeatures,

    -- * PartOfSpeech
    PartOfSpeech (..),
    newPartOfSpeech,

    -- * Sentence
    Sentence (..),
    newSentence,

    -- * Sentiment
    Sentiment (..),
    newSentiment,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TextSpan
    TextSpan (..),
    newTextSpan,

    -- * Token
    Token (..),
    newToken,
  )
where

import Gogol.Language.Internal.Sum
import qualified Gogol.Prelude as Core

-- | The entity analysis request message.
--
-- /See:/ 'newAnalyzeEntitiesRequest' smart constructor.
data AnalyzeEntitiesRequest = AnalyzeEntitiesRequest
  { -- | Required. Input document.
    document :: (Core.Maybe Document),
    -- | The encoding type used by the API to calculate offsets.
    encodingType :: (Core.Maybe AnalyzeEntitiesRequest_EncodingType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeEntitiesRequest' with the minimum fields required to make a request.
newAnalyzeEntitiesRequest ::
  AnalyzeEntitiesRequest
newAnalyzeEntitiesRequest =
  AnalyzeEntitiesRequest {document = Core.Nothing, encodingType = Core.Nothing}

instance Core.FromJSON AnalyzeEntitiesRequest where
  parseJSON =
    Core.withObject
      "AnalyzeEntitiesRequest"
      ( \o ->
          AnalyzeEntitiesRequest
            Core.<$> (o Core..:? "document")
            Core.<*> (o Core..:? "encodingType")
      )

instance Core.ToJSON AnalyzeEntitiesRequest where
  toJSON AnalyzeEntitiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("document" Core..=) Core.<$> document,
            ("encodingType" Core..=) Core.<$> encodingType
          ]
      )

-- | The entity analysis response message.
--
-- /See:/ 'newAnalyzeEntitiesResponse' smart constructor.
data AnalyzeEntitiesResponse = AnalyzeEntitiesResponse
  { -- | The recognized entities in the input document.
    entities :: (Core.Maybe [Entity]),
    -- | The language of the text, which will be the same as the language specified in the request or, if not specified, the automatically-detected language. See Document.language field for more details.
    language :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeEntitiesResponse' with the minimum fields required to make a request.
newAnalyzeEntitiesResponse ::
  AnalyzeEntitiesResponse
newAnalyzeEntitiesResponse =
  AnalyzeEntitiesResponse {entities = Core.Nothing, language = Core.Nothing}

instance Core.FromJSON AnalyzeEntitiesResponse where
  parseJSON =
    Core.withObject
      "AnalyzeEntitiesResponse"
      ( \o ->
          AnalyzeEntitiesResponse
            Core.<$> (o Core..:? "entities" Core..!= Core.mempty)
            Core.<*> (o Core..:? "language")
      )

instance Core.ToJSON AnalyzeEntitiesResponse where
  toJSON AnalyzeEntitiesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entities" Core..=) Core.<$> entities,
            ("language" Core..=) Core.<$> language
          ]
      )

-- | The entity-level sentiment analysis request message.
--
-- /See:/ 'newAnalyzeEntitySentimentRequest' smart constructor.
data AnalyzeEntitySentimentRequest = AnalyzeEntitySentimentRequest
  { -- | Required. Input document.
    document :: (Core.Maybe Document),
    -- | The encoding type used by the API to calculate offsets.
    encodingType :: (Core.Maybe AnalyzeEntitySentimentRequest_EncodingType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeEntitySentimentRequest' with the minimum fields required to make a request.
newAnalyzeEntitySentimentRequest ::
  AnalyzeEntitySentimentRequest
newAnalyzeEntitySentimentRequest =
  AnalyzeEntitySentimentRequest
    { document = Core.Nothing,
      encodingType = Core.Nothing
    }

instance Core.FromJSON AnalyzeEntitySentimentRequest where
  parseJSON =
    Core.withObject
      "AnalyzeEntitySentimentRequest"
      ( \o ->
          AnalyzeEntitySentimentRequest
            Core.<$> (o Core..:? "document")
            Core.<*> (o Core..:? "encodingType")
      )

instance Core.ToJSON AnalyzeEntitySentimentRequest where
  toJSON AnalyzeEntitySentimentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("document" Core..=) Core.<$> document,
            ("encodingType" Core..=) Core.<$> encodingType
          ]
      )

-- | The entity-level sentiment analysis response message.
--
-- /See:/ 'newAnalyzeEntitySentimentResponse' smart constructor.
data AnalyzeEntitySentimentResponse = AnalyzeEntitySentimentResponse
  { -- | The recognized entities in the input document with associated sentiments.
    entities :: (Core.Maybe [Entity]),
    -- | The language of the text, which will be the same as the language specified in the request or, if not specified, the automatically-detected language. See Document.language field for more details.
    language :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeEntitySentimentResponse' with the minimum fields required to make a request.
newAnalyzeEntitySentimentResponse ::
  AnalyzeEntitySentimentResponse
newAnalyzeEntitySentimentResponse =
  AnalyzeEntitySentimentResponse
    { entities = Core.Nothing,
      language = Core.Nothing
    }

instance Core.FromJSON AnalyzeEntitySentimentResponse where
  parseJSON =
    Core.withObject
      "AnalyzeEntitySentimentResponse"
      ( \o ->
          AnalyzeEntitySentimentResponse
            Core.<$> (o Core..:? "entities" Core..!= Core.mempty)
            Core.<*> (o Core..:? "language")
      )

instance Core.ToJSON AnalyzeEntitySentimentResponse where
  toJSON AnalyzeEntitySentimentResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entities" Core..=) Core.<$> entities,
            ("language" Core..=) Core.<$> language
          ]
      )

-- | The sentiment analysis request message.
--
-- /See:/ 'newAnalyzeSentimentRequest' smart constructor.
data AnalyzeSentimentRequest = AnalyzeSentimentRequest
  { -- | Required. Input document.
    document :: (Core.Maybe Document),
    -- | The encoding type used by the API to calculate sentence offsets.
    encodingType :: (Core.Maybe AnalyzeSentimentRequest_EncodingType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeSentimentRequest' with the minimum fields required to make a request.
newAnalyzeSentimentRequest ::
  AnalyzeSentimentRequest
newAnalyzeSentimentRequest =
  AnalyzeSentimentRequest {document = Core.Nothing, encodingType = Core.Nothing}

instance Core.FromJSON AnalyzeSentimentRequest where
  parseJSON =
    Core.withObject
      "AnalyzeSentimentRequest"
      ( \o ->
          AnalyzeSentimentRequest
            Core.<$> (o Core..:? "document")
            Core.<*> (o Core..:? "encodingType")
      )

instance Core.ToJSON AnalyzeSentimentRequest where
  toJSON AnalyzeSentimentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("document" Core..=) Core.<$> document,
            ("encodingType" Core..=) Core.<$> encodingType
          ]
      )

-- | The sentiment analysis response message.
--
-- /See:/ 'newAnalyzeSentimentResponse' smart constructor.
data AnalyzeSentimentResponse = AnalyzeSentimentResponse
  { -- | The overall sentiment of the input document.
    documentSentiment :: (Core.Maybe Sentiment),
    -- | The language of the text, which will be the same as the language specified in the request or, if not specified, the automatically-detected language. See Document.language field for more details.
    language :: (Core.Maybe Core.Text),
    -- | The sentiment for all the sentences in the document.
    sentences :: (Core.Maybe [Sentence])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeSentimentResponse' with the minimum fields required to make a request.
newAnalyzeSentimentResponse ::
  AnalyzeSentimentResponse
newAnalyzeSentimentResponse =
  AnalyzeSentimentResponse
    { documentSentiment = Core.Nothing,
      language = Core.Nothing,
      sentences = Core.Nothing
    }

instance Core.FromJSON AnalyzeSentimentResponse where
  parseJSON =
    Core.withObject
      "AnalyzeSentimentResponse"
      ( \o ->
          AnalyzeSentimentResponse
            Core.<$> (o Core..:? "documentSentiment")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "sentences" Core..!= Core.mempty)
      )

instance Core.ToJSON AnalyzeSentimentResponse where
  toJSON AnalyzeSentimentResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("documentSentiment" Core..=)
              Core.<$> documentSentiment,
            ("language" Core..=) Core.<$> language,
            ("sentences" Core..=) Core.<$> sentences
          ]
      )

-- | The syntax analysis request message.
--
-- /See:/ 'newAnalyzeSyntaxRequest' smart constructor.
data AnalyzeSyntaxRequest = AnalyzeSyntaxRequest
  { -- | Required. Input document.
    document :: (Core.Maybe Document),
    -- | The encoding type used by the API to calculate offsets.
    encodingType :: (Core.Maybe AnalyzeSyntaxRequest_EncodingType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeSyntaxRequest' with the minimum fields required to make a request.
newAnalyzeSyntaxRequest ::
  AnalyzeSyntaxRequest
newAnalyzeSyntaxRequest =
  AnalyzeSyntaxRequest {document = Core.Nothing, encodingType = Core.Nothing}

instance Core.FromJSON AnalyzeSyntaxRequest where
  parseJSON =
    Core.withObject
      "AnalyzeSyntaxRequest"
      ( \o ->
          AnalyzeSyntaxRequest
            Core.<$> (o Core..:? "document")
            Core.<*> (o Core..:? "encodingType")
      )

instance Core.ToJSON AnalyzeSyntaxRequest where
  toJSON AnalyzeSyntaxRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("document" Core..=) Core.<$> document,
            ("encodingType" Core..=) Core.<$> encodingType
          ]
      )

-- | The syntax analysis response message.
--
-- /See:/ 'newAnalyzeSyntaxResponse' smart constructor.
data AnalyzeSyntaxResponse = AnalyzeSyntaxResponse
  { -- | The language of the text, which will be the same as the language specified in the request or, if not specified, the automatically-detected language. See Document.language field for more details.
    language :: (Core.Maybe Core.Text),
    -- | Sentences in the input document.
    sentences :: (Core.Maybe [Sentence]),
    -- | Tokens, along with their syntactic information, in the input document.
    tokens :: (Core.Maybe [Token])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeSyntaxResponse' with the minimum fields required to make a request.
newAnalyzeSyntaxResponse ::
  AnalyzeSyntaxResponse
newAnalyzeSyntaxResponse =
  AnalyzeSyntaxResponse
    { language = Core.Nothing,
      sentences = Core.Nothing,
      tokens = Core.Nothing
    }

instance Core.FromJSON AnalyzeSyntaxResponse where
  parseJSON =
    Core.withObject
      "AnalyzeSyntaxResponse"
      ( \o ->
          AnalyzeSyntaxResponse
            Core.<$> (o Core..:? "language")
            Core.<*> (o Core..:? "sentences" Core..!= Core.mempty)
            Core.<*> (o Core..:? "tokens" Core..!= Core.mempty)
      )

instance Core.ToJSON AnalyzeSyntaxResponse where
  toJSON AnalyzeSyntaxResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("language" Core..=) Core.<$> language,
            ("sentences" Core..=) Core.<$> sentences,
            ("tokens" Core..=) Core.<$> tokens
          ]
      )

-- | The request message for the text annotation API, which can perform multiple analysis types (sentiment, entities, and syntax) in one call.
--
-- /See:/ 'newAnnotateTextRequest' smart constructor.
data AnnotateTextRequest = AnnotateTextRequest
  { -- | Required. Input document.
    document :: (Core.Maybe Document),
    -- | The encoding type used by the API to calculate offsets.
    encodingType :: (Core.Maybe AnnotateTextRequest_EncodingType),
    -- | Required. The enabled features.
    features :: (Core.Maybe Features)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnnotateTextRequest' with the minimum fields required to make a request.
newAnnotateTextRequest ::
  AnnotateTextRequest
newAnnotateTextRequest =
  AnnotateTextRequest
    { document = Core.Nothing,
      encodingType = Core.Nothing,
      features = Core.Nothing
    }

instance Core.FromJSON AnnotateTextRequest where
  parseJSON =
    Core.withObject
      "AnnotateTextRequest"
      ( \o ->
          AnnotateTextRequest
            Core.<$> (o Core..:? "document")
            Core.<*> (o Core..:? "encodingType")
            Core.<*> (o Core..:? "features")
      )

instance Core.ToJSON AnnotateTextRequest where
  toJSON AnnotateTextRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("document" Core..=) Core.<$> document,
            ("encodingType" Core..=) Core.<$> encodingType,
            ("features" Core..=) Core.<$> features
          ]
      )

-- | The text annotations response message.
--
-- /See:/ 'newAnnotateTextResponse' smart constructor.
data AnnotateTextResponse = AnnotateTextResponse
  { -- | Categories identified in the input document.
    categories :: (Core.Maybe [ClassificationCategory]),
    -- | The overall sentiment for the document. Populated if the user enables AnnotateTextRequest.Features.extract/document/sentiment.
    documentSentiment :: (Core.Maybe Sentiment),
    -- | Entities, along with their semantic information, in the input document. Populated if the user enables AnnotateTextRequest.Features.extract_entities.
    entities :: (Core.Maybe [Entity]),
    -- | The language of the text, which will be the same as the language specified in the request or, if not specified, the automatically-detected language. See Document.language field for more details.
    language :: (Core.Maybe Core.Text),
    -- | Sentences in the input document. Populated if the user enables AnnotateTextRequest.Features.extract_syntax.
    sentences :: (Core.Maybe [Sentence]),
    -- | Tokens, along with their syntactic information, in the input document. Populated if the user enables AnnotateTextRequest.Features.extract_syntax.
    tokens :: (Core.Maybe [Token])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnnotateTextResponse' with the minimum fields required to make a request.
newAnnotateTextResponse ::
  AnnotateTextResponse
newAnnotateTextResponse =
  AnnotateTextResponse
    { categories = Core.Nothing,
      documentSentiment = Core.Nothing,
      entities = Core.Nothing,
      language = Core.Nothing,
      sentences = Core.Nothing,
      tokens = Core.Nothing
    }

instance Core.FromJSON AnnotateTextResponse where
  parseJSON =
    Core.withObject
      "AnnotateTextResponse"
      ( \o ->
          AnnotateTextResponse
            Core.<$> (o Core..:? "categories" Core..!= Core.mempty)
            Core.<*> (o Core..:? "documentSentiment")
            Core.<*> (o Core..:? "entities" Core..!= Core.mempty)
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "sentences" Core..!= Core.mempty)
            Core.<*> (o Core..:? "tokens" Core..!= Core.mempty)
      )

instance Core.ToJSON AnnotateTextResponse where
  toJSON AnnotateTextResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("categories" Core..=) Core.<$> categories,
            ("documentSentiment" Core..=)
              Core.<$> documentSentiment,
            ("entities" Core..=) Core.<$> entities,
            ("language" Core..=) Core.<$> language,
            ("sentences" Core..=) Core.<$> sentences,
            ("tokens" Core..=) Core.<$> tokens
          ]
      )

-- | Represents a category returned from the text classifier.
--
-- /See:/ 'newClassificationCategory' smart constructor.
data ClassificationCategory = ClassificationCategory
  { -- | The classifier\'s confidence of the category. Number represents how certain the classifier is that this category represents the given text.
    confidence :: (Core.Maybe Core.Double),
    -- | The name of the category representing the document, from the <https://cloud.google.com/natural-language/docs/categories predefined taxonomy>.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassificationCategory' with the minimum fields required to make a request.
newClassificationCategory ::
  ClassificationCategory
newClassificationCategory =
  ClassificationCategory {confidence = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON ClassificationCategory where
  parseJSON =
    Core.withObject
      "ClassificationCategory"
      ( \o ->
          ClassificationCategory
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON ClassificationCategory where
  toJSON ClassificationCategory {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidence" Core..=) Core.<$> confidence,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | The document classification request message.
--
-- /See:/ 'newClassifyTextRequest' smart constructor.
newtype ClassifyTextRequest = ClassifyTextRequest
  { -- | Required. Input document.
    document :: (Core.Maybe Document)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassifyTextRequest' with the minimum fields required to make a request.
newClassifyTextRequest ::
  ClassifyTextRequest
newClassifyTextRequest = ClassifyTextRequest {document = Core.Nothing}

instance Core.FromJSON ClassifyTextRequest where
  parseJSON =
    Core.withObject
      "ClassifyTextRequest"
      ( \o ->
          ClassifyTextRequest Core.<$> (o Core..:? "document")
      )

instance Core.ToJSON ClassifyTextRequest where
  toJSON ClassifyTextRequest {..} =
    Core.object
      ( Core.catMaybes
          [("document" Core..=) Core.<$> document]
      )

-- | The document classification response message.
--
-- /See:/ 'newClassifyTextResponse' smart constructor.
newtype ClassifyTextResponse = ClassifyTextResponse
  { -- | Categories representing the input document.
    categories :: (Core.Maybe [ClassificationCategory])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassifyTextResponse' with the minimum fields required to make a request.
newClassifyTextResponse ::
  ClassifyTextResponse
newClassifyTextResponse = ClassifyTextResponse {categories = Core.Nothing}

instance Core.FromJSON ClassifyTextResponse where
  parseJSON =
    Core.withObject
      "ClassifyTextResponse"
      ( \o ->
          ClassifyTextResponse
            Core.<$> (o Core..:? "categories" Core..!= Core.mempty)
      )

instance Core.ToJSON ClassifyTextResponse where
  toJSON ClassifyTextResponse {..} =
    Core.object
      ( Core.catMaybes
          [("categories" Core..=) Core.<$> categories]
      )

-- | Represents dependency parse tree information for a token. (For more information on dependency labels, see http:\/\/www.aclweb.org\/anthology\/P13-2017
--
-- /See:/ 'newDependencyEdge' smart constructor.
data DependencyEdge = DependencyEdge
  { -- | Represents the head of this token in the dependency tree. This is the index of the token which has an arc going to this token. The index is the position of the token in the array of tokens returned by the API method. If this token is a root token, then the @head_token_index@ is its own index.
    headTokenIndex :: (Core.Maybe Core.Int32),
    -- | The parse label for the token.
    label :: (Core.Maybe DependencyEdge_Label)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DependencyEdge' with the minimum fields required to make a request.
newDependencyEdge ::
  DependencyEdge
newDependencyEdge =
  DependencyEdge {headTokenIndex = Core.Nothing, label = Core.Nothing}

instance Core.FromJSON DependencyEdge where
  parseJSON =
    Core.withObject
      "DependencyEdge"
      ( \o ->
          DependencyEdge
            Core.<$> (o Core..:? "headTokenIndex")
            Core.<*> (o Core..:? "label")
      )

instance Core.ToJSON DependencyEdge where
  toJSON DependencyEdge {..} =
    Core.object
      ( Core.catMaybes
          [ ("headTokenIndex" Core..=) Core.<$> headTokenIndex,
            ("label" Core..=) Core.<$> label
          ]
      )

-- | ================================================================ # Represents the input to API methods.
--
-- /See:/ 'newDocument' smart constructor.
data Document = Document
  { -- | The content of the input in string format. Cloud audit logging exempt since it is based on user data.
    content :: (Core.Maybe Core.Text),
    -- | The Google Cloud Storage URI where the file content is located. This URI must be of the form: gs:\/\/bucket/name\/object/name. For more details, see https:\/\/cloud.google.com\/storage\/docs\/reference-uris. NOTE: Cloud Storage object versioning is not supported.
    gcsContentUri :: (Core.Maybe Core.Text),
    -- | The language of the document (if not specified, the language is automatically detected). Both ISO and BCP-47 language codes are accepted. <https://cloud.google.com/natural-language/docs/languages Language Support> lists currently supported languages for each API method. If the language (either specified by the caller or automatically detected) is not supported by the called API method, an @INVALID_ARGUMENT@ error is returned.
    language :: (Core.Maybe Core.Text),
    -- | Required. If the type is not set or is @TYPE_UNSPECIFIED@, returns an @INVALID_ARGUMENT@ error.
    type' :: (Core.Maybe Document_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Document' with the minimum fields required to make a request.
newDocument ::
  Document
newDocument =
  Document
    { content = Core.Nothing,
      gcsContentUri = Core.Nothing,
      language = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Document where
  parseJSON =
    Core.withObject
      "Document"
      ( \o ->
          Document
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "gcsContentUri")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Document where
  toJSON Document {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("gcsContentUri" Core..=) Core.<$> gcsContentUri,
            ("language" Core..=) Core.<$> language,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Represents a phrase in the text that is a known entity, such as a person, an organization, or location. The API associates information, such as salience and mentions, with entities.
--
-- /See:/ 'newEntity' smart constructor.
data Entity = Entity
  { -- | The mentions of this entity in the input document. The API currently supports proper noun mentions.
    mentions :: (Core.Maybe [EntityMention]),
    -- | Metadata associated with the entity. For most entity types, the metadata is a Wikipedia URL (@wikipedia_url@) and Knowledge Graph MID (@mid@), if they are available. For the metadata associated with other entity types, see the Type table below.
    metadata :: (Core.Maybe Entity_Metadata),
    -- | The representative name for the entity.
    name :: (Core.Maybe Core.Text),
    -- | The salience score associated with the entity in the [0, 1.0] range. The salience score for an entity provides information about the importance or centrality of that entity to the entire document text. Scores closer to 0 are less salient, while scores closer to 1.0 are highly salient.
    salience :: (Core.Maybe Core.Double),
    -- | For calls to AnalyzeEntitySentiment or if AnnotateTextRequest.Features.extract/entity/sentiment is set to true, this field will contain the aggregate sentiment expressed for this entity in the provided document.
    sentiment :: (Core.Maybe Sentiment),
    -- | The entity type.
    type' :: (Core.Maybe Entity_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Entity' with the minimum fields required to make a request.
newEntity ::
  Entity
newEntity =
  Entity
    { mentions = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      salience = Core.Nothing,
      sentiment = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Entity where
  parseJSON =
    Core.withObject
      "Entity"
      ( \o ->
          Entity
            Core.<$> (o Core..:? "mentions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "salience")
            Core.<*> (o Core..:? "sentiment")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Entity where
  toJSON Entity {..} =
    Core.object
      ( Core.catMaybes
          [ ("mentions" Core..=) Core.<$> mentions,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("salience" Core..=) Core.<$> salience,
            ("sentiment" Core..=) Core.<$> sentiment,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Metadata associated with the entity. For most entity types, the metadata is a Wikipedia URL (@wikipedia_url@) and Knowledge Graph MID (@mid@), if they are available. For the metadata associated with other entity types, see the Type table below.
--
-- /See:/ 'newEntity_Metadata' smart constructor.
newtype Entity_Metadata = Entity_Metadata
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Entity_Metadata' with the minimum fields required to make a request.
newEntity_Metadata ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Entity_Metadata
newEntity_Metadata additional = Entity_Metadata {additional = additional}

instance Core.FromJSON Entity_Metadata where
  parseJSON =
    Core.withObject
      "Entity_Metadata"
      ( \o ->
          Entity_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Entity_Metadata where
  toJSON Entity_Metadata {..} = Core.toJSON additional

-- | Represents a mention for an entity in the text. Currently, proper noun mentions are supported.
--
-- /See:/ 'newEntityMention' smart constructor.
data EntityMention = EntityMention
  { -- | For calls to AnalyzeEntitySentiment or if AnnotateTextRequest.Features.extract/entity/sentiment is set to true, this field will contain the sentiment expressed for this mention of the entity in the provided document.
    sentiment :: (Core.Maybe Sentiment),
    -- | The mention text.
    text :: (Core.Maybe TextSpan),
    -- | The type of the entity mention.
    type' :: (Core.Maybe EntityMention_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityMention' with the minimum fields required to make a request.
newEntityMention ::
  EntityMention
newEntityMention =
  EntityMention
    { sentiment = Core.Nothing,
      text = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON EntityMention where
  parseJSON =
    Core.withObject
      "EntityMention"
      ( \o ->
          EntityMention
            Core.<$> (o Core..:? "sentiment")
            Core.<*> (o Core..:? "text")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON EntityMention where
  toJSON EntityMention {..} =
    Core.object
      ( Core.catMaybes
          [ ("sentiment" Core..=) Core.<$> sentiment,
            ("text" Core..=) Core.<$> text,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | All available features for sentiment, syntax, and semantic analysis. Setting each one to true will enable that specific analysis for the input.
--
-- /See:/ 'newFeatures' smart constructor.
data Features = Features
  { -- | Classify the full document into categories.
    classifyText :: (Core.Maybe Core.Bool),
    -- | Extract document-level sentiment.
    extractDocumentSentiment :: (Core.Maybe Core.Bool),
    -- | Extract entities.
    extractEntities :: (Core.Maybe Core.Bool),
    -- | Extract entities and their associated sentiment.
    extractEntitySentiment :: (Core.Maybe Core.Bool),
    -- | Extract syntax information.
    extractSyntax :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Features' with the minimum fields required to make a request.
newFeatures ::
  Features
newFeatures =
  Features
    { classifyText = Core.Nothing,
      extractDocumentSentiment = Core.Nothing,
      extractEntities = Core.Nothing,
      extractEntitySentiment = Core.Nothing,
      extractSyntax = Core.Nothing
    }

instance Core.FromJSON Features where
  parseJSON =
    Core.withObject
      "Features"
      ( \o ->
          Features
            Core.<$> (o Core..:? "classifyText")
            Core.<*> (o Core..:? "extractDocumentSentiment")
            Core.<*> (o Core..:? "extractEntities")
            Core.<*> (o Core..:? "extractEntitySentiment")
            Core.<*> (o Core..:? "extractSyntax")
      )

instance Core.ToJSON Features where
  toJSON Features {..} =
    Core.object
      ( Core.catMaybes
          [ ("classifyText" Core..=) Core.<$> classifyText,
            ("extractDocumentSentiment" Core..=)
              Core.<$> extractDocumentSentiment,
            ("extractEntities" Core..=) Core.<$> extractEntities,
            ("extractEntitySentiment" Core..=)
              Core.<$> extractEntitySentiment,
            ("extractSyntax" Core..=) Core.<$> extractSyntax
          ]
      )

-- | Represents part of speech information for a token. Parts of speech are as defined in http:\/\/www.lrec-conf.org\/proceedings\/lrec2012\/pdf\/274_Paper.pdf
--
-- /See:/ 'newPartOfSpeech' smart constructor.
data PartOfSpeech = PartOfSpeech
  { -- | The grammatical aspect.
    aspect :: (Core.Maybe PartOfSpeech_Aspect),
    -- | The grammatical case.
    case' :: (Core.Maybe PartOfSpeech_Case),
    -- | The grammatical form.
    form :: (Core.Maybe PartOfSpeech_Form),
    -- | The grammatical gender.
    gender :: (Core.Maybe PartOfSpeech_Gender),
    -- | The grammatical mood.
    mood :: (Core.Maybe PartOfSpeech_Mood),
    -- | The grammatical number.
    number :: (Core.Maybe PartOfSpeech_Number),
    -- | The grammatical person.
    person :: (Core.Maybe PartOfSpeech_Person),
    -- | The grammatical properness.
    proper :: (Core.Maybe PartOfSpeech_Proper),
    -- | The grammatical reciprocity.
    reciprocity :: (Core.Maybe PartOfSpeech_Reciprocity),
    -- | The part of speech tag.
    tag :: (Core.Maybe PartOfSpeech_Tag),
    -- | The grammatical tense.
    tense :: (Core.Maybe PartOfSpeech_Tense),
    -- | The grammatical voice.
    voice :: (Core.Maybe PartOfSpeech_Voice)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartOfSpeech' with the minimum fields required to make a request.
newPartOfSpeech ::
  PartOfSpeech
newPartOfSpeech =
  PartOfSpeech
    { aspect = Core.Nothing,
      case' = Core.Nothing,
      form = Core.Nothing,
      gender = Core.Nothing,
      mood = Core.Nothing,
      number = Core.Nothing,
      person = Core.Nothing,
      proper = Core.Nothing,
      reciprocity = Core.Nothing,
      tag = Core.Nothing,
      tense = Core.Nothing,
      voice = Core.Nothing
    }

instance Core.FromJSON PartOfSpeech where
  parseJSON =
    Core.withObject
      "PartOfSpeech"
      ( \o ->
          PartOfSpeech
            Core.<$> (o Core..:? "aspect")
            Core.<*> (o Core..:? "case")
            Core.<*> (o Core..:? "form")
            Core.<*> (o Core..:? "gender")
            Core.<*> (o Core..:? "mood")
            Core.<*> (o Core..:? "number")
            Core.<*> (o Core..:? "person")
            Core.<*> (o Core..:? "proper")
            Core.<*> (o Core..:? "reciprocity")
            Core.<*> (o Core..:? "tag")
            Core.<*> (o Core..:? "tense")
            Core.<*> (o Core..:? "voice")
      )

instance Core.ToJSON PartOfSpeech where
  toJSON PartOfSpeech {..} =
    Core.object
      ( Core.catMaybes
          [ ("aspect" Core..=) Core.<$> aspect,
            ("case" Core..=) Core.<$> case',
            ("form" Core..=) Core.<$> form,
            ("gender" Core..=) Core.<$> gender,
            ("mood" Core..=) Core.<$> mood,
            ("number" Core..=) Core.<$> number,
            ("person" Core..=) Core.<$> person,
            ("proper" Core..=) Core.<$> proper,
            ("reciprocity" Core..=) Core.<$> reciprocity,
            ("tag" Core..=) Core.<$> tag,
            ("tense" Core..=) Core.<$> tense,
            ("voice" Core..=) Core.<$> voice
          ]
      )

-- | Represents a sentence in the input document.
--
-- /See:/ 'newSentence' smart constructor.
data Sentence = Sentence
  { -- | For calls to AnalyzeSentiment or if AnnotateTextRequest.Features.extract/document/sentiment is set to true, this field will contain the sentiment for the sentence.
    sentiment :: (Core.Maybe Sentiment),
    -- | The sentence text.
    text :: (Core.Maybe TextSpan)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Sentence' with the minimum fields required to make a request.
newSentence ::
  Sentence
newSentence = Sentence {sentiment = Core.Nothing, text = Core.Nothing}

instance Core.FromJSON Sentence where
  parseJSON =
    Core.withObject
      "Sentence"
      ( \o ->
          Sentence
            Core.<$> (o Core..:? "sentiment")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON Sentence where
  toJSON Sentence {..} =
    Core.object
      ( Core.catMaybes
          [ ("sentiment" Core..=) Core.<$> sentiment,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | Represents the feeling associated with the entire text or entities in the text.
--
-- /See:/ 'newSentiment' smart constructor.
data Sentiment = Sentiment
  { -- | A non-negative number in the [0, +inf) range, which represents the absolute magnitude of sentiment regardless of score (positive or negative).
    magnitude :: (Core.Maybe Core.Double),
    -- | Sentiment score between -1.0 (negative sentiment) and 1.0 (positive sentiment).
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Sentiment' with the minimum fields required to make a request.
newSentiment ::
  Sentiment
newSentiment = Sentiment {magnitude = Core.Nothing, score = Core.Nothing}

instance Core.FromJSON Sentiment where
  parseJSON =
    Core.withObject
      "Sentiment"
      ( \o ->
          Sentiment
            Core.<$> (o Core..:? "magnitude")
            Core.<*> (o Core..:? "score")
      )

instance Core.ToJSON Sentiment where
  toJSON Sentiment {..} =
    Core.object
      ( Core.catMaybes
          [ ("magnitude" Core..=) Core.<$> magnitude,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | Represents an output piece of text.
--
-- /See:/ 'newTextSpan' smart constructor.
data TextSpan = TextSpan
  { -- | The API calculates the beginning offset of the content in the original document according to the EncodingType specified in the API request.
    beginOffset :: (Core.Maybe Core.Int32),
    -- | The content of the output text.
    content :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextSpan' with the minimum fields required to make a request.
newTextSpan ::
  TextSpan
newTextSpan = TextSpan {beginOffset = Core.Nothing, content = Core.Nothing}

instance Core.FromJSON TextSpan where
  parseJSON =
    Core.withObject
      "TextSpan"
      ( \o ->
          TextSpan
            Core.<$> (o Core..:? "beginOffset")
            Core.<*> (o Core..:? "content")
      )

instance Core.ToJSON TextSpan where
  toJSON TextSpan {..} =
    Core.object
      ( Core.catMaybes
          [ ("beginOffset" Core..=) Core.<$> beginOffset,
            ("content" Core..=) Core.<$> content
          ]
      )

-- | Represents the smallest syntactic building block of the text.
--
-- /See:/ 'newToken' smart constructor.
data Token = Token
  { -- | Dependency tree parse for this token.
    dependencyEdge :: (Core.Maybe DependencyEdge),
    -- | <https://en.wikipedia.org/wiki/Lemma_%28morphology%29 Lemma> of the token.
    lemma :: (Core.Maybe Core.Text),
    -- | Parts of speech tag for this token.
    partOfSpeech :: (Core.Maybe PartOfSpeech),
    -- | The token text.
    text :: (Core.Maybe TextSpan)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Token' with the minimum fields required to make a request.
newToken ::
  Token
newToken =
  Token
    { dependencyEdge = Core.Nothing,
      lemma = Core.Nothing,
      partOfSpeech = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON Token where
  parseJSON =
    Core.withObject
      "Token"
      ( \o ->
          Token
            Core.<$> (o Core..:? "dependencyEdge")
            Core.<*> (o Core..:? "lemma")
            Core.<*> (o Core..:? "partOfSpeech")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON Token where
  toJSON Token {..} =
    Core.object
      ( Core.catMaybes
          [ ("dependencyEdge" Core..=) Core.<$> dependencyEdge,
            ("lemma" Core..=) Core.<$> lemma,
            ("partOfSpeech" Core..=) Core.<$> partOfSpeech,
            ("text" Core..=) Core.<$> text
          ]
      )
