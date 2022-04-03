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
-- Module      : Gogol.Translate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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

    -- ** translate.projects.locations.batchTranslateDocument
    TranslateProjectsLocationsBatchTranslateDocumentResource,
    TranslateProjectsLocationsBatchTranslateDocument (..),
    newTranslateProjectsLocationsBatchTranslateDocument,

    -- ** translate.projects.locations.batchTranslateText
    TranslateProjectsLocationsBatchTranslateTextResource,
    TranslateProjectsLocationsBatchTranslateText (..),
    newTranslateProjectsLocationsBatchTranslateText,

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

    -- ** translate.projects.locations.glossaries.list
    TranslateProjectsLocationsGlossariesListResource,
    TranslateProjectsLocationsGlossariesList (..),
    newTranslateProjectsLocationsGlossariesList,

    -- ** translate.projects.locations.list
    TranslateProjectsLocationsListResource,
    TranslateProjectsLocationsList (..),
    newTranslateProjectsLocationsList,

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

    -- ** translate.projects.locations.translateDocument
    TranslateProjectsLocationsTranslateDocumentResource,
    TranslateProjectsLocationsTranslateDocument (..),
    newTranslateProjectsLocationsTranslateDocument,

    -- ** translate.projects.locations.translateText
    TranslateProjectsLocationsTranslateTextResource,
    TranslateProjectsLocationsTranslateText (..),
    newTranslateProjectsLocationsTranslateText,

    -- ** translate.projects.translateText
    TranslateProjectsTranslateTextResource,
    TranslateProjectsTranslateText (..),
    newTranslateProjectsTranslateText,

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

import Gogol.Translate.Projects.DetectLanguage
import Gogol.Translate.Projects.GetSupportedLanguages
import Gogol.Translate.Projects.Locations.BatchTranslateDocument
import Gogol.Translate.Projects.Locations.BatchTranslateText
import Gogol.Translate.Projects.Locations.DetectLanguage
import Gogol.Translate.Projects.Locations.Get
import Gogol.Translate.Projects.Locations.GetSupportedLanguages
import Gogol.Translate.Projects.Locations.Glossaries.Create
import Gogol.Translate.Projects.Locations.Glossaries.Delete
import Gogol.Translate.Projects.Locations.Glossaries.Get
import Gogol.Translate.Projects.Locations.Glossaries.List
import Gogol.Translate.Projects.Locations.List
import Gogol.Translate.Projects.Locations.Operations.Cancel
import Gogol.Translate.Projects.Locations.Operations.Delete
import Gogol.Translate.Projects.Locations.Operations.Get
import Gogol.Translate.Projects.Locations.Operations.List
import Gogol.Translate.Projects.Locations.Operations.Wait
import Gogol.Translate.Projects.Locations.TranslateDocument
import Gogol.Translate.Projects.Locations.TranslateText
import Gogol.Translate.Projects.TranslateText
import Gogol.Translate.Types
