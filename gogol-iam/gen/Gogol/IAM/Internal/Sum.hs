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
-- Module      : Gogol.IAM.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.IAM.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AuditLogConfig_LogType
    AuditLogConfig_LogType
      ( AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        AuditLogConfig_LogType_ADMINREAD,
        AuditLogConfig_LogType_DATAWRITE,
        AuditLogConfig_LogType_DATAREAD,
        ..
      ),

    -- * BindingDelta_Action
    BindingDelta_Action
      ( BindingDelta_Action_ACTIONUNSPECIFIED,
        BindingDelta_Action_Add,
        BindingDelta_Action_Remove,
        ..
      ),

    -- * CreateServiceAccountKeyRequest_KeyAlgorithm
    CreateServiceAccountKeyRequest_KeyAlgorithm
      ( CreateServiceAccountKeyRequest_KeyAlgorithm_KEYALGUNSPECIFIED,
        CreateServiceAccountKeyRequest_KeyAlgorithm_KEY_ALG_RSA_1024,
        CreateServiceAccountKeyRequest_KeyAlgorithm_KEY_ALG_RSA_2048,
        ..
      ),

    -- * CreateServiceAccountKeyRequest_PrivateKeyType
    CreateServiceAccountKeyRequest_PrivateKeyType
      ( CreateServiceAccountKeyRequest_PrivateKeyType_TYPEUNSPECIFIED,
        CreateServiceAccountKeyRequest_PrivateKeyType_TYPEPKCS12FILE,
        CreateServiceAccountKeyRequest_PrivateKeyType_TYPEGOOGLECREDENTIALSFILE,
        ..
      ),

    -- * LintResult_Level
    LintResult_Level
      ( LintResult_Level_LEVELUNSPECIFIED,
        LintResult_Level_Condition,
        ..
      ),

    -- * LintResult_Severity
    LintResult_Severity
      ( LintResult_Severity_SEVERITYUNSPECIFIED,
        LintResult_Severity_Error',
        LintResult_Severity_Warning,
        LintResult_Severity_Notice,
        LintResult_Severity_Info,
        LintResult_Severity_Deprecated,
        ..
      ),

    -- * Permission_CustomRolesSupportLevel
    Permission_CustomRolesSupportLevel
      ( Permission_CustomRolesSupportLevel_Supported,
        Permission_CustomRolesSupportLevel_Testing,
        Permission_CustomRolesSupportLevel_NOTSUPPORTED,
        ..
      ),

    -- * Permission_Stage
    Permission_Stage
      ( Permission_Stage_Alpha,
        Permission_Stage_Beta,
        Permission_Stage_GA,
        Permission_Stage_Deprecated,
        ..
      ),

    -- * QueryGrantableRolesRequest_View
    QueryGrantableRolesRequest_View
      ( QueryGrantableRolesRequest_View_Basic,
        QueryGrantableRolesRequest_View_Full,
        ..
      ),

    -- * Role_Stage
    Role_Stage
      ( Role_Stage_Alpha,
        Role_Stage_Beta,
        Role_Stage_GA,
        Role_Stage_Deprecated,
        Role_Stage_Disabled,
        Role_Stage_Eap,
        ..
      ),

    -- * ServiceAccountKey_KeyAlgorithm
    ServiceAccountKey_KeyAlgorithm
      ( ServiceAccountKey_KeyAlgorithm_KEYALGUNSPECIFIED,
        ServiceAccountKey_KeyAlgorithm_KEY_ALG_RSA_1024,
        ServiceAccountKey_KeyAlgorithm_KEY_ALG_RSA_2048,
        ..
      ),

    -- * ServiceAccountKey_KeyOrigin
    ServiceAccountKey_KeyOrigin
      ( ServiceAccountKey_KeyOrigin_ORIGINUNSPECIFIED,
        ServiceAccountKey_KeyOrigin_USERPROVIDED,
        ServiceAccountKey_KeyOrigin_GOOGLEPROVIDED,
        ..
      ),

    -- * ServiceAccountKey_KeyType
    ServiceAccountKey_KeyType
      ( ServiceAccountKey_KeyType_KEYTYPEUNSPECIFIED,
        ServiceAccountKey_KeyType_USERMANAGED,
        ServiceAccountKey_KeyType_SYSTEMMANAGED,
        ..
      ),

    -- * ServiceAccountKey_PrivateKeyType
    ServiceAccountKey_PrivateKeyType
      ( ServiceAccountKey_PrivateKeyType_TYPEUNSPECIFIED,
        ServiceAccountKey_PrivateKeyType_TYPEPKCS12FILE,
        ServiceAccountKey_PrivateKeyType_TYPEGOOGLECREDENTIALSFILE,
        ..
      ),

    -- * WorkloadIdentityPool_State
    WorkloadIdentityPool_State
      ( WorkloadIdentityPool_State_STATEUNSPECIFIED,
        WorkloadIdentityPool_State_Active,
        WorkloadIdentityPool_State_Deleted,
        ..
      ),

    -- * WorkloadIdentityPoolProvider_State
    WorkloadIdentityPoolProvider_State
      ( WorkloadIdentityPoolProvider_State_STATEUNSPECIFIED,
        WorkloadIdentityPoolProvider_State_Active,
        WorkloadIdentityPoolProvider_State_Deleted,
        ..
      ),

    -- * OrganizationsRolesListView
    OrganizationsRolesListView
      ( OrganizationsRolesListView_Basic,
        OrganizationsRolesListView_Full,
        ..
      ),

    -- * ProjectsRolesListView
    ProjectsRolesListView
      ( ProjectsRolesListView_Basic,
        ProjectsRolesListView_Full,
        ..
      ),

    -- * ProjectsServiceAccountsKeysGetPublicKeyType
    ProjectsServiceAccountsKeysGetPublicKeyType
      ( ProjectsServiceAccountsKeysGetPublicKeyType_TYPENONE,
        ProjectsServiceAccountsKeysGetPublicKeyType_TYPEX509PEMFILE,
        ProjectsServiceAccountsKeysGetPublicKeyType_TYPERAWPUBLICKEY,
        ..
      ),

    -- * ProjectsServiceAccountsKeysListKeyTypes
    ProjectsServiceAccountsKeysListKeyTypes
      ( ProjectsServiceAccountsKeysListKeyTypes_KEYTYPEUNSPECIFIED,
        ProjectsServiceAccountsKeysListKeyTypes_USERMANAGED,
        ProjectsServiceAccountsKeysListKeyTypes_SYSTEMMANAGED,
        ..
      ),

    -- * RolesListView
    RolesListView
      ( RolesListView_Basic,
        RolesListView_Full,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

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

-- | The log type that this config enables.
newtype AuditLogConfig_LogType = AuditLogConfig_LogType {fromAuditLogConfig_LogType :: Core.Text}
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

-- | Default case. Should never be this.
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern AuditLogConfig_LogType_ADMINREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_ADMINREAD = AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern AuditLogConfig_LogType_DATAWRITE :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAWRITE = AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern AuditLogConfig_LogType_DATAREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAREAD = AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  AuditLogConfig_LogType_ADMINREAD,
  AuditLogConfig_LogType_DATAWRITE,
  AuditLogConfig_LogType_DATAREAD,
  AuditLogConfig_LogType
  #-}

-- | The action that was performed on a Binding. Required
newtype BindingDelta_Action = BindingDelta_Action {fromBindingDelta_Action :: Core.Text}
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

-- | Unspecified.
pattern BindingDelta_Action_ACTIONUNSPECIFIED :: BindingDelta_Action
pattern BindingDelta_Action_ACTIONUNSPECIFIED = BindingDelta_Action "ACTION_UNSPECIFIED"

-- | Addition of a Binding.
pattern BindingDelta_Action_Add :: BindingDelta_Action
pattern BindingDelta_Action_Add = BindingDelta_Action "ADD"

-- | Removal of a Binding.
pattern BindingDelta_Action_Remove :: BindingDelta_Action
pattern BindingDelta_Action_Remove = BindingDelta_Action "REMOVE"

{-# COMPLETE
  BindingDelta_Action_ACTIONUNSPECIFIED,
  BindingDelta_Action_Add,
  BindingDelta_Action_Remove,
  BindingDelta_Action
  #-}

-- | Which type of key and algorithm to use for the key. The default is currently a 2K RSA key. However this may change in the future.
newtype CreateServiceAccountKeyRequest_KeyAlgorithm = CreateServiceAccountKeyRequest_KeyAlgorithm {fromCreateServiceAccountKeyRequest_KeyAlgorithm :: Core.Text}
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

-- | An unspecified key algorithm.
pattern CreateServiceAccountKeyRequest_KeyAlgorithm_KEYALGUNSPECIFIED :: CreateServiceAccountKeyRequest_KeyAlgorithm
pattern CreateServiceAccountKeyRequest_KeyAlgorithm_KEYALGUNSPECIFIED = CreateServiceAccountKeyRequest_KeyAlgorithm "KEY_ALG_UNSPECIFIED"

-- | 1k RSA Key.
pattern CreateServiceAccountKeyRequest_KeyAlgorithm_KEY_ALG_RSA_1024 :: CreateServiceAccountKeyRequest_KeyAlgorithm
pattern CreateServiceAccountKeyRequest_KeyAlgorithm_KEY_ALG_RSA_1024 = CreateServiceAccountKeyRequest_KeyAlgorithm "KEY_ALG_RSA_1024"

-- | 2k RSA Key.
pattern CreateServiceAccountKeyRequest_KeyAlgorithm_KEY_ALG_RSA_2048 :: CreateServiceAccountKeyRequest_KeyAlgorithm
pattern CreateServiceAccountKeyRequest_KeyAlgorithm_KEY_ALG_RSA_2048 = CreateServiceAccountKeyRequest_KeyAlgorithm "KEY_ALG_RSA_2048"

{-# COMPLETE
  CreateServiceAccountKeyRequest_KeyAlgorithm_KEYALGUNSPECIFIED,
  CreateServiceAccountKeyRequest_KeyAlgorithm_KEY_ALG_RSA_1024,
  CreateServiceAccountKeyRequest_KeyAlgorithm_KEY_ALG_RSA_2048,
  CreateServiceAccountKeyRequest_KeyAlgorithm
  #-}

-- | The output format of the private key. The default value is @TYPE_GOOGLE_CREDENTIALS_FILE@, which is the Google Credentials File format.
newtype CreateServiceAccountKeyRequest_PrivateKeyType = CreateServiceAccountKeyRequest_PrivateKeyType {fromCreateServiceAccountKeyRequest_PrivateKeyType :: Core.Text}
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

-- | Unspecified. Equivalent to @TYPE_GOOGLE_CREDENTIALS_FILE@.
pattern CreateServiceAccountKeyRequest_PrivateKeyType_TYPEUNSPECIFIED :: CreateServiceAccountKeyRequest_PrivateKeyType
pattern CreateServiceAccountKeyRequest_PrivateKeyType_TYPEUNSPECIFIED = CreateServiceAccountKeyRequest_PrivateKeyType "TYPE_UNSPECIFIED"

-- | PKCS12 format. The password for the PKCS12 file is @notasecret@. For more information, see https:\/\/tools.ietf.org\/html\/rfc7292.
pattern CreateServiceAccountKeyRequest_PrivateKeyType_TYPEPKCS12FILE :: CreateServiceAccountKeyRequest_PrivateKeyType
pattern CreateServiceAccountKeyRequest_PrivateKeyType_TYPEPKCS12FILE = CreateServiceAccountKeyRequest_PrivateKeyType "TYPE_PKCS12_FILE"

-- | Google Credentials File format.
pattern CreateServiceAccountKeyRequest_PrivateKeyType_TYPEGOOGLECREDENTIALSFILE :: CreateServiceAccountKeyRequest_PrivateKeyType
pattern CreateServiceAccountKeyRequest_PrivateKeyType_TYPEGOOGLECREDENTIALSFILE = CreateServiceAccountKeyRequest_PrivateKeyType "TYPE_GOOGLE_CREDENTIALS_FILE"

{-# COMPLETE
  CreateServiceAccountKeyRequest_PrivateKeyType_TYPEUNSPECIFIED,
  CreateServiceAccountKeyRequest_PrivateKeyType_TYPEPKCS12FILE,
  CreateServiceAccountKeyRequest_PrivateKeyType_TYPEGOOGLECREDENTIALSFILE,
  CreateServiceAccountKeyRequest_PrivateKeyType
  #-}

-- | The validation unit level.
newtype LintResult_Level = LintResult_Level {fromLintResult_Level :: Core.Text}
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

-- | Level is unspecified.
pattern LintResult_Level_LEVELUNSPECIFIED :: LintResult_Level
pattern LintResult_Level_LEVELUNSPECIFIED = LintResult_Level "LEVEL_UNSPECIFIED"

-- | A validation unit which operates on an individual condition within a binding.
pattern LintResult_Level_Condition :: LintResult_Level
pattern LintResult_Level_Condition = LintResult_Level "CONDITION"

{-# COMPLETE
  LintResult_Level_LEVELUNSPECIFIED,
  LintResult_Level_Condition,
  LintResult_Level
  #-}

-- | The validation unit severity.
newtype LintResult_Severity = LintResult_Severity {fromLintResult_Severity :: Core.Text}
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

-- | Severity is unspecified.
pattern LintResult_Severity_SEVERITYUNSPECIFIED :: LintResult_Severity
pattern LintResult_Severity_SEVERITYUNSPECIFIED = LintResult_Severity "SEVERITY_UNSPECIFIED"

-- | A validation unit returns an error only for critical issues. If an attempt is made to set the problematic policy without rectifying the critical issue, it causes the @setPolicy@ operation to fail.
pattern LintResult_Severity_Error' :: LintResult_Severity
pattern LintResult_Severity_Error' = LintResult_Severity "ERROR"

-- | Any issue which is severe enough but does not cause an error. For example, suspicious constructs in the input object will not necessarily fail @setPolicy@, but there is a high likelihood that they won\'t behave as expected during policy evaluation in @checkPolicy@. This includes the following common scenarios: - Unsatisfiable condition: Expired timestamp in date\/time condition. - Ineffective condition: Condition on a pair which is granted unconditionally in another binding of the same policy.
pattern LintResult_Severity_Warning :: LintResult_Severity
pattern LintResult_Severity_Warning = LintResult_Severity "WARNING"

-- | Reserved for the issues that are not severe as @ERROR@\/@WARNING@, but need special handling. For instance, messages about skipped validation units are issued as @NOTICE@.
pattern LintResult_Severity_Notice :: LintResult_Severity
pattern LintResult_Severity_Notice = LintResult_Severity "NOTICE"

-- | Any informative statement which is not severe enough to raise @ERROR@\/@WARNING@\/@NOTICE@, like auto-correction recommendations on the input content. Note that current version of the linter does not utilize @INFO@.
pattern LintResult_Severity_Info :: LintResult_Severity
pattern LintResult_Severity_Info = LintResult_Severity "INFO"

-- | Deprecated severity level.
pattern LintResult_Severity_Deprecated :: LintResult_Severity
pattern LintResult_Severity_Deprecated = LintResult_Severity "DEPRECATED"

{-# COMPLETE
  LintResult_Severity_SEVERITYUNSPECIFIED,
  LintResult_Severity_Error',
  LintResult_Severity_Warning,
  LintResult_Severity_Notice,
  LintResult_Severity_Info,
  LintResult_Severity_Deprecated,
  LintResult_Severity
  #-}

-- | The current custom role support level.
newtype Permission_CustomRolesSupportLevel = Permission_CustomRolesSupportLevel {fromPermission_CustomRolesSupportLevel :: Core.Text}
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

-- | Default state. Permission is fully supported for custom role use.
pattern Permission_CustomRolesSupportLevel_Supported :: Permission_CustomRolesSupportLevel
pattern Permission_CustomRolesSupportLevel_Supported = Permission_CustomRolesSupportLevel "SUPPORTED"

-- | Permission is being tested to check custom role compatibility.
pattern Permission_CustomRolesSupportLevel_Testing :: Permission_CustomRolesSupportLevel
pattern Permission_CustomRolesSupportLevel_Testing = Permission_CustomRolesSupportLevel "TESTING"

-- | Permission is not supported for custom role use.
pattern Permission_CustomRolesSupportLevel_NOTSUPPORTED :: Permission_CustomRolesSupportLevel
pattern Permission_CustomRolesSupportLevel_NOTSUPPORTED = Permission_CustomRolesSupportLevel "NOT_SUPPORTED"

{-# COMPLETE
  Permission_CustomRolesSupportLevel_Supported,
  Permission_CustomRolesSupportLevel_Testing,
  Permission_CustomRolesSupportLevel_NOTSUPPORTED,
  Permission_CustomRolesSupportLevel
  #-}

-- | The current launch stage of the permission.
newtype Permission_Stage = Permission_Stage {fromPermission_Stage :: Core.Text}
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

-- | The permission is currently in an alpha phase.
pattern Permission_Stage_Alpha :: Permission_Stage
pattern Permission_Stage_Alpha = Permission_Stage "ALPHA"

-- | The permission is currently in a beta phase.
pattern Permission_Stage_Beta :: Permission_Stage
pattern Permission_Stage_Beta = Permission_Stage "BETA"

-- | The permission is generally available.
pattern Permission_Stage_GA :: Permission_Stage
pattern Permission_Stage_GA = Permission_Stage "GA"

-- | The permission is being deprecated.
pattern Permission_Stage_Deprecated :: Permission_Stage
pattern Permission_Stage_Deprecated = Permission_Stage "DEPRECATED"

{-# COMPLETE
  Permission_Stage_Alpha,
  Permission_Stage_Beta,
  Permission_Stage_GA,
  Permission_Stage_Deprecated,
  Permission_Stage
  #-}

newtype QueryGrantableRolesRequest_View = QueryGrantableRolesRequest_View {fromQueryGrantableRolesRequest_View :: Core.Text}
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

-- | Omits the @included_permissions@ field. This is the default value.
pattern QueryGrantableRolesRequest_View_Basic :: QueryGrantableRolesRequest_View
pattern QueryGrantableRolesRequest_View_Basic = QueryGrantableRolesRequest_View "BASIC"

-- | Returns all fields.
pattern QueryGrantableRolesRequest_View_Full :: QueryGrantableRolesRequest_View
pattern QueryGrantableRolesRequest_View_Full = QueryGrantableRolesRequest_View "FULL"

{-# COMPLETE
  QueryGrantableRolesRequest_View_Basic,
  QueryGrantableRolesRequest_View_Full,
  QueryGrantableRolesRequest_View
  #-}

-- | The current launch stage of the role. If the @ALPHA@ launch stage has been selected for a role, the @stage@ field will not be included in the returned definition for the role.
newtype Role_Stage = Role_Stage {fromRole_Stage :: Core.Text}
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

-- | The user has indicated this role is currently in an Alpha phase. If this launch stage is selected, the @stage@ field will not be included when requesting the definition for a given role.
pattern Role_Stage_Alpha :: Role_Stage
pattern Role_Stage_Alpha = Role_Stage "ALPHA"

-- | The user has indicated this role is currently in a Beta phase.
pattern Role_Stage_Beta :: Role_Stage
pattern Role_Stage_Beta = Role_Stage "BETA"

-- | The user has indicated this role is generally available.
pattern Role_Stage_GA :: Role_Stage
pattern Role_Stage_GA = Role_Stage "GA"

-- | The user has indicated this role is being deprecated.
pattern Role_Stage_Deprecated :: Role_Stage
pattern Role_Stage_Deprecated = Role_Stage "DEPRECATED"

-- | This role is disabled and will not contribute permissions to any principals it is granted to in policies.
pattern Role_Stage_Disabled :: Role_Stage
pattern Role_Stage_Disabled = Role_Stage "DISABLED"

-- | The user has indicated this role is currently in an EAP phase.
pattern Role_Stage_Eap :: Role_Stage
pattern Role_Stage_Eap = Role_Stage "EAP"

{-# COMPLETE
  Role_Stage_Alpha,
  Role_Stage_Beta,
  Role_Stage_GA,
  Role_Stage_Deprecated,
  Role_Stage_Disabled,
  Role_Stage_Eap,
  Role_Stage
  #-}

-- | Specifies the algorithm (and possibly key size) for the key.
newtype ServiceAccountKey_KeyAlgorithm = ServiceAccountKey_KeyAlgorithm {fromServiceAccountKey_KeyAlgorithm :: Core.Text}
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

-- | An unspecified key algorithm.
pattern ServiceAccountKey_KeyAlgorithm_KEYALGUNSPECIFIED :: ServiceAccountKey_KeyAlgorithm
pattern ServiceAccountKey_KeyAlgorithm_KEYALGUNSPECIFIED = ServiceAccountKey_KeyAlgorithm "KEY_ALG_UNSPECIFIED"

-- | 1k RSA Key.
pattern ServiceAccountKey_KeyAlgorithm_KEY_ALG_RSA_1024 :: ServiceAccountKey_KeyAlgorithm
pattern ServiceAccountKey_KeyAlgorithm_KEY_ALG_RSA_1024 = ServiceAccountKey_KeyAlgorithm "KEY_ALG_RSA_1024"

-- | 2k RSA Key.
pattern ServiceAccountKey_KeyAlgorithm_KEY_ALG_RSA_2048 :: ServiceAccountKey_KeyAlgorithm
pattern ServiceAccountKey_KeyAlgorithm_KEY_ALG_RSA_2048 = ServiceAccountKey_KeyAlgorithm "KEY_ALG_RSA_2048"

{-# COMPLETE
  ServiceAccountKey_KeyAlgorithm_KEYALGUNSPECIFIED,
  ServiceAccountKey_KeyAlgorithm_KEY_ALG_RSA_1024,
  ServiceAccountKey_KeyAlgorithm_KEY_ALG_RSA_2048,
  ServiceAccountKey_KeyAlgorithm
  #-}

-- | The key origin.
newtype ServiceAccountKey_KeyOrigin = ServiceAccountKey_KeyOrigin {fromServiceAccountKey_KeyOrigin :: Core.Text}
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

-- | Unspecified key origin.
pattern ServiceAccountKey_KeyOrigin_ORIGINUNSPECIFIED :: ServiceAccountKey_KeyOrigin
pattern ServiceAccountKey_KeyOrigin_ORIGINUNSPECIFIED = ServiceAccountKey_KeyOrigin "ORIGIN_UNSPECIFIED"

-- | Key is provided by user.
pattern ServiceAccountKey_KeyOrigin_USERPROVIDED :: ServiceAccountKey_KeyOrigin
pattern ServiceAccountKey_KeyOrigin_USERPROVIDED = ServiceAccountKey_KeyOrigin "USER_PROVIDED"

-- | Key is provided by Google.
pattern ServiceAccountKey_KeyOrigin_GOOGLEPROVIDED :: ServiceAccountKey_KeyOrigin
pattern ServiceAccountKey_KeyOrigin_GOOGLEPROVIDED = ServiceAccountKey_KeyOrigin "GOOGLE_PROVIDED"

{-# COMPLETE
  ServiceAccountKey_KeyOrigin_ORIGINUNSPECIFIED,
  ServiceAccountKey_KeyOrigin_USERPROVIDED,
  ServiceAccountKey_KeyOrigin_GOOGLEPROVIDED,
  ServiceAccountKey_KeyOrigin
  #-}

-- | The key type.
newtype ServiceAccountKey_KeyType = ServiceAccountKey_KeyType {fromServiceAccountKey_KeyType :: Core.Text}
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

-- | Unspecified key type. The presence of this in the message will immediately result in an error.
pattern ServiceAccountKey_KeyType_KEYTYPEUNSPECIFIED :: ServiceAccountKey_KeyType
pattern ServiceAccountKey_KeyType_KEYTYPEUNSPECIFIED = ServiceAccountKey_KeyType "KEY_TYPE_UNSPECIFIED"

-- | User-managed keys (managed and rotated by the user).
pattern ServiceAccountKey_KeyType_USERMANAGED :: ServiceAccountKey_KeyType
pattern ServiceAccountKey_KeyType_USERMANAGED = ServiceAccountKey_KeyType "USER_MANAGED"

-- | System-managed keys (managed and rotated by Google).
pattern ServiceAccountKey_KeyType_SYSTEMMANAGED :: ServiceAccountKey_KeyType
pattern ServiceAccountKey_KeyType_SYSTEMMANAGED = ServiceAccountKey_KeyType "SYSTEM_MANAGED"

{-# COMPLETE
  ServiceAccountKey_KeyType_KEYTYPEUNSPECIFIED,
  ServiceAccountKey_KeyType_USERMANAGED,
  ServiceAccountKey_KeyType_SYSTEMMANAGED,
  ServiceAccountKey_KeyType
  #-}

-- | The output format for the private key. Only provided in @CreateServiceAccountKey@ responses, not in @GetServiceAccountKey@ or @ListServiceAccountKey@ responses. Google never exposes system-managed private keys, and never retains user-managed private keys.
newtype ServiceAccountKey_PrivateKeyType = ServiceAccountKey_PrivateKeyType {fromServiceAccountKey_PrivateKeyType :: Core.Text}
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

-- | Unspecified. Equivalent to @TYPE_GOOGLE_CREDENTIALS_FILE@.
pattern ServiceAccountKey_PrivateKeyType_TYPEUNSPECIFIED :: ServiceAccountKey_PrivateKeyType
pattern ServiceAccountKey_PrivateKeyType_TYPEUNSPECIFIED = ServiceAccountKey_PrivateKeyType "TYPE_UNSPECIFIED"

-- | PKCS12 format. The password for the PKCS12 file is @notasecret@. For more information, see https:\/\/tools.ietf.org\/html\/rfc7292.
pattern ServiceAccountKey_PrivateKeyType_TYPEPKCS12FILE :: ServiceAccountKey_PrivateKeyType
pattern ServiceAccountKey_PrivateKeyType_TYPEPKCS12FILE = ServiceAccountKey_PrivateKeyType "TYPE_PKCS12_FILE"

-- | Google Credentials File format.
pattern ServiceAccountKey_PrivateKeyType_TYPEGOOGLECREDENTIALSFILE :: ServiceAccountKey_PrivateKeyType
pattern ServiceAccountKey_PrivateKeyType_TYPEGOOGLECREDENTIALSFILE = ServiceAccountKey_PrivateKeyType "TYPE_GOOGLE_CREDENTIALS_FILE"

{-# COMPLETE
  ServiceAccountKey_PrivateKeyType_TYPEUNSPECIFIED,
  ServiceAccountKey_PrivateKeyType_TYPEPKCS12FILE,
  ServiceAccountKey_PrivateKeyType_TYPEGOOGLECREDENTIALSFILE,
  ServiceAccountKey_PrivateKeyType
  #-}

-- | Output only. The state of the pool.
newtype WorkloadIdentityPool_State = WorkloadIdentityPool_State {fromWorkloadIdentityPool_State :: Core.Text}
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

-- | State unspecified.
pattern WorkloadIdentityPool_State_STATEUNSPECIFIED :: WorkloadIdentityPool_State
pattern WorkloadIdentityPool_State_STATEUNSPECIFIED = WorkloadIdentityPool_State "STATE_UNSPECIFIED"

-- | The pool is active, and may be used in Google Cloud policies.
pattern WorkloadIdentityPool_State_Active :: WorkloadIdentityPool_State
pattern WorkloadIdentityPool_State_Active = WorkloadIdentityPool_State "ACTIVE"

-- | The pool is soft-deleted. Soft-deleted pools are permanently deleted after approximately 30 days. You can restore a soft-deleted pool using UndeleteWorkloadIdentityPool. You cannot reuse the ID of a soft-deleted pool until it is permanently deleted. While a pool is deleted, you cannot use it to exchange tokens, or use existing tokens to access resources. If the pool is undeleted, existing tokens grant access again.
pattern WorkloadIdentityPool_State_Deleted :: WorkloadIdentityPool_State
pattern WorkloadIdentityPool_State_Deleted = WorkloadIdentityPool_State "DELETED"

{-# COMPLETE
  WorkloadIdentityPool_State_STATEUNSPECIFIED,
  WorkloadIdentityPool_State_Active,
  WorkloadIdentityPool_State_Deleted,
  WorkloadIdentityPool_State
  #-}

-- | Output only. The state of the provider.
newtype WorkloadIdentityPoolProvider_State = WorkloadIdentityPoolProvider_State {fromWorkloadIdentityPoolProvider_State :: Core.Text}
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

-- | State unspecified.
pattern WorkloadIdentityPoolProvider_State_STATEUNSPECIFIED :: WorkloadIdentityPoolProvider_State
pattern WorkloadIdentityPoolProvider_State_STATEUNSPECIFIED = WorkloadIdentityPoolProvider_State "STATE_UNSPECIFIED"

-- | The provider is active, and may be used to validate authentication credentials.
pattern WorkloadIdentityPoolProvider_State_Active :: WorkloadIdentityPoolProvider_State
pattern WorkloadIdentityPoolProvider_State_Active = WorkloadIdentityPoolProvider_State "ACTIVE"

-- | The provider is soft-deleted. Soft-deleted providers are permanently deleted after approximately 30 days. You can restore a soft-deleted provider using UndeleteWorkloadIdentityPoolProvider. You cannot reuse the ID of a soft-deleted provider until it is permanently deleted.
pattern WorkloadIdentityPoolProvider_State_Deleted :: WorkloadIdentityPoolProvider_State
pattern WorkloadIdentityPoolProvider_State_Deleted = WorkloadIdentityPoolProvider_State "DELETED"

{-# COMPLETE
  WorkloadIdentityPoolProvider_State_STATEUNSPECIFIED,
  WorkloadIdentityPoolProvider_State_Active,
  WorkloadIdentityPoolProvider_State_Deleted,
  WorkloadIdentityPoolProvider_State
  #-}

-- | Optional view for the returned Role objects. When @FULL@ is specified, the @includedPermissions@ field is returned, which includes a list of all permissions in the role. The default value is @BASIC@, which does not return the @includedPermissions@ field.
newtype OrganizationsRolesListView = OrganizationsRolesListView {fromOrganizationsRolesListView :: Core.Text}
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

-- | Omits the @included_permissions@ field. This is the default value.
pattern OrganizationsRolesListView_Basic :: OrganizationsRolesListView
pattern OrganizationsRolesListView_Basic = OrganizationsRolesListView "BASIC"

-- | Returns all fields.
pattern OrganizationsRolesListView_Full :: OrganizationsRolesListView
pattern OrganizationsRolesListView_Full = OrganizationsRolesListView "FULL"

{-# COMPLETE
  OrganizationsRolesListView_Basic,
  OrganizationsRolesListView_Full,
  OrganizationsRolesListView
  #-}

-- | Optional view for the returned Role objects. When @FULL@ is specified, the @includedPermissions@ field is returned, which includes a list of all permissions in the role. The default value is @BASIC@, which does not return the @includedPermissions@ field.
newtype ProjectsRolesListView = ProjectsRolesListView {fromProjectsRolesListView :: Core.Text}
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

-- | Omits the @included_permissions@ field. This is the default value.
pattern ProjectsRolesListView_Basic :: ProjectsRolesListView
pattern ProjectsRolesListView_Basic = ProjectsRolesListView "BASIC"

-- | Returns all fields.
pattern ProjectsRolesListView_Full :: ProjectsRolesListView
pattern ProjectsRolesListView_Full = ProjectsRolesListView "FULL"

{-# COMPLETE
  ProjectsRolesListView_Basic,
  ProjectsRolesListView_Full,
  ProjectsRolesListView
  #-}

-- | Optional. The output format of the public key. The default is @TYPE_NONE@, which means that the public key is not returned.
newtype ProjectsServiceAccountsKeysGetPublicKeyType = ProjectsServiceAccountsKeysGetPublicKeyType {fromProjectsServiceAccountsKeysGetPublicKeyType :: Core.Text}
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

-- | Do not return the public key.
pattern ProjectsServiceAccountsKeysGetPublicKeyType_TYPENONE :: ProjectsServiceAccountsKeysGetPublicKeyType
pattern ProjectsServiceAccountsKeysGetPublicKeyType_TYPENONE = ProjectsServiceAccountsKeysGetPublicKeyType "TYPE_NONE"

-- | X509 PEM format.
pattern ProjectsServiceAccountsKeysGetPublicKeyType_TYPEX509PEMFILE :: ProjectsServiceAccountsKeysGetPublicKeyType
pattern ProjectsServiceAccountsKeysGetPublicKeyType_TYPEX509PEMFILE = ProjectsServiceAccountsKeysGetPublicKeyType "TYPE_X509_PEM_FILE"

-- | Raw public key.
pattern ProjectsServiceAccountsKeysGetPublicKeyType_TYPERAWPUBLICKEY :: ProjectsServiceAccountsKeysGetPublicKeyType
pattern ProjectsServiceAccountsKeysGetPublicKeyType_TYPERAWPUBLICKEY = ProjectsServiceAccountsKeysGetPublicKeyType "TYPE_RAW_PUBLIC_KEY"

{-# COMPLETE
  ProjectsServiceAccountsKeysGetPublicKeyType_TYPENONE,
  ProjectsServiceAccountsKeysGetPublicKeyType_TYPEX509PEMFILE,
  ProjectsServiceAccountsKeysGetPublicKeyType_TYPERAWPUBLICKEY,
  ProjectsServiceAccountsKeysGetPublicKeyType
  #-}

-- | Filters the types of keys the user wants to include in the list response. Duplicate key types are not allowed. If no key type is provided, all keys are returned.
newtype ProjectsServiceAccountsKeysListKeyTypes = ProjectsServiceAccountsKeysListKeyTypes {fromProjectsServiceAccountsKeysListKeyTypes :: Core.Text}
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

-- | Unspecified key type. The presence of this in the message will immediately result in an error.
pattern ProjectsServiceAccountsKeysListKeyTypes_KEYTYPEUNSPECIFIED :: ProjectsServiceAccountsKeysListKeyTypes
pattern ProjectsServiceAccountsKeysListKeyTypes_KEYTYPEUNSPECIFIED = ProjectsServiceAccountsKeysListKeyTypes "KEY_TYPE_UNSPECIFIED"

-- | User-managed keys (managed and rotated by the user).
pattern ProjectsServiceAccountsKeysListKeyTypes_USERMANAGED :: ProjectsServiceAccountsKeysListKeyTypes
pattern ProjectsServiceAccountsKeysListKeyTypes_USERMANAGED = ProjectsServiceAccountsKeysListKeyTypes "USER_MANAGED"

-- | System-managed keys (managed and rotated by Google).
pattern ProjectsServiceAccountsKeysListKeyTypes_SYSTEMMANAGED :: ProjectsServiceAccountsKeysListKeyTypes
pattern ProjectsServiceAccountsKeysListKeyTypes_SYSTEMMANAGED = ProjectsServiceAccountsKeysListKeyTypes "SYSTEM_MANAGED"

{-# COMPLETE
  ProjectsServiceAccountsKeysListKeyTypes_KEYTYPEUNSPECIFIED,
  ProjectsServiceAccountsKeysListKeyTypes_USERMANAGED,
  ProjectsServiceAccountsKeysListKeyTypes_SYSTEMMANAGED,
  ProjectsServiceAccountsKeysListKeyTypes
  #-}

-- | Optional view for the returned Role objects. When @FULL@ is specified, the @includedPermissions@ field is returned, which includes a list of all permissions in the role. The default value is @BASIC@, which does not return the @includedPermissions@ field.
newtype RolesListView = RolesListView {fromRolesListView :: Core.Text}
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

-- | Omits the @included_permissions@ field. This is the default value.
pattern RolesListView_Basic :: RolesListView
pattern RolesListView_Basic = RolesListView "BASIC"

-- | Returns all fields.
pattern RolesListView_Full :: RolesListView
pattern RolesListView_Full = RolesListView "FULL"

{-# COMPLETE
  RolesListView_Basic,
  RolesListView_Full,
  RolesListView
  #-}
