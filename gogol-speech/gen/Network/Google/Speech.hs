{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Speech
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Converts audio to text by applying powerful neural network models.
--
-- /See:/ <https://cloud.google.com/speech-to-text/docs/quickstart-protocol Cloud Speech-to-Text API Reference>
module Network.Google.Speech
    (
    -- * Service Configuration
      speechService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , SpeechAPI

    -- * Resources

    -- ** speech.projects.locations.operations.get
    , module Network.Google.Resource.Speech.Projects.Locations.Operations.Get

    -- ** speech.projects.locations.operations.list
    , module Network.Google.Resource.Speech.Projects.Locations.Operations.List

    -- * Types

    -- ** LongRunningRecognizeMetadata
    , LongRunningRecognizeMetadata
    , longRunningRecognizeMetadata
    , lrrmStartTime
    , lrrmURI
    , lrrmProgressPercent
    , lrrmLastUpdateTime

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** SpeechRecognitionAlternative
    , SpeechRecognitionAlternative
    , speechRecognitionAlternative
    , sraConfidence
    , sraWords
    , sraTranscript

    -- ** WordInfo
    , WordInfo
    , wordInfo
    , wiStartOffSet
    , wiConfidence
    , wiEndOffSet
    , wiWord
    , wiSpeakerTag

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** SpeechRecognitionResult
    , SpeechRecognitionResult
    , speechRecognitionResult
    , srrAlternatives
    , srrLanguageCode
    , srrChannelTag

    -- ** Xgafv
    , Xgafv (..)

    -- ** LongRunningRecognizeResponse
    , LongRunningRecognizeResponse
    , longRunningRecognizeResponse
    , lrrrResults

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional
    ) where

import Network.Google.Prelude
import Network.Google.Resource.Speech.Projects.Locations.Operations.Get
import Network.Google.Resource.Speech.Projects.Locations.Operations.List
import Network.Google.Speech.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Speech-to-Text API service.
type SpeechAPI =
     ProjectsLocationsOperationsListResource :<|>
       ProjectsLocationsOperationsGetResource
