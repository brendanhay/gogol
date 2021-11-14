{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ToolResults.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ToolResults.Types
    (
    -- * Service Configuration
      toolResultsService

    -- * LauncherActivityNotFound
    , LauncherActivityNotFound
    , launcherActivityNotFound

    -- * NATiveCrash
    , NATiveCrash
    , nATiveCrash
    , natcStackTrace

    -- * OverlAppingUIElements
    , OverlAppingUIElements
    , overlAppingUIElements
    , oauieResourceName
    , oauieScreenId

    -- * RoboScriptExecution
    , RoboScriptExecution
    , roboScriptExecution
    , rseTotalActions
    , rseSuccessfulActions

    -- * ANR
    , ANR
    , aNR
    , aStackTrace

    -- * InAppPurchasesFound
    , InAppPurchasesFound
    , inAppPurchasesFound
    , iapfInAppPurchasesFlowsExplored
    , iapfInAppPurchasesFlowsStarted

    -- * EncounteredNonAndroidUiWidgetScreen
    , EncounteredNonAndroidUiWidgetScreen
    , encounteredNonAndroidUiWidgetScreen
    , enauwsDistinctScreens
    , enauwsScreenIds

    -- * StartActivityNotFound
    , StartActivityNotFound
    , startActivityNotFound
    , sanfURI
    , sanfAction

    -- * AvailableDeepLinks
    , AvailableDeepLinks
    , availableDeepLinks

    -- * IosAppCrashed
    , IosAppCrashed
    , iosAppCrashed
    , iacStackTrace

    -- * UpgradeInsight
    , UpgradeInsight
    , upgradeInsight
    , uiPackageName
    , uiUpgradeToVersion

    -- * PerformedMonkeyActions
    , PerformedMonkeyActions
    , performedMonkeyActions
    , pmaTotalActions

    -- * NonSdkAPIUsageViolationReport
    , NonSdkAPIUsageViolationReport
    , nonSdkAPIUsageViolationReport
    , nsauvrMinSdkVersion
    , nsauvrTargetSdkVersion
    , nsauvrUniqueAPIs
    , nsauvrExampleAPIs

    -- * PendingGoogleUpdateInsight
    , PendingGoogleUpdateInsight
    , pendingGoogleUpdateInsight
    , pguiNameOfGoogleLibrary

    -- * StackTrace
    , StackTrace
    , stackTrace
    , stException

    -- * NonSdkAPIUsageViolation
    , NonSdkAPIUsageViolation
    , nonSdkAPIUsageViolation
    , nsauvAPISignatures
    , nsauvUniqueAPIs

    -- * UIElementTooDeep
    , UIElementTooDeep
    , uIElementTooDeep
    , uietdScreenStateId
    , uietdDepth
    , uietdScreenId

    -- * PerformedGoogleLogin
    , PerformedGoogleLogin
    , performedGoogleLogin

    -- * Xgafv
    , Xgafv (..)

    -- * NonSdkAPIInsight
    , NonSdkAPIInsight
    , nonSdkAPIInsight
    , nsaiUpgradeInsight
    , nsaiPendingGoogleUpdateInsight
    , nsaiExampleTraceMessages
    , nsaiMatcherId

    -- * UsedRoboIgnoreDirective
    , UsedRoboIgnoreDirective
    , usedRoboIgnoreDirective
    , uridResourceName

    -- * UsedRoboDirective
    , UsedRoboDirective
    , usedRoboDirective
    , urdResourceName

    -- * UnspecifiedWarning
    , UnspecifiedWarning
    , unspecifiedWarning

    -- * UnusedRoboDirective
    , UnusedRoboDirective
    , unusedRoboDirective
    , uResourceName

    -- * CrashDialogError
    , CrashDialogError
    , crashDialogError
    , cdeCrashPackage

    -- * NonSdkAPI
    , NonSdkAPI
    , nonSdkAPI
    , nsaList
    , nsaInsights
    , nsaAPISignature
    , nsaExampleStackTraces
    , nsaInvocationCount

    -- * InsufficientCoverage
    , InsufficientCoverage
    , insufficientCoverage

    -- * BlankScreen
    , BlankScreen
    , blankScreen
    , bsScreenId

    -- * FailedToInstall
    , FailedToInstall
    , failedToInstall

    -- * FatalException
    , FatalException
    , fatalException
    , feStackTrace

    -- * NonSdkAPIList
    , NonSdkAPIList (..)

    -- * EncounteredLoginScreen
    , EncounteredLoginScreen
    , encounteredLoginScreen
    , elsDistinctScreens
    , elsScreenIds
    ) where

import Network.Google.Prelude
import Network.Google.ToolResults.Types.Product
import Network.Google.ToolResults.Types.Sum

-- | Default request referring to version 'v1' of the Cloud Tool Results API. This contains the host and root path used as a starting point for constructing service requests.
toolResultsService :: ServiceConfig
toolResultsService
  = defaultService (ServiceId "toolresults:v1")
      "www.googleapis.com"
