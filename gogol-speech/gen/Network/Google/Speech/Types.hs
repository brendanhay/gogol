{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Speech.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Speech.Types
    (
    -- * Service Configuration
      speechService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * LongRunningRecognizeMetadata
    , LongRunningRecognizeMetadata
    , longRunningRecognizeMetadata
    , lrrmStartTime
    , lrrmURI
    , lrrmProgressPercent
    , lrrmLastUpdateTime

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * SpeechRecognitionAlternative
    , SpeechRecognitionAlternative
    , speechRecognitionAlternative
    , sraConfidence
    , sraWords
    , sraTranscript

    -- * WordInfo
    , WordInfo
    , wordInfo
    , wiStartOffSet
    , wiConfidence
    , wiEndOffSet
    , wiWord
    , wiSpeakerTag

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * SpeechRecognitionResult
    , SpeechRecognitionResult
    , speechRecognitionResult
    , srrAlternatives
    , srrLanguageCode
    , srrChannelTag

    -- * Xgafv
    , Xgafv (..)

    -- * LongRunningRecognizeResponse
    , LongRunningRecognizeResponse
    , longRunningRecognizeResponse
    , lrrrResults

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional
    ) where

import Network.Google.Prelude
import Network.Google.Speech.Types.Product
import Network.Google.Speech.Types.Sum

-- | Default request referring to version 'v2beta1' of the Cloud Speech-to-Text API. This contains the host and root path used as a starting point for constructing service requests.
speechService :: ServiceConfig
speechService
  = defaultService (ServiceId "speech:v2beta1")
      "speech.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
