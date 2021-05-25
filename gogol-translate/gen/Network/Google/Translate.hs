{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Translate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Integrates text translation into your website or application.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference>
module Network.Google.Translate
    (
    -- * Service Configuration
      translateService

    -- * OAuth Scopes
    , cloudPlatformScope
    , cloudTranslationScope

    -- * API Declaration
    , TranslateAPI

    -- * Resources

    -- ** translate.projects.detectLanguage
    , module Network.Google.Resource.Translate.Projects.DetectLanguage

    -- ** translate.projects.getSupportedLanguages
    , module Network.Google.Resource.Translate.Projects.GetSupportedLanguages

    -- ** translate.projects.locations.batchTranslateText
    , module Network.Google.Resource.Translate.Projects.Locations.BatchTranslateText

    -- ** translate.projects.locations.detectLanguage
    , module Network.Google.Resource.Translate.Projects.Locations.DetectLanguage

    -- ** translate.projects.locations.get
    , module Network.Google.Resource.Translate.Projects.Locations.Get

    -- ** translate.projects.locations.getSupportedLanguages
    , module Network.Google.Resource.Translate.Projects.Locations.GetSupportedLanguages

    -- ** translate.projects.locations.glossaries.create
    , module Network.Google.Resource.Translate.Projects.Locations.Glossaries.Create

    -- ** translate.projects.locations.glossaries.delete
    , module Network.Google.Resource.Translate.Projects.Locations.Glossaries.Delete

    -- ** translate.projects.locations.glossaries.get
    , module Network.Google.Resource.Translate.Projects.Locations.Glossaries.Get

    -- ** translate.projects.locations.glossaries.list
    , module Network.Google.Resource.Translate.Projects.Locations.Glossaries.List

    -- ** translate.projects.locations.list
    , module Network.Google.Resource.Translate.Projects.Locations.List

    -- ** translate.projects.locations.operations.cancel
    , module Network.Google.Resource.Translate.Projects.Locations.Operations.Cancel

    -- ** translate.projects.locations.operations.delete
    , module Network.Google.Resource.Translate.Projects.Locations.Operations.Delete

    -- ** translate.projects.locations.operations.get
    , module Network.Google.Resource.Translate.Projects.Locations.Operations.Get

    -- ** translate.projects.locations.operations.list
    , module Network.Google.Resource.Translate.Projects.Locations.Operations.List

    -- ** translate.projects.locations.operations.wait
    , module Network.Google.Resource.Translate.Projects.Locations.Operations.Wait

    -- ** translate.projects.locations.translateText
    , module Network.Google.Resource.Translate.Projects.Locations.TranslateText

    -- ** translate.projects.translateText
    , module Network.Google.Resource.Translate.Projects.TranslateText

    -- * Types

    -- ** SupportedLanguage
    , SupportedLanguage
    , supportedLanguage
    , slLanguageCode
    , slSupportTarget
    , slSupportSource
    , slDisplayName

    -- ** DetectLanguageRequest
    , DetectLanguageRequest
    , detectLanguageRequest
    , dlrContent
    , dlrMimeType
    , dlrModel
    , dlrLabels

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** WaitOperationRequest
    , WaitOperationRequest
    , waitOperationRequest
    , worTimeout

    -- ** TranslateTextGlossaryConfig
    , TranslateTextGlossaryConfig
    , translateTextGlossaryConfig
    , ttgcIgnoreCase
    , ttgcGlossary

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- ** GcsSource
    , GcsSource
    , gcsSource
    , gsInputURI

    -- ** TranslateTextRequest
    , TranslateTextRequest
    , translateTextRequest
    , ttrGlossaryConfig
    , ttrContents
    , ttrTargetLanguageCode
    , ttrMimeType
    , ttrModel
    , ttrSourceLanguageCode
    , ttrLabels

    -- ** Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Empty
    , Empty
    , empty

    -- ** TranslateTextResponse
    , TranslateTextResponse
    , translateTextResponse
    , ttrGlossaryTranslations
    , ttrTranslations

    -- ** GcsDestination
    , GcsDestination
    , gcsDestination
    , gdOutputURIPrefix

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** BatchTranslateTextRequestGlossaries
    , BatchTranslateTextRequestGlossaries
    , batchTranslateTextRequestGlossaries
    , bttrgAddtional

    -- ** InputConfig
    , InputConfig
    , inputConfig
    , icGcsSource
    , icMimeType

    -- ** DetectedLanguage
    , DetectedLanguage
    , detectedLanguage
    , dlLanguageCode
    , dlConfidence

    -- ** SupportedLanguages
    , SupportedLanguages
    , supportedLanguages
    , slLanguages

    -- ** TranslateTextRequestLabels
    , TranslateTextRequestLabels
    , translateTextRequestLabels
    , ttrlAddtional

    -- ** Xgafv
    , Xgafv (..)

    -- ** BatchTranslateTextRequestModels
    , BatchTranslateTextRequestModels
    , batchTranslateTextRequestModels
    , bttrmAddtional

    -- ** GlossaryInputConfig
    , GlossaryInputConfig
    , glossaryInputConfig
    , gicGcsSource

    -- ** LanguageCodePair
    , LanguageCodePair
    , languageCodePair
    , lcpTargetLanguageCode
    , lcpSourceLanguageCode

    -- ** OutputConfig
    , OutputConfig
    , outputConfig
    , ocGcsDestination

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** Translation
    , Translation
    , translation
    , tGlossaryConfig
    , tDetectedLanguageCode
    , tModel
    , tTranslatedText

    -- ** BatchTranslateTextRequestLabels
    , BatchTranslateTextRequestLabels
    , batchTranslateTextRequestLabels
    , bttrlAddtional

    -- ** DetectLanguageResponse
    , DetectLanguageResponse
    , detectLanguageResponse
    , dlrLanguages

    -- ** BatchTranslateTextRequest
    , BatchTranslateTextRequest
    , batchTranslateTextRequest
    , bttrInputConfigs
    , bttrTargetLanguageCodes
    , bttrModels
    , bttrSourceLanguageCode
    , bttrOutputConfig
    , bttrLabels
    , bttrGlossaries

    -- ** Glossary
    , Glossary
    , glossary
    , gLanguagePair
    , gInputConfig
    , gName
    , gEntryCount
    , gEndTime
    , gLanguageCodesSet
    , gSubmitTime

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** LanguageCodesSet
    , LanguageCodesSet
    , languageCodesSet
    , lcsLanguageCodes

    -- ** DetectLanguageRequestLabels
    , DetectLanguageRequestLabels
    , detectLanguageRequestLabels
    , dlrlAddtional

    -- ** ListGlossariesResponse
    , ListGlossariesResponse
    , listGlossariesResponse
    , lgrNextPageToken
    , lgrGlossaries
    ) where

import Network.Google.Prelude
import Network.Google.Resource.Translate.Projects.DetectLanguage
import Network.Google.Resource.Translate.Projects.GetSupportedLanguages
import Network.Google.Resource.Translate.Projects.Locations.BatchTranslateText
import Network.Google.Resource.Translate.Projects.Locations.DetectLanguage
import Network.Google.Resource.Translate.Projects.Locations.Get
import Network.Google.Resource.Translate.Projects.Locations.GetSupportedLanguages
import Network.Google.Resource.Translate.Projects.Locations.Glossaries.Create
import Network.Google.Resource.Translate.Projects.Locations.Glossaries.Delete
import Network.Google.Resource.Translate.Projects.Locations.Glossaries.Get
import Network.Google.Resource.Translate.Projects.Locations.Glossaries.List
import Network.Google.Resource.Translate.Projects.Locations.List
import Network.Google.Resource.Translate.Projects.Locations.Operations.Cancel
import Network.Google.Resource.Translate.Projects.Locations.Operations.Delete
import Network.Google.Resource.Translate.Projects.Locations.Operations.Get
import Network.Google.Resource.Translate.Projects.Locations.Operations.List
import Network.Google.Resource.Translate.Projects.Locations.Operations.Wait
import Network.Google.Resource.Translate.Projects.Locations.TranslateText
import Network.Google.Resource.Translate.Projects.TranslateText
import Network.Google.Translate.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Translation API service.
type TranslateAPI =
     ProjectsLocationsGlossariesListResource :<|>
       ProjectsLocationsGlossariesGetResource
       :<|> ProjectsLocationsGlossariesCreateResource
       :<|> ProjectsLocationsGlossariesDeleteResource
       :<|> ProjectsLocationsOperationsListResource
       :<|> ProjectsLocationsOperationsWaitResource
       :<|> ProjectsLocationsOperationsGetResource
       :<|> ProjectsLocationsOperationsCancelResource
       :<|> ProjectsLocationsOperationsDeleteResource
       :<|> ProjectsLocationsBatchTranslateTextResource
       :<|> ProjectsLocationsListResource
       :<|> ProjectsLocationsDetectLanguageResource
       :<|> ProjectsLocationsTranslateTextResource
       :<|> ProjectsLocationsGetResource
       :<|> ProjectsLocationsGetSupportedLanguagesResource
       :<|> ProjectsDetectLanguageResource
       :<|> ProjectsTranslateTextResource
       :<|> ProjectsGetSupportedLanguagesResource
