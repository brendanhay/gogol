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
-- Module      : Gogol.Testing
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows developers to run automated tests for their mobile applications on Google infrastructure.
--
-- /See:/ <https://developers.google.com/cloud-test-lab/ Cloud Testing API Reference>
module Gogol.Testing
  ( -- * Configuration
    testingService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,

    -- * Resources

    -- ** testing.applicationDetailService.getApkDetails
    TestingApplicationDetailServiceGetApkDetailsResource,
    newTestingApplicationDetailServiceGetApkDetails,
    TestingApplicationDetailServiceGetApkDetails,

    -- ** testing.projects.testMatrices.cancel
    TestingProjectsTestMatricesCancelResource,
    newTestingProjectsTestMatricesCancel,
    TestingProjectsTestMatricesCancel,

    -- ** testing.projects.testMatrices.create
    TestingProjectsTestMatricesCreateResource,
    newTestingProjectsTestMatricesCreate,
    TestingProjectsTestMatricesCreate,

    -- ** testing.projects.testMatrices.get
    TestingProjectsTestMatricesGetResource,
    newTestingProjectsTestMatricesGet,
    TestingProjectsTestMatricesGet,

    -- ** testing.testEnvironmentCatalog.get
    TestingTestEnvironmentCatalogGetResource,
    newTestingTestEnvironmentCatalogGet,
    TestingTestEnvironmentCatalogGet,

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

    -- ** Distribution
    Distribution (..),
    newDistribution,

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

    -- ** LauncherActivityIntent
    LauncherActivityIntent (..),
    newLauncherActivityIntent,

    -- ** Locale
    Locale (..),
    newLocale,

    -- ** ManualSharding
    ManualSharding (..),
    newManualSharding,

    -- ** NetworkConfiguration
    NetworkConfiguration (..),
    newNetworkConfiguration,

    -- ** NetworkConfigurationCatalog
    NetworkConfigurationCatalog (..),
    newNetworkConfigurationCatalog,

    -- ** ObbFile
    ObbFile (..),
    newObbFile,

    -- ** Orientation
    Orientation (..),
    newOrientation,

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

    -- ** Shard
    Shard (..),
    newShard,

    -- ** ShardingOption
    ShardingOption (..),
    newShardingOption,

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

    -- ** XcodeVersion
    XcodeVersion (..),
    newXcodeVersion,

    -- ** TestEnvironmentCatalogGetEnvironmentType
    TestEnvironmentCatalogGetEnvironmentType (..),
  )
where

import Gogol.Testing.ApplicationDetailService.GetApkDetails
import Gogol.Testing.Projects.TestMatrices.Cancel
import Gogol.Testing.Projects.TestMatrices.Create
import Gogol.Testing.Projects.TestMatrices.Get
import Gogol.Testing.TestEnvironmentCatalog.Get
import Gogol.Testing.Types
