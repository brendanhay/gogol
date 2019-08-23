{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DataFusion.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DataFusion.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | The log_name to populate in the Cloud Audit Record.
data CloudAuditOptionsLogName
    = UnspecifiedLogName
      -- ^ @UNSPECIFIED_LOG_NAME@
      -- Default. Should not be used.
    | AdminActivity
      -- ^ @ADMIN_ACTIVITY@
      -- Corresponds to \"cloudaudit.googleapis.com\/activity\"
    | DataAccess
      -- ^ @DATA_ACCESS@
      -- Corresponds to \"cloudaudit.googleapis.com\/data_access\"
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CloudAuditOptionsLogName

instance FromHttpApiData CloudAuditOptionsLogName where
    parseQueryParam = \case
        "UNSPECIFIED_LOG_NAME" -> Right UnspecifiedLogName
        "ADMIN_ACTIVITY" -> Right AdminActivity
        "DATA_ACCESS" -> Right DataAccess
        x -> Left ("Unable to parse CloudAuditOptionsLogName from: " <> x)

instance ToHttpApiData CloudAuditOptionsLogName where
    toQueryParam = \case
        UnspecifiedLogName -> "UNSPECIFIED_LOG_NAME"
        AdminActivity -> "ADMIN_ACTIVITY"
        DataAccess -> "DATA_ACCESS"

instance FromJSON CloudAuditOptionsLogName where
    parseJSON = parseJSONText "CloudAuditOptionsLogName"

instance ToJSON CloudAuditOptionsLogName where
    toJSON = toJSONText

-- | Trusted attributes supplied by any service that owns resources and uses
-- the IAM system for access control.
data ConditionSys
    = NoAttr
      -- ^ @NO_ATTR@
      -- Default non-attribute type
    | Region
      -- ^ @REGION@
      -- Region of the resource
    | Service
      -- ^ @SERVICE@
      -- Service name
    | Name
      -- ^ @NAME@
      -- Resource name
    | IP
      -- ^ @IP@
      -- IP address of the caller
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConditionSys

instance FromHttpApiData ConditionSys where
    parseQueryParam = \case
        "NO_ATTR" -> Right NoAttr
        "REGION" -> Right Region
        "SERVICE" -> Right Service
        "NAME" -> Right Name
        "IP" -> Right IP
        x -> Left ("Unable to parse ConditionSys from: " <> x)

instance ToHttpApiData ConditionSys where
    toQueryParam = \case
        NoAttr -> "NO_ATTR"
        Region -> "REGION"
        Service -> "SERVICE"
        Name -> "NAME"
        IP -> "IP"

instance FromJSON ConditionSys where
    parseJSON = parseJSONText "ConditionSys"

instance ToJSON ConditionSys where
    toJSON = toJSONText

-- | Required
data RuleAction
    = NoAction
      -- ^ @NO_ACTION@
      -- Default no action.
    | Allow
      -- ^ @ALLOW@
      -- Matching \'Entries\' grant access.
    | AllowWithLog
      -- ^ @ALLOW_WITH_LOG@
      -- Matching \'Entries\' grant access and the caller promises to log the
      -- request per the returned log_configs.
    | Deny
      -- ^ @DENY@
      -- Matching \'Entries\' deny access.
    | DenyWithLog
      -- ^ @DENY_WITH_LOG@
      -- Matching \'Entries\' deny access and the caller promises to log the
      -- request per the returned log_configs.
    | Log
      -- ^ @LOG@
      -- Matching \'Entries\' tell IAM.Check callers to generate logs.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RuleAction

instance FromHttpApiData RuleAction where
    parseQueryParam = \case
        "NO_ACTION" -> Right NoAction
        "ALLOW" -> Right Allow
        "ALLOW_WITH_LOG" -> Right AllowWithLog
        "DENY" -> Right Deny
        "DENY_WITH_LOG" -> Right DenyWithLog
        "LOG" -> Right Log
        x -> Left ("Unable to parse RuleAction from: " <> x)

instance ToHttpApiData RuleAction where
    toQueryParam = \case
        NoAction -> "NO_ACTION"
        Allow -> "ALLOW"
        AllowWithLog -> "ALLOW_WITH_LOG"
        Deny -> "DENY"
        DenyWithLog -> "DENY_WITH_LOG"
        Log -> "LOG"

instance FromJSON RuleAction where
    parseJSON = parseJSONText "RuleAction"

instance ToJSON RuleAction where
    toJSON = toJSONText

-- | Required. Instance type.
data InstanceType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- No type specified. The instance creation will fail.
    | Basic
      -- ^ @BASIC@
      -- Basic Data Fusion instance. In Basic type, the user will be able to
      -- create data pipelines using point and click UI. However, there are
      -- certain limitations, such as fewer number of concurrent pipelines, no
      -- support for streaming pipelines, etc.
    | Enterprise
      -- ^ @ENTERPRISE@
      -- Enterprise Data Fusion instance. In Enterprise type, the user will have
      -- more features available, such as support for streaming pipelines, higher
      -- number of concurrent pipelines, etc.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceType

instance FromHttpApiData InstanceType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "BASIC" -> Right Basic
        "ENTERPRISE" -> Right Enterprise
        x -> Left ("Unable to parse InstanceType from: " <> x)

instance ToHttpApiData InstanceType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        Basic -> "BASIC"
        Enterprise -> "ENTERPRISE"

instance FromJSON InstanceType where
    parseJSON = parseJSONText "InstanceType"

instance ToJSON InstanceType where
    toJSON = toJSONText

-- | An operator to apply the subject with.
data ConditionOp
    = NoOp
      -- ^ @NO_OP@
      -- Default no-op.
    | Equals
      -- ^ @EQUALS@
      -- DEPRECATED. Use IN instead.
    | NotEquals
      -- ^ @NOT_EQUALS@
      -- DEPRECATED. Use NOT_IN instead.
    | IN
      -- ^ @IN@
      -- The condition is true if the subject (or any element of it if it is a
      -- set) matches any of the supplied values.
    | NotIn
      -- ^ @NOT_IN@
      -- The condition is true if the subject (or every element of it if it is a
      -- set) matches none of the supplied values.
    | Discharged
      -- ^ @DISCHARGED@
      -- Subject is discharged
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConditionOp

instance FromHttpApiData ConditionOp where
    parseQueryParam = \case
        "NO_OP" -> Right NoOp
        "EQUALS" -> Right Equals
        "NOT_EQUALS" -> Right NotEquals
        "IN" -> Right IN
        "NOT_IN" -> Right NotIn
        "DISCHARGED" -> Right Discharged
        x -> Left ("Unable to parse ConditionOp from: " <> x)

instance ToHttpApiData ConditionOp where
    toQueryParam = \case
        NoOp -> "NO_OP"
        Equals -> "EQUALS"
        NotEquals -> "NOT_EQUALS"
        IN -> "IN"
        NotIn -> "NOT_IN"
        Discharged -> "DISCHARGED"

instance FromJSON ConditionOp where
    parseJSON = parseJSONText "ConditionOp"

instance ToJSON ConditionOp where
    toJSON = toJSONText

-- | The log type that this config enables.
data AuditLogConfigLogType
    = LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      -- Default case. Should never be this.
    | AdminRead
      -- ^ @ADMIN_READ@
      -- Admin reads. Example: CloudIAM getIamPolicy
    | DataWrite
      -- ^ @DATA_WRITE@
      -- Data writes. Example: CloudSQL Users create
    | DataRead
      -- ^ @DATA_READ@
      -- Data reads. Example: CloudSQL Users list
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuditLogConfigLogType

instance FromHttpApiData AuditLogConfigLogType where
    parseQueryParam = \case
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        "ADMIN_READ" -> Right AdminRead
        "DATA_WRITE" -> Right DataWrite
        "DATA_READ" -> Right DataRead
        x -> Left ("Unable to parse AuditLogConfigLogType from: " <> x)

instance ToHttpApiData AuditLogConfigLogType where
    toQueryParam = \case
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"
        AdminRead -> "ADMIN_READ"
        DataWrite -> "DATA_WRITE"
        DataRead -> "DATA_READ"

instance FromJSON AuditLogConfigLogType where
    parseJSON = parseJSONText "AuditLogConfigLogType"

instance ToJSON AuditLogConfigLogType where
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

-- | Whether Gin logging should happen in a fail-closed manner at the caller.
-- This is relevant only in the LocalIAM implementation, for now.
data DataAccessOptionsLogMode
    = LogModeUnspecified
      -- ^ @LOG_MODE_UNSPECIFIED@
      -- Client is not required to write a partial Gin log immediately after the
      -- authorization check. If client chooses to write one and it fails, client
      -- may either fail open (allow the operation to continue) or fail closed
      -- (handle as a DENY outcome).
    | LogFailClosed
      -- ^ @LOG_FAIL_CLOSED@
      -- The application\'s operation in the context of which this authorization
      -- check is being made may only be performed if it is successfully logged
      -- to Gin. For instance, the authorization library may satisfy this
      -- obligation by emitting a partial log entry at authorization check time
      -- and only returning ALLOW to the application if it succeeds. If a
      -- matching Rule has this directive, but the client has not indicated that
      -- it will honor such requirements, then the IAM check will result in
      -- authorization failure by setting CheckPolicyResponse.success=false.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataAccessOptionsLogMode

instance FromHttpApiData DataAccessOptionsLogMode where
    parseQueryParam = \case
        "LOG_MODE_UNSPECIFIED" -> Right LogModeUnspecified
        "LOG_FAIL_CLOSED" -> Right LogFailClosed
        x -> Left ("Unable to parse DataAccessOptionsLogMode from: " <> x)

instance ToHttpApiData DataAccessOptionsLogMode where
    toQueryParam = \case
        LogModeUnspecified -> "LOG_MODE_UNSPECIFIED"
        LogFailClosed -> "LOG_FAIL_CLOSED"

instance FromJSON DataAccessOptionsLogMode where
    parseJSON = parseJSONText "DataAccessOptionsLogMode"

instance ToJSON DataAccessOptionsLogMode where
    toJSON = toJSONText

-- | The type of the permission that was checked.
data AuthorizationLoggingOptionsPermissionType
    = ALOPTPermissionTypeUnspecified
      -- ^ @PERMISSION_TYPE_UNSPECIFIED@
      -- Default. Should not be used.
    | ALOPTAdminRead
      -- ^ @ADMIN_READ@
      -- A read of admin (meta) data.
    | ALOPTAdminWrite
      -- ^ @ADMIN_WRITE@
      -- A write of admin (meta) data.
    | ALOPTDataRead
      -- ^ @DATA_READ@
      -- A read of standard data.
    | ALOPTDataWrite
      -- ^ @DATA_WRITE@
      -- A write of standard data.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuthorizationLoggingOptionsPermissionType

instance FromHttpApiData AuthorizationLoggingOptionsPermissionType where
    parseQueryParam = \case
        "PERMISSION_TYPE_UNSPECIFIED" -> Right ALOPTPermissionTypeUnspecified
        "ADMIN_READ" -> Right ALOPTAdminRead
        "ADMIN_WRITE" -> Right ALOPTAdminWrite
        "DATA_READ" -> Right ALOPTDataRead
        "DATA_WRITE" -> Right ALOPTDataWrite
        x -> Left ("Unable to parse AuthorizationLoggingOptionsPermissionType from: " <> x)

instance ToHttpApiData AuthorizationLoggingOptionsPermissionType where
    toQueryParam = \case
        ALOPTPermissionTypeUnspecified -> "PERMISSION_TYPE_UNSPECIFIED"
        ALOPTAdminRead -> "ADMIN_READ"
        ALOPTAdminWrite -> "ADMIN_WRITE"
        ALOPTDataRead -> "DATA_READ"
        ALOPTDataWrite -> "DATA_WRITE"

instance FromJSON AuthorizationLoggingOptionsPermissionType where
    parseJSON = parseJSONText "AuthorizationLoggingOptionsPermissionType"

instance ToJSON AuthorizationLoggingOptionsPermissionType where
    toJSON = toJSONText

-- | Output only. The current state of this Data Fusion instance.
data InstanceState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Instance does not have a state yet
    | Creating
      -- ^ @CREATING@
      -- Instance is being created
    | Running
      -- ^ @RUNNING@
      -- Instance is running and ready for requests
    | Failed
      -- ^ @FAILED@
      -- Instance creation failed
    | Deleting
      -- ^ @DELETING@
      -- Instance is being deleted
    | Upgrading
      -- ^ @UPGRADING@
      -- Instance is being upgraded
    | Restarting
      -- ^ @RESTARTING@
      -- Instance is being restarted
    | Updating
      -- ^ @UPDATING@
      -- Instance is being updated
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceState

instance FromHttpApiData InstanceState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "CREATING" -> Right Creating
        "RUNNING" -> Right Running
        "FAILED" -> Right Failed
        "DELETING" -> Right Deleting
        "UPGRADING" -> Right Upgrading
        "RESTARTING" -> Right Restarting
        "UPDATING" -> Right Updating
        x -> Left ("Unable to parse InstanceState from: " <> x)

instance ToHttpApiData InstanceState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Creating -> "CREATING"
        Running -> "RUNNING"
        Failed -> "FAILED"
        Deleting -> "DELETING"
        Upgrading -> "UPGRADING"
        Restarting -> "RESTARTING"
        Updating -> "UPDATING"

instance FromJSON InstanceState where
    parseJSON = parseJSONText "InstanceState"

instance ToJSON InstanceState where
    toJSON = toJSONText

-- | Trusted attributes supplied by the IAM system.
data ConditionIAM
    = CINoAttr
      -- ^ @NO_ATTR@
      -- Default non-attribute.
    | CIAuthority
      -- ^ @AUTHORITY@
      -- Either principal or (if present) authority selector.
    | CIAttribution
      -- ^ @ATTRIBUTION@
      -- The principal (even if an authority selector is present), which must
      -- only be used for attribution, not authorization.
    | CISecurityRealm
      -- ^ @SECURITY_REALM@
      -- Any of the security realms in the IAMContext (go\/security-realms). When
      -- used with IN, the condition indicates \"any of the request\'s realms
      -- match one of the given values; with NOT_IN, \"none of the realms match
      -- any of the given values\". Note that a value can be: - \'self\' (i.e.,
      -- allow connections from clients that are in the same security realm) - a
      -- realm (e.g., \'campus-abc\') - a realm group (e.g.,
      -- \'realms-for-borg-cell-xx\', see: go\/realm-groups) A match is
      -- determined by a realm group membership check performed by a RealmAclRep
      -- object (go\/realm-acl-howto). It is not permitted to grant access based
      -- on the *absence* of a realm, so realm conditions can only be used in a
      -- \"positive\" context (e.g., ALLOW\/IN or DENY\/NOT_IN).
    | CIApprover
      -- ^ @APPROVER@
      -- An approver (distinct from the requester) that has authorized this
      -- request. When used with IN, the condition indicates that one of the
      -- approvers associated with the request matches the specified principal,
      -- or is a member of the specified group. Approvers can only grant
      -- additional access, and are thus only used in a strictly positive context
      -- (e.g. ALLOW\/IN or DENY\/NOT_IN).
    | CIJustificationType
      -- ^ @JUSTIFICATION_TYPE@
      -- What types of justifications have been supplied with this request.
      -- String values should match enum names from tech.iam.JustificationType,
      -- e.g. \"MANUAL_STRING\". It is not permitted to grant access based on the
      -- *absence* of a justification, so justification conditions can only be
      -- used in a \"positive\" context (e.g., ALLOW\/IN or DENY\/NOT_IN).
      -- Multiple justifications, e.g., a Buganizer ID and a manually-entered
      -- reason, are normal and supported.
    | CICredentialsType
      -- ^ @CREDENTIALS_TYPE@
      -- What type of credentials have been supplied with this request. String
      -- values should match enum names from security_loas_l2.CredentialsType -
      -- currently, only CREDS_TYPE_EMERGENCY is supported. It is not permitted
      -- to grant access based on the *absence* of a credentials type, so the
      -- conditions can only be used in a \"positive\" context (e.g., ALLOW\/IN
      -- or DENY\/NOT_IN).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConditionIAM

instance FromHttpApiData ConditionIAM where
    parseQueryParam = \case
        "NO_ATTR" -> Right CINoAttr
        "AUTHORITY" -> Right CIAuthority
        "ATTRIBUTION" -> Right CIAttribution
        "SECURITY_REALM" -> Right CISecurityRealm
        "APPROVER" -> Right CIApprover
        "JUSTIFICATION_TYPE" -> Right CIJustificationType
        "CREDENTIALS_TYPE" -> Right CICredentialsType
        x -> Left ("Unable to parse ConditionIAM from: " <> x)

instance ToHttpApiData ConditionIAM where
    toQueryParam = \case
        CINoAttr -> "NO_ATTR"
        CIAuthority -> "AUTHORITY"
        CIAttribution -> "ATTRIBUTION"
        CISecurityRealm -> "SECURITY_REALM"
        CIApprover -> "APPROVER"
        CIJustificationType -> "JUSTIFICATION_TYPE"
        CICredentialsType -> "CREDENTIALS_TYPE"

instance FromJSON ConditionIAM where
    parseJSON = parseJSONText "ConditionIAM"

instance ToJSON ConditionIAM where
    toJSON = toJSONText
