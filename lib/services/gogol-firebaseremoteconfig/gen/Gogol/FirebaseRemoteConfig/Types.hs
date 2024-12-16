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
-- Module      : Gogol.FirebaseRemoteConfig.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.FirebaseRemoteConfig.Types
    (
    -- * Configuration
      firebaseRemoteConfigService

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** RemoteConfig
    , RemoteConfig (..)
    , newRemoteConfig

    -- ** RemoteConfig_Parameters
    , RemoteConfig_Parameters (..)
    , newRemoteConfig_Parameters

    -- ** RemoteConfigCondition
    , RemoteConfigCondition (..)
    , newRemoteConfigCondition

    -- ** RemoteConfigCondition_TagColor
    , RemoteConfigCondition_TagColor (..)

    -- ** RemoteConfigParameter
    , RemoteConfigParameter (..)
    , newRemoteConfigParameter

    -- ** RemoteConfigParameter_ConditionalValues
    , RemoteConfigParameter_ConditionalValues (..)
    , newRemoteConfigParameter_ConditionalValues

    -- ** RemoteConfigParameterValue
    , RemoteConfigParameterValue (..)
    , newRemoteConfigParameterValue
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FirebaseRemoteConfig.Internal.Product
import Gogol.FirebaseRemoteConfig.Internal.Sum

-- | Default request referring to version @v1@ of the Firebase Remote Config API. This contains the host and root path used as a starting point for constructing service requests.
firebaseRemoteConfigService :: Core.ServiceConfig
firebaseRemoteConfigService
  = Core.defaultService
      (Core.ServiceId "firebaseremoteconfig:v1")
      "firebaseremoteconfig.googleapis.com"
