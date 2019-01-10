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

import           Network.Google.Prelude hiding (Bytes)

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
