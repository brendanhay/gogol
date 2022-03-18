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
-- Module      : Gogol.Translate.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Translate.Internal.Product
  ( -- * BatchDocumentInputConfig
    BatchDocumentInputConfig (..),
    newBatchDocumentInputConfig,

    -- * BatchDocumentOutputConfig
    BatchDocumentOutputConfig (..),
    newBatchDocumentOutputConfig,

    -- * BatchTranslateDocumentRequest
    BatchTranslateDocumentRequest (..),
    newBatchTranslateDocumentRequest,

    -- * BatchTranslateDocumentRequest_FormatConversions
    BatchTranslateDocumentRequest_FormatConversions (..),
    newBatchTranslateDocumentRequest_FormatConversions,

    -- * BatchTranslateDocumentRequest_Glossaries
    BatchTranslateDocumentRequest_Glossaries (..),
    newBatchTranslateDocumentRequest_Glossaries,

    -- * BatchTranslateDocumentRequest_Models
    BatchTranslateDocumentRequest_Models (..),
    newBatchTranslateDocumentRequest_Models,

    -- * BatchTranslateTextRequest
    BatchTranslateTextRequest (..),
    newBatchTranslateTextRequest,

    -- * BatchTranslateTextRequest_Glossaries
    BatchTranslateTextRequest_Glossaries (..),
    newBatchTranslateTextRequest_Glossaries,

    -- * BatchTranslateTextRequest_Labels
    BatchTranslateTextRequest_Labels (..),
    newBatchTranslateTextRequest_Labels,

    -- * BatchTranslateTextRequest_Models
    BatchTranslateTextRequest_Models (..),
    newBatchTranslateTextRequest_Models,

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- * DetectLanguageRequest
    DetectLanguageRequest (..),
    newDetectLanguageRequest,

    -- * DetectLanguageRequest_Labels
    DetectLanguageRequest_Labels (..),
    newDetectLanguageRequest_Labels,

    -- * DetectLanguageResponse
    DetectLanguageResponse (..),
    newDetectLanguageResponse,

    -- * DetectedLanguage
    DetectedLanguage (..),
    newDetectedLanguage,

    -- * DocumentInputConfig
    DocumentInputConfig (..),
    newDocumentInputConfig,

    -- * DocumentOutputConfig
    DocumentOutputConfig (..),
    newDocumentOutputConfig,

    -- * DocumentTranslation
    DocumentTranslation (..),
    newDocumentTranslation,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * GcsDestination
    GcsDestination (..),
    newGcsDestination,

    -- * GcsSource
    GcsSource (..),
    newGcsSource,

    -- * Glossary
    Glossary (..),
    newGlossary,

    -- * GlossaryInputConfig
    GlossaryInputConfig (..),
    newGlossaryInputConfig,

    -- * InputConfig
    InputConfig (..),
    newInputConfig,

    -- * LanguageCodePair
    LanguageCodePair (..),
    newLanguageCodePair,

    -- * LanguageCodesSet
    LanguageCodesSet (..),
    newLanguageCodesSet,

    -- * ListGlossariesResponse
    ListGlossariesResponse (..),
    newListGlossariesResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OutputConfig
    OutputConfig (..),
    newOutputConfig,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * SupportedLanguage
    SupportedLanguage (..),
    newSupportedLanguage,

    -- * SupportedLanguages
    SupportedLanguages (..),
    newSupportedLanguages,

    -- * TranslateDocumentRequest
    TranslateDocumentRequest (..),
    newTranslateDocumentRequest,

    -- * TranslateDocumentRequest_Labels
    TranslateDocumentRequest_Labels (..),
    newTranslateDocumentRequest_Labels,

    -- * TranslateDocumentResponse
    TranslateDocumentResponse (..),
    newTranslateDocumentResponse,

    -- * TranslateTextGlossaryConfig
    TranslateTextGlossaryConfig (..),
    newTranslateTextGlossaryConfig,

    -- * TranslateTextRequest
    TranslateTextRequest (..),
    newTranslateTextRequest,

    -- * TranslateTextRequest_Labels
    TranslateTextRequest_Labels (..),
    newTranslateTextRequest_Labels,

    -- * TranslateTextResponse
    TranslateTextResponse (..),
    newTranslateTextResponse,

    -- * Translation
    Translation (..),
    newTranslation,

    -- * WaitOperationRequest
    WaitOperationRequest (..),
    newWaitOperationRequest,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Translate.Internal.Sum

-- | Input configuration for BatchTranslateDocument request.
--
-- /See:/ 'newBatchDocumentInputConfig' smart constructor.
newtype BatchDocumentInputConfig = BatchDocumentInputConfig
  { -- | Google Cloud Storage location for the source input. This can be a single file (for example, @gs:\/\/translation-test\/input.docx@) or a wildcard (for example, @gs:\/\/translation-test\/*@). File mime type is determined based on extension. Supported mime type includes: - @pdf@, application\/pdf - @docx@, application\/vnd.openxmlformats-officedocument.wordprocessingml.document - @pptx@, application\/vnd.openxmlformats-officedocument.presentationml.presentation - @xlsx@, application\/vnd.openxmlformats-officedocument.spreadsheetml.sheet The max file size to support for @.docx@, @.pptx@ and @.xlsx@ is 100MB. The max file size to support for @.pdf@ is 1GB and the max page limit is 1000 pages. The max file size to support for all input documents is 1GB.
    gcsSource :: (Core.Maybe GcsSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchDocumentInputConfig' with the minimum fields required to make a request.
newBatchDocumentInputConfig ::
  BatchDocumentInputConfig
newBatchDocumentInputConfig =
  BatchDocumentInputConfig {gcsSource = Core.Nothing}

instance Core.FromJSON BatchDocumentInputConfig where
  parseJSON =
    Core.withObject
      "BatchDocumentInputConfig"
      ( \o ->
          BatchDocumentInputConfig
            Core.<$> (o Core..:? "gcsSource")
      )

instance Core.ToJSON BatchDocumentInputConfig where
  toJSON BatchDocumentInputConfig {..} =
    Core.object
      ( Core.catMaybes
          [("gcsSource" Core..=) Core.<$> gcsSource]
      )

-- | Output configuration for BatchTranslateDocument request.
--
-- /See:/ 'newBatchDocumentOutputConfig' smart constructor.
newtype BatchDocumentOutputConfig = BatchDocumentOutputConfig
  { -- | Google Cloud Storage destination for output content. For every single input document (for example, gs:\/\/a\/b\/c.[extension]), we generate at most 2 * n output files. (n is the # of target/language/codes in the BatchTranslateDocumentRequest). While the input documents are being processed, we write\/update an index file @index.csv@ under @gcs_destination.output_uri_prefix@ (for example, gs:\/\/translation/output\/index.csv) The index file is generated\/updated as new files are being translated. The format is: input/document,target/language/code,translation/output,error/output, glossary/translation/output,glossary/error/output @input_document@ is one file we matched using gcs/source.input/uri. @target_language_code@ is provided in the request. @translation_output@ contains the translations. (details provided below) @error_output@ contains the error message during processing of the file. Both translations/file and errors/file could be empty strings if we have no content to output. @glossary_translation_output@
    -- and @glossary_error_output@ are the translated output\/error when we apply glossaries. They could also be empty if we have no content to output. Once a row is present in index.csv, the input\/output matching never changes. Callers should also expect all the content in input/file are processed and ready to be consumed (that is, no partial output file is written). Since index.csv will be keeping updated during the process, please make sure there is no custom retention policy applied on the output bucket that may avoid file updating. (https:\/\/cloud.google.com\/storage\/docs\/bucket-lock?hl=en#retention-policy) The naming format of translation output files follows (for target language code [trg]): @translation_output@: gs:\/\/translation/output\/a/b/c/[trg]/translation.[extension] @glossary_translation_output@: gs:\/\/translation/test\/a/b/c/[trg]/glossary/translation.[extension] The output document will maintain the same file format as the input document. The naming format of error output files follows (for
    -- target language code [trg]): @error_output@: gs:\/\/translation/test\/a/b/c/[trg]/errors.txt @glossary_error_output@: gs:\/\/translation/test\/a/b/c/[trg]/glossary_translation.txt The error output is a txt file containing error details.
    gcsDestination :: (Core.Maybe GcsDestination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchDocumentOutputConfig' with the minimum fields required to make a request.
newBatchDocumentOutputConfig ::
  BatchDocumentOutputConfig
newBatchDocumentOutputConfig =
  BatchDocumentOutputConfig {gcsDestination = Core.Nothing}

instance Core.FromJSON BatchDocumentOutputConfig where
  parseJSON =
    Core.withObject
      "BatchDocumentOutputConfig"
      ( \o ->
          BatchDocumentOutputConfig
            Core.<$> (o Core..:? "gcsDestination")
      )

instance Core.ToJSON BatchDocumentOutputConfig where
  toJSON BatchDocumentOutputConfig {..} =
    Core.object
      ( Core.catMaybes
          [("gcsDestination" Core..=) Core.<$> gcsDestination]
      )

-- | The BatchTranslateDocument request.
--
-- /See:/ 'newBatchTranslateDocumentRequest' smart constructor.
data BatchTranslateDocumentRequest = BatchTranslateDocumentRequest
  { -- | Optional.
    formatConversions :: (Core.Maybe BatchTranslateDocumentRequest_FormatConversions),
    -- | Optional. Glossaries to be applied. It\'s keyed by target language code.
    glossaries :: (Core.Maybe BatchTranslateDocumentRequest_Glossaries),
    -- | Required. Input configurations. The total number of files matched should be \<= 100. The total content size to translate should be \<= 100M Unicode codepoints. The files must use UTF-8 encoding.
    inputConfigs :: (Core.Maybe [BatchDocumentInputConfig]),
    -- | Optional. The models to use for translation. Map\'s key is target language code. Map\'s value is the model name. Value can be a built-in general model, or an AutoML Translation model. The value format depends on model type: - AutoML Translation models: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/{model-id}@ - General (built-in) models: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/general\/nmt@, If the map is empty or a specific model is not requested for a language pair, then default google model (nmt) is used.
    models :: (Core.Maybe BatchTranslateDocumentRequest_Models),
    -- | Required. Output configuration. If 2 input configs match to the same file (that is, same input path), we don\'t generate output for duplicate inputs.
    outputConfig :: (Core.Maybe BatchDocumentOutputConfig),
    -- | Required. The BCP-47 language code of the input document if known, for example, \"en-US\" or \"sr-Latn\". Supported language codes are listed in Language Support (https:\/\/cloud.google.com\/translate\/docs\/languages).
    sourceLanguageCode :: (Core.Maybe Core.Text),
    -- | Required. The BCP-47 language code to use for translation of the input document. Specify up to 10 language codes here.
    targetLanguageCodes :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchTranslateDocumentRequest' with the minimum fields required to make a request.
newBatchTranslateDocumentRequest ::
  BatchTranslateDocumentRequest
newBatchTranslateDocumentRequest =
  BatchTranslateDocumentRequest
    { formatConversions = Core.Nothing,
      glossaries = Core.Nothing,
      inputConfigs = Core.Nothing,
      models = Core.Nothing,
      outputConfig = Core.Nothing,
      sourceLanguageCode = Core.Nothing,
      targetLanguageCodes = Core.Nothing
    }

instance Core.FromJSON BatchTranslateDocumentRequest where
  parseJSON =
    Core.withObject
      "BatchTranslateDocumentRequest"
      ( \o ->
          BatchTranslateDocumentRequest
            Core.<$> (o Core..:? "formatConversions")
            Core.<*> (o Core..:? "glossaries")
            Core.<*> (o Core..:? "inputConfigs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "models")
            Core.<*> (o Core..:? "outputConfig")
            Core.<*> (o Core..:? "sourceLanguageCode")
            Core.<*> ( o Core..:? "targetLanguageCodes"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON BatchTranslateDocumentRequest where
  toJSON BatchTranslateDocumentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("formatConversions" Core..=)
              Core.<$> formatConversions,
            ("glossaries" Core..=) Core.<$> glossaries,
            ("inputConfigs" Core..=) Core.<$> inputConfigs,
            ("models" Core..=) Core.<$> models,
            ("outputConfig" Core..=) Core.<$> outputConfig,
            ("sourceLanguageCode" Core..=)
              Core.<$> sourceLanguageCode,
            ("targetLanguageCodes" Core..=)
              Core.<$> targetLanguageCodes
          ]
      )

-- | Optional.
--
-- /See:/ 'newBatchTranslateDocumentRequest_FormatConversions' smart constructor.
newtype BatchTranslateDocumentRequest_FormatConversions = BatchTranslateDocumentRequest_FormatConversions
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchTranslateDocumentRequest_FormatConversions' with the minimum fields required to make a request.
newBatchTranslateDocumentRequest_FormatConversions ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  BatchTranslateDocumentRequest_FormatConversions
newBatchTranslateDocumentRequest_FormatConversions addtional =
  BatchTranslateDocumentRequest_FormatConversions {addtional = addtional}

instance
  Core.FromJSON
    BatchTranslateDocumentRequest_FormatConversions
  where
  parseJSON =
    Core.withObject
      "BatchTranslateDocumentRequest_FormatConversions"
      ( \o ->
          BatchTranslateDocumentRequest_FormatConversions
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    BatchTranslateDocumentRequest_FormatConversions
  where
  toJSON
    BatchTranslateDocumentRequest_FormatConversions {..} =
      Core.toJSON addtional

-- | Optional. Glossaries to be applied. It\'s keyed by target language code.
--
-- /See:/ 'newBatchTranslateDocumentRequest_Glossaries' smart constructor.
newtype BatchTranslateDocumentRequest_Glossaries = BatchTranslateDocumentRequest_Glossaries
  { -- |
    addtional :: (Core.HashMap Core.Text TranslateTextGlossaryConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchTranslateDocumentRequest_Glossaries' with the minimum fields required to make a request.
newBatchTranslateDocumentRequest_Glossaries ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text TranslateTextGlossaryConfig ->
  BatchTranslateDocumentRequest_Glossaries
newBatchTranslateDocumentRequest_Glossaries addtional =
  BatchTranslateDocumentRequest_Glossaries {addtional = addtional}

instance
  Core.FromJSON
    BatchTranslateDocumentRequest_Glossaries
  where
  parseJSON =
    Core.withObject
      "BatchTranslateDocumentRequest_Glossaries"
      ( \o ->
          BatchTranslateDocumentRequest_Glossaries
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    BatchTranslateDocumentRequest_Glossaries
  where
  toJSON BatchTranslateDocumentRequest_Glossaries {..} =
    Core.toJSON addtional

-- | Optional. The models to use for translation. Map\'s key is target language code. Map\'s value is the model name. Value can be a built-in general model, or an AutoML Translation model. The value format depends on model type: - AutoML Translation models: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/{model-id}@ - General (built-in) models: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/general\/nmt@, If the map is empty or a specific model is not requested for a language pair, then default google model (nmt) is used.
--
-- /See:/ 'newBatchTranslateDocumentRequest_Models' smart constructor.
newtype BatchTranslateDocumentRequest_Models = BatchTranslateDocumentRequest_Models
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchTranslateDocumentRequest_Models' with the minimum fields required to make a request.
newBatchTranslateDocumentRequest_Models ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  BatchTranslateDocumentRequest_Models
newBatchTranslateDocumentRequest_Models addtional =
  BatchTranslateDocumentRequest_Models {addtional = addtional}

instance
  Core.FromJSON
    BatchTranslateDocumentRequest_Models
  where
  parseJSON =
    Core.withObject
      "BatchTranslateDocumentRequest_Models"
      ( \o ->
          BatchTranslateDocumentRequest_Models
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    BatchTranslateDocumentRequest_Models
  where
  toJSON BatchTranslateDocumentRequest_Models {..} =
    Core.toJSON addtional

-- | The batch translation request.
--
-- /See:/ 'newBatchTranslateTextRequest' smart constructor.
data BatchTranslateTextRequest = BatchTranslateTextRequest
  { -- | Optional. Glossaries to be applied for translation. It\'s keyed by target language code.
    glossaries :: (Core.Maybe BatchTranslateTextRequest_Glossaries),
    -- | Required. Input configurations. The total number of files matched should be \<= 100. The total content size should be \<= 100M Unicode codepoints. The files must use UTF-8 encoding.
    inputConfigs :: (Core.Maybe [InputConfig]),
    -- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter. See https:\/\/cloud.google.com\/translate\/docs\/advanced\/labels for more information.
    labels :: (Core.Maybe BatchTranslateTextRequest_Labels),
    -- | Optional. The models to use for translation. Map\'s key is target language code. Map\'s value is model name. Value can be a built-in general model, or an AutoML Translation model. The value format depends on model type: - AutoML Translation models: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/{model-id}@ - General (built-in) models: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/general\/nmt@, If the map is empty or a specific model is not requested for a language pair, then default google model (nmt) is used.
    models :: (Core.Maybe BatchTranslateTextRequest_Models),
    -- | Required. Output configuration. If 2 input configs match to the same file (that is, same input path), we don\'t generate output for duplicate inputs.
    outputConfig :: (Core.Maybe OutputConfig),
    -- | Required. Source language code.
    sourceLanguageCode :: (Core.Maybe Core.Text),
    -- | Required. Specify up to 10 language codes here.
    targetLanguageCodes :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchTranslateTextRequest' with the minimum fields required to make a request.
newBatchTranslateTextRequest ::
  BatchTranslateTextRequest
newBatchTranslateTextRequest =
  BatchTranslateTextRequest
    { glossaries = Core.Nothing,
      inputConfigs = Core.Nothing,
      labels = Core.Nothing,
      models = Core.Nothing,
      outputConfig = Core.Nothing,
      sourceLanguageCode = Core.Nothing,
      targetLanguageCodes = Core.Nothing
    }

instance Core.FromJSON BatchTranslateTextRequest where
  parseJSON =
    Core.withObject
      "BatchTranslateTextRequest"
      ( \o ->
          BatchTranslateTextRequest
            Core.<$> (o Core..:? "glossaries")
            Core.<*> (o Core..:? "inputConfigs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "models")
            Core.<*> (o Core..:? "outputConfig")
            Core.<*> (o Core..:? "sourceLanguageCode")
            Core.<*> ( o Core..:? "targetLanguageCodes"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON BatchTranslateTextRequest where
  toJSON BatchTranslateTextRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("glossaries" Core..=) Core.<$> glossaries,
            ("inputConfigs" Core..=) Core.<$> inputConfigs,
            ("labels" Core..=) Core.<$> labels,
            ("models" Core..=) Core.<$> models,
            ("outputConfig" Core..=) Core.<$> outputConfig,
            ("sourceLanguageCode" Core..=)
              Core.<$> sourceLanguageCode,
            ("targetLanguageCodes" Core..=)
              Core.<$> targetLanguageCodes
          ]
      )

-- | Optional. Glossaries to be applied for translation. It\'s keyed by target language code.
--
-- /See:/ 'newBatchTranslateTextRequest_Glossaries' smart constructor.
newtype BatchTranslateTextRequest_Glossaries = BatchTranslateTextRequest_Glossaries
  { -- |
    addtional :: (Core.HashMap Core.Text TranslateTextGlossaryConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchTranslateTextRequest_Glossaries' with the minimum fields required to make a request.
newBatchTranslateTextRequest_Glossaries ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text TranslateTextGlossaryConfig ->
  BatchTranslateTextRequest_Glossaries
newBatchTranslateTextRequest_Glossaries addtional =
  BatchTranslateTextRequest_Glossaries {addtional = addtional}

instance
  Core.FromJSON
    BatchTranslateTextRequest_Glossaries
  where
  parseJSON =
    Core.withObject
      "BatchTranslateTextRequest_Glossaries"
      ( \o ->
          BatchTranslateTextRequest_Glossaries
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    BatchTranslateTextRequest_Glossaries
  where
  toJSON BatchTranslateTextRequest_Glossaries {..} =
    Core.toJSON addtional

-- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter. See https:\/\/cloud.google.com\/translate\/docs\/advanced\/labels for more information.
--
-- /See:/ 'newBatchTranslateTextRequest_Labels' smart constructor.
newtype BatchTranslateTextRequest_Labels = BatchTranslateTextRequest_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchTranslateTextRequest_Labels' with the minimum fields required to make a request.
newBatchTranslateTextRequest_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  BatchTranslateTextRequest_Labels
newBatchTranslateTextRequest_Labels addtional =
  BatchTranslateTextRequest_Labels {addtional = addtional}

instance
  Core.FromJSON
    BatchTranslateTextRequest_Labels
  where
  parseJSON =
    Core.withObject
      "BatchTranslateTextRequest_Labels"
      ( \o ->
          BatchTranslateTextRequest_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON BatchTranslateTextRequest_Labels where
  toJSON BatchTranslateTextRequest_Labels {..} =
    Core.toJSON addtional

-- | Optional. The models to use for translation. Map\'s key is target language code. Map\'s value is model name. Value can be a built-in general model, or an AutoML Translation model. The value format depends on model type: - AutoML Translation models: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/{model-id}@ - General (built-in) models: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/general\/nmt@, If the map is empty or a specific model is not requested for a language pair, then default google model (nmt) is used.
--
-- /See:/ 'newBatchTranslateTextRequest_Models' smart constructor.
newtype BatchTranslateTextRequest_Models = BatchTranslateTextRequest_Models
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchTranslateTextRequest_Models' with the minimum fields required to make a request.
newBatchTranslateTextRequest_Models ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  BatchTranslateTextRequest_Models
newBatchTranslateTextRequest_Models addtional =
  BatchTranslateTextRequest_Models {addtional = addtional}

instance
  Core.FromJSON
    BatchTranslateTextRequest_Models
  where
  parseJSON =
    Core.withObject
      "BatchTranslateTextRequest_Models"
      ( \o ->
          BatchTranslateTextRequest_Models
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON BatchTranslateTextRequest_Models where
  toJSON BatchTranslateTextRequest_Models {..} =
    Core.toJSON addtional

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'newCancelOperationRequest' smart constructor.
data CancelOperationRequest = CancelOperationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
newCancelOperationRequest ::
  CancelOperationRequest
newCancelOperationRequest = CancelOperationRequest

instance Core.FromJSON CancelOperationRequest where
  parseJSON =
    Core.withObject
      "CancelOperationRequest"
      (\o -> Core.pure CancelOperationRequest)

instance Core.ToJSON CancelOperationRequest where
  toJSON = Core.const Core.emptyObject

-- | The request message for language detection.
--
-- /See:/ 'newDetectLanguageRequest' smart constructor.
data DetectLanguageRequest = DetectLanguageRequest
  { -- | The content of the input stored as a string.
    content :: (Core.Maybe Core.Text),
    -- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter. See https:\/\/cloud.google.com\/translate\/docs\/advanced\/labels for more information.
    labels :: (Core.Maybe DetectLanguageRequest_Labels),
    -- | Optional. The format of the source text, for example, \"text\/html\", \"text\/plain\". If left blank, the MIME type defaults to \"text\/html\".
    mimeType :: (Core.Maybe Core.Text),
    -- | Optional. The language detection model to be used. Format: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/language-detection\/{model-id}@ Only one language detection model is currently supported: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/language-detection\/default@. If not specified, the default model is used.
    model :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DetectLanguageRequest' with the minimum fields required to make a request.
newDetectLanguageRequest ::
  DetectLanguageRequest
newDetectLanguageRequest =
  DetectLanguageRequest
    { content = Core.Nothing,
      labels = Core.Nothing,
      mimeType = Core.Nothing,
      model = Core.Nothing
    }

instance Core.FromJSON DetectLanguageRequest where
  parseJSON =
    Core.withObject
      "DetectLanguageRequest"
      ( \o ->
          DetectLanguageRequest
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "model")
      )

instance Core.ToJSON DetectLanguageRequest where
  toJSON DetectLanguageRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("labels" Core..=) Core.<$> labels,
            ("mimeType" Core..=) Core.<$> mimeType,
            ("model" Core..=) Core.<$> model
          ]
      )

-- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter. See https:\/\/cloud.google.com\/translate\/docs\/advanced\/labels for more information.
--
-- /See:/ 'newDetectLanguageRequest_Labels' smart constructor.
newtype DetectLanguageRequest_Labels = DetectLanguageRequest_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DetectLanguageRequest_Labels' with the minimum fields required to make a request.
newDetectLanguageRequest_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  DetectLanguageRequest_Labels
newDetectLanguageRequest_Labels addtional =
  DetectLanguageRequest_Labels {addtional = addtional}

instance Core.FromJSON DetectLanguageRequest_Labels where
  parseJSON =
    Core.withObject
      "DetectLanguageRequest_Labels"
      ( \o ->
          DetectLanguageRequest_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON DetectLanguageRequest_Labels where
  toJSON DetectLanguageRequest_Labels {..} =
    Core.toJSON addtional

-- | The response message for language detection.
--
-- /See:/ 'newDetectLanguageResponse' smart constructor.
newtype DetectLanguageResponse = DetectLanguageResponse
  { -- | The most probable language detected by the Translation API. For each request, the Translation API will always return only one result.
    languages :: (Core.Maybe [DetectedLanguage])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DetectLanguageResponse' with the minimum fields required to make a request.
newDetectLanguageResponse ::
  DetectLanguageResponse
newDetectLanguageResponse = DetectLanguageResponse {languages = Core.Nothing}

instance Core.FromJSON DetectLanguageResponse where
  parseJSON =
    Core.withObject
      "DetectLanguageResponse"
      ( \o ->
          DetectLanguageResponse
            Core.<$> (o Core..:? "languages" Core..!= Core.mempty)
      )

instance Core.ToJSON DetectLanguageResponse where
  toJSON DetectLanguageResponse {..} =
    Core.object
      ( Core.catMaybes
          [("languages" Core..=) Core.<$> languages]
      )

-- | The response message for language detection.
--
-- /See:/ 'newDetectedLanguage' smart constructor.
data DetectedLanguage = DetectedLanguage
  { -- | The confidence of the detection result for this language.
    confidence :: (Core.Maybe Core.Double),
    -- | The BCP-47 language code of source content in the request, detected automatically.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DetectedLanguage' with the minimum fields required to make a request.
newDetectedLanguage ::
  DetectedLanguage
newDetectedLanguage =
  DetectedLanguage {confidence = Core.Nothing, languageCode = Core.Nothing}

instance Core.FromJSON DetectedLanguage where
  parseJSON =
    Core.withObject
      "DetectedLanguage"
      ( \o ->
          DetectedLanguage
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "languageCode")
      )

instance Core.ToJSON DetectedLanguage where
  toJSON DetectedLanguage {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidence" Core..=) Core.<$> confidence,
            ("languageCode" Core..=) Core.<$> languageCode
          ]
      )

-- | A document translation request input config.
--
-- /See:/ 'newDocumentInputConfig' smart constructor.
data DocumentInputConfig = DocumentInputConfig
  { -- | Document\'s content represented as a stream of bytes.
    content :: (Core.Maybe Core.Base64),
    -- | Google Cloud Storage location. This must be a single file. For example: gs:\/\/example/bucket\/example/file.pdf
    gcsSource :: (Core.Maybe GcsSource),
    -- | Specifies the input document\'s mime/type. If not specified it will be determined using the file extension for gcs/source provided files. For a file provided through bytes content the mime_type must be provided. Currently supported mime types are: - application\/pdf - application\/vnd.openxmlformats-officedocument.wordprocessingml.document - application\/vnd.openxmlformats-officedocument.presentationml.presentation - application\/vnd.openxmlformats-officedocument.spreadsheetml.sheet
    mimeType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentInputConfig' with the minimum fields required to make a request.
newDocumentInputConfig ::
  DocumentInputConfig
newDocumentInputConfig =
  DocumentInputConfig
    { content = Core.Nothing,
      gcsSource = Core.Nothing,
      mimeType = Core.Nothing
    }

instance Core.FromJSON DocumentInputConfig where
  parseJSON =
    Core.withObject
      "DocumentInputConfig"
      ( \o ->
          DocumentInputConfig
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "gcsSource")
            Core.<*> (o Core..:? "mimeType")
      )

instance Core.ToJSON DocumentInputConfig where
  toJSON DocumentInputConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("gcsSource" Core..=) Core.<$> gcsSource,
            ("mimeType" Core..=) Core.<$> mimeType
          ]
      )

-- | A document translation request output config.
--
-- /See:/ 'newDocumentOutputConfig' smart constructor.
data DocumentOutputConfig = DocumentOutputConfig
  { -- | Optional. Google Cloud Storage destination for the translation output, e.g., @gs:\/\/my_bucket\/my_directory\/@. The destination directory provided does not have to be empty, but the bucket must exist. If a file with the same name as the output file already exists in the destination an error will be returned. For a DocumentInputConfig.contents provided document, the output file will have the name \"output/[trg]/translations.[ext]\", where - [trg] corresponds to the translated file\'s language code, - [ext] corresponds to the translated file\'s extension according to its mime type. For a DocumentInputConfig.gcs/uri provided document, the output file will have a name according to its URI. For example: an input file with URI: \"gs:\/\/a\/b\/c.[extension]\" stored in a gcs/destination bucket with name \"my/bucket\" will have an output URI: \"gs:\/\/my/bucket\/a/b/c/[trg]/translations.[ext]\", where - [trg] corresponds to the translated file\'s language code, - [ext] corresponds to the translated file\'s extension
    -- according to its mime type. If the document was directly provided through the request, then the output document will have the format: \"gs:\/\/my/bucket\/translated/document/[trg]/translations.[ext], where - [trg] corresponds to the translated file\'s language code, - [ext] corresponds to the translated file\'s extension according to its mime type. If a glossary was provided, then the output URI for the glossary translation will be equal to the default output URI but have @glossary_translations@ instead of @translations@. For the previous example, its glossary URI would be: \"gs:\/\/my/bucket\/a/b/c/[trg]/glossary/translations.[ext]\". Thus the max number of output files will be 2 (Translated document, Glossary translated document). Callers should expect no partial outputs. If there is any error during document translation, no output will be stored in the Cloud Storage bucket.
    gcsDestination :: (Core.Maybe GcsDestination),
    -- | Optional. Specifies the translated document\'s mime_type. If not specified, the translated file\'s mime type will be the same as the input file\'s mime type. Currently only support the output mime type to be the same as input mime type. - application\/pdf - application\/vnd.openxmlformats-officedocument.wordprocessingml.document - application\/vnd.openxmlformats-officedocument.presentationml.presentation - application\/vnd.openxmlformats-officedocument.spreadsheetml.sheet
    mimeType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentOutputConfig' with the minimum fields required to make a request.
newDocumentOutputConfig ::
  DocumentOutputConfig
newDocumentOutputConfig =
  DocumentOutputConfig {gcsDestination = Core.Nothing, mimeType = Core.Nothing}

instance Core.FromJSON DocumentOutputConfig where
  parseJSON =
    Core.withObject
      "DocumentOutputConfig"
      ( \o ->
          DocumentOutputConfig
            Core.<$> (o Core..:? "gcsDestination")
            Core.<*> (o Core..:? "mimeType")
      )

instance Core.ToJSON DocumentOutputConfig where
  toJSON DocumentOutputConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("gcsDestination" Core..=) Core.<$> gcsDestination,
            ("mimeType" Core..=) Core.<$> mimeType
          ]
      )

-- | A translated document message.
--
-- /See:/ 'newDocumentTranslation' smart constructor.
data DocumentTranslation = DocumentTranslation
  { -- | The array of translated documents. It is expected to be size 1 for now. We may produce multiple translated documents in the future for other type of file formats.
    byteStreamOutputs :: (Core.Maybe [Core.Base64]),
    -- | The detected language for the input document. If the user did not provide the source language for the input document, this field will have the language code automatically detected. If the source language was passed, auto-detection of the language does not occur and this field is empty.
    detectedLanguageCode :: (Core.Maybe Core.Text),
    -- | The translated document\'s mime type.
    mimeType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentTranslation' with the minimum fields required to make a request.
newDocumentTranslation ::
  DocumentTranslation
newDocumentTranslation =
  DocumentTranslation
    { byteStreamOutputs = Core.Nothing,
      detectedLanguageCode = Core.Nothing,
      mimeType = Core.Nothing
    }

instance Core.FromJSON DocumentTranslation where
  parseJSON =
    Core.withObject
      "DocumentTranslation"
      ( \o ->
          DocumentTranslation
            Core.<$> (o Core..:? "byteStreamOutputs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "detectedLanguageCode")
            Core.<*> (o Core..:? "mimeType")
      )

instance Core.ToJSON DocumentTranslation where
  toJSON DocumentTranslation {..} =
    Core.object
      ( Core.catMaybes
          [ ("byteStreamOutputs" Core..=)
              Core.<$> byteStreamOutputs,
            ("detectedLanguageCode" Core..=)
              Core.<$> detectedLanguageCode,
            ("mimeType" Core..=) Core.<$> mimeType
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | The Google Cloud Storage location for the output content.
--
-- /See:/ 'newGcsDestination' smart constructor.
newtype GcsDestination = GcsDestination
  { -- | Required. The bucket used in \'output/uri/prefix\' must exist and there must be no files under \'output/uri/prefix\'. \'output/uri/prefix\' must end with \"\/\" and start with \"gs:\/\/\". One \'output/uri/prefix\' can only be used by one batch translation job at a time. Otherwise an INVALID_ARGUMENT (400) error is returned.
    outputUriPrefix :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcsDestination' with the minimum fields required to make a request.
newGcsDestination ::
  GcsDestination
newGcsDestination = GcsDestination {outputUriPrefix = Core.Nothing}

instance Core.FromJSON GcsDestination where
  parseJSON =
    Core.withObject
      "GcsDestination"
      ( \o ->
          GcsDestination
            Core.<$> (o Core..:? "outputUriPrefix")
      )

instance Core.ToJSON GcsDestination where
  toJSON GcsDestination {..} =
    Core.object
      ( Core.catMaybes
          [ ("outputUriPrefix" Core..=)
              Core.<$> outputUriPrefix
          ]
      )

-- | The Google Cloud Storage location for the input content.
--
-- /See:/ 'newGcsSource' smart constructor.
newtype GcsSource = GcsSource
  { -- | Required. Source data URI. For example, @gs:\/\/my_bucket\/my_object@.
    inputUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcsSource' with the minimum fields required to make a request.
newGcsSource ::
  GcsSource
newGcsSource = GcsSource {inputUri = Core.Nothing}

instance Core.FromJSON GcsSource where
  parseJSON =
    Core.withObject
      "GcsSource"
      (\o -> GcsSource Core.<$> (o Core..:? "inputUri"))

instance Core.ToJSON GcsSource where
  toJSON GcsSource {..} =
    Core.object
      ( Core.catMaybes
          [("inputUri" Core..=) Core.<$> inputUri]
      )

-- | Represents a glossary built from user provided data.
--
-- /See:/ 'newGlossary' smart constructor.
data Glossary = Glossary
  { -- | Output only. When the glossary creation was finished.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | Output only. The number of entries defined in the glossary.
    entryCount :: (Core.Maybe Core.Int32),
    -- | Required. Provides examples to build the glossary from. Total glossary must not exceed 10M Unicode codepoints.
    inputConfig :: (Core.Maybe GlossaryInputConfig),
    -- | Used with equivalent term set glossaries.
    languageCodesSet :: (Core.Maybe LanguageCodesSet),
    -- | Used with unidirectional glossaries.
    languagePair :: (Core.Maybe LanguageCodePair),
    -- | Required. The resource name of the glossary. Glossary names have the form @projects\/{project-number-or-id}\/locations\/{location-id}\/glossaries\/{glossary-id}@.
    name :: (Core.Maybe Core.Text),
    -- | Output only. When CreateGlossary was called.
    submitTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Glossary' with the minimum fields required to make a request.
newGlossary ::
  Glossary
newGlossary =
  Glossary
    { endTime = Core.Nothing,
      entryCount = Core.Nothing,
      inputConfig = Core.Nothing,
      languageCodesSet = Core.Nothing,
      languagePair = Core.Nothing,
      name = Core.Nothing,
      submitTime = Core.Nothing
    }

instance Core.FromJSON Glossary where
  parseJSON =
    Core.withObject
      "Glossary"
      ( \o ->
          Glossary
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "entryCount")
            Core.<*> (o Core..:? "inputConfig")
            Core.<*> (o Core..:? "languageCodesSet")
            Core.<*> (o Core..:? "languagePair")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "submitTime")
      )

instance Core.ToJSON Glossary where
  toJSON Glossary {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("entryCount" Core..=) Core.<$> entryCount,
            ("inputConfig" Core..=) Core.<$> inputConfig,
            ("languageCodesSet" Core..=)
              Core.<$> languageCodesSet,
            ("languagePair" Core..=) Core.<$> languagePair,
            ("name" Core..=) Core.<$> name,
            ("submitTime" Core..=) Core.<$> submitTime
          ]
      )

-- | Input configuration for glossaries.
--
-- /See:/ 'newGlossaryInputConfig' smart constructor.
newtype GlossaryInputConfig = GlossaryInputConfig
  { -- | Required. Google Cloud Storage location of glossary data. File format is determined based on the filename extension. API returns [google.rpc.Code.INVALID_ARGUMENT] for unsupported URI-s and file formats. Wildcards are not allowed. This must be a single file in one of the following formats: For unidirectional glossaries: - TSV\/CSV (@.tsv@\/@.csv@): 2 column file, tab- or comma-separated. The first column is source text. The second column is target text. The file must not contain headers. That is, the first row is data, not column names. - TMX (@.tmx@): TMX file with parallel data defining source\/target term pairs. For equivalent term sets glossaries: - CSV (@.csv@): Multi-column CSV file defining equivalent glossary terms in multiple languages. See documentation for more information - <https://cloud.google.com/translate/docs/advanced/glossary glossaries>.
    gcsSource :: (Core.Maybe GcsSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GlossaryInputConfig' with the minimum fields required to make a request.
newGlossaryInputConfig ::
  GlossaryInputConfig
newGlossaryInputConfig = GlossaryInputConfig {gcsSource = Core.Nothing}

instance Core.FromJSON GlossaryInputConfig where
  parseJSON =
    Core.withObject
      "GlossaryInputConfig"
      ( \o ->
          GlossaryInputConfig
            Core.<$> (o Core..:? "gcsSource")
      )

instance Core.ToJSON GlossaryInputConfig where
  toJSON GlossaryInputConfig {..} =
    Core.object
      ( Core.catMaybes
          [("gcsSource" Core..=) Core.<$> gcsSource]
      )

-- | Input configuration for BatchTranslateText request.
--
-- /See:/ 'newInputConfig' smart constructor.
data InputConfig = InputConfig
  { -- | Required. Google Cloud Storage location for the source input. This can be a single file (for example, @gs:\/\/translation-test\/input.tsv@) or a wildcard (for example, @gs:\/\/translation-test\/*@). If a file extension is @.tsv@, it can contain either one or two columns. The first column (optional) is the id of the text request. If the first column is missing, we use the row number (0-based) from the input file as the ID in the output file. The second column is the actual text to be translated. We recommend each row be \<= 10K Unicode codepoints, otherwise an error might be returned. Note that the input tsv must be RFC 4180 compliant. You could use https:\/\/github.com\/Clever\/csvlint to check potential formatting errors in your tsv file. csvlint --delimiter=\'\\t\' your/input/file.tsv The other supported file extensions are @.txt@ or @.html@, which is treated as a single large chunk of text.
    gcsSource :: (Core.Maybe GcsSource),
    -- | Optional. Can be \"text\/plain\" or \"text\/html\". For @.tsv@, \"text\/html\" is used if mime_type is missing. For @.html@, this field must be \"text\/html\" or empty. For @.txt@, this field must be \"text\/plain\" or empty.
    mimeType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InputConfig' with the minimum fields required to make a request.
newInputConfig ::
  InputConfig
newInputConfig = InputConfig {gcsSource = Core.Nothing, mimeType = Core.Nothing}

instance Core.FromJSON InputConfig where
  parseJSON =
    Core.withObject
      "InputConfig"
      ( \o ->
          InputConfig
            Core.<$> (o Core..:? "gcsSource")
            Core.<*> (o Core..:? "mimeType")
      )

instance Core.ToJSON InputConfig where
  toJSON InputConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("gcsSource" Core..=) Core.<$> gcsSource,
            ("mimeType" Core..=) Core.<$> mimeType
          ]
      )

-- | Used with unidirectional glossaries.
--
-- /See:/ 'newLanguageCodePair' smart constructor.
data LanguageCodePair = LanguageCodePair
  { -- | Required. The BCP-47 language code of the input text, for example, \"en-US\". Expected to be an exact match for GlossaryTerm.language_code.
    sourceLanguageCode :: (Core.Maybe Core.Text),
    -- | Required. The BCP-47 language code for translation output, for example, \"zh-CN\". Expected to be an exact match for GlossaryTerm.language_code.
    targetLanguageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LanguageCodePair' with the minimum fields required to make a request.
newLanguageCodePair ::
  LanguageCodePair
newLanguageCodePair =
  LanguageCodePair
    { sourceLanguageCode = Core.Nothing,
      targetLanguageCode = Core.Nothing
    }

instance Core.FromJSON LanguageCodePair where
  parseJSON =
    Core.withObject
      "LanguageCodePair"
      ( \o ->
          LanguageCodePair
            Core.<$> (o Core..:? "sourceLanguageCode")
            Core.<*> (o Core..:? "targetLanguageCode")
      )

instance Core.ToJSON LanguageCodePair where
  toJSON LanguageCodePair {..} =
    Core.object
      ( Core.catMaybes
          [ ("sourceLanguageCode" Core..=)
              Core.<$> sourceLanguageCode,
            ("targetLanguageCode" Core..=)
              Core.<$> targetLanguageCode
          ]
      )

-- | Used with equivalent term set glossaries.
--
-- /See:/ 'newLanguageCodesSet' smart constructor.
newtype LanguageCodesSet = LanguageCodesSet
  { -- | The BCP-47 language code(s) for terms defined in the glossary. All entries are unique. The list contains at least two entries. Expected to be an exact match for GlossaryTerm.language_code.
    languageCodes :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LanguageCodesSet' with the minimum fields required to make a request.
newLanguageCodesSet ::
  LanguageCodesSet
newLanguageCodesSet = LanguageCodesSet {languageCodes = Core.Nothing}

instance Core.FromJSON LanguageCodesSet where
  parseJSON =
    Core.withObject
      "LanguageCodesSet"
      ( \o ->
          LanguageCodesSet
            Core.<$> (o Core..:? "languageCodes" Core..!= Core.mempty)
      )

instance Core.ToJSON LanguageCodesSet where
  toJSON LanguageCodesSet {..} =
    Core.object
      ( Core.catMaybes
          [("languageCodes" Core..=) Core.<$> languageCodes]
      )

-- | Response message for ListGlossaries.
--
-- /See:/ 'newListGlossariesResponse' smart constructor.
data ListGlossariesResponse = ListGlossariesResponse
  { -- | The list of glossaries for a project.
    glossaries :: (Core.Maybe [Glossary]),
    -- | A token to retrieve a page of results. Pass this value in the [ListGlossariesRequest.page_token] field in the subsequent call to @ListGlossaries@ method to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListGlossariesResponse' with the minimum fields required to make a request.
newListGlossariesResponse ::
  ListGlossariesResponse
newListGlossariesResponse =
  ListGlossariesResponse
    { glossaries = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListGlossariesResponse where
  parseJSON =
    Core.withObject
      "ListGlossariesResponse"
      ( \o ->
          ListGlossariesResponse
            Core.<$> (o Core..:? "glossaries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListGlossariesResponse where
  toJSON ListGlossariesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("glossaries" Core..=) Core.<$> glossaries,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
  { -- | A list of locations that matches the specified filter in the request.
    locations :: (Core.Maybe [Location]),
    -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse ::
  ListLocationsResponse
newListLocationsResponse =
  ListLocationsResponse {locations = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLocationsResponse where
  parseJSON =
    Core.withObject
      "ListLocationsResponse"
      ( \o ->
          ListLocationsResponse
            Core.<$> (o Core..:? "locations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLocationsResponse where
  toJSON ListLocationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("locations" Core..=) Core.<$> locations,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
    displayName :: (Core.Maybe Core.Text),
    -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    labels :: (Core.Maybe Location_Labels),
    -- | The canonical id for this location. For example: @\"us-east1\"@.
    locationId :: (Core.Maybe Core.Text),
    -- | Service-specific metadata. For example the available capacity at the given location.
    metadata :: (Core.Maybe Location_Metadata),
    -- | Resource name for the location, which may vary between implementations. For example: @\"projects\/example-project\/locations\/us-east1\"@
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation ::
  Location
newLocation =
  Location
    { displayName = Core.Nothing,
      labels = Core.Nothing,
      locationId = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \o ->
          Location
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Location where
  toJSON Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("locationId" Core..=) Core.<$> locationId,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Location_Labels
newLocation_Labels addtional = Location_Labels {addtional = addtional}

instance Core.FromJSON Location_Labels where
  parseJSON =
    Core.withObject
      "Location_Labels"
      ( \o ->
          Location_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Labels where
  toJSON Location_Labels {..} = Core.toJSON addtional

-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Location_Metadata
newLocation_Metadata addtional = Location_Metadata {addtional = addtional}

instance Core.FromJSON Location_Metadata where
  parseJSON =
    Core.withObject
      "Location_Metadata"
      ( \o ->
          Location_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Metadata where
  toJSON Location_Metadata {..} = Core.toJSON addtional

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata addtional = Operation_Metadata {addtional = addtional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON addtional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response addtional = Operation_Response {addtional = addtional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON addtional

-- | Output configuration for BatchTranslateText request.
--
-- /See:/ 'newOutputConfig' smart constructor.
newtype OutputConfig = OutputConfig
  { -- | Google Cloud Storage destination for output content. For every single input file (for example, gs:\/\/a\/b\/c.[extension]), we generate at most 2 * n output files. (n is the # of target/language/codes in the BatchTranslateTextRequest). Output files (tsv) generated are compliant with RFC 4180 except that record delimiters are \'\\n\' instead of \'\\r\\n\'. We don\'t provide any way to change record delimiters. While the input files are being processed, we write\/update an index file \'index.csv\' under \'output/uri/prefix\' (for example, gs:\/\/translation-test\/index.csv) The index file is generated\/updated as new files are being translated. The format is: input/file,target/language/code,translations/file,errors/file, glossary/translations/file,glossary/errors/file input/file is one file we matched using gcs/source.input/uri. target/language/code is provided in the request. translations/file contains the translations. (details provided below) errors/file contains the errors during processing of the file.
    -- (details below). Both translations/file and errors/file could be empty strings if we have no content to output. glossary/translations/file and glossary/errors/file are always empty strings if the input/file is tsv. They could also be empty if we have no content to output. Once a row is present in index.csv, the input\/output matching never changes. Callers should also expect all the content in input/file are processed and ready to be consumed (that is, no partial output file is written). Since index.csv will be keeping updated during the process, please make sure there is no custom retention policy applied on the output bucket that may avoid file updating. (https:\/\/cloud.google.com\/storage\/docs\/bucket-lock?hl=en#retention-policy) The format of translations/file (for target language code \'trg\') is: gs:\/\/translation/test\/a/b/c/\'trg\'/translations.[extension] If the input file extension is tsv, the output has the following columns: Column 1: ID of the request provided in the input, if it\'s not
    -- provided in the input, then the input row number is used (0-based). Column 2: source sentence. Column 3: translation without applying a glossary. Empty string if there is an error. Column 4 (only present if a glossary is provided in the request): translation after applying the glossary. Empty string if there is an error applying the glossary. Could be same string as column 3 if there is no glossary applied. If input file extension is a txt or html, the translation is directly written to the output file. If glossary is requested, a separate glossary/translations/file has format of gs:\/\/translation/test\/a/b/c/\'trg\'/glossary/translations.[extension] The format of errors file (for target language code \'trg\') is: gs:\/\/translation/test\/a/b/c/\'trg\'/errors.[extension] If the input file extension is tsv, errors/file contains the following: Column 1: ID of the request provided in the input, if it\'s not provided in the input, then the input row number is used (0-based). Column 2: source sentence. Column 3:
    -- Error detail for the translation. Could be empty. Column 4 (only present if a glossary is provided in the request): Error when applying the glossary. If the input file extension is txt or html, glossary/error/file will be generated that contains error details. glossary/error/file has format of gs:\/\/translation/test\/a/b/c/\'trg\'/glossary/errors.[extension]
    gcsDestination :: (Core.Maybe GcsDestination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OutputConfig' with the minimum fields required to make a request.
newOutputConfig ::
  OutputConfig
newOutputConfig = OutputConfig {gcsDestination = Core.Nothing}

instance Core.FromJSON OutputConfig where
  parseJSON =
    Core.withObject
      "OutputConfig"
      ( \o ->
          OutputConfig Core.<$> (o Core..:? "gcsDestination")
      )

instance Core.ToJSON OutputConfig where
  toJSON OutputConfig {..} =
    Core.object
      ( Core.catMaybes
          [("gcsDestination" Core..=) Core.<$> gcsDestination]
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
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem addtional = Status_DetailsItem {addtional = addtional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON addtional

-- | A single supported language response corresponds to information related to one supported language.
--
-- /See:/ 'newSupportedLanguage' smart constructor.
data SupportedLanguage = SupportedLanguage
  { -- | Human readable name of the language localized in the display language specified in the request.
    displayName :: (Core.Maybe Core.Text),
    -- | Supported language code, generally consisting of its ISO 639-1 identifier, for example, \'en\', \'ja\'. In certain cases, BCP-47 codes including language and region identifiers are returned (for example, \'zh-TW\' and \'zh-CN\')
    languageCode :: (Core.Maybe Core.Text),
    -- | Can be used as source language.
    supportSource :: (Core.Maybe Core.Bool),
    -- | Can be used as target language.
    supportTarget :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SupportedLanguage' with the minimum fields required to make a request.
newSupportedLanguage ::
  SupportedLanguage
newSupportedLanguage =
  SupportedLanguage
    { displayName = Core.Nothing,
      languageCode = Core.Nothing,
      supportSource = Core.Nothing,
      supportTarget = Core.Nothing
    }

instance Core.FromJSON SupportedLanguage where
  parseJSON =
    Core.withObject
      "SupportedLanguage"
      ( \o ->
          SupportedLanguage
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "supportSource")
            Core.<*> (o Core..:? "supportTarget")
      )

instance Core.ToJSON SupportedLanguage where
  toJSON SupportedLanguage {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("supportSource" Core..=) Core.<$> supportSource,
            ("supportTarget" Core..=) Core.<$> supportTarget
          ]
      )

-- | The response message for discovering supported languages.
--
-- /See:/ 'newSupportedLanguages' smart constructor.
newtype SupportedLanguages = SupportedLanguages
  { -- | A list of supported language responses. This list contains an entry for each language the Translation API supports.
    languages :: (Core.Maybe [SupportedLanguage])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SupportedLanguages' with the minimum fields required to make a request.
newSupportedLanguages ::
  SupportedLanguages
newSupportedLanguages = SupportedLanguages {languages = Core.Nothing}

instance Core.FromJSON SupportedLanguages where
  parseJSON =
    Core.withObject
      "SupportedLanguages"
      ( \o ->
          SupportedLanguages
            Core.<$> (o Core..:? "languages" Core..!= Core.mempty)
      )

instance Core.ToJSON SupportedLanguages where
  toJSON SupportedLanguages {..} =
    Core.object
      ( Core.catMaybes
          [("languages" Core..=) Core.<$> languages]
      )

-- | A document translation request.
--
-- /See:/ 'newTranslateDocumentRequest' smart constructor.
data TranslateDocumentRequest = TranslateDocumentRequest
  { -- | Required. Input configurations.
    documentInputConfig :: (Core.Maybe DocumentInputConfig),
    -- | Optional. Output configurations. Defines if the output file should be stored within Cloud Storage as well as the desired output format. If not provided the translated file will only be returned through a byte-stream and its output mime type will be the same as the input file\'s mime type.
    documentOutputConfig :: (Core.Maybe DocumentOutputConfig),
    -- | Optional. Glossary to be applied. The glossary must be within the same region (have the same location-id) as the model, otherwise an INVALID_ARGUMENT (400) error is returned.
    glossaryConfig :: (Core.Maybe TranslateTextGlossaryConfig),
    -- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter. See https:\/\/cloud.google.com\/translate\/docs\/advanced\/labels for more information.
    labels :: (Core.Maybe TranslateDocumentRequest_Labels),
    -- | Optional. The @model@ type requested for this translation. The format depends on model type: - AutoML Translation models: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/{model-id}@ - General (built-in) models: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/general\/nmt@, If not provided, the default Google model (NMT) will be used for translation.
    model :: (Core.Maybe Core.Text),
    -- | Optional. The BCP-47 language code of the input document if known, for example, \"en-US\" or \"sr-Latn\". Supported language codes are listed in Language Support. If the source language isn\'t specified, the API attempts to identify the source language automatically and returns the source language within the response. Source language must be specified if the request contains a glossary or a custom model.
    sourceLanguageCode :: (Core.Maybe Core.Text),
    -- | Required. The BCP-47 language code to use for translation of the input document, set to one of the language codes listed in Language Support.
    targetLanguageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateDocumentRequest' with the minimum fields required to make a request.
newTranslateDocumentRequest ::
  TranslateDocumentRequest
newTranslateDocumentRequest =
  TranslateDocumentRequest
    { documentInputConfig = Core.Nothing,
      documentOutputConfig = Core.Nothing,
      glossaryConfig = Core.Nothing,
      labels = Core.Nothing,
      model = Core.Nothing,
      sourceLanguageCode = Core.Nothing,
      targetLanguageCode = Core.Nothing
    }

instance Core.FromJSON TranslateDocumentRequest where
  parseJSON =
    Core.withObject
      "TranslateDocumentRequest"
      ( \o ->
          TranslateDocumentRequest
            Core.<$> (o Core..:? "documentInputConfig")
            Core.<*> (o Core..:? "documentOutputConfig")
            Core.<*> (o Core..:? "glossaryConfig")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "model")
            Core.<*> (o Core..:? "sourceLanguageCode")
            Core.<*> (o Core..:? "targetLanguageCode")
      )

instance Core.ToJSON TranslateDocumentRequest where
  toJSON TranslateDocumentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("documentInputConfig" Core..=)
              Core.<$> documentInputConfig,
            ("documentOutputConfig" Core..=)
              Core.<$> documentOutputConfig,
            ("glossaryConfig" Core..=) Core.<$> glossaryConfig,
            ("labels" Core..=) Core.<$> labels,
            ("model" Core..=) Core.<$> model,
            ("sourceLanguageCode" Core..=)
              Core.<$> sourceLanguageCode,
            ("targetLanguageCode" Core..=)
              Core.<$> targetLanguageCode
          ]
      )

-- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter. See https:\/\/cloud.google.com\/translate\/docs\/advanced\/labels for more information.
--
-- /See:/ 'newTranslateDocumentRequest_Labels' smart constructor.
newtype TranslateDocumentRequest_Labels = TranslateDocumentRequest_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateDocumentRequest_Labels' with the minimum fields required to make a request.
newTranslateDocumentRequest_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  TranslateDocumentRequest_Labels
newTranslateDocumentRequest_Labels addtional =
  TranslateDocumentRequest_Labels {addtional = addtional}

instance
  Core.FromJSON
    TranslateDocumentRequest_Labels
  where
  parseJSON =
    Core.withObject
      "TranslateDocumentRequest_Labels"
      ( \o ->
          TranslateDocumentRequest_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON TranslateDocumentRequest_Labels where
  toJSON TranslateDocumentRequest_Labels {..} =
    Core.toJSON addtional

-- | A translated document response message.
--
-- /See:/ 'newTranslateDocumentResponse' smart constructor.
data TranslateDocumentResponse = TranslateDocumentResponse
  { -- | Translated document.
    documentTranslation :: (Core.Maybe DocumentTranslation),
    -- | The @glossary_config@ used for this translation.
    glossaryConfig :: (Core.Maybe TranslateTextGlossaryConfig),
    -- | The document\'s translation output if a glossary is provided in the request. This can be the same as [TranslateDocumentResponse.document_translation] if no glossary terms apply.
    glossaryDocumentTranslation :: (Core.Maybe DocumentTranslation),
    -- | Only present when \'model\' is present in the request. \'model\' is normalized to have a project number. For example: If the \'model\' field in TranslateDocumentRequest is: @projects\/{project-id}\/locations\/{location-id}\/models\/general\/nmt@ then @model@ here would be normalized to @projects\/{project-number}\/locations\/{location-id}\/models\/general\/nmt@.
    model :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateDocumentResponse' with the minimum fields required to make a request.
newTranslateDocumentResponse ::
  TranslateDocumentResponse
newTranslateDocumentResponse =
  TranslateDocumentResponse
    { documentTranslation = Core.Nothing,
      glossaryConfig = Core.Nothing,
      glossaryDocumentTranslation = Core.Nothing,
      model = Core.Nothing
    }

instance Core.FromJSON TranslateDocumentResponse where
  parseJSON =
    Core.withObject
      "TranslateDocumentResponse"
      ( \o ->
          TranslateDocumentResponse
            Core.<$> (o Core..:? "documentTranslation")
            Core.<*> (o Core..:? "glossaryConfig")
            Core.<*> (o Core..:? "glossaryDocumentTranslation")
            Core.<*> (o Core..:? "model")
      )

instance Core.ToJSON TranslateDocumentResponse where
  toJSON TranslateDocumentResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("documentTranslation" Core..=)
              Core.<$> documentTranslation,
            ("glossaryConfig" Core..=) Core.<$> glossaryConfig,
            ("glossaryDocumentTranslation" Core..=)
              Core.<$> glossaryDocumentTranslation,
            ("model" Core..=) Core.<$> model
          ]
      )

-- | Configures which glossary should be used for a specific target language, and defines options for applying that glossary.
--
-- /See:/ 'newTranslateTextGlossaryConfig' smart constructor.
data TranslateTextGlossaryConfig = TranslateTextGlossaryConfig
  { -- | Required. The @glossary@ to be applied for this translation. The format depends on glossary: - User provided custom glossary: @projects\/{project-number-or-id}\/locations\/{location-id}\/glossaries\/{glossary-id}@
    glossary :: (Core.Maybe Core.Text),
    -- | Optional. Indicates match is case-insensitive. Default value is false if missing.
    ignoreCase :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateTextGlossaryConfig' with the minimum fields required to make a request.
newTranslateTextGlossaryConfig ::
  TranslateTextGlossaryConfig
newTranslateTextGlossaryConfig =
  TranslateTextGlossaryConfig
    { glossary = Core.Nothing,
      ignoreCase = Core.Nothing
    }

instance Core.FromJSON TranslateTextGlossaryConfig where
  parseJSON =
    Core.withObject
      "TranslateTextGlossaryConfig"
      ( \o ->
          TranslateTextGlossaryConfig
            Core.<$> (o Core..:? "glossary")
            Core.<*> (o Core..:? "ignoreCase")
      )

instance Core.ToJSON TranslateTextGlossaryConfig where
  toJSON TranslateTextGlossaryConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("glossary" Core..=) Core.<$> glossary,
            ("ignoreCase" Core..=) Core.<$> ignoreCase
          ]
      )

-- | The request message for synchronous translation.
--
-- /See:/ 'newTranslateTextRequest' smart constructor.
data TranslateTextRequest = TranslateTextRequest
  { -- | Required. The content of the input in string format. We recommend the total content be less than 30k codepoints. The max length of this field is 1024. Use BatchTranslateText for larger text.
    contents :: (Core.Maybe [Core.Text]),
    -- | Optional. Glossary to be applied. The glossary must be within the same region (have the same location-id) as the model, otherwise an INVALID_ARGUMENT (400) error is returned.
    glossaryConfig :: (Core.Maybe TranslateTextGlossaryConfig),
    -- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter. See https:\/\/cloud.google.com\/translate\/docs\/advanced\/labels for more information.
    labels :: (Core.Maybe TranslateTextRequest_Labels),
    -- | Optional. The format of the source text, for example, \"text\/html\", \"text\/plain\". If left blank, the MIME type defaults to \"text\/html\".
    mimeType :: (Core.Maybe Core.Text),
    -- | Optional. The @model@ type requested for this translation. The format depends on model type: - AutoML Translation models: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/{model-id}@ - General (built-in) models: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/general\/nmt@, For global (non-regionalized) requests, use @location-id@ @global@. For example, @projects\/{project-number-or-id}\/locations\/global\/models\/general\/nmt@. If not provided, the default Google model (NMT) will be used
    model :: (Core.Maybe Core.Text),
    -- | Optional. The BCP-47 language code of the input text if known, for example, \"en-US\" or \"sr-Latn\". Supported language codes are listed in Language Support. If the source language isn\'t specified, the API attempts to identify the source language automatically and returns the source language within the response.
    sourceLanguageCode :: (Core.Maybe Core.Text),
    -- | Required. The BCP-47 language code to use for translation of the input text, set to one of the language codes listed in Language Support.
    targetLanguageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateTextRequest' with the minimum fields required to make a request.
newTranslateTextRequest ::
  TranslateTextRequest
newTranslateTextRequest =
  TranslateTextRequest
    { contents = Core.Nothing,
      glossaryConfig = Core.Nothing,
      labels = Core.Nothing,
      mimeType = Core.Nothing,
      model = Core.Nothing,
      sourceLanguageCode = Core.Nothing,
      targetLanguageCode = Core.Nothing
    }

instance Core.FromJSON TranslateTextRequest where
  parseJSON =
    Core.withObject
      "TranslateTextRequest"
      ( \o ->
          TranslateTextRequest
            Core.<$> (o Core..:? "contents" Core..!= Core.mempty)
            Core.<*> (o Core..:? "glossaryConfig")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "model")
            Core.<*> (o Core..:? "sourceLanguageCode")
            Core.<*> (o Core..:? "targetLanguageCode")
      )

instance Core.ToJSON TranslateTextRequest where
  toJSON TranslateTextRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("contents" Core..=) Core.<$> contents,
            ("glossaryConfig" Core..=) Core.<$> glossaryConfig,
            ("labels" Core..=) Core.<$> labels,
            ("mimeType" Core..=) Core.<$> mimeType,
            ("model" Core..=) Core.<$> model,
            ("sourceLanguageCode" Core..=)
              Core.<$> sourceLanguageCode,
            ("targetLanguageCode" Core..=)
              Core.<$> targetLanguageCode
          ]
      )

-- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter. See https:\/\/cloud.google.com\/translate\/docs\/advanced\/labels for more information.
--
-- /See:/ 'newTranslateTextRequest_Labels' smart constructor.
newtype TranslateTextRequest_Labels = TranslateTextRequest_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateTextRequest_Labels' with the minimum fields required to make a request.
newTranslateTextRequest_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  TranslateTextRequest_Labels
newTranslateTextRequest_Labels addtional =
  TranslateTextRequest_Labels {addtional = addtional}

instance Core.FromJSON TranslateTextRequest_Labels where
  parseJSON =
    Core.withObject
      "TranslateTextRequest_Labels"
      ( \o ->
          TranslateTextRequest_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON TranslateTextRequest_Labels where
  toJSON TranslateTextRequest_Labels {..} =
    Core.toJSON addtional

--
-- /See:/ 'newTranslateTextResponse' smart constructor.
data TranslateTextResponse = TranslateTextResponse
  { -- | Text translation responses if a glossary is provided in the request. This can be the same as @translations@ if no terms apply. This field has the same length as @contents@.
    glossaryTranslations :: (Core.Maybe [Translation]),
    -- | Text translation responses with no glossary applied. This field has the same length as @contents@.
    translations :: (Core.Maybe [Translation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateTextResponse' with the minimum fields required to make a request.
newTranslateTextResponse ::
  TranslateTextResponse
newTranslateTextResponse =
  TranslateTextResponse
    { glossaryTranslations = Core.Nothing,
      translations = Core.Nothing
    }

instance Core.FromJSON TranslateTextResponse where
  parseJSON =
    Core.withObject
      "TranslateTextResponse"
      ( \o ->
          TranslateTextResponse
            Core.<$> ( o Core..:? "glossaryTranslations"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "translations" Core..!= Core.mempty)
      )

instance Core.ToJSON TranslateTextResponse where
  toJSON TranslateTextResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("glossaryTranslations" Core..=)
              Core.<$> glossaryTranslations,
            ("translations" Core..=) Core.<$> translations
          ]
      )

-- | A single translation response.
--
-- /See:/ 'newTranslation' smart constructor.
data Translation = Translation
  { -- | The BCP-47 language code of source text in the initial request, detected automatically, if no source language was passed within the initial request. If the source language was passed, auto-detection of the language does not occur and this field is empty.
    detectedLanguageCode :: (Core.Maybe Core.Text),
    -- | The @glossary_config@ used for this translation.
    glossaryConfig :: (Core.Maybe TranslateTextGlossaryConfig),
    -- | Only present when @model@ is present in the request. @model@ here is normalized to have project number. For example: If the @model@ requested in TranslationTextRequest is @projects\/{project-id}\/locations\/{location-id}\/models\/general\/nmt@ then @model@ here would be normalized to @projects\/{project-number}\/locations\/{location-id}\/models\/general\/nmt@.
    model :: (Core.Maybe Core.Text),
    -- | Text translated into the target language. If an error occurs during translation, this field might be excluded from the response.
    translatedText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Translation' with the minimum fields required to make a request.
newTranslation ::
  Translation
newTranslation =
  Translation
    { detectedLanguageCode = Core.Nothing,
      glossaryConfig = Core.Nothing,
      model = Core.Nothing,
      translatedText = Core.Nothing
    }

instance Core.FromJSON Translation where
  parseJSON =
    Core.withObject
      "Translation"
      ( \o ->
          Translation
            Core.<$> (o Core..:? "detectedLanguageCode")
            Core.<*> (o Core..:? "glossaryConfig")
            Core.<*> (o Core..:? "model")
            Core.<*> (o Core..:? "translatedText")
      )

instance Core.ToJSON Translation where
  toJSON Translation {..} =
    Core.object
      ( Core.catMaybes
          [ ("detectedLanguageCode" Core..=)
              Core.<$> detectedLanguageCode,
            ("glossaryConfig" Core..=) Core.<$> glossaryConfig,
            ("model" Core..=) Core.<$> model,
            ("translatedText" Core..=) Core.<$> translatedText
          ]
      )

-- | The request message for Operations.WaitOperation.
--
-- /See:/ 'newWaitOperationRequest' smart constructor.
newtype WaitOperationRequest = WaitOperationRequest
  { -- | The maximum duration to wait before timing out. If left blank, the wait will be at most the time permitted by the underlying HTTP\/RPC protocol. If RPC context deadline is also specified, the shorter one will be used.
    timeout :: (Core.Maybe Core.GDuration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WaitOperationRequest' with the minimum fields required to make a request.
newWaitOperationRequest ::
  WaitOperationRequest
newWaitOperationRequest = WaitOperationRequest {timeout = Core.Nothing}

instance Core.FromJSON WaitOperationRequest where
  parseJSON =
    Core.withObject
      "WaitOperationRequest"
      ( \o ->
          WaitOperationRequest Core.<$> (o Core..:? "timeout")
      )

instance Core.ToJSON WaitOperationRequest where
  toJSON WaitOperationRequest {..} =
    Core.object
      ( Core.catMaybes
          [("timeout" Core..=) Core.<$> timeout]
      )
