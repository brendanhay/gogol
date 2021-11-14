{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.IAM.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.IAM.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The output format of the private key. The default value is
-- \`TYPE_GOOGLE_CREDENTIALS_FILE\`, which is the Google Credentials File
-- format.
data CreateServiceAccountKeyRequestPrivateKeyType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Unspecified. Equivalent to \`TYPE_GOOGLE_CREDENTIALS_FILE\`.
    | TypePKCS12File
      -- ^ @TYPE_PKCS12_FILE@
      -- PKCS12 format. The password for the PKCS12 file is \`notasecret\`. For
      -- more information, see https:\/\/tools.ietf.org\/html\/rfc7292.
    | TypeGoogleCredentialsFile
      -- ^ @TYPE_GOOGLE_CREDENTIALS_FILE@
      -- Google Credentials File format.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreateServiceAccountKeyRequestPrivateKeyType

instance FromHttpApiData CreateServiceAccountKeyRequestPrivateKeyType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "TYPE_PKCS12_FILE" -> Right TypePKCS12File
        "TYPE_GOOGLE_CREDENTIALS_FILE" -> Right TypeGoogleCredentialsFile
        x -> Left ("Unable to parse CreateServiceAccountKeyRequestPrivateKeyType from: " <> x)

instance ToHttpApiData CreateServiceAccountKeyRequestPrivateKeyType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        TypePKCS12File -> "TYPE_PKCS12_FILE"
        TypeGoogleCredentialsFile -> "TYPE_GOOGLE_CREDENTIALS_FILE"

instance FromJSON CreateServiceAccountKeyRequestPrivateKeyType where
    parseJSON = parseJSONText "CreateServiceAccountKeyRequestPrivateKeyType"

instance ToJSON CreateServiceAccountKeyRequestPrivateKeyType where
    toJSON = toJSONText

-- | The current launch stage of the permission.
data PermissionStage
    = Alpha
      -- ^ @ALPHA@
      -- The permission is currently in an alpha phase.
    | Beta
      -- ^ @BETA@
      -- The permission is currently in a beta phase.
    | GA
      -- ^ @GA@
      -- The permission is generally available.
    | Deprecated
      -- ^ @DEPRECATED@
      -- The permission is being deprecated.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PermissionStage

instance FromHttpApiData PermissionStage where
    parseQueryParam = \case
        "ALPHA" -> Right Alpha
        "BETA" -> Right Beta
        "GA" -> Right GA
        "DEPRECATED" -> Right Deprecated
        x -> Left ("Unable to parse PermissionStage from: " <> x)

instance ToHttpApiData PermissionStage where
    toQueryParam = \case
        Alpha -> "ALPHA"
        Beta -> "BETA"
        GA -> "GA"
        Deprecated -> "DEPRECATED"

instance FromJSON PermissionStage where
    parseJSON = parseJSONText "PermissionStage"

instance ToJSON PermissionStage where
    toJSON = toJSONText

-- | Output only. The state of the pool.
data WorkLoadIdentityPoolState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State unspecified.
    | Active
      -- ^ @ACTIVE@
      -- The pool is active, and may be used in Google Cloud policies.
    | Deleted
      -- ^ @DELETED@
      -- The pool is soft-deleted. Soft-deleted pools are permanently deleted
      -- after approximately 30 days. You can restore a soft-deleted pool using
      -- UndeleteWorkloadIdentityPool. You cannot reuse the ID of a soft-deleted
      -- pool until it is permanently deleted. While a pool is deleted, you
      -- cannot use it to exchange tokens, or use existing tokens to access
      -- resources. If the pool is undeleted, existing tokens grant access again.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WorkLoadIdentityPoolState

instance FromHttpApiData WorkLoadIdentityPoolState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "ACTIVE" -> Right Active
        "DELETED" -> Right Deleted
        x -> Left ("Unable to parse WorkLoadIdentityPoolState from: " <> x)

instance ToHttpApiData WorkLoadIdentityPoolState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Active -> "ACTIVE"
        Deleted -> "DELETED"

instance FromJSON WorkLoadIdentityPoolState where
    parseJSON = parseJSONText "WorkLoadIdentityPoolState"

instance ToJSON WorkLoadIdentityPoolState where
    toJSON = toJSONText

-- | The output format of the public key requested. X509_PEM is the default
-- output format.
data ProjectsServiceAccountsKeysGetPublicKeyType
    = TypeNone
      -- ^ @TYPE_NONE@
      -- Unspecified. Returns nothing here.
    | TypeX509PemFile
      -- ^ @TYPE_X509_PEM_FILE@
      -- X509 PEM format.
    | TypeRawPublicKey
      -- ^ @TYPE_RAW_PUBLIC_KEY@
      -- Raw public key.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsServiceAccountsKeysGetPublicKeyType

instance FromHttpApiData ProjectsServiceAccountsKeysGetPublicKeyType where
    parseQueryParam = \case
        "TYPE_NONE" -> Right TypeNone
        "TYPE_X509_PEM_FILE" -> Right TypeX509PemFile
        "TYPE_RAW_PUBLIC_KEY" -> Right TypeRawPublicKey
        x -> Left ("Unable to parse ProjectsServiceAccountsKeysGetPublicKeyType from: " <> x)

instance ToHttpApiData ProjectsServiceAccountsKeysGetPublicKeyType where
    toQueryParam = \case
        TypeNone -> "TYPE_NONE"
        TypeX509PemFile -> "TYPE_X509_PEM_FILE"
        TypeRawPublicKey -> "TYPE_RAW_PUBLIC_KEY"

instance FromJSON ProjectsServiceAccountsKeysGetPublicKeyType where
    parseJSON = parseJSONText "ProjectsServiceAccountsKeysGetPublicKeyType"

instance ToJSON ProjectsServiceAccountsKeysGetPublicKeyType where
    toJSON = toJSONText

data QueryGrantableRolesRequestView
    = Basic
      -- ^ @BASIC@
      -- Omits the \`included_permissions\` field. This is the default value.
    | Full
      -- ^ @FULL@
      -- Returns all fields.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryGrantableRolesRequestView

instance FromHttpApiData QueryGrantableRolesRequestView where
    parseQueryParam = \case
        "BASIC" -> Right Basic
        "FULL" -> Right Full
        x -> Left ("Unable to parse QueryGrantableRolesRequestView from: " <> x)

instance ToHttpApiData QueryGrantableRolesRequestView where
    toQueryParam = \case
        Basic -> "BASIC"
        Full -> "FULL"

instance FromJSON QueryGrantableRolesRequestView where
    parseJSON = parseJSONText "QueryGrantableRolesRequestView"

instance ToJSON QueryGrantableRolesRequestView where
    toJSON = toJSONText

-- | Optional view for the returned Role objects. When \`FULL\` is specified,
-- the \`includedPermissions\` field is returned, which includes a list of
-- all permissions in the role. The default value is \`BASIC\`, which does
-- not return the \`includedPermissions\` field.
data OrganizationsRolesListView
    = ORLVBasic
      -- ^ @BASIC@
      -- Omits the \`included_permissions\` field. This is the default value.
    | ORLVFull
      -- ^ @FULL@
      -- Returns all fields.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrganizationsRolesListView

instance FromHttpApiData OrganizationsRolesListView where
    parseQueryParam = \case
        "BASIC" -> Right ORLVBasic
        "FULL" -> Right ORLVFull
        x -> Left ("Unable to parse OrganizationsRolesListView from: " <> x)

instance ToHttpApiData OrganizationsRolesListView where
    toQueryParam = \case
        ORLVBasic -> "BASIC"
        ORLVFull -> "FULL"

instance FromJSON OrganizationsRolesListView where
    parseJSON = parseJSONText "OrganizationsRolesListView"

instance ToJSON OrganizationsRolesListView where
    toJSON = toJSONText

-- | The key origin.
data ServiceAccountKeyKeyOrigin
    = OriginUnspecified
      -- ^ @ORIGIN_UNSPECIFIED@
      -- Unspecified key origin.
    | UserProvided
      -- ^ @USER_PROVIDED@
      -- Key is provided by user.
    | GoogleProvided
      -- ^ @GOOGLE_PROVIDED@
      -- Key is provided by Google.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ServiceAccountKeyKeyOrigin

instance FromHttpApiData ServiceAccountKeyKeyOrigin where
    parseQueryParam = \case
        "ORIGIN_UNSPECIFIED" -> Right OriginUnspecified
        "USER_PROVIDED" -> Right UserProvided
        "GOOGLE_PROVIDED" -> Right GoogleProvided
        x -> Left ("Unable to parse ServiceAccountKeyKeyOrigin from: " <> x)

instance ToHttpApiData ServiceAccountKeyKeyOrigin where
    toQueryParam = \case
        OriginUnspecified -> "ORIGIN_UNSPECIFIED"
        UserProvided -> "USER_PROVIDED"
        GoogleProvided -> "GOOGLE_PROVIDED"

instance FromJSON ServiceAccountKeyKeyOrigin where
    parseJSON = parseJSONText "ServiceAccountKeyKeyOrigin"

instance ToJSON ServiceAccountKeyKeyOrigin where
    toJSON = toJSONText

-- | Output only. The state of the provider.
data WorkLoadIdentityPoolProviderState
    = WLIPPSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State unspecified.
    | WLIPPSActive
      -- ^ @ACTIVE@
      -- The provider is active, and may be used to validate authentication
      -- credentials.
    | WLIPPSDeleted
      -- ^ @DELETED@
      -- The provider is soft-deleted. Soft-deleted providers are permanently
      -- deleted after approximately 30 days. You can restore a soft-deleted
      -- provider using UndeleteWorkloadIdentityPoolProvider. You cannot reuse
      -- the ID of a soft-deleted provider until it is permanently deleted.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WorkLoadIdentityPoolProviderState

instance FromHttpApiData WorkLoadIdentityPoolProviderState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right WLIPPSStateUnspecified
        "ACTIVE" -> Right WLIPPSActive
        "DELETED" -> Right WLIPPSDeleted
        x -> Left ("Unable to parse WorkLoadIdentityPoolProviderState from: " <> x)

instance ToHttpApiData WorkLoadIdentityPoolProviderState where
    toQueryParam = \case
        WLIPPSStateUnspecified -> "STATE_UNSPECIFIED"
        WLIPPSActive -> "ACTIVE"
        WLIPPSDeleted -> "DELETED"

instance FromJSON WorkLoadIdentityPoolProviderState where
    parseJSON = parseJSONText "WorkLoadIdentityPoolProviderState"

instance ToJSON WorkLoadIdentityPoolProviderState where
    toJSON = toJSONText

-- | Optional view for the returned Role objects. When \`FULL\` is specified,
-- the \`includedPermissions\` field is returned, which includes a list of
-- all permissions in the role. The default value is \`BASIC\`, which does
-- not return the \`includedPermissions\` field.
data ProjectsRolesListView
    = PRLVBasic
      -- ^ @BASIC@
      -- Omits the \`included_permissions\` field. This is the default value.
    | PRLVFull
      -- ^ @FULL@
      -- Returns all fields.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsRolesListView

instance FromHttpApiData ProjectsRolesListView where
    parseQueryParam = \case
        "BASIC" -> Right PRLVBasic
        "FULL" -> Right PRLVFull
        x -> Left ("Unable to parse ProjectsRolesListView from: " <> x)

instance ToHttpApiData ProjectsRolesListView where
    toQueryParam = \case
        PRLVBasic -> "BASIC"
        PRLVFull -> "FULL"

instance FromJSON ProjectsRolesListView where
    parseJSON = parseJSONText "ProjectsRolesListView"

instance ToJSON ProjectsRolesListView where
    toJSON = toJSONText

-- | The key type.
data ServiceAccountKeyKeyType
    = KeyTypeUnspecified
      -- ^ @KEY_TYPE_UNSPECIFIED@
      -- Unspecified key type. The presence of this in the message will
      -- immediately result in an error.
    | UserManaged
      -- ^ @USER_MANAGED@
      -- User-managed keys (managed and rotated by the user).
    | SystemManaged
      -- ^ @SYSTEM_MANAGED@
      -- System-managed keys (managed and rotated by Google).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ServiceAccountKeyKeyType

instance FromHttpApiData ServiceAccountKeyKeyType where
    parseQueryParam = \case
        "KEY_TYPE_UNSPECIFIED" -> Right KeyTypeUnspecified
        "USER_MANAGED" -> Right UserManaged
        "SYSTEM_MANAGED" -> Right SystemManaged
        x -> Left ("Unable to parse ServiceAccountKeyKeyType from: " <> x)

instance ToHttpApiData ServiceAccountKeyKeyType where
    toQueryParam = \case
        KeyTypeUnspecified -> "KEY_TYPE_UNSPECIFIED"
        UserManaged -> "USER_MANAGED"
        SystemManaged -> "SYSTEM_MANAGED"

instance FromJSON ServiceAccountKeyKeyType where
    parseJSON = parseJSONText "ServiceAccountKeyKeyType"

instance ToJSON ServiceAccountKeyKeyType where
    toJSON = toJSONText

-- | The action that was performed on a Binding. Required
data BindingDeltaAction
    = ActionUnspecified
      -- ^ @ACTION_UNSPECIFIED@
      -- Unspecified.
    | Add
      -- ^ @ADD@
      -- Addition of a Binding.
    | Remove
      -- ^ @REMOVE@
      -- Removal of a Binding.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BindingDeltaAction

instance FromHttpApiData BindingDeltaAction where
    parseQueryParam = \case
        "ACTION_UNSPECIFIED" -> Right ActionUnspecified
        "ADD" -> Right Add
        "REMOVE" -> Right Remove
        x -> Left ("Unable to parse BindingDeltaAction from: " <> x)

instance ToHttpApiData BindingDeltaAction where
    toQueryParam = \case
        ActionUnspecified -> "ACTION_UNSPECIFIED"
        Add -> "ADD"
        Remove -> "REMOVE"

instance FromJSON BindingDeltaAction where
    parseJSON = parseJSONText "BindingDeltaAction"

instance ToJSON BindingDeltaAction where
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

-- | The validation unit severity.
data LintResultSeverity
    = LRSSeverityUnspecified
      -- ^ @SEVERITY_UNSPECIFIED@
      -- Severity is unspecified.
    | LRSError'
      -- ^ @ERROR@
      -- A validation unit returns an error only for critical issues. If an
      -- attempt is made to set the problematic policy without rectifying the
      -- critical issue, it causes the \`setPolicy\` operation to fail.
    | LRSWarning
      -- ^ @WARNING@
      -- Any issue which is severe enough but does not cause an error. For
      -- example, suspicious constructs in the input object will not necessarily
      -- fail \`setPolicy\`, but there is a high likelihood that they won\'t
      -- behave as expected during policy evaluation in \`checkPolicy\`. This
      -- includes the following common scenarios: - Unsatisfiable condition:
      -- Expired timestamp in date\/time condition. - Ineffective condition:
      -- Condition on a pair which is granted unconditionally in another binding
      -- of the same policy.
    | LRSNotice
      -- ^ @NOTICE@
      -- Reserved for the issues that are not severe as \`ERROR\`\/\`WARNING\`,
      -- but need special handling. For instance, messages about skipped
      -- validation units are issued as \`NOTICE\`.
    | LRSInfo
      -- ^ @INFO@
      -- Any informative statement which is not severe enough to raise
      -- \`ERROR\`\/\`WARNING\`\/\`NOTICE\`, like auto-correction recommendations
      -- on the input content. Note that current version of the linter does not
      -- utilize \`INFO\`.
    | LRSDeprecated
      -- ^ @DEPRECATED@
      -- Deprecated severity level.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LintResultSeverity

instance FromHttpApiData LintResultSeverity where
    parseQueryParam = \case
        "SEVERITY_UNSPECIFIED" -> Right LRSSeverityUnspecified
        "ERROR" -> Right LRSError'
        "WARNING" -> Right LRSWarning
        "NOTICE" -> Right LRSNotice
        "INFO" -> Right LRSInfo
        "DEPRECATED" -> Right LRSDeprecated
        x -> Left ("Unable to parse LintResultSeverity from: " <> x)

instance ToHttpApiData LintResultSeverity where
    toQueryParam = \case
        LRSSeverityUnspecified -> "SEVERITY_UNSPECIFIED"
        LRSError' -> "ERROR"
        LRSWarning -> "WARNING"
        LRSNotice -> "NOTICE"
        LRSInfo -> "INFO"
        LRSDeprecated -> "DEPRECATED"

instance FromJSON LintResultSeverity where
    parseJSON = parseJSONText "LintResultSeverity"

instance ToJSON LintResultSeverity where
    toJSON = toJSONText

-- | Optional view for the returned Role objects. When \`FULL\` is specified,
-- the \`includedPermissions\` field is returned, which includes a list of
-- all permissions in the role. The default value is \`BASIC\`, which does
-- not return the \`includedPermissions\` field.
data RolesListView
    = RLVBasic
      -- ^ @BASIC@
      -- Omits the \`included_permissions\` field. This is the default value.
    | RLVFull
      -- ^ @FULL@
      -- Returns all fields.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RolesListView

instance FromHttpApiData RolesListView where
    parseQueryParam = \case
        "BASIC" -> Right RLVBasic
        "FULL" -> Right RLVFull
        x -> Left ("Unable to parse RolesListView from: " <> x)

instance ToHttpApiData RolesListView where
    toQueryParam = \case
        RLVBasic -> "BASIC"
        RLVFull -> "FULL"

instance FromJSON RolesListView where
    parseJSON = parseJSONText "RolesListView"

instance ToJSON RolesListView where
    toJSON = toJSONText

-- | The validation unit level.
data LintResultLevel
    = LevelUnspecified
      -- ^ @LEVEL_UNSPECIFIED@
      -- Level is unspecified.
    | Condition
      -- ^ @CONDITION@
      -- A validation unit which operates on an individual condition within a
      -- binding.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LintResultLevel

instance FromHttpApiData LintResultLevel where
    parseQueryParam = \case
        "LEVEL_UNSPECIFIED" -> Right LevelUnspecified
        "CONDITION" -> Right Condition
        x -> Left ("Unable to parse LintResultLevel from: " <> x)

instance ToHttpApiData LintResultLevel where
    toQueryParam = \case
        LevelUnspecified -> "LEVEL_UNSPECIFIED"
        Condition -> "CONDITION"

instance FromJSON LintResultLevel where
    parseJSON = parseJSONText "LintResultLevel"

instance ToJSON LintResultLevel where
    toJSON = toJSONText

-- | The current launch stage of the role. If the \`ALPHA\` launch stage has
-- been selected for a role, the \`stage\` field will not be included in
-- the returned definition for the role.
data RoleStage
    = RSAlpha
      -- ^ @ALPHA@
      -- The user has indicated this role is currently in an Alpha phase. If this
      -- launch stage is selected, the \`stage\` field will not be included when
      -- requesting the definition for a given role.
    | RSBeta
      -- ^ @BETA@
      -- The user has indicated this role is currently in a Beta phase.
    | RSGA
      -- ^ @GA@
      -- The user has indicated this role is generally available.
    | RSDeprecated
      -- ^ @DEPRECATED@
      -- The user has indicated this role is being deprecated.
    | RSDisabled
      -- ^ @DISABLED@
      -- This role is disabled and will not contribute permissions to any members
      -- it is granted to in policies.
    | RSEap
      -- ^ @EAP@
      -- The user has indicated this role is currently in an EAP phase.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RoleStage

instance FromHttpApiData RoleStage where
    parseQueryParam = \case
        "ALPHA" -> Right RSAlpha
        "BETA" -> Right RSBeta
        "GA" -> Right RSGA
        "DEPRECATED" -> Right RSDeprecated
        "DISABLED" -> Right RSDisabled
        "EAP" -> Right RSEap
        x -> Left ("Unable to parse RoleStage from: " <> x)

instance ToHttpApiData RoleStage where
    toQueryParam = \case
        RSAlpha -> "ALPHA"
        RSBeta -> "BETA"
        RSGA -> "GA"
        RSDeprecated -> "DEPRECATED"
        RSDisabled -> "DISABLED"
        RSEap -> "EAP"

instance FromJSON RoleStage where
    parseJSON = parseJSONText "RoleStage"

instance ToJSON RoleStage where
    toJSON = toJSONText

-- | Specifies the algorithm (and possibly key size) for the key.
data ServiceAccountKeyKeyAlgorithm
    = KeyAlgUnspecified
      -- ^ @KEY_ALG_UNSPECIFIED@
      -- An unspecified key algorithm.
    | KeyAlgRsa1024
      -- ^ @KEY_ALG_RSA_1024@
      -- 1k RSA Key.
    | KeyAlgRsa2048
      -- ^ @KEY_ALG_RSA_2048@
      -- 2k RSA Key.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ServiceAccountKeyKeyAlgorithm

instance FromHttpApiData ServiceAccountKeyKeyAlgorithm where
    parseQueryParam = \case
        "KEY_ALG_UNSPECIFIED" -> Right KeyAlgUnspecified
        "KEY_ALG_RSA_1024" -> Right KeyAlgRsa1024
        "KEY_ALG_RSA_2048" -> Right KeyAlgRsa2048
        x -> Left ("Unable to parse ServiceAccountKeyKeyAlgorithm from: " <> x)

instance ToHttpApiData ServiceAccountKeyKeyAlgorithm where
    toQueryParam = \case
        KeyAlgUnspecified -> "KEY_ALG_UNSPECIFIED"
        KeyAlgRsa1024 -> "KEY_ALG_RSA_1024"
        KeyAlgRsa2048 -> "KEY_ALG_RSA_2048"

instance FromJSON ServiceAccountKeyKeyAlgorithm where
    parseJSON = parseJSONText "ServiceAccountKeyKeyAlgorithm"

instance ToJSON ServiceAccountKeyKeyAlgorithm where
    toJSON = toJSONText

-- | Filters the types of keys the user wants to include in the list
-- response. Duplicate key types are not allowed. If no key type is
-- provided, all keys are returned.
data ProjectsServiceAccountsKeysListKeyTypes
    = PSAKLKTKeyTypeUnspecified
      -- ^ @KEY_TYPE_UNSPECIFIED@
      -- Unspecified key type. The presence of this in the message will
      -- immediately result in an error.
    | PSAKLKTUserManaged
      -- ^ @USER_MANAGED@
      -- User-managed keys (managed and rotated by the user).
    | PSAKLKTSystemManaged
      -- ^ @SYSTEM_MANAGED@
      -- System-managed keys (managed and rotated by Google).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsServiceAccountsKeysListKeyTypes

instance FromHttpApiData ProjectsServiceAccountsKeysListKeyTypes where
    parseQueryParam = \case
        "KEY_TYPE_UNSPECIFIED" -> Right PSAKLKTKeyTypeUnspecified
        "USER_MANAGED" -> Right PSAKLKTUserManaged
        "SYSTEM_MANAGED" -> Right PSAKLKTSystemManaged
        x -> Left ("Unable to parse ProjectsServiceAccountsKeysListKeyTypes from: " <> x)

instance ToHttpApiData ProjectsServiceAccountsKeysListKeyTypes where
    toQueryParam = \case
        PSAKLKTKeyTypeUnspecified -> "KEY_TYPE_UNSPECIFIED"
        PSAKLKTUserManaged -> "USER_MANAGED"
        PSAKLKTSystemManaged -> "SYSTEM_MANAGED"

instance FromJSON ProjectsServiceAccountsKeysListKeyTypes where
    parseJSON = parseJSONText "ProjectsServiceAccountsKeysListKeyTypes"

instance ToJSON ProjectsServiceAccountsKeysListKeyTypes where
    toJSON = toJSONText

-- | Which type of key and algorithm to use for the key. The default is
-- currently a 2K RSA key. However this may change in the future.
data CreateServiceAccountKeyRequestKeyAlgorithm
    = CSAKRKAKeyAlgUnspecified
      -- ^ @KEY_ALG_UNSPECIFIED@
      -- An unspecified key algorithm.
    | CSAKRKAKeyAlgRsa1024
      -- ^ @KEY_ALG_RSA_1024@
      -- 1k RSA Key.
    | CSAKRKAKeyAlgRsa2048
      -- ^ @KEY_ALG_RSA_2048@
      -- 2k RSA Key.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreateServiceAccountKeyRequestKeyAlgorithm

instance FromHttpApiData CreateServiceAccountKeyRequestKeyAlgorithm where
    parseQueryParam = \case
        "KEY_ALG_UNSPECIFIED" -> Right CSAKRKAKeyAlgUnspecified
        "KEY_ALG_RSA_1024" -> Right CSAKRKAKeyAlgRsa1024
        "KEY_ALG_RSA_2048" -> Right CSAKRKAKeyAlgRsa2048
        x -> Left ("Unable to parse CreateServiceAccountKeyRequestKeyAlgorithm from: " <> x)

instance ToHttpApiData CreateServiceAccountKeyRequestKeyAlgorithm where
    toQueryParam = \case
        CSAKRKAKeyAlgUnspecified -> "KEY_ALG_UNSPECIFIED"
        CSAKRKAKeyAlgRsa1024 -> "KEY_ALG_RSA_1024"
        CSAKRKAKeyAlgRsa2048 -> "KEY_ALG_RSA_2048"

instance FromJSON CreateServiceAccountKeyRequestKeyAlgorithm where
    parseJSON = parseJSONText "CreateServiceAccountKeyRequestKeyAlgorithm"

instance ToJSON CreateServiceAccountKeyRequestKeyAlgorithm where
    toJSON = toJSONText

-- | The current custom role support level.
data PermissionCustomRolesSupportLevel
    = Supported
      -- ^ @SUPPORTED@
      -- Default state. Permission is fully supported for custom role use.
    | Testing
      -- ^ @TESTING@
      -- Permission is being tested to check custom role compatibility.
    | NotSupported
      -- ^ @NOT_SUPPORTED@
      -- Permission is not supported for custom role use.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PermissionCustomRolesSupportLevel

instance FromHttpApiData PermissionCustomRolesSupportLevel where
    parseQueryParam = \case
        "SUPPORTED" -> Right Supported
        "TESTING" -> Right Testing
        "NOT_SUPPORTED" -> Right NotSupported
        x -> Left ("Unable to parse PermissionCustomRolesSupportLevel from: " <> x)

instance ToHttpApiData PermissionCustomRolesSupportLevel where
    toQueryParam = \case
        Supported -> "SUPPORTED"
        Testing -> "TESTING"
        NotSupported -> "NOT_SUPPORTED"

instance FromJSON PermissionCustomRolesSupportLevel where
    parseJSON = parseJSONText "PermissionCustomRolesSupportLevel"

instance ToJSON PermissionCustomRolesSupportLevel where
    toJSON = toJSONText

-- | The output format for the private key. Only provided in
-- \`CreateServiceAccountKey\` responses, not in \`GetServiceAccountKey\`
-- or \`ListServiceAccountKey\` responses. Google never exposes
-- system-managed private keys, and never retains user-managed private
-- keys.
data ServiceAccountKeyPrivateKeyType
    = SAKPKTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Unspecified. Equivalent to \`TYPE_GOOGLE_CREDENTIALS_FILE\`.
    | SAKPKTTypePKCS12File
      -- ^ @TYPE_PKCS12_FILE@
      -- PKCS12 format. The password for the PKCS12 file is \`notasecret\`. For
      -- more information, see https:\/\/tools.ietf.org\/html\/rfc7292.
    | SAKPKTTypeGoogleCredentialsFile
      -- ^ @TYPE_GOOGLE_CREDENTIALS_FILE@
      -- Google Credentials File format.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ServiceAccountKeyPrivateKeyType

instance FromHttpApiData ServiceAccountKeyPrivateKeyType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right SAKPKTTypeUnspecified
        "TYPE_PKCS12_FILE" -> Right SAKPKTTypePKCS12File
        "TYPE_GOOGLE_CREDENTIALS_FILE" -> Right SAKPKTTypeGoogleCredentialsFile
        x -> Left ("Unable to parse ServiceAccountKeyPrivateKeyType from: " <> x)

instance ToHttpApiData ServiceAccountKeyPrivateKeyType where
    toQueryParam = \case
        SAKPKTTypeUnspecified -> "TYPE_UNSPECIFIED"
        SAKPKTTypePKCS12File -> "TYPE_PKCS12_FILE"
        SAKPKTTypeGoogleCredentialsFile -> "TYPE_GOOGLE_CREDENTIALS_FILE"

instance FromJSON ServiceAccountKeyPrivateKeyType where
    parseJSON = parseJSONText "ServiceAccountKeyPrivateKeyType"

instance ToJSON ServiceAccountKeyPrivateKeyType where
    toJSON = toJSONText
