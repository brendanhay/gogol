{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.FirebaseRemoteConfig
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Firebase Remote Config API allows the 3P clients to manage Remote Config
-- conditions and parameters for Firebase applications.
--
-- /See:/ <https://firebase.google.com/docs/remote-config/ Firebase Remote Config API Reference>
module Network.Google.FirebaseRemoteConfig
    (
    -- * Service Configuration
      firebaseRemoteConfigService

    -- * API Declaration
    , FirebaseRemoteConfigAPI

    -- * Resources

    -- ** firebaseremoteconfig.projects.getRemoteConfig
    , module Network.Google.Resource.FirebaseRemoteConfig.Projects.GetRemoteConfig

    -- ** firebaseremoteconfig.projects.updateRemoteConfig
    , module Network.Google.Resource.FirebaseRemoteConfig.Projects.UpdateRemoteConfig

    -- * Types

    -- ** RemoteConfigParameterValue
    , RemoteConfigParameterValue
    , remoteConfigParameterValue
    , rcpvValue
    , rcpvUseInAppDefault

    -- ** RemoteConfigParameterConditionalValues
    , RemoteConfigParameterConditionalValues
    , remoteConfigParameterConditionalValues
    , rcpcvAddtional

    -- ** RemoteConfigParameters
    , RemoteConfigParameters
    , remoteConfigParameters
    , rcpAddtional

    -- ** RemoteConfigParameter
    , RemoteConfigParameter
    , remoteConfigParameter
    , rcpDefaultValue
    , rcpDescription
    , rcpConditionalValues

    -- ** Xgafv
    , Xgafv (..)

    -- ** RemoteConfigConditionTagColor
    , RemoteConfigConditionTagColor (..)

    -- ** RemoteConfigCondition
    , RemoteConfigCondition
    , remoteConfigCondition
    , rccTagColor
    , rccName
    , rccExpression
    , rccDescription

    -- ** RemoteConfig
    , RemoteConfig
    , remoteConfig
    , rcParameters
    , rcConditions
    ) where

import Network.Google.Prelude
import Network.Google.FirebaseRemoteConfig.Types
import Network.Google.Resource.FirebaseRemoteConfig.Projects.GetRemoteConfig
import Network.Google.Resource.FirebaseRemoteConfig.Projects.UpdateRemoteConfig

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Firebase Remote Config API service.
type FirebaseRemoteConfigAPI =
     ProjectsUpdateRemoteConfigResource :<|>
       ProjectsGetRemoteConfigResource
