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
-- Module      : Gogol.Testing.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Testing.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AndroidInstrumentationTest_OrchestratorOption
    AndroidInstrumentationTest_OrchestratorOption
      ( AndroidInstrumentationTest_OrchestratorOption_ORCHESTRATOROPTIONUNSPECIFIED,
        AndroidInstrumentationTest_OrchestratorOption_USEORCHESTRATOR,
        AndroidInstrumentationTest_OrchestratorOption_DONOTUSEORCHESTRATOR,
        ..
      ),

    -- * AndroidModel_Form
    AndroidModel_Form
      ( AndroidModel_Form_DEVICEFORMUNSPECIFIED,
        AndroidModel_Form_Virtual,
        AndroidModel_Form_Physical,
        AndroidModel_Form_Emulator,
        ..
      ),

    -- * AndroidModel_FormFactor
    AndroidModel_FormFactor
      ( AndroidModel_FormFactor_DEVICEFORMFACTORUNSPECIFIED,
        AndroidModel_FormFactor_Phone,
        AndroidModel_FormFactor_Tablet,
        AndroidModel_FormFactor_Wearable,
        ..
      ),

    -- * AndroidRoboTest_RoboMode
    AndroidRoboTest_RoboMode
      ( AndroidRoboTest_RoboMode_ROBOMODEUNSPECIFIED,
        AndroidRoboTest_RoboMode_ROBO_VERSION_1,
        AndroidRoboTest_RoboMode_ROBO_VERSION_2,
        ..
      ),

    -- * CancelTestMatrixResponse_TestState
    CancelTestMatrixResponse_TestState
      ( CancelTestMatrixResponse_TestState_TESTSTATEUNSPECIFIED,
        CancelTestMatrixResponse_TestState_Validating,
        CancelTestMatrixResponse_TestState_Pending,
        CancelTestMatrixResponse_TestState_Running,
        CancelTestMatrixResponse_TestState_Finished,
        CancelTestMatrixResponse_TestState_Error',
        CancelTestMatrixResponse_TestState_UNSUPPORTEDENVIRONMENT,
        CancelTestMatrixResponse_TestState_INCOMPATIBLEENVIRONMENT,
        CancelTestMatrixResponse_TestState_INCOMPATIBLEARCHITECTURE,
        CancelTestMatrixResponse_TestState_Cancelled,
        CancelTestMatrixResponse_TestState_Invalid,
        ..
      ),

    -- * DeviceIpBlock_Form
    DeviceIpBlock_Form
      ( DeviceIpBlock_Form_DEVICEFORMUNSPECIFIED,
        DeviceIpBlock_Form_Virtual,
        DeviceIpBlock_Form_Physical,
        DeviceIpBlock_Form_Emulator,
        ..
      ),

    -- * DeviceSession_State
    DeviceSession_State
      ( DeviceSession_State_SESSIONSTATEUNSPECIFIED,
        DeviceSession_State_Requested,
        DeviceSession_State_Pending,
        DeviceSession_State_Active,
        DeviceSession_State_Expired,
        DeviceSession_State_Finished,
        DeviceSession_State_Unavailable,
        DeviceSession_State_Error',
        ..
      ),

    -- * IosModel_FormFactor
    IosModel_FormFactor
      ( IosModel_FormFactor_DEVICEFORMFACTORUNSPECIFIED,
        IosModel_FormFactor_Phone,
        IosModel_FormFactor_Tablet,
        IosModel_FormFactor_Wearable,
        ..
      ),

    -- * PerAndroidVersionInfo_DeviceCapacity
    PerAndroidVersionInfo_DeviceCapacity
      ( PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYUNSPECIFIED,
        PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYHIGH,
        PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYMEDIUM,
        PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYLOW,
        PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYNONE,
        ..
      ),

    -- * PerIosVersionInfo_DeviceCapacity
    PerIosVersionInfo_DeviceCapacity
      ( PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYUNSPECIFIED,
        PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYHIGH,
        PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYMEDIUM,
        PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYLOW,
        PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYNONE,
        ..
      ),

    -- * RoboDirective_ActionType
    RoboDirective_ActionType
      ( RoboDirective_ActionType_ACTIONTYPEUNSPECIFIED,
        RoboDirective_ActionType_SINGLECLICK,
        RoboDirective_ActionType_ENTERTEXT,
        RoboDirective_ActionType_Ignore,
        ..
      ),

    -- * SessionStateEvent_SessionState
    SessionStateEvent_SessionState
      ( SessionStateEvent_SessionState_SESSIONSTATEUNSPECIFIED,
        SessionStateEvent_SessionState_Requested,
        SessionStateEvent_SessionState_Pending,
        SessionStateEvent_SessionState_Active,
        SessionStateEvent_SessionState_Expired,
        SessionStateEvent_SessionState_Finished,
        SessionStateEvent_SessionState_Unavailable,
        SessionStateEvent_SessionState_Error',
        ..
      ),

    -- * TestExecution_State
    TestExecution_State
      ( TestExecution_State_TESTSTATEUNSPECIFIED,
        TestExecution_State_Validating,
        TestExecution_State_Pending,
        TestExecution_State_Running,
        TestExecution_State_Finished,
        TestExecution_State_Error',
        TestExecution_State_UNSUPPORTEDENVIRONMENT,
        TestExecution_State_INCOMPATIBLEENVIRONMENT,
        TestExecution_State_INCOMPATIBLEARCHITECTURE,
        TestExecution_State_Cancelled,
        TestExecution_State_Invalid,
        ..
      ),

    -- * TestMatrix_InvalidMatrixDetails
    TestMatrix_InvalidMatrixDetails
      ( TestMatrix_InvalidMatrixDetails_INVALIDMATRIXDETAILSUNSPECIFIED,
        TestMatrix_InvalidMatrixDetails_DETAILSUNAVAILABLE,
        TestMatrix_InvalidMatrixDetails_MALFORMEDAPK,
        TestMatrix_InvalidMatrixDetails_MALFORMEDTESTAPK,
        TestMatrix_InvalidMatrixDetails_NOMANIFEST,
        TestMatrix_InvalidMatrixDetails_NOPACKAGENAME,
        TestMatrix_InvalidMatrixDetails_INVALIDPACKAGENAME,
        TestMatrix_InvalidMatrixDetails_TESTSAMEASAPP,
        TestMatrix_InvalidMatrixDetails_NOINSTRUMENTATION,
        TestMatrix_InvalidMatrixDetails_NOSIGNATURE,
        TestMatrix_InvalidMatrixDetails_INSTRUMENTATIONORCHESTRATORINCOMPATIBLE,
        TestMatrix_InvalidMatrixDetails_NOTESTRUNNERCLASS,
        TestMatrix_InvalidMatrixDetails_NOLAUNCHERACTIVITY,
        TestMatrix_InvalidMatrixDetails_FORBIDDENPERMISSIONS,
        TestMatrix_InvalidMatrixDetails_INVALIDROBODIRECTIVES,
        TestMatrix_InvalidMatrixDetails_INVALIDRESOURCENAME,
        TestMatrix_InvalidMatrixDetails_INVALIDDIRECTIVEACTION,
        TestMatrix_InvalidMatrixDetails_TESTLOOPINTENTFILTERNOTFOUND,
        TestMatrix_InvalidMatrixDetails_SCENARIOLABELNOTDECLARED,
        TestMatrix_InvalidMatrixDetails_SCENARIOLABELMALFORMED,
        TestMatrix_InvalidMatrixDetails_SCENARIONOTDECLARED,
        TestMatrix_InvalidMatrixDetails_DEVICEADMINRECEIVER,
        TestMatrix_InvalidMatrixDetails_MALFORMEDXCTESTZIP,
        TestMatrix_InvalidMatrixDetails_BUILTFORIOSSIMULATOR,
        TestMatrix_InvalidMatrixDetails_NOTESTSINXCTESTZIP,
        TestMatrix_InvalidMatrixDetails_USEDESTINATIONARTIFACTS,
        TestMatrix_InvalidMatrixDetails_TESTNOTAPPHOSTED,
        TestMatrix_InvalidMatrixDetails_PLISTCANNOTBEPARSED,
        TestMatrix_InvalidMatrixDetails_TESTONLYAPK,
        TestMatrix_InvalidMatrixDetails_MALFORMEDIPA,
        TestMatrix_InvalidMatrixDetails_MISSINGURLSCHEME,
        TestMatrix_InvalidMatrixDetails_MALFORMEDAPPBUNDLE,
        TestMatrix_InvalidMatrixDetails_NOCODEAPK,
        TestMatrix_InvalidMatrixDetails_INVALIDINPUTAPK,
        TestMatrix_InvalidMatrixDetails_INVALIDAPKPREVIEWSDK,
        TestMatrix_InvalidMatrixDetails_MATRIXTOOLARGE,
        TestMatrix_InvalidMatrixDetails_TESTQUOTAEXCEEDED,
        TestMatrix_InvalidMatrixDetails_SERVICENOTACTIVATED,
        TestMatrix_InvalidMatrixDetails_UNKNOWNPERMISSIONERROR,
        ..
      ),

    -- * TestMatrix_OutcomeSummary
    TestMatrix_OutcomeSummary
      ( TestMatrix_OutcomeSummary_OUTCOMESUMMARYUNSPECIFIED,
        TestMatrix_OutcomeSummary_Success,
        TestMatrix_OutcomeSummary_Failure,
        TestMatrix_OutcomeSummary_Inconclusive,
        TestMatrix_OutcomeSummary_Skipped,
        ..
      ),

    -- * TestMatrix_State
    TestMatrix_State
      ( TestMatrix_State_TESTSTATEUNSPECIFIED,
        TestMatrix_State_Validating,
        TestMatrix_State_Pending,
        TestMatrix_State_Running,
        TestMatrix_State_Finished,
        TestMatrix_State_Error',
        TestMatrix_State_UNSUPPORTEDENVIRONMENT,
        TestMatrix_State_INCOMPATIBLEENVIRONMENT,
        TestMatrix_State_INCOMPATIBLEARCHITECTURE,
        TestMatrix_State_Cancelled,
        TestMatrix_State_Invalid,
        ..
      ),

    -- * TestEnvironmentCatalogGetEnvironmentType
    TestEnvironmentCatalogGetEnvironmentType
      ( TestEnvironmentCatalogGetEnvironmentType_ENVIRONMENTTYPEUNSPECIFIED,
        TestEnvironmentCatalogGetEnvironmentType_Android,
        TestEnvironmentCatalogGetEnvironmentType_Ios,
        TestEnvironmentCatalogGetEnvironmentType_NETWORKCONFIGURATION,
        TestEnvironmentCatalogGetEnvironmentType_PROVIDEDSOFTWARE,
        TestEnvironmentCatalogGetEnvironmentType_DEVICEIPBLOCKS,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The option of whether running each test within its own invocation of instrumentation with Android Test Orchestrator or not. ** Orchestrator is only compatible with AndroidJUnitRunner version 1.1 or higher! ** Orchestrator offers the following benefits: - No shared state - Crashes are isolated - Logs are scoped per test See for more information about Android Test Orchestrator. If not set, the test will be run without the orchestrator.
newtype AndroidInstrumentationTest_OrchestratorOption = AndroidInstrumentationTest_OrchestratorOption {fromAndroidInstrumentationTest_OrchestratorOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value: the server will choose the mode. Currently implies that the test will run without the orchestrator. In the future, all instrumentation tests will be run with the orchestrator. Using the orchestrator is highly encouraged because of all the benefits it offers.
pattern AndroidInstrumentationTest_OrchestratorOption_ORCHESTRATOROPTIONUNSPECIFIED :: AndroidInstrumentationTest_OrchestratorOption
pattern AndroidInstrumentationTest_OrchestratorOption_ORCHESTRATOROPTIONUNSPECIFIED = AndroidInstrumentationTest_OrchestratorOption "ORCHESTRATOR_OPTION_UNSPECIFIED"

-- | Run test using orchestrator. ** Only compatible with AndroidJUnitRunner version 1.1 or higher! ** Recommended.
pattern AndroidInstrumentationTest_OrchestratorOption_USEORCHESTRATOR :: AndroidInstrumentationTest_OrchestratorOption
pattern AndroidInstrumentationTest_OrchestratorOption_USEORCHESTRATOR = AndroidInstrumentationTest_OrchestratorOption "USE_ORCHESTRATOR"

-- | Run test without using orchestrator.
pattern AndroidInstrumentationTest_OrchestratorOption_DONOTUSEORCHESTRATOR :: AndroidInstrumentationTest_OrchestratorOption
pattern AndroidInstrumentationTest_OrchestratorOption_DONOTUSEORCHESTRATOR = AndroidInstrumentationTest_OrchestratorOption "DO_NOT_USE_ORCHESTRATOR"

{-# COMPLETE
  AndroidInstrumentationTest_OrchestratorOption_ORCHESTRATOROPTIONUNSPECIFIED,
  AndroidInstrumentationTest_OrchestratorOption_USEORCHESTRATOR,
  AndroidInstrumentationTest_OrchestratorOption_DONOTUSEORCHESTRATOR,
  AndroidInstrumentationTest_OrchestratorOption
  #-}

-- | Whether this device is virtual or physical.
newtype AndroidModel_Form = AndroidModel_Form {fromAndroidModel_Form :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use. For proto versioning only.
pattern AndroidModel_Form_DEVICEFORMUNSPECIFIED :: AndroidModel_Form
pattern AndroidModel_Form_DEVICEFORMUNSPECIFIED = AndroidModel_Form "DEVICE_FORM_UNSPECIFIED"

-- | Android virtual device using Compute Engine native virtualization. Firebase Test Lab only.
pattern AndroidModel_Form_Virtual :: AndroidModel_Form
pattern AndroidModel_Form_Virtual = AndroidModel_Form "VIRTUAL"

-- | Actual hardware.
pattern AndroidModel_Form_Physical :: AndroidModel_Form
pattern AndroidModel_Form_Physical = AndroidModel_Form "PHYSICAL"

-- | Android virtual device using emulator in nested virtualization. Equivalent to Android Studio.
pattern AndroidModel_Form_Emulator :: AndroidModel_Form
pattern AndroidModel_Form_Emulator = AndroidModel_Form "EMULATOR"

{-# COMPLETE
  AndroidModel_Form_DEVICEFORMUNSPECIFIED,
  AndroidModel_Form_Virtual,
  AndroidModel_Form_Physical,
  AndroidModel_Form_Emulator,
  AndroidModel_Form
  #-}

-- | Whether this device is a phone, tablet, wearable, etc.
newtype AndroidModel_FormFactor = AndroidModel_FormFactor {fromAndroidModel_FormFactor :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use. For proto versioning only.
pattern AndroidModel_FormFactor_DEVICEFORMFACTORUNSPECIFIED :: AndroidModel_FormFactor
pattern AndroidModel_FormFactor_DEVICEFORMFACTORUNSPECIFIED = AndroidModel_FormFactor "DEVICE_FORM_FACTOR_UNSPECIFIED"

-- | This device has the shape of a phone.
pattern AndroidModel_FormFactor_Phone :: AndroidModel_FormFactor
pattern AndroidModel_FormFactor_Phone = AndroidModel_FormFactor "PHONE"

-- | This device has the shape of a tablet.
pattern AndroidModel_FormFactor_Tablet :: AndroidModel_FormFactor
pattern AndroidModel_FormFactor_Tablet = AndroidModel_FormFactor "TABLET"

-- | This device has the shape of a watch or other wearable.
pattern AndroidModel_FormFactor_Wearable :: AndroidModel_FormFactor
pattern AndroidModel_FormFactor_Wearable = AndroidModel_FormFactor "WEARABLE"

{-# COMPLETE
  AndroidModel_FormFactor_DEVICEFORMFACTORUNSPECIFIED,
  AndroidModel_FormFactor_Phone,
  AndroidModel_FormFactor_Tablet,
  AndroidModel_FormFactor_Wearable,
  AndroidModel_FormFactor
  #-}

-- | The mode in which Robo should run. Most clients should allow the server to populate this field automatically.
newtype AndroidRoboTest_RoboMode = AndroidRoboTest_RoboMode {fromAndroidRoboTest_RoboMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | This means that the server should choose the mode. Recommended.
pattern AndroidRoboTest_RoboMode_ROBOMODEUNSPECIFIED :: AndroidRoboTest_RoboMode
pattern AndroidRoboTest_RoboMode_ROBOMODEUNSPECIFIED = AndroidRoboTest_RoboMode "ROBO_MODE_UNSPECIFIED"

-- | Runs Robo in UIAutomator-only mode without app resigning
pattern AndroidRoboTest_RoboMode_ROBO_VERSION_1 :: AndroidRoboTest_RoboMode
pattern AndroidRoboTest_RoboMode_ROBO_VERSION_1 = AndroidRoboTest_RoboMode "ROBO_VERSION_1"

-- | Runs Robo in standard Espresso with UIAutomator fallback
pattern AndroidRoboTest_RoboMode_ROBO_VERSION_2 :: AndroidRoboTest_RoboMode
pattern AndroidRoboTest_RoboMode_ROBO_VERSION_2 = AndroidRoboTest_RoboMode "ROBO_VERSION_2"

{-# COMPLETE
  AndroidRoboTest_RoboMode_ROBOMODEUNSPECIFIED,
  AndroidRoboTest_RoboMode_ROBO_VERSION_1,
  AndroidRoboTest_RoboMode_ROBO_VERSION_2,
  AndroidRoboTest_RoboMode
  #-}

-- | The current rolled-up state of the test matrix. If this state is already final, then the cancelation request will have no effect.
newtype CancelTestMatrixResponse_TestState = CancelTestMatrixResponse_TestState {fromCancelTestMatrixResponse_TestState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use. For proto versioning only.
pattern CancelTestMatrixResponse_TestState_TESTSTATEUNSPECIFIED :: CancelTestMatrixResponse_TestState
pattern CancelTestMatrixResponse_TestState_TESTSTATEUNSPECIFIED = CancelTestMatrixResponse_TestState "TEST_STATE_UNSPECIFIED"

-- | The execution or matrix is being validated.
pattern CancelTestMatrixResponse_TestState_Validating :: CancelTestMatrixResponse_TestState
pattern CancelTestMatrixResponse_TestState_Validating = CancelTestMatrixResponse_TestState "VALIDATING"

-- | The execution or matrix is waiting for resources to become available.
pattern CancelTestMatrixResponse_TestState_Pending :: CancelTestMatrixResponse_TestState
pattern CancelTestMatrixResponse_TestState_Pending = CancelTestMatrixResponse_TestState "PENDING"

-- | The execution is currently being processed. Can only be set on an execution.
pattern CancelTestMatrixResponse_TestState_Running :: CancelTestMatrixResponse_TestState
pattern CancelTestMatrixResponse_TestState_Running = CancelTestMatrixResponse_TestState "RUNNING"

-- | The execution or matrix has terminated normally. On a matrix this means that the matrix level processing completed normally, but individual executions may be in an ERROR state.
pattern CancelTestMatrixResponse_TestState_Finished :: CancelTestMatrixResponse_TestState
pattern CancelTestMatrixResponse_TestState_Finished = CancelTestMatrixResponse_TestState "FINISHED"

-- | The execution or matrix has stopped because it encountered an infrastructure failure.
pattern CancelTestMatrixResponse_TestState_Error' :: CancelTestMatrixResponse_TestState
pattern CancelTestMatrixResponse_TestState_Error' = CancelTestMatrixResponse_TestState "ERROR"

-- | The execution was not run because it corresponds to a unsupported environment. Can only be set on an execution.
pattern CancelTestMatrixResponse_TestState_UNSUPPORTEDENVIRONMENT :: CancelTestMatrixResponse_TestState
pattern CancelTestMatrixResponse_TestState_UNSUPPORTEDENVIRONMENT = CancelTestMatrixResponse_TestState "UNSUPPORTED_ENVIRONMENT"

-- | The execution was not run because the provided inputs are incompatible with the requested environment. Example: requested AndroidVersion is lower than APK\'s minSdkVersion Can only be set on an execution.
pattern CancelTestMatrixResponse_TestState_INCOMPATIBLEENVIRONMENT :: CancelTestMatrixResponse_TestState
pattern CancelTestMatrixResponse_TestState_INCOMPATIBLEENVIRONMENT = CancelTestMatrixResponse_TestState "INCOMPATIBLE_ENVIRONMENT"

-- | The execution was not run because the provided inputs are incompatible with the requested architecture. Example: requested device does not support running the native code in the supplied APK Can only be set on an execution.
pattern CancelTestMatrixResponse_TestState_INCOMPATIBLEARCHITECTURE :: CancelTestMatrixResponse_TestState
pattern CancelTestMatrixResponse_TestState_INCOMPATIBLEARCHITECTURE = CancelTestMatrixResponse_TestState "INCOMPATIBLE_ARCHITECTURE"

-- | The user cancelled the execution. Can only be set on an execution.
pattern CancelTestMatrixResponse_TestState_Cancelled :: CancelTestMatrixResponse_TestState
pattern CancelTestMatrixResponse_TestState_Cancelled = CancelTestMatrixResponse_TestState "CANCELLED"

-- | The execution or matrix was not run because the provided inputs are not valid. Examples: input file is not of the expected type, is malformed\/corrupt, or was flagged as malware
pattern CancelTestMatrixResponse_TestState_Invalid :: CancelTestMatrixResponse_TestState
pattern CancelTestMatrixResponse_TestState_Invalid = CancelTestMatrixResponse_TestState "INVALID"

{-# COMPLETE
  CancelTestMatrixResponse_TestState_TESTSTATEUNSPECIFIED,
  CancelTestMatrixResponse_TestState_Validating,
  CancelTestMatrixResponse_TestState_Pending,
  CancelTestMatrixResponse_TestState_Running,
  CancelTestMatrixResponse_TestState_Finished,
  CancelTestMatrixResponse_TestState_Error',
  CancelTestMatrixResponse_TestState_UNSUPPORTEDENVIRONMENT,
  CancelTestMatrixResponse_TestState_INCOMPATIBLEENVIRONMENT,
  CancelTestMatrixResponse_TestState_INCOMPATIBLEARCHITECTURE,
  CancelTestMatrixResponse_TestState_Cancelled,
  CancelTestMatrixResponse_TestState_Invalid,
  CancelTestMatrixResponse_TestState
  #-}

-- | Whether this block is used by physical or virtual devices
newtype DeviceIpBlock_Form = DeviceIpBlock_Form {fromDeviceIpBlock_Form :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use. For proto versioning only.
pattern DeviceIpBlock_Form_DEVICEFORMUNSPECIFIED :: DeviceIpBlock_Form
pattern DeviceIpBlock_Form_DEVICEFORMUNSPECIFIED = DeviceIpBlock_Form "DEVICE_FORM_UNSPECIFIED"

-- | Android virtual device using Compute Engine native virtualization. Firebase Test Lab only.
pattern DeviceIpBlock_Form_Virtual :: DeviceIpBlock_Form
pattern DeviceIpBlock_Form_Virtual = DeviceIpBlock_Form "VIRTUAL"

-- | Actual hardware.
pattern DeviceIpBlock_Form_Physical :: DeviceIpBlock_Form
pattern DeviceIpBlock_Form_Physical = DeviceIpBlock_Form "PHYSICAL"

-- | Android virtual device using emulator in nested virtualization. Equivalent to Android Studio.
pattern DeviceIpBlock_Form_Emulator :: DeviceIpBlock_Form
pattern DeviceIpBlock_Form_Emulator = DeviceIpBlock_Form "EMULATOR"

{-# COMPLETE
  DeviceIpBlock_Form_DEVICEFORMUNSPECIFIED,
  DeviceIpBlock_Form_Virtual,
  DeviceIpBlock_Form_Physical,
  DeviceIpBlock_Form_Emulator,
  DeviceIpBlock_Form
  #-}

-- | Output only. Current state of the DeviceSession.
newtype DeviceSession_State = DeviceSession_State {fromDeviceSession_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern DeviceSession_State_SESSIONSTATEUNSPECIFIED :: DeviceSession_State
pattern DeviceSession_State_SESSIONSTATEUNSPECIFIED = DeviceSession_State "SESSION_STATE_UNSPECIFIED"

-- | Initial state of a session request. The session is being validated for correctness and a device is not yet requested.
pattern DeviceSession_State_Requested :: DeviceSession_State
pattern DeviceSession_State_Requested = DeviceSession_State "REQUESTED"

-- | The session has been validated and is in the queue for a device.
pattern DeviceSession_State_Pending :: DeviceSession_State
pattern DeviceSession_State_Pending = DeviceSession_State "PENDING"

-- | The session has been granted and the device is accepting connections.
pattern DeviceSession_State_Active :: DeviceSession_State
pattern DeviceSession_State_Active = DeviceSession_State "ACTIVE"

-- | The session duration exceeded the device’s reservation time period and timed out automatically.
pattern DeviceSession_State_Expired :: DeviceSession_State
pattern DeviceSession_State_Expired = DeviceSession_State "EXPIRED"

-- | The user is finished with the session and it was canceled by the user while the request was still getting allocated or after allocation and during device usage period.
pattern DeviceSession_State_Finished :: DeviceSession_State
pattern DeviceSession_State_Finished = DeviceSession_State "FINISHED"

-- | Unable to complete the session because the device was unavailable and it failed to allocate through the scheduler. For example, a device not in the catalog was requested or the request expired in the allocation queue.
pattern DeviceSession_State_Unavailable :: DeviceSession_State
pattern DeviceSession_State_Unavailable = DeviceSession_State "UNAVAILABLE"

-- | Unable to complete the session for an internal reason, such as an infrastructure failure.
pattern DeviceSession_State_Error' :: DeviceSession_State
pattern DeviceSession_State_Error' = DeviceSession_State "ERROR"

{-# COMPLETE
  DeviceSession_State_SESSIONSTATEUNSPECIFIED,
  DeviceSession_State_Requested,
  DeviceSession_State_Pending,
  DeviceSession_State_Active,
  DeviceSession_State_Expired,
  DeviceSession_State_Finished,
  DeviceSession_State_Unavailable,
  DeviceSession_State_Error',
  DeviceSession_State
  #-}

-- | Whether this device is a phone, tablet, wearable, etc.
newtype IosModel_FormFactor = IosModel_FormFactor {fromIosModel_FormFactor :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use. For proto versioning only.
pattern IosModel_FormFactor_DEVICEFORMFACTORUNSPECIFIED :: IosModel_FormFactor
pattern IosModel_FormFactor_DEVICEFORMFACTORUNSPECIFIED = IosModel_FormFactor "DEVICE_FORM_FACTOR_UNSPECIFIED"

-- | This device has the shape of a phone.
pattern IosModel_FormFactor_Phone :: IosModel_FormFactor
pattern IosModel_FormFactor_Phone = IosModel_FormFactor "PHONE"

-- | This device has the shape of a tablet.
pattern IosModel_FormFactor_Tablet :: IosModel_FormFactor
pattern IosModel_FormFactor_Tablet = IosModel_FormFactor "TABLET"

-- | This device has the shape of a watch or other wearable.
pattern IosModel_FormFactor_Wearable :: IosModel_FormFactor
pattern IosModel_FormFactor_Wearable = IosModel_FormFactor "WEARABLE"

{-# COMPLETE
  IosModel_FormFactor_DEVICEFORMFACTORUNSPECIFIED,
  IosModel_FormFactor_Phone,
  IosModel_FormFactor_Tablet,
  IosModel_FormFactor_Wearable,
  IosModel_FormFactor
  #-}

-- | The number of online devices for an Android version.
newtype PerAndroidVersionInfo_DeviceCapacity = PerAndroidVersionInfo_DeviceCapacity {fromPerAndroidVersionInfo_DeviceCapacity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The value of device capacity is unknown or unset.
pattern PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYUNSPECIFIED :: PerAndroidVersionInfo_DeviceCapacity
pattern PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYUNSPECIFIED = PerAndroidVersionInfo_DeviceCapacity "DEVICE_CAPACITY_UNSPECIFIED"

-- | Devices that are high in capacity (The lab has a large number of these devices). These devices are generally suggested for running a large number of simultaneous tests (e.g. more than 100 tests). Please note that high capacity devices do not guarantee short wait times due to several factors: 1. Traffic (how heavily they are used at any given moment) 2. High capacity devices are prioritized for certain usages, which may cause user tests to be slower than selecting other similar device types.
pattern PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYHIGH :: PerAndroidVersionInfo_DeviceCapacity
pattern PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYHIGH = PerAndroidVersionInfo_DeviceCapacity "DEVICE_CAPACITY_HIGH"

-- | Devices that are medium in capacity (The lab has a decent number of these devices, though not as many as high capacity devices). These devices are suitable for fewer test runs (e.g. fewer than 100 tests) and only for low shard counts (e.g. less than 10 shards).
pattern PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYMEDIUM :: PerAndroidVersionInfo_DeviceCapacity
pattern PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYMEDIUM = PerAndroidVersionInfo_DeviceCapacity "DEVICE_CAPACITY_MEDIUM"

-- | Devices that are low in capacity (The lab has a small number of these devices). These devices may be used if users need to test on this specific device model and version. Please note that due to low capacity, the tests may take much longer to finish, especially if a large number of tests are invoked at once. These devices are not suitable for test sharding.
pattern PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYLOW :: PerAndroidVersionInfo_DeviceCapacity
pattern PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYLOW = PerAndroidVersionInfo_DeviceCapacity "DEVICE_CAPACITY_LOW"

-- | Devices that are completely missing from the lab. These devices are unavailable either temporarily or permanently and should not be requested. If the device is also marked as deprecated, this state is very likely permanent.
pattern PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYNONE :: PerAndroidVersionInfo_DeviceCapacity
pattern PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYNONE = PerAndroidVersionInfo_DeviceCapacity "DEVICE_CAPACITY_NONE"

{-# COMPLETE
  PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYUNSPECIFIED,
  PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYHIGH,
  PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYMEDIUM,
  PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYLOW,
  PerAndroidVersionInfo_DeviceCapacity_DEVICECAPACITYNONE,
  PerAndroidVersionInfo_DeviceCapacity
  #-}

-- | The number of online devices for an iOS version.
newtype PerIosVersionInfo_DeviceCapacity = PerIosVersionInfo_DeviceCapacity {fromPerIosVersionInfo_DeviceCapacity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The value of device capacity is unknown or unset.
pattern PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYUNSPECIFIED :: PerIosVersionInfo_DeviceCapacity
pattern PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYUNSPECIFIED = PerIosVersionInfo_DeviceCapacity "DEVICE_CAPACITY_UNSPECIFIED"

-- | Devices that are high in capacity (The lab has a large number of these devices). These devices are generally suggested for running a large number of simultaneous tests (e.g. more than 100 tests). Please note that high capacity devices do not guarantee short wait times due to several factors: 1. Traffic (how heavily they are used at any given moment) 2. High capacity devices are prioritized for certain usages, which may cause user tests to be slower than selecting other similar device types.
pattern PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYHIGH :: PerIosVersionInfo_DeviceCapacity
pattern PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYHIGH = PerIosVersionInfo_DeviceCapacity "DEVICE_CAPACITY_HIGH"

-- | Devices that are medium in capacity (The lab has a decent number of these devices, though not as many as high capacity devices). These devices are suitable for fewer test runs (e.g. fewer than 100 tests) and only for low shard counts (e.g. less than 10 shards).
pattern PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYMEDIUM :: PerIosVersionInfo_DeviceCapacity
pattern PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYMEDIUM = PerIosVersionInfo_DeviceCapacity "DEVICE_CAPACITY_MEDIUM"

-- | Devices that are low in capacity (The lab has a small number of these devices). These devices may be used if users need to test on this specific device model and version. Please note that due to low capacity, the tests may take much longer to finish, especially if a large number of tests are invoked at once. These devices are not suitable for test sharding.
pattern PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYLOW :: PerIosVersionInfo_DeviceCapacity
pattern PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYLOW = PerIosVersionInfo_DeviceCapacity "DEVICE_CAPACITY_LOW"

-- | Devices that are completely missing from the lab. These devices are unavailable either temporarily or permanently and should not be requested. If the device is also marked as deprecated, this state is very likely permanent.
pattern PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYNONE :: PerIosVersionInfo_DeviceCapacity
pattern PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYNONE = PerIosVersionInfo_DeviceCapacity "DEVICE_CAPACITY_NONE"

{-# COMPLETE
  PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYUNSPECIFIED,
  PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYHIGH,
  PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYMEDIUM,
  PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYLOW,
  PerIosVersionInfo_DeviceCapacity_DEVICECAPACITYNONE,
  PerIosVersionInfo_DeviceCapacity
  #-}

-- | Required. The type of action that Robo should perform on the specified element.
newtype RoboDirective_ActionType = RoboDirective_ActionType {fromRoboDirective_ActionType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | DO NOT USE. For proto versioning only.
pattern RoboDirective_ActionType_ACTIONTYPEUNSPECIFIED :: RoboDirective_ActionType
pattern RoboDirective_ActionType_ACTIONTYPEUNSPECIFIED = RoboDirective_ActionType "ACTION_TYPE_UNSPECIFIED"

-- | Direct Robo to click on the specified element. No-op if specified element is not clickable.
pattern RoboDirective_ActionType_SINGLECLICK :: RoboDirective_ActionType
pattern RoboDirective_ActionType_SINGLECLICK = RoboDirective_ActionType "SINGLE_CLICK"

-- | Direct Robo to enter text on the specified element. No-op if specified element is not enabled or does not allow text entry.
pattern RoboDirective_ActionType_ENTERTEXT :: RoboDirective_ActionType
pattern RoboDirective_ActionType_ENTERTEXT = RoboDirective_ActionType "ENTER_TEXT"

-- | Direct Robo to ignore interactions with a specific element.
pattern RoboDirective_ActionType_Ignore :: RoboDirective_ActionType
pattern RoboDirective_ActionType_Ignore = RoboDirective_ActionType "IGNORE"

{-# COMPLETE
  RoboDirective_ActionType_ACTIONTYPEUNSPECIFIED,
  RoboDirective_ActionType_SINGLECLICK,
  RoboDirective_ActionType_ENTERTEXT,
  RoboDirective_ActionType_Ignore,
  RoboDirective_ActionType
  #-}

-- | Output only. The session_state tracked by this event
newtype SessionStateEvent_SessionState = SessionStateEvent_SessionState {fromSessionStateEvent_SessionState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern SessionStateEvent_SessionState_SESSIONSTATEUNSPECIFIED :: SessionStateEvent_SessionState
pattern SessionStateEvent_SessionState_SESSIONSTATEUNSPECIFIED = SessionStateEvent_SessionState "SESSION_STATE_UNSPECIFIED"

-- | Initial state of a session request. The session is being validated for correctness and a device is not yet requested.
pattern SessionStateEvent_SessionState_Requested :: SessionStateEvent_SessionState
pattern SessionStateEvent_SessionState_Requested = SessionStateEvent_SessionState "REQUESTED"

-- | The session has been validated and is in the queue for a device.
pattern SessionStateEvent_SessionState_Pending :: SessionStateEvent_SessionState
pattern SessionStateEvent_SessionState_Pending = SessionStateEvent_SessionState "PENDING"

-- | The session has been granted and the device is accepting connections.
pattern SessionStateEvent_SessionState_Active :: SessionStateEvent_SessionState
pattern SessionStateEvent_SessionState_Active = SessionStateEvent_SessionState "ACTIVE"

-- | The session duration exceeded the device’s reservation time period and timed out automatically.
pattern SessionStateEvent_SessionState_Expired :: SessionStateEvent_SessionState
pattern SessionStateEvent_SessionState_Expired = SessionStateEvent_SessionState "EXPIRED"

-- | The user is finished with the session and it was canceled by the user while the request was still getting allocated or after allocation and during device usage period.
pattern SessionStateEvent_SessionState_Finished :: SessionStateEvent_SessionState
pattern SessionStateEvent_SessionState_Finished = SessionStateEvent_SessionState "FINISHED"

-- | Unable to complete the session because the device was unavailable and it failed to allocate through the scheduler. For example, a device not in the catalog was requested or the request expired in the allocation queue.
pattern SessionStateEvent_SessionState_Unavailable :: SessionStateEvent_SessionState
pattern SessionStateEvent_SessionState_Unavailable = SessionStateEvent_SessionState "UNAVAILABLE"

-- | Unable to complete the session for an internal reason, such as an infrastructure failure.
pattern SessionStateEvent_SessionState_Error' :: SessionStateEvent_SessionState
pattern SessionStateEvent_SessionState_Error' = SessionStateEvent_SessionState "ERROR"

{-# COMPLETE
  SessionStateEvent_SessionState_SESSIONSTATEUNSPECIFIED,
  SessionStateEvent_SessionState_Requested,
  SessionStateEvent_SessionState_Pending,
  SessionStateEvent_SessionState_Active,
  SessionStateEvent_SessionState_Expired,
  SessionStateEvent_SessionState_Finished,
  SessionStateEvent_SessionState_Unavailable,
  SessionStateEvent_SessionState_Error',
  SessionStateEvent_SessionState
  #-}

-- | Output only. Indicates the current progress of the test execution (e.g., FINISHED).
newtype TestExecution_State = TestExecution_State {fromTestExecution_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use. For proto versioning only.
pattern TestExecution_State_TESTSTATEUNSPECIFIED :: TestExecution_State
pattern TestExecution_State_TESTSTATEUNSPECIFIED = TestExecution_State "TEST_STATE_UNSPECIFIED"

-- | The execution or matrix is being validated.
pattern TestExecution_State_Validating :: TestExecution_State
pattern TestExecution_State_Validating = TestExecution_State "VALIDATING"

-- | The execution or matrix is waiting for resources to become available.
pattern TestExecution_State_Pending :: TestExecution_State
pattern TestExecution_State_Pending = TestExecution_State "PENDING"

-- | The execution is currently being processed. Can only be set on an execution.
pattern TestExecution_State_Running :: TestExecution_State
pattern TestExecution_State_Running = TestExecution_State "RUNNING"

-- | The execution or matrix has terminated normally. On a matrix this means that the matrix level processing completed normally, but individual executions may be in an ERROR state.
pattern TestExecution_State_Finished :: TestExecution_State
pattern TestExecution_State_Finished = TestExecution_State "FINISHED"

-- | The execution or matrix has stopped because it encountered an infrastructure failure.
pattern TestExecution_State_Error' :: TestExecution_State
pattern TestExecution_State_Error' = TestExecution_State "ERROR"

-- | The execution was not run because it corresponds to a unsupported environment. Can only be set on an execution.
pattern TestExecution_State_UNSUPPORTEDENVIRONMENT :: TestExecution_State
pattern TestExecution_State_UNSUPPORTEDENVIRONMENT = TestExecution_State "UNSUPPORTED_ENVIRONMENT"

-- | The execution was not run because the provided inputs are incompatible with the requested environment. Example: requested AndroidVersion is lower than APK\'s minSdkVersion Can only be set on an execution.
pattern TestExecution_State_INCOMPATIBLEENVIRONMENT :: TestExecution_State
pattern TestExecution_State_INCOMPATIBLEENVIRONMENT = TestExecution_State "INCOMPATIBLE_ENVIRONMENT"

-- | The execution was not run because the provided inputs are incompatible with the requested architecture. Example: requested device does not support running the native code in the supplied APK Can only be set on an execution.
pattern TestExecution_State_INCOMPATIBLEARCHITECTURE :: TestExecution_State
pattern TestExecution_State_INCOMPATIBLEARCHITECTURE = TestExecution_State "INCOMPATIBLE_ARCHITECTURE"

-- | The user cancelled the execution. Can only be set on an execution.
pattern TestExecution_State_Cancelled :: TestExecution_State
pattern TestExecution_State_Cancelled = TestExecution_State "CANCELLED"

-- | The execution or matrix was not run because the provided inputs are not valid. Examples: input file is not of the expected type, is malformed\/corrupt, or was flagged as malware
pattern TestExecution_State_Invalid :: TestExecution_State
pattern TestExecution_State_Invalid = TestExecution_State "INVALID"

{-# COMPLETE
  TestExecution_State_TESTSTATEUNSPECIFIED,
  TestExecution_State_Validating,
  TestExecution_State_Pending,
  TestExecution_State_Running,
  TestExecution_State_Finished,
  TestExecution_State_Error',
  TestExecution_State_UNSUPPORTEDENVIRONMENT,
  TestExecution_State_INCOMPATIBLEENVIRONMENT,
  TestExecution_State_INCOMPATIBLEARCHITECTURE,
  TestExecution_State_Cancelled,
  TestExecution_State_Invalid,
  TestExecution_State
  #-}

-- | Output only. Describes why the matrix is considered invalid. Only useful for matrices in the INVALID state.
newtype TestMatrix_InvalidMatrixDetails = TestMatrix_InvalidMatrixDetails {fromTestMatrix_InvalidMatrixDetails :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use. For proto versioning only.
pattern TestMatrix_InvalidMatrixDetails_INVALIDMATRIXDETAILSUNSPECIFIED :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_INVALIDMATRIXDETAILSUNSPECIFIED = TestMatrix_InvalidMatrixDetails "INVALID_MATRIX_DETAILS_UNSPECIFIED"

-- | The matrix is INVALID, but there are no further details available.
pattern TestMatrix_InvalidMatrixDetails_DETAILSUNAVAILABLE :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_DETAILSUNAVAILABLE = TestMatrix_InvalidMatrixDetails "DETAILS_UNAVAILABLE"

-- | The input app APK could not be parsed.
pattern TestMatrix_InvalidMatrixDetails_MALFORMEDAPK :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_MALFORMEDAPK = TestMatrix_InvalidMatrixDetails "MALFORMED_APK"

-- | The input test APK could not be parsed.
pattern TestMatrix_InvalidMatrixDetails_MALFORMEDTESTAPK :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_MALFORMEDTESTAPK = TestMatrix_InvalidMatrixDetails "MALFORMED_TEST_APK"

-- | The AndroidManifest.xml could not be found.
pattern TestMatrix_InvalidMatrixDetails_NOMANIFEST :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_NOMANIFEST = TestMatrix_InvalidMatrixDetails "NO_MANIFEST"

-- | The APK manifest does not declare a package name.
pattern TestMatrix_InvalidMatrixDetails_NOPACKAGENAME :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_NOPACKAGENAME = TestMatrix_InvalidMatrixDetails "NO_PACKAGE_NAME"

-- | The APK application ID (aka package name) is invalid. See also https:\/\/developer.android.com\/studio\/build\/application-id
pattern TestMatrix_InvalidMatrixDetails_INVALIDPACKAGENAME :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_INVALIDPACKAGENAME = TestMatrix_InvalidMatrixDetails "INVALID_PACKAGE_NAME"

-- | The test package and app package are the same.
pattern TestMatrix_InvalidMatrixDetails_TESTSAMEASAPP :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_TESTSAMEASAPP = TestMatrix_InvalidMatrixDetails "TEST_SAME_AS_APP"

-- | The test apk does not declare an instrumentation.
pattern TestMatrix_InvalidMatrixDetails_NOINSTRUMENTATION :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_NOINSTRUMENTATION = TestMatrix_InvalidMatrixDetails "NO_INSTRUMENTATION"

-- | The input app apk does not have a signature.
pattern TestMatrix_InvalidMatrixDetails_NOSIGNATURE :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_NOSIGNATURE = TestMatrix_InvalidMatrixDetails "NO_SIGNATURE"

-- | The test runner class specified by user or in the test APK\'s manifest file is not compatible with Android Test Orchestrator. Orchestrator is only compatible with AndroidJUnitRunner version 1.1 or higher. Orchestrator can be disabled by using DO/NOT/USE_ORCHESTRATOR OrchestratorOption.
pattern TestMatrix_InvalidMatrixDetails_INSTRUMENTATIONORCHESTRATORINCOMPATIBLE :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_INSTRUMENTATIONORCHESTRATORINCOMPATIBLE = TestMatrix_InvalidMatrixDetails "INSTRUMENTATION_ORCHESTRATOR_INCOMPATIBLE"

-- | The test APK does not contain the test runner class specified by the user or in the manifest file. This can be caused by one of the following reasons: - the user provided a runner class name that\'s incorrect, or - the test runner isn\'t built into the test APK (might be in the app APK instead).
pattern TestMatrix_InvalidMatrixDetails_NOTESTRUNNERCLASS :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_NOTESTRUNNERCLASS = TestMatrix_InvalidMatrixDetails "NO_TEST_RUNNER_CLASS"

-- | A main launcher activity could not be found.
pattern TestMatrix_InvalidMatrixDetails_NOLAUNCHERACTIVITY :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_NOLAUNCHERACTIVITY = TestMatrix_InvalidMatrixDetails "NO_LAUNCHER_ACTIVITY"

-- | The app declares one or more permissions that are not allowed.
pattern TestMatrix_InvalidMatrixDetails_FORBIDDENPERMISSIONS :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_FORBIDDENPERMISSIONS = TestMatrix_InvalidMatrixDetails "FORBIDDEN_PERMISSIONS"

-- | There is a conflict in the provided robo_directives.
pattern TestMatrix_InvalidMatrixDetails_INVALIDROBODIRECTIVES :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_INVALIDROBODIRECTIVES = TestMatrix_InvalidMatrixDetails "INVALID_ROBO_DIRECTIVES"

-- | There is at least one invalid resource name in the provided robo directives
pattern TestMatrix_InvalidMatrixDetails_INVALIDRESOURCENAME :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_INVALIDRESOURCENAME = TestMatrix_InvalidMatrixDetails "INVALID_RESOURCE_NAME"

-- | Invalid definition of action in the robo directives (e.g. a click or ignore action includes an input text field)
pattern TestMatrix_InvalidMatrixDetails_INVALIDDIRECTIVEACTION :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_INVALIDDIRECTIVEACTION = TestMatrix_InvalidMatrixDetails "INVALID_DIRECTIVE_ACTION"

-- | There is no test loop intent filter, or the one that is given is not formatted correctly.
pattern TestMatrix_InvalidMatrixDetails_TESTLOOPINTENTFILTERNOTFOUND :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_TESTLOOPINTENTFILTERNOTFOUND = TestMatrix_InvalidMatrixDetails "TEST_LOOP_INTENT_FILTER_NOT_FOUND"

-- | The request contains a scenario label that was not declared in the manifest.
pattern TestMatrix_InvalidMatrixDetails_SCENARIOLABELNOTDECLARED :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_SCENARIOLABELNOTDECLARED = TestMatrix_InvalidMatrixDetails "SCENARIO_LABEL_NOT_DECLARED"

-- | There was an error when parsing a label\'s value.
pattern TestMatrix_InvalidMatrixDetails_SCENARIOLABELMALFORMED :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_SCENARIOLABELMALFORMED = TestMatrix_InvalidMatrixDetails "SCENARIO_LABEL_MALFORMED"

-- | The request contains a scenario number that was not declared in the manifest.
pattern TestMatrix_InvalidMatrixDetails_SCENARIONOTDECLARED :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_SCENARIONOTDECLARED = TestMatrix_InvalidMatrixDetails "SCENARIO_NOT_DECLARED"

-- | Device administrator applications are not allowed.
pattern TestMatrix_InvalidMatrixDetails_DEVICEADMINRECEIVER :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_DEVICEADMINRECEIVER = TestMatrix_InvalidMatrixDetails "DEVICE_ADMIN_RECEIVER"

-- | The zipped XCTest was malformed. The zip did not contain a single .xctestrun file and the contents of the DerivedData\/Build\/Products directory.
pattern TestMatrix_InvalidMatrixDetails_MALFORMEDXCTESTZIP :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_MALFORMEDXCTESTZIP = TestMatrix_InvalidMatrixDetails "MALFORMED_XC_TEST_ZIP"

-- | The zipped XCTest was built for the iOS simulator rather than for a physical device.
pattern TestMatrix_InvalidMatrixDetails_BUILTFORIOSSIMULATOR :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_BUILTFORIOSSIMULATOR = TestMatrix_InvalidMatrixDetails "BUILT_FOR_IOS_SIMULATOR"

-- | The .xctestrun file did not specify any test targets.
pattern TestMatrix_InvalidMatrixDetails_NOTESTSINXCTESTZIP :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_NOTESTSINXCTESTZIP = TestMatrix_InvalidMatrixDetails "NO_TESTS_IN_XC_TEST_ZIP"

-- | One or more of the test targets defined in the .xctestrun file specifies \"UseDestinationArtifacts\", which is disallowed.
pattern TestMatrix_InvalidMatrixDetails_USEDESTINATIONARTIFACTS :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_USEDESTINATIONARTIFACTS = TestMatrix_InvalidMatrixDetails "USE_DESTINATION_ARTIFACTS"

-- | XC tests which run on physical devices must have \"IsAppHostedTestBundle\" == \"true\" in the xctestrun file.
pattern TestMatrix_InvalidMatrixDetails_TESTNOTAPPHOSTED :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_TESTNOTAPPHOSTED = TestMatrix_InvalidMatrixDetails "TEST_NOT_APP_HOSTED"

-- | An Info.plist file in the XCTest zip could not be parsed.
pattern TestMatrix_InvalidMatrixDetails_PLISTCANNOTBEPARSED :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_PLISTCANNOTBEPARSED = TestMatrix_InvalidMatrixDetails "PLIST_CANNOT_BE_PARSED"

-- | The APK is marked as \"testOnly\". Deprecated and not currently used.
pattern TestMatrix_InvalidMatrixDetails_TESTONLYAPK :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_TESTONLYAPK = TestMatrix_InvalidMatrixDetails "TEST_ONLY_APK"

-- | The input IPA could not be parsed.
pattern TestMatrix_InvalidMatrixDetails_MALFORMEDIPA :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_MALFORMEDIPA = TestMatrix_InvalidMatrixDetails "MALFORMED_IPA"

-- | The application doesn\'t register the game loop URL scheme.
pattern TestMatrix_InvalidMatrixDetails_MISSINGURLSCHEME :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_MISSINGURLSCHEME = TestMatrix_InvalidMatrixDetails "MISSING_URL_SCHEME"

-- | The iOS application bundle (.app) couldn\'t be processed.
pattern TestMatrix_InvalidMatrixDetails_MALFORMEDAPPBUNDLE :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_MALFORMEDAPPBUNDLE = TestMatrix_InvalidMatrixDetails "MALFORMED_APP_BUNDLE"

-- | APK contains no code. See also https:\/\/developer.android.com\/guide\/topics\/manifest\/application-element.html#code
pattern TestMatrix_InvalidMatrixDetails_NOCODEAPK :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_NOCODEAPK = TestMatrix_InvalidMatrixDetails "NO_CODE_APK"

-- | Either the provided input APK path was malformed, the APK file does not exist, or the user does not have permission to access the APK file.
pattern TestMatrix_InvalidMatrixDetails_INVALIDINPUTAPK :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_INVALIDINPUTAPK = TestMatrix_InvalidMatrixDetails "INVALID_INPUT_APK"

-- | APK is built for a preview SDK which is unsupported
pattern TestMatrix_InvalidMatrixDetails_INVALIDAPKPREVIEWSDK :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_INVALIDAPKPREVIEWSDK = TestMatrix_InvalidMatrixDetails "INVALID_APK_PREVIEW_SDK"

-- | The matrix expanded to contain too many executions.
pattern TestMatrix_InvalidMatrixDetails_MATRIXTOOLARGE :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_MATRIXTOOLARGE = TestMatrix_InvalidMatrixDetails "MATRIX_TOO_LARGE"

-- | Not enough test quota to run the executions in this matrix.
pattern TestMatrix_InvalidMatrixDetails_TESTQUOTAEXCEEDED :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_TESTQUOTAEXCEEDED = TestMatrix_InvalidMatrixDetails "TEST_QUOTA_EXCEEDED"

-- | A required cloud service api is not activated. See: https:\/\/firebase.google.com\/docs\/test-lab\/android\/continuous#requirements
pattern TestMatrix_InvalidMatrixDetails_SERVICENOTACTIVATED :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_SERVICENOTACTIVATED = TestMatrix_InvalidMatrixDetails "SERVICE_NOT_ACTIVATED"

-- | There was an unknown permission issue running this test.
pattern TestMatrix_InvalidMatrixDetails_UNKNOWNPERMISSIONERROR :: TestMatrix_InvalidMatrixDetails
pattern TestMatrix_InvalidMatrixDetails_UNKNOWNPERMISSIONERROR = TestMatrix_InvalidMatrixDetails "UNKNOWN_PERMISSION_ERROR"

{-# COMPLETE
  TestMatrix_InvalidMatrixDetails_INVALIDMATRIXDETAILSUNSPECIFIED,
  TestMatrix_InvalidMatrixDetails_DETAILSUNAVAILABLE,
  TestMatrix_InvalidMatrixDetails_MALFORMEDAPK,
  TestMatrix_InvalidMatrixDetails_MALFORMEDTESTAPK,
  TestMatrix_InvalidMatrixDetails_NOMANIFEST,
  TestMatrix_InvalidMatrixDetails_NOPACKAGENAME,
  TestMatrix_InvalidMatrixDetails_INVALIDPACKAGENAME,
  TestMatrix_InvalidMatrixDetails_TESTSAMEASAPP,
  TestMatrix_InvalidMatrixDetails_NOINSTRUMENTATION,
  TestMatrix_InvalidMatrixDetails_NOSIGNATURE,
  TestMatrix_InvalidMatrixDetails_INSTRUMENTATIONORCHESTRATORINCOMPATIBLE,
  TestMatrix_InvalidMatrixDetails_NOTESTRUNNERCLASS,
  TestMatrix_InvalidMatrixDetails_NOLAUNCHERACTIVITY,
  TestMatrix_InvalidMatrixDetails_FORBIDDENPERMISSIONS,
  TestMatrix_InvalidMatrixDetails_INVALIDROBODIRECTIVES,
  TestMatrix_InvalidMatrixDetails_INVALIDRESOURCENAME,
  TestMatrix_InvalidMatrixDetails_INVALIDDIRECTIVEACTION,
  TestMatrix_InvalidMatrixDetails_TESTLOOPINTENTFILTERNOTFOUND,
  TestMatrix_InvalidMatrixDetails_SCENARIOLABELNOTDECLARED,
  TestMatrix_InvalidMatrixDetails_SCENARIOLABELMALFORMED,
  TestMatrix_InvalidMatrixDetails_SCENARIONOTDECLARED,
  TestMatrix_InvalidMatrixDetails_DEVICEADMINRECEIVER,
  TestMatrix_InvalidMatrixDetails_MALFORMEDXCTESTZIP,
  TestMatrix_InvalidMatrixDetails_BUILTFORIOSSIMULATOR,
  TestMatrix_InvalidMatrixDetails_NOTESTSINXCTESTZIP,
  TestMatrix_InvalidMatrixDetails_USEDESTINATIONARTIFACTS,
  TestMatrix_InvalidMatrixDetails_TESTNOTAPPHOSTED,
  TestMatrix_InvalidMatrixDetails_PLISTCANNOTBEPARSED,
  TestMatrix_InvalidMatrixDetails_TESTONLYAPK,
  TestMatrix_InvalidMatrixDetails_MALFORMEDIPA,
  TestMatrix_InvalidMatrixDetails_MISSINGURLSCHEME,
  TestMatrix_InvalidMatrixDetails_MALFORMEDAPPBUNDLE,
  TestMatrix_InvalidMatrixDetails_NOCODEAPK,
  TestMatrix_InvalidMatrixDetails_INVALIDINPUTAPK,
  TestMatrix_InvalidMatrixDetails_INVALIDAPKPREVIEWSDK,
  TestMatrix_InvalidMatrixDetails_MATRIXTOOLARGE,
  TestMatrix_InvalidMatrixDetails_TESTQUOTAEXCEEDED,
  TestMatrix_InvalidMatrixDetails_SERVICENOTACTIVATED,
  TestMatrix_InvalidMatrixDetails_UNKNOWNPERMISSIONERROR,
  TestMatrix_InvalidMatrixDetails
  #-}

-- | Output Only. The overall outcome of the test. Only set when the test matrix state is FINISHED.
newtype TestMatrix_OutcomeSummary = TestMatrix_OutcomeSummary {fromTestMatrix_OutcomeSummary :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use. For proto versioning only.
pattern TestMatrix_OutcomeSummary_OUTCOMESUMMARYUNSPECIFIED :: TestMatrix_OutcomeSummary
pattern TestMatrix_OutcomeSummary_OUTCOMESUMMARYUNSPECIFIED = TestMatrix_OutcomeSummary "OUTCOME_SUMMARY_UNSPECIFIED"

-- | The test matrix run was successful, for instance: - All the test cases passed. - Robo did not detect a crash of the application under test.
pattern TestMatrix_OutcomeSummary_Success :: TestMatrix_OutcomeSummary
pattern TestMatrix_OutcomeSummary_Success = TestMatrix_OutcomeSummary "SUCCESS"

-- | A run failed, for instance: - One or more test cases failed. - A test timed out. - The application under test crashed.
pattern TestMatrix_OutcomeSummary_Failure :: TestMatrix_OutcomeSummary
pattern TestMatrix_OutcomeSummary_Failure = TestMatrix_OutcomeSummary "FAILURE"

-- | Something unexpected happened. The run should still be considered unsuccessful but this is likely a transient problem and re-running the test might be successful.
pattern TestMatrix_OutcomeSummary_Inconclusive :: TestMatrix_OutcomeSummary
pattern TestMatrix_OutcomeSummary_Inconclusive = TestMatrix_OutcomeSummary "INCONCLUSIVE"

-- | All tests were skipped, for instance: - All device configurations were incompatible.
pattern TestMatrix_OutcomeSummary_Skipped :: TestMatrix_OutcomeSummary
pattern TestMatrix_OutcomeSummary_Skipped = TestMatrix_OutcomeSummary "SKIPPED"

{-# COMPLETE
  TestMatrix_OutcomeSummary_OUTCOMESUMMARYUNSPECIFIED,
  TestMatrix_OutcomeSummary_Success,
  TestMatrix_OutcomeSummary_Failure,
  TestMatrix_OutcomeSummary_Inconclusive,
  TestMatrix_OutcomeSummary_Skipped,
  TestMatrix_OutcomeSummary
  #-}

-- | Output only. Indicates the current progress of the test matrix.
newtype TestMatrix_State = TestMatrix_State {fromTestMatrix_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use. For proto versioning only.
pattern TestMatrix_State_TESTSTATEUNSPECIFIED :: TestMatrix_State
pattern TestMatrix_State_TESTSTATEUNSPECIFIED = TestMatrix_State "TEST_STATE_UNSPECIFIED"

-- | The execution or matrix is being validated.
pattern TestMatrix_State_Validating :: TestMatrix_State
pattern TestMatrix_State_Validating = TestMatrix_State "VALIDATING"

-- | The execution or matrix is waiting for resources to become available.
pattern TestMatrix_State_Pending :: TestMatrix_State
pattern TestMatrix_State_Pending = TestMatrix_State "PENDING"

-- | The execution is currently being processed. Can only be set on an execution.
pattern TestMatrix_State_Running :: TestMatrix_State
pattern TestMatrix_State_Running = TestMatrix_State "RUNNING"

-- | The execution or matrix has terminated normally. On a matrix this means that the matrix level processing completed normally, but individual executions may be in an ERROR state.
pattern TestMatrix_State_Finished :: TestMatrix_State
pattern TestMatrix_State_Finished = TestMatrix_State "FINISHED"

-- | The execution or matrix has stopped because it encountered an infrastructure failure.
pattern TestMatrix_State_Error' :: TestMatrix_State
pattern TestMatrix_State_Error' = TestMatrix_State "ERROR"

-- | The execution was not run because it corresponds to a unsupported environment. Can only be set on an execution.
pattern TestMatrix_State_UNSUPPORTEDENVIRONMENT :: TestMatrix_State
pattern TestMatrix_State_UNSUPPORTEDENVIRONMENT = TestMatrix_State "UNSUPPORTED_ENVIRONMENT"

-- | The execution was not run because the provided inputs are incompatible with the requested environment. Example: requested AndroidVersion is lower than APK\'s minSdkVersion Can only be set on an execution.
pattern TestMatrix_State_INCOMPATIBLEENVIRONMENT :: TestMatrix_State
pattern TestMatrix_State_INCOMPATIBLEENVIRONMENT = TestMatrix_State "INCOMPATIBLE_ENVIRONMENT"

-- | The execution was not run because the provided inputs are incompatible with the requested architecture. Example: requested device does not support running the native code in the supplied APK Can only be set on an execution.
pattern TestMatrix_State_INCOMPATIBLEARCHITECTURE :: TestMatrix_State
pattern TestMatrix_State_INCOMPATIBLEARCHITECTURE = TestMatrix_State "INCOMPATIBLE_ARCHITECTURE"

-- | The user cancelled the execution. Can only be set on an execution.
pattern TestMatrix_State_Cancelled :: TestMatrix_State
pattern TestMatrix_State_Cancelled = TestMatrix_State "CANCELLED"

-- | The execution or matrix was not run because the provided inputs are not valid. Examples: input file is not of the expected type, is malformed\/corrupt, or was flagged as malware
pattern TestMatrix_State_Invalid :: TestMatrix_State
pattern TestMatrix_State_Invalid = TestMatrix_State "INVALID"

{-# COMPLETE
  TestMatrix_State_TESTSTATEUNSPECIFIED,
  TestMatrix_State_Validating,
  TestMatrix_State_Pending,
  TestMatrix_State_Running,
  TestMatrix_State_Finished,
  TestMatrix_State_Error',
  TestMatrix_State_UNSUPPORTEDENVIRONMENT,
  TestMatrix_State_INCOMPATIBLEENVIRONMENT,
  TestMatrix_State_INCOMPATIBLEARCHITECTURE,
  TestMatrix_State_Cancelled,
  TestMatrix_State_Invalid,
  TestMatrix_State
  #-}

-- | Required. The type of environment that should be listed.
newtype TestEnvironmentCatalogGetEnvironmentType = TestEnvironmentCatalogGetEnvironmentType {fromTestEnvironmentCatalogGetEnvironmentType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use. For proto versioning only.
pattern TestEnvironmentCatalogGetEnvironmentType_ENVIRONMENTTYPEUNSPECIFIED :: TestEnvironmentCatalogGetEnvironmentType
pattern TestEnvironmentCatalogGetEnvironmentType_ENVIRONMENTTYPEUNSPECIFIED = TestEnvironmentCatalogGetEnvironmentType "ENVIRONMENT_TYPE_UNSPECIFIED"

-- | A device running a version of the Android OS.
pattern TestEnvironmentCatalogGetEnvironmentType_Android :: TestEnvironmentCatalogGetEnvironmentType
pattern TestEnvironmentCatalogGetEnvironmentType_Android = TestEnvironmentCatalogGetEnvironmentType "ANDROID"

-- | A device running a version of iOS.
pattern TestEnvironmentCatalogGetEnvironmentType_Ios :: TestEnvironmentCatalogGetEnvironmentType
pattern TestEnvironmentCatalogGetEnvironmentType_Ios = TestEnvironmentCatalogGetEnvironmentType "IOS"

-- | A network configuration to use when running a test.
pattern TestEnvironmentCatalogGetEnvironmentType_NETWORKCONFIGURATION :: TestEnvironmentCatalogGetEnvironmentType
pattern TestEnvironmentCatalogGetEnvironmentType_NETWORKCONFIGURATION = TestEnvironmentCatalogGetEnvironmentType "NETWORK_CONFIGURATION"

-- | The software environment provided by TestExecutionService.
pattern TestEnvironmentCatalogGetEnvironmentType_PROVIDEDSOFTWARE :: TestEnvironmentCatalogGetEnvironmentType
pattern TestEnvironmentCatalogGetEnvironmentType_PROVIDEDSOFTWARE = TestEnvironmentCatalogGetEnvironmentType "PROVIDED_SOFTWARE"

-- | The IP blocks used by devices in the test environment.
pattern TestEnvironmentCatalogGetEnvironmentType_DEVICEIPBLOCKS :: TestEnvironmentCatalogGetEnvironmentType
pattern TestEnvironmentCatalogGetEnvironmentType_DEVICEIPBLOCKS = TestEnvironmentCatalogGetEnvironmentType "DEVICE_IP_BLOCKS"

{-# COMPLETE
  TestEnvironmentCatalogGetEnvironmentType_ENVIRONMENTTYPEUNSPECIFIED,
  TestEnvironmentCatalogGetEnvironmentType_Android,
  TestEnvironmentCatalogGetEnvironmentType_Ios,
  TestEnvironmentCatalogGetEnvironmentType_NETWORKCONFIGURATION,
  TestEnvironmentCatalogGetEnvironmentType_PROVIDEDSOFTWARE,
  TestEnvironmentCatalogGetEnvironmentType_DEVICEIPBLOCKS,
  TestEnvironmentCatalogGetEnvironmentType
  #-}
