{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ToolResults.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.ToolResults.Types
    (
    -- * Configuration
      toolResultsService

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** ANR
    , ANR (..)
    , newANR

    -- ** AvailableDeepLinks
    , AvailableDeepLinks (..)
    , newAvailableDeepLinks

    -- ** BlankScreen
    , BlankScreen (..)
    , newBlankScreen

    -- ** CrashDialogError
    , CrashDialogError (..)
    , newCrashDialogError

    -- ** EncounteredLoginScreen
    , EncounteredLoginScreen (..)
    , newEncounteredLoginScreen

    -- ** EncounteredNonAndroidUiWidgetScreen
    , EncounteredNonAndroidUiWidgetScreen (..)
    , newEncounteredNonAndroidUiWidgetScreen

    -- ** FailedToInstall
    , FailedToInstall (..)
    , newFailedToInstall

    -- ** FatalException
    , FatalException (..)
    , newFatalException

    -- ** InAppPurchasesFound
    , InAppPurchasesFound (..)
    , newInAppPurchasesFound

    -- ** InsufficientCoverage
    , InsufficientCoverage (..)
    , newInsufficientCoverage

    -- ** IosAppCrashed
    , IosAppCrashed (..)
    , newIosAppCrashed

    -- ** LauncherActivityNotFound
    , LauncherActivityNotFound (..)
    , newLauncherActivityNotFound

    -- ** NativeCrash
    , NativeCrash (..)
    , newNativeCrash

    -- ** NonSdkApi
    , NonSdkApi (..)
    , newNonSdkApi

    -- ** NonSdkApi_List
    , NonSdkApi_List (..)

    -- ** NonSdkApiInsight
    , NonSdkApiInsight (..)
    , newNonSdkApiInsight

    -- ** NonSdkApiUsageViolation
    , NonSdkApiUsageViolation (..)
    , newNonSdkApiUsageViolation

    -- ** NonSdkApiUsageViolationReport
    , NonSdkApiUsageViolationReport (..)
    , newNonSdkApiUsageViolationReport

    -- ** OverlappingUIElements
    , OverlappingUIElements (..)
    , newOverlappingUIElements

    -- ** PendingGoogleUpdateInsight
    , PendingGoogleUpdateInsight (..)
    , newPendingGoogleUpdateInsight

    -- ** PerformedGoogleLogin
    , PerformedGoogleLogin (..)
    , newPerformedGoogleLogin

    -- ** PerformedMonkeyActions
    , PerformedMonkeyActions (..)
    , newPerformedMonkeyActions

    -- ** RoboScriptExecution
    , RoboScriptExecution (..)
    , newRoboScriptExecution

    -- ** StackTrace
    , StackTrace (..)
    , newStackTrace

    -- ** StartActivityNotFound
    , StartActivityNotFound (..)
    , newStartActivityNotFound

    -- ** UIElementTooDeep
    , UIElementTooDeep (..)
    , newUIElementTooDeep

    -- ** UnspecifiedWarning
    , UnspecifiedWarning (..)
    , newUnspecifiedWarning

    -- ** UnusedRoboDirective
    , UnusedRoboDirective (..)
    , newUnusedRoboDirective

    -- ** UpgradeInsight
    , UpgradeInsight (..)
    , newUpgradeInsight

    -- ** UsedRoboDirective
    , UsedRoboDirective (..)
    , newUsedRoboDirective

    -- ** UsedRoboIgnoreDirective
    , UsedRoboIgnoreDirective (..)
    , newUsedRoboIgnoreDirective
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ToolResults.Internal.Product
import Gogol.ToolResults.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Tool Results API. This contains the host and root path used as a starting point for constructing service requests.
toolResultsService :: Core.ServiceConfig
toolResultsService
  = Core.defaultService
      (Core.ServiceId "toolresults:v1")
      "www.googleapis.com"
