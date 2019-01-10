{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FirebaseRemoteConfig.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FirebaseRemoteConfig.Types
    (
    -- * Service Configuration
      firebaseRemoteConfigService

    -- * RemoteConfigParameterValue
    , RemoteConfigParameterValue
    , remoteConfigParameterValue
    , rcpvValue
    , rcpvUseInAppDefault

    -- * RemoteConfigParameterConditionalValues
    , RemoteConfigParameterConditionalValues
    , remoteConfigParameterConditionalValues
    , rcpcvAddtional

    -- * RemoteConfigParameters
    , RemoteConfigParameters
    , remoteConfigParameters
    , rcpAddtional

    -- * RemoteConfigParameter
    , RemoteConfigParameter
    , remoteConfigParameter
    , rcpDefaultValue
    , rcpDescription
    , rcpConditionalValues

    -- * Xgafv
    , Xgafv (..)

    -- * RemoteConfigConditionTagColor
    , RemoteConfigConditionTagColor (..)

    -- * RemoteConfigCondition
    , RemoteConfigCondition
    , remoteConfigCondition
    , rccTagColor
    , rccName
    , rccExpression
    , rccDescription

    -- * RemoteConfig
    , RemoteConfig
    , remoteConfig
    , rcParameters
    , rcConditions
    ) where

import           Network.Google.FirebaseRemoteConfig.Types.Product
import           Network.Google.FirebaseRemoteConfig.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Firebase Remote Config API. This contains the host and root path used as a starting point for constructing service requests.
firebaseRemoteConfigService :: ServiceConfig
firebaseRemoteConfigService
  = defaultService
      (ServiceId "firebaseremoteconfig:v1")
      "firebaseremoteconfig.googleapis.com"
