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
-- Module      : Gogol.FirebaseRemoteConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Firebase Remote Config API allows the 3P clients to manage Remote Config conditions and parameters for Firebase applications.
--
-- /See:/ <https://firebase.google.com/docs/remote-config/ Firebase Remote Config API Reference>
module Gogol.FirebaseRemoteConfig
  ( -- * Configuration
    firebaseRemoteConfigService,

    -- * Resources

    -- ** firebaseremoteconfig.projects.getRemoteConfig
    FirebaseRemoteConfigProjectsGetRemoteConfigResource,
    FirebaseRemoteConfigProjectsGetRemoteConfig (..),
    newFirebaseRemoteConfigProjectsGetRemoteConfig,

    -- ** firebaseremoteconfig.projects.updateRemoteConfig
    FirebaseRemoteConfigProjectsUpdateRemoteConfigResource,
    FirebaseRemoteConfigProjectsUpdateRemoteConfig (..),
    newFirebaseRemoteConfigProjectsUpdateRemoteConfig,

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

import Gogol.FirebaseRemoteConfig.Projects.GetRemoteConfig
import Gogol.FirebaseRemoteConfig.Projects.UpdateRemoteConfig
import Gogol.FirebaseRemoteConfig.Types
