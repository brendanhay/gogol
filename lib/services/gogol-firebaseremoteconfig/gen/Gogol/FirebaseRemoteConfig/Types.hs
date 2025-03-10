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
-- Module      : Gogol.FirebaseRemoteConfig.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.FirebaseRemoteConfig.Types
  ( -- * Configuration
    firebaseRemoteConfigService,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** RemoteConfig
    RemoteConfig (..),
    newRemoteConfig,

    -- ** RemoteConfig_Parameters
    RemoteConfig_Parameters (..),
    newRemoteConfig_Parameters,

    -- ** RemoteConfigCondition
    RemoteConfigCondition (..),
    newRemoteConfigCondition,

    -- ** RemoteConfigCondition_TagColor
    RemoteConfigCondition_TagColor (..),

    -- ** RemoteConfigParameter
    RemoteConfigParameter (..),
    newRemoteConfigParameter,

    -- ** RemoteConfigParameter_ConditionalValues
    RemoteConfigParameter_ConditionalValues (..),
    newRemoteConfigParameter_ConditionalValues,

    -- ** RemoteConfigParameterValue
    RemoteConfigParameterValue (..),
    newRemoteConfigParameterValue,
  )
where

import Gogol.FirebaseRemoteConfig.Internal.Product
import Gogol.FirebaseRemoteConfig.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Firebase Remote Config API. This contains the host and root path used as a starting point for constructing service requests.
firebaseRemoteConfigService :: Core.ServiceConfig
firebaseRemoteConfigService =
  Core.defaultService
    (Core.ServiceId "firebaseremoteconfig:v1")
    "firebaseremoteconfig.googleapis.com"
