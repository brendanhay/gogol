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
-- Module      : Gogol.Testing.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Testing.Internal.Product
  ( -- * Account
    Account (..),
    newAccount,

    -- * AndroidDevice
    AndroidDevice (..),
    newAndroidDevice,

    -- * AndroidDeviceCatalog
    AndroidDeviceCatalog (..),
    newAndroidDeviceCatalog,

    -- * AndroidDeviceList
    AndroidDeviceList (..),
    newAndroidDeviceList,

    -- * AndroidInstrumentationTest
    AndroidInstrumentationTest (..),
    newAndroidInstrumentationTest,

    -- * AndroidMatrix
    AndroidMatrix (..),
    newAndroidMatrix,

    -- * AndroidModel
    AndroidModel (..),
    newAndroidModel,

    -- * AndroidRoboTest
    AndroidRoboTest (..),
    newAndroidRoboTest,

    -- * AndroidRuntimeConfiguration
    AndroidRuntimeConfiguration (..),
    newAndroidRuntimeConfiguration,

    -- * AndroidTestLoop
    AndroidTestLoop (..),
    newAndroidTestLoop,

    -- * AndroidVersion
    AndroidVersion (..),
    newAndroidVersion,

    -- * Apk
    Apk (..),
    newApk,

    -- * ApkDetail
    ApkDetail (..),
    newApkDetail,

    -- * ApkManifest
    ApkManifest (..),
    newApkManifest,

    -- * AppBundle
    AppBundle (..),
    newAppBundle,

    -- * CancelTestMatrixResponse
    CancelTestMatrixResponse (..),
    newCancelTestMatrixResponse,

    -- * ClientInfo
    ClientInfo (..),
    newClientInfo,

    -- * ClientInfoDetail
    ClientInfoDetail (..),
    newClientInfoDetail,

    -- * Date
    Date (..),
    newDate,

    -- * DeviceFile
    DeviceFile (..),
    newDeviceFile,

    -- * DeviceIpBlock
    DeviceIpBlock (..),
    newDeviceIpBlock,

    -- * DeviceIpBlockCatalog
    DeviceIpBlockCatalog (..),
    newDeviceIpBlockCatalog,

    -- * Distribution
    Distribution (..),
    newDistribution,

    -- * Environment
    Environment (..),
    newEnvironment,

    -- * EnvironmentMatrix
    EnvironmentMatrix (..),
    newEnvironmentMatrix,

    -- * EnvironmentVariable
    EnvironmentVariable (..),
    newEnvironmentVariable,

    -- * FileReference
    FileReference (..),
    newFileReference,

    -- * GetApkDetailsResponse
    GetApkDetailsResponse (..),
    newGetApkDetailsResponse,

    -- * GoogleAuto
    GoogleAuto (..),
    newGoogleAuto,

    -- * GoogleCloudStorage
    GoogleCloudStorage (..),
    newGoogleCloudStorage,

    -- * IntentFilter
    IntentFilter (..),
    newIntentFilter,

    -- * IosDevice
    IosDevice (..),
    newIosDevice,

    -- * IosDeviceCatalog
    IosDeviceCatalog (..),
    newIosDeviceCatalog,

    -- * IosDeviceFile
    IosDeviceFile (..),
    newIosDeviceFile,

    -- * IosDeviceList
    IosDeviceList (..),
    newIosDeviceList,

    -- * IosModel
    IosModel (..),
    newIosModel,

    -- * IosRuntimeConfiguration
    IosRuntimeConfiguration (..),
    newIosRuntimeConfiguration,

    -- * IosTestLoop
    IosTestLoop (..),
    newIosTestLoop,

    -- * IosTestSetup
    IosTestSetup (..),
    newIosTestSetup,

    -- * IosVersion
    IosVersion (..),
    newIosVersion,

    -- * IosXcTest
    IosXcTest (..),
    newIosXcTest,

    -- * LauncherActivityIntent
    LauncherActivityIntent (..),
    newLauncherActivityIntent,

    -- * Locale
    Locale (..),
    newLocale,

    -- * ManualSharding
    ManualSharding (..),
    newManualSharding,

    -- * NetworkConfiguration
    NetworkConfiguration (..),
    newNetworkConfiguration,

    -- * NetworkConfigurationCatalog
    NetworkConfigurationCatalog (..),
    newNetworkConfigurationCatalog,

    -- * ObbFile
    ObbFile (..),
    newObbFile,

    -- * Orientation
    Orientation (..),
    newOrientation,

    -- * ProvidedSoftwareCatalog
    ProvidedSoftwareCatalog (..),
    newProvidedSoftwareCatalog,

    -- * RegularFile
    RegularFile (..),
    newRegularFile,

    -- * ResultStorage
    ResultStorage (..),
    newResultStorage,

    -- * RoboDirective
    RoboDirective (..),
    newRoboDirective,

    -- * RoboStartingIntent
    RoboStartingIntent (..),
    newRoboStartingIntent,

    -- * Shard
    Shard (..),
    newShard,

    -- * ShardingOption
    ShardingOption (..),
    newShardingOption,

    -- * StartActivityIntent
    StartActivityIntent (..),
    newStartActivityIntent,

    -- * SystraceSetup
    SystraceSetup (..),
    newSystraceSetup,

    -- * TestDetails
    TestDetails (..),
    newTestDetails,

    -- * TestEnvironmentCatalog
    TestEnvironmentCatalog (..),
    newTestEnvironmentCatalog,

    -- * TestExecution
    TestExecution (..),
    newTestExecution,

    -- * TestMatrix
    TestMatrix (..),
    newTestMatrix,

    -- * TestSetup
    TestSetup (..),
    newTestSetup,

    -- * TestSpecification
    TestSpecification (..),
    newTestSpecification,

    -- * TestTargetsForShard
    TestTargetsForShard (..),
    newTestTargetsForShard,

    -- * ToolResultsExecution
    ToolResultsExecution (..),
    newToolResultsExecution,

    -- * ToolResultsHistory
    ToolResultsHistory (..),
    newToolResultsHistory,

    -- * ToolResultsStep
    ToolResultsStep (..),
    newToolResultsStep,

    -- * TrafficRule
    TrafficRule (..),
    newTrafficRule,

    -- * UniformSharding
    UniformSharding (..),
    newUniformSharding,

    -- * XcodeVersion
    XcodeVersion (..),
    newXcodeVersion,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Testing.Internal.Sum

-- | Identifies an account and how to log into it.
--
-- /See:/ 'newAccount' smart constructor.
newtype Account = Account
  { -- | An automatic google login account.
    googleAuto :: (Core.Maybe GoogleAuto)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
newAccount ::
  Account
newAccount = Account {googleAuto = Core.Nothing}

instance Core.FromJSON Account where
  parseJSON =
    Core.withObject
      "Account"
      (\o -> Account Core.<$> (o Core..:? "googleAuto"))

instance Core.ToJSON Account where
  toJSON Account {..} =
    Core.object
      ( Core.catMaybes
          [("googleAuto" Core..=) Core.<$> googleAuto]
      )

-- | A single Android device.
--
-- /See:/ 'newAndroidDevice' smart constructor.
data AndroidDevice = AndroidDevice
  { -- | Required. The id of the Android device to be used. Use the TestEnvironmentDiscoveryService to get supported options.
    androidModelId :: (Core.Maybe Core.Text),
    -- | Required. The id of the Android OS version to be used. Use the TestEnvironmentDiscoveryService to get supported options.
    androidVersionId :: (Core.Maybe Core.Text),
    -- | Required. The locale the test device used for testing. Use the TestEnvironmentDiscoveryService to get supported options.
    locale :: (Core.Maybe Core.Text),
    -- | Required. How the device is oriented during the test. Use the TestEnvironmentDiscoveryService to get supported options.
    orientation :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDevice' with the minimum fields required to make a request.
newAndroidDevice ::
  AndroidDevice
newAndroidDevice =
  AndroidDevice
    { androidModelId = Core.Nothing,
      androidVersionId = Core.Nothing,
      locale = Core.Nothing,
      orientation = Core.Nothing
    }

instance Core.FromJSON AndroidDevice where
  parseJSON =
    Core.withObject
      "AndroidDevice"
      ( \o ->
          AndroidDevice
            Core.<$> (o Core..:? "androidModelId")
            Core.<*> (o Core..:? "androidVersionId")
            Core.<*> (o Core..:? "locale")
            Core.<*> (o Core..:? "orientation")
      )

instance Core.ToJSON AndroidDevice where
  toJSON AndroidDevice {..} =
    Core.object
      ( Core.catMaybes
          [ ("androidModelId" Core..=) Core.<$> androidModelId,
            ("androidVersionId" Core..=)
              Core.<$> androidVersionId,
            ("locale" Core..=) Core.<$> locale,
            ("orientation" Core..=) Core.<$> orientation
          ]
      )

-- | The currently supported Android devices.
--
-- /See:/ 'newAndroidDeviceCatalog' smart constructor.
data AndroidDeviceCatalog = AndroidDeviceCatalog
  { -- | The set of supported Android device models.
    models :: (Core.Maybe [AndroidModel]),
    -- | The set of supported runtime configurations.
    runtimeConfiguration :: (Core.Maybe AndroidRuntimeConfiguration),
    -- | The set of supported Android OS versions.
    versions :: (Core.Maybe [AndroidVersion])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceCatalog' with the minimum fields required to make a request.
newAndroidDeviceCatalog ::
  AndroidDeviceCatalog
newAndroidDeviceCatalog =
  AndroidDeviceCatalog
    { models = Core.Nothing,
      runtimeConfiguration = Core.Nothing,
      versions = Core.Nothing
    }

instance Core.FromJSON AndroidDeviceCatalog where
  parseJSON =
    Core.withObject
      "AndroidDeviceCatalog"
      ( \o ->
          AndroidDeviceCatalog
            Core.<$> (o Core..:? "models" Core..!= Core.mempty)
            Core.<*> (o Core..:? "runtimeConfiguration")
            Core.<*> (o Core..:? "versions" Core..!= Core.mempty)
      )

instance Core.ToJSON AndroidDeviceCatalog where
  toJSON AndroidDeviceCatalog {..} =
    Core.object
      ( Core.catMaybes
          [ ("models" Core..=) Core.<$> models,
            ("runtimeConfiguration" Core..=)
              Core.<$> runtimeConfiguration,
            ("versions" Core..=) Core.<$> versions
          ]
      )

-- | A list of Android device configurations in which the test is to be executed.
--
-- /See:/ 'newAndroidDeviceList' smart constructor.
newtype AndroidDeviceList = AndroidDeviceList
  { -- | Required. A list of Android devices.
    androidDevices :: (Core.Maybe [AndroidDevice])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceList' with the minimum fields required to make a request.
newAndroidDeviceList ::
  AndroidDeviceList
newAndroidDeviceList = AndroidDeviceList {androidDevices = Core.Nothing}

instance Core.FromJSON AndroidDeviceList where
  parseJSON =
    Core.withObject
      "AndroidDeviceList"
      ( \o ->
          AndroidDeviceList
            Core.<$> (o Core..:? "androidDevices" Core..!= Core.mempty)
      )

instance Core.ToJSON AndroidDeviceList where
  toJSON AndroidDeviceList {..} =
    Core.object
      ( Core.catMaybes
          [("androidDevices" Core..=) Core.<$> androidDevices]
      )

-- | A test of an Android application that can control an Android component independently of its normal lifecycle. Android instrumentation tests run an application APK and test APK inside the same process on a virtual or physical AndroidDevice. They also specify a test runner class, such as com.google.GoogleTestRunner, which can vary on the specific instrumentation framework chosen. See for more information on types of Android tests.
--
-- /See:/ 'newAndroidInstrumentationTest' smart constructor.
data AndroidInstrumentationTest = AndroidInstrumentationTest
  { -- | The APK for the application under test.
    appApk :: (Core.Maybe FileReference),
    -- | A multi-apk app bundle for the application under test.
    appBundle :: (Core.Maybe AppBundle),
    -- | The java package for the application under test. The default value is determined by examining the application\'s manifest.
    appPackageId :: (Core.Maybe Core.Text),
    -- | The option of whether running each test within its own invocation of instrumentation with Android Test Orchestrator or not. ** Orchestrator is only compatible with AndroidJUnitRunner version 1.1 or higher! ** Orchestrator offers the following benefits: - No shared state - Crashes are isolated - Logs are scoped per test See for more information about Android Test Orchestrator. If not set, the test will be run without the orchestrator.
    orchestratorOption :: (Core.Maybe AndroidInstrumentationTest_OrchestratorOption),
    -- | The option to run tests in multiple shards in parallel.
    shardingOption :: (Core.Maybe ShardingOption),
    -- | Required. The APK containing the test code to be executed.
    testApk :: (Core.Maybe FileReference),
    -- | The java package for the test to be executed. The default value is determined by examining the application\'s manifest.
    testPackageId :: (Core.Maybe Core.Text),
    -- | The InstrumentationTestRunner class. The default value is determined by examining the application\'s manifest.
    testRunnerClass :: (Core.Maybe Core.Text),
    -- | Each target must be fully qualified with the package name or class name, in one of these formats: - \"package package/name\" - \"class package/name.class/name\" - \"class package/name.class/name#method/name\" If empty, all targets in the module will be run.
    testTargets :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidInstrumentationTest' with the minimum fields required to make a request.
newAndroidInstrumentationTest ::
  AndroidInstrumentationTest
newAndroidInstrumentationTest =
  AndroidInstrumentationTest
    { appApk = Core.Nothing,
      appBundle = Core.Nothing,
      appPackageId = Core.Nothing,
      orchestratorOption = Core.Nothing,
      shardingOption = Core.Nothing,
      testApk = Core.Nothing,
      testPackageId = Core.Nothing,
      testRunnerClass = Core.Nothing,
      testTargets = Core.Nothing
    }

instance Core.FromJSON AndroidInstrumentationTest where
  parseJSON =
    Core.withObject
      "AndroidInstrumentationTest"
      ( \o ->
          AndroidInstrumentationTest
            Core.<$> (o Core..:? "appApk")
            Core.<*> (o Core..:? "appBundle")
            Core.<*> (o Core..:? "appPackageId")
            Core.<*> (o Core..:? "orchestratorOption")
            Core.<*> (o Core..:? "shardingOption")
            Core.<*> (o Core..:? "testApk")
            Core.<*> (o Core..:? "testPackageId")
            Core.<*> (o Core..:? "testRunnerClass")
            Core.<*> (o Core..:? "testTargets" Core..!= Core.mempty)
      )

instance Core.ToJSON AndroidInstrumentationTest where
  toJSON AndroidInstrumentationTest {..} =
    Core.object
      ( Core.catMaybes
          [ ("appApk" Core..=) Core.<$> appApk,
            ("appBundle" Core..=) Core.<$> appBundle,
            ("appPackageId" Core..=) Core.<$> appPackageId,
            ("orchestratorOption" Core..=)
              Core.<$> orchestratorOption,
            ("shardingOption" Core..=) Core.<$> shardingOption,
            ("testApk" Core..=) Core.<$> testApk,
            ("testPackageId" Core..=) Core.<$> testPackageId,
            ("testRunnerClass" Core..=) Core.<$> testRunnerClass,
            ("testTargets" Core..=) Core.<$> testTargets
          ]
      )

-- | A set of Android device configuration permutations is defined by the the cross-product of the given axes. Internally, the given AndroidMatrix will be expanded into a set of AndroidDevices. Only supported permutations will be instantiated. Invalid permutations (e.g., incompatible models\/versions) are ignored.
--
-- /See:/ 'newAndroidMatrix' smart constructor.
data AndroidMatrix = AndroidMatrix
  { -- | Required. The ids of the set of Android device to be used. Use the TestEnvironmentDiscoveryService to get supported options.
    androidModelIds :: (Core.Maybe [Core.Text]),
    -- | Required. The ids of the set of Android OS version to be used. Use the TestEnvironmentDiscoveryService to get supported options.
    androidVersionIds :: (Core.Maybe [Core.Text]),
    -- | Required. The set of locales the test device will enable for testing. Use the TestEnvironmentDiscoveryService to get supported options.
    locales :: (Core.Maybe [Core.Text]),
    -- | Required. The set of orientations to test with. Use the TestEnvironmentDiscoveryService to get supported options.
    orientations :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidMatrix' with the minimum fields required to make a request.
newAndroidMatrix ::
  AndroidMatrix
newAndroidMatrix =
  AndroidMatrix
    { androidModelIds = Core.Nothing,
      androidVersionIds = Core.Nothing,
      locales = Core.Nothing,
      orientations = Core.Nothing
    }

instance Core.FromJSON AndroidMatrix where
  parseJSON =
    Core.withObject
      "AndroidMatrix"
      ( \o ->
          AndroidMatrix
            Core.<$> (o Core..:? "androidModelIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "androidVersionIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "locales" Core..!= Core.mempty)
            Core.<*> (o Core..:? "orientations" Core..!= Core.mempty)
      )

instance Core.ToJSON AndroidMatrix where
  toJSON AndroidMatrix {..} =
    Core.object
      ( Core.catMaybes
          [ ("androidModelIds" Core..=)
              Core.<$> androidModelIds,
            ("androidVersionIds" Core..=)
              Core.<$> androidVersionIds,
            ("locales" Core..=) Core.<$> locales,
            ("orientations" Core..=) Core.<$> orientations
          ]
      )

-- | A description of an Android device tests may be run on.
--
-- /See:/ 'newAndroidModel' smart constructor.
data AndroidModel = AndroidModel
  { -- | The company that this device is branded with. Example: \"Google\", \"Samsung\".
    brand :: (Core.Maybe Core.Text),
    -- | The name of the industrial design. This corresponds to android.os.Build.DEVICE.
    codename :: (Core.Maybe Core.Text),
    -- | Whether this device is virtual or physical.
    form :: (Core.Maybe AndroidModel_Form),
    -- | Whether this device is a phone, tablet, wearable, etc.
    formFactor :: (Core.Maybe AndroidModel_FormFactor),
    -- | The unique opaque id for this model. Use this for invoking the TestExecutionService.
    id :: (Core.Maybe Core.Text),
    -- | True if and only if tests with this model are recorded by stitching together screenshots. See use/low/spec/video/recording in device config.
    lowFpsVideoRecording :: (Core.Maybe Core.Bool),
    -- | The manufacturer of this device.
    manufacturer :: (Core.Maybe Core.Text),
    -- | The human-readable marketing name for this device model. Examples: \"Nexus 5\", \"Galaxy S5\".
    name :: (Core.Maybe Core.Text),
    -- | Screen density in DPI. This corresponds to ro.sf.lcd_density
    screenDensity :: (Core.Maybe Core.Int32),
    -- | Screen size in the horizontal (X) dimension measured in pixels.
    screenX :: (Core.Maybe Core.Int32),
    -- | Screen size in the vertical (Y) dimension measured in pixels.
    screenY :: (Core.Maybe Core.Int32),
    -- | The list of supported ABIs for this device. This corresponds to either android.os.Build.SUPPORTED/ABIS (for API level 21 and above) or android.os.Build.CPU/ABI\/CPU/ABI2. The most preferred ABI is the first element in the list. Elements are optionally prefixed by \"version/id:\" (where version_id is the id of an AndroidVersion), denoting an ABI that is supported only on a particular version.
    supportedAbis :: (Core.Maybe [Core.Text]),
    -- | The set of Android versions this device supports.
    supportedVersionIds :: (Core.Maybe [Core.Text]),
    -- | Tags for this dimension. Examples: \"default\", \"preview\", \"deprecated\".
    tags :: (Core.Maybe [Core.Text]),
    -- | URL of a thumbnail image (photo) of the device. e.g. https:\/\/lh3.googleusercontent.com\/90WcauuJiCYABEl8U0lcZeuS5STUbf2yW...
    thumbnailUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidModel' with the minimum fields required to make a request.
newAndroidModel ::
  AndroidModel
newAndroidModel =
  AndroidModel
    { brand = Core.Nothing,
      codename = Core.Nothing,
      form = Core.Nothing,
      formFactor = Core.Nothing,
      id = Core.Nothing,
      lowFpsVideoRecording = Core.Nothing,
      manufacturer = Core.Nothing,
      name = Core.Nothing,
      screenDensity = Core.Nothing,
      screenX = Core.Nothing,
      screenY = Core.Nothing,
      supportedAbis = Core.Nothing,
      supportedVersionIds = Core.Nothing,
      tags = Core.Nothing,
      thumbnailUrl = Core.Nothing
    }

instance Core.FromJSON AndroidModel where
  parseJSON =
    Core.withObject
      "AndroidModel"
      ( \o ->
          AndroidModel
            Core.<$> (o Core..:? "brand")
            Core.<*> (o Core..:? "codename")
            Core.<*> (o Core..:? "form")
            Core.<*> (o Core..:? "formFactor")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "lowFpsVideoRecording")
            Core.<*> (o Core..:? "manufacturer")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "screenDensity")
            Core.<*> (o Core..:? "screenX")
            Core.<*> (o Core..:? "screenY")
            Core.<*> (o Core..:? "supportedAbis" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "supportedVersionIds"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "tags" Core..!= Core.mempty)
            Core.<*> (o Core..:? "thumbnailUrl")
      )

instance Core.ToJSON AndroidModel where
  toJSON AndroidModel {..} =
    Core.object
      ( Core.catMaybes
          [ ("brand" Core..=) Core.<$> brand,
            ("codename" Core..=) Core.<$> codename,
            ("form" Core..=) Core.<$> form,
            ("formFactor" Core..=) Core.<$> formFactor,
            ("id" Core..=) Core.<$> id,
            ("lowFpsVideoRecording" Core..=)
              Core.<$> lowFpsVideoRecording,
            ("manufacturer" Core..=) Core.<$> manufacturer,
            ("name" Core..=) Core.<$> name,
            ("screenDensity" Core..=) Core.<$> screenDensity,
            ("screenX" Core..=) Core.<$> screenX,
            ("screenY" Core..=) Core.<$> screenY,
            ("supportedAbis" Core..=) Core.<$> supportedAbis,
            ("supportedVersionIds" Core..=)
              Core.<$> supportedVersionIds,
            ("tags" Core..=) Core.<$> tags,
            ("thumbnailUrl" Core..=) Core.<$> thumbnailUrl
          ]
      )

-- | A test of an android application that explores the application on a virtual or physical Android Device, finding culprits and crashes as it goes.
--
-- /See:/ 'newAndroidRoboTest' smart constructor.
data AndroidRoboTest = AndroidRoboTest
  { -- | The APK for the application under test.
    appApk :: (Core.Maybe FileReference),
    -- | A multi-apk app bundle for the application under test.
    appBundle :: (Core.Maybe AppBundle),
    -- | The initial activity that should be used to start the app.
    appInitialActivity :: (Core.Maybe Core.Text),
    -- | The java package for the application under test. The default value is determined by examining the application\'s manifest.
    appPackageId :: (Core.Maybe Core.Text),
    -- | The max depth of the traversal stack Robo can explore. Needs to be at least 2 to make Robo explore the app beyond the first activity. Default is 50.
    maxDepth :: (Core.Maybe Core.Int32),
    -- | The max number of steps Robo can execute. Default is no limit.
    maxSteps :: (Core.Maybe Core.Int32),
    -- | A set of directives Robo should apply during the crawl. This allows users to customize the crawl. For example, the username and password for a test account can be provided.
    roboDirectives :: (Core.Maybe [RoboDirective]),
    -- | The mode in which Robo should run. Most clients should allow the server to populate this field automatically.
    roboMode :: (Core.Maybe AndroidRoboTest_RoboMode),
    -- | A JSON file with a sequence of actions Robo should perform as a prologue for the crawl.
    roboScript :: (Core.Maybe FileReference),
    -- | The intents used to launch the app for the crawl. If none are provided, then the main launcher activity is launched. If some are provided, then only those provided are launched (the main launcher activity must be provided explicitly).
    startingIntents :: (Core.Maybe [RoboStartingIntent])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidRoboTest' with the minimum fields required to make a request.
newAndroidRoboTest ::
  AndroidRoboTest
newAndroidRoboTest =
  AndroidRoboTest
    { appApk = Core.Nothing,
      appBundle = Core.Nothing,
      appInitialActivity = Core.Nothing,
      appPackageId = Core.Nothing,
      maxDepth = Core.Nothing,
      maxSteps = Core.Nothing,
      roboDirectives = Core.Nothing,
      roboMode = Core.Nothing,
      roboScript = Core.Nothing,
      startingIntents = Core.Nothing
    }

instance Core.FromJSON AndroidRoboTest where
  parseJSON =
    Core.withObject
      "AndroidRoboTest"
      ( \o ->
          AndroidRoboTest
            Core.<$> (o Core..:? "appApk")
            Core.<*> (o Core..:? "appBundle")
            Core.<*> (o Core..:? "appInitialActivity")
            Core.<*> (o Core..:? "appPackageId")
            Core.<*> (o Core..:? "maxDepth")
            Core.<*> (o Core..:? "maxSteps")
            Core.<*> (o Core..:? "roboDirectives" Core..!= Core.mempty)
            Core.<*> (o Core..:? "roboMode")
            Core.<*> (o Core..:? "roboScript")
            Core.<*> (o Core..:? "startingIntents" Core..!= Core.mempty)
      )

instance Core.ToJSON AndroidRoboTest where
  toJSON AndroidRoboTest {..} =
    Core.object
      ( Core.catMaybes
          [ ("appApk" Core..=) Core.<$> appApk,
            ("appBundle" Core..=) Core.<$> appBundle,
            ("appInitialActivity" Core..=)
              Core.<$> appInitialActivity,
            ("appPackageId" Core..=) Core.<$> appPackageId,
            ("maxDepth" Core..=) Core.<$> maxDepth,
            ("maxSteps" Core..=) Core.<$> maxSteps,
            ("roboDirectives" Core..=) Core.<$> roboDirectives,
            ("roboMode" Core..=) Core.<$> roboMode,
            ("roboScript" Core..=) Core.<$> roboScript,
            ("startingIntents" Core..=)
              Core.<$> startingIntents
          ]
      )

-- | Android configuration that can be selected at the time a test is run.
--
-- /See:/ 'newAndroidRuntimeConfiguration' smart constructor.
data AndroidRuntimeConfiguration = AndroidRuntimeConfiguration
  { -- | The set of available locales.
    locales :: (Core.Maybe [Locale]),
    -- | The set of available orientations.
    orientations :: (Core.Maybe [Orientation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidRuntimeConfiguration' with the minimum fields required to make a request.
newAndroidRuntimeConfiguration ::
  AndroidRuntimeConfiguration
newAndroidRuntimeConfiguration =
  AndroidRuntimeConfiguration
    { locales = Core.Nothing,
      orientations = Core.Nothing
    }

instance Core.FromJSON AndroidRuntimeConfiguration where
  parseJSON =
    Core.withObject
      "AndroidRuntimeConfiguration"
      ( \o ->
          AndroidRuntimeConfiguration
            Core.<$> (o Core..:? "locales" Core..!= Core.mempty)
            Core.<*> (o Core..:? "orientations" Core..!= Core.mempty)
      )

instance Core.ToJSON AndroidRuntimeConfiguration where
  toJSON AndroidRuntimeConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("locales" Core..=) Core.<$> locales,
            ("orientations" Core..=) Core.<$> orientations
          ]
      )

-- | A test of an Android Application with a Test Loop. The intent \\ will be implicitly added, since Games is the only user of this api, for the time being.
--
-- /See:/ 'newAndroidTestLoop' smart constructor.
data AndroidTestLoop = AndroidTestLoop
  { -- | The APK for the application under test.
    appApk :: (Core.Maybe FileReference),
    -- | A multi-apk app bundle for the application under test.
    appBundle :: (Core.Maybe AppBundle),
    -- | The java package for the application under test. The default is determined by examining the application\'s manifest.
    appPackageId :: (Core.Maybe Core.Text),
    -- | The list of scenario labels that should be run during the test. The scenario labels should map to labels defined in the application\'s manifest. For example, player/experience and com.google.test.loops.player/experience add all of the loops labeled in the manifest with the com.google.test.loops.player_experience name to the execution. Scenarios can also be specified in the scenarios field.
    scenarioLabels :: (Core.Maybe [Core.Text]),
    -- | The list of scenarios that should be run during the test. The default is all test loops, derived from the application\'s manifest.
    scenarios :: (Core.Maybe [Core.Int32])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidTestLoop' with the minimum fields required to make a request.
newAndroidTestLoop ::
  AndroidTestLoop
newAndroidTestLoop =
  AndroidTestLoop
    { appApk = Core.Nothing,
      appBundle = Core.Nothing,
      appPackageId = Core.Nothing,
      scenarioLabels = Core.Nothing,
      scenarios = Core.Nothing
    }

instance Core.FromJSON AndroidTestLoop where
  parseJSON =
    Core.withObject
      "AndroidTestLoop"
      ( \o ->
          AndroidTestLoop
            Core.<$> (o Core..:? "appApk")
            Core.<*> (o Core..:? "appBundle")
            Core.<*> (o Core..:? "appPackageId")
            Core.<*> (o Core..:? "scenarioLabels" Core..!= Core.mempty)
            Core.<*> (o Core..:? "scenarios" Core..!= Core.mempty)
      )

instance Core.ToJSON AndroidTestLoop where
  toJSON AndroidTestLoop {..} =
    Core.object
      ( Core.catMaybes
          [ ("appApk" Core..=) Core.<$> appApk,
            ("appBundle" Core..=) Core.<$> appBundle,
            ("appPackageId" Core..=) Core.<$> appPackageId,
            ("scenarioLabels" Core..=) Core.<$> scenarioLabels,
            ("scenarios" Core..=) Core.<$> scenarios
          ]
      )

-- | A version of the Android OS.
--
-- /See:/ 'newAndroidVersion' smart constructor.
data AndroidVersion = AndroidVersion
  { -- | The API level for this Android version. Examples: 18, 19.
    apiLevel :: (Core.Maybe Core.Int32),
    -- | The code name for this Android version. Examples: \"JellyBean\", \"KitKat\".
    codeName :: (Core.Maybe Core.Text),
    -- | Market share for this version.
    distribution :: (Core.Maybe Distribution),
    -- | An opaque id for this Android version. Use this id to invoke the TestExecutionService.
    id :: (Core.Maybe Core.Text),
    -- | The date this Android version became available in the market.
    releaseDate :: (Core.Maybe Date),
    -- | Tags for this dimension. Examples: \"default\", \"preview\", \"deprecated\".
    tags :: (Core.Maybe [Core.Text]),
    -- | A string representing this version of the Android OS. Examples: \"4.3\", \"4.4\".
    versionString :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidVersion' with the minimum fields required to make a request.
newAndroidVersion ::
  AndroidVersion
newAndroidVersion =
  AndroidVersion
    { apiLevel = Core.Nothing,
      codeName = Core.Nothing,
      distribution = Core.Nothing,
      id = Core.Nothing,
      releaseDate = Core.Nothing,
      tags = Core.Nothing,
      versionString = Core.Nothing
    }

instance Core.FromJSON AndroidVersion where
  parseJSON =
    Core.withObject
      "AndroidVersion"
      ( \o ->
          AndroidVersion
            Core.<$> (o Core..:? "apiLevel")
            Core.<*> (o Core..:? "codeName")
            Core.<*> (o Core..:? "distribution")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "releaseDate")
            Core.<*> (o Core..:? "tags" Core..!= Core.mempty)
            Core.<*> (o Core..:? "versionString")
      )

instance Core.ToJSON AndroidVersion where
  toJSON AndroidVersion {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiLevel" Core..=) Core.<$> apiLevel,
            ("codeName" Core..=) Core.<$> codeName,
            ("distribution" Core..=) Core.<$> distribution,
            ("id" Core..=) Core.<$> id,
            ("releaseDate" Core..=) Core.<$> releaseDate,
            ("tags" Core..=) Core.<$> tags,
            ("versionString" Core..=) Core.<$> versionString
          ]
      )

-- | An Android package file to install.
--
-- /See:/ 'newApk' smart constructor.
data Apk = Apk
  { -- | The path to an APK to be installed on the device before the test begins.
    location :: (Core.Maybe FileReference),
    -- | The java package for the APK to be installed. Value is determined by examining the application\'s manifest.
    packageName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Apk' with the minimum fields required to make a request.
newApk ::
  Apk
newApk = Apk {location = Core.Nothing, packageName = Core.Nothing}

instance Core.FromJSON Apk where
  parseJSON =
    Core.withObject
      "Apk"
      ( \o ->
          Apk
            Core.<$> (o Core..:? "location")
            Core.<*> (o Core..:? "packageName")
      )

instance Core.ToJSON Apk where
  toJSON Apk {..} =
    Core.object
      ( Core.catMaybes
          [ ("location" Core..=) Core.<$> location,
            ("packageName" Core..=) Core.<$> packageName
          ]
      )

-- | Android application details based on application manifest and apk archive contents.
--
-- /See:/ 'newApkDetail' smart constructor.
newtype ApkDetail = ApkDetail
  { -- |
    apkManifest :: (Core.Maybe ApkManifest)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApkDetail' with the minimum fields required to make a request.
newApkDetail ::
  ApkDetail
newApkDetail = ApkDetail {apkManifest = Core.Nothing}

instance Core.FromJSON ApkDetail where
  parseJSON =
    Core.withObject
      "ApkDetail"
      ( \o ->
          ApkDetail Core.<$> (o Core..:? "apkManifest")
      )

instance Core.ToJSON ApkDetail where
  toJSON ApkDetail {..} =
    Core.object
      ( Core.catMaybes
          [("apkManifest" Core..=) Core.<$> apkManifest]
      )

-- | An Android app manifest. See http:\/\/developer.android.com\/guide\/topics\/manifest\/manifest-intro.html
--
-- /See:/ 'newApkManifest' smart constructor.
data ApkManifest = ApkManifest
  { -- | User-readable name for the application.
    applicationLabel :: (Core.Maybe Core.Text),
    -- |
    intentFilters :: (Core.Maybe [IntentFilter]),
    -- | Maximum API level on which the application is designed to run.
    maxSdkVersion :: (Core.Maybe Core.Int32),
    -- | Minimum API level required for the application to run.
    minSdkVersion :: (Core.Maybe Core.Int32),
    -- | Full Java-style package name for this application, e.g. \"com.example.foo\".
    packageName :: (Core.Maybe Core.Text),
    -- | Specifies the API Level on which the application is designed to run.
    targetSdkVersion :: (Core.Maybe Core.Int32),
    -- | Permissions declared to be used by the application
    usesPermission :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApkManifest' with the minimum fields required to make a request.
newApkManifest ::
  ApkManifest
newApkManifest =
  ApkManifest
    { applicationLabel = Core.Nothing,
      intentFilters = Core.Nothing,
      maxSdkVersion = Core.Nothing,
      minSdkVersion = Core.Nothing,
      packageName = Core.Nothing,
      targetSdkVersion = Core.Nothing,
      usesPermission = Core.Nothing
    }

instance Core.FromJSON ApkManifest where
  parseJSON =
    Core.withObject
      "ApkManifest"
      ( \o ->
          ApkManifest
            Core.<$> (o Core..:? "applicationLabel")
            Core.<*> (o Core..:? "intentFilters" Core..!= Core.mempty)
            Core.<*> (o Core..:? "maxSdkVersion")
            Core.<*> (o Core..:? "minSdkVersion")
            Core.<*> (o Core..:? "packageName")
            Core.<*> (o Core..:? "targetSdkVersion")
            Core.<*> (o Core..:? "usesPermission" Core..!= Core.mempty)
      )

instance Core.ToJSON ApkManifest where
  toJSON ApkManifest {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationLabel" Core..=)
              Core.<$> applicationLabel,
            ("intentFilters" Core..=) Core.<$> intentFilters,
            ("maxSdkVersion" Core..=) Core.<$> maxSdkVersion,
            ("minSdkVersion" Core..=) Core.<$> minSdkVersion,
            ("packageName" Core..=) Core.<$> packageName,
            ("targetSdkVersion" Core..=)
              Core.<$> targetSdkVersion,
            ("usesPermission" Core..=) Core.<$> usesPermission
          ]
      )

-- | An Android App Bundle file format, containing a BundleConfig.pb file, a base module directory, zero or more dynamic feature module directories. See https:\/\/developer.android.com\/guide\/app-bundle\/build for guidance on building App Bundles.
--
-- /See:/ 'newAppBundle' smart constructor.
newtype AppBundle = AppBundle
  { -- | .aab file representing the app bundle under test.
    bundleLocation :: (Core.Maybe FileReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppBundle' with the minimum fields required to make a request.
newAppBundle ::
  AppBundle
newAppBundle = AppBundle {bundleLocation = Core.Nothing}

instance Core.FromJSON AppBundle where
  parseJSON =
    Core.withObject
      "AppBundle"
      ( \o ->
          AppBundle Core.<$> (o Core..:? "bundleLocation")
      )

instance Core.ToJSON AppBundle where
  toJSON AppBundle {..} =
    Core.object
      ( Core.catMaybes
          [("bundleLocation" Core..=) Core.<$> bundleLocation]
      )

-- | Response containing the current state of the specified test matrix.
--
-- /See:/ 'newCancelTestMatrixResponse' smart constructor.
newtype CancelTestMatrixResponse = CancelTestMatrixResponse
  { -- | The current rolled-up state of the test matrix. If this state is already final, then the cancelation request will have no effect.
    testState :: (Core.Maybe CancelTestMatrixResponse_TestState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelTestMatrixResponse' with the minimum fields required to make a request.
newCancelTestMatrixResponse ::
  CancelTestMatrixResponse
newCancelTestMatrixResponse =
  CancelTestMatrixResponse {testState = Core.Nothing}

instance Core.FromJSON CancelTestMatrixResponse where
  parseJSON =
    Core.withObject
      "CancelTestMatrixResponse"
      ( \o ->
          CancelTestMatrixResponse
            Core.<$> (o Core..:? "testState")
      )

instance Core.ToJSON CancelTestMatrixResponse where
  toJSON CancelTestMatrixResponse {..} =
    Core.object
      ( Core.catMaybes
          [("testState" Core..=) Core.<$> testState]
      )

-- | Information about the client which invoked the test.
--
-- /See:/ 'newClientInfo' smart constructor.
data ClientInfo = ClientInfo
  { -- | The list of detailed information about client.
    clientInfoDetails :: (Core.Maybe [ClientInfoDetail]),
    -- | Required. Client name, such as gcloud.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClientInfo' with the minimum fields required to make a request.
newClientInfo ::
  ClientInfo
newClientInfo =
  ClientInfo {clientInfoDetails = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON ClientInfo where
  parseJSON =
    Core.withObject
      "ClientInfo"
      ( \o ->
          ClientInfo
            Core.<$> (o Core..:? "clientInfoDetails" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON ClientInfo where
  toJSON ClientInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientInfoDetails" Core..=)
              Core.<$> clientInfoDetails,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Key-value pair of detailed information about the client which invoked the test. Examples: {\'Version\', \'1.0\'}, {\'Release Track\', \'BETA\'}.
--
-- /See:/ 'newClientInfoDetail' smart constructor.
data ClientInfoDetail = ClientInfoDetail
  { -- | Required. The key of detailed client information.
    key :: (Core.Maybe Core.Text),
    -- | Required. The value of detailed client information.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClientInfoDetail' with the minimum fields required to make a request.
newClientInfoDetail ::
  ClientInfoDetail
newClientInfoDetail =
  ClientInfoDetail {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ClientInfoDetail where
  parseJSON =
    Core.withObject
      "ClientInfoDetail"
      ( \o ->
          ClientInfoDetail
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ClientInfoDetail where
  toJSON ClientInfoDetail {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
  { -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
    day :: (Core.Maybe Core.Int32),
    -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    month :: (Core.Maybe Core.Int32),
    -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    year :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate ::
  Date
newDate = Date {day = Core.Nothing, month = Core.Nothing, year = Core.Nothing}

instance Core.FromJSON Date where
  parseJSON =
    Core.withObject
      "Date"
      ( \o ->
          Date
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "month")
            Core.<*> (o Core..:? "year")
      )

instance Core.ToJSON Date where
  toJSON Date {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("month" Core..=) Core.<$> month,
            ("year" Core..=) Core.<$> year
          ]
      )

-- | A single device file description.
--
-- /See:/ 'newDeviceFile' smart constructor.
data DeviceFile = DeviceFile
  { -- | A reference to an opaque binary blob file.
    obbFile :: (Core.Maybe ObbFile),
    -- | A reference to a regular file.
    regularFile :: (Core.Maybe RegularFile)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceFile' with the minimum fields required to make a request.
newDeviceFile ::
  DeviceFile
newDeviceFile = DeviceFile {obbFile = Core.Nothing, regularFile = Core.Nothing}

instance Core.FromJSON DeviceFile where
  parseJSON =
    Core.withObject
      "DeviceFile"
      ( \o ->
          DeviceFile
            Core.<$> (o Core..:? "obbFile")
            Core.<*> (o Core..:? "regularFile")
      )

instance Core.ToJSON DeviceFile where
  toJSON DeviceFile {..} =
    Core.object
      ( Core.catMaybes
          [ ("obbFile" Core..=) Core.<$> obbFile,
            ("regularFile" Core..=) Core.<$> regularFile
          ]
      )

-- | A single device IP block
--
-- /See:/ 'newDeviceIpBlock' smart constructor.
data DeviceIpBlock = DeviceIpBlock
  { -- | The date this block was added to Firebase Test Lab
    addedDate :: (Core.Maybe Date),
    -- | An IP address block in CIDR notation eg: 34.68.194.64\/29
    block :: (Core.Maybe Core.Text),
    -- | Whether this block is used by physical or virtual devices
    form :: (Core.Maybe DeviceIpBlock_Form)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceIpBlock' with the minimum fields required to make a request.
newDeviceIpBlock ::
  DeviceIpBlock
newDeviceIpBlock =
  DeviceIpBlock
    { addedDate = Core.Nothing,
      block = Core.Nothing,
      form = Core.Nothing
    }

instance Core.FromJSON DeviceIpBlock where
  parseJSON =
    Core.withObject
      "DeviceIpBlock"
      ( \o ->
          DeviceIpBlock
            Core.<$> (o Core..:? "addedDate")
            Core.<*> (o Core..:? "block")
            Core.<*> (o Core..:? "form")
      )

instance Core.ToJSON DeviceIpBlock where
  toJSON DeviceIpBlock {..} =
    Core.object
      ( Core.catMaybes
          [ ("addedDate" Core..=) Core.<$> addedDate,
            ("block" Core..=) Core.<$> block,
            ("form" Core..=) Core.<$> form
          ]
      )

-- | List of IP blocks used by the Firebase Test Lab
--
-- /See:/ 'newDeviceIpBlockCatalog' smart constructor.
newtype DeviceIpBlockCatalog = DeviceIpBlockCatalog
  { -- | The device IP blocks used by Firebase Test Lab
    ipBlocks :: (Core.Maybe [DeviceIpBlock])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceIpBlockCatalog' with the minimum fields required to make a request.
newDeviceIpBlockCatalog ::
  DeviceIpBlockCatalog
newDeviceIpBlockCatalog = DeviceIpBlockCatalog {ipBlocks = Core.Nothing}

instance Core.FromJSON DeviceIpBlockCatalog where
  parseJSON =
    Core.withObject
      "DeviceIpBlockCatalog"
      ( \o ->
          DeviceIpBlockCatalog
            Core.<$> (o Core..:? "ipBlocks" Core..!= Core.mempty)
      )

instance Core.ToJSON DeviceIpBlockCatalog where
  toJSON DeviceIpBlockCatalog {..} =
    Core.object
      ( Core.catMaybes
          [("ipBlocks" Core..=) Core.<$> ipBlocks]
      )

-- | Data about the relative number of devices running a given configuration of the Android platform.
--
-- /See:/ 'newDistribution' smart constructor.
data Distribution = Distribution
  { -- | Output only. The estimated fraction (0-1) of the total market with this configuration.
    marketShare :: (Core.Maybe Core.Double),
    -- | Output only. The time this distribution was measured.
    measurementTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Distribution' with the minimum fields required to make a request.
newDistribution ::
  Distribution
newDistribution =
  Distribution {marketShare = Core.Nothing, measurementTime = Core.Nothing}

instance Core.FromJSON Distribution where
  parseJSON =
    Core.withObject
      "Distribution"
      ( \o ->
          Distribution
            Core.<$> (o Core..:? "marketShare")
            Core.<*> (o Core..:? "measurementTime")
      )

instance Core.ToJSON Distribution where
  toJSON Distribution {..} =
    Core.object
      ( Core.catMaybes
          [ ("marketShare" Core..=) Core.<$> marketShare,
            ("measurementTime" Core..=)
              Core.<$> measurementTime
          ]
      )

-- | The environment in which the test is run.
--
-- /See:/ 'newEnvironment' smart constructor.
data Environment = Environment
  { -- | An Android device which must be used with an Android test.
    androidDevice :: (Core.Maybe AndroidDevice),
    -- | An iOS device which must be used with an iOS test.
    iosDevice :: (Core.Maybe IosDevice)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Environment' with the minimum fields required to make a request.
newEnvironment ::
  Environment
newEnvironment =
  Environment {androidDevice = Core.Nothing, iosDevice = Core.Nothing}

instance Core.FromJSON Environment where
  parseJSON =
    Core.withObject
      "Environment"
      ( \o ->
          Environment
            Core.<$> (o Core..:? "androidDevice")
            Core.<*> (o Core..:? "iosDevice")
      )

instance Core.ToJSON Environment where
  toJSON Environment {..} =
    Core.object
      ( Core.catMaybes
          [ ("androidDevice" Core..=) Core.<$> androidDevice,
            ("iosDevice" Core..=) Core.<$> iosDevice
          ]
      )

-- | The matrix of environments in which the test is to be executed.
--
-- /See:/ 'newEnvironmentMatrix' smart constructor.
data EnvironmentMatrix = EnvironmentMatrix
  { -- | A list of Android devices; the test will be run only on the specified devices.
    androidDeviceList :: (Core.Maybe AndroidDeviceList),
    -- | A matrix of Android devices.
    androidMatrix :: (Core.Maybe AndroidMatrix),
    -- | A list of iOS devices.
    iosDeviceList :: (Core.Maybe IosDeviceList)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnvironmentMatrix' with the minimum fields required to make a request.
newEnvironmentMatrix ::
  EnvironmentMatrix
newEnvironmentMatrix =
  EnvironmentMatrix
    { androidDeviceList = Core.Nothing,
      androidMatrix = Core.Nothing,
      iosDeviceList = Core.Nothing
    }

instance Core.FromJSON EnvironmentMatrix where
  parseJSON =
    Core.withObject
      "EnvironmentMatrix"
      ( \o ->
          EnvironmentMatrix
            Core.<$> (o Core..:? "androidDeviceList")
            Core.<*> (o Core..:? "androidMatrix")
            Core.<*> (o Core..:? "iosDeviceList")
      )

instance Core.ToJSON EnvironmentMatrix where
  toJSON EnvironmentMatrix {..} =
    Core.object
      ( Core.catMaybes
          [ ("androidDeviceList" Core..=)
              Core.<$> androidDeviceList,
            ("androidMatrix" Core..=) Core.<$> androidMatrix,
            ("iosDeviceList" Core..=) Core.<$> iosDeviceList
          ]
      )

-- | A key-value pair passed as an environment variable to the test.
--
-- /See:/ 'newEnvironmentVariable' smart constructor.
data EnvironmentVariable = EnvironmentVariable
  { -- | Key for the environment variable.
    key :: (Core.Maybe Core.Text),
    -- | Value for the environment variable.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnvironmentVariable' with the minimum fields required to make a request.
newEnvironmentVariable ::
  EnvironmentVariable
newEnvironmentVariable =
  EnvironmentVariable {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON EnvironmentVariable where
  parseJSON =
    Core.withObject
      "EnvironmentVariable"
      ( \o ->
          EnvironmentVariable
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON EnvironmentVariable where
  toJSON EnvironmentVariable {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A reference to a file, used for user inputs.
--
-- /See:/ 'newFileReference' smart constructor.
newtype FileReference = FileReference
  { -- | A path to a file in Google Cloud Storage. Example: gs:\/\/build-app-1414623860166\/app%40debug-unaligned.apk These paths are expected to be url encoded (percent encoding)
    gcsPath :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileReference' with the minimum fields required to make a request.
newFileReference ::
  FileReference
newFileReference = FileReference {gcsPath = Core.Nothing}

instance Core.FromJSON FileReference where
  parseJSON =
    Core.withObject
      "FileReference"
      ( \o ->
          FileReference Core.<$> (o Core..:? "gcsPath")
      )

instance Core.ToJSON FileReference where
  toJSON FileReference {..} =
    Core.object
      ( Core.catMaybes
          [("gcsPath" Core..=) Core.<$> gcsPath]
      )

-- | Response containing the details of the specified Android application APK.
--
-- /See:/ 'newGetApkDetailsResponse' smart constructor.
newtype GetApkDetailsResponse = GetApkDetailsResponse
  { -- | Details of the Android APK.
    apkDetail :: (Core.Maybe ApkDetail)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetApkDetailsResponse' with the minimum fields required to make a request.
newGetApkDetailsResponse ::
  GetApkDetailsResponse
newGetApkDetailsResponse = GetApkDetailsResponse {apkDetail = Core.Nothing}

instance Core.FromJSON GetApkDetailsResponse where
  parseJSON =
    Core.withObject
      "GetApkDetailsResponse"
      ( \o ->
          GetApkDetailsResponse
            Core.<$> (o Core..:? "apkDetail")
      )

instance Core.ToJSON GetApkDetailsResponse where
  toJSON GetApkDetailsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("apkDetail" Core..=) Core.<$> apkDetail]
      )

-- | Enables automatic Google account login. If set, the service automatically generates a Google test account and adds it to the device, before executing the test. Note that test accounts might be reused. Many applications show their full set of functionalities when an account is present on the device. Logging into the device with these generated accounts allows testing more functionalities.
--
-- /See:/ 'newGoogleAuto' smart constructor.
data GoogleAuto = GoogleAuto
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleAuto' with the minimum fields required to make a request.
newGoogleAuto ::
  GoogleAuto
newGoogleAuto = GoogleAuto

instance Core.FromJSON GoogleAuto where
  parseJSON =
    Core.withObject
      "GoogleAuto"
      (\o -> Core.pure GoogleAuto)

instance Core.ToJSON GoogleAuto where
  toJSON = Core.const Core.emptyObject

-- | A storage location within Google cloud storage (GCS).
--
-- /See:/ 'newGoogleCloudStorage' smart constructor.
newtype GoogleCloudStorage = GoogleCloudStorage
  { -- | Required. The path to a directory in GCS that will eventually contain the results for this test. The requesting user must have write access on the bucket in the supplied path.
    gcsPath :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudStorage' with the minimum fields required to make a request.
newGoogleCloudStorage ::
  GoogleCloudStorage
newGoogleCloudStorage = GoogleCloudStorage {gcsPath = Core.Nothing}

instance Core.FromJSON GoogleCloudStorage where
  parseJSON =
    Core.withObject
      "GoogleCloudStorage"
      ( \o ->
          GoogleCloudStorage Core.<$> (o Core..:? "gcsPath")
      )

instance Core.ToJSON GoogleCloudStorage where
  toJSON GoogleCloudStorage {..} =
    Core.object
      ( Core.catMaybes
          [("gcsPath" Core..=) Core.<$> gcsPath]
      )

-- | The section of an tag. https:\/\/developer.android.com\/guide\/topics\/manifest\/intent-filter-element.html
--
-- /See:/ 'newIntentFilter' smart constructor.
data IntentFilter = IntentFilter
  { -- | The android:name value of the tag.
    actionNames :: (Core.Maybe [Core.Text]),
    -- | The android:name value of the tag.
    categoryNames :: (Core.Maybe [Core.Text]),
    -- | The android:mimeType value of the tag.
    mimeType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IntentFilter' with the minimum fields required to make a request.
newIntentFilter ::
  IntentFilter
newIntentFilter =
  IntentFilter
    { actionNames = Core.Nothing,
      categoryNames = Core.Nothing,
      mimeType = Core.Nothing
    }

instance Core.FromJSON IntentFilter where
  parseJSON =
    Core.withObject
      "IntentFilter"
      ( \o ->
          IntentFilter
            Core.<$> (o Core..:? "actionNames" Core..!= Core.mempty)
            Core.<*> (o Core..:? "categoryNames" Core..!= Core.mempty)
            Core.<*> (o Core..:? "mimeType")
      )

instance Core.ToJSON IntentFilter where
  toJSON IntentFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionNames" Core..=) Core.<$> actionNames,
            ("categoryNames" Core..=) Core.<$> categoryNames,
            ("mimeType" Core..=) Core.<$> mimeType
          ]
      )

-- | A single iOS device.
--
-- /See:/ 'newIosDevice' smart constructor.
data IosDevice = IosDevice
  { -- | Required. The id of the iOS device to be used. Use the TestEnvironmentDiscoveryService to get supported options.
    iosModelId :: (Core.Maybe Core.Text),
    -- | Required. The id of the iOS major software version to be used. Use the TestEnvironmentDiscoveryService to get supported options.
    iosVersionId :: (Core.Maybe Core.Text),
    -- | Required. The locale the test device used for testing. Use the TestEnvironmentDiscoveryService to get supported options.
    locale :: (Core.Maybe Core.Text),
    -- | Required. How the device is oriented during the test. Use the TestEnvironmentDiscoveryService to get supported options.
    orientation :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IosDevice' with the minimum fields required to make a request.
newIosDevice ::
  IosDevice
newIosDevice =
  IosDevice
    { iosModelId = Core.Nothing,
      iosVersionId = Core.Nothing,
      locale = Core.Nothing,
      orientation = Core.Nothing
    }

instance Core.FromJSON IosDevice where
  parseJSON =
    Core.withObject
      "IosDevice"
      ( \o ->
          IosDevice
            Core.<$> (o Core..:? "iosModelId")
            Core.<*> (o Core..:? "iosVersionId")
            Core.<*> (o Core..:? "locale")
            Core.<*> (o Core..:? "orientation")
      )

instance Core.ToJSON IosDevice where
  toJSON IosDevice {..} =
    Core.object
      ( Core.catMaybes
          [ ("iosModelId" Core..=) Core.<$> iosModelId,
            ("iosVersionId" Core..=) Core.<$> iosVersionId,
            ("locale" Core..=) Core.<$> locale,
            ("orientation" Core..=) Core.<$> orientation
          ]
      )

-- | The currently supported iOS devices.
--
-- /See:/ 'newIosDeviceCatalog' smart constructor.
data IosDeviceCatalog = IosDeviceCatalog
  { -- | The set of supported iOS device models.
    models :: (Core.Maybe [IosModel]),
    -- | The set of supported runtime configurations.
    runtimeConfiguration :: (Core.Maybe IosRuntimeConfiguration),
    -- | The set of supported iOS software versions.
    versions :: (Core.Maybe [IosVersion]),
    -- | The set of supported Xcode versions.
    xcodeVersions :: (Core.Maybe [XcodeVersion])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IosDeviceCatalog' with the minimum fields required to make a request.
newIosDeviceCatalog ::
  IosDeviceCatalog
newIosDeviceCatalog =
  IosDeviceCatalog
    { models = Core.Nothing,
      runtimeConfiguration = Core.Nothing,
      versions = Core.Nothing,
      xcodeVersions = Core.Nothing
    }

instance Core.FromJSON IosDeviceCatalog where
  parseJSON =
    Core.withObject
      "IosDeviceCatalog"
      ( \o ->
          IosDeviceCatalog
            Core.<$> (o Core..:? "models" Core..!= Core.mempty)
            Core.<*> (o Core..:? "runtimeConfiguration")
            Core.<*> (o Core..:? "versions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "xcodeVersions" Core..!= Core.mempty)
      )

instance Core.ToJSON IosDeviceCatalog where
  toJSON IosDeviceCatalog {..} =
    Core.object
      ( Core.catMaybes
          [ ("models" Core..=) Core.<$> models,
            ("runtimeConfiguration" Core..=)
              Core.<$> runtimeConfiguration,
            ("versions" Core..=) Core.<$> versions,
            ("xcodeVersions" Core..=) Core.<$> xcodeVersions
          ]
      )

-- | A file or directory to install on the device before the test starts.
--
-- /See:/ 'newIosDeviceFile' smart constructor.
data IosDeviceFile = IosDeviceFile
  { -- | The bundle id of the app where this file lives. iOS apps sandbox their own filesystem, so app files must specify which app installed on the device.
    bundleId :: (Core.Maybe Core.Text),
    -- | The source file
    content :: (Core.Maybe FileReference),
    -- | Location of the file on the device, inside the app\'s sandboxed filesystem
    devicePath :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IosDeviceFile' with the minimum fields required to make a request.
newIosDeviceFile ::
  IosDeviceFile
newIosDeviceFile =
  IosDeviceFile
    { bundleId = Core.Nothing,
      content = Core.Nothing,
      devicePath = Core.Nothing
    }

instance Core.FromJSON IosDeviceFile where
  parseJSON =
    Core.withObject
      "IosDeviceFile"
      ( \o ->
          IosDeviceFile
            Core.<$> (o Core..:? "bundleId")
            Core.<*> (o Core..:? "content")
            Core.<*> (o Core..:? "devicePath")
      )

instance Core.ToJSON IosDeviceFile where
  toJSON IosDeviceFile {..} =
    Core.object
      ( Core.catMaybes
          [ ("bundleId" Core..=) Core.<$> bundleId,
            ("content" Core..=) Core.<$> content,
            ("devicePath" Core..=) Core.<$> devicePath
          ]
      )

-- | A list of iOS device configurations in which the test is to be executed.
--
-- /See:/ 'newIosDeviceList' smart constructor.
newtype IosDeviceList = IosDeviceList
  { -- | Required. A list of iOS devices.
    iosDevices :: (Core.Maybe [IosDevice])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IosDeviceList' with the minimum fields required to make a request.
newIosDeviceList ::
  IosDeviceList
newIosDeviceList = IosDeviceList {iosDevices = Core.Nothing}

instance Core.FromJSON IosDeviceList where
  parseJSON =
    Core.withObject
      "IosDeviceList"
      ( \o ->
          IosDeviceList
            Core.<$> (o Core..:? "iosDevices" Core..!= Core.mempty)
      )

instance Core.ToJSON IosDeviceList where
  toJSON IosDeviceList {..} =
    Core.object
      ( Core.catMaybes
          [("iosDevices" Core..=) Core.<$> iosDevices]
      )

-- | A description of an iOS device tests may be run on.
--
-- /See:/ 'newIosModel' smart constructor.
data IosModel = IosModel
  { -- | Device capabilities. Copied from https:\/\/developer.apple.com\/library\/archive\/documentation\/DeviceInformation\/Reference\/iOSDeviceCompatibility\/DeviceCompatibilityMatrix\/DeviceCompatibilityMatrix.html
    deviceCapabilities :: (Core.Maybe [Core.Text]),
    -- | Whether this device is a phone, tablet, wearable, etc.
    formFactor :: (Core.Maybe IosModel_FormFactor),
    -- | The unique opaque id for this model. Use this for invoking the TestExecutionService.
    id :: (Core.Maybe Core.Text),
    -- | The human-readable name for this device model. Examples: \"iPhone 4s\", \"iPad Mini 2\".
    name :: (Core.Maybe Core.Text),
    -- | Screen density in DPI.
    screenDensity :: (Core.Maybe Core.Int32),
    -- | Screen size in the horizontal (X) dimension measured in pixels.
    screenX :: (Core.Maybe Core.Int32),
    -- | Screen size in the vertical (Y) dimension measured in pixels.
    screenY :: (Core.Maybe Core.Int32),
    -- | The set of iOS major software versions this device supports.
    supportedVersionIds :: (Core.Maybe [Core.Text]),
    -- | Tags for this dimension. Examples: \"default\", \"preview\", \"deprecated\".
    tags :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IosModel' with the minimum fields required to make a request.
newIosModel ::
  IosModel
newIosModel =
  IosModel
    { deviceCapabilities = Core.Nothing,
      formFactor = Core.Nothing,
      id = Core.Nothing,
      name = Core.Nothing,
      screenDensity = Core.Nothing,
      screenX = Core.Nothing,
      screenY = Core.Nothing,
      supportedVersionIds = Core.Nothing,
      tags = Core.Nothing
    }

instance Core.FromJSON IosModel where
  parseJSON =
    Core.withObject
      "IosModel"
      ( \o ->
          IosModel
            Core.<$> ( o Core..:? "deviceCapabilities"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "formFactor")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "screenDensity")
            Core.<*> (o Core..:? "screenX")
            Core.<*> (o Core..:? "screenY")
            Core.<*> ( o Core..:? "supportedVersionIds"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "tags" Core..!= Core.mempty)
      )

instance Core.ToJSON IosModel where
  toJSON IosModel {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceCapabilities" Core..=)
              Core.<$> deviceCapabilities,
            ("formFactor" Core..=) Core.<$> formFactor,
            ("id" Core..=) Core.<$> id,
            ("name" Core..=) Core.<$> name,
            ("screenDensity" Core..=) Core.<$> screenDensity,
            ("screenX" Core..=) Core.<$> screenX,
            ("screenY" Core..=) Core.<$> screenY,
            ("supportedVersionIds" Core..=)
              Core.<$> supportedVersionIds,
            ("tags" Core..=) Core.<$> tags
          ]
      )

-- | iOS configuration that can be selected at the time a test is run.
--
-- /See:/ 'newIosRuntimeConfiguration' smart constructor.
data IosRuntimeConfiguration = IosRuntimeConfiguration
  { -- | The set of available locales.
    locales :: (Core.Maybe [Locale]),
    -- | The set of available orientations.
    orientations :: (Core.Maybe [Orientation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IosRuntimeConfiguration' with the minimum fields required to make a request.
newIosRuntimeConfiguration ::
  IosRuntimeConfiguration
newIosRuntimeConfiguration =
  IosRuntimeConfiguration {locales = Core.Nothing, orientations = Core.Nothing}

instance Core.FromJSON IosRuntimeConfiguration where
  parseJSON =
    Core.withObject
      "IosRuntimeConfiguration"
      ( \o ->
          IosRuntimeConfiguration
            Core.<$> (o Core..:? "locales" Core..!= Core.mempty)
            Core.<*> (o Core..:? "orientations" Core..!= Core.mempty)
      )

instance Core.ToJSON IosRuntimeConfiguration where
  toJSON IosRuntimeConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("locales" Core..=) Core.<$> locales,
            ("orientations" Core..=) Core.<$> orientations
          ]
      )

-- | A test of an iOS application that implements one or more game loop scenarios. This test type accepts an archived application (.ipa file) and a list of integer scenarios that will be executed on the app sequentially.
--
-- /See:/ 'newIosTestLoop' smart constructor.
data IosTestLoop = IosTestLoop
  { -- | Output only. The bundle id for the application under test.
    appBundleId :: (Core.Maybe Core.Text),
    -- | Required. The .ipa of the application to test.
    appIpa :: (Core.Maybe FileReference),
    -- | The list of scenarios that should be run during the test. Defaults to the single scenario 0 if unspecified.
    scenarios :: (Core.Maybe [Core.Int32])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IosTestLoop' with the minimum fields required to make a request.
newIosTestLoop ::
  IosTestLoop
newIosTestLoop =
  IosTestLoop
    { appBundleId = Core.Nothing,
      appIpa = Core.Nothing,
      scenarios = Core.Nothing
    }

instance Core.FromJSON IosTestLoop where
  parseJSON =
    Core.withObject
      "IosTestLoop"
      ( \o ->
          IosTestLoop
            Core.<$> (o Core..:? "appBundleId")
            Core.<*> (o Core..:? "appIpa")
            Core.<*> (o Core..:? "scenarios" Core..!= Core.mempty)
      )

instance Core.ToJSON IosTestLoop where
  toJSON IosTestLoop {..} =
    Core.object
      ( Core.catMaybes
          [ ("appBundleId" Core..=) Core.<$> appBundleId,
            ("appIpa" Core..=) Core.<$> appIpa,
            ("scenarios" Core..=) Core.<$> scenarios
          ]
      )

-- | A description of how to set up an iOS device prior to running the test.
--
-- /See:/ 'newIosTestSetup' smart constructor.
data IosTestSetup = IosTestSetup
  { -- | iOS apps to install in addition to those being directly tested.
    additionalIpas :: (Core.Maybe [FileReference]),
    -- | The network traffic profile used for running the test. Available network profiles can be queried by using the NETWORK_CONFIGURATION environment type when calling TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
    networkProfile :: (Core.Maybe Core.Text),
    -- | List of directories on the device to upload to Cloud Storage at the end of the test. Directories should either be in a shared directory (such as \/private\/var\/mobile\/Media) or within an accessible directory inside the app\'s filesystem (such as \/Documents) by specifying the bundle ID.
    pullDirectories :: (Core.Maybe [IosDeviceFile]),
    -- | List of files to push to the device before starting the test.
    pushFiles :: (Core.Maybe [IosDeviceFile])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IosTestSetup' with the minimum fields required to make a request.
newIosTestSetup ::
  IosTestSetup
newIosTestSetup =
  IosTestSetup
    { additionalIpas = Core.Nothing,
      networkProfile = Core.Nothing,
      pullDirectories = Core.Nothing,
      pushFiles = Core.Nothing
    }

instance Core.FromJSON IosTestSetup where
  parseJSON =
    Core.withObject
      "IosTestSetup"
      ( \o ->
          IosTestSetup
            Core.<$> (o Core..:? "additionalIpas" Core..!= Core.mempty)
            Core.<*> (o Core..:? "networkProfile")
            Core.<*> (o Core..:? "pullDirectories" Core..!= Core.mempty)
            Core.<*> (o Core..:? "pushFiles" Core..!= Core.mempty)
      )

instance Core.ToJSON IosTestSetup where
  toJSON IosTestSetup {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalIpas" Core..=) Core.<$> additionalIpas,
            ("networkProfile" Core..=) Core.<$> networkProfile,
            ("pullDirectories" Core..=) Core.<$> pullDirectories,
            ("pushFiles" Core..=) Core.<$> pushFiles
          ]
      )

-- | An iOS version.
--
-- /See:/ 'newIosVersion' smart constructor.
data IosVersion = IosVersion
  { -- | An opaque id for this iOS version. Use this id to invoke the TestExecutionService.
    id :: (Core.Maybe Core.Text),
    -- | An integer representing the major iOS version. Examples: \"8\", \"9\".
    majorVersion :: (Core.Maybe Core.Int32),
    -- | An integer representing the minor iOS version. Examples: \"1\", \"2\".
    minorVersion :: (Core.Maybe Core.Int32),
    -- | The available Xcode versions for this version.
    supportedXcodeVersionIds :: (Core.Maybe [Core.Text]),
    -- | Tags for this dimension. Examples: \"default\", \"preview\", \"deprecated\".
    tags :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IosVersion' with the minimum fields required to make a request.
newIosVersion ::
  IosVersion
newIosVersion =
  IosVersion
    { id = Core.Nothing,
      majorVersion = Core.Nothing,
      minorVersion = Core.Nothing,
      supportedXcodeVersionIds = Core.Nothing,
      tags = Core.Nothing
    }

instance Core.FromJSON IosVersion where
  parseJSON =
    Core.withObject
      "IosVersion"
      ( \o ->
          IosVersion
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "majorVersion")
            Core.<*> (o Core..:? "minorVersion")
            Core.<*> ( o Core..:? "supportedXcodeVersionIds"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "tags" Core..!= Core.mempty)
      )

instance Core.ToJSON IosVersion where
  toJSON IosVersion {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("majorVersion" Core..=) Core.<$> majorVersion,
            ("minorVersion" Core..=) Core.<$> minorVersion,
            ("supportedXcodeVersionIds" Core..=)
              Core.<$> supportedXcodeVersionIds,
            ("tags" Core..=) Core.<$> tags
          ]
      )

-- | A test of an iOS application that uses the XCTest framework. Xcode supports the option to \"build for testing\", which generates an .xctestrun file that contains a test specification (arguments, test methods, etc). This test type accepts a zip file containing the .xctestrun file and the corresponding contents of the Build\/Products directory that contains all the binaries needed to run the tests.
--
-- /See:/ 'newIosXcTest' smart constructor.
data IosXcTest = IosXcTest
  { -- | Output only. The bundle id for the application under test.
    appBundleId :: (Core.Maybe Core.Text),
    -- | The option to test special app entitlements. Setting this would re-sign the app having special entitlements with an explicit application-identifier. Currently supports testing aps-environment entitlement.
    testSpecialEntitlements :: (Core.Maybe Core.Bool),
    -- | Required. The .zip containing the .xctestrun file and the contents of the DerivedData\/Build\/Products directory. The .xctestrun file in this zip is ignored if the xctestrun field is specified.
    testsZip :: (Core.Maybe FileReference),
    -- | The Xcode version that should be used for the test. Use the TestEnvironmentDiscoveryService to get supported options. Defaults to the latest Xcode version Firebase Test Lab supports.
    xcodeVersion :: (Core.Maybe Core.Text),
    -- | An .xctestrun file that will override the .xctestrun file in the tests zip. Because the .xctestrun file contains environment variables along with test methods to run and\/or ignore, this can be useful for sharding tests. Default is taken from the tests zip.
    xctestrun :: (Core.Maybe FileReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IosXcTest' with the minimum fields required to make a request.
newIosXcTest ::
  IosXcTest
newIosXcTest =
  IosXcTest
    { appBundleId = Core.Nothing,
      testSpecialEntitlements = Core.Nothing,
      testsZip = Core.Nothing,
      xcodeVersion = Core.Nothing,
      xctestrun = Core.Nothing
    }

instance Core.FromJSON IosXcTest where
  parseJSON =
    Core.withObject
      "IosXcTest"
      ( \o ->
          IosXcTest
            Core.<$> (o Core..:? "appBundleId")
            Core.<*> (o Core..:? "testSpecialEntitlements")
            Core.<*> (o Core..:? "testsZip")
            Core.<*> (o Core..:? "xcodeVersion")
            Core.<*> (o Core..:? "xctestrun")
      )

instance Core.ToJSON IosXcTest where
  toJSON IosXcTest {..} =
    Core.object
      ( Core.catMaybes
          [ ("appBundleId" Core..=) Core.<$> appBundleId,
            ("testSpecialEntitlements" Core..=)
              Core.<$> testSpecialEntitlements,
            ("testsZip" Core..=) Core.<$> testsZip,
            ("xcodeVersion" Core..=) Core.<$> xcodeVersion,
            ("xctestrun" Core..=) Core.<$> xctestrun
          ]
      )

-- | Specifies an intent that starts the main launcher activity.
--
-- /See:/ 'newLauncherActivityIntent' smart constructor.
data LauncherActivityIntent = LauncherActivityIntent
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LauncherActivityIntent' with the minimum fields required to make a request.
newLauncherActivityIntent ::
  LauncherActivityIntent
newLauncherActivityIntent = LauncherActivityIntent

instance Core.FromJSON LauncherActivityIntent where
  parseJSON =
    Core.withObject
      "LauncherActivityIntent"
      (\o -> Core.pure LauncherActivityIntent)

instance Core.ToJSON LauncherActivityIntent where
  toJSON = Core.const Core.emptyObject

-- | A location\/region designation for language.
--
-- /See:/ 'newLocale' smart constructor.
data Locale = Locale
  { -- | The id for this locale. Example: \"en_US\".
    id :: (Core.Maybe Core.Text),
    -- | A human-friendly name for this language\/locale. Example: \"English\".
    name :: (Core.Maybe Core.Text),
    -- | A human-friendly string representing the region for this locale. Example: \"United States\". Not present for every locale.
    region :: (Core.Maybe Core.Text),
    -- | Tags for this dimension. Example: \"default\".
    tags :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Locale' with the minimum fields required to make a request.
newLocale ::
  Locale
newLocale =
  Locale
    { id = Core.Nothing,
      name = Core.Nothing,
      region = Core.Nothing,
      tags = Core.Nothing
    }

instance Core.FromJSON Locale where
  parseJSON =
    Core.withObject
      "Locale"
      ( \o ->
          Locale
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "tags" Core..!= Core.mempty)
      )

instance Core.ToJSON Locale where
  toJSON Locale {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("name" Core..=) Core.<$> name,
            ("region" Core..=) Core.<$> region,
            ("tags" Core..=) Core.<$> tags
          ]
      )

-- | Shards test cases into the specified groups of packages, classes, and\/or methods. With manual sharding enabled, specifying test targets via environment_variables or in InstrumentationTest is invalid.
--
-- /See:/ 'newManualSharding' smart constructor.
newtype ManualSharding = ManualSharding
  { -- | Required. Group of packages, classes, and\/or test methods to be run for each shard. When any physical devices are selected, the number of test/targets/for_shard must be >= 1 and \<= 50. When no physical devices are selected, the number must be >= 1 and \<= 500.
    testTargetsForShard :: (Core.Maybe [TestTargetsForShard])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManualSharding' with the minimum fields required to make a request.
newManualSharding ::
  ManualSharding
newManualSharding = ManualSharding {testTargetsForShard = Core.Nothing}

instance Core.FromJSON ManualSharding where
  parseJSON =
    Core.withObject
      "ManualSharding"
      ( \o ->
          ManualSharding
            Core.<$> ( o Core..:? "testTargetsForShard"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ManualSharding where
  toJSON ManualSharding {..} =
    Core.object
      ( Core.catMaybes
          [ ("testTargetsForShard" Core..=)
              Core.<$> testTargetsForShard
          ]
      )

--
-- /See:/ 'newNetworkConfiguration' smart constructor.
data NetworkConfiguration = NetworkConfiguration
  { -- | The emulation rule applying to the download traffic.
    downRule :: (Core.Maybe TrafficRule),
    -- | The unique opaque id for this network traffic configuration.
    id :: (Core.Maybe Core.Text),
    -- | The emulation rule applying to the upload traffic.
    upRule :: (Core.Maybe TrafficRule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkConfiguration' with the minimum fields required to make a request.
newNetworkConfiguration ::
  NetworkConfiguration
newNetworkConfiguration =
  NetworkConfiguration
    { downRule = Core.Nothing,
      id = Core.Nothing,
      upRule = Core.Nothing
    }

instance Core.FromJSON NetworkConfiguration where
  parseJSON =
    Core.withObject
      "NetworkConfiguration"
      ( \o ->
          NetworkConfiguration
            Core.<$> (o Core..:? "downRule")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "upRule")
      )

instance Core.ToJSON NetworkConfiguration where
  toJSON NetworkConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("downRule" Core..=) Core.<$> downRule,
            ("id" Core..=) Core.<$> id,
            ("upRule" Core..=) Core.<$> upRule
          ]
      )

--
-- /See:/ 'newNetworkConfigurationCatalog' smart constructor.
newtype NetworkConfigurationCatalog = NetworkConfigurationCatalog
  { -- |
    configurations :: (Core.Maybe [NetworkConfiguration])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkConfigurationCatalog' with the minimum fields required to make a request.
newNetworkConfigurationCatalog ::
  NetworkConfigurationCatalog
newNetworkConfigurationCatalog =
  NetworkConfigurationCatalog {configurations = Core.Nothing}

instance Core.FromJSON NetworkConfigurationCatalog where
  parseJSON =
    Core.withObject
      "NetworkConfigurationCatalog"
      ( \o ->
          NetworkConfigurationCatalog
            Core.<$> (o Core..:? "configurations" Core..!= Core.mempty)
      )

instance Core.ToJSON NetworkConfigurationCatalog where
  toJSON NetworkConfigurationCatalog {..} =
    Core.object
      ( Core.catMaybes
          [("configurations" Core..=) Core.<$> configurations]
      )

-- | An opaque binary blob file to install on the device before the test starts.
--
-- /See:/ 'newObbFile' smart constructor.
data ObbFile = ObbFile
  { -- | Required. Opaque Binary Blob (OBB) file(s) to install on the device.
    obb :: (Core.Maybe FileReference),
    -- | Required. OBB file name which must conform to the format as specified by Android e.g. [main|patch].0300110.com.example.android.obb which will be installed into \\\/Android\/obb\/\\\/ on the device.
    obbFileName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObbFile' with the minimum fields required to make a request.
newObbFile ::
  ObbFile
newObbFile = ObbFile {obb = Core.Nothing, obbFileName = Core.Nothing}

instance Core.FromJSON ObbFile where
  parseJSON =
    Core.withObject
      "ObbFile"
      ( \o ->
          ObbFile
            Core.<$> (o Core..:? "obb")
            Core.<*> (o Core..:? "obbFileName")
      )

instance Core.ToJSON ObbFile where
  toJSON ObbFile {..} =
    Core.object
      ( Core.catMaybes
          [ ("obb" Core..=) Core.<$> obb,
            ("obbFileName" Core..=) Core.<$> obbFileName
          ]
      )

-- | Screen orientation of the device.
--
-- /See:/ 'newOrientation' smart constructor.
data Orientation = Orientation
  { -- | The id for this orientation. Example: \"portrait\".
    id :: (Core.Maybe Core.Text),
    -- | A human-friendly name for this orientation. Example: \"portrait\".
    name :: (Core.Maybe Core.Text),
    -- | Tags for this dimension. Example: \"default\".
    tags :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Orientation' with the minimum fields required to make a request.
newOrientation ::
  Orientation
newOrientation =
  Orientation {id = Core.Nothing, name = Core.Nothing, tags = Core.Nothing}

instance Core.FromJSON Orientation where
  parseJSON =
    Core.withObject
      "Orientation"
      ( \o ->
          Orientation
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "tags" Core..!= Core.mempty)
      )

instance Core.ToJSON Orientation where
  toJSON Orientation {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("name" Core..=) Core.<$> name,
            ("tags" Core..=) Core.<$> tags
          ]
      )

-- | The currently provided software environment on the devices under test.
--
-- /See:/ 'newProvidedSoftwareCatalog' smart constructor.
data ProvidedSoftwareCatalog = ProvidedSoftwareCatalog
  { -- | A string representing the current version of AndroidX Test Orchestrator that is used in the environment. The package is available at https:\/\/maven.google.com\/web\/index.html#androidx.test:orchestrator.
    androidxOrchestratorVersion :: (Core.Maybe Core.Text),
    -- | Deprecated: Use AndroidX Test Orchestrator going forward. A string representing the current version of Android Test Orchestrator that is used in the environment. The package is available at https:\/\/maven.google.com\/web\/index.html#com.android.support.test:orchestrator.
    orchestratorVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProvidedSoftwareCatalog' with the minimum fields required to make a request.
newProvidedSoftwareCatalog ::
  ProvidedSoftwareCatalog
newProvidedSoftwareCatalog =
  ProvidedSoftwareCatalog
    { androidxOrchestratorVersion = Core.Nothing,
      orchestratorVersion = Core.Nothing
    }

instance Core.FromJSON ProvidedSoftwareCatalog where
  parseJSON =
    Core.withObject
      "ProvidedSoftwareCatalog"
      ( \o ->
          ProvidedSoftwareCatalog
            Core.<$> (o Core..:? "androidxOrchestratorVersion")
            Core.<*> (o Core..:? "orchestratorVersion")
      )

instance Core.ToJSON ProvidedSoftwareCatalog where
  toJSON ProvidedSoftwareCatalog {..} =
    Core.object
      ( Core.catMaybes
          [ ("androidxOrchestratorVersion" Core..=)
              Core.<$> androidxOrchestratorVersion,
            ("orchestratorVersion" Core..=)
              Core.<$> orchestratorVersion
          ]
      )

-- | A file or directory to install on the device before the test starts.
--
-- /See:/ 'newRegularFile' smart constructor.
data RegularFile = RegularFile
  { -- | Required. The source file.
    content :: (Core.Maybe FileReference),
    -- | Required. Where to put the content on the device. Must be an absolute, allowlisted path. If the file exists, it will be replaced. The following device-side directories and any of their subdirectories are allowlisted: ${EXTERNAL/STORAGE}, \/sdcard, or \/storage ${ANDROID/DATA}\/local\/tmp, or \/data\/local\/tmp Specifying a path outside of these directory trees is invalid. The paths \/sdcard and \/data will be made available and treated as implicit path substitutions. E.g. if \/sdcard on a particular device does not map to external storage, the system will replace it with the external storage path prefix for that device and copy the file there. It is strongly advised to use the Environment API in app and test code to access files on the device in a portable way.
    devicePath :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegularFile' with the minimum fields required to make a request.
newRegularFile ::
  RegularFile
newRegularFile = RegularFile {content = Core.Nothing, devicePath = Core.Nothing}

instance Core.FromJSON RegularFile where
  parseJSON =
    Core.withObject
      "RegularFile"
      ( \o ->
          RegularFile
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "devicePath")
      )

instance Core.ToJSON RegularFile where
  toJSON RegularFile {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("devicePath" Core..=) Core.<$> devicePath
          ]
      )

-- | Locations where the results of running the test are stored.
--
-- /See:/ 'newResultStorage' smart constructor.
data ResultStorage = ResultStorage
  { -- | Required.
    googleCloudStorage :: (Core.Maybe GoogleCloudStorage),
    -- | Output only. URL to the results in the Firebase Web Console.
    resultsUrl :: (Core.Maybe Core.Text),
    -- | Output only. The tool results execution that results are written to.
    toolResultsExecution :: (Core.Maybe ToolResultsExecution),
    -- | The tool results history that contains the tool results execution that results are written to. If not provided, the service will choose an appropriate value.
    toolResultsHistory :: (Core.Maybe ToolResultsHistory)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResultStorage' with the minimum fields required to make a request.
newResultStorage ::
  ResultStorage
newResultStorage =
  ResultStorage
    { googleCloudStorage = Core.Nothing,
      resultsUrl = Core.Nothing,
      toolResultsExecution = Core.Nothing,
      toolResultsHistory = Core.Nothing
    }

instance Core.FromJSON ResultStorage where
  parseJSON =
    Core.withObject
      "ResultStorage"
      ( \o ->
          ResultStorage
            Core.<$> (o Core..:? "googleCloudStorage")
            Core.<*> (o Core..:? "resultsUrl")
            Core.<*> (o Core..:? "toolResultsExecution")
            Core.<*> (o Core..:? "toolResultsHistory")
      )

instance Core.ToJSON ResultStorage where
  toJSON ResultStorage {..} =
    Core.object
      ( Core.catMaybes
          [ ("googleCloudStorage" Core..=)
              Core.<$> googleCloudStorage,
            ("resultsUrl" Core..=) Core.<$> resultsUrl,
            ("toolResultsExecution" Core..=)
              Core.<$> toolResultsExecution,
            ("toolResultsHistory" Core..=)
              Core.<$> toolResultsHistory
          ]
      )

-- | Directs Robo to interact with a specific UI element if it is encountered during the crawl. Currently, Robo can perform text entry or element click.
--
-- /See:/ 'newRoboDirective' smart constructor.
data RoboDirective = RoboDirective
  { -- | Required. The type of action that Robo should perform on the specified element.
    actionType :: (Core.Maybe RoboDirective_ActionType),
    -- | The text that Robo is directed to set. If left empty, the directive will be treated as a CLICK on the element matching the resource_name.
    inputText :: (Core.Maybe Core.Text),
    -- | Required. The android resource name of the target UI element. For example, in Java: R.string.foo in xml: \@string\/foo Only the \"foo\" part is needed. Reference doc: https:\/\/developer.android.com\/guide\/topics\/resources\/accessing-resources.html
    resourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RoboDirective' with the minimum fields required to make a request.
newRoboDirective ::
  RoboDirective
newRoboDirective =
  RoboDirective
    { actionType = Core.Nothing,
      inputText = Core.Nothing,
      resourceName = Core.Nothing
    }

instance Core.FromJSON RoboDirective where
  parseJSON =
    Core.withObject
      "RoboDirective"
      ( \o ->
          RoboDirective
            Core.<$> (o Core..:? "actionType")
            Core.<*> (o Core..:? "inputText")
            Core.<*> (o Core..:? "resourceName")
      )

instance Core.ToJSON RoboDirective where
  toJSON RoboDirective {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionType" Core..=) Core.<$> actionType,
            ("inputText" Core..=) Core.<$> inputText,
            ("resourceName" Core..=) Core.<$> resourceName
          ]
      )

-- | Message for specifying the start activities to crawl.
--
-- /See:/ 'newRoboStartingIntent' smart constructor.
data RoboStartingIntent = RoboStartingIntent
  { -- | An intent that starts the main launcher activity.
    launcherActivity :: (Core.Maybe LauncherActivityIntent),
    -- | An intent that starts an activity with specific details.
    startActivity :: (Core.Maybe StartActivityIntent),
    -- | Timeout in seconds for each intent.
    timeout :: (Core.Maybe Core.GDuration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RoboStartingIntent' with the minimum fields required to make a request.
newRoboStartingIntent ::
  RoboStartingIntent
newRoboStartingIntent =
  RoboStartingIntent
    { launcherActivity = Core.Nothing,
      startActivity = Core.Nothing,
      timeout = Core.Nothing
    }

instance Core.FromJSON RoboStartingIntent where
  parseJSON =
    Core.withObject
      "RoboStartingIntent"
      ( \o ->
          RoboStartingIntent
            Core.<$> (o Core..:? "launcherActivity")
            Core.<*> (o Core..:? "startActivity")
            Core.<*> (o Core..:? "timeout")
      )

instance Core.ToJSON RoboStartingIntent where
  toJSON RoboStartingIntent {..} =
    Core.object
      ( Core.catMaybes
          [ ("launcherActivity" Core..=)
              Core.<$> launcherActivity,
            ("startActivity" Core..=) Core.<$> startActivity,
            ("timeout" Core..=) Core.<$> timeout
          ]
      )

-- | Output only. Details about the shard.
--
-- /See:/ 'newShard' smart constructor.
data Shard = Shard
  { -- | Output only. The total number of shards.
    numShards :: (Core.Maybe Core.Int32),
    -- | Output only. The index of the shard among all the shards.
    shardIndex :: (Core.Maybe Core.Int32),
    -- | Output only. Test targets for each shard.
    testTargetsForShard :: (Core.Maybe TestTargetsForShard)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Shard' with the minimum fields required to make a request.
newShard ::
  Shard
newShard =
  Shard
    { numShards = Core.Nothing,
      shardIndex = Core.Nothing,
      testTargetsForShard = Core.Nothing
    }

instance Core.FromJSON Shard where
  parseJSON =
    Core.withObject
      "Shard"
      ( \o ->
          Shard
            Core.<$> (o Core..:? "numShards")
            Core.<*> (o Core..:? "shardIndex")
            Core.<*> (o Core..:? "testTargetsForShard")
      )

instance Core.ToJSON Shard where
  toJSON Shard {..} =
    Core.object
      ( Core.catMaybes
          [ ("numShards" Core..=) Core.<$> numShards,
            ("shardIndex" Core..=) Core.<$> shardIndex,
            ("testTargetsForShard" Core..=)
              Core.<$> testTargetsForShard
          ]
      )

-- | Options for enabling sharding.
--
-- /See:/ 'newShardingOption' smart constructor.
data ShardingOption = ShardingOption
  { -- | Shards test cases into the specified groups of packages, classes, and\/or methods.
    manualSharding :: (Core.Maybe ManualSharding),
    -- | Uniformly shards test cases given a total number of shards.
    uniformSharding :: (Core.Maybe UniformSharding)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShardingOption' with the minimum fields required to make a request.
newShardingOption ::
  ShardingOption
newShardingOption =
  ShardingOption {manualSharding = Core.Nothing, uniformSharding = Core.Nothing}

instance Core.FromJSON ShardingOption where
  parseJSON =
    Core.withObject
      "ShardingOption"
      ( \o ->
          ShardingOption
            Core.<$> (o Core..:? "manualSharding")
            Core.<*> (o Core..:? "uniformSharding")
      )

instance Core.ToJSON ShardingOption where
  toJSON ShardingOption {..} =
    Core.object
      ( Core.catMaybes
          [ ("manualSharding" Core..=) Core.<$> manualSharding,
            ("uniformSharding" Core..=)
              Core.<$> uniformSharding
          ]
      )

-- | A starting intent specified by an action, uri, and categories.
--
-- /See:/ 'newStartActivityIntent' smart constructor.
data StartActivityIntent = StartActivityIntent
  { -- | Action name. Required for START_ACTIVITY.
    action :: (Core.Maybe Core.Text),
    -- | Intent categories to set on the intent.
    categories :: (Core.Maybe [Core.Text]),
    -- | URI for the action.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartActivityIntent' with the minimum fields required to make a request.
newStartActivityIntent ::
  StartActivityIntent
newStartActivityIntent =
  StartActivityIntent
    { action = Core.Nothing,
      categories = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON StartActivityIntent where
  parseJSON =
    Core.withObject
      "StartActivityIntent"
      ( \o ->
          StartActivityIntent
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "categories" Core..!= Core.mempty)
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON StartActivityIntent where
  toJSON StartActivityIntent {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("categories" Core..=) Core.<$> categories,
            ("uri" Core..=) Core.<$> uri
          ]
      )

--
-- /See:/ 'newSystraceSetup' smart constructor.
newtype SystraceSetup = SystraceSetup
  { -- | Systrace duration in seconds. Should be between 1 and 30 seconds. 0 disables systrace.
    durationSeconds :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SystraceSetup' with the minimum fields required to make a request.
newSystraceSetup ::
  SystraceSetup
newSystraceSetup = SystraceSetup {durationSeconds = Core.Nothing}

instance Core.FromJSON SystraceSetup where
  parseJSON =
    Core.withObject
      "SystraceSetup"
      ( \o ->
          SystraceSetup
            Core.<$> (o Core..:? "durationSeconds")
      )

instance Core.ToJSON SystraceSetup where
  toJSON SystraceSetup {..} =
    Core.object
      ( Core.catMaybes
          [ ("durationSeconds" Core..=)
              Core.<$> durationSeconds
          ]
      )

-- | Additional details about the progress of the running test.
--
-- /See:/ 'newTestDetails' smart constructor.
data TestDetails = TestDetails
  { -- | Output only. If the TestState is ERROR, then this string will contain human-readable details about the error.
    errorMessage :: (Core.Maybe Core.Text),
    -- | Output only. Human-readable, detailed descriptions of the test\'s progress. For example: \"Provisioning a device\", \"Starting Test\". During the course of execution new data may be appended to the end of progress_messages.
    progressMessages :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestDetails' with the minimum fields required to make a request.
newTestDetails ::
  TestDetails
newTestDetails =
  TestDetails {errorMessage = Core.Nothing, progressMessages = Core.Nothing}

instance Core.FromJSON TestDetails where
  parseJSON =
    Core.withObject
      "TestDetails"
      ( \o ->
          TestDetails
            Core.<$> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "progressMessages" Core..!= Core.mempty)
      )

instance Core.ToJSON TestDetails where
  toJSON TestDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorMessage" Core..=) Core.<$> errorMessage,
            ("progressMessages" Core..=)
              Core.<$> progressMessages
          ]
      )

-- | A description of a test environment.
--
-- /See:/ 'newTestEnvironmentCatalog' smart constructor.
data TestEnvironmentCatalog = TestEnvironmentCatalog
  { -- | Supported Android devices.
    androidDeviceCatalog :: (Core.Maybe AndroidDeviceCatalog),
    -- | The IP blocks used by devices in the test environment.
    deviceIpBlockCatalog :: (Core.Maybe DeviceIpBlockCatalog),
    -- | Supported iOS devices.
    iosDeviceCatalog :: (Core.Maybe IosDeviceCatalog),
    -- | Supported network configurations.
    networkConfigurationCatalog :: (Core.Maybe NetworkConfigurationCatalog),
    -- | The software test environment provided by TestExecutionService.
    softwareCatalog :: (Core.Maybe ProvidedSoftwareCatalog)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestEnvironmentCatalog' with the minimum fields required to make a request.
newTestEnvironmentCatalog ::
  TestEnvironmentCatalog
newTestEnvironmentCatalog =
  TestEnvironmentCatalog
    { androidDeviceCatalog = Core.Nothing,
      deviceIpBlockCatalog = Core.Nothing,
      iosDeviceCatalog = Core.Nothing,
      networkConfigurationCatalog = Core.Nothing,
      softwareCatalog = Core.Nothing
    }

instance Core.FromJSON TestEnvironmentCatalog where
  parseJSON =
    Core.withObject
      "TestEnvironmentCatalog"
      ( \o ->
          TestEnvironmentCatalog
            Core.<$> (o Core..:? "androidDeviceCatalog")
            Core.<*> (o Core..:? "deviceIpBlockCatalog")
            Core.<*> (o Core..:? "iosDeviceCatalog")
            Core.<*> (o Core..:? "networkConfigurationCatalog")
            Core.<*> (o Core..:? "softwareCatalog")
      )

instance Core.ToJSON TestEnvironmentCatalog where
  toJSON TestEnvironmentCatalog {..} =
    Core.object
      ( Core.catMaybes
          [ ("androidDeviceCatalog" Core..=)
              Core.<$> androidDeviceCatalog,
            ("deviceIpBlockCatalog" Core..=)
              Core.<$> deviceIpBlockCatalog,
            ("iosDeviceCatalog" Core..=)
              Core.<$> iosDeviceCatalog,
            ("networkConfigurationCatalog" Core..=)
              Core.<$> networkConfigurationCatalog,
            ("softwareCatalog" Core..=)
              Core.<$> softwareCatalog
          ]
      )

-- | A single test executed in a single environment.
--
-- /See:/ 'newTestExecution' smart constructor.
data TestExecution = TestExecution
  { -- | Output only. How the host machine(s) are configured.
    environment :: (Core.Maybe Environment),
    -- | Output only. Unique id set by the service.
    id :: (Core.Maybe Core.Text),
    -- | Output only. Id of the containing TestMatrix.
    matrixId :: (Core.Maybe Core.Text),
    -- | Output only. The cloud project that owns the test execution.
    projectId :: (Core.Maybe Core.Text),
    -- | Output only. Details about the shard.
    shard :: (Core.Maybe Shard),
    -- | Output only. Indicates the current progress of the test execution (e.g., FINISHED).
    state :: (Core.Maybe TestExecution_State),
    -- | Output only. Additional details about the running test.
    testDetails :: (Core.Maybe TestDetails),
    -- | Output only. How to run the test.
    testSpecification :: (Core.Maybe TestSpecification),
    -- | Output only. The time this test execution was initially created.
    timestamp :: (Core.Maybe Core.DateTime'),
    -- | Output only. Where the results for this execution are written.
    toolResultsStep :: (Core.Maybe ToolResultsStep)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestExecution' with the minimum fields required to make a request.
newTestExecution ::
  TestExecution
newTestExecution =
  TestExecution
    { environment = Core.Nothing,
      id = Core.Nothing,
      matrixId = Core.Nothing,
      projectId = Core.Nothing,
      shard = Core.Nothing,
      state = Core.Nothing,
      testDetails = Core.Nothing,
      testSpecification = Core.Nothing,
      timestamp = Core.Nothing,
      toolResultsStep = Core.Nothing
    }

instance Core.FromJSON TestExecution where
  parseJSON =
    Core.withObject
      "TestExecution"
      ( \o ->
          TestExecution
            Core.<$> (o Core..:? "environment")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "matrixId")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "shard")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "testDetails")
            Core.<*> (o Core..:? "testSpecification")
            Core.<*> (o Core..:? "timestamp")
            Core.<*> (o Core..:? "toolResultsStep")
      )

instance Core.ToJSON TestExecution where
  toJSON TestExecution {..} =
    Core.object
      ( Core.catMaybes
          [ ("environment" Core..=) Core.<$> environment,
            ("id" Core..=) Core.<$> id,
            ("matrixId" Core..=) Core.<$> matrixId,
            ("projectId" Core..=) Core.<$> projectId,
            ("shard" Core..=) Core.<$> shard,
            ("state" Core..=) Core.<$> state,
            ("testDetails" Core..=) Core.<$> testDetails,
            ("testSpecification" Core..=)
              Core.<$> testSpecification,
            ("timestamp" Core..=) Core.<$> timestamp,
            ("toolResultsStep" Core..=)
              Core.<$> toolResultsStep
          ]
      )

-- | TestMatrix captures all details about a test. It contains the environment configuration, test specification, test executions and overall state and outcome.
--
-- /See:/ 'newTestMatrix' smart constructor.
data TestMatrix = TestMatrix
  { -- | Information about the client which invoked the test.
    clientInfo :: (Core.Maybe ClientInfo),
    -- | Required. The devices the tests are being executed on.
    environmentMatrix :: (Core.Maybe EnvironmentMatrix),
    -- | If true, only a single attempt at most will be made to run each execution\/shard in the matrix. Flaky test attempts are not affected. Normally, 2 or more attempts are made if a potential infrastructure issue is detected. This feature is for latency sensitive workloads. The incidence of execution failures may be significantly greater for fail-fast matrices and support is more limited because of that expectation.
    failFast :: (Core.Maybe Core.Bool),
    -- | The number of times a TestExecution should be re-attempted if one or more of its test cases fail for any reason. The maximum number of reruns allowed is 10. Default is 0, which implies no reruns.
    flakyTestAttempts :: (Core.Maybe Core.Int32),
    -- | Output only. Describes why the matrix is considered invalid. Only useful for matrices in the INVALID state.
    invalidMatrixDetails :: (Core.Maybe TestMatrix_InvalidMatrixDetails),
    -- | Output Only. The overall outcome of the test. Only set when the test matrix state is FINISHED.
    outcomeSummary :: (Core.Maybe TestMatrix_OutcomeSummary),
    -- | The cloud project that owns the test matrix.
    projectId :: (Core.Maybe Core.Text),
    -- | Required. Where the results for the matrix are written.
    resultStorage :: (Core.Maybe ResultStorage),
    -- | Output only. Indicates the current progress of the test matrix.
    state :: (Core.Maybe TestMatrix_State),
    -- | Output only. The list of test executions that the service creates for this matrix.
    testExecutions :: (Core.Maybe [TestExecution]),
    -- | Output only. Unique id set by the service.
    testMatrixId :: (Core.Maybe Core.Text),
    -- | Required. How to run the test.
    testSpecification :: (Core.Maybe TestSpecification),
    -- | Output only. The time this test matrix was initially created.
    timestamp :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestMatrix' with the minimum fields required to make a request.
newTestMatrix ::
  TestMatrix
newTestMatrix =
  TestMatrix
    { clientInfo = Core.Nothing,
      environmentMatrix = Core.Nothing,
      failFast = Core.Nothing,
      flakyTestAttempts = Core.Nothing,
      invalidMatrixDetails = Core.Nothing,
      outcomeSummary = Core.Nothing,
      projectId = Core.Nothing,
      resultStorage = Core.Nothing,
      state = Core.Nothing,
      testExecutions = Core.Nothing,
      testMatrixId = Core.Nothing,
      testSpecification = Core.Nothing,
      timestamp = Core.Nothing
    }

instance Core.FromJSON TestMatrix where
  parseJSON =
    Core.withObject
      "TestMatrix"
      ( \o ->
          TestMatrix
            Core.<$> (o Core..:? "clientInfo")
            Core.<*> (o Core..:? "environmentMatrix")
            Core.<*> (o Core..:? "failFast")
            Core.<*> (o Core..:? "flakyTestAttempts")
            Core.<*> (o Core..:? "invalidMatrixDetails")
            Core.<*> (o Core..:? "outcomeSummary")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "resultStorage")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "testExecutions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "testMatrixId")
            Core.<*> (o Core..:? "testSpecification")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON TestMatrix where
  toJSON TestMatrix {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientInfo" Core..=) Core.<$> clientInfo,
            ("environmentMatrix" Core..=)
              Core.<$> environmentMatrix,
            ("failFast" Core..=) Core.<$> failFast,
            ("flakyTestAttempts" Core..=)
              Core.<$> flakyTestAttempts,
            ("invalidMatrixDetails" Core..=)
              Core.<$> invalidMatrixDetails,
            ("outcomeSummary" Core..=) Core.<$> outcomeSummary,
            ("projectId" Core..=) Core.<$> projectId,
            ("resultStorage" Core..=) Core.<$> resultStorage,
            ("state" Core..=) Core.<$> state,
            ("testExecutions" Core..=) Core.<$> testExecutions,
            ("testMatrixId" Core..=) Core.<$> testMatrixId,
            ("testSpecification" Core..=)
              Core.<$> testSpecification,
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

-- | A description of how to set up the Android device prior to running the test.
--
-- /See:/ 'newTestSetup' smart constructor.
data TestSetup = TestSetup
  { -- | The device will be logged in on this account for the duration of the test.
    account :: (Core.Maybe Account),
    -- | APKs to install in addition to those being directly tested. Currently capped at 100.
    additionalApks :: (Core.Maybe [Apk]),
    -- | List of directories on the device to upload to GCS at the end of the test; they must be absolute paths under \/sdcard, \/storage or \/data\/local\/tmp. Path names are restricted to characters a-z A-Z 0-9 _ - . + and \/ Note: The paths \/sdcard and \/data will be made available and treated as implicit path substitutions. E.g. if \/sdcard on a particular device does not map to external storage, the system will replace it with the external storage path prefix for that device.
    directoriesToPull :: (Core.Maybe [Core.Text]),
    -- | Whether to prevent all runtime permissions to be granted at app install
    dontAutograntPermissions :: (Core.Maybe Core.Bool),
    -- | Environment variables to set for the test (only applicable for instrumentation tests).
    environmentVariables :: (Core.Maybe [EnvironmentVariable]),
    -- | List of files to push to the device before starting the test.
    filesToPush :: (Core.Maybe [DeviceFile]),
    -- | The network traffic profile used for running the test. Available network profiles can be queried by using the NETWORK_CONFIGURATION environment type when calling TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
    networkProfile :: (Core.Maybe Core.Text),
    -- | Deprecated: Systrace uses Python 2 which has been sunset 2020-01-01. Support of Systrace may stop at any time, at which point no Systrace file will be provided in the results. Systrace configuration for the run. If set a systrace will be taken, starting on test start and lasting for the configured duration. The systrace file thus obtained is put in the results bucket together with the other artifacts from the run.
    systrace :: (Core.Maybe SystraceSetup)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestSetup' with the minimum fields required to make a request.
newTestSetup ::
  TestSetup
newTestSetup =
  TestSetup
    { account = Core.Nothing,
      additionalApks = Core.Nothing,
      directoriesToPull = Core.Nothing,
      dontAutograntPermissions = Core.Nothing,
      environmentVariables = Core.Nothing,
      filesToPush = Core.Nothing,
      networkProfile = Core.Nothing,
      systrace = Core.Nothing
    }

instance Core.FromJSON TestSetup where
  parseJSON =
    Core.withObject
      "TestSetup"
      ( \o ->
          TestSetup
            Core.<$> (o Core..:? "account")
            Core.<*> (o Core..:? "additionalApks" Core..!= Core.mempty)
            Core.<*> (o Core..:? "directoriesToPull" Core..!= Core.mempty)
            Core.<*> (o Core..:? "dontAutograntPermissions")
            Core.<*> ( o Core..:? "environmentVariables"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "filesToPush" Core..!= Core.mempty)
            Core.<*> (o Core..:? "networkProfile")
            Core.<*> (o Core..:? "systrace")
      )

instance Core.ToJSON TestSetup where
  toJSON TestSetup {..} =
    Core.object
      ( Core.catMaybes
          [ ("account" Core..=) Core.<$> account,
            ("additionalApks" Core..=) Core.<$> additionalApks,
            ("directoriesToPull" Core..=)
              Core.<$> directoriesToPull,
            ("dontAutograntPermissions" Core..=)
              Core.<$> dontAutograntPermissions,
            ("environmentVariables" Core..=)
              Core.<$> environmentVariables,
            ("filesToPush" Core..=) Core.<$> filesToPush,
            ("networkProfile" Core..=) Core.<$> networkProfile,
            ("systrace" Core..=) Core.<$> systrace
          ]
      )

-- | A description of how to run the test.
--
-- /See:/ 'newTestSpecification' smart constructor.
data TestSpecification = TestSpecification
  { -- | An Android instrumentation test.
    androidInstrumentationTest :: (Core.Maybe AndroidInstrumentationTest),
    -- | An Android robo test.
    androidRoboTest :: (Core.Maybe AndroidRoboTest),
    -- | An Android Application with a Test Loop.
    androidTestLoop :: (Core.Maybe AndroidTestLoop),
    -- | Disables performance metrics recording. May reduce test latency.
    disablePerformanceMetrics :: (Core.Maybe Core.Bool),
    -- | Disables video recording. May reduce test latency.
    disableVideoRecording :: (Core.Maybe Core.Bool),
    -- | An iOS application with a test loop.
    iosTestLoop :: (Core.Maybe IosTestLoop),
    -- | Test setup requirements for iOS.
    iosTestSetup :: (Core.Maybe IosTestSetup),
    -- | An iOS XCTest, via an .xctestrun file.
    iosXcTest :: (Core.Maybe IosXcTest),
    -- | Test setup requirements for Android e.g. files to install, bootstrap scripts.
    testSetup :: (Core.Maybe TestSetup),
    -- | Max time a test execution is allowed to run before it is automatically cancelled. The default value is 5 min.
    testTimeout :: (Core.Maybe Core.GDuration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestSpecification' with the minimum fields required to make a request.
newTestSpecification ::
  TestSpecification
newTestSpecification =
  TestSpecification
    { androidInstrumentationTest = Core.Nothing,
      androidRoboTest = Core.Nothing,
      androidTestLoop = Core.Nothing,
      disablePerformanceMetrics = Core.Nothing,
      disableVideoRecording = Core.Nothing,
      iosTestLoop = Core.Nothing,
      iosTestSetup = Core.Nothing,
      iosXcTest = Core.Nothing,
      testSetup = Core.Nothing,
      testTimeout = Core.Nothing
    }

instance Core.FromJSON TestSpecification where
  parseJSON =
    Core.withObject
      "TestSpecification"
      ( \o ->
          TestSpecification
            Core.<$> (o Core..:? "androidInstrumentationTest")
            Core.<*> (o Core..:? "androidRoboTest")
            Core.<*> (o Core..:? "androidTestLoop")
            Core.<*> (o Core..:? "disablePerformanceMetrics")
            Core.<*> (o Core..:? "disableVideoRecording")
            Core.<*> (o Core..:? "iosTestLoop")
            Core.<*> (o Core..:? "iosTestSetup")
            Core.<*> (o Core..:? "iosXcTest")
            Core.<*> (o Core..:? "testSetup")
            Core.<*> (o Core..:? "testTimeout")
      )

instance Core.ToJSON TestSpecification where
  toJSON TestSpecification {..} =
    Core.object
      ( Core.catMaybes
          [ ("androidInstrumentationTest" Core..=)
              Core.<$> androidInstrumentationTest,
            ("androidRoboTest" Core..=) Core.<$> androidRoboTest,
            ("androidTestLoop" Core..=) Core.<$> androidTestLoop,
            ("disablePerformanceMetrics" Core..=)
              Core.<$> disablePerformanceMetrics,
            ("disableVideoRecording" Core..=)
              Core.<$> disableVideoRecording,
            ("iosTestLoop" Core..=) Core.<$> iosTestLoop,
            ("iosTestSetup" Core..=) Core.<$> iosTestSetup,
            ("iosXcTest" Core..=) Core.<$> iosXcTest,
            ("testSetup" Core..=) Core.<$> testSetup,
            ("testTimeout" Core..=) Core.<$> testTimeout
          ]
      )

-- | Test targets for a shard.
--
-- /See:/ 'newTestTargetsForShard' smart constructor.
newtype TestTargetsForShard = TestTargetsForShard
  { -- | Group of packages, classes, and\/or test methods to be run for each shard. The targets need to be specified in AndroidJUnitRunner argument format. For example, \"package com.my.packages\" \"class com.my.package.MyClass\". The number of shard/test/targets must be greater than 0.
    testTargets :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestTargetsForShard' with the minimum fields required to make a request.
newTestTargetsForShard ::
  TestTargetsForShard
newTestTargetsForShard = TestTargetsForShard {testTargets = Core.Nothing}

instance Core.FromJSON TestTargetsForShard where
  parseJSON =
    Core.withObject
      "TestTargetsForShard"
      ( \o ->
          TestTargetsForShard
            Core.<$> (o Core..:? "testTargets" Core..!= Core.mempty)
      )

instance Core.ToJSON TestTargetsForShard where
  toJSON TestTargetsForShard {..} =
    Core.object
      ( Core.catMaybes
          [("testTargets" Core..=) Core.<$> testTargets]
      )

-- | Represents a tool results execution resource. This has the results of a TestMatrix.
--
-- /See:/ 'newToolResultsExecution' smart constructor.
data ToolResultsExecution = ToolResultsExecution
  { -- | Output only. A tool results execution ID.
    executionId :: (Core.Maybe Core.Text),
    -- | Output only. A tool results history ID.
    historyId :: (Core.Maybe Core.Text),
    -- | Output only. The cloud project that owns the tool results execution.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ToolResultsExecution' with the minimum fields required to make a request.
newToolResultsExecution ::
  ToolResultsExecution
newToolResultsExecution =
  ToolResultsExecution
    { executionId = Core.Nothing,
      historyId = Core.Nothing,
      projectId = Core.Nothing
    }

instance Core.FromJSON ToolResultsExecution where
  parseJSON =
    Core.withObject
      "ToolResultsExecution"
      ( \o ->
          ToolResultsExecution
            Core.<$> (o Core..:? "executionId")
            Core.<*> (o Core..:? "historyId")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON ToolResultsExecution where
  toJSON ToolResultsExecution {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionId" Core..=) Core.<$> executionId,
            ("historyId" Core..=) Core.<$> historyId,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

-- | Represents a tool results history resource.
--
-- /See:/ 'newToolResultsHistory' smart constructor.
data ToolResultsHistory = ToolResultsHistory
  { -- | Required. A tool results history ID.
    historyId :: (Core.Maybe Core.Text),
    -- | Required. The cloud project that owns the tool results history.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ToolResultsHistory' with the minimum fields required to make a request.
newToolResultsHistory ::
  ToolResultsHistory
newToolResultsHistory =
  ToolResultsHistory {historyId = Core.Nothing, projectId = Core.Nothing}

instance Core.FromJSON ToolResultsHistory where
  parseJSON =
    Core.withObject
      "ToolResultsHistory"
      ( \o ->
          ToolResultsHistory
            Core.<$> (o Core..:? "historyId")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON ToolResultsHistory where
  toJSON ToolResultsHistory {..} =
    Core.object
      ( Core.catMaybes
          [ ("historyId" Core..=) Core.<$> historyId,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

-- | Represents a tool results step resource. This has the results of a TestExecution.
--
-- /See:/ 'newToolResultsStep' smart constructor.
data ToolResultsStep = ToolResultsStep
  { -- | Output only. A tool results execution ID.
    executionId :: (Core.Maybe Core.Text),
    -- | Output only. A tool results history ID.
    historyId :: (Core.Maybe Core.Text),
    -- | Output only. The cloud project that owns the tool results step.
    projectId :: (Core.Maybe Core.Text),
    -- | Output only. A tool results step ID.
    stepId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ToolResultsStep' with the minimum fields required to make a request.
newToolResultsStep ::
  ToolResultsStep
newToolResultsStep =
  ToolResultsStep
    { executionId = Core.Nothing,
      historyId = Core.Nothing,
      projectId = Core.Nothing,
      stepId = Core.Nothing
    }

instance Core.FromJSON ToolResultsStep where
  parseJSON =
    Core.withObject
      "ToolResultsStep"
      ( \o ->
          ToolResultsStep
            Core.<$> (o Core..:? "executionId")
            Core.<*> (o Core..:? "historyId")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "stepId")
      )

instance Core.ToJSON ToolResultsStep where
  toJSON ToolResultsStep {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionId" Core..=) Core.<$> executionId,
            ("historyId" Core..=) Core.<$> historyId,
            ("projectId" Core..=) Core.<$> projectId,
            ("stepId" Core..=) Core.<$> stepId
          ]
      )

-- | Network emulation parameters.
--
-- /See:/ 'newTrafficRule' smart constructor.
data TrafficRule = TrafficRule
  { -- | Bandwidth in kbits\/second.
    bandwidth :: (Core.Maybe Core.Double),
    -- | Burst size in kbits.
    burst :: (Core.Maybe Core.Double),
    -- | Packet delay, must be >= 0.
    delay :: (Core.Maybe Core.GDuration),
    -- | Packet duplication ratio (0.0 - 1.0).
    packetDuplicationRatio :: (Core.Maybe Core.Double),
    -- | Packet loss ratio (0.0 - 1.0).
    packetLossRatio :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrafficRule' with the minimum fields required to make a request.
newTrafficRule ::
  TrafficRule
newTrafficRule =
  TrafficRule
    { bandwidth = Core.Nothing,
      burst = Core.Nothing,
      delay = Core.Nothing,
      packetDuplicationRatio = Core.Nothing,
      packetLossRatio = Core.Nothing
    }

instance Core.FromJSON TrafficRule where
  parseJSON =
    Core.withObject
      "TrafficRule"
      ( \o ->
          TrafficRule
            Core.<$> (o Core..:? "bandwidth")
            Core.<*> (o Core..:? "burst")
            Core.<*> (o Core..:? "delay")
            Core.<*> (o Core..:? "packetDuplicationRatio")
            Core.<*> (o Core..:? "packetLossRatio")
      )

instance Core.ToJSON TrafficRule where
  toJSON TrafficRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("bandwidth" Core..=) Core.<$> bandwidth,
            ("burst" Core..=) Core.<$> burst,
            ("delay" Core..=) Core.<$> delay,
            ("packetDuplicationRatio" Core..=)
              Core.<$> packetDuplicationRatio,
            ("packetLossRatio" Core..=)
              Core.<$> packetLossRatio
          ]
      )

-- | Uniformly shards test cases given a total number of shards. For Instrumentation test, it will be translated to \"-e numShard\" \"-e shardIndex\" AndroidJUnitRunner arguments. Based on the sharding mechanism AndroidJUnitRunner uses, there is no guarantee that test cases will be distributed uniformly across all shards. With uniform sharding enabled, specifying these sharding arguments via environment_variables is invalid.
--
-- /See:/ 'newUniformSharding' smart constructor.
newtype UniformSharding = UniformSharding
  { -- | Required. Total number of shards. When any physical devices are selected, the number must be >= 1 and \<= 50. When no physical devices are selected, the number must be >= 1 and \<= 500.
    numShards :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UniformSharding' with the minimum fields required to make a request.
newUniformSharding ::
  UniformSharding
newUniformSharding = UniformSharding {numShards = Core.Nothing}

instance Core.FromJSON UniformSharding where
  parseJSON =
    Core.withObject
      "UniformSharding"
      ( \o ->
          UniformSharding Core.<$> (o Core..:? "numShards")
      )

instance Core.ToJSON UniformSharding where
  toJSON UniformSharding {..} =
    Core.object
      ( Core.catMaybes
          [("numShards" Core..=) Core.<$> numShards]
      )

-- | An Xcode version that an iOS version is compatible with.
--
-- /See:/ 'newXcodeVersion' smart constructor.
data XcodeVersion = XcodeVersion
  { -- | Tags for this Xcode version. Example: \"default\".
    tags :: (Core.Maybe [Core.Text]),
    -- | The id for this version. Example: \"9.2\".
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XcodeVersion' with the minimum fields required to make a request.
newXcodeVersion ::
  XcodeVersion
newXcodeVersion = XcodeVersion {tags = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON XcodeVersion where
  parseJSON =
    Core.withObject
      "XcodeVersion"
      ( \o ->
          XcodeVersion
            Core.<$> (o Core..:? "tags" Core..!= Core.mempty)
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON XcodeVersion where
  toJSON XcodeVersion {..} =
    Core.object
      ( Core.catMaybes
          [ ("tags" Core..=) Core.<$> tags,
            ("version" Core..=) Core.<$> version
          ]
      )
