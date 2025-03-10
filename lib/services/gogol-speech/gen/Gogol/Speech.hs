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
-- Module      : Gogol.Speech
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Converts audio to text by applying powerful neural network models.
--
-- /See:/ <https://cloud.google.com/speech-to-text/docs/quickstart-protocol Cloud Speech-to-Text API Reference>
module Gogol.Speech
  ( -- * Configuration
    speechService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** speech.projects.locations.operations.get
    SpeechProjectsLocationsOperationsGetResource,
    SpeechProjectsLocationsOperationsGet (..),
    newSpeechProjectsLocationsOperationsGet,

    -- ** speech.projects.locations.operations.list
    SpeechProjectsLocationsOperationsListResource,
    SpeechProjectsLocationsOperationsList (..),
    newSpeechProjectsLocationsOperationsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** LongRunningRecognizeMetadata
    LongRunningRecognizeMetadata (..),
    newLongRunningRecognizeMetadata,

    -- ** LongRunningRecognizeResponse
    LongRunningRecognizeResponse (..),
    newLongRunningRecognizeResponse,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** SpeechRecognitionAlternative
    SpeechRecognitionAlternative (..),
    newSpeechRecognitionAlternative,

    -- ** SpeechRecognitionResult
    SpeechRecognitionResult (..),
    newSpeechRecognitionResult,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** WordInfo
    WordInfo (..),
    newWordInfo,
  )
where

import Gogol.Speech.Projects.Locations.Operations.Get
import Gogol.Speech.Projects.Locations.Operations.List
import Gogol.Speech.Types
