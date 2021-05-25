{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Debugger.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Debugger.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The canary option set by the user upon setting breakpoint.
data DebuggerDebuggeesBreakpointsSetCanaryOption
    = CanaryOptionUnspecified
      -- ^ @CANARY_OPTION_UNSPECIFIED@
      -- Depends on the canary_mode of the debuggee.
    | CanaryOptionTryEnable
      -- ^ @CANARY_OPTION_TRY_ENABLE@
      -- Enable the canary for this breakpoint if the canary_mode of the debuggee
      -- is not CANARY_MODE_ALWAYS_ENABLED or CANARY_MODE_ALWAYS_DISABLED.
    | CanaryOptionTryDisable
      -- ^ @CANARY_OPTION_TRY_DISABLE@
      -- Disable the canary for this breakpoint if the canary_mode of the
      -- debuggee is not CANARY_MODE_ALWAYS_ENABLED or
      -- CANARY_MODE_ALWAYS_DISABLED.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DebuggerDebuggeesBreakpointsSetCanaryOption

instance FromHttpApiData DebuggerDebuggeesBreakpointsSetCanaryOption where
    parseQueryParam = \case
        "CANARY_OPTION_UNSPECIFIED" -> Right CanaryOptionUnspecified
        "CANARY_OPTION_TRY_ENABLE" -> Right CanaryOptionTryEnable
        "CANARY_OPTION_TRY_DISABLE" -> Right CanaryOptionTryDisable
        x -> Left ("Unable to parse DebuggerDebuggeesBreakpointsSetCanaryOption from: " <> x)

instance ToHttpApiData DebuggerDebuggeesBreakpointsSetCanaryOption where
    toQueryParam = \case
        CanaryOptionUnspecified -> "CANARY_OPTION_UNSPECIFIED"
        CanaryOptionTryEnable -> "CANARY_OPTION_TRY_ENABLE"
        CanaryOptionTryDisable -> "CANARY_OPTION_TRY_DISABLE"

instance FromJSON DebuggerDebuggeesBreakpointsSetCanaryOption where
    parseJSON = parseJSONText "DebuggerDebuggeesBreakpointsSetCanaryOption"

instance ToJSON DebuggerDebuggeesBreakpointsSetCanaryOption where
    toJSON = toJSONText

-- | Reference to which the message applies.
data StatusMessageRefersTo
    = Unspecified
      -- ^ @UNSPECIFIED@
      -- Status doesn\'t refer to any particular input.
    | BreakpointSourceLocation
      -- ^ @BREAKPOINT_SOURCE_LOCATION@
      -- Status applies to the breakpoint and is related to its location.
    | BreakpointCondition
      -- ^ @BREAKPOINT_CONDITION@
      -- Status applies to the breakpoint and is related to its condition.
    | BreakpointExpression
      -- ^ @BREAKPOINT_EXPRESSION@
      -- Status applies to the breakpoint and is related to its expressions.
    | BreakpointAge
      -- ^ @BREAKPOINT_AGE@
      -- Status applies to the breakpoint and is related to its age.
    | BreakpointCanaryFailed
      -- ^ @BREAKPOINT_CANARY_FAILED@
      -- Status applies to the breakpoint when the breakpoint failed to exit the
      -- canary state.
    | VariableName
      -- ^ @VARIABLE_NAME@
      -- Status applies to the entire variable.
    | VariableValue
      -- ^ @VARIABLE_VALUE@
      -- Status applies to variable value (variable name is valid).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable StatusMessageRefersTo

instance FromHttpApiData StatusMessageRefersTo where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right Unspecified
        "BREAKPOINT_SOURCE_LOCATION" -> Right BreakpointSourceLocation
        "BREAKPOINT_CONDITION" -> Right BreakpointCondition
        "BREAKPOINT_EXPRESSION" -> Right BreakpointExpression
        "BREAKPOINT_AGE" -> Right BreakpointAge
        "BREAKPOINT_CANARY_FAILED" -> Right BreakpointCanaryFailed
        "VARIABLE_NAME" -> Right VariableName
        "VARIABLE_VALUE" -> Right VariableValue
        x -> Left ("Unable to parse StatusMessageRefersTo from: " <> x)

instance ToHttpApiData StatusMessageRefersTo where
    toQueryParam = \case
        Unspecified -> "UNSPECIFIED"
        BreakpointSourceLocation -> "BREAKPOINT_SOURCE_LOCATION"
        BreakpointCondition -> "BREAKPOINT_CONDITION"
        BreakpointExpression -> "BREAKPOINT_EXPRESSION"
        BreakpointAge -> "BREAKPOINT_AGE"
        BreakpointCanaryFailed -> "BREAKPOINT_CANARY_FAILED"
        VariableName -> "VARIABLE_NAME"
        VariableValue -> "VARIABLE_VALUE"

instance FromJSON StatusMessageRefersTo where
    parseJSON = parseJSONText "StatusMessageRefersTo"

instance ToJSON StatusMessageRefersTo where
    toJSON = toJSONText

-- | Indicates the severity of the log. Only relevant when action is \`LOG\`.
data BreakpointLogLevel
    = Info
      -- ^ @INFO@
      -- Information log message.
    | Warning
      -- ^ @WARNING@
      -- Warning log message.
    | Error'
      -- ^ @ERROR@
      -- Error log message.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BreakpointLogLevel

instance FromHttpApiData BreakpointLogLevel where
    parseQueryParam = \case
        "INFO" -> Right Info
        "WARNING" -> Right Warning
        "ERROR" -> Right Error'
        x -> Left ("Unable to parse BreakpointLogLevel from: " <> x)

instance ToHttpApiData BreakpointLogLevel where
    toQueryParam = \case
        Info -> "INFO"
        Warning -> "WARNING"
        Error' -> "ERROR"

instance FromJSON BreakpointLogLevel where
    parseJSON = parseJSONText "BreakpointLogLevel"

instance ToJSON BreakpointLogLevel where
    toJSON = toJSONText

-- | The current state of the breakpoint.
data BreakpointState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Breakpoint state UNSPECIFIED.
    | StateCanaryPendingAgents
      -- ^ @STATE_CANARY_PENDING_AGENTS@
      -- Enabling canary but no agents are available.
    | StateCanaryActive
      -- ^ @STATE_CANARY_ACTIVE@
      -- Enabling canary and successfully assigning canary agents.
    | StateRollingToAll
      -- ^ @STATE_ROLLING_TO_ALL@
      -- Breakpoint rolling out to all agents.
    | StateIsFinal
      -- ^ @STATE_IS_FINAL@
      -- Breakpoint is hit\/complete\/failed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BreakpointState

instance FromHttpApiData BreakpointState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "STATE_CANARY_PENDING_AGENTS" -> Right StateCanaryPendingAgents
        "STATE_CANARY_ACTIVE" -> Right StateCanaryActive
        "STATE_ROLLING_TO_ALL" -> Right StateRollingToAll
        "STATE_IS_FINAL" -> Right StateIsFinal
        x -> Left ("Unable to parse BreakpointState from: " <> x)

instance ToHttpApiData BreakpointState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        StateCanaryPendingAgents -> "STATE_CANARY_PENDING_AGENTS"
        StateCanaryActive -> "STATE_CANARY_ACTIVE"
        StateRollingToAll -> "STATE_ROLLING_TO_ALL"
        StateIsFinal -> "STATE_IS_FINAL"

instance FromJSON BreakpointState where
    parseJSON = parseJSONText "BreakpointState"

instance ToJSON BreakpointState where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Action that the agent should perform when the code at the breakpoint
-- location is hit.
data BreakpointAction
    = Capture
      -- ^ @CAPTURE@
      -- Capture stack frame and variables and update the breakpoint. The data is
      -- only captured once. After that the breakpoint is set in a final state.
    | Log
      -- ^ @LOG@
      -- Log each breakpoint hit. The breakpoint remains active until deleted or
      -- expired.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BreakpointAction

instance FromHttpApiData BreakpointAction where
    parseQueryParam = \case
        "CAPTURE" -> Right Capture
        "LOG" -> Right Log
        x -> Left ("Unable to parse BreakpointAction from: " <> x)

instance ToHttpApiData BreakpointAction where
    toQueryParam = \case
        Capture -> "CAPTURE"
        Log -> "LOG"

instance FromJSON BreakpointAction where
    parseJSON = parseJSONText "BreakpointAction"

instance ToJSON BreakpointAction where
    toJSON = toJSONText

-- | Used when setting breakpoint canary for this debuggee.
data DebuggeeCanaryMode
    = CanaryModeUnspecified
      -- ^ @CANARY_MODE_UNSPECIFIED@
      -- CANARY_MODE_UNSPECIFIED is equivalent to CANARY_MODE_ALWAYS_DISABLED so
      -- that if the debuggee is not configured to use the canary feature, the
      -- feature will be disabled.
    | CanaryModeAlwaysEnabled
      -- ^ @CANARY_MODE_ALWAYS_ENABLED@
      -- Always enable breakpoint canary regardless of the value of breakpoint\'s
      -- canary option.
    | CanaryModeAlwaysDisabled
      -- ^ @CANARY_MODE_ALWAYS_DISABLED@
      -- Always disable breakpoint canary regardless of the value of
      -- breakpoint\'s canary option.
    | CanaryModeDefaultEnabled
      -- ^ @CANARY_MODE_DEFAULT_ENABLED@
      -- Depends on the breakpoint\'s canary option. Enable canary by default if
      -- the breakpoint\'s canary option is not specified.
    | CanaryModeDefaultDisabled
      -- ^ @CANARY_MODE_DEFAULT_DISABLED@
      -- Depends on the breakpoint\'s canary option. Disable canary by default if
      -- the breakpoint\'s canary option is not specified.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DebuggeeCanaryMode

instance FromHttpApiData DebuggeeCanaryMode where
    parseQueryParam = \case
        "CANARY_MODE_UNSPECIFIED" -> Right CanaryModeUnspecified
        "CANARY_MODE_ALWAYS_ENABLED" -> Right CanaryModeAlwaysEnabled
        "CANARY_MODE_ALWAYS_DISABLED" -> Right CanaryModeAlwaysDisabled
        "CANARY_MODE_DEFAULT_ENABLED" -> Right CanaryModeDefaultEnabled
        "CANARY_MODE_DEFAULT_DISABLED" -> Right CanaryModeDefaultDisabled
        x -> Left ("Unable to parse DebuggeeCanaryMode from: " <> x)

instance ToHttpApiData DebuggeeCanaryMode where
    toQueryParam = \case
        CanaryModeUnspecified -> "CANARY_MODE_UNSPECIFIED"
        CanaryModeAlwaysEnabled -> "CANARY_MODE_ALWAYS_ENABLED"
        CanaryModeAlwaysDisabled -> "CANARY_MODE_ALWAYS_DISABLED"
        CanaryModeDefaultEnabled -> "CANARY_MODE_DEFAULT_ENABLED"
        CanaryModeDefaultDisabled -> "CANARY_MODE_DEFAULT_DISABLED"

instance FromJSON DebuggeeCanaryMode where
    parseJSON = parseJSONText "DebuggeeCanaryMode"

instance ToJSON DebuggeeCanaryMode where
    toJSON = toJSONText

-- | Only breakpoints with the specified action will pass the filter.
data DebuggerDebuggeesBreakpointsListActionValue
    = DDBLAVCapture
      -- ^ @CAPTURE@
      -- Capture stack frame and variables and update the breakpoint. The data is
      -- only captured once. After that the breakpoint is set in a final state.
    | DDBLAVLog
      -- ^ @LOG@
      -- Log each breakpoint hit. The breakpoint remains active until deleted or
      -- expired.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DebuggerDebuggeesBreakpointsListActionValue

instance FromHttpApiData DebuggerDebuggeesBreakpointsListActionValue where
    parseQueryParam = \case
        "CAPTURE" -> Right DDBLAVCapture
        "LOG" -> Right DDBLAVLog
        x -> Left ("Unable to parse DebuggerDebuggeesBreakpointsListActionValue from: " <> x)

instance ToHttpApiData DebuggerDebuggeesBreakpointsListActionValue where
    toQueryParam = \case
        DDBLAVCapture -> "CAPTURE"
        DDBLAVLog -> "LOG"

instance FromJSON DebuggerDebuggeesBreakpointsListActionValue where
    parseJSON = parseJSONText "DebuggerDebuggeesBreakpointsListActionValue"

instance ToJSON DebuggerDebuggeesBreakpointsListActionValue where
    toJSON = toJSONText

-- | The alias kind.
data AliasContextKind
    = Any
      -- ^ @ANY@
      -- Do not use.
    | Fixed
      -- ^ @FIXED@
      -- Git tag
    | Movable
      -- ^ @MOVABLE@
      -- Git branch
    | Other
      -- ^ @OTHER@
      -- OTHER is used to specify non-standard aliases, those not of the kinds
      -- above. For example, if a Git repo has a ref named \"refs\/foo\/bar\", it
      -- is considered to be of kind OTHER.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AliasContextKind

instance FromHttpApiData AliasContextKind where
    parseQueryParam = \case
        "ANY" -> Right Any
        "FIXED" -> Right Fixed
        "MOVABLE" -> Right Movable
        "OTHER" -> Right Other
        x -> Left ("Unable to parse AliasContextKind from: " <> x)

instance ToHttpApiData AliasContextKind where
    toQueryParam = \case
        Any -> "ANY"
        Fixed -> "FIXED"
        Movable -> "MOVABLE"
        Other -> "OTHER"

instance FromJSON AliasContextKind where
    parseJSON = parseJSONText "AliasContextKind"

instance ToJSON AliasContextKind where
    toJSON = toJSONText
