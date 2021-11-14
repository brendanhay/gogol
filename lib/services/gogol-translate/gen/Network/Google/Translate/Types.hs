{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Translate.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Translate.Types
    (
    -- * Service Configuration
      translateService

    -- * OAuth Scopes
    , cloudPlatformScope
    , cloudTranslationScope

    -- * SupportedLanguage
    , SupportedLanguage
    , supportedLanguage
    , slLanguageCode
    , slSupportTarget
    , slSupportSource
    , slDisplayName

    -- * DetectLanguageRequest
    , DetectLanguageRequest
    , detectLanguageRequest
    , dlrContent
    , dlrMimeType
    , dlrModel
    , dlrLabels

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * WaitOperationRequest
    , WaitOperationRequest
    , waitOperationRequest
    , worTimeout

    -- * TranslateTextGlossaryConfig
    , TranslateTextGlossaryConfig
    , translateTextGlossaryConfig
    , ttgcIgnoreCase
    , ttgcGlossary

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- * GcsSource
    , GcsSource
    , gcsSource
    , gsInputURI

    -- * TranslateTextRequest
    , TranslateTextRequest
    , translateTextRequest
    , ttrGlossaryConfig
    , ttrContents
    , ttrTargetLanguageCode
    , ttrMimeType
    , ttrModel
    , ttrSourceLanguageCode
    , ttrLabels

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Empty
    , Empty
    , empty

    -- * TranslateTextResponse
    , TranslateTextResponse
    , translateTextResponse
    , ttrGlossaryTranslations
    , ttrTranslations

    -- * GcsDestination
    , GcsDestination
    , gcsDestination
    , gdOutputURIPrefix

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * BatchTranslateTextRequestGlossaries
    , BatchTranslateTextRequestGlossaries
    , batchTranslateTextRequestGlossaries
    , bttrgAddtional

    -- * InputConfig
    , InputConfig
    , inputConfig
    , icGcsSource
    , icMimeType

    -- * DetectedLanguage
    , DetectedLanguage
    , detectedLanguage
    , dlLanguageCode
    , dlConfidence

    -- * SupportedLanguages
    , SupportedLanguages
    , supportedLanguages
    , slLanguages

    -- * TranslateTextRequestLabels
    , TranslateTextRequestLabels
    , translateTextRequestLabels
    , ttrlAddtional

    -- * Xgafv
    , Xgafv (..)

    -- * BatchTranslateTextRequestModels
    , BatchTranslateTextRequestModels
    , batchTranslateTextRequestModels
    , bttrmAddtional

    -- * GlossaryInputConfig
    , GlossaryInputConfig
    , glossaryInputConfig
    , gicGcsSource

    -- * LanguageCodePair
    , LanguageCodePair
    , languageCodePair
    , lcpTargetLanguageCode
    , lcpSourceLanguageCode

    -- * OutputConfig
    , OutputConfig
    , outputConfig
    , ocGcsDestination

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * Translation
    , Translation
    , translation
    , tGlossaryConfig
    , tDetectedLanguageCode
    , tModel
    , tTranslatedText

    -- * BatchTranslateTextRequestLabels
    , BatchTranslateTextRequestLabels
    , batchTranslateTextRequestLabels
    , bttrlAddtional

    -- * DetectLanguageResponse
    , DetectLanguageResponse
    , detectLanguageResponse
    , dlrLanguages

    -- * BatchTranslateTextRequest
    , BatchTranslateTextRequest
    , batchTranslateTextRequest
    , bttrInputConfigs
    , bttrTargetLanguageCodes
    , bttrModels
    , bttrSourceLanguageCode
    , bttrOutputConfig
    , bttrLabels
    , bttrGlossaries

    -- * Glossary
    , Glossary
    , glossary
    , gLanguagePair
    , gInputConfig
    , gName
    , gEntryCount
    , gEndTime
    , gLanguageCodesSet
    , gSubmitTime

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * LanguageCodesSet
    , LanguageCodesSet
    , languageCodesSet
    , lcsLanguageCodes

    -- * DetectLanguageRequestLabels
    , DetectLanguageRequestLabels
    , detectLanguageRequestLabels
    , dlrlAddtional

    -- * ListGlossariesResponse
    , ListGlossariesResponse
    , listGlossariesResponse
    , lgrNextPageToken
    , lgrGlossaries
    ) where

import Network.Google.Prelude
import Network.Google.Translate.Types.Product
import Network.Google.Translate.Types.Sum

-- | Default request referring to version 'v3' of the Cloud Translation API. This contains the host and root path used as a starting point for constructing service requests.
translateService :: ServiceConfig
translateService
  = defaultService (ServiceId "translate:v3")
      "translation.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | Translate text from one language to another using Google Translate
cloudTranslationScope :: Proxy '["https://www.googleapis.com/auth/cloud-translation"]
cloudTranslationScope = Proxy
