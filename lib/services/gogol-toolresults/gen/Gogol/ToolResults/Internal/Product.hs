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
-- Module      : Gogol.ToolResults.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ToolResults.Internal.Product
  ( -- * ANR
    ANR (..),
    newANR,

    -- * AvailableDeepLinks
    AvailableDeepLinks (..),
    newAvailableDeepLinks,

    -- * BlankScreen
    BlankScreen (..),
    newBlankScreen,

    -- * CrashDialogError
    CrashDialogError (..),
    newCrashDialogError,

    -- * EncounteredLoginScreen
    EncounteredLoginScreen (..),
    newEncounteredLoginScreen,

    -- * EncounteredNonAndroidUiWidgetScreen
    EncounteredNonAndroidUiWidgetScreen (..),
    newEncounteredNonAndroidUiWidgetScreen,

    -- * FailedToInstall
    FailedToInstall (..),
    newFailedToInstall,

    -- * FatalException
    FatalException (..),
    newFatalException,

    -- * InAppPurchasesFound
    InAppPurchasesFound (..),
    newInAppPurchasesFound,

    -- * InsufficientCoverage
    InsufficientCoverage (..),
    newInsufficientCoverage,

    -- * IosAppCrashed
    IosAppCrashed (..),
    newIosAppCrashed,

    -- * LauncherActivityNotFound
    LauncherActivityNotFound (..),
    newLauncherActivityNotFound,

    -- * NativeCrash
    NativeCrash (..),
    newNativeCrash,

    -- * NonSdkApi
    NonSdkApi (..),
    newNonSdkApi,

    -- * NonSdkApiInsight
    NonSdkApiInsight (..),
    newNonSdkApiInsight,

    -- * NonSdkApiUsageViolation
    NonSdkApiUsageViolation (..),
    newNonSdkApiUsageViolation,

    -- * NonSdkApiUsageViolationReport
    NonSdkApiUsageViolationReport (..),
    newNonSdkApiUsageViolationReport,

    -- * OverlappingUIElements
    OverlappingUIElements (..),
    newOverlappingUIElements,

    -- * PendingGoogleUpdateInsight
    PendingGoogleUpdateInsight (..),
    newPendingGoogleUpdateInsight,

    -- * PerformedGoogleLogin
    PerformedGoogleLogin (..),
    newPerformedGoogleLogin,

    -- * PerformedMonkeyActions
    PerformedMonkeyActions (..),
    newPerformedMonkeyActions,

    -- * RoboScriptExecution
    RoboScriptExecution (..),
    newRoboScriptExecution,

    -- * StackTrace
    StackTrace (..),
    newStackTrace,

    -- * StartActivityNotFound
    StartActivityNotFound (..),
    newStartActivityNotFound,

    -- * UIElementTooDeep
    UIElementTooDeep (..),
    newUIElementTooDeep,

    -- * UnspecifiedWarning
    UnspecifiedWarning (..),
    newUnspecifiedWarning,

    -- * UnusedRoboDirective
    UnusedRoboDirective (..),
    newUnusedRoboDirective,

    -- * UpgradeInsight
    UpgradeInsight (..),
    newUpgradeInsight,

    -- * UsedRoboDirective
    UsedRoboDirective (..),
    newUsedRoboDirective,

    -- * UsedRoboIgnoreDirective
    UsedRoboIgnoreDirective (..),
    newUsedRoboIgnoreDirective,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ToolResults.Internal.Sum

-- | Additional details for an ANR crash.
--
-- /See:/ 'newANR' smart constructor.
newtype ANR = ANR
  { -- | The stack trace of the ANR crash. Optional.
    stackTrace :: (Core.Maybe StackTrace)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ANR' with the minimum fields required to make a request.
newANR ::
  ANR
newANR = ANR {stackTrace = Core.Nothing}

instance Core.FromJSON ANR where
  parseJSON =
    Core.withObject
      "ANR"
      (\o -> ANR Core.<$> (o Core..:? "stackTrace"))

instance Core.ToJSON ANR where
  toJSON ANR {..} =
    Core.object
      (Core.catMaybes [("stackTrace" Core..=) Core.<$> stackTrace])

-- | A suggestion to use deep links for a Robo run.
--
-- /See:/ 'newAvailableDeepLinks' smart constructor.
data AvailableDeepLinks = AvailableDeepLinks
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AvailableDeepLinks' with the minimum fields required to make a request.
newAvailableDeepLinks ::
  AvailableDeepLinks
newAvailableDeepLinks = AvailableDeepLinks

instance Core.FromJSON AvailableDeepLinks where
  parseJSON =
    Core.withObject
      "AvailableDeepLinks"
      (\o -> Core.pure AvailableDeepLinks)

instance Core.ToJSON AvailableDeepLinks where
  toJSON = Core.const Core.emptyObject

-- | A warning that Robo encountered a screen that was mostly blank; this may indicate a problem with the app.
--
-- /See:/ 'newBlankScreen' smart constructor.
newtype BlankScreen = BlankScreen
  { -- | The screen id of the element
    screenId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BlankScreen' with the minimum fields required to make a request.
newBlankScreen ::
  BlankScreen
newBlankScreen = BlankScreen {screenId = Core.Nothing}

instance Core.FromJSON BlankScreen where
  parseJSON =
    Core.withObject
      "BlankScreen"
      (\o -> BlankScreen Core.<$> (o Core..:? "screenId"))

instance Core.ToJSON BlankScreen where
  toJSON BlankScreen {..} =
    Core.object
      (Core.catMaybes [("screenId" Core..=) Core.<$> screenId])

-- | Crash dialog was detected during the test execution
--
-- /See:/ 'newCrashDialogError' smart constructor.
newtype CrashDialogError = CrashDialogError
  { -- | The name of the package that caused the dialog.
    crashPackage :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CrashDialogError' with the minimum fields required to make a request.
newCrashDialogError ::
  CrashDialogError
newCrashDialogError = CrashDialogError {crashPackage = Core.Nothing}

instance Core.FromJSON CrashDialogError where
  parseJSON =
    Core.withObject
      "CrashDialogError"
      (\o -> CrashDialogError Core.<$> (o Core..:? "crashPackage"))

instance Core.ToJSON CrashDialogError where
  toJSON CrashDialogError {..} =
    Core.object
      (Core.catMaybes [("crashPackage" Core..=) Core.<$> crashPackage])

-- | Additional details about encountered login screens.
--
-- /See:/ 'newEncounteredLoginScreen' smart constructor.
data EncounteredLoginScreen = EncounteredLoginScreen
  { -- | Number of encountered distinct login screens.
    distinctScreens :: (Core.Maybe Core.Int32),
    -- | Subset of login screens.
    screenIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EncounteredLoginScreen' with the minimum fields required to make a request.
newEncounteredLoginScreen ::
  EncounteredLoginScreen
newEncounteredLoginScreen =
  EncounteredLoginScreen
    { distinctScreens = Core.Nothing,
      screenIds = Core.Nothing
    }

instance Core.FromJSON EncounteredLoginScreen where
  parseJSON =
    Core.withObject
      "EncounteredLoginScreen"
      ( \o ->
          EncounteredLoginScreen
            Core.<$> (o Core..:? "distinctScreens")
            Core.<*> (o Core..:? "screenIds")
      )

instance Core.ToJSON EncounteredLoginScreen where
  toJSON EncounteredLoginScreen {..} =
    Core.object
      ( Core.catMaybes
          [ ("distinctScreens" Core..=) Core.<$> distinctScreens,
            ("screenIds" Core..=) Core.<$> screenIds
          ]
      )

-- | Additional details about encountered screens with elements that are not Android UI widgets.
--
-- /See:/ 'newEncounteredNonAndroidUiWidgetScreen' smart constructor.
data EncounteredNonAndroidUiWidgetScreen = EncounteredNonAndroidUiWidgetScreen
  { -- | Number of encountered distinct screens with non Android UI widgets.
    distinctScreens :: (Core.Maybe Core.Int32),
    -- | Subset of screens which contain non Android UI widgets.
    screenIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EncounteredNonAndroidUiWidgetScreen' with the minimum fields required to make a request.
newEncounteredNonAndroidUiWidgetScreen ::
  EncounteredNonAndroidUiWidgetScreen
newEncounteredNonAndroidUiWidgetScreen =
  EncounteredNonAndroidUiWidgetScreen
    { distinctScreens =
        Core.Nothing,
      screenIds = Core.Nothing
    }

instance Core.FromJSON EncounteredNonAndroidUiWidgetScreen where
  parseJSON =
    Core.withObject
      "EncounteredNonAndroidUiWidgetScreen"
      ( \o ->
          EncounteredNonAndroidUiWidgetScreen
            Core.<$> (o Core..:? "distinctScreens")
            Core.<*> (o Core..:? "screenIds")
      )

instance Core.ToJSON EncounteredNonAndroidUiWidgetScreen where
  toJSON EncounteredNonAndroidUiWidgetScreen {..} =
    Core.object
      ( Core.catMaybes
          [ ("distinctScreens" Core..=) Core.<$> distinctScreens,
            ("screenIds" Core..=) Core.<$> screenIds
          ]
      )

-- | Failed to install the APK.
--
-- /See:/ 'newFailedToInstall' smart constructor.
data FailedToInstall = FailedToInstall
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FailedToInstall' with the minimum fields required to make a request.
newFailedToInstall ::
  FailedToInstall
newFailedToInstall = FailedToInstall

instance Core.FromJSON FailedToInstall where
  parseJSON =
    Core.withObject
      "FailedToInstall"
      (\o -> Core.pure FailedToInstall)

instance Core.ToJSON FailedToInstall where
  toJSON = Core.const Core.emptyObject

-- | Additional details for a fatal exception.
--
-- /See:/ 'newFatalException' smart constructor.
newtype FatalException = FatalException
  { -- | The stack trace of the fatal exception. Optional.
    stackTrace :: (Core.Maybe StackTrace)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FatalException' with the minimum fields required to make a request.
newFatalException ::
  FatalException
newFatalException = FatalException {stackTrace = Core.Nothing}

instance Core.FromJSON FatalException where
  parseJSON =
    Core.withObject
      "FatalException"
      (\o -> FatalException Core.<$> (o Core..:? "stackTrace"))

instance Core.ToJSON FatalException where
  toJSON FatalException {..} =
    Core.object
      (Core.catMaybes [("stackTrace" Core..=) Core.<$> stackTrace])

-- | Additional details of in-app purchases encountered during the crawl.
--
-- /See:/ 'newInAppPurchasesFound' smart constructor.
data InAppPurchasesFound = InAppPurchasesFound
  { -- | The total number of in-app purchases flows explored: how many times the robo tries to buy a SKU.
    inAppPurchasesFlowsExplored :: (Core.Maybe Core.Int32),
    -- | The total number of in-app purchases flows started.
    inAppPurchasesFlowsStarted :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InAppPurchasesFound' with the minimum fields required to make a request.
newInAppPurchasesFound ::
  InAppPurchasesFound
newInAppPurchasesFound =
  InAppPurchasesFound
    { inAppPurchasesFlowsExplored = Core.Nothing,
      inAppPurchasesFlowsStarted = Core.Nothing
    }

instance Core.FromJSON InAppPurchasesFound where
  parseJSON =
    Core.withObject
      "InAppPurchasesFound"
      ( \o ->
          InAppPurchasesFound
            Core.<$> (o Core..:? "inAppPurchasesFlowsExplored")
            Core.<*> (o Core..:? "inAppPurchasesFlowsStarted")
      )

instance Core.ToJSON InAppPurchasesFound where
  toJSON InAppPurchasesFound {..} =
    Core.object
      ( Core.catMaybes
          [ ("inAppPurchasesFlowsExplored" Core..=)
              Core.<$> inAppPurchasesFlowsExplored,
            ("inAppPurchasesFlowsStarted" Core..=)
              Core.<$> inAppPurchasesFlowsStarted
          ]
      )

-- | A warning that Robo did not crawl potentially important parts of the app.
--
-- /See:/ 'newInsufficientCoverage' smart constructor.
data InsufficientCoverage = InsufficientCoverage
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsufficientCoverage' with the minimum fields required to make a request.
newInsufficientCoverage ::
  InsufficientCoverage
newInsufficientCoverage = InsufficientCoverage

instance Core.FromJSON InsufficientCoverage where
  parseJSON =
    Core.withObject
      "InsufficientCoverage"
      (\o -> Core.pure InsufficientCoverage)

instance Core.ToJSON InsufficientCoverage where
  toJSON = Core.const Core.emptyObject

-- | Additional details for an iOS app crash.
--
-- /See:/ 'newIosAppCrashed' smart constructor.
newtype IosAppCrashed = IosAppCrashed
  { -- | The stack trace, if one is available. Optional.
    stackTrace :: (Core.Maybe StackTrace)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IosAppCrashed' with the minimum fields required to make a request.
newIosAppCrashed ::
  IosAppCrashed
newIosAppCrashed = IosAppCrashed {stackTrace = Core.Nothing}

instance Core.FromJSON IosAppCrashed where
  parseJSON =
    Core.withObject
      "IosAppCrashed"
      (\o -> IosAppCrashed Core.<$> (o Core..:? "stackTrace"))

instance Core.ToJSON IosAppCrashed where
  toJSON IosAppCrashed {..} =
    Core.object
      (Core.catMaybes [("stackTrace" Core..=) Core.<$> stackTrace])

-- | Failed to find the launcher activity of an app.
--
-- /See:/ 'newLauncherActivityNotFound' smart constructor.
data LauncherActivityNotFound = LauncherActivityNotFound
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LauncherActivityNotFound' with the minimum fields required to make a request.
newLauncherActivityNotFound ::
  LauncherActivityNotFound
newLauncherActivityNotFound = LauncherActivityNotFound

instance Core.FromJSON LauncherActivityNotFound where
  parseJSON =
    Core.withObject
      "LauncherActivityNotFound"
      (\o -> Core.pure LauncherActivityNotFound)

instance Core.ToJSON LauncherActivityNotFound where
  toJSON = Core.const Core.emptyObject

-- | Additional details for a native crash.
--
-- /See:/ 'newNativeCrash' smart constructor.
newtype NativeCrash = NativeCrash
  { -- | The stack trace of the native crash. Optional.
    stackTrace :: (Core.Maybe StackTrace)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NativeCrash' with the minimum fields required to make a request.
newNativeCrash ::
  NativeCrash
newNativeCrash = NativeCrash {stackTrace = Core.Nothing}

instance Core.FromJSON NativeCrash where
  parseJSON =
    Core.withObject
      "NativeCrash"
      (\o -> NativeCrash Core.<$> (o Core..:? "stackTrace"))

instance Core.ToJSON NativeCrash where
  toJSON NativeCrash {..} =
    Core.object
      (Core.catMaybes [("stackTrace" Core..=) Core.<$> stackTrace])

-- | A non-sdk API and examples of it being called along with other metadata See https:\/\/developer.android.com\/distribute\/best-practices\/develop\/restrictions-non-sdk-interfaces
--
-- /See:/ 'newNonSdkApi' smart constructor.
data NonSdkApi = NonSdkApi
  { -- | The signature of the Non-SDK API
    apiSignature :: (Core.Maybe Core.Text),
    -- | Example stack traces of this API being called.
    exampleStackTraces :: (Core.Maybe [Core.Text]),
    -- | Optional debugging insights for non-SDK API violations.
    insights :: (Core.Maybe [NonSdkApiInsight]),
    -- | The total number of times this API was observed to have been called.
    invocationCount :: (Core.Maybe Core.Int32),
    -- | Which list this API appears on
    list :: (Core.Maybe NonSdkApi_List)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NonSdkApi' with the minimum fields required to make a request.
newNonSdkApi ::
  NonSdkApi
newNonSdkApi =
  NonSdkApi
    { apiSignature = Core.Nothing,
      exampleStackTraces = Core.Nothing,
      insights = Core.Nothing,
      invocationCount = Core.Nothing,
      list = Core.Nothing
    }

instance Core.FromJSON NonSdkApi where
  parseJSON =
    Core.withObject
      "NonSdkApi"
      ( \o ->
          NonSdkApi
            Core.<$> (o Core..:? "apiSignature")
            Core.<*> (o Core..:? "exampleStackTraces")
            Core.<*> (o Core..:? "insights")
            Core.<*> (o Core..:? "invocationCount")
            Core.<*> (o Core..:? "list")
      )

instance Core.ToJSON NonSdkApi where
  toJSON NonSdkApi {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiSignature" Core..=) Core.<$> apiSignature,
            ("exampleStackTraces" Core..=) Core.<$> exampleStackTraces,
            ("insights" Core..=) Core.<$> insights,
            ("invocationCount" Core..=) Core.<$> invocationCount,
            ("list" Core..=) Core.<$> list
          ]
      )

-- | Non-SDK API insights (to address debugging solutions).
--
-- /See:/ 'newNonSdkApiInsight' smart constructor.
data NonSdkApiInsight = NonSdkApiInsight
  { -- | Optional sample stack traces, for which this insight applies (there should be at least one).
    exampleTraceMessages :: (Core.Maybe [Core.Text]),
    -- | A unique ID, to be used for determining the effectiveness of this particular insight in the context of a matcher. (required)
    matcherId :: (Core.Maybe Core.Text),
    -- | An insight indicating that the hidden API usage originates from a Google-provided library.
    pendingGoogleUpdateInsight :: (Core.Maybe PendingGoogleUpdateInsight),
    -- | An insight indicating that the hidden API usage originates from the use of a library that needs to be upgraded.
    upgradeInsight :: (Core.Maybe UpgradeInsight)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NonSdkApiInsight' with the minimum fields required to make a request.
newNonSdkApiInsight ::
  NonSdkApiInsight
newNonSdkApiInsight =
  NonSdkApiInsight
    { exampleTraceMessages = Core.Nothing,
      matcherId = Core.Nothing,
      pendingGoogleUpdateInsight = Core.Nothing,
      upgradeInsight = Core.Nothing
    }

instance Core.FromJSON NonSdkApiInsight where
  parseJSON =
    Core.withObject
      "NonSdkApiInsight"
      ( \o ->
          NonSdkApiInsight
            Core.<$> (o Core..:? "exampleTraceMessages")
            Core.<*> (o Core..:? "matcherId")
            Core.<*> (o Core..:? "pendingGoogleUpdateInsight")
            Core.<*> (o Core..:? "upgradeInsight")
      )

instance Core.ToJSON NonSdkApiInsight where
  toJSON NonSdkApiInsight {..} =
    Core.object
      ( Core.catMaybes
          [ ("exampleTraceMessages" Core..=) Core.<$> exampleTraceMessages,
            ("matcherId" Core..=) Core.<$> matcherId,
            ("pendingGoogleUpdateInsight" Core..=)
              Core.<$> pendingGoogleUpdateInsight,
            ("upgradeInsight" Core..=) Core.<$> upgradeInsight
          ]
      )

-- | Additional details for a non-sdk API usage violation.
--
-- /See:/ 'newNonSdkApiUsageViolation' smart constructor.
data NonSdkApiUsageViolation = NonSdkApiUsageViolation
  { -- | Signatures of a subset of those hidden API\'s.
    apiSignatures :: (Core.Maybe [Core.Text]),
    -- | Total number of unique hidden API\'s accessed.
    uniqueApis :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NonSdkApiUsageViolation' with the minimum fields required to make a request.
newNonSdkApiUsageViolation ::
  NonSdkApiUsageViolation
newNonSdkApiUsageViolation =
  NonSdkApiUsageViolation
    { apiSignatures = Core.Nothing,
      uniqueApis = Core.Nothing
    }

instance Core.FromJSON NonSdkApiUsageViolation where
  parseJSON =
    Core.withObject
      "NonSdkApiUsageViolation"
      ( \o ->
          NonSdkApiUsageViolation
            Core.<$> (o Core..:? "apiSignatures")
            Core.<*> (o Core..:? "uniqueApis")
      )

instance Core.ToJSON NonSdkApiUsageViolation where
  toJSON NonSdkApiUsageViolation {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiSignatures" Core..=) Core.<$> apiSignatures,
            ("uniqueApis" Core..=) Core.<$> uniqueApis
          ]
      )

-- | Contains a summary and examples of non-sdk API usage violations.
--
-- /See:/ 'newNonSdkApiUsageViolationReport' smart constructor.
data NonSdkApiUsageViolationReport = NonSdkApiUsageViolationReport
  { -- | Examples of the detected API usages.
    exampleApis :: (Core.Maybe [NonSdkApi]),
    -- | Minimum API level required for the application to run.
    minSdkVersion :: (Core.Maybe Core.Int32),
    -- | Specifies the API Level on which the application is designed to run.
    targetSdkVersion :: (Core.Maybe Core.Int32),
    -- | Total number of unique Non-SDK API\'s accessed.
    uniqueApis :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NonSdkApiUsageViolationReport' with the minimum fields required to make a request.
newNonSdkApiUsageViolationReport ::
  NonSdkApiUsageViolationReport
newNonSdkApiUsageViolationReport =
  NonSdkApiUsageViolationReport
    { exampleApis = Core.Nothing,
      minSdkVersion = Core.Nothing,
      targetSdkVersion = Core.Nothing,
      uniqueApis = Core.Nothing
    }

instance Core.FromJSON NonSdkApiUsageViolationReport where
  parseJSON =
    Core.withObject
      "NonSdkApiUsageViolationReport"
      ( \o ->
          NonSdkApiUsageViolationReport
            Core.<$> (o Core..:? "exampleApis")
            Core.<*> (o Core..:? "minSdkVersion")
            Core.<*> (o Core..:? "targetSdkVersion")
            Core.<*> (o Core..:? "uniqueApis")
      )

instance Core.ToJSON NonSdkApiUsageViolationReport where
  toJSON NonSdkApiUsageViolationReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("exampleApis" Core..=) Core.<$> exampleApis,
            ("minSdkVersion" Core..=) Core.<$> minSdkVersion,
            ("targetSdkVersion" Core..=) Core.<$> targetSdkVersion,
            ("uniqueApis" Core..=) Core.<$> uniqueApis
          ]
      )

-- | A warning that Robo encountered a screen that has overlapping clickable elements; this may indicate a potential UI issue.
--
-- /See:/ 'newOverlappingUIElements' smart constructor.
data OverlappingUIElements = OverlappingUIElements
  { -- | Resource names of the overlapping screen elements
    resourceName :: (Core.Maybe [Core.Text]),
    -- | The screen id of the elements
    screenId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OverlappingUIElements' with the minimum fields required to make a request.
newOverlappingUIElements ::
  OverlappingUIElements
newOverlappingUIElements =
  OverlappingUIElements
    { resourceName = Core.Nothing,
      screenId = Core.Nothing
    }

instance Core.FromJSON OverlappingUIElements where
  parseJSON =
    Core.withObject
      "OverlappingUIElements"
      ( \o ->
          OverlappingUIElements
            Core.<$> (o Core..:? "resourceName")
            Core.<*> (o Core..:? "screenId")
      )

instance Core.ToJSON OverlappingUIElements where
  toJSON OverlappingUIElements {..} =
    Core.object
      ( Core.catMaybes
          [ ("resourceName" Core..=) Core.<$> resourceName,
            ("screenId" Core..=) Core.<$> screenId
          ]
      )

-- | This insight indicates that the hidden API usage originates from a Google-provided library. Users need not take any action.
--
-- /See:/ 'newPendingGoogleUpdateInsight' smart constructor.
newtype PendingGoogleUpdateInsight = PendingGoogleUpdateInsight
  { -- | The name of the Google-provided library with the non-SDK API dependency.
    nameOfGoogleLibrary :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PendingGoogleUpdateInsight' with the minimum fields required to make a request.
newPendingGoogleUpdateInsight ::
  PendingGoogleUpdateInsight
newPendingGoogleUpdateInsight =
  PendingGoogleUpdateInsight {nameOfGoogleLibrary = Core.Nothing}

instance Core.FromJSON PendingGoogleUpdateInsight where
  parseJSON =
    Core.withObject
      "PendingGoogleUpdateInsight"
      ( \o ->
          PendingGoogleUpdateInsight
            Core.<$> (o Core..:? "nameOfGoogleLibrary")
      )

instance Core.ToJSON PendingGoogleUpdateInsight where
  toJSON PendingGoogleUpdateInsight {..} =
    Core.object
      ( Core.catMaybes
          [("nameOfGoogleLibrary" Core..=) Core.<$> nameOfGoogleLibrary]
      )

-- | A notification that Robo signed in with Google.
--
-- /See:/ 'newPerformedGoogleLogin' smart constructor.
data PerformedGoogleLogin = PerformedGoogleLogin
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PerformedGoogleLogin' with the minimum fields required to make a request.
newPerformedGoogleLogin ::
  PerformedGoogleLogin
newPerformedGoogleLogin = PerformedGoogleLogin

instance Core.FromJSON PerformedGoogleLogin where
  parseJSON =
    Core.withObject
      "PerformedGoogleLogin"
      (\o -> Core.pure PerformedGoogleLogin)

instance Core.ToJSON PerformedGoogleLogin where
  toJSON = Core.const Core.emptyObject

-- | A notification that Robo performed some monkey actions.
--
-- /See:/ 'newPerformedMonkeyActions' smart constructor.
newtype PerformedMonkeyActions = PerformedMonkeyActions
  { -- | The total number of monkey actions performed during the crawl.
    totalActions :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PerformedMonkeyActions' with the minimum fields required to make a request.
newPerformedMonkeyActions ::
  PerformedMonkeyActions
newPerformedMonkeyActions =
  PerformedMonkeyActions {totalActions = Core.Nothing}

instance Core.FromJSON PerformedMonkeyActions where
  parseJSON =
    Core.withObject
      "PerformedMonkeyActions"
      ( \o ->
          PerformedMonkeyActions Core.<$> (o Core..:? "totalActions")
      )

instance Core.ToJSON PerformedMonkeyActions where
  toJSON PerformedMonkeyActions {..} =
    Core.object
      (Core.catMaybes [("totalActions" Core..=) Core.<$> totalActions])

-- | Execution stats for a user-provided Robo script.
--
-- /See:/ 'newRoboScriptExecution' smart constructor.
data RoboScriptExecution = RoboScriptExecution
  { -- | The number of Robo script actions executed successfully.
    successfulActions :: (Core.Maybe Core.Int32),
    -- | The total number of actions in the Robo script.
    totalActions :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RoboScriptExecution' with the minimum fields required to make a request.
newRoboScriptExecution ::
  RoboScriptExecution
newRoboScriptExecution =
  RoboScriptExecution
    { successfulActions = Core.Nothing,
      totalActions = Core.Nothing
    }

instance Core.FromJSON RoboScriptExecution where
  parseJSON =
    Core.withObject
      "RoboScriptExecution"
      ( \o ->
          RoboScriptExecution
            Core.<$> (o Core..:? "successfulActions")
            Core.<*> (o Core..:? "totalActions")
      )

instance Core.ToJSON RoboScriptExecution where
  toJSON RoboScriptExecution {..} =
    Core.object
      ( Core.catMaybes
          [ ("successfulActions" Core..=) Core.<$> successfulActions,
            ("totalActions" Core..=) Core.<$> totalActions
          ]
      )

-- | A stacktrace.
--
-- /See:/ 'newStackTrace' smart constructor.
newtype StackTrace = StackTrace
  { -- | The stack trace message.
    --
    -- Required
    exception :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StackTrace' with the minimum fields required to make a request.
newStackTrace ::
  StackTrace
newStackTrace = StackTrace {exception = Core.Nothing}

instance Core.FromJSON StackTrace where
  parseJSON =
    Core.withObject
      "StackTrace"
      (\o -> StackTrace Core.<$> (o Core..:? "exception"))

instance Core.ToJSON StackTrace where
  toJSON StackTrace {..} =
    Core.object
      (Core.catMaybes [("exception" Core..=) Core.<$> exception])

-- | User provided intent failed to resolve to an activity.
--
-- /See:/ 'newStartActivityNotFound' smart constructor.
data StartActivityNotFound = StartActivityNotFound
  { action :: (Core.Maybe Core.Text),
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartActivityNotFound' with the minimum fields required to make a request.
newStartActivityNotFound ::
  StartActivityNotFound
newStartActivityNotFound =
  StartActivityNotFound {action = Core.Nothing, uri = Core.Nothing}

instance Core.FromJSON StartActivityNotFound where
  parseJSON =
    Core.withObject
      "StartActivityNotFound"
      ( \o ->
          StartActivityNotFound
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON StartActivityNotFound where
  toJSON StartActivityNotFound {..} =
    Core.object
      ( Core.catMaybes
          [("action" Core..=) Core.<$> action, ("uri" Core..=) Core.<$> uri]
      )

-- | A warning that the screen hierarchy is deeper than the recommended threshold.
--
-- /See:/ 'newUIElementTooDeep' smart constructor.
data UIElementTooDeep = UIElementTooDeep
  { -- | The depth of the screen element
    depth :: (Core.Maybe Core.Int32),
    -- | The screen id of the element
    screenId :: (Core.Maybe Core.Text),
    -- | The screen state id of the element
    screenStateId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UIElementTooDeep' with the minimum fields required to make a request.
newUIElementTooDeep ::
  UIElementTooDeep
newUIElementTooDeep =
  UIElementTooDeep
    { depth = Core.Nothing,
      screenId = Core.Nothing,
      screenStateId = Core.Nothing
    }

instance Core.FromJSON UIElementTooDeep where
  parseJSON =
    Core.withObject
      "UIElementTooDeep"
      ( \o ->
          UIElementTooDeep
            Core.<$> (o Core..:? "depth")
            Core.<*> (o Core..:? "screenId")
            Core.<*> (o Core..:? "screenStateId")
      )

instance Core.ToJSON UIElementTooDeep where
  toJSON UIElementTooDeep {..} =
    Core.object
      ( Core.catMaybes
          [ ("depth" Core..=) Core.<$> depth,
            ("screenId" Core..=) Core.<$> screenId,
            ("screenStateId" Core..=) Core.<$> screenStateId
          ]
      )

-- | Default unspecified warning.
--
-- /See:/ 'newUnspecifiedWarning' smart constructor.
data UnspecifiedWarning = UnspecifiedWarning
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnspecifiedWarning' with the minimum fields required to make a request.
newUnspecifiedWarning ::
  UnspecifiedWarning
newUnspecifiedWarning = UnspecifiedWarning

instance Core.FromJSON UnspecifiedWarning where
  parseJSON =
    Core.withObject
      "UnspecifiedWarning"
      (\o -> Core.pure UnspecifiedWarning)

instance Core.ToJSON UnspecifiedWarning where
  toJSON = Core.const Core.emptyObject

-- | Additional details of an unused robodirective.
--
-- /See:/ 'newUnusedRoboDirective' smart constructor.
newtype UnusedRoboDirective = UnusedRoboDirective
  { -- | The name of the resource that was unused.
    resourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnusedRoboDirective' with the minimum fields required to make a request.
newUnusedRoboDirective ::
  UnusedRoboDirective
newUnusedRoboDirective =
  UnusedRoboDirective {resourceName = Core.Nothing}

instance Core.FromJSON UnusedRoboDirective where
  parseJSON =
    Core.withObject
      "UnusedRoboDirective"
      (\o -> UnusedRoboDirective Core.<$> (o Core..:? "resourceName"))

instance Core.ToJSON UnusedRoboDirective where
  toJSON UnusedRoboDirective {..} =
    Core.object
      (Core.catMaybes [("resourceName" Core..=) Core.<$> resourceName])

-- | This insight is a recommendation to upgrade a given library to the specified version, in order to avoid dependencies on non-SDK APIs.
--
-- /See:/ 'newUpgradeInsight' smart constructor.
data UpgradeInsight = UpgradeInsight
  { -- | The name of the package to be upgraded.
    packageName :: (Core.Maybe Core.Text),
    -- | The suggested version to upgrade to. Optional: In case we are not sure which version solves this problem
    upgradeToVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpgradeInsight' with the minimum fields required to make a request.
newUpgradeInsight ::
  UpgradeInsight
newUpgradeInsight =
  UpgradeInsight
    { packageName = Core.Nothing,
      upgradeToVersion = Core.Nothing
    }

instance Core.FromJSON UpgradeInsight where
  parseJSON =
    Core.withObject
      "UpgradeInsight"
      ( \o ->
          UpgradeInsight
            Core.<$> (o Core..:? "packageName")
            Core.<*> (o Core..:? "upgradeToVersion")
      )

instance Core.ToJSON UpgradeInsight where
  toJSON UpgradeInsight {..} =
    Core.object
      ( Core.catMaybes
          [ ("packageName" Core..=) Core.<$> packageName,
            ("upgradeToVersion" Core..=) Core.<$> upgradeToVersion
          ]
      )

-- | Additional details of a used Robo directive.
--
-- /See:/ 'newUsedRoboDirective' smart constructor.
newtype UsedRoboDirective = UsedRoboDirective
  { -- | The name of the resource that was used.
    resourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsedRoboDirective' with the minimum fields required to make a request.
newUsedRoboDirective ::
  UsedRoboDirective
newUsedRoboDirective =
  UsedRoboDirective {resourceName = Core.Nothing}

instance Core.FromJSON UsedRoboDirective where
  parseJSON =
    Core.withObject
      "UsedRoboDirective"
      (\o -> UsedRoboDirective Core.<$> (o Core..:? "resourceName"))

instance Core.ToJSON UsedRoboDirective where
  toJSON UsedRoboDirective {..} =
    Core.object
      (Core.catMaybes [("resourceName" Core..=) Core.<$> resourceName])

-- | Additional details of a used Robo directive with an ignore action. Note: This is a different scenario than unused directive.
--
-- /See:/ 'newUsedRoboIgnoreDirective' smart constructor.
newtype UsedRoboIgnoreDirective = UsedRoboIgnoreDirective
  { -- | The name of the resource that was ignored.
    resourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsedRoboIgnoreDirective' with the minimum fields required to make a request.
newUsedRoboIgnoreDirective ::
  UsedRoboIgnoreDirective
newUsedRoboIgnoreDirective =
  UsedRoboIgnoreDirective {resourceName = Core.Nothing}

instance Core.FromJSON UsedRoboIgnoreDirective where
  parseJSON =
    Core.withObject
      "UsedRoboIgnoreDirective"
      ( \o ->
          UsedRoboIgnoreDirective Core.<$> (o Core..:? "resourceName")
      )

instance Core.ToJSON UsedRoboIgnoreDirective where
  toJSON UsedRoboIgnoreDirective {..} =
    Core.object
      (Core.catMaybes [("resourceName" Core..=) Core.<$> resourceName])
