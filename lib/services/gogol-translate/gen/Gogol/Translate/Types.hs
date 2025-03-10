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
-- Module      : Gogol.Translate.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Translate.Types
  ( -- * Configuration
    translateService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudTranslation'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AdaptiveMtDataset
    AdaptiveMtDataset (..),
    newAdaptiveMtDataset,

    -- ** AdaptiveMtFile
    AdaptiveMtFile (..),
    newAdaptiveMtFile,

    -- ** AdaptiveMtSentence
    AdaptiveMtSentence (..),
    newAdaptiveMtSentence,

    -- ** AdaptiveMtTranslateRequest
    AdaptiveMtTranslateRequest (..),
    newAdaptiveMtTranslateRequest,

    -- ** AdaptiveMtTranslateResponse
    AdaptiveMtTranslateResponse (..),
    newAdaptiveMtTranslateResponse,

    -- ** AdaptiveMtTranslation
    AdaptiveMtTranslation (..),
    newAdaptiveMtTranslation,

    -- ** BatchDocumentInputConfig
    BatchDocumentInputConfig (..),
    newBatchDocumentInputConfig,

    -- ** BatchDocumentOutputConfig
    BatchDocumentOutputConfig (..),
    newBatchDocumentOutputConfig,

    -- ** BatchTranslateDocumentRequest
    BatchTranslateDocumentRequest (..),
    newBatchTranslateDocumentRequest,

    -- ** BatchTranslateDocumentRequest_FormatConversions
    BatchTranslateDocumentRequest_FormatConversions (..),
    newBatchTranslateDocumentRequest_FormatConversions,

    -- ** BatchTranslateDocumentRequest_Glossaries
    BatchTranslateDocumentRequest_Glossaries (..),
    newBatchTranslateDocumentRequest_Glossaries,

    -- ** BatchTranslateDocumentRequest_Models
    BatchTranslateDocumentRequest_Models (..),
    newBatchTranslateDocumentRequest_Models,

    -- ** BatchTranslateTextRequest
    BatchTranslateTextRequest (..),
    newBatchTranslateTextRequest,

    -- ** BatchTranslateTextRequest_Glossaries
    BatchTranslateTextRequest_Glossaries (..),
    newBatchTranslateTextRequest_Glossaries,

    -- ** BatchTranslateTextRequest_Labels
    BatchTranslateTextRequest_Labels (..),
    newBatchTranslateTextRequest_Labels,

    -- ** BatchTranslateTextRequest_Models
    BatchTranslateTextRequest_Models (..),
    newBatchTranslateTextRequest_Models,

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** Dataset
    Dataset (..),
    newDataset,

    -- ** DatasetInputConfig
    DatasetInputConfig (..),
    newDatasetInputConfig,

    -- ** DatasetOutputConfig
    DatasetOutputConfig (..),
    newDatasetOutputConfig,

    -- ** DetectLanguageRequest
    DetectLanguageRequest (..),
    newDetectLanguageRequest,

    -- ** DetectLanguageRequest_Labels
    DetectLanguageRequest_Labels (..),
    newDetectLanguageRequest_Labels,

    -- ** DetectLanguageResponse
    DetectLanguageResponse (..),
    newDetectLanguageResponse,

    -- ** DetectedLanguage
    DetectedLanguage (..),
    newDetectedLanguage,

    -- ** DocumentInputConfig
    DocumentInputConfig (..),
    newDocumentInputConfig,

    -- ** DocumentOutputConfig
    DocumentOutputConfig (..),
    newDocumentOutputConfig,

    -- ** DocumentTranslation
    DocumentTranslation (..),
    newDocumentTranslation,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Example
    Example (..),
    newExample,

    -- ** ExportDataRequest
    ExportDataRequest (..),
    newExportDataRequest,

    -- ** FileInputSource
    FileInputSource (..),
    newFileInputSource,

    -- ** GcsDestination
    GcsDestination (..),
    newGcsDestination,

    -- ** GcsInputSource
    GcsInputSource (..),
    newGcsInputSource,

    -- ** GcsOutputDestination
    GcsOutputDestination (..),
    newGcsOutputDestination,

    -- ** GcsSource
    GcsSource (..),
    newGcsSource,

    -- ** Glossary
    Glossary (..),
    newGlossary,

    -- ** GlossaryConfig
    GlossaryConfig (..),
    newGlossaryConfig,

    -- ** GlossaryEntry
    GlossaryEntry (..),
    newGlossaryEntry,

    -- ** GlossaryInputConfig
    GlossaryInputConfig (..),
    newGlossaryInputConfig,

    -- ** GlossaryTerm
    GlossaryTerm (..),
    newGlossaryTerm,

    -- ** GlossaryTermsPair
    GlossaryTermsPair (..),
    newGlossaryTermsPair,

    -- ** GlossaryTermsSet
    GlossaryTermsSet (..),
    newGlossaryTermsSet,

    -- ** ImportAdaptiveMtFileRequest
    ImportAdaptiveMtFileRequest (..),
    newImportAdaptiveMtFileRequest,

    -- ** ImportAdaptiveMtFileResponse
    ImportAdaptiveMtFileResponse (..),
    newImportAdaptiveMtFileResponse,

    -- ** ImportDataRequest
    ImportDataRequest (..),
    newImportDataRequest,

    -- ** InputConfig
    InputConfig (..),
    newInputConfig,

    -- ** InputFile
    InputFile (..),
    newInputFile,

    -- ** LanguageCodePair
    LanguageCodePair (..),
    newLanguageCodePair,

    -- ** LanguageCodesSet
    LanguageCodesSet (..),
    newLanguageCodesSet,

    -- ** ListAdaptiveMtDatasetsResponse
    ListAdaptiveMtDatasetsResponse (..),
    newListAdaptiveMtDatasetsResponse,

    -- ** ListAdaptiveMtFilesResponse
    ListAdaptiveMtFilesResponse (..),
    newListAdaptiveMtFilesResponse,

    -- ** ListAdaptiveMtSentencesResponse
    ListAdaptiveMtSentencesResponse (..),
    newListAdaptiveMtSentencesResponse,

    -- ** ListDatasetsResponse
    ListDatasetsResponse (..),
    newListDatasetsResponse,

    -- ** ListExamplesResponse
    ListExamplesResponse (..),
    newListExamplesResponse,

    -- ** ListGlossariesResponse
    ListGlossariesResponse (..),
    newListGlossariesResponse,

    -- ** ListGlossaryEntriesResponse
    ListGlossaryEntriesResponse (..),
    newListGlossaryEntriesResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListModelsResponse
    ListModelsResponse (..),
    newListModelsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** Model
    Model (..),
    newModel,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OutputConfig
    OutputConfig (..),
    newOutputConfig,

    -- ** ReferenceSentenceConfig
    ReferenceSentenceConfig (..),
    newReferenceSentenceConfig,

    -- ** ReferenceSentencePair
    ReferenceSentencePair (..),
    newReferenceSentencePair,

    -- ** ReferenceSentencePairList
    ReferenceSentencePairList (..),
    newReferenceSentencePairList,

    -- ** Romanization
    Romanization (..),
    newRomanization,

    -- ** RomanizeTextRequest
    RomanizeTextRequest (..),
    newRomanizeTextRequest,

    -- ** RomanizeTextResponse
    RomanizeTextResponse (..),
    newRomanizeTextResponse,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** SupportedLanguage
    SupportedLanguage (..),
    newSupportedLanguage,

    -- ** SupportedLanguages
    SupportedLanguages (..),
    newSupportedLanguages,

    -- ** TranslateDocumentRequest
    TranslateDocumentRequest (..),
    newTranslateDocumentRequest,

    -- ** TranslateDocumentRequest_Labels
    TranslateDocumentRequest_Labels (..),
    newTranslateDocumentRequest_Labels,

    -- ** TranslateDocumentResponse
    TranslateDocumentResponse (..),
    newTranslateDocumentResponse,

    -- ** TranslateTextGlossaryConfig
    TranslateTextGlossaryConfig (..),
    newTranslateTextGlossaryConfig,

    -- ** TranslateTextRequest
    TranslateTextRequest (..),
    newTranslateTextRequest,

    -- ** TranslateTextRequest_Labels
    TranslateTextRequest_Labels (..),
    newTranslateTextRequest_Labels,

    -- ** TranslateTextResponse
    TranslateTextResponse (..),
    newTranslateTextResponse,

    -- ** Translation
    Translation (..),
    newTranslation,

    -- ** TransliterationConfig
    TransliterationConfig (..),
    newTransliterationConfig,

    -- ** WaitOperationRequest
    WaitOperationRequest (..),
    newWaitOperationRequest,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Internal.Product
import Gogol.Translate.Internal.Sum

-- | Default request referring to version @v3@ of the Cloud Translation API. This contains the host and root path used as a starting point for constructing service requests.
translateService :: Core.ServiceConfig
translateService =
  Core.defaultService
    (Core.ServiceId "translate:v3")
    "translation.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | Translate text from one language to another using Google Translate
type CloudTranslation'FullControl =
  "https://www.googleapis.com/auth/cloud-translation"
