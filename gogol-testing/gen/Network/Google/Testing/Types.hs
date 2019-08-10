{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Testing.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Testing.Types
    (
    -- * Service Configuration
      testingService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope

    -- * TestDetails
    , TestDetails
    , testDetails
    , tdProgressMessages
    , tdErrorMessage

    -- * IntentFilter
    , IntentFilter
    , intentFilter
    , ifActionNames
    , ifMimeType
    , ifCategoryNames

    -- * IosTestSetup
    , IosTestSetup
    , iosTestSetup
    , itsNetworkProFile

    -- * TestExecution
    , TestExecution
    , testExecution
    , teTestDetails
    , teState
    , teEnvironment
    , teTestSpecification
    , teMatrixId
    , teId
    , teProjectId
    , teToolResultsStep
    , teTimestamp

    -- * IosVersion
    , IosVersion
    , iosVersion
    , ivMinorVersion
    , ivMajorVersion
    , ivSupportedXcodeVersionIds
    , ivId
    , ivTags

    -- * IosDeviceList
    , IosDeviceList
    , iosDeviceList
    , idlIosDevices

    -- * RoboDirective
    , RoboDirective
    , roboDirective
    , rdResourceName
    , rdInputText
    , rdActionType

    -- * AndroidRuntimeConfiguration
    , AndroidRuntimeConfiguration
    , androidRuntimeConfiguration
    , arcOrientations
    , arcLocales

    -- * XcodeVersion
    , XcodeVersion
    , xcodeVersion
    , xvVersion
    , xvTags

    -- * Distribution
    , Distribution
    , distribution
    , dMeasurementTime
    , dMarketShare

    -- * TestMatrixState
    , TestMatrixState (..)

    -- * IosModel
    , IosModel
    , iosModel
    , imFormFactor
    , imName
    , imSupportedVersionIds
    , imId
    , imDeviceCapabilities
    , imTags

    -- * APK
    , APK
    , aPK
    , aPackageName
    , aLocation

    -- * NetworkConfigurationCatalog
    , NetworkConfigurationCatalog
    , networkConfigurationCatalog
    , nccConfigurations

    -- * TestMatrixInvalidMatrixDetails
    , TestMatrixInvalidMatrixDetails (..)

    -- * IosDevice
    , IosDevice
    , iosDevice
    , idLocale
    , idIosModelId
    , idIosVersionId
    , idOrientation

    -- * GetAPKDetailsResponse
    , GetAPKDetailsResponse
    , getAPKDetailsResponse
    , gapkdrAPKDetail

    -- * AndroidRoboTest
    , AndroidRoboTest
    , androidRoboTest
    , artRoboDirectives
    , artRoboScript
    , artStartingIntents
    , artAppInitialActivity
    , artMaxSteps
    , artAppPackageId
    , artAppBundle
    , artAppAPK
    , artMaxDepth

    -- * FileReference
    , FileReference
    , fileReference
    , frGcsPath

    -- * Environment
    , Environment
    , environment
    , eIosDevice
    , eAndroidDevice

    -- * ToolResultsHistory
    , ToolResultsHistory
    , toolResultsHistory
    , trhHistoryId
    , trhProjectId

    -- * TestEnvironmentCatalog
    , TestEnvironmentCatalog
    , testEnvironmentCatalog
    , tecSoftwareCatalog
    , tecNetworkConfigurationCatalog
    , tecAndroidDeviceCatalog
    , tecIosDeviceCatalog

    -- * Locale
    , Locale
    , locale
    , lName
    , lId
    , lRegion
    , lTags

    -- * AndroidDeviceCatalog
    , AndroidDeviceCatalog
    , androidDeviceCatalog
    , adcVersions
    , adcModels
    , adcRuntimeConfiguration

    -- * AndroidInstrumentationTestOrchestratorOption
    , AndroidInstrumentationTestOrchestratorOption (..)

    -- * TestExecutionState
    , TestExecutionState (..)

    -- * TestSpecification
    , TestSpecification
    , testSpecification
    , tsIosTestSetup
    , tsTestTimeout
    , tsAndroidRoboTest
    , tsDisableVideoRecording
    , tsAndroidInstrumentationTest
    , tsIosXcTest
    , tsDisablePerformanceMetrics
    , tsTestSetup
    , tsAndroidTestLoop

    -- * ProvidedSoftwareCatalog
    , ProvidedSoftwareCatalog
    , providedSoftwareCatalog
    , pscOrchestratorVersion

    -- * TrafficRule
    , TrafficRule
    , trafficRule
    , trPacketLossRatio
    , trPacketDuplicationRatio
    , trBandwidth
    , trBurst
    , trDelay

    -- * IosDeviceCatalog
    , IosDeviceCatalog
    , iosDeviceCatalog
    , idcXcodeVersions
    , idcVersions
    , idcModels
    , idcRuntimeConfiguration

    -- * GoogleAuto
    , GoogleAuto
    , googleAuto

    -- * CancelTestMatrixResponseTestState
    , CancelTestMatrixResponseTestState (..)

    -- * Account
    , Account
    , account
    , aGoogleAuto

    -- * RoboDirectiveActionType
    , RoboDirectiveActionType (..)

    -- * StartActivityIntent
    , StartActivityIntent
    , startActivityIntent
    , saiURI
    , saiCategories
    , saiAction

    -- * IosModelFormFactor
    , IosModelFormFactor (..)

    -- * RoboStartingIntent
    , RoboStartingIntent
    , roboStartingIntent
    , rsiLauncherActivity
    , rsiStartActivity
    , rsiTimeout

    -- * Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- * RegularFile
    , RegularFile
    , regularFile
    , rfDevicePath
    , rfContent

    -- * AndroidModel
    , AndroidModel
    , androidModel
    , amSupportedAbis
    , amManufacturer
    , amCodename
    , amLowFpsVideoRecording
    , amFormFactor
    , amBrand
    , amScreenX
    , amScreenDensity
    , amName
    , amSupportedVersionIds
    , amScreenY
    , amId
    , amForm
    , amTags

    -- * ClientInfo
    , ClientInfo
    , clientInfo
    , ciName
    , ciClientInfoDetails

    -- * AndroidModelFormFactor
    , AndroidModelFormFactor (..)

    -- * AndroidModelForm
    , AndroidModelForm (..)

    -- * Xgafv
    , Xgafv (..)

    -- * APKManifest
    , APKManifest
    , aPKManifest
    , apkmApplicationLabel
    , apkmMinSdkVersion
    , apkmTargetSdkVersion
    , apkmPackageName
    , apkmIntentFilters
    , apkmMaxSdkVersion

    -- * AppBundle
    , AppBundle
    , appBundle
    , abBundleLocation

    -- * AndroidInstrumentationTest
    , AndroidInstrumentationTest
    , androidInstrumentationTest
    , aitTestTargets
    , aitTestRunnerClass
    , aitAppPackageId
    , aitTestAPK
    , aitOrchestratorOption
    , aitAppBundle
    , aitAppAPK
    , aitTestPackageId

    -- * TestMatrix
    , TestMatrix
    , testMatrix
    , tmState
    , tmTestMatrixId
    , tmTestSpecification
    , tmFlakyTestAttempts
    , tmClientInfo
    , tmTestExecutions
    , tmResultStorage
    , tmInvalidMatrixDetails
    , tmProjectId
    , tmEnvironmentMatrix
    , tmTimestamp

    -- * CancelTestMatrixResponse
    , CancelTestMatrixResponse
    , cancelTestMatrixResponse
    , ctmrTestState

    -- * ToolResultsExecution
    , ToolResultsExecution
    , toolResultsExecution
    , treExecutionId
    , treHistoryId
    , treProjectId

    -- * IosXcTest
    , IosXcTest
    , iosXcTest
    , ixtXctestrun
    , ixtXcodeVersion
    , ixtAppBundleId
    , ixtTestsZip

    -- * ResultStorage
    , ResultStorage
    , resultStorage
    , rsToolResultsHistory
    , rsToolResultsExecution
    , rsGoogleCloudStorage

    -- * AndroidMatrix
    , AndroidMatrix
    , androidMatrix
    , amAndroidModelIds
    , amAndroidVersionIds
    , amOrientations
    , amLocales

    -- * ToolResultsStep
    , ToolResultsStep
    , toolResultsStep
    , trsExecutionId
    , trsStepId
    , trsHistoryId
    , trsProjectId

    -- * LauncherActivityIntent
    , LauncherActivityIntent
    , launcherActivityIntent

    -- * APKDetail
    , APKDetail
    , aPKDetail
    , apkdAPKManifest

    -- * AndroidDevice
    , AndroidDevice
    , androidDevice
    , adAndroidVersionId
    , adLocale
    , adAndroidModelId
    , adOrientation

    -- * EnvironmentVariable
    , EnvironmentVariable
    , environmentVariable
    , evValue
    , evKey

    -- * Orientation
    , Orientation
    , orientation
    , oName
    , oId
    , oTags

    -- * EnvironmentMatrix
    , EnvironmentMatrix
    , environmentMatrix
    , emIosDeviceList
    , emAndroidMatrix
    , emAndroidDeviceList

    -- * DeviceFile
    , DeviceFile
    , deviceFile
    , dfRegularFile
    , dfObbFile

    -- * ClientInfoDetail
    , ClientInfoDetail
    , clientInfoDetail
    , cidValue
    , cidKey

    -- * NetworkConfiguration
    , NetworkConfiguration
    , networkConfiguration
    , ncDownRule
    , ncId
    , ncUpRule

    -- * IosRuntimeConfiguration
    , IosRuntimeConfiguration
    , iosRuntimeConfiguration
    , ircOrientations
    , ircLocales

    -- * GoogleCloudStorage
    , GoogleCloudStorage
    , googleCloudStorage
    , gcsGcsPath

    -- * AndroidVersion
    , AndroidVersion
    , androidVersion
    , avCodeName
    , avDistribution
    , avAPILevel
    , avVersionString
    , avId
    , avReleaseDate
    , avTags

    -- * ObbFile
    , ObbFile
    , obbFile
    , ofObb
    , ofObbFileName

    -- * AndroidTestLoop
    , AndroidTestLoop
    , androidTestLoop
    , atlScenarios
    , atlScenarioLabels
    , atlAppPackageId
    , atlAppBundle
    , atlAppAPK

    -- * AndroidDeviceList
    , AndroidDeviceList
    , androidDeviceList
    , adlAndroidDevices

    -- * TestSetup
    , TestSetup
    , testSetup
    , tsAccount
    , tsNetworkProFile
    , tsEnvironmentVariables
    , tsAdditionalAPKs
    , tsFilesToPush
    , tsDirectoriesToPull
    ) where

import           Network.Google.Prelude
import           Network.Google.Testing.Types.Product
import           Network.Google.Testing.Types.Sum

-- | Default request referring to version 'v1' of the Cloud Testing API. This contains the host and root path used as a starting point for constructing service requests.
testingService :: ServiceConfig
testingService
  = defaultService (ServiceId "testing:v1")
      "testing.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
