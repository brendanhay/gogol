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
-- Module      : Gogol.Translate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Integrates text translation into your website or application.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference>
module Gogol.Translate
  ( -- * Configuration
    translateService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudTranslation'FullControl,

    -- * Resources

    -- ** translate.projects.detectLanguage
    TranslateProjectsDetectLanguageResource,
    TranslateProjectsDetectLanguage (..),
    newTranslateProjectsDetectLanguage,

    -- ** translate.projects.getSupportedLanguages
    TranslateProjectsGetSupportedLanguagesResource,
    TranslateProjectsGetSupportedLanguages (..),
    newTranslateProjectsGetSupportedLanguages,

    -- ** translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.adaptiveMtSentences.list
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesAdaptiveMtSentencesListResource,
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesAdaptiveMtSentencesList (..),
    newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesAdaptiveMtSentencesList,

    -- ** translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.delete
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDeleteResource,
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete (..),
    newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesDelete,

    -- ** translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.get
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesGetResource,
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesGet (..),
    newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesGet,

    -- ** translate.projects.locations.adaptiveMtDatasets.adaptiveMtFiles.list
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesListResource,
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList (..),
    newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesList,

    -- ** translate.projects.locations.adaptiveMtDatasets.adaptiveMtSentences.list
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesListResource,
    TranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList (..),
    newTranslateProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesList,

    -- ** translate.projects.locations.adaptiveMtDatasets.create
    TranslateProjectsLocationsAdaptiveMtDatasetsCreateResource,
    TranslateProjectsLocationsAdaptiveMtDatasetsCreate (..),
    newTranslateProjectsLocationsAdaptiveMtDatasetsCreate,

    -- ** translate.projects.locations.adaptiveMtDatasets.delete
    TranslateProjectsLocationsAdaptiveMtDatasetsDeleteResource,
    TranslateProjectsLocationsAdaptiveMtDatasetsDelete (..),
    newTranslateProjectsLocationsAdaptiveMtDatasetsDelete,

    -- ** translate.projects.locations.adaptiveMtDatasets.get
    TranslateProjectsLocationsAdaptiveMtDatasetsGetResource,
    TranslateProjectsLocationsAdaptiveMtDatasetsGet (..),
    newTranslateProjectsLocationsAdaptiveMtDatasetsGet,

    -- ** translate.projects.locations.adaptiveMtDatasets.importAdaptiveMtFile
    TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFileResource,
    TranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile (..),
    newTranslateProjectsLocationsAdaptiveMtDatasetsImportAdaptiveMtFile,

    -- ** translate.projects.locations.adaptiveMtDatasets.list
    TranslateProjectsLocationsAdaptiveMtDatasetsListResource,
    TranslateProjectsLocationsAdaptiveMtDatasetsList (..),
    newTranslateProjectsLocationsAdaptiveMtDatasetsList,

    -- ** translate.projects.locations.adaptiveMtTranslate
    TranslateProjectsLocationsAdaptiveMtTranslateResource,
    TranslateProjectsLocationsAdaptiveMtTranslate (..),
    newTranslateProjectsLocationsAdaptiveMtTranslate,

    -- ** translate.projects.locations.batchTranslateDocument
    TranslateProjectsLocationsBatchTranslateDocumentResource,
    TranslateProjectsLocationsBatchTranslateDocument (..),
    newTranslateProjectsLocationsBatchTranslateDocument,

    -- ** translate.projects.locations.batchTranslateText
    TranslateProjectsLocationsBatchTranslateTextResource,
    TranslateProjectsLocationsBatchTranslateText (..),
    newTranslateProjectsLocationsBatchTranslateText,

    -- ** translate.projects.locations.datasets.create
    TranslateProjectsLocationsDatasetsCreateResource,
    TranslateProjectsLocationsDatasetsCreate (..),
    newTranslateProjectsLocationsDatasetsCreate,

    -- ** translate.projects.locations.datasets.delete
    TranslateProjectsLocationsDatasetsDeleteResource,
    TranslateProjectsLocationsDatasetsDelete (..),
    newTranslateProjectsLocationsDatasetsDelete,

    -- ** translate.projects.locations.datasets.examples.list
    TranslateProjectsLocationsDatasetsExamplesListResource,
    TranslateProjectsLocationsDatasetsExamplesList (..),
    newTranslateProjectsLocationsDatasetsExamplesList,

    -- ** translate.projects.locations.datasets.exportData
    TranslateProjectsLocationsDatasetsExportDataResource,
    TranslateProjectsLocationsDatasetsExportData (..),
    newTranslateProjectsLocationsDatasetsExportData,

    -- ** translate.projects.locations.datasets.get
    TranslateProjectsLocationsDatasetsGetResource,
    TranslateProjectsLocationsDatasetsGet (..),
    newTranslateProjectsLocationsDatasetsGet,

    -- ** translate.projects.locations.datasets.importData
    TranslateProjectsLocationsDatasetsImportDataResource,
    TranslateProjectsLocationsDatasetsImportData (..),
    newTranslateProjectsLocationsDatasetsImportData,

    -- ** translate.projects.locations.datasets.list
    TranslateProjectsLocationsDatasetsListResource,
    TranslateProjectsLocationsDatasetsList (..),
    newTranslateProjectsLocationsDatasetsList,

    -- ** translate.projects.locations.detectLanguage
    TranslateProjectsLocationsDetectLanguageResource,
    TranslateProjectsLocationsDetectLanguage (..),
    newTranslateProjectsLocationsDetectLanguage,

    -- ** translate.projects.locations.get
    TranslateProjectsLocationsGetResource,
    TranslateProjectsLocationsGet (..),
    newTranslateProjectsLocationsGet,

    -- ** translate.projects.locations.getSupportedLanguages
    TranslateProjectsLocationsGetSupportedLanguagesResource,
    TranslateProjectsLocationsGetSupportedLanguages (..),
    newTranslateProjectsLocationsGetSupportedLanguages,

    -- ** translate.projects.locations.glossaries.create
    TranslateProjectsLocationsGlossariesCreateResource,
    TranslateProjectsLocationsGlossariesCreate (..),
    newTranslateProjectsLocationsGlossariesCreate,

    -- ** translate.projects.locations.glossaries.delete
    TranslateProjectsLocationsGlossariesDeleteResource,
    TranslateProjectsLocationsGlossariesDelete (..),
    newTranslateProjectsLocationsGlossariesDelete,

    -- ** translate.projects.locations.glossaries.get
    TranslateProjectsLocationsGlossariesGetResource,
    TranslateProjectsLocationsGlossariesGet (..),
    newTranslateProjectsLocationsGlossariesGet,

    -- ** translate.projects.locations.glossaries.glossaryEntries.create
    TranslateProjectsLocationsGlossariesGlossaryEntriesCreateResource,
    TranslateProjectsLocationsGlossariesGlossaryEntriesCreate (..),
    newTranslateProjectsLocationsGlossariesGlossaryEntriesCreate,

    -- ** translate.projects.locations.glossaries.glossaryEntries.delete
    TranslateProjectsLocationsGlossariesGlossaryEntriesDeleteResource,
    TranslateProjectsLocationsGlossariesGlossaryEntriesDelete (..),
    newTranslateProjectsLocationsGlossariesGlossaryEntriesDelete,

    -- ** translate.projects.locations.glossaries.glossaryEntries.get
    TranslateProjectsLocationsGlossariesGlossaryEntriesGetResource,
    TranslateProjectsLocationsGlossariesGlossaryEntriesGet (..),
    newTranslateProjectsLocationsGlossariesGlossaryEntriesGet,

    -- ** translate.projects.locations.glossaries.glossaryEntries.list
    TranslateProjectsLocationsGlossariesGlossaryEntriesListResource,
    TranslateProjectsLocationsGlossariesGlossaryEntriesList (..),
    newTranslateProjectsLocationsGlossariesGlossaryEntriesList,

    -- ** translate.projects.locations.glossaries.glossaryEntries.patch
    TranslateProjectsLocationsGlossariesGlossaryEntriesPatchResource,
    TranslateProjectsLocationsGlossariesGlossaryEntriesPatch (..),
    newTranslateProjectsLocationsGlossariesGlossaryEntriesPatch,

    -- ** translate.projects.locations.glossaries.list
    TranslateProjectsLocationsGlossariesListResource,
    TranslateProjectsLocationsGlossariesList (..),
    newTranslateProjectsLocationsGlossariesList,

    -- ** translate.projects.locations.glossaries.patch
    TranslateProjectsLocationsGlossariesPatchResource,
    TranslateProjectsLocationsGlossariesPatch (..),
    newTranslateProjectsLocationsGlossariesPatch,

    -- ** translate.projects.locations.list
    TranslateProjectsLocationsListResource,
    TranslateProjectsLocationsList (..),
    newTranslateProjectsLocationsList,

    -- ** translate.projects.locations.models.create
    TranslateProjectsLocationsModelsCreateResource,
    TranslateProjectsLocationsModelsCreate (..),
    newTranslateProjectsLocationsModelsCreate,

    -- ** translate.projects.locations.models.delete
    TranslateProjectsLocationsModelsDeleteResource,
    TranslateProjectsLocationsModelsDelete (..),
    newTranslateProjectsLocationsModelsDelete,

    -- ** translate.projects.locations.models.get
    TranslateProjectsLocationsModelsGetResource,
    TranslateProjectsLocationsModelsGet (..),
    newTranslateProjectsLocationsModelsGet,

    -- ** translate.projects.locations.models.list
    TranslateProjectsLocationsModelsListResource,
    TranslateProjectsLocationsModelsList (..),
    newTranslateProjectsLocationsModelsList,

    -- ** translate.projects.locations.operations.cancel
    TranslateProjectsLocationsOperationsCancelResource,
    TranslateProjectsLocationsOperationsCancel (..),
    newTranslateProjectsLocationsOperationsCancel,

    -- ** translate.projects.locations.operations.delete
    TranslateProjectsLocationsOperationsDeleteResource,
    TranslateProjectsLocationsOperationsDelete (..),
    newTranslateProjectsLocationsOperationsDelete,

    -- ** translate.projects.locations.operations.get
    TranslateProjectsLocationsOperationsGetResource,
    TranslateProjectsLocationsOperationsGet (..),
    newTranslateProjectsLocationsOperationsGet,

    -- ** translate.projects.locations.operations.list
    TranslateProjectsLocationsOperationsListResource,
    TranslateProjectsLocationsOperationsList (..),
    newTranslateProjectsLocationsOperationsList,

    -- ** translate.projects.locations.operations.wait
    TranslateProjectsLocationsOperationsWaitResource,
    TranslateProjectsLocationsOperationsWait (..),
    newTranslateProjectsLocationsOperationsWait,

    -- ** translate.projects.locations.romanizeText
    TranslateProjectsLocationsRomanizeTextResource,
    TranslateProjectsLocationsRomanizeText (..),
    newTranslateProjectsLocationsRomanizeText,

    -- ** translate.projects.locations.translateDocument
    TranslateProjectsLocationsTranslateDocumentResource,
    TranslateProjectsLocationsTranslateDocument (..),
    newTranslateProjectsLocationsTranslateDocument,

    -- ** translate.projects.locations.translateText
    TranslateProjectsLocationsTranslateTextResource,
    TranslateProjectsLocationsTranslateText (..),
    newTranslateProjectsLocationsTranslateText,

    -- ** translate.projects.romanizeText
    TranslateProjectsRomanizeTextResource,
    TranslateProjectsRomanizeText (..),
    newTranslateProjectsRomanizeText,

    -- ** translate.projects.translateText
    TranslateProjectsTranslateTextResource,
    TranslateProjectsTranslateText (..),
    newTranslateProjectsTranslateText,

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

import Gogol.Translate.Projects.DetectLanguage
import Gogol.Translate.Projects.GetSupportedLanguages
import Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.AdaptiveMtFiles.AdaptiveMtSentences.List
import Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.AdaptiveMtFiles.Delete
import Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.AdaptiveMtFiles.Get
import Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.AdaptiveMtFiles.List
import Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.AdaptiveMtSentences.List
import Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.Create
import Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.Delete
import Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.Get
import Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.ImportAdaptiveMtFile
import Gogol.Translate.Projects.Locations.AdaptiveMtDatasets.List
import Gogol.Translate.Projects.Locations.AdaptiveMtTranslate
import Gogol.Translate.Projects.Locations.BatchTranslateDocument
import Gogol.Translate.Projects.Locations.BatchTranslateText
import Gogol.Translate.Projects.Locations.Datasets.Create
import Gogol.Translate.Projects.Locations.Datasets.Delete
import Gogol.Translate.Projects.Locations.Datasets.Examples.List
import Gogol.Translate.Projects.Locations.Datasets.ExportData
import Gogol.Translate.Projects.Locations.Datasets.Get
import Gogol.Translate.Projects.Locations.Datasets.ImportData
import Gogol.Translate.Projects.Locations.Datasets.List
import Gogol.Translate.Projects.Locations.DetectLanguage
import Gogol.Translate.Projects.Locations.Get
import Gogol.Translate.Projects.Locations.GetSupportedLanguages
import Gogol.Translate.Projects.Locations.Glossaries.Create
import Gogol.Translate.Projects.Locations.Glossaries.Delete
import Gogol.Translate.Projects.Locations.Glossaries.Get
import Gogol.Translate.Projects.Locations.Glossaries.GlossaryEntries.Create
import Gogol.Translate.Projects.Locations.Glossaries.GlossaryEntries.Delete
import Gogol.Translate.Projects.Locations.Glossaries.GlossaryEntries.Get
import Gogol.Translate.Projects.Locations.Glossaries.GlossaryEntries.List
import Gogol.Translate.Projects.Locations.Glossaries.GlossaryEntries.Patch
import Gogol.Translate.Projects.Locations.Glossaries.List
import Gogol.Translate.Projects.Locations.Glossaries.Patch
import Gogol.Translate.Projects.Locations.List
import Gogol.Translate.Projects.Locations.Models.Create
import Gogol.Translate.Projects.Locations.Models.Delete
import Gogol.Translate.Projects.Locations.Models.Get
import Gogol.Translate.Projects.Locations.Models.List
import Gogol.Translate.Projects.Locations.Operations.Cancel
import Gogol.Translate.Projects.Locations.Operations.Delete
import Gogol.Translate.Projects.Locations.Operations.Get
import Gogol.Translate.Projects.Locations.Operations.List
import Gogol.Translate.Projects.Locations.Operations.Wait
import Gogol.Translate.Projects.Locations.RomanizeText
import Gogol.Translate.Projects.Locations.TranslateDocument
import Gogol.Translate.Projects.Locations.TranslateText
import Gogol.Translate.Projects.RomanizeText
import Gogol.Translate.Projects.TranslateText
import Gogol.Translate.Types
