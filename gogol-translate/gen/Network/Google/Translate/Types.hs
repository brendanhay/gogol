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
-- Module      : Network.Google.Translate.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Translate.Types
  ( -- * Configuration
    translateService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudTranslationScope,

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

import qualified Network.Google.Prelude as Core
import Network.Google.Translate.Internal.Product
import Network.Google.Translate.Internal.Sum

-- | Default request referring to version @v3@ of the Cloud Translation API. This contains the host and root path used as a starting point for constructing service requests.
translateService :: Core.ServiceConfig
translateService =
  Core.defaultService
    (Core.ServiceId "translate:v3")
    "translation.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | Translate text from one language to another using Google Translate
cloudTranslationScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-translation"]
cloudTranslationScope = Core.Proxy
