{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ToolResults
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API to publish and access results from developer tools.
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference>
module Gogol.ToolResults
  ( -- * Configuration
    toolResultsService,

    -- * Resources

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** ANR
    ANR (..),
    newANR,

    -- ** AvailableDeepLinks
    AvailableDeepLinks (..),
    newAvailableDeepLinks,

    -- ** BlankScreen
    BlankScreen (..),
    newBlankScreen,

    -- ** CrashDialogError
    CrashDialogError (..),
    newCrashDialogError,

    -- ** EncounteredLoginScreen
    EncounteredLoginScreen (..),
    newEncounteredLoginScreen,

    -- ** EncounteredNonAndroidUiWidgetScreen
    EncounteredNonAndroidUiWidgetScreen (..),
    newEncounteredNonAndroidUiWidgetScreen,

    -- ** FailedToInstall
    FailedToInstall (..),
    newFailedToInstall,

    -- ** FatalException
    FatalException (..),
    newFatalException,

    -- ** InAppPurchasesFound
    InAppPurchasesFound (..),
    newInAppPurchasesFound,

    -- ** InsufficientCoverage
    InsufficientCoverage (..),
    newInsufficientCoverage,

    -- ** IosAppCrashed
    IosAppCrashed (..),
    newIosAppCrashed,

    -- ** LauncherActivityNotFound
    LauncherActivityNotFound (..),
    newLauncherActivityNotFound,

    -- ** NativeCrash
    NativeCrash (..),
    newNativeCrash,

    -- ** NonSdkApi
    NonSdkApi (..),
    newNonSdkApi,

    -- ** NonSdkApi_List
    NonSdkApi_List (..),

    -- ** NonSdkApiInsight
    NonSdkApiInsight (..),
    newNonSdkApiInsight,

    -- ** NonSdkApiUsageViolation
    NonSdkApiUsageViolation (..),
    newNonSdkApiUsageViolation,

    -- ** NonSdkApiUsageViolationReport
    NonSdkApiUsageViolationReport (..),
    newNonSdkApiUsageViolationReport,

    -- ** OverlappingUIElements
    OverlappingUIElements (..),
    newOverlappingUIElements,

    -- ** PendingGoogleUpdateInsight
    PendingGoogleUpdateInsight (..),
    newPendingGoogleUpdateInsight,

    -- ** PerformedGoogleLogin
    PerformedGoogleLogin (..),
    newPerformedGoogleLogin,

    -- ** PerformedMonkeyActions
    PerformedMonkeyActions (..),
    newPerformedMonkeyActions,

    -- ** RoboScriptExecution
    RoboScriptExecution (..),
    newRoboScriptExecution,

    -- ** StackTrace
    StackTrace (..),
    newStackTrace,

    -- ** StartActivityNotFound
    StartActivityNotFound (..),
    newStartActivityNotFound,

    -- ** UIElementTooDeep
    UIElementTooDeep (..),
    newUIElementTooDeep,

    -- ** UnspecifiedWarning
    UnspecifiedWarning (..),
    newUnspecifiedWarning,

    -- ** UnusedRoboDirective
    UnusedRoboDirective (..),
    newUnusedRoboDirective,

    -- ** UpgradeInsight
    UpgradeInsight (..),
    newUpgradeInsight,

    -- ** UsedRoboDirective
    UsedRoboDirective (..),
    newUsedRoboDirective,

    -- ** UsedRoboIgnoreDirective
    UsedRoboIgnoreDirective (..),
    newUsedRoboIgnoreDirective,
  )
where

import Gogol.ToolResults.Types
