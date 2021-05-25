{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ToolResults
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API to publish and access results from developer tools.
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference>
module Network.Google.ToolResults
    (
    -- * Service Configuration
      toolResultsService

    -- * API Declaration
    , ToolResultsAPI

    -- * Types

    -- ** LauncherActivityNotFound
    , LauncherActivityNotFound
    , launcherActivityNotFound

    -- ** NATiveCrash
    , NATiveCrash
    , nATiveCrash
    , natcStackTrace

    -- ** OverlAppingUIElements
    , OverlAppingUIElements
    , overlAppingUIElements
    , oauieResourceName
    , oauieScreenId

    -- ** RoboScriptExecution
    , RoboScriptExecution
    , roboScriptExecution
    , rseTotalActions
    , rseSuccessfulActions

    -- ** ANR
    , ANR
    , aNR
    , aStackTrace

    -- ** InAppPurchasesFound
    , InAppPurchasesFound
    , inAppPurchasesFound
    , iapfInAppPurchasesFlowsExplored
    , iapfInAppPurchasesFlowsStarted

    -- ** EncounteredNonAndroidUiWidgetScreen
    , EncounteredNonAndroidUiWidgetScreen
    , encounteredNonAndroidUiWidgetScreen
    , enauwsDistinctScreens
    , enauwsScreenIds

    -- ** StartActivityNotFound
    , StartActivityNotFound
    , startActivityNotFound
    , sanfURI
    , sanfAction

    -- ** AvailableDeepLinks
    , AvailableDeepLinks
    , availableDeepLinks

    -- ** IosAppCrashed
    , IosAppCrashed
    , iosAppCrashed
    , iacStackTrace

    -- ** UpgradeInsight
    , UpgradeInsight
    , upgradeInsight
    , uiPackageName
    , uiUpgradeToVersion

    -- ** PerformedMonkeyActions
    , PerformedMonkeyActions
    , performedMonkeyActions
    , pmaTotalActions

    -- ** NonSdkAPIUsageViolationReport
    , NonSdkAPIUsageViolationReport
    , nonSdkAPIUsageViolationReport
    , nsauvrMinSdkVersion
    , nsauvrTargetSdkVersion
    , nsauvrUniqueAPIs
    , nsauvrExampleAPIs

    -- ** PendingGoogleUpdateInsight
    , PendingGoogleUpdateInsight
    , pendingGoogleUpdateInsight
    , pguiNameOfGoogleLibrary

    -- ** StackTrace
    , StackTrace
    , stackTrace
    , stException

    -- ** NonSdkAPIUsageViolation
    , NonSdkAPIUsageViolation
    , nonSdkAPIUsageViolation
    , nsauvAPISignatures
    , nsauvUniqueAPIs

    -- ** UIElementTooDeep
    , UIElementTooDeep
    , uIElementTooDeep
    , uietdScreenStateId
    , uietdDepth
    , uietdScreenId

    -- ** PerformedGoogleLogin
    , PerformedGoogleLogin
    , performedGoogleLogin

    -- ** Xgafv
    , Xgafv (..)

    -- ** NonSdkAPIInsight
    , NonSdkAPIInsight
    , nonSdkAPIInsight
    , nsaiUpgradeInsight
    , nsaiPendingGoogleUpdateInsight
    , nsaiExampleTraceMessages
    , nsaiMatcherId

    -- ** UsedRoboIgnoreDirective
    , UsedRoboIgnoreDirective
    , usedRoboIgnoreDirective
    , uridResourceName

    -- ** UsedRoboDirective
    , UsedRoboDirective
    , usedRoboDirective
    , urdResourceName

    -- ** UnspecifiedWarning
    , UnspecifiedWarning
    , unspecifiedWarning

    -- ** UnusedRoboDirective
    , UnusedRoboDirective
    , unusedRoboDirective
    , uResourceName

    -- ** CrashDialogError
    , CrashDialogError
    , crashDialogError
    , cdeCrashPackage

    -- ** NonSdkAPI
    , NonSdkAPI
    , nonSdkAPI
    , nsaList
    , nsaInsights
    , nsaAPISignature
    , nsaExampleStackTraces
    , nsaInvocationCount

    -- ** InsufficientCoverage
    , InsufficientCoverage
    , insufficientCoverage

    -- ** BlankScreen
    , BlankScreen
    , blankScreen
    , bsScreenId

    -- ** FailedToInstall
    , FailedToInstall
    , failedToInstall

    -- ** FatalException
    , FatalException
    , fatalException
    , feStackTrace

    -- ** NonSdkAPIList
    , NonSdkAPIList (..)

    -- ** EncounteredLoginScreen
    , EncounteredLoginScreen
    , encounteredLoginScreen
    , elsDistinctScreens
    , elsScreenIds
    ) where

import Network.Google.Prelude
import Network.Google.ToolResults.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Tool Results API service.
type ToolResultsAPI = ()
