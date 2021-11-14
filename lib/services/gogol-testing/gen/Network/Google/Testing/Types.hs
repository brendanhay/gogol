{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Testing.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
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
    , itsAdditionalIPas
    , itsPullDirectories
    , itsNetworkProFile
    , itsPushFiles

    -- * Shard
    , Shard
    , shard
    , sShardIndex
    , sTestTargetsForShard
    , sNumShards

    -- * TestExecution
    , TestExecution
    , testExecution
    , teTestDetails
    , teShard
    , teState
    , teEnvironment
    , teTestSpecification
    , teMatrixId
    , teId
    , teProjectId
    , teToolResultsStep
    , teTimestamp

    -- * IosTestLoop
    , IosTestLoop
    , iosTestLoop
    , itlScenarios
    , itlAppBundleId
    , itlAppIPa

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

    -- * SystraceSetup
    , SystraceSetup
    , systraceSetup
    , ssDurationSeconds

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
    , imScreenX
    , imScreenDensity
    , imName
    , imSupportedVersionIds
    , imScreenY
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
    , artRoboMode
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
    , tecDeviceIPBlockCatalog

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

    -- * IosDeviceFile
    , IosDeviceFile
    , iosDeviceFile
    , idfDevicePath
    , idfBundleId
    , idfContent

    -- * TestExecutionState
    , TestExecutionState (..)

    -- * TestEnvironmentCatalogGetEnvironmentType
    , TestEnvironmentCatalogGetEnvironmentType (..)

    -- * TestSpecification
    , TestSpecification
    , testSpecification
    , tsIosTestSetup
    , tsIosTestLoop
    , tsTestTimeout
    , tsAndroidRoboTest
    , tsDisableVideoRecording
    , tsAndroidInstrumentationTest
    , tsIosXcTest
    , tsDisablePerformanceMetrics
    , tsTestSetup
    , tsAndroidTestLoop

    -- * TestTargetsForShard
    , TestTargetsForShard
    , testTargetsForShard
    , ttfsTestTargets

    -- * TestMatrixOutcomeSummary
    , TestMatrixOutcomeSummary (..)

    -- * ProvidedSoftwareCatalog
    , ProvidedSoftwareCatalog
    , providedSoftwareCatalog
    , pscOrchestratorVersion
    , pscAndroidxOrchestratorVersion

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

    -- * DeviceIPBlockForm
    , DeviceIPBlockForm (..)

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
    , amThumbnailURL
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

    -- * ShardingOption
    , ShardingOption
    , shardingOption
    , soUniformSharding
    , soManualSharding

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
    , apkmUsesPermission

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
    , aitShardingOption
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
    , tmOutcomeSummary
    , tmFlakyTestAttempts
    , tmClientInfo
    , tmTestExecutions
    , tmFailFast
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

    -- * UniformSharding
    , UniformSharding
    , uniformSharding
    , usNumShards

    -- * IosXcTest
    , IosXcTest
    , iosXcTest
    , ixtXctestrun
    , ixtXcodeVersion
    , ixtTestSpecialEntitlements
    , ixtAppBundleId
    , ixtTestsZip

    -- * ResultStorage
    , ResultStorage
    , resultStorage
    , rsToolResultsHistory
    , rsResultsURL
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

    -- * DeviceIPBlock
    , DeviceIPBlock
    , deviceIPBlock
    , dibAddedDate
    , dibBlock
    , dibForm

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

    -- * DeviceIPBlockCatalog
    , DeviceIPBlockCatalog
    , deviceIPBlockCatalog
    , dibcIPBlocks

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

    -- * ManualSharding
    , ManualSharding
    , manualSharding
    , msTestTargetsForShard

    -- * ClientInfoDetail
    , ClientInfoDetail
    , clientInfoDetail
    , cidValue
    , cidKey

    -- * AndroidRoboTestRoboMode
    , AndroidRoboTestRoboMode (..)

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
    , tsDontAutograntPermissions
    , tsSystrace
    , tsAccount
    , tsNetworkProFile
    , tsEnvironmentVariables
    , tsAdditionalAPKs
    , tsFilesToPush
    , tsDirectoriesToPull
    ) where

import Network.Google.Prelude
import Network.Google.Testing.Types.Product
import Network.Google.Testing.Types.Sum

-- | Default request referring to version 'v1' of the Cloud Testing API. This contains the host and root path used as a starting point for constructing service requests.
testingService :: ServiceConfig
testingService
  = defaultService (ServiceId "testing:v1")
      "testing.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
