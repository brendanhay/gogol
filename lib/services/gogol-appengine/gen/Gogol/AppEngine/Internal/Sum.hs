{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppEngine.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AppEngine.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * ApiConfigHandler_AuthFailAction
    ApiConfigHandler_AuthFailAction
      (
        ApiConfigHandler_AuthFailAction_AUTHFAILACTIONUNSPECIFIED,
        ApiConfigHandler_AuthFailAction_AUTHFAILACTIONREDIRECT,
        ApiConfigHandler_AuthFailAction_AUTHFAILACTIONUNAUTHORIZED,
        ..
      ),

    -- * ApiConfigHandler_Login
    ApiConfigHandler_Login
      (
        ApiConfigHandler_Login_LOGINUNSPECIFIED,
        ApiConfigHandler_Login_LOGINOPTIONAL,
        ApiConfigHandler_Login_LOGINADMIN,
        ApiConfigHandler_Login_LOGINREQUIRED,
        ..
      ),

    -- * ApiConfigHandler_SecurityLevel
    ApiConfigHandler_SecurityLevel
      (
        ApiConfigHandler_SecurityLevel_SECUREUNSPECIFIED,
        ApiConfigHandler_SecurityLevel_SECUREDEFAULT,
        ApiConfigHandler_SecurityLevel_SECURENEVER,
        ApiConfigHandler_SecurityLevel_SECUREOPTIONAL,
        ApiConfigHandler_SecurityLevel_SECUREALWAYS,
        ..
      ),

    -- * Application_DatabaseType
    Application_DatabaseType
      (
        Application_DatabaseType_DATABASETYPEUNSPECIFIED,
        Application_DatabaseType_CLOUDDATASTORE,
        Application_DatabaseType_CLOUDFIRESTORE,
        Application_DatabaseType_CLOUDDATASTORECOMPATIBILITY,
        ..
      ),

    -- * Application_ServingStatus
    Application_ServingStatus
      (
        Application_ServingStatus_Unspecified,
        Application_ServingStatus_Serving,
        Application_ServingStatus_USERDISABLED,
        Application_ServingStatus_SYSTEMDISABLED,
        ..
      ),

    -- * EndpointsApiService_RolloutStrategy
    EndpointsApiService_RolloutStrategy
      (
        EndpointsApiService_RolloutStrategy_UNSPECIFIEDROLLOUTSTRATEGY,
        EndpointsApiService_RolloutStrategy_Fixed,
        EndpointsApiService_RolloutStrategy_Managed,
        ..
      ),

    -- * ErrorHandler_ErrorCode
    ErrorHandler_ErrorCode
      (
        ErrorHandler_ErrorCode_ERRORCODEUNSPECIFIED,
        ErrorHandler_ErrorCode_ERRORCODEDEFAULT,
        ErrorHandler_ErrorCode_ERRORCODEOVERQUOTA,
        ErrorHandler_ErrorCode_ERRORCODEDOSAPIDENIAL,
        ErrorHandler_ErrorCode_ERRORCODETIMEOUT,
        ..
      ),

    -- * FirewallRule_Action
    FirewallRule_Action
      (
        FirewallRule_Action_UNSPECIFIEDACTION,
        FirewallRule_Action_Allow,
        FirewallRule_Action_Deny,
        ..
      ),

    -- * Instance_Availability
    Instance_Availability
      (
        Instance_Availability_Unspecified,
        Instance_Availability_Resident,
        Instance_Availability_Dynamic,
        ..
      ),

    -- * Instance_VmLiveness
    Instance_VmLiveness
      (
        Instance_VmLiveness_LIVENESSSTATEUNSPECIFIED,
        Instance_VmLiveness_Unknown,
        Instance_VmLiveness_Healthy,
        Instance_VmLiveness_Unhealthy,
        Instance_VmLiveness_Draining,
        Instance_VmLiveness_Timeout,
        ..
      ),

    -- * ManagedCertificate_Status
    ManagedCertificate_Status
      (
        ManagedCertificate_Status_MANAGEMENTSTATUSUNSPECIFIED,
        ManagedCertificate_Status_OK,
        ManagedCertificate_Status_Pending,
        ManagedCertificate_Status_FAILEDRETRYINGNOTVISIBLE,
        ManagedCertificate_Status_FAILEDPERMANENT,
        ManagedCertificate_Status_FAILEDRETRYINGCAAFORBIDDEN,
        ManagedCertificate_Status_FAILEDRETRYINGCAACHECKING,
        ..
      ),

    -- * NetworkSettings_IngressTrafficAllowed
    NetworkSettings_IngressTrafficAllowed
      (
        NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDUNSPECIFIED,
        NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDALL,
        NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDINTERNALONLY,
        NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDINTERNALANDLB,
        ..
      ),

    -- * ResourceRecord_Type
    ResourceRecord_Type
      (
        ResourceRecord_Type_RECORDTYPEUNSPECIFIED,
        ResourceRecord_Type_A,
        ResourceRecord_Type_Aaaa,
        ResourceRecord_Type_Cname,
        ..
      ),

    -- * SslSettings_SslManagementType
    SslSettings_SslManagementType
      (
        SslSettings_SslManagementType_SSLMANAGEMENTTYPEUNSPECIFIED,
        SslSettings_SslManagementType_Automatic,
        SslSettings_SslManagementType_Manual,
        ..
      ),

    -- * TrafficSplit_ShardBy
    TrafficSplit_ShardBy
      (
        TrafficSplit_ShardBy_Unspecified,
        TrafficSplit_ShardBy_Cookie,
        TrafficSplit_ShardBy_IP,
        TrafficSplit_ShardBy_Random,
        ..
      ),

    -- * UrlMap_AuthFailAction
    UrlMap_AuthFailAction
      (
        UrlMap_AuthFailAction_AUTHFAILACTIONUNSPECIFIED,
        UrlMap_AuthFailAction_AUTHFAILACTIONREDIRECT,
        UrlMap_AuthFailAction_AUTHFAILACTIONUNAUTHORIZED,
        ..
      ),

    -- * UrlMap_Login
    UrlMap_Login
      (
        UrlMap_Login_LOGINUNSPECIFIED,
        UrlMap_Login_LOGINOPTIONAL,
        UrlMap_Login_LOGINADMIN,
        UrlMap_Login_LOGINREQUIRED,
        ..
      ),

    -- * UrlMap_RedirectHttpResponseCode
    UrlMap_RedirectHttpResponseCode
      (
        UrlMap_RedirectHttpResponseCode_REDIRECTHTTPRESPONSECODEUNSPECIFIED,
        UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_301,
        UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_302,
        UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_303,
        UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_307,
        ..
      ),

    -- * UrlMap_SecurityLevel
    UrlMap_SecurityLevel
      (
        UrlMap_SecurityLevel_SECUREUNSPECIFIED,
        UrlMap_SecurityLevel_SECUREDEFAULT,
        UrlMap_SecurityLevel_SECURENEVER,
        UrlMap_SecurityLevel_SECUREOPTIONAL,
        UrlMap_SecurityLevel_SECUREALWAYS,
        ..
      ),

    -- * Version_InboundServicesItem
    Version_InboundServicesItem
      (
        Version_InboundServicesItem_INBOUNDSERVICEUNSPECIFIED,
        Version_InboundServicesItem_INBOUNDSERVICEMAIL,
        Version_InboundServicesItem_INBOUNDSERVICEMAILBOUNCE,
        Version_InboundServicesItem_INBOUNDSERVICEXMPPERROR,
        Version_InboundServicesItem_INBOUNDSERVICEXMPPMESSAGE,
        Version_InboundServicesItem_INBOUNDSERVICEXMPPSUBSCRIBE,
        Version_InboundServicesItem_INBOUNDSERVICEXMPPPRESENCE,
        Version_InboundServicesItem_INBOUNDSERVICECHANNELPRESENCE,
        Version_InboundServicesItem_INBOUNDSERVICEWARMUP,
        ..
      ),

    -- * Version_ServingStatus
    Version_ServingStatus
      (
        Version_ServingStatus_SERVINGSTATUSUNSPECIFIED,
        Version_ServingStatus_Serving,
        Version_ServingStatus_Stopped,
        ..
      ),

    -- * VpcAccessConnector_EgressSetting
    VpcAccessConnector_EgressSetting
      (
        VpcAccessConnector_EgressSetting_EGRESSSETTINGUNSPECIFIED,
        VpcAccessConnector_EgressSetting_ALLTRAFFIC,
        VpcAccessConnector_EgressSetting_PRIVATEIPRANGES,
        ..
      ),

    -- * AppsAuthorizedCertificatesGetView
    AppsAuthorizedCertificatesGetView
      (
        AppsAuthorizedCertificatesGetView_BASICCERTIFICATE,
        AppsAuthorizedCertificatesGetView_FULLCERTIFICATE,
        ..
      ),

    -- * AppsAuthorizedCertificatesListView
    AppsAuthorizedCertificatesListView
      (
        AppsAuthorizedCertificatesListView_BASICCERTIFICATE,
        AppsAuthorizedCertificatesListView_FULLCERTIFICATE,
        ..
      ),

    -- * AppsDomainMappingsCreateOverrideStrategy
    AppsDomainMappingsCreateOverrideStrategy
      (
        AppsDomainMappingsCreateOverrideStrategy_UNSPECIFIEDDOMAINOVERRIDESTRATEGY,
        AppsDomainMappingsCreateOverrideStrategy_Strict,
        AppsDomainMappingsCreateOverrideStrategy_Override,
        ..
      ),

    -- * AppsServicesVersionsGetView
    AppsServicesVersionsGetView
      (
        AppsServicesVersionsGetView_Basic,
        AppsServicesVersionsGetView_Full,
        ..
      ),

    -- * AppsServicesVersionsListView
    AppsServicesVersionsListView
      (
        AppsServicesVersionsListView_Basic,
        AppsServicesVersionsListView_Full,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Xgafv #-}

-- | Action to take when users access resources that require authentication. Defaults to redirect.
newtype ApiConfigHandler_AuthFailAction = ApiConfigHandler_AuthFailAction { fromApiConfigHandler_AuthFailAction :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified. AUTH/FAIL/ACTION_REDIRECT is assumed.
pattern ApiConfigHandler_AuthFailAction_AUTHFAILACTIONUNSPECIFIED :: ApiConfigHandler_AuthFailAction
pattern ApiConfigHandler_AuthFailAction_AUTHFAILACTIONUNSPECIFIED = ApiConfigHandler_AuthFailAction "AUTH_FAIL_ACTION_UNSPECIFIED"

-- | Redirects user to \"accounts.google.com\". The user is redirected back to the application URL after signing in or creating an account.
pattern ApiConfigHandler_AuthFailAction_AUTHFAILACTIONREDIRECT :: ApiConfigHandler_AuthFailAction
pattern ApiConfigHandler_AuthFailAction_AUTHFAILACTIONREDIRECT = ApiConfigHandler_AuthFailAction "AUTH_FAIL_ACTION_REDIRECT"

-- | Rejects request with a 401 HTTP status code and an error message.
pattern ApiConfigHandler_AuthFailAction_AUTHFAILACTIONUNAUTHORIZED :: ApiConfigHandler_AuthFailAction
pattern ApiConfigHandler_AuthFailAction_AUTHFAILACTIONUNAUTHORIZED = ApiConfigHandler_AuthFailAction "AUTH_FAIL_ACTION_UNAUTHORIZED"

{-# COMPLETE
  ApiConfigHandler_AuthFailAction_AUTHFAILACTIONUNSPECIFIED,
  ApiConfigHandler_AuthFailAction_AUTHFAILACTIONREDIRECT,
  ApiConfigHandler_AuthFailAction_AUTHFAILACTIONUNAUTHORIZED,
  ApiConfigHandler_AuthFailAction #-}

-- | Level of login required to access this resource. Defaults to optional.
newtype ApiConfigHandler_Login = ApiConfigHandler_Login { fromApiConfigHandler_Login :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified. LOGIN_OPTIONAL is assumed.
pattern ApiConfigHandler_Login_LOGINUNSPECIFIED :: ApiConfigHandler_Login
pattern ApiConfigHandler_Login_LOGINUNSPECIFIED = ApiConfigHandler_Login "LOGIN_UNSPECIFIED"

-- | Does not require that the user is signed in.
pattern ApiConfigHandler_Login_LOGINOPTIONAL :: ApiConfigHandler_Login
pattern ApiConfigHandler_Login_LOGINOPTIONAL = ApiConfigHandler_Login "LOGIN_OPTIONAL"

-- | If the user is not signed in, the auth/fail/action is taken. In addition, if the user is not an administrator for the application, they are given an error message regardless of auth/fail/action. If the user is an administrator, the handler proceeds.
pattern ApiConfigHandler_Login_LOGINADMIN :: ApiConfigHandler_Login
pattern ApiConfigHandler_Login_LOGINADMIN = ApiConfigHandler_Login "LOGIN_ADMIN"

-- | If the user has signed in, the handler proceeds normally. Otherwise, the auth/fail/action is taken.
pattern ApiConfigHandler_Login_LOGINREQUIRED :: ApiConfigHandler_Login
pattern ApiConfigHandler_Login_LOGINREQUIRED = ApiConfigHandler_Login "LOGIN_REQUIRED"

{-# COMPLETE
  ApiConfigHandler_Login_LOGINUNSPECIFIED,
  ApiConfigHandler_Login_LOGINOPTIONAL,
  ApiConfigHandler_Login_LOGINADMIN,
  ApiConfigHandler_Login_LOGINREQUIRED,
  ApiConfigHandler_Login #-}

-- | Security (HTTPS) enforcement for this URL.
newtype ApiConfigHandler_SecurityLevel = ApiConfigHandler_SecurityLevel { fromApiConfigHandler_SecurityLevel :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern ApiConfigHandler_SecurityLevel_SECUREUNSPECIFIED :: ApiConfigHandler_SecurityLevel
pattern ApiConfigHandler_SecurityLevel_SECUREUNSPECIFIED = ApiConfigHandler_SecurityLevel "SECURE_UNSPECIFIED"

-- | Both HTTP and HTTPS requests with URLs that match the handler succeed without redirects. The application can examine the request to determine which protocol was used, and respond accordingly.
pattern ApiConfigHandler_SecurityLevel_SECUREDEFAULT :: ApiConfigHandler_SecurityLevel
pattern ApiConfigHandler_SecurityLevel_SECUREDEFAULT = ApiConfigHandler_SecurityLevel "SECURE_DEFAULT"

-- | Requests for a URL that match this handler that use HTTPS are automatically redirected to the HTTP equivalent URL.
pattern ApiConfigHandler_SecurityLevel_SECURENEVER :: ApiConfigHandler_SecurityLevel
pattern ApiConfigHandler_SecurityLevel_SECURENEVER = ApiConfigHandler_SecurityLevel "SECURE_NEVER"

-- | Both HTTP and HTTPS requests with URLs that match the handler succeed without redirects. The application can examine the request to determine which protocol was used and respond accordingly.
pattern ApiConfigHandler_SecurityLevel_SECUREOPTIONAL :: ApiConfigHandler_SecurityLevel
pattern ApiConfigHandler_SecurityLevel_SECUREOPTIONAL = ApiConfigHandler_SecurityLevel "SECURE_OPTIONAL"

-- | Requests for a URL that match this handler that do not use HTTPS are automatically redirected to the HTTPS URL with the same path. Query parameters are reserved for the redirect.
pattern ApiConfigHandler_SecurityLevel_SECUREALWAYS :: ApiConfigHandler_SecurityLevel
pattern ApiConfigHandler_SecurityLevel_SECUREALWAYS = ApiConfigHandler_SecurityLevel "SECURE_ALWAYS"

{-# COMPLETE
  ApiConfigHandler_SecurityLevel_SECUREUNSPECIFIED,
  ApiConfigHandler_SecurityLevel_SECUREDEFAULT,
  ApiConfigHandler_SecurityLevel_SECURENEVER,
  ApiConfigHandler_SecurityLevel_SECUREOPTIONAL,
  ApiConfigHandler_SecurityLevel_SECUREALWAYS,
  ApiConfigHandler_SecurityLevel #-}

-- | The type of the Cloud Firestore or Cloud Datastore database associated with this application.
newtype Application_DatabaseType = Application_DatabaseType { fromApplication_DatabaseType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Database type is unspecified.
pattern Application_DatabaseType_DATABASETYPEUNSPECIFIED :: Application_DatabaseType
pattern Application_DatabaseType_DATABASETYPEUNSPECIFIED = Application_DatabaseType "DATABASE_TYPE_UNSPECIFIED"

-- | Cloud Datastore
pattern Application_DatabaseType_CLOUDDATASTORE :: Application_DatabaseType
pattern Application_DatabaseType_CLOUDDATASTORE = Application_DatabaseType "CLOUD_DATASTORE"

-- | Cloud Firestore Native
pattern Application_DatabaseType_CLOUDFIRESTORE :: Application_DatabaseType
pattern Application_DatabaseType_CLOUDFIRESTORE = Application_DatabaseType "CLOUD_FIRESTORE"

-- | Cloud Firestore in Datastore Mode
pattern Application_DatabaseType_CLOUDDATASTORECOMPATIBILITY :: Application_DatabaseType
pattern Application_DatabaseType_CLOUDDATASTORECOMPATIBILITY = Application_DatabaseType "CLOUD_DATASTORE_COMPATIBILITY"

{-# COMPLETE
  Application_DatabaseType_DATABASETYPEUNSPECIFIED,
  Application_DatabaseType_CLOUDDATASTORE,
  Application_DatabaseType_CLOUDFIRESTORE,
  Application_DatabaseType_CLOUDDATASTORECOMPATIBILITY,
  Application_DatabaseType #-}

-- | Serving status of this application.
newtype Application_ServingStatus = Application_ServingStatus { fromApplication_ServingStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Serving status is unspecified.
pattern Application_ServingStatus_Unspecified :: Application_ServingStatus
pattern Application_ServingStatus_Unspecified = Application_ServingStatus "UNSPECIFIED"

-- | Application is serving.
pattern Application_ServingStatus_Serving :: Application_ServingStatus
pattern Application_ServingStatus_Serving = Application_ServingStatus "SERVING"

-- | Application has been disabled by the user.
pattern Application_ServingStatus_USERDISABLED :: Application_ServingStatus
pattern Application_ServingStatus_USERDISABLED = Application_ServingStatus "USER_DISABLED"

-- | Application has been disabled by the system.
pattern Application_ServingStatus_SYSTEMDISABLED :: Application_ServingStatus
pattern Application_ServingStatus_SYSTEMDISABLED = Application_ServingStatus "SYSTEM_DISABLED"

{-# COMPLETE
  Application_ServingStatus_Unspecified,
  Application_ServingStatus_Serving,
  Application_ServingStatus_USERDISABLED,
  Application_ServingStatus_SYSTEMDISABLED,
  Application_ServingStatus #-}

-- | Endpoints rollout strategy. If FIXED, config/id must be specified. If MANAGED, config/id must be omitted.
newtype EndpointsApiService_RolloutStrategy = EndpointsApiService_RolloutStrategy { fromEndpointsApiService_RolloutStrategy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified. Defaults to FIXED.
pattern EndpointsApiService_RolloutStrategy_UNSPECIFIEDROLLOUTSTRATEGY :: EndpointsApiService_RolloutStrategy
pattern EndpointsApiService_RolloutStrategy_UNSPECIFIEDROLLOUTSTRATEGY = EndpointsApiService_RolloutStrategy "UNSPECIFIED_ROLLOUT_STRATEGY"

-- | Endpoints service configuration ID will be fixed to the configuration ID specified by config_id.
pattern EndpointsApiService_RolloutStrategy_Fixed :: EndpointsApiService_RolloutStrategy
pattern EndpointsApiService_RolloutStrategy_Fixed = EndpointsApiService_RolloutStrategy "FIXED"

-- | Endpoints service configuration ID will be updated with each rollout.
pattern EndpointsApiService_RolloutStrategy_Managed :: EndpointsApiService_RolloutStrategy
pattern EndpointsApiService_RolloutStrategy_Managed = EndpointsApiService_RolloutStrategy "MANAGED"

{-# COMPLETE
  EndpointsApiService_RolloutStrategy_UNSPECIFIEDROLLOUTSTRATEGY,
  EndpointsApiService_RolloutStrategy_Fixed,
  EndpointsApiService_RolloutStrategy_Managed,
  EndpointsApiService_RolloutStrategy #-}

-- | Error condition this handler applies to.
newtype ErrorHandler_ErrorCode = ErrorHandler_ErrorCode { fromErrorHandler_ErrorCode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified. ERROR/CODE/DEFAULT is assumed.
pattern ErrorHandler_ErrorCode_ERRORCODEUNSPECIFIED :: ErrorHandler_ErrorCode
pattern ErrorHandler_ErrorCode_ERRORCODEUNSPECIFIED = ErrorHandler_ErrorCode "ERROR_CODE_UNSPECIFIED"

-- | All other error types.
pattern ErrorHandler_ErrorCode_ERRORCODEDEFAULT :: ErrorHandler_ErrorCode
pattern ErrorHandler_ErrorCode_ERRORCODEDEFAULT = ErrorHandler_ErrorCode "ERROR_CODE_DEFAULT"

-- | Application has exceeded a resource quota.
pattern ErrorHandler_ErrorCode_ERRORCODEOVERQUOTA :: ErrorHandler_ErrorCode
pattern ErrorHandler_ErrorCode_ERRORCODEOVERQUOTA = ErrorHandler_ErrorCode "ERROR_CODE_OVER_QUOTA"

-- | Client blocked by the application\'s Denial of Service protection configuration.
pattern ErrorHandler_ErrorCode_ERRORCODEDOSAPIDENIAL :: ErrorHandler_ErrorCode
pattern ErrorHandler_ErrorCode_ERRORCODEDOSAPIDENIAL = ErrorHandler_ErrorCode "ERROR_CODE_DOS_API_DENIAL"

-- | Deadline reached before the application responds.
pattern ErrorHandler_ErrorCode_ERRORCODETIMEOUT :: ErrorHandler_ErrorCode
pattern ErrorHandler_ErrorCode_ERRORCODETIMEOUT = ErrorHandler_ErrorCode "ERROR_CODE_TIMEOUT"

{-# COMPLETE
  ErrorHandler_ErrorCode_ERRORCODEUNSPECIFIED,
  ErrorHandler_ErrorCode_ERRORCODEDEFAULT,
  ErrorHandler_ErrorCode_ERRORCODEOVERQUOTA,
  ErrorHandler_ErrorCode_ERRORCODEDOSAPIDENIAL,
  ErrorHandler_ErrorCode_ERRORCODETIMEOUT,
  ErrorHandler_ErrorCode #-}

-- | The action to take on matched requests.
newtype FirewallRule_Action = FirewallRule_Action { fromFirewallRule_Action :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FirewallRule_Action_UNSPECIFIEDACTION :: FirewallRule_Action
pattern FirewallRule_Action_UNSPECIFIEDACTION = FirewallRule_Action "UNSPECIFIED_ACTION"

-- | Matching requests are allowed.
pattern FirewallRule_Action_Allow :: FirewallRule_Action
pattern FirewallRule_Action_Allow = FirewallRule_Action "ALLOW"

-- | Matching requests are denied.
pattern FirewallRule_Action_Deny :: FirewallRule_Action
pattern FirewallRule_Action_Deny = FirewallRule_Action "DENY"

{-# COMPLETE
  FirewallRule_Action_UNSPECIFIEDACTION,
  FirewallRule_Action_Allow,
  FirewallRule_Action_Deny,
  FirewallRule_Action #-}

-- | Output only. Availability of the instance.
newtype Instance_Availability = Instance_Availability { fromInstance_Availability :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Instance_Availability_Unspecified :: Instance_Availability
pattern Instance_Availability_Unspecified = Instance_Availability "UNSPECIFIED"

-- | 
pattern Instance_Availability_Resident :: Instance_Availability
pattern Instance_Availability_Resident = Instance_Availability "RESIDENT"

-- | 
pattern Instance_Availability_Dynamic :: Instance_Availability
pattern Instance_Availability_Dynamic = Instance_Availability "DYNAMIC"

{-# COMPLETE
  Instance_Availability_Unspecified,
  Instance_Availability_Resident,
  Instance_Availability_Dynamic,
  Instance_Availability #-}

-- | Output only. The liveness health check of this instance. Only applicable for instances in App Engine flexible environment.
newtype Instance_VmLiveness = Instance_VmLiveness { fromInstance_VmLiveness :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | There is no liveness health check for the instance. Only applicable for instances in App Engine standard environment.
pattern Instance_VmLiveness_LIVENESSSTATEUNSPECIFIED :: Instance_VmLiveness
pattern Instance_VmLiveness_LIVENESSSTATEUNSPECIFIED = Instance_VmLiveness "LIVENESS_STATE_UNSPECIFIED"

-- | The health checking system is aware of the instance but its health is not known at the moment.
pattern Instance_VmLiveness_Unknown :: Instance_VmLiveness
pattern Instance_VmLiveness_Unknown = Instance_VmLiveness "UNKNOWN"

-- | The instance is reachable i.e. a connection to the application health checking endpoint can be established, and conforms to the requirements defined by the health check.
pattern Instance_VmLiveness_Healthy :: Instance_VmLiveness
pattern Instance_VmLiveness_Healthy = Instance_VmLiveness "HEALTHY"

-- | The instance is reachable, but does not conform to the requirements defined by the health check.
pattern Instance_VmLiveness_Unhealthy :: Instance_VmLiveness
pattern Instance_VmLiveness_Unhealthy = Instance_VmLiveness "UNHEALTHY"

-- | The instance is being drained. The existing connections to the instance have time to complete, but the new ones are being refused.
pattern Instance_VmLiveness_Draining :: Instance_VmLiveness
pattern Instance_VmLiveness_Draining = Instance_VmLiveness "DRAINING"

-- | The instance is unreachable i.e. a connection to the application health checking endpoint cannot be established, or the server does not respond within the specified timeout.
pattern Instance_VmLiveness_Timeout :: Instance_VmLiveness
pattern Instance_VmLiveness_Timeout = Instance_VmLiveness "TIMEOUT"

{-# COMPLETE
  Instance_VmLiveness_LIVENESSSTATEUNSPECIFIED,
  Instance_VmLiveness_Unknown,
  Instance_VmLiveness_Healthy,
  Instance_VmLiveness_Unhealthy,
  Instance_VmLiveness_Draining,
  Instance_VmLiveness_Timeout,
  Instance_VmLiveness #-}

-- | Status of certificate management. Refers to the most recent certificate acquisition or renewal attempt.\@OutputOnly
newtype ManagedCertificate_Status = ManagedCertificate_Status { fromManagedCertificate_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ManagedCertificate_Status_MANAGEMENTSTATUSUNSPECIFIED :: ManagedCertificate_Status
pattern ManagedCertificate_Status_MANAGEMENTSTATUSUNSPECIFIED = ManagedCertificate_Status "MANAGEMENT_STATUS_UNSPECIFIED"

-- | Certificate was successfully obtained and inserted into the serving system.
pattern ManagedCertificate_Status_OK :: ManagedCertificate_Status
pattern ManagedCertificate_Status_OK = ManagedCertificate_Status "OK"

-- | Certificate is under active attempts to acquire or renew.
pattern ManagedCertificate_Status_Pending :: ManagedCertificate_Status
pattern ManagedCertificate_Status_Pending = ManagedCertificate_Status "PENDING"

-- | Most recent renewal failed due to an invalid DNS setup and will be retried. Renewal attempts will continue to fail until the certificate domain\'s DNS configuration is fixed. The last successfully provisioned certificate may still be serving.
pattern ManagedCertificate_Status_FAILEDRETRYINGNOTVISIBLE :: ManagedCertificate_Status
pattern ManagedCertificate_Status_FAILEDRETRYINGNOTVISIBLE = ManagedCertificate_Status "FAILED_RETRYING_NOT_VISIBLE"

-- | All renewal attempts have been exhausted, likely due to an invalid DNS setup.
pattern ManagedCertificate_Status_FAILEDPERMANENT :: ManagedCertificate_Status
pattern ManagedCertificate_Status_FAILEDPERMANENT = ManagedCertificate_Status "FAILED_PERMANENT"

-- | Most recent renewal failed due to an explicit CAA record that does not include one of the in-use CAs (Google CA and Let\'s Encrypt). Renewals will continue to fail until the CAA is reconfigured. The last successfully provisioned certificate may still be serving.
pattern ManagedCertificate_Status_FAILEDRETRYINGCAAFORBIDDEN :: ManagedCertificate_Status
pattern ManagedCertificate_Status_FAILEDRETRYINGCAAFORBIDDEN = ManagedCertificate_Status "FAILED_RETRYING_CAA_FORBIDDEN"

-- | Most recent renewal failed due to a CAA retrieval failure. This means that the domain\'s DNS provider does not properly handle CAA records, failing requests for CAA records when no CAA records are defined. Renewals will continue to fail until the DNS provider is changed or a CAA record is added for the given domain. The last successfully provisioned certificate may still be serving.
pattern ManagedCertificate_Status_FAILEDRETRYINGCAACHECKING :: ManagedCertificate_Status
pattern ManagedCertificate_Status_FAILEDRETRYINGCAACHECKING = ManagedCertificate_Status "FAILED_RETRYING_CAA_CHECKING"

{-# COMPLETE
  ManagedCertificate_Status_MANAGEMENTSTATUSUNSPECIFIED,
  ManagedCertificate_Status_OK,
  ManagedCertificate_Status_Pending,
  ManagedCertificate_Status_FAILEDRETRYINGNOTVISIBLE,
  ManagedCertificate_Status_FAILEDPERMANENT,
  ManagedCertificate_Status_FAILEDRETRYINGCAAFORBIDDEN,
  ManagedCertificate_Status_FAILEDRETRYINGCAACHECKING,
  ManagedCertificate_Status #-}

-- | The ingress settings for version or service.
newtype NetworkSettings_IngressTrafficAllowed = NetworkSettings_IngressTrafficAllowed { fromNetworkSettings_IngressTrafficAllowed :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified
pattern NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDUNSPECIFIED :: NetworkSettings_IngressTrafficAllowed
pattern NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDUNSPECIFIED = NetworkSettings_IngressTrafficAllowed "INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED"

-- | Allow HTTP traffic from public and private sources.
pattern NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDALL :: NetworkSettings_IngressTrafficAllowed
pattern NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDALL = NetworkSettings_IngressTrafficAllowed "INGRESS_TRAFFIC_ALLOWED_ALL"

-- | Allow HTTP traffic from only private VPC sources.
pattern NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDINTERNALONLY :: NetworkSettings_IngressTrafficAllowed
pattern NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDINTERNALONLY = NetworkSettings_IngressTrafficAllowed "INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY"

-- | Allow HTTP traffic from private VPC sources and through load balancers.
pattern NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDINTERNALANDLB :: NetworkSettings_IngressTrafficAllowed
pattern NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDINTERNALANDLB = NetworkSettings_IngressTrafficAllowed "INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB"

{-# COMPLETE
  NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDUNSPECIFIED,
  NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDALL,
  NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDINTERNALONLY,
  NetworkSettings_IngressTrafficAllowed_INGRESSTRAFFICALLOWEDINTERNALANDLB,
  NetworkSettings_IngressTrafficAllowed #-}

-- | Resource record type. Example: AAAA.
newtype ResourceRecord_Type = ResourceRecord_Type { fromResourceRecord_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | An unknown resource record.
pattern ResourceRecord_Type_RECORDTYPEUNSPECIFIED :: ResourceRecord_Type
pattern ResourceRecord_Type_RECORDTYPEUNSPECIFIED = ResourceRecord_Type "RECORD_TYPE_UNSPECIFIED"

-- | An A resource record. Data is an IPv4 address.
pattern ResourceRecord_Type_A :: ResourceRecord_Type
pattern ResourceRecord_Type_A = ResourceRecord_Type "A"

-- | An AAAA resource record. Data is an IPv6 address.
pattern ResourceRecord_Type_Aaaa :: ResourceRecord_Type
pattern ResourceRecord_Type_Aaaa = ResourceRecord_Type "AAAA"

-- | A CNAME resource record. Data is a domain name to be aliased.
pattern ResourceRecord_Type_Cname :: ResourceRecord_Type
pattern ResourceRecord_Type_Cname = ResourceRecord_Type "CNAME"

{-# COMPLETE
  ResourceRecord_Type_RECORDTYPEUNSPECIFIED,
  ResourceRecord_Type_A,
  ResourceRecord_Type_Aaaa,
  ResourceRecord_Type_Cname,
  ResourceRecord_Type #-}

-- | SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisioned. If MANUAL, certificate_id must be manually specified in order to configure SSL for this domain.
newtype SslSettings_SslManagementType = SslSettings_SslManagementType { fromSslSettings_SslManagementType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Defaults to AUTOMATIC.
pattern SslSettings_SslManagementType_SSLMANAGEMENTTYPEUNSPECIFIED :: SslSettings_SslManagementType
pattern SslSettings_SslManagementType_SSLMANAGEMENTTYPEUNSPECIFIED = SslSettings_SslManagementType "SSL_MANAGEMENT_TYPE_UNSPECIFIED"

-- | SSL support for this domain is configured automatically. The mapped SSL certificate will be automatically renewed.
pattern SslSettings_SslManagementType_Automatic :: SslSettings_SslManagementType
pattern SslSettings_SslManagementType_Automatic = SslSettings_SslManagementType "AUTOMATIC"

-- | SSL support for this domain is configured manually by the user. Either the domain has no SSL support or a user-obtained SSL certificate has been explictly mapped to this domain.
pattern SslSettings_SslManagementType_Manual :: SslSettings_SslManagementType
pattern SslSettings_SslManagementType_Manual = SslSettings_SslManagementType "MANUAL"

{-# COMPLETE
  SslSettings_SslManagementType_SSLMANAGEMENTTYPEUNSPECIFIED,
  SslSettings_SslManagementType_Automatic,
  SslSettings_SslManagementType_Manual,
  SslSettings_SslManagementType #-}

-- | Mechanism used to determine which version a request is sent to. The traffic selection algorithm will be stable for either type until allocations are changed.
newtype TrafficSplit_ShardBy = TrafficSplit_ShardBy { fromTrafficSplit_ShardBy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Diversion method unspecified.
pattern TrafficSplit_ShardBy_Unspecified :: TrafficSplit_ShardBy
pattern TrafficSplit_ShardBy_Unspecified = TrafficSplit_ShardBy "UNSPECIFIED"

-- | Diversion based on a specially named cookie, \"GOOGAPPUID.\" The cookie must be set by the application itself or no diversion will occur.
pattern TrafficSplit_ShardBy_Cookie :: TrafficSplit_ShardBy
pattern TrafficSplit_ShardBy_Cookie = TrafficSplit_ShardBy "COOKIE"

-- | Diversion based on applying the modulus operation to a fingerprint of the IP address.
pattern TrafficSplit_ShardBy_IP :: TrafficSplit_ShardBy
pattern TrafficSplit_ShardBy_IP = TrafficSplit_ShardBy "IP"

-- | Diversion based on weighted random assignment. An incoming request is randomly routed to a version in the traffic split, with probability proportional to the version\'s traffic share.
pattern TrafficSplit_ShardBy_Random :: TrafficSplit_ShardBy
pattern TrafficSplit_ShardBy_Random = TrafficSplit_ShardBy "RANDOM"

{-# COMPLETE
  TrafficSplit_ShardBy_Unspecified,
  TrafficSplit_ShardBy_Cookie,
  TrafficSplit_ShardBy_IP,
  TrafficSplit_ShardBy_Random,
  TrafficSplit_ShardBy #-}

-- | Action to take when users access resources that require authentication. Defaults to redirect.
newtype UrlMap_AuthFailAction = UrlMap_AuthFailAction { fromUrlMap_AuthFailAction :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified. AUTH/FAIL/ACTION_REDIRECT is assumed.
pattern UrlMap_AuthFailAction_AUTHFAILACTIONUNSPECIFIED :: UrlMap_AuthFailAction
pattern UrlMap_AuthFailAction_AUTHFAILACTIONUNSPECIFIED = UrlMap_AuthFailAction "AUTH_FAIL_ACTION_UNSPECIFIED"

-- | Redirects user to \"accounts.google.com\". The user is redirected back to the application URL after signing in or creating an account.
pattern UrlMap_AuthFailAction_AUTHFAILACTIONREDIRECT :: UrlMap_AuthFailAction
pattern UrlMap_AuthFailAction_AUTHFAILACTIONREDIRECT = UrlMap_AuthFailAction "AUTH_FAIL_ACTION_REDIRECT"

-- | Rejects request with a 401 HTTP status code and an error message.
pattern UrlMap_AuthFailAction_AUTHFAILACTIONUNAUTHORIZED :: UrlMap_AuthFailAction
pattern UrlMap_AuthFailAction_AUTHFAILACTIONUNAUTHORIZED = UrlMap_AuthFailAction "AUTH_FAIL_ACTION_UNAUTHORIZED"

{-# COMPLETE
  UrlMap_AuthFailAction_AUTHFAILACTIONUNSPECIFIED,
  UrlMap_AuthFailAction_AUTHFAILACTIONREDIRECT,
  UrlMap_AuthFailAction_AUTHFAILACTIONUNAUTHORIZED,
  UrlMap_AuthFailAction #-}

-- | Level of login required to access this resource. Not supported for Node.js in the App Engine standard environment.
newtype UrlMap_Login = UrlMap_Login { fromUrlMap_Login :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified. LOGIN_OPTIONAL is assumed.
pattern UrlMap_Login_LOGINUNSPECIFIED :: UrlMap_Login
pattern UrlMap_Login_LOGINUNSPECIFIED = UrlMap_Login "LOGIN_UNSPECIFIED"

-- | Does not require that the user is signed in.
pattern UrlMap_Login_LOGINOPTIONAL :: UrlMap_Login
pattern UrlMap_Login_LOGINOPTIONAL = UrlMap_Login "LOGIN_OPTIONAL"

-- | If the user is not signed in, the auth/fail/action is taken. In addition, if the user is not an administrator for the application, they are given an error message regardless of auth/fail/action. If the user is an administrator, the handler proceeds.
pattern UrlMap_Login_LOGINADMIN :: UrlMap_Login
pattern UrlMap_Login_LOGINADMIN = UrlMap_Login "LOGIN_ADMIN"

-- | If the user has signed in, the handler proceeds normally. Otherwise, the auth/fail/action is taken.
pattern UrlMap_Login_LOGINREQUIRED :: UrlMap_Login
pattern UrlMap_Login_LOGINREQUIRED = UrlMap_Login "LOGIN_REQUIRED"

{-# COMPLETE
  UrlMap_Login_LOGINUNSPECIFIED,
  UrlMap_Login_LOGINOPTIONAL,
  UrlMap_Login_LOGINADMIN,
  UrlMap_Login_LOGINREQUIRED,
  UrlMap_Login #-}

-- | 30x code to use when performing redirects for the secure field. Defaults to 302.
newtype UrlMap_RedirectHttpResponseCode = UrlMap_RedirectHttpResponseCode { fromUrlMap_RedirectHttpResponseCode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified. 302 is assumed.
pattern UrlMap_RedirectHttpResponseCode_REDIRECTHTTPRESPONSECODEUNSPECIFIED :: UrlMap_RedirectHttpResponseCode
pattern UrlMap_RedirectHttpResponseCode_REDIRECTHTTPRESPONSECODEUNSPECIFIED = UrlMap_RedirectHttpResponseCode "REDIRECT_HTTP_RESPONSE_CODE_UNSPECIFIED"

-- | 301 Moved Permanently code.
pattern UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_301 :: UrlMap_RedirectHttpResponseCode
pattern UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_301 = UrlMap_RedirectHttpResponseCode "REDIRECT_HTTP_RESPONSE_CODE_301"

-- | 302 Moved Temporarily code.
pattern UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_302 :: UrlMap_RedirectHttpResponseCode
pattern UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_302 = UrlMap_RedirectHttpResponseCode "REDIRECT_HTTP_RESPONSE_CODE_302"

-- | 303 See Other code.
pattern UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_303 :: UrlMap_RedirectHttpResponseCode
pattern UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_303 = UrlMap_RedirectHttpResponseCode "REDIRECT_HTTP_RESPONSE_CODE_303"

-- | 307 Temporary Redirect code.
pattern UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_307 :: UrlMap_RedirectHttpResponseCode
pattern UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_307 = UrlMap_RedirectHttpResponseCode "REDIRECT_HTTP_RESPONSE_CODE_307"

{-# COMPLETE
  UrlMap_RedirectHttpResponseCode_REDIRECTHTTPRESPONSECODEUNSPECIFIED,
  UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_301,
  UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_302,
  UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_303,
  UrlMap_RedirectHttpResponseCode_REDIRECT_HTTP_RESPONSE_CODE_307,
  UrlMap_RedirectHttpResponseCode #-}

-- | Security (HTTPS) enforcement for this URL.
newtype UrlMap_SecurityLevel = UrlMap_SecurityLevel { fromUrlMap_SecurityLevel :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern UrlMap_SecurityLevel_SECUREUNSPECIFIED :: UrlMap_SecurityLevel
pattern UrlMap_SecurityLevel_SECUREUNSPECIFIED = UrlMap_SecurityLevel "SECURE_UNSPECIFIED"

-- | Both HTTP and HTTPS requests with URLs that match the handler succeed without redirects. The application can examine the request to determine which protocol was used, and respond accordingly.
pattern UrlMap_SecurityLevel_SECUREDEFAULT :: UrlMap_SecurityLevel
pattern UrlMap_SecurityLevel_SECUREDEFAULT = UrlMap_SecurityLevel "SECURE_DEFAULT"

-- | Requests for a URL that match this handler that use HTTPS are automatically redirected to the HTTP equivalent URL.
pattern UrlMap_SecurityLevel_SECURENEVER :: UrlMap_SecurityLevel
pattern UrlMap_SecurityLevel_SECURENEVER = UrlMap_SecurityLevel "SECURE_NEVER"

-- | Both HTTP and HTTPS requests with URLs that match the handler succeed without redirects. The application can examine the request to determine which protocol was used and respond accordingly.
pattern UrlMap_SecurityLevel_SECUREOPTIONAL :: UrlMap_SecurityLevel
pattern UrlMap_SecurityLevel_SECUREOPTIONAL = UrlMap_SecurityLevel "SECURE_OPTIONAL"

-- | Requests for a URL that match this handler that do not use HTTPS are automatically redirected to the HTTPS URL with the same path. Query parameters are reserved for the redirect.
pattern UrlMap_SecurityLevel_SECUREALWAYS :: UrlMap_SecurityLevel
pattern UrlMap_SecurityLevel_SECUREALWAYS = UrlMap_SecurityLevel "SECURE_ALWAYS"

{-# COMPLETE
  UrlMap_SecurityLevel_SECUREUNSPECIFIED,
  UrlMap_SecurityLevel_SECUREDEFAULT,
  UrlMap_SecurityLevel_SECURENEVER,
  UrlMap_SecurityLevel_SECUREOPTIONAL,
  UrlMap_SecurityLevel_SECUREALWAYS,
  UrlMap_SecurityLevel #-}

newtype Version_InboundServicesItem = Version_InboundServicesItem { fromVersion_InboundServicesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern Version_InboundServicesItem_INBOUNDSERVICEUNSPECIFIED :: Version_InboundServicesItem
pattern Version_InboundServicesItem_INBOUNDSERVICEUNSPECIFIED = Version_InboundServicesItem "INBOUND_SERVICE_UNSPECIFIED"

-- | Allows an application to receive mail.
pattern Version_InboundServicesItem_INBOUNDSERVICEMAIL :: Version_InboundServicesItem
pattern Version_InboundServicesItem_INBOUNDSERVICEMAIL = Version_InboundServicesItem "INBOUND_SERVICE_MAIL"

-- | Allows an application to receive email-bound notifications.
pattern Version_InboundServicesItem_INBOUNDSERVICEMAILBOUNCE :: Version_InboundServicesItem
pattern Version_InboundServicesItem_INBOUNDSERVICEMAILBOUNCE = Version_InboundServicesItem "INBOUND_SERVICE_MAIL_BOUNCE"

-- | Allows an application to receive error stanzas.
pattern Version_InboundServicesItem_INBOUNDSERVICEXMPPERROR :: Version_InboundServicesItem
pattern Version_InboundServicesItem_INBOUNDSERVICEXMPPERROR = Version_InboundServicesItem "INBOUND_SERVICE_XMPP_ERROR"

-- | Allows an application to receive instant messages.
pattern Version_InboundServicesItem_INBOUNDSERVICEXMPPMESSAGE :: Version_InboundServicesItem
pattern Version_InboundServicesItem_INBOUNDSERVICEXMPPMESSAGE = Version_InboundServicesItem "INBOUND_SERVICE_XMPP_MESSAGE"

-- | Allows an application to receive user subscription POSTs.
pattern Version_InboundServicesItem_INBOUNDSERVICEXMPPSUBSCRIBE :: Version_InboundServicesItem
pattern Version_InboundServicesItem_INBOUNDSERVICEXMPPSUBSCRIBE = Version_InboundServicesItem "INBOUND_SERVICE_XMPP_SUBSCRIBE"

-- | Allows an application to receive a user\'s chat presence.
pattern Version_InboundServicesItem_INBOUNDSERVICEXMPPPRESENCE :: Version_InboundServicesItem
pattern Version_InboundServicesItem_INBOUNDSERVICEXMPPPRESENCE = Version_InboundServicesItem "INBOUND_SERVICE_XMPP_PRESENCE"

-- | Registers an application for notifications when a client connects or disconnects from a channel.
pattern Version_InboundServicesItem_INBOUNDSERVICECHANNELPRESENCE :: Version_InboundServicesItem
pattern Version_InboundServicesItem_INBOUNDSERVICECHANNELPRESENCE = Version_InboundServicesItem "INBOUND_SERVICE_CHANNEL_PRESENCE"

-- | Enables warmup requests.
pattern Version_InboundServicesItem_INBOUNDSERVICEWARMUP :: Version_InboundServicesItem
pattern Version_InboundServicesItem_INBOUNDSERVICEWARMUP = Version_InboundServicesItem "INBOUND_SERVICE_WARMUP"

{-# COMPLETE
  Version_InboundServicesItem_INBOUNDSERVICEUNSPECIFIED,
  Version_InboundServicesItem_INBOUNDSERVICEMAIL,
  Version_InboundServicesItem_INBOUNDSERVICEMAILBOUNCE,
  Version_InboundServicesItem_INBOUNDSERVICEXMPPERROR,
  Version_InboundServicesItem_INBOUNDSERVICEXMPPMESSAGE,
  Version_InboundServicesItem_INBOUNDSERVICEXMPPSUBSCRIBE,
  Version_InboundServicesItem_INBOUNDSERVICEXMPPPRESENCE,
  Version_InboundServicesItem_INBOUNDSERVICECHANNELPRESENCE,
  Version_InboundServicesItem_INBOUNDSERVICEWARMUP,
  Version_InboundServicesItem #-}

-- | Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING/STATUS/UNSPECIFIED is an invalid value. Defaults to SERVING.
newtype Version_ServingStatus = Version_ServingStatus { fromVersion_ServingStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern Version_ServingStatus_SERVINGSTATUSUNSPECIFIED :: Version_ServingStatus
pattern Version_ServingStatus_SERVINGSTATUSUNSPECIFIED = Version_ServingStatus "SERVING_STATUS_UNSPECIFIED"

-- | Currently serving. Instances are created according to the scaling settings of the version.
pattern Version_ServingStatus_Serving :: Version_ServingStatus
pattern Version_ServingStatus_Serving = Version_ServingStatus "SERVING"

-- | Disabled. No instances will be created and the scaling settings are ignored until the state of the version changes to SERVING.
pattern Version_ServingStatus_Stopped :: Version_ServingStatus
pattern Version_ServingStatus_Stopped = Version_ServingStatus "STOPPED"

{-# COMPLETE
  Version_ServingStatus_SERVINGSTATUSUNSPECIFIED,
  Version_ServingStatus_Serving,
  Version_ServingStatus_Stopped,
  Version_ServingStatus #-}

-- | The egress setting for the connector, controlling what traffic is diverted through it.
newtype VpcAccessConnector_EgressSetting = VpcAccessConnector_EgressSetting { fromVpcAccessConnector_EgressSetting :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern VpcAccessConnector_EgressSetting_EGRESSSETTINGUNSPECIFIED :: VpcAccessConnector_EgressSetting
pattern VpcAccessConnector_EgressSetting_EGRESSSETTINGUNSPECIFIED = VpcAccessConnector_EgressSetting "EGRESS_SETTING_UNSPECIFIED"

-- | Force the use of VPC Access for all egress traffic from the function.
pattern VpcAccessConnector_EgressSetting_ALLTRAFFIC :: VpcAccessConnector_EgressSetting
pattern VpcAccessConnector_EgressSetting_ALLTRAFFIC = VpcAccessConnector_EgressSetting "ALL_TRAFFIC"

-- | Use the VPC Access Connector for private IP space from RFC1918.
pattern VpcAccessConnector_EgressSetting_PRIVATEIPRANGES :: VpcAccessConnector_EgressSetting
pattern VpcAccessConnector_EgressSetting_PRIVATEIPRANGES = VpcAccessConnector_EgressSetting "PRIVATE_IP_RANGES"

{-# COMPLETE
  VpcAccessConnector_EgressSetting_EGRESSSETTINGUNSPECIFIED,
  VpcAccessConnector_EgressSetting_ALLTRAFFIC,
  VpcAccessConnector_EgressSetting_PRIVATEIPRANGES,
  VpcAccessConnector_EgressSetting #-}

-- | Controls the set of fields returned in the GET response.
newtype AppsAuthorizedCertificatesGetView = AppsAuthorizedCertificatesGetView { fromAppsAuthorizedCertificatesGetView :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Basic certificate information, including applicable domains and expiration date.
pattern AppsAuthorizedCertificatesGetView_BASICCERTIFICATE :: AppsAuthorizedCertificatesGetView
pattern AppsAuthorizedCertificatesGetView_BASICCERTIFICATE = AppsAuthorizedCertificatesGetView "BASIC_CERTIFICATE"

-- | The information from BASIC_CERTIFICATE, plus detailed information on the domain mappings that have this certificate mapped.
pattern AppsAuthorizedCertificatesGetView_FULLCERTIFICATE :: AppsAuthorizedCertificatesGetView
pattern AppsAuthorizedCertificatesGetView_FULLCERTIFICATE = AppsAuthorizedCertificatesGetView "FULL_CERTIFICATE"

{-# COMPLETE
  AppsAuthorizedCertificatesGetView_BASICCERTIFICATE,
  AppsAuthorizedCertificatesGetView_FULLCERTIFICATE,
  AppsAuthorizedCertificatesGetView #-}

-- | Controls the set of fields returned in the LIST response.
newtype AppsAuthorizedCertificatesListView = AppsAuthorizedCertificatesListView { fromAppsAuthorizedCertificatesListView :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Basic certificate information, including applicable domains and expiration date.
pattern AppsAuthorizedCertificatesListView_BASICCERTIFICATE :: AppsAuthorizedCertificatesListView
pattern AppsAuthorizedCertificatesListView_BASICCERTIFICATE = AppsAuthorizedCertificatesListView "BASIC_CERTIFICATE"

-- | The information from BASIC_CERTIFICATE, plus detailed information on the domain mappings that have this certificate mapped.
pattern AppsAuthorizedCertificatesListView_FULLCERTIFICATE :: AppsAuthorizedCertificatesListView
pattern AppsAuthorizedCertificatesListView_FULLCERTIFICATE = AppsAuthorizedCertificatesListView "FULL_CERTIFICATE"

{-# COMPLETE
  AppsAuthorizedCertificatesListView_BASICCERTIFICATE,
  AppsAuthorizedCertificatesListView_FULLCERTIFICATE,
  AppsAuthorizedCertificatesListView #-}

-- | Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
newtype AppsDomainMappingsCreateOverrideStrategy = AppsDomainMappingsCreateOverrideStrategy { fromAppsDomainMappingsCreateOverrideStrategy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Strategy unspecified. Defaults to STRICT.
pattern AppsDomainMappingsCreateOverrideStrategy_UNSPECIFIEDDOMAINOVERRIDESTRATEGY :: AppsDomainMappingsCreateOverrideStrategy
pattern AppsDomainMappingsCreateOverrideStrategy_UNSPECIFIEDDOMAINOVERRIDESTRATEGY = AppsDomainMappingsCreateOverrideStrategy "UNSPECIFIED_DOMAIN_OVERRIDE_STRATEGY"

-- | Overrides not allowed. If a mapping already exists for the specified domain, the request will return an ALREADY_EXISTS (409).
pattern AppsDomainMappingsCreateOverrideStrategy_Strict :: AppsDomainMappingsCreateOverrideStrategy
pattern AppsDomainMappingsCreateOverrideStrategy_Strict = AppsDomainMappingsCreateOverrideStrategy "STRICT"

-- | Overrides allowed. If a mapping already exists for the specified domain, the request will overwrite it. Note that this might stop another Google product from serving. For example, if the domain is mapped to another App Engine application, that app will no longer serve from that domain.
pattern AppsDomainMappingsCreateOverrideStrategy_Override :: AppsDomainMappingsCreateOverrideStrategy
pattern AppsDomainMappingsCreateOverrideStrategy_Override = AppsDomainMappingsCreateOverrideStrategy "OVERRIDE"

{-# COMPLETE
  AppsDomainMappingsCreateOverrideStrategy_UNSPECIFIEDDOMAINOVERRIDESTRATEGY,
  AppsDomainMappingsCreateOverrideStrategy_Strict,
  AppsDomainMappingsCreateOverrideStrategy_Override,
  AppsDomainMappingsCreateOverrideStrategy #-}

-- | Controls the set of fields returned in the Get response.
newtype AppsServicesVersionsGetView = AppsServicesVersionsGetView { fromAppsServicesVersionsGetView :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Basic version information including scaling and inbound services, but not detailed deployment information.
pattern AppsServicesVersionsGetView_Basic :: AppsServicesVersionsGetView
pattern AppsServicesVersionsGetView_Basic = AppsServicesVersionsGetView "BASIC"

-- | The information from BASIC, plus detailed information about the deployment. This format is required when creating resources, but is not returned in Get or List by default.
pattern AppsServicesVersionsGetView_Full :: AppsServicesVersionsGetView
pattern AppsServicesVersionsGetView_Full = AppsServicesVersionsGetView "FULL"

{-# COMPLETE
  AppsServicesVersionsGetView_Basic,
  AppsServicesVersionsGetView_Full,
  AppsServicesVersionsGetView #-}

-- | Controls the set of fields returned in the List response.
newtype AppsServicesVersionsListView = AppsServicesVersionsListView { fromAppsServicesVersionsListView :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Basic version information including scaling and inbound services, but not detailed deployment information.
pattern AppsServicesVersionsListView_Basic :: AppsServicesVersionsListView
pattern AppsServicesVersionsListView_Basic = AppsServicesVersionsListView "BASIC"

-- | The information from BASIC, plus detailed information about the deployment. This format is required when creating resources, but is not returned in Get or List by default.
pattern AppsServicesVersionsListView_Full :: AppsServicesVersionsListView
pattern AppsServicesVersionsListView_Full = AppsServicesVersionsListView "FULL"

{-# COMPLETE
  AppsServicesVersionsListView_Basic,
  AppsServicesVersionsListView_Full,
  AppsServicesVersionsListView #-}
