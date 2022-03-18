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
-- Module      : Network.Google.Translate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Integrates text translation into your website or application.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference>
module Network.Google.Translate
  ( -- * Configuration
    translateService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudTranslationScope,

    -- * Resources

    -- ** translate.projects.detectLanguage
    TranslateProjectsDetectLanguageResource,
    newTranslateProjectsDetectLanguage,
    TranslateProjectsDetectLanguage,

    -- ** translate.projects.getSupportedLanguages
    TranslateProjectsGetSupportedLanguagesResource,
    newTranslateProjectsGetSupportedLanguages,
    TranslateProjectsGetSupportedLanguages,

    -- ** translate.projects.locations.batchTranslateDocument
    TranslateProjectsLocationsBatchTranslateDocumentResource,
    newTranslateProjectsLocationsBatchTranslateDocument,
    TranslateProjectsLocationsBatchTranslateDocument,

    -- ** translate.projects.locations.batchTranslateText
    TranslateProjectsLocationsBatchTranslateTextResource,
    newTranslateProjectsLocationsBatchTranslateText,
    TranslateProjectsLocationsBatchTranslateText,

    -- ** translate.projects.locations.detectLanguage
    TranslateProjectsLocationsDetectLanguageResource,
    newTranslateProjectsLocationsDetectLanguage,
    TranslateProjectsLocationsDetectLanguage,

    -- ** translate.projects.locations.get
    TranslateProjectsLocationsGetResource,
    newTranslateProjectsLocationsGet,
    TranslateProjectsLocationsGet,

    -- ** translate.projects.locations.getSupportedLanguages
    TranslateProjectsLocationsGetSupportedLanguagesResource,
    newTranslateProjectsLocationsGetSupportedLanguages,
    TranslateProjectsLocationsGetSupportedLanguages,

    -- ** translate.projects.locations.glossaries.create
    TranslateProjectsLocationsGlossariesCreateResource,
    newTranslateProjectsLocationsGlossariesCreate,
    TranslateProjectsLocationsGlossariesCreate,

    -- ** translate.projects.locations.glossaries.delete
    TranslateProjectsLocationsGlossariesDeleteResource,
    newTranslateProjectsLocationsGlossariesDelete,
    TranslateProjectsLocationsGlossariesDelete,

    -- ** translate.projects.locations.glossaries.get
    TranslateProjectsLocationsGlossariesGetResource,
    newTranslateProjectsLocationsGlossariesGet,
    TranslateProjectsLocationsGlossariesGet,

    -- ** translate.projects.locations.glossaries.list
    TranslateProjectsLocationsGlossariesListResource,
    newTranslateProjectsLocationsGlossariesList,
    TranslateProjectsLocationsGlossariesList,

    -- ** translate.projects.locations.list
    TranslateProjectsLocationsListResource,
    newTranslateProjectsLocationsList,
    TranslateProjectsLocationsList,

    -- ** translate.projects.locations.operations.cancel
    TranslateProjectsLocationsOperationsCancelResource,
    newTranslateProjectsLocationsOperationsCancel,
    TranslateProjectsLocationsOperationsCancel,

    -- ** translate.projects.locations.operations.delete
    TranslateProjectsLocationsOperationsDeleteResource,
    newTranslateProjectsLocationsOperationsDelete,
    TranslateProjectsLocationsOperationsDelete,

    -- ** translate.projects.locations.operations.get
    TranslateProjectsLocationsOperationsGetResource,
    newTranslateProjectsLocationsOperationsGet,
    TranslateProjectsLocationsOperationsGet,

    -- ** translate.projects.locations.operations.list
    TranslateProjectsLocationsOperationsListResource,
    newTranslateProjectsLocationsOperationsList,
    TranslateProjectsLocationsOperationsList,

    -- ** translate.projects.locations.operations.wait
    TranslateProjectsLocationsOperationsWaitResource,
    newTranslateProjectsLocationsOperationsWait,
    TranslateProjectsLocationsOperationsWait,

    -- ** translate.projects.locations.translateDocument
    TranslateProjectsLocationsTranslateDocumentResource,
    newTranslateProjectsLocationsTranslateDocument,
    TranslateProjectsLocationsTranslateDocument,

    -- ** translate.projects.locations.translateText
    TranslateProjectsLocationsTranslateTextResource,
    newTranslateProjectsLocationsTranslateText,
    TranslateProjectsLocationsTranslateText,

    -- ** translate.projects.translateText
    TranslateProjectsTranslateTextResource,
    newTranslateProjectsTranslateText,
    TranslateProjectsTranslateText,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

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

    -- ** GcsDestination
    GcsDestination (..),
    newGcsDestination,

    -- ** GcsSource
    GcsSource (..),
    newGcsSource,

    -- ** Glossary
    Glossary (..),
    newGlossary,

    -- ** GlossaryInputConfig
    GlossaryInputConfig (..),
    newGlossaryInputConfig,

    -- ** InputConfig
    InputConfig (..),
    newInputConfig,

    -- ** LanguageCodePair
    LanguageCodePair (..),
    newLanguageCodePair,

    -- ** LanguageCodesSet
    LanguageCodesSet (..),
    newLanguageCodesSet,

    -- ** ListGlossariesResponse
    ListGlossariesResponse (..),
    newListGlossariesResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

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

    -- ** WaitOperationRequest
    WaitOperationRequest (..),
    newWaitOperationRequest,
  )
where

import Network.Google.Translate.Projects.DetectLanguage
import Network.Google.Translate.Projects.GetSupportedLanguages
import Network.Google.Translate.Projects.Locations.BatchTranslateDocument
import Network.Google.Translate.Projects.Locations.BatchTranslateText
import Network.Google.Translate.Projects.Locations.DetectLanguage
import Network.Google.Translate.Projects.Locations.Get
import Network.Google.Translate.Projects.Locations.GetSupportedLanguages
import Network.Google.Translate.Projects.Locations.Glossaries.Create
import Network.Google.Translate.Projects.Locations.Glossaries.Delete
import Network.Google.Translate.Projects.Locations.Glossaries.Get
import Network.Google.Translate.Projects.Locations.Glossaries.List
import Network.Google.Translate.Projects.Locations.List
import Network.Google.Translate.Projects.Locations.Operations.Cancel
import Network.Google.Translate.Projects.Locations.Operations.Delete
import Network.Google.Translate.Projects.Locations.Operations.Get
import Network.Google.Translate.Projects.Locations.Operations.List
import Network.Google.Translate.Projects.Locations.Operations.Wait
import Network.Google.Translate.Projects.Locations.TranslateDocument
import Network.Google.Translate.Projects.Locations.TranslateText
import Network.Google.Translate.Projects.TranslateText
import Network.Google.Translate.Types
