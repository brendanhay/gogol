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
-- Module      : Network.Google.Debugger.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Debugger.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AliasContext_Kind
    AliasContext_Kind
      ( AliasContext_Kind_Any,
        AliasContext_Kind_Fixed,
        AliasContext_Kind_Movable,
        AliasContext_Kind_Other,
        ..
      ),

    -- * Breakpoint_Action
    Breakpoint_Action
      ( Breakpoint_Action_Capture,
        Breakpoint_Action_Log,
        ..
      ),

    -- * Breakpoint_LogLevel
    Breakpoint_LogLevel
      ( Breakpoint_LogLevel_Info,
        Breakpoint_LogLevel_Warning,
        Breakpoint_LogLevel_Error',
        ..
      ),

    -- * Breakpoint_State
    Breakpoint_State
      ( Breakpoint_State_STATEUNSPECIFIED,
        Breakpoint_State_STATECANARYPENDINGAGENTS,
        Breakpoint_State_STATECANARYACTIVE,
        Breakpoint_State_STATEROLLINGTOALL,
        Breakpoint_State_STATEISFINAL,
        ..
      ),

    -- * Debuggee_CanaryMode
    Debuggee_CanaryMode
      ( Debuggee_CanaryMode_CANARYMODEUNSPECIFIED,
        Debuggee_CanaryMode_CANARYMODEALWAYSENABLED,
        Debuggee_CanaryMode_CANARYMODEALWAYSDISABLED,
        Debuggee_CanaryMode_CANARYMODEDEFAULTENABLED,
        Debuggee_CanaryMode_CANARYMODEDEFAULTDISABLED,
        ..
      ),

    -- * StatusMessage_RefersTo
    StatusMessage_RefersTo
      ( StatusMessage_RefersTo_Unspecified,
        StatusMessage_RefersTo_BREAKPOINTSOURCELOCATION,
        StatusMessage_RefersTo_BREAKPOINTCONDITION,
        StatusMessage_RefersTo_BREAKPOINTEXPRESSION,
        StatusMessage_RefersTo_BREAKPOINTAGE,
        StatusMessage_RefersTo_BREAKPOINTCANARYFAILED,
        StatusMessage_RefersTo_VARIABLENAME,
        StatusMessage_RefersTo_VARIABLEVALUE,
        ..
      ),

    -- * DebuggerDebuggeesBreakpointsListActionValue
    DebuggerDebuggeesBreakpointsListActionValue
      ( DebuggerDebuggeesBreakpointsListActionValue_Capture,
        DebuggerDebuggeesBreakpointsListActionValue_Log,
        ..
      ),

    -- * DebuggerDebuggeesBreakpointsSetCanaryOption
    DebuggerDebuggeesBreakpointsSetCanaryOption
      ( DebuggerDebuggeesBreakpointsSetCanaryOption_CANARYOPTIONUNSPECIFIED,
        DebuggerDebuggeesBreakpointsSetCanaryOption_CANARYOPTIONTRYENABLE,
        DebuggerDebuggeesBreakpointsSetCanaryOption_CANARYOPTIONTRYDISABLE,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

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

-- | The alias kind.
newtype AliasContext_Kind = AliasContext_Kind {fromAliasContext_Kind :: Core.Text}
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

-- | Do not use.
pattern AliasContext_Kind_Any :: AliasContext_Kind
pattern AliasContext_Kind_Any = AliasContext_Kind "ANY"

-- | Git tag
pattern AliasContext_Kind_Fixed :: AliasContext_Kind
pattern AliasContext_Kind_Fixed = AliasContext_Kind "FIXED"

-- | Git branch
pattern AliasContext_Kind_Movable :: AliasContext_Kind
pattern AliasContext_Kind_Movable = AliasContext_Kind "MOVABLE"

-- | OTHER is used to specify non-standard aliases, those not of the kinds above. For example, if a Git repo has a ref named \"refs\/foo\/bar\", it is considered to be of kind OTHER.
pattern AliasContext_Kind_Other :: AliasContext_Kind
pattern AliasContext_Kind_Other = AliasContext_Kind "OTHER"

{-# COMPLETE
  AliasContext_Kind_Any,
  AliasContext_Kind_Fixed,
  AliasContext_Kind_Movable,
  AliasContext_Kind_Other,
  AliasContext_Kind
  #-}

-- | Action that the agent should perform when the code at the breakpoint location is hit.
newtype Breakpoint_Action = Breakpoint_Action {fromBreakpoint_Action :: Core.Text}
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

-- | Capture stack frame and variables and update the breakpoint. The data is only captured once. After that the breakpoint is set in a final state.
pattern Breakpoint_Action_Capture :: Breakpoint_Action
pattern Breakpoint_Action_Capture = Breakpoint_Action "CAPTURE"

-- | Log each breakpoint hit. The breakpoint remains active until deleted or expired.
pattern Breakpoint_Action_Log :: Breakpoint_Action
pattern Breakpoint_Action_Log = Breakpoint_Action "LOG"

{-# COMPLETE
  Breakpoint_Action_Capture,
  Breakpoint_Action_Log,
  Breakpoint_Action
  #-}

-- | Indicates the severity of the log. Only relevant when action is @LOG@.
newtype Breakpoint_LogLevel = Breakpoint_LogLevel {fromBreakpoint_LogLevel :: Core.Text}
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

-- | Information log message.
pattern Breakpoint_LogLevel_Info :: Breakpoint_LogLevel
pattern Breakpoint_LogLevel_Info = Breakpoint_LogLevel "INFO"

-- | Warning log message.
pattern Breakpoint_LogLevel_Warning :: Breakpoint_LogLevel
pattern Breakpoint_LogLevel_Warning = Breakpoint_LogLevel "WARNING"

-- | Error log message.
pattern Breakpoint_LogLevel_Error' :: Breakpoint_LogLevel
pattern Breakpoint_LogLevel_Error' = Breakpoint_LogLevel "ERROR"

{-# COMPLETE
  Breakpoint_LogLevel_Info,
  Breakpoint_LogLevel_Warning,
  Breakpoint_LogLevel_Error',
  Breakpoint_LogLevel
  #-}

-- | The current state of the breakpoint.
newtype Breakpoint_State = Breakpoint_State {fromBreakpoint_State :: Core.Text}
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

-- | Breakpoint state UNSPECIFIED.
pattern Breakpoint_State_STATEUNSPECIFIED :: Breakpoint_State
pattern Breakpoint_State_STATEUNSPECIFIED = Breakpoint_State "STATE_UNSPECIFIED"

-- | Enabling canary but no agents are available.
pattern Breakpoint_State_STATECANARYPENDINGAGENTS :: Breakpoint_State
pattern Breakpoint_State_STATECANARYPENDINGAGENTS = Breakpoint_State "STATE_CANARY_PENDING_AGENTS"

-- | Enabling canary and successfully assigning canary agents.
pattern Breakpoint_State_STATECANARYACTIVE :: Breakpoint_State
pattern Breakpoint_State_STATECANARYACTIVE = Breakpoint_State "STATE_CANARY_ACTIVE"

-- | Breakpoint rolling out to all agents.
pattern Breakpoint_State_STATEROLLINGTOALL :: Breakpoint_State
pattern Breakpoint_State_STATEROLLINGTOALL = Breakpoint_State "STATE_ROLLING_TO_ALL"

-- | Breakpoint is hit\/complete\/failed.
pattern Breakpoint_State_STATEISFINAL :: Breakpoint_State
pattern Breakpoint_State_STATEISFINAL = Breakpoint_State "STATE_IS_FINAL"

{-# COMPLETE
  Breakpoint_State_STATEUNSPECIFIED,
  Breakpoint_State_STATECANARYPENDINGAGENTS,
  Breakpoint_State_STATECANARYACTIVE,
  Breakpoint_State_STATEROLLINGTOALL,
  Breakpoint_State_STATEISFINAL,
  Breakpoint_State
  #-}

-- | Used when setting breakpoint canary for this debuggee.
newtype Debuggee_CanaryMode = Debuggee_CanaryMode {fromDebuggee_CanaryMode :: Core.Text}
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

-- | CANARY/MODE/UNSPECIFIED is equivalent to CANARY/MODE/ALWAYS_DISABLED so that if the debuggee is not configured to use the canary feature, the feature will be disabled.
pattern Debuggee_CanaryMode_CANARYMODEUNSPECIFIED :: Debuggee_CanaryMode
pattern Debuggee_CanaryMode_CANARYMODEUNSPECIFIED = Debuggee_CanaryMode "CANARY_MODE_UNSPECIFIED"

-- | Always enable breakpoint canary regardless of the value of breakpoint\'s canary option.
pattern Debuggee_CanaryMode_CANARYMODEALWAYSENABLED :: Debuggee_CanaryMode
pattern Debuggee_CanaryMode_CANARYMODEALWAYSENABLED = Debuggee_CanaryMode "CANARY_MODE_ALWAYS_ENABLED"

-- | Always disable breakpoint canary regardless of the value of breakpoint\'s canary option.
pattern Debuggee_CanaryMode_CANARYMODEALWAYSDISABLED :: Debuggee_CanaryMode
pattern Debuggee_CanaryMode_CANARYMODEALWAYSDISABLED = Debuggee_CanaryMode "CANARY_MODE_ALWAYS_DISABLED"

-- | Depends on the breakpoint\'s canary option. Enable canary by default if the breakpoint\'s canary option is not specified.
pattern Debuggee_CanaryMode_CANARYMODEDEFAULTENABLED :: Debuggee_CanaryMode
pattern Debuggee_CanaryMode_CANARYMODEDEFAULTENABLED = Debuggee_CanaryMode "CANARY_MODE_DEFAULT_ENABLED"

-- | Depends on the breakpoint\'s canary option. Disable canary by default if the breakpoint\'s canary option is not specified.
pattern Debuggee_CanaryMode_CANARYMODEDEFAULTDISABLED :: Debuggee_CanaryMode
pattern Debuggee_CanaryMode_CANARYMODEDEFAULTDISABLED = Debuggee_CanaryMode "CANARY_MODE_DEFAULT_DISABLED"

{-# COMPLETE
  Debuggee_CanaryMode_CANARYMODEUNSPECIFIED,
  Debuggee_CanaryMode_CANARYMODEALWAYSENABLED,
  Debuggee_CanaryMode_CANARYMODEALWAYSDISABLED,
  Debuggee_CanaryMode_CANARYMODEDEFAULTENABLED,
  Debuggee_CanaryMode_CANARYMODEDEFAULTDISABLED,
  Debuggee_CanaryMode
  #-}

-- | Reference to which the message applies.
newtype StatusMessage_RefersTo = StatusMessage_RefersTo {fromStatusMessage_RefersTo :: Core.Text}
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

-- | Status doesn\'t refer to any particular input.
pattern StatusMessage_RefersTo_Unspecified :: StatusMessage_RefersTo
pattern StatusMessage_RefersTo_Unspecified = StatusMessage_RefersTo "UNSPECIFIED"

-- | Status applies to the breakpoint and is related to its location.
pattern StatusMessage_RefersTo_BREAKPOINTSOURCELOCATION :: StatusMessage_RefersTo
pattern StatusMessage_RefersTo_BREAKPOINTSOURCELOCATION = StatusMessage_RefersTo "BREAKPOINT_SOURCE_LOCATION"

-- | Status applies to the breakpoint and is related to its condition.
pattern StatusMessage_RefersTo_BREAKPOINTCONDITION :: StatusMessage_RefersTo
pattern StatusMessage_RefersTo_BREAKPOINTCONDITION = StatusMessage_RefersTo "BREAKPOINT_CONDITION"

-- | Status applies to the breakpoint and is related to its expressions.
pattern StatusMessage_RefersTo_BREAKPOINTEXPRESSION :: StatusMessage_RefersTo
pattern StatusMessage_RefersTo_BREAKPOINTEXPRESSION = StatusMessage_RefersTo "BREAKPOINT_EXPRESSION"

-- | Status applies to the breakpoint and is related to its age.
pattern StatusMessage_RefersTo_BREAKPOINTAGE :: StatusMessage_RefersTo
pattern StatusMessage_RefersTo_BREAKPOINTAGE = StatusMessage_RefersTo "BREAKPOINT_AGE"

-- | Status applies to the breakpoint when the breakpoint failed to exit the canary state.
pattern StatusMessage_RefersTo_BREAKPOINTCANARYFAILED :: StatusMessage_RefersTo
pattern StatusMessage_RefersTo_BREAKPOINTCANARYFAILED = StatusMessage_RefersTo "BREAKPOINT_CANARY_FAILED"

-- | Status applies to the entire variable.
pattern StatusMessage_RefersTo_VARIABLENAME :: StatusMessage_RefersTo
pattern StatusMessage_RefersTo_VARIABLENAME = StatusMessage_RefersTo "VARIABLE_NAME"

-- | Status applies to variable value (variable name is valid).
pattern StatusMessage_RefersTo_VARIABLEVALUE :: StatusMessage_RefersTo
pattern StatusMessage_RefersTo_VARIABLEVALUE = StatusMessage_RefersTo "VARIABLE_VALUE"

{-# COMPLETE
  StatusMessage_RefersTo_Unspecified,
  StatusMessage_RefersTo_BREAKPOINTSOURCELOCATION,
  StatusMessage_RefersTo_BREAKPOINTCONDITION,
  StatusMessage_RefersTo_BREAKPOINTEXPRESSION,
  StatusMessage_RefersTo_BREAKPOINTAGE,
  StatusMessage_RefersTo_BREAKPOINTCANARYFAILED,
  StatusMessage_RefersTo_VARIABLENAME,
  StatusMessage_RefersTo_VARIABLEVALUE,
  StatusMessage_RefersTo
  #-}

-- | Only breakpoints with the specified action will pass the filter.
newtype DebuggerDebuggeesBreakpointsListActionValue = DebuggerDebuggeesBreakpointsListActionValue {fromDebuggerDebuggeesBreakpointsListActionValue :: Core.Text}
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

-- | Capture stack frame and variables and update the breakpoint. The data is only captured once. After that the breakpoint is set in a final state.
pattern DebuggerDebuggeesBreakpointsListActionValue_Capture :: DebuggerDebuggeesBreakpointsListActionValue
pattern DebuggerDebuggeesBreakpointsListActionValue_Capture = DebuggerDebuggeesBreakpointsListActionValue "CAPTURE"

-- | Log each breakpoint hit. The breakpoint remains active until deleted or expired.
pattern DebuggerDebuggeesBreakpointsListActionValue_Log :: DebuggerDebuggeesBreakpointsListActionValue
pattern DebuggerDebuggeesBreakpointsListActionValue_Log = DebuggerDebuggeesBreakpointsListActionValue "LOG"

{-# COMPLETE
  DebuggerDebuggeesBreakpointsListActionValue_Capture,
  DebuggerDebuggeesBreakpointsListActionValue_Log,
  DebuggerDebuggeesBreakpointsListActionValue
  #-}

-- | The canary option set by the user upon setting breakpoint.
newtype DebuggerDebuggeesBreakpointsSetCanaryOption = DebuggerDebuggeesBreakpointsSetCanaryOption {fromDebuggerDebuggeesBreakpointsSetCanaryOption :: Core.Text}
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

-- | Depends on the canary_mode of the debuggee.
pattern DebuggerDebuggeesBreakpointsSetCanaryOption_CANARYOPTIONUNSPECIFIED :: DebuggerDebuggeesBreakpointsSetCanaryOption
pattern DebuggerDebuggeesBreakpointsSetCanaryOption_CANARYOPTIONUNSPECIFIED = DebuggerDebuggeesBreakpointsSetCanaryOption "CANARY_OPTION_UNSPECIFIED"

-- | Enable the canary for this breakpoint if the canary/mode of the debuggee is not CANARY/MODE/ALWAYS/ENABLED or CANARY/MODE/ALWAYS_DISABLED.
pattern DebuggerDebuggeesBreakpointsSetCanaryOption_CANARYOPTIONTRYENABLE :: DebuggerDebuggeesBreakpointsSetCanaryOption
pattern DebuggerDebuggeesBreakpointsSetCanaryOption_CANARYOPTIONTRYENABLE = DebuggerDebuggeesBreakpointsSetCanaryOption "CANARY_OPTION_TRY_ENABLE"

-- | Disable the canary for this breakpoint if the canary/mode of the debuggee is not CANARY/MODE/ALWAYS/ENABLED or CANARY/MODE/ALWAYS_DISABLED.
pattern DebuggerDebuggeesBreakpointsSetCanaryOption_CANARYOPTIONTRYDISABLE :: DebuggerDebuggeesBreakpointsSetCanaryOption
pattern DebuggerDebuggeesBreakpointsSetCanaryOption_CANARYOPTIONTRYDISABLE = DebuggerDebuggeesBreakpointsSetCanaryOption "CANARY_OPTION_TRY_DISABLE"

{-# COMPLETE
  DebuggerDebuggeesBreakpointsSetCanaryOption_CANARYOPTIONUNSPECIFIED,
  DebuggerDebuggeesBreakpointsSetCanaryOption_CANARYOPTIONTRYENABLE,
  DebuggerDebuggeesBreakpointsSetCanaryOption_CANARYOPTIONTRYDISABLE,
  DebuggerDebuggeesBreakpointsSetCanaryOption
  #-}
