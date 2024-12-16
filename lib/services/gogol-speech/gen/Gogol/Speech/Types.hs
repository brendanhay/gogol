{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Speech.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Speech.Types
    (
    -- * Configuration
      speechService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** LongRunningRecognizeMetadata
    , LongRunningRecognizeMetadata (..)
    , newLongRunningRecognizeMetadata

    -- ** LongRunningRecognizeResponse
    , LongRunningRecognizeResponse (..)
    , newLongRunningRecognizeResponse

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** SpeechRecognitionAlternative
    , SpeechRecognitionAlternative (..)
    , newSpeechRecognitionAlternative

    -- ** SpeechRecognitionResult
    , SpeechRecognitionResult (..)
    , newSpeechRecognitionResult

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** WordInfo
    , WordInfo (..)
    , newWordInfo
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Speech.Internal.Product
import Gogol.Speech.Internal.Sum

-- | Default request referring to version @v2beta1@ of the Cloud Speech-to-Text API. This contains the host and root path used as a starting point for constructing service requests.
speechService :: Core.ServiceConfig
speechService
  = Core.defaultService
      (Core.ServiceId "speech:v2beta1")
      "speech.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
