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
-- Module      : Gogol.Testing.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Testing.Types
  ( -- * Configuration
    testingService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Account
    Account (..),
    newAccount,

    -- ** AndroidDevice
    AndroidDevice (..),
    newAndroidDevice,

    -- ** AndroidDeviceCatalog
    AndroidDeviceCatalog (..),
    newAndroidDeviceCatalog,

    -- ** AndroidDeviceList
    AndroidDeviceList (..),
    newAndroidDeviceList,

    -- ** AndroidInstrumentationTest
    AndroidInstrumentationTest (..),
    newAndroidInstrumentationTest,

    -- ** AndroidInstrumentationTest_OrchestratorOption
    AndroidInstrumentationTest_OrchestratorOption (..),

    -- ** AndroidMatrix
    AndroidMatrix (..),
    newAndroidMatrix,

    -- ** AndroidModel
    AndroidModel (..),
    newAndroidModel,

    -- ** AndroidModel_Form
    AndroidModel_Form (..),

    -- ** AndroidModel_FormFactor
    AndroidModel_FormFactor (..),

    -- ** AndroidRoboTest
    AndroidRoboTest (..),
    newAndroidRoboTest,

    -- ** AndroidRoboTest_RoboMode
    AndroidRoboTest_RoboMode (..),

    -- ** AndroidRuntimeConfiguration
    AndroidRuntimeConfiguration (..),
    newAndroidRuntimeConfiguration,

    -- ** AndroidTestLoop
    AndroidTestLoop (..),
    newAndroidTestLoop,

    -- ** AndroidVersion
    AndroidVersion (..),
    newAndroidVersion,

    -- ** Apk
    Apk (..),
    newApk,

    -- ** ApkDetail
    ApkDetail (..),
    newApkDetail,

    -- ** ApkManifest
    ApkManifest (..),
    newApkManifest,

    -- ** AppBundle
    AppBundle (..),
    newAppBundle,

    -- ** CancelDeviceSessionRequest
    CancelDeviceSessionRequest (..),
    newCancelDeviceSessionRequest,

    -- ** CancelTestMatrixResponse
    CancelTestMatrixResponse (..),
    newCancelTestMatrixResponse,

    -- ** CancelTestMatrixResponse_TestState
    CancelTestMatrixResponse_TestState (..),

    -- ** ClientInfo
    ClientInfo (..),
    newClientInfo,

    -- ** ClientInfoDetail
    ClientInfoDetail (..),
    newClientInfoDetail,

    -- ** Date
    Date (..),
    newDate,

    -- ** DeviceFile
    DeviceFile (..),
    newDeviceFile,

    -- ** DeviceIpBlock
    DeviceIpBlock (..),
    newDeviceIpBlock,

    -- ** DeviceIpBlock_Form
    DeviceIpBlock_Form (..),

    -- ** DeviceIpBlockCatalog
    DeviceIpBlockCatalog (..),
    newDeviceIpBlockCatalog,

    -- ** DeviceSession
    DeviceSession (..),
    newDeviceSession,

    -- ** DeviceSession_State
    DeviceSession_State (..),

    -- ** DirectAccessVersionInfo
    DirectAccessVersionInfo (..),
    newDirectAccessVersionInfo,

    -- ** Distribution
    Distribution (..),
    newDistribution,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Environment
    Environment (..),
    newEnvironment,

    -- ** EnvironmentMatrix
    EnvironmentMatrix (..),
    newEnvironmentMatrix,

    -- ** EnvironmentVariable
    EnvironmentVariable (..),
    newEnvironmentVariable,

    -- ** FileReference
    FileReference (..),
    newFileReference,

    -- ** GetApkDetailsResponse
    GetApkDetailsResponse (..),
    newGetApkDetailsResponse,

    -- ** GoogleAuto
    GoogleAuto (..),
    newGoogleAuto,

    -- ** GoogleCloudStorage
    GoogleCloudStorage (..),
    newGoogleCloudStorage,

    -- ** IntentFilter
    IntentFilter (..),
    newIntentFilter,

    -- ** IosDevice
    IosDevice (..),
    newIosDevice,

    -- ** IosDeviceCatalog
    IosDeviceCatalog (..),
    newIosDeviceCatalog,

    -- ** IosDeviceFile
    IosDeviceFile (..),
    newIosDeviceFile,

    -- ** IosDeviceList
    IosDeviceList (..),
    newIosDeviceList,

    -- ** IosModel
    IosModel (..),
    newIosModel,

    -- ** IosModel_FormFactor
    IosModel_FormFactor (..),

    -- ** IosRoboTest
    IosRoboTest (..),
    newIosRoboTest,

    -- ** IosRuntimeConfiguration
    IosRuntimeConfiguration (..),
    newIosRuntimeConfiguration,

    -- ** IosTestLoop
    IosTestLoop (..),
    newIosTestLoop,

    -- ** IosTestSetup
    IosTestSetup (..),
    newIosTestSetup,

    -- ** IosVersion
    IosVersion (..),
    newIosVersion,

    -- ** IosXcTest
    IosXcTest (..),
    newIosXcTest,

    -- ** LabInfo
    LabInfo (..),
    newLabInfo,

    -- ** LauncherActivityIntent
    LauncherActivityIntent (..),
    newLauncherActivityIntent,

    -- ** ListDeviceSessionsResponse
    ListDeviceSessionsResponse (..),
    newListDeviceSessionsResponse,

    -- ** Locale
    Locale (..),
    newLocale,

    -- ** ManualSharding
    ManualSharding (..),
    newManualSharding,

    -- ** MatrixErrorDetail
    MatrixErrorDetail (..),
    newMatrixErrorDetail,

    -- ** Metadata
    Metadata (..),
    newMetadata,

    -- ** NetworkConfiguration
    NetworkConfiguration (..),
    newNetworkConfiguration,

    -- ** NetworkConfigurationCatalog
    NetworkConfigurationCatalog (..),
    newNetworkConfigurationCatalog,

    -- ** NoActivityIntent
    NoActivityIntent (..),
    newNoActivityIntent,

    -- ** ObbFile
    ObbFile (..),
    newObbFile,

    -- ** Orientation
    Orientation (..),
    newOrientation,

    -- ** PerAndroidVersionInfo
    PerAndroidVersionInfo (..),
    newPerAndroidVersionInfo,

    -- ** PerAndroidVersionInfo_DeviceCapacity
    PerAndroidVersionInfo_DeviceCapacity (..),

    -- ** PerIosVersionInfo
    PerIosVersionInfo (..),
    newPerIosVersionInfo,

    -- ** PerIosVersionInfo_DeviceCapacity
    PerIosVersionInfo_DeviceCapacity (..),

    -- ** ProvidedSoftwareCatalog
    ProvidedSoftwareCatalog (..),
    newProvidedSoftwareCatalog,

    -- ** RegularFile
    RegularFile (..),
    newRegularFile,

    -- ** ResultStorage
    ResultStorage (..),
    newResultStorage,

    -- ** RoboDirective
    RoboDirective (..),
    newRoboDirective,

    -- ** RoboDirective_ActionType
    RoboDirective_ActionType (..),

    -- ** RoboStartingIntent
    RoboStartingIntent (..),
    newRoboStartingIntent,

    -- ** Service
    Service (..),
    newService,

    -- ** SessionStateEvent
    SessionStateEvent (..),
    newSessionStateEvent,

    -- ** SessionStateEvent_SessionState
    SessionStateEvent_SessionState (..),

    -- ** Shard
    Shard (..),
    newShard,

    -- ** ShardingOption
    ShardingOption (..),
    newShardingOption,

    -- ** SmartSharding
    SmartSharding (..),
    newSmartSharding,

    -- ** StartActivityIntent
    StartActivityIntent (..),
    newStartActivityIntent,

    -- ** SystraceSetup
    SystraceSetup (..),
    newSystraceSetup,

    -- ** TestDetails
    TestDetails (..),
    newTestDetails,

    -- ** TestEnvironmentCatalog
    TestEnvironmentCatalog (..),
    newTestEnvironmentCatalog,

    -- ** TestExecution
    TestExecution (..),
    newTestExecution,

    -- ** TestExecution_State
    TestExecution_State (..),

    -- ** TestMatrix
    TestMatrix (..),
    newTestMatrix,

    -- ** TestMatrix_InvalidMatrixDetails
    TestMatrix_InvalidMatrixDetails (..),

    -- ** TestMatrix_OutcomeSummary
    TestMatrix_OutcomeSummary (..),

    -- ** TestMatrix_State
    TestMatrix_State (..),

    -- ** TestSetup
    TestSetup (..),
    newTestSetup,

    -- ** TestSpecification
    TestSpecification (..),
    newTestSpecification,

    -- ** TestTargetsForShard
    TestTargetsForShard (..),
    newTestTargetsForShard,

    -- ** ToolResultsExecution
    ToolResultsExecution (..),
    newToolResultsExecution,

    -- ** ToolResultsHistory
    ToolResultsHistory (..),
    newToolResultsHistory,

    -- ** ToolResultsStep
    ToolResultsStep (..),
    newToolResultsStep,

    -- ** TrafficRule
    TrafficRule (..),
    newTrafficRule,

    -- ** UniformSharding
    UniformSharding (..),
    newUniformSharding,

    -- ** UsesFeature
    UsesFeature (..),
    newUsesFeature,

    -- ** UsesPermissionTag
    UsesPermissionTag (..),
    newUsesPermissionTag,

    -- ** XcodeVersion
    XcodeVersion (..),
    newXcodeVersion,

    -- ** TestEnvironmentCatalogGetEnvironmentType
    TestEnvironmentCatalogGetEnvironmentType (..),
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Testing.Internal.Product
import Gogol.Testing.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Testing API. This contains the host and root path used as a starting point for constructing service requests.
testingService :: Core.ServiceConfig
testingService =
  Core.defaultService
    (Core.ServiceId "testing:v1")
    "testing.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | View your data across Google Cloud services and see the email address of your Google Account
type CloudPlatform'ReadOnly =
  "https://www.googleapis.com/auth/cloud-platform.read-only"
