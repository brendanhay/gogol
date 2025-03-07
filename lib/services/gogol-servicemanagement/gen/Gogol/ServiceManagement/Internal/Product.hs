{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.ServiceManagement.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ServiceManagement.Internal.Product
  ( -- * Advice
    Advice (..),
    newAdvice,

    -- * Api
    Api (..),
    newApi,

    -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * AuthProvider
    AuthProvider (..),
    newAuthProvider,

    -- * AuthRequirement
    AuthRequirement (..),
    newAuthRequirement,

    -- * Authentication
    Authentication (..),
    newAuthentication,

    -- * AuthenticationRule
    AuthenticationRule (..),
    newAuthenticationRule,

    -- * Backend
    Backend (..),
    newBackend,

    -- * BackendRule
    BackendRule (..),
    newBackendRule,

    -- * BackendRule_OverridesByRequestProtocol
    BackendRule_OverridesByRequestProtocol (..),
    newBackendRule_OverridesByRequestProtocol,

    -- * Billing
    Billing (..),
    newBilling,

    -- * BillingDestination
    BillingDestination (..),
    newBillingDestination,

    -- * Binding
    Binding (..),
    newBinding,

    -- * ChangeReport
    ChangeReport (..),
    newChangeReport,

    -- * ClientLibrarySettings
    ClientLibrarySettings (..),
    newClientLibrarySettings,

    -- * CommonLanguageSettings
    CommonLanguageSettings (..),
    newCommonLanguageSettings,

    -- * ConfigChange
    ConfigChange (..),
    newConfigChange,

    -- * ConfigFile
    ConfigFile (..),
    newConfigFile,

    -- * ConfigRef
    ConfigRef (..),
    newConfigRef,

    -- * ConfigSource
    ConfigSource (..),
    newConfigSource,

    -- * Context
    Context (..),
    newContext,

    -- * ContextRule
    ContextRule (..),
    newContextRule,

    -- * Control
    Control (..),
    newControl,

    -- * CppSettings
    CppSettings (..),
    newCppSettings,

    -- * CustomError
    CustomError (..),
    newCustomError,

    -- * CustomErrorRule
    CustomErrorRule (..),
    newCustomErrorRule,

    -- * CustomHttpPattern
    CustomHttpPattern (..),
    newCustomHttpPattern,

    -- * DeleteServiceStrategy
    DeleteServiceStrategy (..),
    newDeleteServiceStrategy,

    -- * Diagnostic
    Diagnostic (..),
    newDiagnostic,

    -- * Documentation
    Documentation (..),
    newDocumentation,

    -- * DocumentationRule
    DocumentationRule (..),
    newDocumentationRule,

    -- * DotnetSettings
    DotnetSettings (..),
    newDotnetSettings,

    -- * DotnetSettings_RenamedResources
    DotnetSettings_RenamedResources (..),
    newDotnetSettings_RenamedResources,

    -- * DotnetSettings_RenamedServices
    DotnetSettings_RenamedServices (..),
    newDotnetSettings_RenamedServices,

    -- * EnableServiceResponse
    EnableServiceResponse (..),
    newEnableServiceResponse,

    -- * Endpoint
    Endpoint (..),
    newEndpoint,

    -- * Enum'
    Enum' (..),
    newEnum,

    -- * EnumValue
    EnumValue (..),
    newEnumValue,

    -- * ExperimentalFeatures
    ExperimentalFeatures (..),
    newExperimentalFeatures,

    -- * Expr
    Expr (..),
    newExpr,

    -- * Field
    Field (..),
    newField,

    -- * FieldPolicy
    FieldPolicy (..),
    newFieldPolicy,

    -- * FlowErrorDetails
    FlowErrorDetails (..),
    newFlowErrorDetails,

    -- * GenerateConfigReportRequest
    GenerateConfigReportRequest (..),
    newGenerateConfigReportRequest,

    -- * GenerateConfigReportRequest_NewConfig
    GenerateConfigReportRequest_NewConfig (..),
    newGenerateConfigReportRequest_NewConfig,

    -- * GenerateConfigReportRequest_OldConfig
    GenerateConfigReportRequest_OldConfig (..),
    newGenerateConfigReportRequest_OldConfig,

    -- * GenerateConfigReportResponse
    GenerateConfigReportResponse (..),
    newGenerateConfigReportResponse,

    -- * GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- * GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- * GoSettings
    GoSettings (..),
    newGoSettings,

    -- * GoSettings_RenamedServices
    GoSettings_RenamedServices (..),
    newGoSettings_RenamedServices,

    -- * Http
    Http (..),
    newHttp,

    -- * HttpRule
    HttpRule (..),
    newHttpRule,

    -- * JavaSettings
    JavaSettings (..),
    newJavaSettings,

    -- * JavaSettings_ServiceClassNames
    JavaSettings_ServiceClassNames (..),
    newJavaSettings_ServiceClassNames,

    -- * JwtLocation
    JwtLocation (..),
    newJwtLocation,

    -- * LabelDescriptor
    LabelDescriptor (..),
    newLabelDescriptor,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListServiceConfigsResponse
    ListServiceConfigsResponse (..),
    newListServiceConfigsResponse,

    -- * ListServiceRolloutsResponse
    ListServiceRolloutsResponse (..),
    newListServiceRolloutsResponse,

    -- * ListServicesResponse
    ListServicesResponse (..),
    newListServicesResponse,

    -- * LogDescriptor
    LogDescriptor (..),
    newLogDescriptor,

    -- * Logging
    Logging (..),
    newLogging,

    -- * LoggingDestination
    LoggingDestination (..),
    newLoggingDestination,

    -- * LongRunning
    LongRunning (..),
    newLongRunning,

    -- * ManagedService
    ManagedService (..),
    newManagedService,

    -- * Method
    Method (..),
    newMethod,

    -- * MethodPolicy
    MethodPolicy (..),
    newMethodPolicy,

    -- * MethodSettings
    MethodSettings (..),
    newMethodSettings,

    -- * MetricDescriptor
    MetricDescriptor (..),
    newMetricDescriptor,

    -- * MetricDescriptorMetadata
    MetricDescriptorMetadata (..),
    newMetricDescriptorMetadata,

    -- * MetricRule
    MetricRule (..),
    newMetricRule,

    -- * MetricRule_MetricCosts
    MetricRule_MetricCosts (..),
    newMetricRule_MetricCosts,

    -- * Mixin
    Mixin (..),
    newMixin,

    -- * MonitoredResourceDescriptor
    MonitoredResourceDescriptor (..),
    newMonitoredResourceDescriptor,

    -- * Monitoring
    Monitoring (..),
    newMonitoring,

    -- * MonitoringDestination
    MonitoringDestination (..),
    newMonitoringDestination,

    -- * NodeSettings
    NodeSettings (..),
    newNodeSettings,

    -- * OAuthRequirements
    OAuthRequirements (..),
    newOAuthRequirements,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OperationInfo
    OperationInfo (..),
    newOperationInfo,

    -- * OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- * Option
    Option (..),
    newOption,

    -- * Option_Value
    Option_Value (..),
    newOption_Value,

    -- * Page
    Page (..),
    newPage,

    -- * PhpSettings
    PhpSettings (..),
    newPhpSettings,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * Publishing
    Publishing (..),
    newPublishing,

    -- * PythonSettings
    PythonSettings (..),
    newPythonSettings,

    -- * Quota
    Quota (..),
    newQuota,

    -- * QuotaLimit
    QuotaLimit (..),
    newQuotaLimit,

    -- * QuotaLimit_Values
    QuotaLimit_Values (..),
    newQuotaLimit_Values,

    -- * ResourceReference
    ResourceReference (..),
    newResourceReference,

    -- * Rollout
    Rollout (..),
    newRollout,

    -- * RubySettings
    RubySettings (..),
    newRubySettings,

    -- * SelectiveGapicGeneration
    SelectiveGapicGeneration (..),
    newSelectiveGapicGeneration,

    -- * Service
    Service (..),
    newService,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * SourceContext
    SourceContext (..),
    newSourceContext,

    -- * SourceInfo
    SourceInfo (..),
    newSourceInfo,

    -- * SourceInfo_SourceFilesItem
    SourceInfo_SourceFilesItem (..),
    newSourceInfo_SourceFilesItem,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * Step
    Step (..),
    newStep,

    -- * SubmitConfigSourceRequest
    SubmitConfigSourceRequest (..),
    newSubmitConfigSourceRequest,

    -- * SubmitConfigSourceResponse
    SubmitConfigSourceResponse (..),
    newSubmitConfigSourceResponse,

    -- * SystemParameter
    SystemParameter (..),
    newSystemParameter,

    -- * SystemParameterRule
    SystemParameterRule (..),
    newSystemParameterRule,

    -- * SystemParameters
    SystemParameters (..),
    newSystemParameters,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * TrafficPercentStrategy
    TrafficPercentStrategy (..),
    newTrafficPercentStrategy,

    -- * TrafficPercentStrategy_Percentages
    TrafficPercentStrategy_Percentages (..),
    newTrafficPercentStrategy_Percentages,

    -- * Type
    Type (..),
    newType,

    -- * UndeleteServiceResponse
    UndeleteServiceResponse (..),
    newUndeleteServiceResponse,

    -- * Usage
    Usage (..),
    newUsage,

    -- * UsageRule
    UsageRule (..),
    newUsageRule,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceManagement.Internal.Sum

-- | Generated advice about this change, used for providing more information about how a change will affect the existing service.
--
-- /See:/ 'newAdvice' smart constructor.
newtype Advice = Advice
  { -- | Useful description for why this advice was applied and what actions should be taken to mitigate any implied risks.
    description :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Advice' with the minimum fields required to make a request.
newAdvice ::
  Advice
newAdvice = Advice {description = Core.Nothing}

instance Core.FromJSON Advice where
  parseJSON =
    Core.withObject
      "Advice"
      (\o -> Advice Core.<$> (o Core..:? "description"))

instance Core.ToJSON Advice where
  toJSON Advice {..} =
    Core.object
      (Core.catMaybes [("description" Core..=) Core.<$> description])

-- | Api is a light-weight descriptor for an API Interface. Interfaces are also described as \"protocol buffer services\" in some contexts, such as by the \"service\" keyword in a .proto file, but they are different from API Services, which represent a concrete implementation of an interface as opposed to simply a description of methods and bindings. They are also sometimes simply referred to as \"APIs\" in other contexts, such as the name of this message itself. See https:\/\/cloud.google.com\/apis\/design\/glossary for detailed terminology.
--
-- /See:/ 'newApi' smart constructor.
data Api = Api
  { -- | The methods of this interface, in unspecified order.
    methods :: (Core.Maybe [Method]),
    -- | Included interfaces. See Mixin.
    mixins :: (Core.Maybe [Mixin]),
    -- | The fully qualified name of this interface, including package name followed by the interface\'s simple name.
    name :: (Core.Maybe Core.Text),
    -- | Any metadata attached to the interface.
    options :: (Core.Maybe [Option]),
    -- | Source context for the protocol buffer service represented by this message.
    sourceContext :: (Core.Maybe SourceContext),
    -- | The source syntax of the service.
    syntax :: (Core.Maybe Api_Syntax),
    -- | A version string for this interface. If specified, must have the form @major-version.minor-version@, as in @1.10@. If the minor version is omitted, it defaults to zero. If the entire version field is empty, the major version is derived from the package name, as outlined below. If the field is not empty, the version in the package name will be verified to be consistent with what is provided here. The versioning schema uses <http://semver.org semantic versioning> where the major version number indicates a breaking change and the minor version an additive, non-breaking change. Both version numbers are signals to users what to expect from different versions, and should be carefully chosen based on the product plan. The major version is also reflected in the package name of the interface, which must end in @v@, as in @google.feature.v1@. For major versions 0 and 1, the suffix can be omitted. Zero major versions must only be used for experimental, non-GA interfaces.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Api' with the minimum fields required to make a request.
newApi ::
  Api
newApi =
  Api
    { methods = Core.Nothing,
      mixins = Core.Nothing,
      name = Core.Nothing,
      options = Core.Nothing,
      sourceContext = Core.Nothing,
      syntax = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Api where
  parseJSON =
    Core.withObject
      "Api"
      ( \o ->
          Api
            Core.<$> (o Core..:? "methods")
            Core.<*> (o Core..:? "mixins")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "options")
            Core.<*> (o Core..:? "sourceContext")
            Core.<*> (o Core..:? "syntax")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Api where
  toJSON Api {..} =
    Core.object
      ( Core.catMaybes
          [ ("methods" Core..=) Core.<$> methods,
            ("mixins" Core..=) Core.<$> mixins,
            ("name" Core..=) Core.<$> name,
            ("options" Core..=) Core.<$> options,
            ("sourceContext" Core..=) Core.<$> sourceContext,
            ("syntax" Core..=) Core.<$> syntax,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit/configs\": [ { \"service\": \"allServices\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" }, { \"log/type\": \"ADMIN/READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\" }, { \"log/type\": \"DATA/WRITE\", \"exempted/members\": [ \"user:aliya\@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA/READ, DATA/WRITE and
-- ADMIN/READ logging. It also exempts @jose\@example.com@ from DATA/READ logging, and @aliya\@example.com@ from DATA/WRITE logging.
--
-- /See:/ 'newAuditConfig' smart constructor.
data AuditConfig = AuditConfig
  { -- | The configuration for logging of each type of permission.
    auditLogConfigs :: (Core.Maybe [AuditLogConfig]),
    -- | Specifies a service that will be enabled for audit logging. For example, @storage.googleapis.com@, @cloudsql.googleapis.com@. @allServices@ is a special value that covers all services.
    service :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
newAuditConfig ::
  AuditConfig
newAuditConfig =
  AuditConfig
    { auditLogConfigs = Core.Nothing,
      service = Core.Nothing
    }

instance Core.FromJSON AuditConfig where
  parseJSON =
    Core.withObject
      "AuditConfig"
      ( \o ->
          AuditConfig
            Core.<$> (o Core..:? "auditLogConfigs")
            Core.<*> (o Core..:? "service")
      )

instance Core.ToJSON AuditConfig where
  toJSON AuditConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditLogConfigs" Core..=) Core.<$> auditLogConfigs,
            ("service" Core..=) Core.<$> service
          ]
      )

-- | Provides the configuration for logging a type of permissions. Example: { \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" } ] } This enables \'DATA/READ\' and \'DATA/WRITE\' logging, while exempting jose\@example.com from DATA/READ logging.
--
-- /See:/ 'newAuditLogConfig' smart constructor.
data AuditLogConfig = AuditLogConfig
  { -- | Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
    exemptedMembers :: (Core.Maybe [Core.Text]),
    -- | The log type that this config enables.
    logType :: (Core.Maybe AuditLogConfig_LogType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
newAuditLogConfig ::
  AuditLogConfig
newAuditLogConfig =
  AuditLogConfig
    { exemptedMembers = Core.Nothing,
      logType = Core.Nothing
    }

instance Core.FromJSON AuditLogConfig where
  parseJSON =
    Core.withObject
      "AuditLogConfig"
      ( \o ->
          AuditLogConfig
            Core.<$> (o Core..:? "exemptedMembers")
            Core.<*> (o Core..:? "logType")
      )

instance Core.ToJSON AuditLogConfig where
  toJSON AuditLogConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("exemptedMembers" Core..=) Core.<$> exemptedMembers,
            ("logType" Core..=) Core.<$> logType
          ]
      )

-- | Configuration for an authentication provider, including support for <https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32 JSON Web Token (JWT)>.
--
-- /See:/ 'newAuthProvider' smart constructor.
data AuthProvider = AuthProvider
  { -- | The list of JWT <https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3 audiences>. that are allowed to access. A JWT containing any of these audiences will be accepted. When this setting is absent, JWTs with audiences: - \"https:\/\/[service.name]\/[google.protobuf.Api.name]\" - \"https:\/\/[service.name]\/\" will be accepted. For example, if no audiences are in the setting, LibraryService API will accept JWTs with the following audiences: - https:\/\/library-example.googleapis.com\/google.example.library.v1.LibraryService - https:\/\/library-example.googleapis.com\/ Example: audiences: bookstore/android.apps.googleusercontent.com, bookstore/web.apps.googleusercontent.com
    audiences :: (Core.Maybe Core.Text),
    -- | Redirect URL if JWT token is required but not present or is expired. Implement authorizationUrl of securityDefinitions in OpenAPI spec.
    authorizationUrl :: (Core.Maybe Core.Text),
    -- | The unique identifier of the auth provider. It will be referred to by @AuthRequirement.provider_id@. Example: \"bookstore_auth\".
    id :: (Core.Maybe Core.Text),
    -- | Identifies the principal that issued the JWT. See https:\/\/tools.ietf.org\/html\/draft-ietf-oauth-json-web-token-32#section-4.1.1 Usually a URL or an email address. Example: https:\/\/securetoken.google.com Example: 1234567-compute\@developer.gserviceaccount.com
    issuer :: (Core.Maybe Core.Text),
    -- | URL of the provider\'s public key set to validate signature of the JWT. See <https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderMetadata OpenID Discovery>. Optional if the key set document: - can be retrieved from <https://openid.net/specs/openid-connect-discovery-1_0.html OpenID Discovery> of the issuer. - can be inferred from the email domain of the issuer (e.g. a Google service account). Example: https:\/\/www.googleapis.com\/oauth2\/v1\/certs
    jwksUri :: (Core.Maybe Core.Text),
    -- | Defines the locations to extract the JWT. For now it is only used by the Cloud Endpoints to store the OpenAPI extension [x-google-jwt-locations] (https:\/\/cloud.google.com\/endpoints\/docs\/openapi\/openapi-extensions#x-google-jwt-locations) JWT locations can be one of HTTP headers, URL query parameters or cookies. The rule is that the first match wins. If not specified, default to use following 3 locations: 1) Authorization: Bearer 2) x-goog-iap-jwt-assertion 3) access/token query parameter Default locations can be specified as followings: jwt/locations: - header: Authorization value/prefix: \"Bearer \" - header: x-goog-iap-jwt-assertion - query: access/token
    jwtLocations :: (Core.Maybe [JwtLocation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthProvider' with the minimum fields required to make a request.
newAuthProvider ::
  AuthProvider
newAuthProvider =
  AuthProvider
    { audiences = Core.Nothing,
      authorizationUrl = Core.Nothing,
      id = Core.Nothing,
      issuer = Core.Nothing,
      jwksUri = Core.Nothing,
      jwtLocations = Core.Nothing
    }

instance Core.FromJSON AuthProvider where
  parseJSON =
    Core.withObject
      "AuthProvider"
      ( \o ->
          AuthProvider
            Core.<$> (o Core..:? "audiences")
            Core.<*> (o Core..:? "authorizationUrl")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "issuer")
            Core.<*> (o Core..:? "jwksUri")
            Core.<*> (o Core..:? "jwtLocations")
      )

instance Core.ToJSON AuthProvider where
  toJSON AuthProvider {..} =
    Core.object
      ( Core.catMaybes
          [ ("audiences" Core..=) Core.<$> audiences,
            ("authorizationUrl" Core..=) Core.<$> authorizationUrl,
            ("id" Core..=) Core.<$> id,
            ("issuer" Core..=) Core.<$> issuer,
            ("jwksUri" Core..=) Core.<$> jwksUri,
            ("jwtLocations" Core..=) Core.<$> jwtLocations
          ]
      )

-- | User-defined authentication requirements, including support for <https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32 JSON Web Token (JWT)>.
--
-- /See:/ 'newAuthRequirement' smart constructor.
data AuthRequirement = AuthRequirement
  { -- | NOTE: This will be deprecated soon, once AuthProvider.audiences is implemented and accepted in all the runtime components. The list of JWT <https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3 audiences>. that are allowed to access. A JWT containing any of these audiences will be accepted. When this setting is absent, only JWTs with audience \"https:\/\/Service/name\/API/name\" will be accepted. For example, if no audiences are in the setting, LibraryService API will only accept JWTs with the following audience \"https:\/\/library-example.googleapis.com\/google.example.library.v1.LibraryService\". Example: audiences: bookstore/android.apps.googleusercontent.com, bookstore/web.apps.googleusercontent.com
    audiences :: (Core.Maybe Core.Text),
    -- | id from authentication provider. Example: provider/id: bookstore/auth
    providerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthRequirement' with the minimum fields required to make a request.
newAuthRequirement ::
  AuthRequirement
newAuthRequirement =
  AuthRequirement
    { audiences = Core.Nothing,
      providerId = Core.Nothing
    }

instance Core.FromJSON AuthRequirement where
  parseJSON =
    Core.withObject
      "AuthRequirement"
      ( \o ->
          AuthRequirement
            Core.<$> (o Core..:? "audiences")
            Core.<*> (o Core..:? "providerId")
      )

instance Core.ToJSON AuthRequirement where
  toJSON AuthRequirement {..} =
    Core.object
      ( Core.catMaybes
          [ ("audiences" Core..=) Core.<$> audiences,
            ("providerId" Core..=) Core.<$> providerId
          ]
      )

-- | @Authentication@ defines the authentication configuration for API methods provided by an API service. Example: name: calendar.googleapis.com authentication: providers: - id: google/calendar/auth jwks_uri: https:\/\/www.googleapis.com\/oauth2\/v1\/certs issuer: https:\/\/securetoken.google.com rules: - selector: \"*\" requirements: provider/id: google/calendar/auth - selector: google.calendar.Delegate oauth: canonical/scopes: https:\/\/www.googleapis.com\/auth\/calendar.read
--
-- /See:/ 'newAuthentication' smart constructor.
data Authentication = Authentication
  { -- | Defines a set of authentication providers that a service supports.
    providers :: (Core.Maybe [AuthProvider]),
    -- | A list of authentication rules that apply to individual API methods. __NOTE:__ All service configuration rules follow \"last one wins\" order.
    rules :: (Core.Maybe [AuthenticationRule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Authentication' with the minimum fields required to make a request.
newAuthentication ::
  Authentication
newAuthentication =
  Authentication {providers = Core.Nothing, rules = Core.Nothing}

instance Core.FromJSON Authentication where
  parseJSON =
    Core.withObject
      "Authentication"
      ( \o ->
          Authentication
            Core.<$> (o Core..:? "providers")
            Core.<*> (o Core..:? "rules")
      )

instance Core.ToJSON Authentication where
  toJSON Authentication {..} =
    Core.object
      ( Core.catMaybes
          [ ("providers" Core..=) Core.<$> providers,
            ("rules" Core..=) Core.<$> rules
          ]
      )

-- | Authentication rules for the service. By default, if a method has any authentication requirements, every request must include a valid credential matching one of the requirements. It\'s an error to include more than one kind of credential in a single request. If a method doesn\'t have any auth requirements, request credentials will be ignored.
--
-- /See:/ 'newAuthenticationRule' smart constructor.
data AuthenticationRule = AuthenticationRule
  { -- | If true, the service accepts API keys without any other credential. This flag only applies to HTTP and gRPC requests.
    allowWithoutCredential :: (Core.Maybe Core.Bool),
    -- | The requirements for OAuth credentials.
    oauth :: (Core.Maybe OAuthRequirements),
    -- | Requirements for additional authentication providers.
    requirements :: (Core.Maybe [AuthRequirement]),
    -- | Selects the methods to which this rule applies. Refer to selector for syntax details.
    selector :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthenticationRule' with the minimum fields required to make a request.
newAuthenticationRule ::
  AuthenticationRule
newAuthenticationRule =
  AuthenticationRule
    { allowWithoutCredential = Core.Nothing,
      oauth = Core.Nothing,
      requirements = Core.Nothing,
      selector = Core.Nothing
    }

instance Core.FromJSON AuthenticationRule where
  parseJSON =
    Core.withObject
      "AuthenticationRule"
      ( \o ->
          AuthenticationRule
            Core.<$> (o Core..:? "allowWithoutCredential")
            Core.<*> (o Core..:? "oauth")
            Core.<*> (o Core..:? "requirements")
            Core.<*> (o Core..:? "selector")
      )

instance Core.ToJSON AuthenticationRule where
  toJSON AuthenticationRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowWithoutCredential" Core..=)
              Core.<$> allowWithoutCredential,
            ("oauth" Core..=) Core.<$> oauth,
            ("requirements" Core..=) Core.<$> requirements,
            ("selector" Core..=) Core.<$> selector
          ]
      )

-- | @Backend@ defines the backend configuration for a service.
--
-- /See:/ 'newBackend' smart constructor.
newtype Backend = Backend
  { -- | A list of API backend rules that apply to individual API methods. __NOTE:__ All service configuration rules follow \"last one wins\" order.
    rules :: (Core.Maybe [BackendRule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Backend' with the minimum fields required to make a request.
newBackend ::
  Backend
newBackend = Backend {rules = Core.Nothing}

instance Core.FromJSON Backend where
  parseJSON =
    Core.withObject
      "Backend"
      (\o -> Backend Core.<$> (o Core..:? "rules"))

instance Core.ToJSON Backend where
  toJSON Backend {..} =
    Core.object (Core.catMaybes [("rules" Core..=) Core.<$> rules])

-- | A backend rule provides configuration for an individual API element.
--
-- /See:/ 'newBackendRule' smart constructor.
data BackendRule = BackendRule
  { -- | The address of the API backend. The scheme is used to determine the backend protocol and security. The following schemes are accepted: SCHEME PROTOCOL SECURITY http:\/\/ HTTP None https:\/\/ HTTP TLS grpc:\/\/ gRPC None grpcs:\/\/ gRPC TLS It is recommended to explicitly include a scheme. Leaving out the scheme may cause constrasting behaviors across platforms. If the port is unspecified, the default is: - 80 for schemes without TLS - 443 for schemes with TLS For HTTP backends, use protocol to specify the protocol version.
    address :: (Core.Maybe Core.Text),
    -- | The number of seconds to wait for a response from a request. The default varies based on the request protocol and deployment environment.
    deadline :: (Core.Maybe Core.Double),
    -- | When disable_auth is true, a JWT ID token won\'t be generated and the original \"Authorization\" HTTP header will be preserved. If the header is used to carry the original token and is expected by the backend, this field must be set to true to preserve the header.
    disableAuth :: (Core.Maybe Core.Bool),
    -- | The JWT audience is used when generating a JWT ID token for the backend. This ID token will be added in the HTTP \"authorization\" header, and sent to the backend.
    jwtAudience :: (Core.Maybe Core.Text),
    -- | Deprecated, do not use.
    minDeadline :: (Core.Maybe Core.Double),
    -- | The number of seconds to wait for the completion of a long running operation. The default is no deadline.
    operationDeadline :: (Core.Maybe Core.Double),
    -- | The map between request protocol and the backend address.
    overridesByRequestProtocol :: (Core.Maybe BackendRule_OverridesByRequestProtocol),
    pathTranslation :: (Core.Maybe BackendRule_PathTranslation),
    -- | The protocol used for sending a request to the backend. The supported values are \"http\/1.1\" and \"h2\". The default value is inferred from the scheme in the address field: SCHEME PROTOCOL http:\/\/ http\/1.1 https:\/\/ http\/1.1 grpc:\/\/ h2 grpcs:\/\/ h2 For secure HTTP backends (https:\/\/) that support HTTP\/2, set this field to \"h2\" for improved performance. Configuring this field to non-default values is only supported for secure HTTP backends. This field will be ignored for all other backends. See https:\/\/www.iana.org\/assignments\/tls-extensiontype-values\/tls-extensiontype-values.xhtml#alpn-protocol-ids for more details on the supported values.
    protocol :: (Core.Maybe Core.Text),
    -- | Selects the methods to which this rule applies. Refer to selector for syntax details.
    selector :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackendRule' with the minimum fields required to make a request.
newBackendRule ::
  BackendRule
newBackendRule =
  BackendRule
    { address = Core.Nothing,
      deadline = Core.Nothing,
      disableAuth = Core.Nothing,
      jwtAudience = Core.Nothing,
      minDeadline = Core.Nothing,
      operationDeadline = Core.Nothing,
      overridesByRequestProtocol = Core.Nothing,
      pathTranslation = Core.Nothing,
      protocol = Core.Nothing,
      selector = Core.Nothing
    }

instance Core.FromJSON BackendRule where
  parseJSON =
    Core.withObject
      "BackendRule"
      ( \o ->
          BackendRule
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "deadline")
            Core.<*> (o Core..:? "disableAuth")
            Core.<*> (o Core..:? "jwtAudience")
            Core.<*> (o Core..:? "minDeadline")
            Core.<*> (o Core..:? "operationDeadline")
            Core.<*> (o Core..:? "overridesByRequestProtocol")
            Core.<*> (o Core..:? "pathTranslation")
            Core.<*> (o Core..:? "protocol")
            Core.<*> (o Core..:? "selector")
      )

instance Core.ToJSON BackendRule where
  toJSON BackendRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("deadline" Core..=) Core.<$> deadline,
            ("disableAuth" Core..=) Core.<$> disableAuth,
            ("jwtAudience" Core..=) Core.<$> jwtAudience,
            ("minDeadline" Core..=) Core.<$> minDeadline,
            ("operationDeadline" Core..=) Core.<$> operationDeadline,
            ("overridesByRequestProtocol" Core..=)
              Core.<$> overridesByRequestProtocol,
            ("pathTranslation" Core..=) Core.<$> pathTranslation,
            ("protocol" Core..=) Core.<$> protocol,
            ("selector" Core..=) Core.<$> selector
          ]
      )

-- | The map between request protocol and the backend address.
--
-- /See:/ 'newBackendRule_OverridesByRequestProtocol' smart constructor.
newtype BackendRule_OverridesByRequestProtocol = BackendRule_OverridesByRequestProtocol
  { additional :: (Core.HashMap Core.Text BackendRule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackendRule_OverridesByRequestProtocol' with the minimum fields required to make a request.
newBackendRule_OverridesByRequestProtocol ::
  -- |  See 'additional'.
  Core.HashMap Core.Text BackendRule ->
  BackendRule_OverridesByRequestProtocol
newBackendRule_OverridesByRequestProtocol additional =
  BackendRule_OverridesByRequestProtocol {additional = additional}

instance Core.FromJSON BackendRule_OverridesByRequestProtocol where
  parseJSON =
    Core.withObject
      "BackendRule_OverridesByRequestProtocol"
      ( \o ->
          BackendRule_OverridesByRequestProtocol
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON BackendRule_OverridesByRequestProtocol where
  toJSON BackendRule_OverridesByRequestProtocol {..} =
    Core.toJSON additional

-- | Billing related configuration of the service. The following example shows how to configure monitored resources and metrics for billing, @consumer_destinations@ is the only supported destination and the monitored resources need at least one label key @cloud.googleapis.com\/location@ to indicate the location of the billing usage, using different monitored resources between monitoring and billing is recommended so they can be evolved independently: monitored/resources: - type: library.googleapis.com\/billing/branch labels: - key: cloud.googleapis.com\/location description: | Predefined label to support billing location restriction. - key: city description: | Custom label to define the city where the library branch is located in. - key: name description: Custom label to define the name of the library branch. metrics: - name: library.googleapis.com\/book\/borrowed/count metric/kind: DELTA value/type: INT64 unit: \"1\" billing: consumer/destinations: - monitored/resource: library.googleapis.com\/billing/branch
-- metrics: - library.googleapis.com\/book\/borrowed_count
--
-- /See:/ 'newBilling' smart constructor.
newtype Billing = Billing
  { -- | Billing configurations for sending metrics to the consumer project. There can be multiple consumer destinations per service, each one must have a different monitored resource type. A metric can be used in at most one consumer destination.
    consumerDestinations :: (Core.Maybe [BillingDestination])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Billing' with the minimum fields required to make a request.
newBilling ::
  Billing
newBilling = Billing {consumerDestinations = Core.Nothing}

instance Core.FromJSON Billing where
  parseJSON =
    Core.withObject
      "Billing"
      (\o -> Billing Core.<$> (o Core..:? "consumerDestinations"))

instance Core.ToJSON Billing where
  toJSON Billing {..} =
    Core.object
      ( Core.catMaybes
          [("consumerDestinations" Core..=) Core.<$> consumerDestinations]
      )

-- | Configuration of a specific billing destination (Currently only support bill against consumer project).
--
-- /See:/ 'newBillingDestination' smart constructor.
data BillingDestination = BillingDestination
  { -- | Names of the metrics to report to this billing destination. Each name must be defined in Service.metrics section.
    metrics :: (Core.Maybe [Core.Text]),
    -- | The monitored resource type. The type must be defined in Service.monitored_resources section.
    monitoredResource :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BillingDestination' with the minimum fields required to make a request.
newBillingDestination ::
  BillingDestination
newBillingDestination =
  BillingDestination
    { metrics = Core.Nothing,
      monitoredResource = Core.Nothing
    }

instance Core.FromJSON BillingDestination where
  parseJSON =
    Core.withObject
      "BillingDestination"
      ( \o ->
          BillingDestination
            Core.<$> (o Core..:? "metrics")
            Core.<*> (o Core..:? "monitoredResource")
      )

instance Core.ToJSON BillingDestination where
  toJSON BillingDestination {..} =
    Core.object
      ( Core.catMaybes
          [ ("metrics" Core..=) Core.<$> metrics,
            ("monitoredResource" Core..=) Core.<$> monitoredResource
          ]
      )

-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    condition :: (Core.Maybe Expr),
    -- | Specifies the principals requesting access for a Google Cloud resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a Google service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @serviceAccount:{projectid}.svc.id.goog[{namespace}\/{kubernetes-sa}]@: An identifier for a <https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts Kubernetes service account>. For example, @my-project.svc.id.goog[my-namespace\/my-kubernetes-sa]@. *
    -- @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@. * @principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workforce identity pool. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/group\/{group_id}@: All workforce identities in a group. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All workforce identities with a specific attribute value. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/*@: All identities in a workforce identity pool. *
    -- @principal:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workload identity pool. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/group\/{group_id}@: A workload identity pool group. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All identities in a workload identity pool with a certain attribute. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/*@: All identities in a workload identity pool. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts
    -- to @user:{emailid}@ and the recovered user retains the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: Deleted single identity in a workforce identity pool. For example,
    -- @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/my-pool-id\/subject\/my-subject-attribute-value@.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@. For an overview of the IAM roles and permissions, see the <https://cloud.google.com/iam/docs/roles-overview IAM documentation>. For a list of the available pre-defined roles, see <https://cloud.google.com/iam/docs/understanding-roles here>.
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
newBinding ::
  Binding
newBinding =
  Binding
    { condition = Core.Nothing,
      members = Core.Nothing,
      role' = Core.Nothing
    }

instance Core.FromJSON Binding where
  parseJSON =
    Core.withObject
      "Binding"
      ( \o ->
          Binding
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "members")
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON Binding where
  toJSON Binding {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("members" Core..=) Core.<$> members,
            ("role" Core..=) Core.<$> role'
          ]
      )

-- | Change report associated with a particular service configuration. It contains a list of ConfigChanges based on the comparison between two service configurations.
--
-- /See:/ 'newChangeReport' smart constructor.
newtype ChangeReport = ChangeReport
  { -- | List of changes between two service configurations. The changes will be alphabetically sorted based on the identifier of each change. A ConfigChange identifier is a dot separated path to the configuration. Example: visibility.rules[selector=\'LibraryService.CreateBook\'].restriction
    configChanges :: (Core.Maybe [ConfigChange])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChangeReport' with the minimum fields required to make a request.
newChangeReport ::
  ChangeReport
newChangeReport = ChangeReport {configChanges = Core.Nothing}

instance Core.FromJSON ChangeReport where
  parseJSON =
    Core.withObject
      "ChangeReport"
      (\o -> ChangeReport Core.<$> (o Core..:? "configChanges"))

instance Core.ToJSON ChangeReport where
  toJSON ChangeReport {..} =
    Core.object
      (Core.catMaybes [("configChanges" Core..=) Core.<$> configChanges])

-- | Details about how and where to publish client libraries.
--
-- /See:/ 'newClientLibrarySettings' smart constructor.
data ClientLibrarySettings = ClientLibrarySettings
  { -- | Settings for C++ client libraries.
    cppSettings :: (Core.Maybe CppSettings),
    -- | Settings for .NET client libraries.
    dotnetSettings :: (Core.Maybe DotnetSettings),
    -- | Settings for Go client libraries.
    goSettings :: (Core.Maybe GoSettings),
    -- | Settings for legacy Java features, supported in the Service YAML.
    javaSettings :: (Core.Maybe JavaSettings),
    -- | Launch stage of this version of the API.
    launchStage :: (Core.Maybe ClientLibrarySettings_LaunchStage),
    -- | Settings for Node client libraries.
    nodeSettings :: (Core.Maybe NodeSettings),
    -- | Settings for PHP client libraries.
    phpSettings :: (Core.Maybe PhpSettings),
    -- | Settings for Python client libraries.
    pythonSettings :: (Core.Maybe PythonSettings),
    -- | When using transport=rest, the client request will encode enums as numbers rather than strings.
    restNumericEnums :: (Core.Maybe Core.Bool),
    -- | Settings for Ruby client libraries.
    rubySettings :: (Core.Maybe RubySettings),
    -- | Version of the API to apply these settings to. This is the full protobuf package for the API, ending in the version element. Examples: \"google.cloud.speech.v1\" and \"google.spanner.admin.database.v1\".
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClientLibrarySettings' with the minimum fields required to make a request.
newClientLibrarySettings ::
  ClientLibrarySettings
newClientLibrarySettings =
  ClientLibrarySettings
    { cppSettings = Core.Nothing,
      dotnetSettings = Core.Nothing,
      goSettings = Core.Nothing,
      javaSettings = Core.Nothing,
      launchStage = Core.Nothing,
      nodeSettings = Core.Nothing,
      phpSettings = Core.Nothing,
      pythonSettings = Core.Nothing,
      restNumericEnums = Core.Nothing,
      rubySettings = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON ClientLibrarySettings where
  parseJSON =
    Core.withObject
      "ClientLibrarySettings"
      ( \o ->
          ClientLibrarySettings
            Core.<$> (o Core..:? "cppSettings")
            Core.<*> (o Core..:? "dotnetSettings")
            Core.<*> (o Core..:? "goSettings")
            Core.<*> (o Core..:? "javaSettings")
            Core.<*> (o Core..:? "launchStage")
            Core.<*> (o Core..:? "nodeSettings")
            Core.<*> (o Core..:? "phpSettings")
            Core.<*> (o Core..:? "pythonSettings")
            Core.<*> (o Core..:? "restNumericEnums")
            Core.<*> (o Core..:? "rubySettings")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON ClientLibrarySettings where
  toJSON ClientLibrarySettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("cppSettings" Core..=) Core.<$> cppSettings,
            ("dotnetSettings" Core..=) Core.<$> dotnetSettings,
            ("goSettings" Core..=) Core.<$> goSettings,
            ("javaSettings" Core..=) Core.<$> javaSettings,
            ("launchStage" Core..=) Core.<$> launchStage,
            ("nodeSettings" Core..=) Core.<$> nodeSettings,
            ("phpSettings" Core..=) Core.<$> phpSettings,
            ("pythonSettings" Core..=) Core.<$> pythonSettings,
            ("restNumericEnums" Core..=) Core.<$> restNumericEnums,
            ("rubySettings" Core..=) Core.<$> rubySettings,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Required information for every language.
--
-- /See:/ 'newCommonLanguageSettings' smart constructor.
data CommonLanguageSettings = CommonLanguageSettings
  { -- | The destination where API teams want this client library to be published.
    destinations :: (Core.Maybe [CommonLanguageSettings_DestinationsItem]),
    -- | Link to automatically generated reference documentation. Example: https:\/\/cloud.google.com\/nodejs\/docs\/reference\/asset\/latest
    referenceDocsUri :: (Core.Maybe Core.Text),
    -- | Configuration for which RPCs should be generated in the GAPIC client.
    selectiveGapicGeneration :: (Core.Maybe SelectiveGapicGeneration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommonLanguageSettings' with the minimum fields required to make a request.
newCommonLanguageSettings ::
  CommonLanguageSettings
newCommonLanguageSettings =
  CommonLanguageSettings
    { destinations = Core.Nothing,
      referenceDocsUri = Core.Nothing,
      selectiveGapicGeneration = Core.Nothing
    }

instance Core.FromJSON CommonLanguageSettings where
  parseJSON =
    Core.withObject
      "CommonLanguageSettings"
      ( \o ->
          CommonLanguageSettings
            Core.<$> (o Core..:? "destinations")
            Core.<*> (o Core..:? "referenceDocsUri")
            Core.<*> (o Core..:? "selectiveGapicGeneration")
      )

instance Core.ToJSON CommonLanguageSettings where
  toJSON CommonLanguageSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("destinations" Core..=) Core.<$> destinations,
            ("referenceDocsUri" Core..=) Core.<$> referenceDocsUri,
            ("selectiveGapicGeneration" Core..=)
              Core.<$> selectiveGapicGeneration
          ]
      )

-- | Output generated from semantically comparing two versions of a service configuration. Includes detailed information about a field that have changed with applicable advice about potential consequences for the change, such as backwards-incompatibility.
--
-- /See:/ 'newConfigChange' smart constructor.
data ConfigChange = ConfigChange
  { -- | Collection of advice provided for this change, useful for determining the possible impact of this change.
    advices :: (Core.Maybe [Advice]),
    -- | The type for this change, either ADDED, REMOVED, or MODIFIED.
    changeType :: (Core.Maybe ConfigChange_ChangeType),
    -- | Object hierarchy path to the change, with levels separated by a \'.\' character. For repeated fields, an applicable unique identifier field is used for the index (usually selector, name, or id). For maps, the term \'key\' is used. If the field has no unique identifier, the numeric index is used. Examples: - visibility.rules[selector==\"google.LibraryService.ListBooks\"].restriction - quota.metric/rules[selector==\"google\"].metric/costs[key==\"reads\"].value - logging.producer_destinations[0]
    element :: (Core.Maybe Core.Text),
    -- | Value of the changed object in the new Service configuration, in JSON format. This field will not be populated if ChangeType == REMOVED.
    newValue' :: (Core.Maybe Core.Text),
    -- | Value of the changed object in the old Service configuration, in JSON format. This field will not be populated if ChangeType == ADDED.
    oldValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConfigChange' with the minimum fields required to make a request.
newConfigChange ::
  ConfigChange
newConfigChange =
  ConfigChange
    { advices = Core.Nothing,
      changeType = Core.Nothing,
      element = Core.Nothing,
      newValue' = Core.Nothing,
      oldValue = Core.Nothing
    }

instance Core.FromJSON ConfigChange where
  parseJSON =
    Core.withObject
      "ConfigChange"
      ( \o ->
          ConfigChange
            Core.<$> (o Core..:? "advices")
            Core.<*> (o Core..:? "changeType")
            Core.<*> (o Core..:? "element")
            Core.<*> (o Core..:? "newValue")
            Core.<*> (o Core..:? "oldValue")
      )

instance Core.ToJSON ConfigChange where
  toJSON ConfigChange {..} =
    Core.object
      ( Core.catMaybes
          [ ("advices" Core..=) Core.<$> advices,
            ("changeType" Core..=) Core.<$> changeType,
            ("element" Core..=) Core.<$> element,
            ("newValue" Core..=) Core.<$> newValue',
            ("oldValue" Core..=) Core.<$> oldValue
          ]
      )

-- | Generic specification of a source configuration file
--
-- /See:/ 'newConfigFile' smart constructor.
data ConfigFile = ConfigFile
  { -- | The bytes that constitute the file.
    fileContents :: (Core.Maybe Core.Base64),
    -- | The file name of the configuration file (full or relative path).
    filePath :: (Core.Maybe Core.Text),
    -- | The type of configuration file this represents.
    fileType :: (Core.Maybe ConfigFile_FileType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConfigFile' with the minimum fields required to make a request.
newConfigFile ::
  ConfigFile
newConfigFile =
  ConfigFile
    { fileContents = Core.Nothing,
      filePath = Core.Nothing,
      fileType = Core.Nothing
    }

instance Core.FromJSON ConfigFile where
  parseJSON =
    Core.withObject
      "ConfigFile"
      ( \o ->
          ConfigFile
            Core.<$> (o Core..:? "fileContents")
            Core.<*> (o Core..:? "filePath")
            Core.<*> (o Core..:? "fileType")
      )

instance Core.ToJSON ConfigFile where
  toJSON ConfigFile {..} =
    Core.object
      ( Core.catMaybes
          [ ("fileContents" Core..=) Core.<$> fileContents,
            ("filePath" Core..=) Core.<$> filePath,
            ("fileType" Core..=) Core.<$> fileType
          ]
      )

-- | Represents a service configuration with its name and id.
--
-- /See:/ 'newConfigRef' smart constructor.
newtype ConfigRef = ConfigRef
  { -- | Resource name of a service config. It must have the following format: \"services\/{service name}\/configs\/{config id}\".
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConfigRef' with the minimum fields required to make a request.
newConfigRef ::
  ConfigRef
newConfigRef = ConfigRef {name = Core.Nothing}

instance Core.FromJSON ConfigRef where
  parseJSON =
    Core.withObject
      "ConfigRef"
      (\o -> ConfigRef Core.<$> (o Core..:? "name"))

instance Core.ToJSON ConfigRef where
  toJSON ConfigRef {..} =
    Core.object (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | Represents a source file which is used to generate the service configuration defined by @google.api.Service@.
--
-- /See:/ 'newConfigSource' smart constructor.
data ConfigSource = ConfigSource
  { -- | Set of source configuration files that are used to generate a service configuration (@google.api.Service@).
    files :: (Core.Maybe [ConfigFile]),
    -- | A unique ID for a specific instance of this message, typically assigned by the client for tracking purpose. If empty, the server may choose to generate one instead.
    id :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConfigSource' with the minimum fields required to make a request.
newConfigSource ::
  ConfigSource
newConfigSource =
  ConfigSource {files = Core.Nothing, id = Core.Nothing}

instance Core.FromJSON ConfigSource where
  parseJSON =
    Core.withObject
      "ConfigSource"
      ( \o ->
          ConfigSource
            Core.<$> (o Core..:? "files")
            Core.<*> (o Core..:? "id")
      )

instance Core.ToJSON ConfigSource where
  toJSON ConfigSource {..} =
    Core.object
      ( Core.catMaybes
          [("files" Core..=) Core.<$> files, ("id" Core..=) Core.<$> id]
      )

-- | @Context@ defines which contexts an API requests. Example: context: rules: - selector: \"*\" requested: - google.rpc.context.ProjectContext - google.rpc.context.OriginContext The above specifies that all methods in the API request @google.rpc.context.ProjectContext@ and @google.rpc.context.OriginContext@. Available context types are defined in package @google.rpc.context@. This also provides mechanism to allowlist any protobuf message extension that can be sent in grpc metadata using “x-goog-ext--bin” and “x-goog-ext--jspb” format. For example, list any service specific protobuf types that can appear in grpc metadata as follows in your yaml file: Example: context: rules: - selector: \"google.example.library.v1.LibraryService.CreateBook\" allowed/request/extensions: - google.foo.v1.NewExtension allowed/response/extensions: - google.foo.v1.NewExtension You can also specify extension ID instead of fully qualified extension name here.
--
-- /See:/ 'newContext' smart constructor.
newtype Context = Context
  { -- | A list of RPC context rules that apply to individual API methods. __NOTE:__ All service configuration rules follow \"last one wins\" order.
    rules :: (Core.Maybe [ContextRule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Context' with the minimum fields required to make a request.
newContext ::
  Context
newContext = Context {rules = Core.Nothing}

instance Core.FromJSON Context where
  parseJSON =
    Core.withObject
      "Context"
      (\o -> Context Core.<$> (o Core..:? "rules"))

instance Core.ToJSON Context where
  toJSON Context {..} =
    Core.object (Core.catMaybes [("rules" Core..=) Core.<$> rules])

-- | A context rule provides information about the context for an individual API element.
--
-- /See:/ 'newContextRule' smart constructor.
data ContextRule = ContextRule
  { -- | A list of full type names or extension IDs of extensions allowed in grpc side channel from client to backend.
    allowedRequestExtensions :: (Core.Maybe [Core.Text]),
    -- | A list of full type names or extension IDs of extensions allowed in grpc side channel from backend to client.
    allowedResponseExtensions :: (Core.Maybe [Core.Text]),
    -- | A list of full type names of provided contexts. It is used to support propagating HTTP headers and ETags from the response extension.
    provided :: (Core.Maybe [Core.Text]),
    -- | A list of full type names of requested contexts, only the requested context will be made available to the backend.
    requested :: (Core.Maybe [Core.Text]),
    -- | Selects the methods to which this rule applies. Refer to selector for syntax details.
    selector :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContextRule' with the minimum fields required to make a request.
newContextRule ::
  ContextRule
newContextRule =
  ContextRule
    { allowedRequestExtensions = Core.Nothing,
      allowedResponseExtensions = Core.Nothing,
      provided = Core.Nothing,
      requested = Core.Nothing,
      selector = Core.Nothing
    }

instance Core.FromJSON ContextRule where
  parseJSON =
    Core.withObject
      "ContextRule"
      ( \o ->
          ContextRule
            Core.<$> (o Core..:? "allowedRequestExtensions")
            Core.<*> (o Core..:? "allowedResponseExtensions")
            Core.<*> (o Core..:? "provided")
            Core.<*> (o Core..:? "requested")
            Core.<*> (o Core..:? "selector")
      )

instance Core.ToJSON ContextRule where
  toJSON ContextRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowedRequestExtensions" Core..=)
              Core.<$> allowedRequestExtensions,
            ("allowedResponseExtensions" Core..=)
              Core.<$> allowedResponseExtensions,
            ("provided" Core..=) Core.<$> provided,
            ("requested" Core..=) Core.<$> requested,
            ("selector" Core..=) Core.<$> selector
          ]
      )

-- | Selects and configures the service controller used by the service. Example: control: environment: servicecontrol.googleapis.com
--
-- /See:/ 'newControl' smart constructor.
data Control = Control
  { -- | The service controller environment to use. If empty, no control plane feature (like quota and billing) will be enabled. The recommended value for most services is servicecontrol.googleapis.com
    environment :: (Core.Maybe Core.Text),
    -- | Defines policies applying to the API methods of the service.
    methodPolicies :: (Core.Maybe [MethodPolicy])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Control' with the minimum fields required to make a request.
newControl ::
  Control
newControl =
  Control
    { environment = Core.Nothing,
      methodPolicies = Core.Nothing
    }

instance Core.FromJSON Control where
  parseJSON =
    Core.withObject
      "Control"
      ( \o ->
          Control
            Core.<$> (o Core..:? "environment")
            Core.<*> (o Core..:? "methodPolicies")
      )

instance Core.ToJSON Control where
  toJSON Control {..} =
    Core.object
      ( Core.catMaybes
          [ ("environment" Core..=) Core.<$> environment,
            ("methodPolicies" Core..=) Core.<$> methodPolicies
          ]
      )

-- | Settings for C++ client libraries.
--
-- /See:/ 'newCppSettings' smart constructor.
newtype CppSettings = CppSettings
  { -- | Some settings.
    common :: (Core.Maybe CommonLanguageSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CppSettings' with the minimum fields required to make a request.
newCppSettings ::
  CppSettings
newCppSettings = CppSettings {common = Core.Nothing}

instance Core.FromJSON CppSettings where
  parseJSON =
    Core.withObject
      "CppSettings"
      (\o -> CppSettings Core.<$> (o Core..:? "common"))

instance Core.ToJSON CppSettings where
  toJSON CppSettings {..} =
    Core.object (Core.catMaybes [("common" Core..=) Core.<$> common])

-- | Customize service error responses. For example, list any service specific protobuf types that can appear in error detail lists of error responses. Example: custom_error: types: - google.foo.v1.CustomError - google.foo.v1.AnotherError
--
-- /See:/ 'newCustomError' smart constructor.
data CustomError = CustomError
  { -- | The list of custom error rules that apply to individual API messages. __NOTE:__ All service configuration rules follow \"last one wins\" order.
    rules :: (Core.Maybe [CustomErrorRule]),
    -- | The list of custom error detail types, e.g. \'google.foo.v1.CustomError\'.
    types :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomError' with the minimum fields required to make a request.
newCustomError ::
  CustomError
newCustomError =
  CustomError {rules = Core.Nothing, types = Core.Nothing}

instance Core.FromJSON CustomError where
  parseJSON =
    Core.withObject
      "CustomError"
      ( \o ->
          CustomError
            Core.<$> (o Core..:? "rules")
            Core.<*> (o Core..:? "types")
      )

instance Core.ToJSON CustomError where
  toJSON CustomError {..} =
    Core.object
      ( Core.catMaybes
          [ ("rules" Core..=) Core.<$> rules,
            ("types" Core..=) Core.<$> types
          ]
      )

-- | A custom error rule.
--
-- /See:/ 'newCustomErrorRule' smart constructor.
data CustomErrorRule = CustomErrorRule
  { -- | Mark this message as possible payload in error response. Otherwise, objects of this type will be filtered when they appear in error payload.
    isErrorType :: (Core.Maybe Core.Bool),
    -- | Selects messages to which this rule applies. Refer to selector for syntax details.
    selector :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomErrorRule' with the minimum fields required to make a request.
newCustomErrorRule ::
  CustomErrorRule
newCustomErrorRule =
  CustomErrorRule
    { isErrorType = Core.Nothing,
      selector = Core.Nothing
    }

instance Core.FromJSON CustomErrorRule where
  parseJSON =
    Core.withObject
      "CustomErrorRule"
      ( \o ->
          CustomErrorRule
            Core.<$> (o Core..:? "isErrorType")
            Core.<*> (o Core..:? "selector")
      )

instance Core.ToJSON CustomErrorRule where
  toJSON CustomErrorRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("isErrorType" Core..=) Core.<$> isErrorType,
            ("selector" Core..=) Core.<$> selector
          ]
      )

-- | A custom pattern is used for defining custom HTTP verb.
--
-- /See:/ 'newCustomHttpPattern' smart constructor.
data CustomHttpPattern = CustomHttpPattern
  { -- | The name of this custom HTTP verb.
    kind :: (Core.Maybe Core.Text),
    -- | The path matched by this custom verb.
    path :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomHttpPattern' with the minimum fields required to make a request.
newCustomHttpPattern ::
  CustomHttpPattern
newCustomHttpPattern =
  CustomHttpPattern {kind = Core.Nothing, path = Core.Nothing}

instance Core.FromJSON CustomHttpPattern where
  parseJSON =
    Core.withObject
      "CustomHttpPattern"
      ( \o ->
          CustomHttpPattern
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "path")
      )

instance Core.ToJSON CustomHttpPattern where
  toJSON CustomHttpPattern {..} =
    Core.object
      ( Core.catMaybes
          [("kind" Core..=) Core.<$> kind, ("path" Core..=) Core.<$> path]
      )

-- | Strategy used to delete a service. This strategy is a placeholder only used by the system generated rollout to delete a service.
--
-- /See:/ 'newDeleteServiceStrategy' smart constructor.
data DeleteServiceStrategy = DeleteServiceStrategy
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteServiceStrategy' with the minimum fields required to make a request.
newDeleteServiceStrategy ::
  DeleteServiceStrategy
newDeleteServiceStrategy = DeleteServiceStrategy

instance Core.FromJSON DeleteServiceStrategy where
  parseJSON =
    Core.withObject
      "DeleteServiceStrategy"
      (\o -> Core.pure DeleteServiceStrategy)

instance Core.ToJSON DeleteServiceStrategy where
  toJSON = Core.const Core.emptyObject

-- | Represents a diagnostic message (error or warning)
--
-- /See:/ 'newDiagnostic' smart constructor.
data Diagnostic = Diagnostic
  { -- | The kind of diagnostic information provided.
    kind :: (Core.Maybe Diagnostic_Kind),
    -- | File name and line number of the error or warning.
    location :: (Core.Maybe Core.Text),
    -- | Message describing the error or warning.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Diagnostic' with the minimum fields required to make a request.
newDiagnostic ::
  Diagnostic
newDiagnostic =
  Diagnostic
    { kind = Core.Nothing,
      location = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON Diagnostic where
  parseJSON =
    Core.withObject
      "Diagnostic"
      ( \o ->
          Diagnostic
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Diagnostic where
  toJSON Diagnostic {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("location" Core..=) Core.<$> location,
            ("message" Core..=) Core.<$> message
          ]
      )

-- | @Documentation@ provides the information for describing a service. Example: documentation: summary: > The Google Calendar API gives access to most calendar features. pages: - name: Overview content: (== include google\/foo\/overview.md ==) - name: Tutorial content: (== include google\/foo\/tutorial.md ==) subpages: - name: Java content: (== include google\/foo\/tutorial/java.md ==) rules: - selector: google.calendar.Calendar.Get description: > ... - selector: google.calendar.Calendar.Put description: > ... Documentation is provided in markdown syntax. In addition to standard markdown features, definition lists, tables and fenced code blocks are supported. Section headers can be provided and are interpreted relative to the section nesting of the context where a documentation fragment is embedded. Documentation from the IDL is merged with documentation defined via the config at normalization time, where documentation provided by config rules overrides IDL provided. A number of constructs specific to the API
-- platform are supported in documentation text. In order to reference a proto element, the following notation can be used: [fully.qualified.proto.name][] To override the display text used for the link, this can be used: [display text][fully.qualified.proto.name] Text can be excluded from doc using the following notation: (-- internal comment --) A few directives are available in documentation. Note that directives must appear on a single line to be properly identified. The @include@ directive includes a markdown file from an external source: (== include path\/to\/file ==) The @resource_for@ directive marks a message to be the resource of a collection in REST view. If it is not specified, tools attempt to infer the resource from the operations in a collection: (== resource/for v1.shelves.books ==) The directive @suppress_warning@ does not directly affect documentation and is documented together with service config validation.
--
-- /See:/ 'newDocumentation' smart constructor.
data Documentation = Documentation
  { -- | Optional information about the IAM configuration. This is typically used to link to documentation about a product\'s IAM roles and permissions.
    additionalIamInfo :: (Core.Maybe Core.Text),
    -- | The URL to the root of documentation.
    documentationRootUrl :: (Core.Maybe Core.Text),
    -- | Declares a single overview page. For example: documentation: summary: ... overview: (== include overview.md ==) This is a shortcut for the following declaration (using pages style): documentation: summary: ... pages: - name: Overview content: (== include overview.md ==) Note: you cannot specify both @overview@ field and @pages@ field.
    overview :: (Core.Maybe Core.Text),
    -- | The top level pages for the documentation set.
    pages :: (Core.Maybe [Page]),
    -- | A list of documentation rules that apply to individual API elements. __NOTE:__ All service configuration rules follow \"last one wins\" order.
    rules :: (Core.Maybe [DocumentationRule]),
    -- | Specifies section and content to override boilerplate content provided by go\/api-docgen. Currently overrides following sections: 1. rest.service.client_libraries
    sectionOverrides :: (Core.Maybe [Page]),
    -- | Specifies the service root url if the default one (the service name from the yaml file) is not suitable. This can be seen in any fully specified service urls as well as sections that show a base that other urls are relative to.
    serviceRootUrl :: (Core.Maybe Core.Text),
    -- | A short description of what the service does. The summary must be plain text. It becomes the overview of the service displayed in Google Cloud Console. NOTE: This field is equivalent to the standard field @description@.
    summary :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Documentation' with the minimum fields required to make a request.
newDocumentation ::
  Documentation
newDocumentation =
  Documentation
    { additionalIamInfo = Core.Nothing,
      documentationRootUrl = Core.Nothing,
      overview = Core.Nothing,
      pages = Core.Nothing,
      rules = Core.Nothing,
      sectionOverrides = Core.Nothing,
      serviceRootUrl = Core.Nothing,
      summary = Core.Nothing
    }

instance Core.FromJSON Documentation where
  parseJSON =
    Core.withObject
      "Documentation"
      ( \o ->
          Documentation
            Core.<$> (o Core..:? "additionalIamInfo")
            Core.<*> (o Core..:? "documentationRootUrl")
            Core.<*> (o Core..:? "overview")
            Core.<*> (o Core..:? "pages")
            Core.<*> (o Core..:? "rules")
            Core.<*> (o Core..:? "sectionOverrides")
            Core.<*> (o Core..:? "serviceRootUrl")
            Core.<*> (o Core..:? "summary")
      )

instance Core.ToJSON Documentation where
  toJSON Documentation {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalIamInfo" Core..=) Core.<$> additionalIamInfo,
            ("documentationRootUrl" Core..=) Core.<$> documentationRootUrl,
            ("overview" Core..=) Core.<$> overview,
            ("pages" Core..=) Core.<$> pages,
            ("rules" Core..=) Core.<$> rules,
            ("sectionOverrides" Core..=) Core.<$> sectionOverrides,
            ("serviceRootUrl" Core..=) Core.<$> serviceRootUrl,
            ("summary" Core..=) Core.<$> summary
          ]
      )

-- | A documentation rule provides information about individual API elements.
--
-- /See:/ 'newDocumentationRule' smart constructor.
data DocumentationRule = DocumentationRule
  { -- | Deprecation description of the selected element(s). It can be provided if an element is marked as @deprecated@.
    deprecationDescription :: (Core.Maybe Core.Text),
    -- | Description of the selected proto element (e.g. a message, a method, a \'service\' definition, or a field). Defaults to leading & trailing comments taken from the proto source definition of the proto element.
    description :: (Core.Maybe Core.Text),
    -- | String of comma or space separated case-sensitive words for which method\/field name replacement will be disabled by go\/api-docgen.
    disableReplacementWords :: (Core.Maybe Core.Text),
    -- | The selector is a comma-separated list of patterns for any element such as a method, a field, an enum value. Each pattern is a qualified name of the element which may end in \"/\", indicating a wildcard. Wildcards are only allowed at the end and for a whole component of the qualified name, i.e. \"foo./\" is ok, but not \"foo.b/\" or \"foo./.bar\". A wildcard will match one or more components. To specify a default for all applicable elements, the whole pattern \"*\" is used.
    selector :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentationRule' with the minimum fields required to make a request.
newDocumentationRule ::
  DocumentationRule
newDocumentationRule =
  DocumentationRule
    { deprecationDescription = Core.Nothing,
      description = Core.Nothing,
      disableReplacementWords = Core.Nothing,
      selector = Core.Nothing
    }

instance Core.FromJSON DocumentationRule where
  parseJSON =
    Core.withObject
      "DocumentationRule"
      ( \o ->
          DocumentationRule
            Core.<$> (o Core..:? "deprecationDescription")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "disableReplacementWords")
            Core.<*> (o Core..:? "selector")
      )

instance Core.ToJSON DocumentationRule where
  toJSON DocumentationRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("deprecationDescription" Core..=)
              Core.<$> deprecationDescription,
            ("description" Core..=) Core.<$> description,
            ("disableReplacementWords" Core..=)
              Core.<$> disableReplacementWords,
            ("selector" Core..=) Core.<$> selector
          ]
      )

-- | Settings for Dotnet client libraries.
--
-- /See:/ 'newDotnetSettings' smart constructor.
data DotnetSettings = DotnetSettings
  { -- | Some settings.
    common :: (Core.Maybe CommonLanguageSettings),
    -- | Namespaces which must be aliased in snippets due to a known (but non-generator-predictable) naming collision
    forcedNamespaceAliases :: (Core.Maybe [Core.Text]),
    -- | Method signatures (in the form \"service.method(signature)\") which are provided separately, so shouldn\'t be generated. Snippets /calling/ these methods are still generated, however.
    handwrittenSignatures :: (Core.Maybe [Core.Text]),
    -- | List of full resource types to ignore during generation. This is typically used for API-specific Location resources, which should be handled by the generator as if they were actually the common Location resources. Example entry: \"documentai.googleapis.com\/Location\"
    ignoredResources :: (Core.Maybe [Core.Text]),
    -- | Map from full resource types to the effective short name for the resource. This is used when otherwise resource named from different services would cause naming collisions. Example entry: \"datalabeling.googleapis.com\/Dataset\": \"DataLabelingDataset\"
    renamedResources :: (Core.Maybe DotnetSettings_RenamedResources),
    -- | Map from original service names to renamed versions. This is used when the default generated types would cause a naming conflict. (Neither name is fully-qualified.) Example: Subscriber to SubscriberServiceApi.
    renamedServices :: (Core.Maybe DotnetSettings_RenamedServices)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DotnetSettings' with the minimum fields required to make a request.
newDotnetSettings ::
  DotnetSettings
newDotnetSettings =
  DotnetSettings
    { common = Core.Nothing,
      forcedNamespaceAliases = Core.Nothing,
      handwrittenSignatures = Core.Nothing,
      ignoredResources = Core.Nothing,
      renamedResources = Core.Nothing,
      renamedServices = Core.Nothing
    }

instance Core.FromJSON DotnetSettings where
  parseJSON =
    Core.withObject
      "DotnetSettings"
      ( \o ->
          DotnetSettings
            Core.<$> (o Core..:? "common")
            Core.<*> (o Core..:? "forcedNamespaceAliases")
            Core.<*> (o Core..:? "handwrittenSignatures")
            Core.<*> (o Core..:? "ignoredResources")
            Core.<*> (o Core..:? "renamedResources")
            Core.<*> (o Core..:? "renamedServices")
      )

instance Core.ToJSON DotnetSettings where
  toJSON DotnetSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("common" Core..=) Core.<$> common,
            ("forcedNamespaceAliases" Core..=) Core.<$> forcedNamespaceAliases,
            ("handwrittenSignatures" Core..=) Core.<$> handwrittenSignatures,
            ("ignoredResources" Core..=) Core.<$> ignoredResources,
            ("renamedResources" Core..=) Core.<$> renamedResources,
            ("renamedServices" Core..=) Core.<$> renamedServices
          ]
      )

-- | Map from full resource types to the effective short name for the resource. This is used when otherwise resource named from different services would cause naming collisions. Example entry: \"datalabeling.googleapis.com\/Dataset\": \"DataLabelingDataset\"
--
-- /See:/ 'newDotnetSettings_RenamedResources' smart constructor.
newtype DotnetSettings_RenamedResources = DotnetSettings_RenamedResources
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DotnetSettings_RenamedResources' with the minimum fields required to make a request.
newDotnetSettings_RenamedResources ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  DotnetSettings_RenamedResources
newDotnetSettings_RenamedResources additional =
  DotnetSettings_RenamedResources {additional = additional}

instance Core.FromJSON DotnetSettings_RenamedResources where
  parseJSON =
    Core.withObject
      "DotnetSettings_RenamedResources"
      ( \o ->
          DotnetSettings_RenamedResources Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON DotnetSettings_RenamedResources where
  toJSON DotnetSettings_RenamedResources {..} = Core.toJSON additional

-- | Map from original service names to renamed versions. This is used when the default generated types would cause a naming conflict. (Neither name is fully-qualified.) Example: Subscriber to SubscriberServiceApi.
--
-- /See:/ 'newDotnetSettings_RenamedServices' smart constructor.
newtype DotnetSettings_RenamedServices = DotnetSettings_RenamedServices
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DotnetSettings_RenamedServices' with the minimum fields required to make a request.
newDotnetSettings_RenamedServices ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  DotnetSettings_RenamedServices
newDotnetSettings_RenamedServices additional =
  DotnetSettings_RenamedServices {additional = additional}

instance Core.FromJSON DotnetSettings_RenamedServices where
  parseJSON =
    Core.withObject
      "DotnetSettings_RenamedServices"
      ( \o ->
          DotnetSettings_RenamedServices Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON DotnetSettings_RenamedServices where
  toJSON DotnetSettings_RenamedServices {..} = Core.toJSON additional

-- | Operation payload for EnableService method.
--
-- /See:/ 'newEnableServiceResponse' smart constructor.
data EnableServiceResponse = EnableServiceResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnableServiceResponse' with the minimum fields required to make a request.
newEnableServiceResponse ::
  EnableServiceResponse
newEnableServiceResponse = EnableServiceResponse

instance Core.FromJSON EnableServiceResponse where
  parseJSON =
    Core.withObject
      "EnableServiceResponse"
      (\o -> Core.pure EnableServiceResponse)

instance Core.ToJSON EnableServiceResponse where
  toJSON = Core.const Core.emptyObject

-- | @Endpoint@ describes a network address of a service that serves a set of APIs. It is commonly known as a service endpoint. A service may expose any number of service endpoints, and all service endpoints share the same service definition, such as quota limits and monitoring metrics. Example: type: google.api.Service name: library-example.googleapis.com endpoints: # Declares network address @https:\/\/library-example.googleapis.com@ # for service @library-example.googleapis.com@. The @https@ scheme # is implicit for all service endpoints. Other schemes may be # supported in the future. - name: library-example.googleapis.com allow/cors: false - name: content-staging-library-example.googleapis.com # Allows HTTP OPTIONS calls to be passed to the API frontend, for it # to decide whether the subsequent cross-origin request is allowed # to proceed. allow/cors: true
--
-- /See:/ 'newEndpoint' smart constructor.
data Endpoint = Endpoint
  { -- | Aliases for this endpoint, these will be served by the same UrlMap as the parent endpoint, and will be provisioned in the GCP stack for the Regional Endpoints.
    aliases :: (Core.Maybe [Core.Text]),
    -- | Allowing <https://en.wikipedia.org/wiki/Cross-origin_resource_sharing CORS>, aka cross-domain traffic, would allow the backends served from this endpoint to receive and respond to HTTP OPTIONS requests. The response will be used by the browser to determine whether the subsequent cross-origin request is allowed to proceed.
    allowCors :: (Core.Maybe Core.Bool),
    -- | The canonical name of this endpoint.
    name :: (Core.Maybe Core.Text),
    -- | The specification of an Internet routable address of API frontend that will handle requests to this <https://cloud.google.com/apis/design/glossary API Endpoint>. It should be either a valid IPv4 address or a fully-qualified domain name. For example, \"8.8.8.8\" or \"myservice.appspot.com\".
    target :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Endpoint' with the minimum fields required to make a request.
newEndpoint ::
  Endpoint
newEndpoint =
  Endpoint
    { aliases = Core.Nothing,
      allowCors = Core.Nothing,
      name = Core.Nothing,
      target = Core.Nothing
    }

instance Core.FromJSON Endpoint where
  parseJSON =
    Core.withObject
      "Endpoint"
      ( \o ->
          Endpoint
            Core.<$> (o Core..:? "aliases")
            Core.<*> (o Core..:? "allowCors")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "target")
      )

instance Core.ToJSON Endpoint where
  toJSON Endpoint {..} =
    Core.object
      ( Core.catMaybes
          [ ("aliases" Core..=) Core.<$> aliases,
            ("allowCors" Core..=) Core.<$> allowCors,
            ("name" Core..=) Core.<$> name,
            ("target" Core..=) Core.<$> target
          ]
      )

-- | Enum type definition.
--
-- /See:/ 'newEnum' smart constructor.
data Enum' = Enum'
  { -- | The source edition string, only valid when syntax is SYNTAX_EDITIONS.
    edition :: (Core.Maybe Core.Text),
    -- | Enum value definitions.
    enumvalue :: (Core.Maybe [EnumValue]),
    -- | Enum type name.
    name :: (Core.Maybe Core.Text),
    -- | Protocol buffer options.
    options :: (Core.Maybe [Option]),
    -- | The source context.
    sourceContext :: (Core.Maybe SourceContext),
    -- | The source syntax.
    syntax :: (Core.Maybe Enum_Syntax)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Enum' with the minimum fields required to make a request.
newEnum ::
  Enum'
newEnum =
  Enum'
    { edition = Core.Nothing,
      enumvalue = Core.Nothing,
      name = Core.Nothing,
      options = Core.Nothing,
      sourceContext = Core.Nothing,
      syntax = Core.Nothing
    }

instance Core.FromJSON Enum' where
  parseJSON =
    Core.withObject
      "Enum'"
      ( \o ->
          Enum'
            Core.<$> (o Core..:? "edition")
            Core.<*> (o Core..:? "enumvalue")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "options")
            Core.<*> (o Core..:? "sourceContext")
            Core.<*> (o Core..:? "syntax")
      )

instance Core.ToJSON Enum' where
  toJSON Enum' {..} =
    Core.object
      ( Core.catMaybes
          [ ("edition" Core..=) Core.<$> edition,
            ("enumvalue" Core..=) Core.<$> enumvalue,
            ("name" Core..=) Core.<$> name,
            ("options" Core..=) Core.<$> options,
            ("sourceContext" Core..=) Core.<$> sourceContext,
            ("syntax" Core..=) Core.<$> syntax
          ]
      )

-- | Enum value definition.
--
-- /See:/ 'newEnumValue' smart constructor.
data EnumValue = EnumValue
  { -- | Enum value name.
    name :: (Core.Maybe Core.Text),
    -- | Enum value number.
    number :: (Core.Maybe Core.Int32),
    -- | Protocol buffer options.
    options :: (Core.Maybe [Option])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnumValue' with the minimum fields required to make a request.
newEnumValue ::
  EnumValue
newEnumValue =
  EnumValue
    { name = Core.Nothing,
      number = Core.Nothing,
      options = Core.Nothing
    }

instance Core.FromJSON EnumValue where
  parseJSON =
    Core.withObject
      "EnumValue"
      ( \o ->
          EnumValue
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "number")
            Core.<*> (o Core..:? "options")
      )

instance Core.ToJSON EnumValue where
  toJSON EnumValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("number" Core..=) Core.<$> number,
            ("options" Core..=) Core.<$> options
          ]
      )

-- | Experimental features to be included during client library generation. These fields will be deprecated once the feature graduates and is enabled by default.
--
-- /See:/ 'newExperimentalFeatures' smart constructor.
data ExperimentalFeatures = ExperimentalFeatures
  { -- | Enables generation of protobuf code using new types that are more Pythonic which are included in @protobuf>=5.29.x@. This feature will be enabled by default 1 month after launching the feature in preview packages.
    protobufPythonicTypesEnabled :: (Core.Maybe Core.Bool),
    -- | Enables generation of asynchronous REST clients if @rest@ transport is enabled. By default, asynchronous REST clients will not be generated. This feature will be enabled by default 1 month after launching the feature in preview packages.
    restAsyncIoEnabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExperimentalFeatures' with the minimum fields required to make a request.
newExperimentalFeatures ::
  ExperimentalFeatures
newExperimentalFeatures =
  ExperimentalFeatures
    { protobufPythonicTypesEnabled = Core.Nothing,
      restAsyncIoEnabled = Core.Nothing
    }

instance Core.FromJSON ExperimentalFeatures where
  parseJSON =
    Core.withObject
      "ExperimentalFeatures"
      ( \o ->
          ExperimentalFeatures
            Core.<$> (o Core..:? "protobufPythonicTypesEnabled")
            Core.<*> (o Core..:? "restAsyncIoEnabled")
      )

instance Core.ToJSON ExperimentalFeatures where
  toJSON ExperimentalFeatures {..} =
    Core.object
      ( Core.catMaybes
          [ ("protobufPythonicTypesEnabled" Core..=)
              Core.<$> protobufPythonicTypesEnabled,
            ("restAsyncIoEnabled" Core..=) Core.<$> restAsyncIoEnabled
          ]
      )

-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newExpr' smart constructor.
data Expr = Expr
  { -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
    description :: (Core.Maybe Core.Text),
    -- | Textual representation of an expression in Common Expression Language syntax.
    expression :: (Core.Maybe Core.Text),
    -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    location :: (Core.Maybe Core.Text),
    -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
newExpr ::
  Expr
newExpr =
  Expr
    { description = Core.Nothing,
      expression = Core.Nothing,
      location = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Expr where
  parseJSON =
    Core.withObject
      "Expr"
      ( \o ->
          Expr
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Expr where
  toJSON Expr {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("expression" Core..=) Core.<$> expression,
            ("location" Core..=) Core.<$> location,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A single field of a message type.
--
-- /See:/ 'newField' smart constructor.
data Field = Field
  { -- | The field cardinality.
    cardinality :: (Core.Maybe Field_Cardinality),
    -- | The string value of the default value of this field. Proto2 syntax only.
    defaultValue :: (Core.Maybe Core.Text),
    -- | The field JSON name.
    jsonName :: (Core.Maybe Core.Text),
    -- | The field type.
    kind :: (Core.Maybe Field_Kind),
    -- | The field name.
    name :: (Core.Maybe Core.Text),
    -- | The field number.
    number :: (Core.Maybe Core.Int32),
    -- | The index of the field type in @Type.oneofs@, for message or enumeration types. The first type has index 1; zero means the type is not in the list.
    oneofIndex :: (Core.Maybe Core.Int32),
    -- | The protocol buffer options.
    options :: (Core.Maybe [Option]),
    -- | Whether to use alternative packed wire representation.
    packed :: (Core.Maybe Core.Bool),
    -- | The field type URL, without the scheme, for message or enumeration types. Example: @\"type.googleapis.com\/google.protobuf.Timestamp\"@.
    typeUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Field' with the minimum fields required to make a request.
newField ::
  Field
newField =
  Field
    { cardinality = Core.Nothing,
      defaultValue = Core.Nothing,
      jsonName = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      number = Core.Nothing,
      oneofIndex = Core.Nothing,
      options = Core.Nothing,
      packed = Core.Nothing,
      typeUrl = Core.Nothing
    }

instance Core.FromJSON Field where
  parseJSON =
    Core.withObject
      "Field"
      ( \o ->
          Field
            Core.<$> (o Core..:? "cardinality")
            Core.<*> (o Core..:? "defaultValue")
            Core.<*> (o Core..:? "jsonName")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "number")
            Core.<*> (o Core..:? "oneofIndex")
            Core.<*> (o Core..:? "options")
            Core.<*> (o Core..:? "packed")
            Core.<*> (o Core..:? "typeUrl")
      )

instance Core.ToJSON Field where
  toJSON Field {..} =
    Core.object
      ( Core.catMaybes
          [ ("cardinality" Core..=) Core.<$> cardinality,
            ("defaultValue" Core..=) Core.<$> defaultValue,
            ("jsonName" Core..=) Core.<$> jsonName,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("number" Core..=) Core.<$> number,
            ("oneofIndex" Core..=) Core.<$> oneofIndex,
            ("options" Core..=) Core.<$> options,
            ("packed" Core..=) Core.<$> packed,
            ("typeUrl" Core..=) Core.<$> typeUrl
          ]
      )

-- | Google API Policy Annotation This message defines a simple API policy annotation that can be used to annotate API request and response message fields with applicable policies. One field may have multiple applicable policies that must all be satisfied before a request can be processed. This policy annotation is used to generate the overall policy that will be used for automatic runtime policy enforcement and documentation generation.
--
-- /See:/ 'newFieldPolicy' smart constructor.
data FieldPolicy = FieldPolicy
  { -- | Specifies the required permission(s) for the resource referred to by the field. It requires the field contains a valid resource reference, and the request must pass the permission checks to proceed. For example, \"resourcemanager.projects.get\".
    resourcePermission :: (Core.Maybe Core.Text),
    -- | Specifies the resource type for the resource referred to by the field.
    resourceType :: (Core.Maybe Core.Text),
    -- | Selects one or more request or response message fields to apply this @FieldPolicy@. When a @FieldPolicy@ is used in proto annotation, the selector must be left as empty. The service config generator will automatically fill the correct value. When a @FieldPolicy@ is used in service config, the selector must be a comma-separated string with valid request or response field paths, such as \"foo.bar\" or \"foo.bar,foo.baz\".
    selector :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FieldPolicy' with the minimum fields required to make a request.
newFieldPolicy ::
  FieldPolicy
newFieldPolicy =
  FieldPolicy
    { resourcePermission = Core.Nothing,
      resourceType = Core.Nothing,
      selector = Core.Nothing
    }

instance Core.FromJSON FieldPolicy where
  parseJSON =
    Core.withObject
      "FieldPolicy"
      ( \o ->
          FieldPolicy
            Core.<$> (o Core..:? "resourcePermission")
            Core.<*> (o Core..:? "resourceType")
            Core.<*> (o Core..:? "selector")
      )

instance Core.ToJSON FieldPolicy where
  toJSON FieldPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("resourcePermission" Core..=) Core.<$> resourcePermission,
            ("resourceType" Core..=) Core.<$> resourceType,
            ("selector" Core..=) Core.<$> selector
          ]
      )

-- | Encapsulation of flow-specific error details for debugging. Used as a details field on an error Status, not intended for external use.
--
-- /See:/ 'newFlowErrorDetails' smart constructor.
data FlowErrorDetails = FlowErrorDetails
  { -- | The type of exception (as a class name).
    exceptionType :: (Core.Maybe Core.Text),
    -- | The step that failed.
    flowStepId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FlowErrorDetails' with the minimum fields required to make a request.
newFlowErrorDetails ::
  FlowErrorDetails
newFlowErrorDetails =
  FlowErrorDetails
    { exceptionType = Core.Nothing,
      flowStepId = Core.Nothing
    }

instance Core.FromJSON FlowErrorDetails where
  parseJSON =
    Core.withObject
      "FlowErrorDetails"
      ( \o ->
          FlowErrorDetails
            Core.<$> (o Core..:? "exceptionType")
            Core.<*> (o Core..:? "flowStepId")
      )

instance Core.ToJSON FlowErrorDetails where
  toJSON FlowErrorDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("exceptionType" Core..=) Core.<$> exceptionType,
            ("flowStepId" Core..=) Core.<$> flowStepId
          ]
      )

-- | Request message for GenerateConfigReport method.
--
-- /See:/ 'newGenerateConfigReportRequest' smart constructor.
data GenerateConfigReportRequest = GenerateConfigReportRequest
  { -- | Required. Service configuration for which we want to generate the report. For this version of API, the supported types are google.api.servicemanagement.v1.ConfigRef, google.api.servicemanagement.v1.ConfigSource, and google.api.Service
    newConfig' :: (Core.Maybe GenerateConfigReportRequest_NewConfig),
    -- | Optional. Service configuration against which the comparison will be done. For this version of API, the supported types are google.api.servicemanagement.v1.ConfigRef, google.api.servicemanagement.v1.ConfigSource, and google.api.Service
    oldConfig :: (Core.Maybe GenerateConfigReportRequest_OldConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateConfigReportRequest' with the minimum fields required to make a request.
newGenerateConfigReportRequest ::
  GenerateConfigReportRequest
newGenerateConfigReportRequest =
  GenerateConfigReportRequest
    { newConfig' = Core.Nothing,
      oldConfig = Core.Nothing
    }

instance Core.FromJSON GenerateConfigReportRequest where
  parseJSON =
    Core.withObject
      "GenerateConfigReportRequest"
      ( \o ->
          GenerateConfigReportRequest
            Core.<$> (o Core..:? "newConfig")
            Core.<*> (o Core..:? "oldConfig")
      )

instance Core.ToJSON GenerateConfigReportRequest where
  toJSON GenerateConfigReportRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("newConfig" Core..=) Core.<$> newConfig',
            ("oldConfig" Core..=) Core.<$> oldConfig
          ]
      )

-- | Required. Service configuration for which we want to generate the report. For this version of API, the supported types are google.api.servicemanagement.v1.ConfigRef, google.api.servicemanagement.v1.ConfigSource, and google.api.Service
--
-- /See:/ 'newGenerateConfigReportRequest_NewConfig' smart constructor.
newtype GenerateConfigReportRequest_NewConfig = GenerateConfigReportRequest_NewConfig
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateConfigReportRequest_NewConfig' with the minimum fields required to make a request.
newGenerateConfigReportRequest_NewConfig ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GenerateConfigReportRequest_NewConfig
newGenerateConfigReportRequest_NewConfig additional =
  GenerateConfigReportRequest_NewConfig {additional = additional}

instance Core.FromJSON GenerateConfigReportRequest_NewConfig where
  parseJSON =
    Core.withObject
      "GenerateConfigReportRequest_NewConfig"
      ( \o ->
          GenerateConfigReportRequest_NewConfig
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GenerateConfigReportRequest_NewConfig where
  toJSON GenerateConfigReportRequest_NewConfig {..} =
    Core.toJSON additional

-- | Optional. Service configuration against which the comparison will be done. For this version of API, the supported types are google.api.servicemanagement.v1.ConfigRef, google.api.servicemanagement.v1.ConfigSource, and google.api.Service
--
-- /See:/ 'newGenerateConfigReportRequest_OldConfig' smart constructor.
newtype GenerateConfigReportRequest_OldConfig = GenerateConfigReportRequest_OldConfig
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateConfigReportRequest_OldConfig' with the minimum fields required to make a request.
newGenerateConfigReportRequest_OldConfig ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GenerateConfigReportRequest_OldConfig
newGenerateConfigReportRequest_OldConfig additional =
  GenerateConfigReportRequest_OldConfig {additional = additional}

instance Core.FromJSON GenerateConfigReportRequest_OldConfig where
  parseJSON =
    Core.withObject
      "GenerateConfigReportRequest_OldConfig"
      ( \o ->
          GenerateConfigReportRequest_OldConfig
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GenerateConfigReportRequest_OldConfig where
  toJSON GenerateConfigReportRequest_OldConfig {..} =
    Core.toJSON additional

-- | Response message for GenerateConfigReport method.
--
-- /See:/ 'newGenerateConfigReportResponse' smart constructor.
data GenerateConfigReportResponse = GenerateConfigReportResponse
  { -- | list of ChangeReport, each corresponding to comparison between two service configurations.
    changeReports :: (Core.Maybe [ChangeReport]),
    -- | Errors \/ Linter warnings associated with the service definition this report belongs to.
    diagnostics :: (Core.Maybe [Diagnostic]),
    -- | ID of the service configuration this report belongs to.
    id :: (Core.Maybe Core.Text),
    -- | Name of the service this report belongs to.
    serviceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateConfigReportResponse' with the minimum fields required to make a request.
newGenerateConfigReportResponse ::
  GenerateConfigReportResponse
newGenerateConfigReportResponse =
  GenerateConfigReportResponse
    { changeReports = Core.Nothing,
      diagnostics = Core.Nothing,
      id = Core.Nothing,
      serviceName = Core.Nothing
    }

instance Core.FromJSON GenerateConfigReportResponse where
  parseJSON =
    Core.withObject
      "GenerateConfigReportResponse"
      ( \o ->
          GenerateConfigReportResponse
            Core.<$> (o Core..:? "changeReports")
            Core.<*> (o Core..:? "diagnostics")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "serviceName")
      )

instance Core.ToJSON GenerateConfigReportResponse where
  toJSON GenerateConfigReportResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("changeReports" Core..=) Core.<$> changeReports,
            ("diagnostics" Core..=) Core.<$> diagnostics,
            ("id" Core..=) Core.<$> id,
            ("serviceName" Core..=) Core.<$> serviceName
          ]
      )

-- | Request message for @GetIamPolicy@ method.
--
-- /See:/ 'newGetIamPolicyRequest' smart constructor.
newtype GetIamPolicyRequest = GetIamPolicyRequest
  { -- | OPTIONAL: A @GetPolicyOptions@ object for specifying options to @GetIamPolicy@.
    options :: (Core.Maybe GetPolicyOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetIamPolicyRequest' with the minimum fields required to make a request.
newGetIamPolicyRequest ::
  GetIamPolicyRequest
newGetIamPolicyRequest =
  GetIamPolicyRequest {options = Core.Nothing}

instance Core.FromJSON GetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "GetIamPolicyRequest"
      (\o -> GetIamPolicyRequest Core.<$> (o Core..:? "options"))

instance Core.ToJSON GetIamPolicyRequest where
  toJSON GetIamPolicyRequest {..} =
    Core.object
      (Core.catMaybes [("options" Core..=) Core.<$> options])

-- | Encapsulates settings provided to GetIamPolicy.
--
-- /See:/ 'newGetPolicyOptions' smart constructor.
newtype GetPolicyOptions = GetPolicyOptions
  { -- | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    requestedPolicyVersion :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetPolicyOptions' with the minimum fields required to make a request.
newGetPolicyOptions ::
  GetPolicyOptions
newGetPolicyOptions =
  GetPolicyOptions {requestedPolicyVersion = Core.Nothing}

instance Core.FromJSON GetPolicyOptions where
  parseJSON =
    Core.withObject
      "GetPolicyOptions"
      ( \o ->
          GetPolicyOptions Core.<$> (o Core..:? "requestedPolicyVersion")
      )

instance Core.ToJSON GetPolicyOptions where
  toJSON GetPolicyOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("requestedPolicyVersion" Core..=)
              Core.<$> requestedPolicyVersion
          ]
      )

-- | Settings for Go client libraries.
--
-- /See:/ 'newGoSettings' smart constructor.
data GoSettings = GoSettings
  { -- | Some settings.
    common :: (Core.Maybe CommonLanguageSettings),
    -- | Map of service names to renamed services. Keys are the package relative service names and values are the name to be used for the service client and call options. publishing: go/settings: renamed/services: Publisher: TopicAdmin
    renamedServices :: (Core.Maybe GoSettings_RenamedServices)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoSettings' with the minimum fields required to make a request.
newGoSettings ::
  GoSettings
newGoSettings =
  GoSettings {common = Core.Nothing, renamedServices = Core.Nothing}

instance Core.FromJSON GoSettings where
  parseJSON =
    Core.withObject
      "GoSettings"
      ( \o ->
          GoSettings
            Core.<$> (o Core..:? "common")
            Core.<*> (o Core..:? "renamedServices")
      )

instance Core.ToJSON GoSettings where
  toJSON GoSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("common" Core..=) Core.<$> common,
            ("renamedServices" Core..=) Core.<$> renamedServices
          ]
      )

-- | Map of service names to renamed services. Keys are the package relative service names and values are the name to be used for the service client and call options. publishing: go/settings: renamed/services: Publisher: TopicAdmin
--
-- /See:/ 'newGoSettings_RenamedServices' smart constructor.
newtype GoSettings_RenamedServices = GoSettings_RenamedServices
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoSettings_RenamedServices' with the minimum fields required to make a request.
newGoSettings_RenamedServices ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoSettings_RenamedServices
newGoSettings_RenamedServices additional =
  GoSettings_RenamedServices {additional = additional}

instance Core.FromJSON GoSettings_RenamedServices where
  parseJSON =
    Core.withObject
      "GoSettings_RenamedServices"
      ( \o ->
          GoSettings_RenamedServices Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GoSettings_RenamedServices where
  toJSON GoSettings_RenamedServices {..} = Core.toJSON additional

-- | Defines the HTTP configuration for an API service. It contains a list of HttpRule, each specifying the mapping of an RPC method to one or more HTTP REST API methods.
--
-- /See:/ 'newHttp' smart constructor.
data Http = Http
  { -- | When set to true, URL path parameters will be fully URI-decoded except in cases of single segment matches in reserved expansion, where \"%2F\" will be left encoded. The default behavior is to not decode RFC 6570 reserved characters in multi segment matches.
    fullyDecodeReservedExpansion :: (Core.Maybe Core.Bool),
    -- | A list of HTTP configuration rules that apply to individual API methods. __NOTE:__ All service configuration rules follow \"last one wins\" order.
    rules :: (Core.Maybe [HttpRule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Http' with the minimum fields required to make a request.
newHttp ::
  Http
newHttp =
  Http
    { fullyDecodeReservedExpansion = Core.Nothing,
      rules = Core.Nothing
    }

instance Core.FromJSON Http where
  parseJSON =
    Core.withObject
      "Http"
      ( \o ->
          Http
            Core.<$> (o Core..:? "fullyDecodeReservedExpansion")
            Core.<*> (o Core..:? "rules")
      )

instance Core.ToJSON Http where
  toJSON Http {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullyDecodeReservedExpansion" Core..=)
              Core.<$> fullyDecodeReservedExpansion,
            ("rules" Core..=) Core.<$> rules
          ]
      )

-- | gRPC Transcoding gRPC Transcoding is a feature for mapping between a gRPC method and one or more HTTP REST endpoints. It allows developers to build a single API service that supports both gRPC APIs and REST APIs. Many systems, including <https://github.com/googleapis/googleapis Google APIs>, <https://cloud.google.com/endpoints Cloud Endpoints>, <https://github.com/grpc-ecosystem/grpc-gateway gRPC Gateway>, and <https://github.com/envoyproxy/envoy Envoy> proxy support this feature and use it for large scale production services. @HttpRule@ defines the schema of the gRPC\/REST mapping. The mapping specifies how different portions of the gRPC request message are mapped to the URL path, URL query parameters, and HTTP request body. It also controls how the gRPC response message is mapped to the HTTP response body. @HttpRule@ is typically specified as an @google.api.http@ annotation on the gRPC method. Each mapping specifies a URL path template and an HTTP method. The path template may refer to one or more fields in
-- the gRPC request message, as long as each field is a non-repeated field with a primitive (non-message) type. The path template controls how fields of the request message are mapped to the URL path. Example: service Messaging { rpc GetMessage(GetMessageRequest) returns (Message) { option (google.api.http) = { get: \"\/v1\/{name=messages\/*}\" }; } } message GetMessageRequest { string name = 1; \/\/ Mapped to URL path. } message Message { string text = 1; \/\/ The resource content. } This enables an HTTP REST to gRPC mapping as below: - HTTP: @GET \/v1\/messages\/123456@ - gRPC: @GetMessage(name: \"messages\/123456\")@ Any fields in the request message which are not bound by the path template automatically become HTTP query parameters if there is no HTTP request body. For example: service Messaging { rpc GetMessage(GetMessageRequest) returns (Message) { option (google.api.http) = { get:\"\/v1\/messages\/{message/id}\" }; } } message GetMessageRequest { message SubMessage { string subfield = 1; } string
-- message/id = 1; \/\/ Mapped to URL path. int64 revision = 2; \/\/ Mapped to URL query parameter @revision@. SubMessage sub = 3; \/\/ Mapped to URL query parameter @sub.subfield@. } This enables a HTTP JSON to RPC mapping as below: - HTTP: @GET \/v1\/messages\/123456?revision=2&sub.subfield=foo@ - gRPC: @GetMessage(message_id: \"123456\" revision: 2 sub: SubMessage(subfield: \"foo\"))@ Note that fields which are mapped to URL query parameters must have a primitive type or a repeated primitive type or a non-repeated message type. In the case of a repeated type, the parameter can be repeated in the URL as @...?param=A&param=B@. In the case of a message type, each field of the message is mapped to a separate parameter, such as @...?foo.a=A&foo.b=B&foo.c=C@. For HTTP methods that allow a request body, the @body@ field specifies the mapping. Consider a REST update method on the message resource collection: service Messaging { rpc UpdateMessage(UpdateMessageRequest) returns (Message) { option (google.api.http) = {
-- patch: \"\/v1\/messages\/{message/id}\" body: \"message\" }; } } message UpdateMessageRequest { string message/id = 1; \/\/ mapped to the URL Message message = 2; \/\/ mapped to the body } The following HTTP JSON to RPC mapping is enabled, where the representation of the JSON in the request body is determined by protos JSON encoding: - HTTP: @PATCH \/v1\/messages\/123456 { \"text\": \"Hi!\" }@ - gRPC: @UpdateMessage(message_id: \"123456\" message { text: \"Hi!\" })@ The special name @*@ can be used in the body mapping to define that every field not bound by the path template should be mapped to the request body. This enables the following alternative definition of the update method: service Messaging { rpc UpdateMessage(Message) returns (Message) { option (google.api.http) = { patch: \"\/v1\/messages\/{message_id}\" body: \"*\" }; } } message Message { string message/id = 1; string text = 2; } The following HTTP JSON to RPC mapping is enabled: - HTTP: @PATCH \/v1\/messages\/123456 { \"text\": \"Hi!\" }@ -
-- gRPC: @UpdateMessage(message_id: \"123456\" text: \"Hi!\")@ Note that when using @*@ in the body mapping, it is not possible to have HTTP parameters, as all fields not bound by the path end in the body. This makes this option more rarely used in practice when defining REST APIs. The common usage of @*@ is in custom methods which don\'t use the URL at all for transferring data. It is possible to define multiple HTTP methods for one RPC by using the @additional_bindings@ option. Example: service Messaging { rpc GetMessage(GetMessageRequest) returns (Message) { option (google.api.http) = { get: \"\/v1\/messages\/{message/id}\" additional/bindings { get: \"\/v1\/users\/{user/id}\/messages\/{message/id}\" } }; } } message GetMessageRequest { string message/id = 1; string user_id = 2; } This enables the following two alternative HTTP JSON to RPC mappings: - HTTP: @GET \/v1\/messages\/123456@ - gRPC: @GetMessage(message_id: \"123456\")@ - HTTP: @GET \/v1\/users\/me\/messages\/123456@ - gRPC:
-- @GetMessage(user_id: \"me\" message_id: \"123456\")@ Rules for HTTP mapping 1. Leaf request fields (recursive expansion nested messages in the request message) are classified into three categories: - Fields referred by the path template. They are passed via the URL path. - Fields referred by the HttpRule.body. They are passed via the HTTP request body. - All other fields are passed via the URL query parameters, and the parameter name is the field path in the request message. A repeated field can be represented as multiple query parameters under the same name. 2. If HttpRule.body is \"/\", there is no URL query parameter, all fields are passed via URL path and HTTP request body. 3. If HttpRule.body is omitted, there is no HTTP request body, all fields are passed via URL path and URL query parameters. Path template syntax Template = \"\/\" Segments [ Verb ] ; Segments = Segment { \"\/\" Segment } ; Segment = \"/\" | \"**\" | LITERAL | Variable ; Variable = \"{\" FieldPath [ \"=\" Segments ] \"}\" ; FieldPath =
-- IDENT { \".\" IDENT } ; Verb = \":\" LITERAL ; The syntax @*@ matches a single URL path segment. The syntax @**@ matches zero or more URL path segments, which must be the last part of the URL path except the @Verb@. The syntax @Variable@ matches part of the URL path as specified by its template. A variable template must not contain other variables. If a variable matches a single path segment, its template may be omitted, e.g. @{var}@ is equivalent to @{var=*}@. The syntax @LITERAL@ matches literal text in the URL path. If the @LITERAL@ contains any reserved character, such characters should be percent-encoded before the matching. If a variable contains exactly one path segment, such as @\"{var}\"@ or @\"{var=*}\"@, when such a variable is expanded into a URL path on the client side, all characters except @[-_.~0-9a-zA-Z]@ are percent-encoded. The server side does the reverse decoding. Such variables show up in the <https://developers.google.com/discovery/v1/reference/apis Discovery Document> as @{var}@. If a
-- variable contains multiple path segments, such as @\"{var=foo\/*}\"@ or @\"{var=**}\"@, when such a variable is expanded into a URL path on the client side, all characters except @[-_.~\/0-9a-zA-Z]@ are percent-encoded. The server side does the reverse decoding, except \"%2F\" and \"%2f\" are left unchanged. Such variables show up in the <https://developers.google.com/discovery/v1/reference/apis Discovery Document> as @{+var}@. Using gRPC API Service Configuration gRPC API Service Configuration (service config) is a configuration language for configuring a gRPC service to become a user-facing product. The service config is simply the YAML representation of the @google.api.Service@ proto message. As an alternative to annotating your proto file, you can configure gRPC transcoding in your service config YAML files. You do this by specifying a @HttpRule@ that maps the gRPC method to a REST endpoint, achieving the same effect as the proto annotation. This can be particularly useful if you have a proto that is
-- reused in multiple services. Note that any transcoding specified in the service config will override any matching transcoding configuration in the proto. The following example selects a gRPC method and applies an @HttpRule@ to it: http: rules: - selector: example.v1.Messaging.GetMessage get: \/v1\/messages\/{message_id}\/{sub.subfield} Special notes When gRPC Transcoding is used to map a gRPC to JSON REST endpoints, the proto to JSON conversion must follow the <https://developers.google.com/protocol-buffers/docs/proto3#json proto3 specification>. While the single segment variable follows the semantics of <https://tools.ietf.org/html/rfc6570 RFC 6570> Section 3.2.2 Simple String Expansion, the multi segment variable __does not__ follow RFC 6570 Section 3.2.3 Reserved Expansion. The reason is that the Reserved Expansion does not expand special characters like @?@ and @#@, which would lead to invalid URLs. As the result, gRPC Transcoding uses a custom encoding for multi segment variables. The path variables
-- __must not__ refer to any repeated or mapped field, because client libraries are not capable of handling such variable expansion. The path variables __must not__ capture the leading \"\/\" character. The reason is that the most common use case \"{var}\" does not capture the leading \"\/\" character. For consistency, all path variables must share the same behavior. Repeated message fields must not be mapped to URL query parameters, because no client library can support such complicated mapping. If an API needs to use a JSON array for request or response body, it can map the request or response body to a repeated field. However, some gRPC Transcoding implementations may not support this feature.
--
-- /See:/ 'newHttpRule' smart constructor.
data HttpRule = HttpRule
  { -- | Additional HTTP bindings for the selector. Nested bindings must not contain an @additional_bindings@ field themselves (that is, the nesting may only be one level deep).
    additionalBindings :: (Core.Maybe [HttpRule]),
    -- | The name of the request field whose value is mapped to the HTTP request body, or @*@ for mapping all request fields not captured by the path pattern to the HTTP body, or omitted for not having any HTTP request body. NOTE: the referred field must be present at the top-level of the request message type.
    body :: (Core.Maybe Core.Text),
    -- | The custom pattern is used for specifying an HTTP method that is not included in the @pattern@ field, such as HEAD, or \"*\" to leave the HTTP method unspecified for this rule. The wild-card rule is useful for services that provide content to Web (HTML) clients.
    custom :: (Core.Maybe CustomHttpPattern),
    -- | Maps to HTTP DELETE. Used for deleting a resource.
    delete :: (Core.Maybe Core.Text),
    -- | Maps to HTTP GET. Used for listing and getting information about resources.
    get :: (Core.Maybe Core.Text),
    -- | Maps to HTTP PATCH. Used for updating a resource.
    patch :: (Core.Maybe Core.Text),
    -- | Maps to HTTP POST. Used for creating a resource or performing an action.
    post :: (Core.Maybe Core.Text),
    -- | Maps to HTTP PUT. Used for replacing a resource.
    put :: (Core.Maybe Core.Text),
    -- | Optional. The name of the response field whose value is mapped to the HTTP response body. When omitted, the entire response message will be used as the HTTP response body. NOTE: The referred field must be present at the top-level of the response message type.
    responseBody :: (Core.Maybe Core.Text),
    -- | Selects a method to which this rule applies. Refer to selector for syntax details.
    selector :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpRule' with the minimum fields required to make a request.
newHttpRule ::
  HttpRule
newHttpRule =
  HttpRule
    { additionalBindings = Core.Nothing,
      body = Core.Nothing,
      custom = Core.Nothing,
      delete = Core.Nothing,
      get = Core.Nothing,
      patch = Core.Nothing,
      post = Core.Nothing,
      put = Core.Nothing,
      responseBody = Core.Nothing,
      selector = Core.Nothing
    }

instance Core.FromJSON HttpRule where
  parseJSON =
    Core.withObject
      "HttpRule"
      ( \o ->
          HttpRule
            Core.<$> (o Core..:? "additionalBindings")
            Core.<*> (o Core..:? "body")
            Core.<*> (o Core..:? "custom")
            Core.<*> (o Core..:? "delete")
            Core.<*> (o Core..:? "get")
            Core.<*> (o Core..:? "patch")
            Core.<*> (o Core..:? "post")
            Core.<*> (o Core..:? "put")
            Core.<*> (o Core..:? "responseBody")
            Core.<*> (o Core..:? "selector")
      )

instance Core.ToJSON HttpRule where
  toJSON HttpRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalBindings" Core..=) Core.<$> additionalBindings,
            ("body" Core..=) Core.<$> body,
            ("custom" Core..=) Core.<$> custom,
            ("delete" Core..=) Core.<$> delete,
            ("get" Core..=) Core.<$> get,
            ("patch" Core..=) Core.<$> patch,
            ("post" Core..=) Core.<$> post,
            ("put" Core..=) Core.<$> put,
            ("responseBody" Core..=) Core.<$> responseBody,
            ("selector" Core..=) Core.<$> selector
          ]
      )

-- | Settings for Java client libraries.
--
-- /See:/ 'newJavaSettings' smart constructor.
data JavaSettings = JavaSettings
  { -- | Some settings.
    common :: (Core.Maybe CommonLanguageSettings),
    -- | The package name to use in Java. Clobbers the java/package option set in the protobuf. This should be used __only__ by APIs who have already set the language/settings.java.package/name\" field in gapic.yaml. API teams should use the protobuf java/package option where possible. Example of a YAML configuration:: publishing: java/settings: library/package: com.google.cloud.pubsub.v1
    libraryPackage :: (Core.Maybe Core.Text),
    -- | Configure the Java class name to use instead of the service\'s for its corresponding generated GAPIC client. Keys are fully-qualified service names as they appear in the protobuf (including the full the language/settings.java.interface/names\" field in gapic.yaml. API teams should otherwise use the service name as it appears in the protobuf. Example of a YAML configuration:: publishing: java/settings: service/class_names: - google.pubsub.v1.Publisher: TopicAdmin - google.pubsub.v1.Subscriber: SubscriptionAdmin
    serviceClassNames :: (Core.Maybe JavaSettings_ServiceClassNames)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JavaSettings' with the minimum fields required to make a request.
newJavaSettings ::
  JavaSettings
newJavaSettings =
  JavaSettings
    { common = Core.Nothing,
      libraryPackage = Core.Nothing,
      serviceClassNames = Core.Nothing
    }

instance Core.FromJSON JavaSettings where
  parseJSON =
    Core.withObject
      "JavaSettings"
      ( \o ->
          JavaSettings
            Core.<$> (o Core..:? "common")
            Core.<*> (o Core..:? "libraryPackage")
            Core.<*> (o Core..:? "serviceClassNames")
      )

instance Core.ToJSON JavaSettings where
  toJSON JavaSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("common" Core..=) Core.<$> common,
            ("libraryPackage" Core..=) Core.<$> libraryPackage,
            ("serviceClassNames" Core..=) Core.<$> serviceClassNames
          ]
      )

-- | Configure the Java class name to use instead of the service\'s for its corresponding generated GAPIC client. Keys are fully-qualified service names as they appear in the protobuf (including the full the language/settings.java.interface/names\" field in gapic.yaml. API teams should otherwise use the service name as it appears in the protobuf. Example of a YAML configuration:: publishing: java/settings: service/class_names: - google.pubsub.v1.Publisher: TopicAdmin - google.pubsub.v1.Subscriber: SubscriptionAdmin
--
-- /See:/ 'newJavaSettings_ServiceClassNames' smart constructor.
newtype JavaSettings_ServiceClassNames = JavaSettings_ServiceClassNames
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JavaSettings_ServiceClassNames' with the minimum fields required to make a request.
newJavaSettings_ServiceClassNames ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  JavaSettings_ServiceClassNames
newJavaSettings_ServiceClassNames additional =
  JavaSettings_ServiceClassNames {additional = additional}

instance Core.FromJSON JavaSettings_ServiceClassNames where
  parseJSON =
    Core.withObject
      "JavaSettings_ServiceClassNames"
      ( \o ->
          JavaSettings_ServiceClassNames Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON JavaSettings_ServiceClassNames where
  toJSON JavaSettings_ServiceClassNames {..} = Core.toJSON additional

-- | Specifies a location to extract JWT from an API request.
--
-- /See:/ 'newJwtLocation' smart constructor.
data JwtLocation = JwtLocation
  { -- | Specifies cookie name to extract JWT token.
    cookie :: (Core.Maybe Core.Text),
    -- | Specifies HTTP header name to extract JWT token.
    header :: (Core.Maybe Core.Text),
    -- | Specifies URL query parameter name to extract JWT token.
    query :: (Core.Maybe Core.Text),
    -- | The value prefix. The value format is \"value/prefix{token}\" Only applies to \"in\" header type. Must be empty for \"in\" query type. If not empty, the header value has to match (case sensitive) this prefix. If not matched, JWT will not be extracted. If matched, JWT will be extracted after the prefix is removed. For example, for \"Authorization: Bearer {JWT}\", value/prefix=\"Bearer \" with a space at the end.
    valuePrefix :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JwtLocation' with the minimum fields required to make a request.
newJwtLocation ::
  JwtLocation
newJwtLocation =
  JwtLocation
    { cookie = Core.Nothing,
      header = Core.Nothing,
      query = Core.Nothing,
      valuePrefix = Core.Nothing
    }

instance Core.FromJSON JwtLocation where
  parseJSON =
    Core.withObject
      "JwtLocation"
      ( \o ->
          JwtLocation
            Core.<$> (o Core..:? "cookie")
            Core.<*> (o Core..:? "header")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "valuePrefix")
      )

instance Core.ToJSON JwtLocation where
  toJSON JwtLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("cookie" Core..=) Core.<$> cookie,
            ("header" Core..=) Core.<$> header,
            ("query" Core..=) Core.<$> query,
            ("valuePrefix" Core..=) Core.<$> valuePrefix
          ]
      )

-- | A description of a label.
--
-- /See:/ 'newLabelDescriptor' smart constructor.
data LabelDescriptor = LabelDescriptor
  { -- | A human-readable description for the label.
    description :: (Core.Maybe Core.Text),
    -- | The label key.
    key :: (Core.Maybe Core.Text),
    -- | The type of data that can be assigned to the label.
    valueType :: (Core.Maybe LabelDescriptor_ValueType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LabelDescriptor' with the minimum fields required to make a request.
newLabelDescriptor ::
  LabelDescriptor
newLabelDescriptor =
  LabelDescriptor
    { description = Core.Nothing,
      key = Core.Nothing,
      valueType = Core.Nothing
    }

instance Core.FromJSON LabelDescriptor where
  parseJSON =
    Core.withObject
      "LabelDescriptor"
      ( \o ->
          LabelDescriptor
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "valueType")
      )

instance Core.ToJSON LabelDescriptor where
  toJSON LabelDescriptor {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("key" Core..=) Core.<$> key,
            ("valueType" Core..=) Core.<$> valueType
          ]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations")
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | Response message for ListServiceConfigs method.
--
-- /See:/ 'newListServiceConfigsResponse' smart constructor.
data ListServiceConfigsResponse = ListServiceConfigsResponse
  { -- | The token of the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of service configuration resources.
    serviceConfigs :: (Core.Maybe [Service])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListServiceConfigsResponse' with the minimum fields required to make a request.
newListServiceConfigsResponse ::
  ListServiceConfigsResponse
newListServiceConfigsResponse =
  ListServiceConfigsResponse
    { nextPageToken = Core.Nothing,
      serviceConfigs = Core.Nothing
    }

instance Core.FromJSON ListServiceConfigsResponse where
  parseJSON =
    Core.withObject
      "ListServiceConfigsResponse"
      ( \o ->
          ListServiceConfigsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "serviceConfigs")
      )

instance Core.ToJSON ListServiceConfigsResponse where
  toJSON ListServiceConfigsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("serviceConfigs" Core..=) Core.<$> serviceConfigs
          ]
      )

-- | Response message for ListServiceRollouts method.
--
-- /See:/ 'newListServiceRolloutsResponse' smart constructor.
data ListServiceRolloutsResponse = ListServiceRolloutsResponse
  { -- | The token of the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of rollout resources.
    rollouts :: (Core.Maybe [Rollout])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListServiceRolloutsResponse' with the minimum fields required to make a request.
newListServiceRolloutsResponse ::
  ListServiceRolloutsResponse
newListServiceRolloutsResponse =
  ListServiceRolloutsResponse
    { nextPageToken = Core.Nothing,
      rollouts = Core.Nothing
    }

instance Core.FromJSON ListServiceRolloutsResponse where
  parseJSON =
    Core.withObject
      "ListServiceRolloutsResponse"
      ( \o ->
          ListServiceRolloutsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "rollouts")
      )

instance Core.ToJSON ListServiceRolloutsResponse where
  toJSON ListServiceRolloutsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("rollouts" Core..=) Core.<$> rollouts
          ]
      )

-- | Response message for @ListServices@ method.
--
-- /See:/ 'newListServicesResponse' smart constructor.
data ListServicesResponse = ListServicesResponse
  { -- | Token that can be passed to @ListServices@ to resume a paginated query.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The returned services will only have the name field set.
    services :: (Core.Maybe [ManagedService])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListServicesResponse' with the minimum fields required to make a request.
newListServicesResponse ::
  ListServicesResponse
newListServicesResponse =
  ListServicesResponse
    { nextPageToken = Core.Nothing,
      services = Core.Nothing
    }

instance Core.FromJSON ListServicesResponse where
  parseJSON =
    Core.withObject
      "ListServicesResponse"
      ( \o ->
          ListServicesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "services")
      )

instance Core.ToJSON ListServicesResponse where
  toJSON ListServicesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("services" Core..=) Core.<$> services
          ]
      )

-- | A description of a log type. Example in YAML format: - name: library.googleapis.com\/activity/history description: The history of borrowing and returning library items. display/name: Activity labels: - key: \/customer_id description: Identifier of a library customer
--
-- /See:/ 'newLogDescriptor' smart constructor.
data LogDescriptor = LogDescriptor
  { -- | A human-readable description of this log. This information appears in the documentation and can contain details.
    description :: (Core.Maybe Core.Text),
    -- | The human-readable name for this log. This information appears on the user interface and should be concise.
    displayName :: (Core.Maybe Core.Text),
    -- | The set of labels that are available to describe a specific log entry. Runtime requests that contain labels not specified here are considered invalid.
    labels :: (Core.Maybe [LabelDescriptor]),
    -- | The name of the log. It must be less than 512 characters long and can include the following characters: upper- and lower-case alphanumeric characters [A-Za-z0-9], and punctuation characters including slash, underscore, hyphen, period [\/_-.].
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LogDescriptor' with the minimum fields required to make a request.
newLogDescriptor ::
  LogDescriptor
newLogDescriptor =
  LogDescriptor
    { description = Core.Nothing,
      displayName = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON LogDescriptor where
  parseJSON =
    Core.withObject
      "LogDescriptor"
      ( \o ->
          LogDescriptor
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON LogDescriptor where
  toJSON LogDescriptor {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Logging configuration of the service. The following example shows how to configure logs to be sent to the producer and consumer projects. In the example, the @activity_history@ log is sent to both the producer and consumer projects, whereas the @purchase_history@ log is only sent to the producer project. monitored/resources: - type: library.googleapis.com\/branch labels: - key: \/city description: The city where the library branch is located in. - key: \/name description: The name of the branch. logs: - name: activity/history labels: - key: \/customer/id - name: purchase/history logging: producer/destinations: - monitored/resource: library.googleapis.com\/branch logs: - activity/history - purchase/history consumer/destinations: - monitored/resource: library.googleapis.com\/branch logs: - activity_history
--
-- /See:/ 'newLogging' smart constructor.
data Logging = Logging
  { -- | Logging configurations for sending logs to the consumer project. There can be multiple consumer destinations, each one must have a different monitored resource type. A log can be used in at most one consumer destination.
    consumerDestinations :: (Core.Maybe [LoggingDestination]),
    -- | Logging configurations for sending logs to the producer project. There can be multiple producer destinations, each one must have a different monitored resource type. A log can be used in at most one producer destination.
    producerDestinations :: (Core.Maybe [LoggingDestination])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Logging' with the minimum fields required to make a request.
newLogging ::
  Logging
newLogging =
  Logging
    { consumerDestinations = Core.Nothing,
      producerDestinations = Core.Nothing
    }

instance Core.FromJSON Logging where
  parseJSON =
    Core.withObject
      "Logging"
      ( \o ->
          Logging
            Core.<$> (o Core..:? "consumerDestinations")
            Core.<*> (o Core..:? "producerDestinations")
      )

instance Core.ToJSON Logging where
  toJSON Logging {..} =
    Core.object
      ( Core.catMaybes
          [ ("consumerDestinations" Core..=) Core.<$> consumerDestinations,
            ("producerDestinations" Core..=) Core.<$> producerDestinations
          ]
      )

-- | Configuration of a specific logging destination (the producer project or the consumer project).
--
-- /See:/ 'newLoggingDestination' smart constructor.
data LoggingDestination = LoggingDestination
  { -- | Names of the logs to be sent to this destination. Each name must be defined in the Service.logs section. If the log name is not a domain scoped name, it will be automatically prefixed with the service name followed by \"\/\".
    logs :: (Core.Maybe [Core.Text]),
    -- | The monitored resource type. The type must be defined in the Service.monitored_resources section.
    monitoredResource :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingDestination' with the minimum fields required to make a request.
newLoggingDestination ::
  LoggingDestination
newLoggingDestination =
  LoggingDestination
    { logs = Core.Nothing,
      monitoredResource = Core.Nothing
    }

instance Core.FromJSON LoggingDestination where
  parseJSON =
    Core.withObject
      "LoggingDestination"
      ( \o ->
          LoggingDestination
            Core.<$> (o Core..:? "logs")
            Core.<*> (o Core..:? "monitoredResource")
      )

instance Core.ToJSON LoggingDestination where
  toJSON LoggingDestination {..} =
    Core.object
      ( Core.catMaybes
          [ ("logs" Core..=) Core.<$> logs,
            ("monitoredResource" Core..=) Core.<$> monitoredResource
          ]
      )

-- | Describes settings to use when generating API methods that use the long-running operation pattern. All default values below are from those used in the client library generators (e.g. <https://github.com/googleapis/gapic-generator-java/blob/04c2faa191a9b5a10b92392fe8482279c4404803/src/main/java/com/google/api/generator/gapic/composer/common/RetrySettingsComposer.java Java>).
--
-- /See:/ 'newLongRunning' smart constructor.
data LongRunning = LongRunning
  { -- | Initial delay after which the first poll request will be made. Default value: 5 seconds.
    initialPollDelay :: (Core.Maybe Core.Duration),
    -- | Maximum time between two subsequent poll requests. Default value: 45 seconds.
    maxPollDelay :: (Core.Maybe Core.Duration),
    -- | Multiplier to gradually increase delay between subsequent polls until it reaches max/poll/delay. Default value: 1.5.
    pollDelayMultiplier :: (Core.Maybe Core.Double),
    -- | Total polling timeout. Default value: 5 minutes.
    totalPollTimeout :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LongRunning' with the minimum fields required to make a request.
newLongRunning ::
  LongRunning
newLongRunning =
  LongRunning
    { initialPollDelay = Core.Nothing,
      maxPollDelay = Core.Nothing,
      pollDelayMultiplier = Core.Nothing,
      totalPollTimeout = Core.Nothing
    }

instance Core.FromJSON LongRunning where
  parseJSON =
    Core.withObject
      "LongRunning"
      ( \o ->
          LongRunning
            Core.<$> (o Core..:? "initialPollDelay")
            Core.<*> (o Core..:? "maxPollDelay")
            Core.<*> (o Core..:? "pollDelayMultiplier")
            Core.<*> (o Core..:? "totalPollTimeout")
      )

instance Core.ToJSON LongRunning where
  toJSON LongRunning {..} =
    Core.object
      ( Core.catMaybes
          [ ("initialPollDelay" Core..=) Core.<$> initialPollDelay,
            ("maxPollDelay" Core..=) Core.<$> maxPollDelay,
            ("pollDelayMultiplier" Core..=) Core.<$> pollDelayMultiplier,
            ("totalPollTimeout" Core..=) Core.<$> totalPollTimeout
          ]
      )

-- | The full representation of a Service that is managed by Google Service Management.
--
-- /See:/ 'newManagedService' smart constructor.
data ManagedService = ManagedService
  { -- | ID of the project that produces and owns this service.
    producerProjectId :: (Core.Maybe Core.Text),
    -- | The name of the service. See the <https://cloud.google.com/service-infrastructure/docs/overview overview> for naming requirements.
    serviceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedService' with the minimum fields required to make a request.
newManagedService ::
  ManagedService
newManagedService =
  ManagedService
    { producerProjectId = Core.Nothing,
      serviceName = Core.Nothing
    }

instance Core.FromJSON ManagedService where
  parseJSON =
    Core.withObject
      "ManagedService"
      ( \o ->
          ManagedService
            Core.<$> (o Core..:? "producerProjectId")
            Core.<*> (o Core..:? "serviceName")
      )

instance Core.ToJSON ManagedService where
  toJSON ManagedService {..} =
    Core.object
      ( Core.catMaybes
          [ ("producerProjectId" Core..=) Core.<$> producerProjectId,
            ("serviceName" Core..=) Core.<$> serviceName
          ]
      )

-- | Method represents a method of an API interface.
--
-- /See:/ 'newMethod' smart constructor.
data Method = Method
  { -- | The simple name of this method.
    name :: (Core.Maybe Core.Text),
    -- | Any metadata attached to the method.
    options :: (Core.Maybe [Option]),
    -- | If true, the request is streamed.
    requestStreaming :: (Core.Maybe Core.Bool),
    -- | A URL of the input message type.
    requestTypeUrl :: (Core.Maybe Core.Text),
    -- | If true, the response is streamed.
    responseStreaming :: (Core.Maybe Core.Bool),
    -- | The URL of the output message type.
    responseTypeUrl :: (Core.Maybe Core.Text),
    -- | The source syntax of this method.
    syntax :: (Core.Maybe Method_Syntax)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Method' with the minimum fields required to make a request.
newMethod ::
  Method
newMethod =
  Method
    { name = Core.Nothing,
      options = Core.Nothing,
      requestStreaming = Core.Nothing,
      requestTypeUrl = Core.Nothing,
      responseStreaming = Core.Nothing,
      responseTypeUrl = Core.Nothing,
      syntax = Core.Nothing
    }

instance Core.FromJSON Method where
  parseJSON =
    Core.withObject
      "Method"
      ( \o ->
          Method
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "options")
            Core.<*> (o Core..:? "requestStreaming")
            Core.<*> (o Core..:? "requestTypeUrl")
            Core.<*> (o Core..:? "responseStreaming")
            Core.<*> (o Core..:? "responseTypeUrl")
            Core.<*> (o Core..:? "syntax")
      )

instance Core.ToJSON Method where
  toJSON Method {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("options" Core..=) Core.<$> options,
            ("requestStreaming" Core..=) Core.<$> requestStreaming,
            ("requestTypeUrl" Core..=) Core.<$> requestTypeUrl,
            ("responseStreaming" Core..=) Core.<$> responseStreaming,
            ("responseTypeUrl" Core..=) Core.<$> responseTypeUrl,
            ("syntax" Core..=) Core.<$> syntax
          ]
      )

-- | Defines policies applying to an RPC method.
--
-- /See:/ 'newMethodPolicy' smart constructor.
data MethodPolicy = MethodPolicy
  { -- | Policies that are applicable to the request message.
    requestPolicies :: (Core.Maybe [FieldPolicy]),
    -- | Selects a method to which these policies should be enforced, for example, \"google.pubsub.v1.Subscriber.CreateSubscription\". Refer to selector for syntax details. NOTE: This field must not be set in the proto annotation. It will be automatically filled by the service config compiler .
    selector :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MethodPolicy' with the minimum fields required to make a request.
newMethodPolicy ::
  MethodPolicy
newMethodPolicy =
  MethodPolicy
    { requestPolicies = Core.Nothing,
      selector = Core.Nothing
    }

instance Core.FromJSON MethodPolicy where
  parseJSON =
    Core.withObject
      "MethodPolicy"
      ( \o ->
          MethodPolicy
            Core.<$> (o Core..:? "requestPolicies")
            Core.<*> (o Core..:? "selector")
      )

instance Core.ToJSON MethodPolicy where
  toJSON MethodPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("requestPolicies" Core..=) Core.<$> requestPolicies,
            ("selector" Core..=) Core.<$> selector
          ]
      )

-- | Describes the generator configuration for a method.
--
-- /See:/ 'newMethodSettings' smart constructor.
data MethodSettings = MethodSettings
  { -- | List of top-level fields of the request message, that should be automatically populated by the client libraries based on their (google.api.field/info).format. Currently supported format: UUID4. Example of a YAML configuration: publishing: method/settings: - selector: google.example.v1.ExampleService.CreateExample auto/populated/fields: - request_id
    autoPopulatedFields :: (Core.Maybe [Core.Text]),
    -- | Describes settings to use for long-running operations when generating API methods for RPCs. Complements RPCs that use the annotations in google\/longrunning\/operations.proto. Example of a YAML configuration:: publishing: method/settings: - selector: google.cloud.speech.v2.Speech.BatchRecognize long/running: initial/poll/delay: 60s # 1 minute poll/delay/multiplier: 1.5 max/poll/delay: 360s # 6 minutes total/poll/timeout: 54000s # 90 minutes
    longRunning :: (Core.Maybe LongRunning),
    -- | The fully qualified name of the method, for which the options below apply. This is used to find the method to apply the options. Example: publishing: method_settings: - selector: google.storage.control.v2.StorageControl.CreateFolder # method settings for CreateFolder...
    selector :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MethodSettings' with the minimum fields required to make a request.
newMethodSettings ::
  MethodSettings
newMethodSettings =
  MethodSettings
    { autoPopulatedFields = Core.Nothing,
      longRunning = Core.Nothing,
      selector = Core.Nothing
    }

instance Core.FromJSON MethodSettings where
  parseJSON =
    Core.withObject
      "MethodSettings"
      ( \o ->
          MethodSettings
            Core.<$> (o Core..:? "autoPopulatedFields")
            Core.<*> (o Core..:? "longRunning")
            Core.<*> (o Core..:? "selector")
      )

instance Core.ToJSON MethodSettings where
  toJSON MethodSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoPopulatedFields" Core..=) Core.<$> autoPopulatedFields,
            ("longRunning" Core..=) Core.<$> longRunning,
            ("selector" Core..=) Core.<$> selector
          ]
      )

-- | Defines a metric type and its schema. Once a metric descriptor is created, deleting or altering it stops data collection and makes the metric type\'s existing data unusable.
--
-- /See:/ 'newMetricDescriptor' smart constructor.
data MetricDescriptor = MetricDescriptor
  { -- | A detailed description of the metric, which can be used in documentation.
    description :: (Core.Maybe Core.Text),
    -- | A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example \"Request count\". This field is optional but it is recommended to be set for any metrics associated with user-visible concepts, such as Quota.
    displayName :: (Core.Maybe Core.Text),
    -- | The set of labels that can be used to describe a specific instance of this metric type. For example, the @appengine.googleapis.com\/http\/server\/response_latencies@ metric type has a label for the HTTP response code, @response_code@, so you can look at latencies for successful responses or just for responses that failed.
    labels :: (Core.Maybe [LabelDescriptor]),
    -- | Optional. The launch stage of the metric definition.
    launchStage :: (Core.Maybe MetricDescriptor_LaunchStage),
    -- | Optional. Metadata which can be used to guide usage of the metric.
    metadata :: (Core.Maybe MetricDescriptorMetadata),
    -- | Whether the metric records instantaneous values, changes to a value, etc. Some combinations of @metric_kind@ and @value_type@ might not be supported.
    metricKind :: (Core.Maybe MetricDescriptor_MetricKind),
    -- | Read-only. If present, then a time series, which is identified partially by a metric type and a MonitoredResourceDescriptor, that is associated with this metric type can only be associated with one of the monitored resource types listed here.
    monitoredResourceTypes :: (Core.Maybe [Core.Text]),
    -- | The resource name of the metric descriptor.
    name :: (Core.Maybe Core.Text),
    -- | The metric type, including its DNS name prefix. The type is not URL-encoded. All user-defined metric types have the DNS name @custom.googleapis.com@ or @external.googleapis.com@. Metric types should use a natural hierarchical grouping. For example: \"custom.googleapis.com\/invoice\/paid\/amount\" \"external.googleapis.com\/prometheus\/up\" \"appengine.googleapis.com\/http\/server\/response_latencies\"
    type' :: (Core.Maybe Core.Text),
    -- | The units in which the metric value is reported. It is only applicable if the @value_type@ is @INT64@, @DOUBLE@, or @DISTRIBUTION@. The @unit@ defines the representation of the stored metric values. Different systems might scale the values to be more easily displayed (so a value of @0.02kBy@ /might/ be displayed as @20By@, and a value of @3523kBy@ /might/ be displayed as @3.5MBy@). However, if the @unit@ is @kBy@, then the value of the metric is always in thousands of bytes, no matter how it might be displayed. If you want a custom metric to record the exact number of CPU-seconds used by a job, you can create an @INT64 CUMULATIVE@ metric whose @unit@ is @s{CPU}@ (or equivalently @1s{CPU}@ or just @s@). If the job uses 12,005 CPU-seconds, then the value is written as @12005@. Alternatively, if you want a custom metric to record data in a more granular way, you can create a @DOUBLE CUMULATIVE@ metric whose @unit@ is @ks{CPU}@, and then write the value @12.005@ (which is @12005\/1000@), or use @Kis{CPU}@ and
    -- write @11.723@ (which is @12005\/1024@). The supported units are a subset of <https://unitsofmeasure.org/ucum.html The Unified Code for Units of Measure> standard: __Basic units (UNIT)__ * @bit@ bit * @By@ byte * @s@ second * @min@ minute * @h@ hour * @d@ day * @1@ dimensionless __Prefixes (PREFIX)__ * @k@ kilo (10^3) * @M@ mega (10^6) * @G@ giga (10^9) * @T@ tera (10^12) * @P@ peta (10^15) * @E@ exa (10^18) * @Z@ zetta (10^21) * @Y@ yotta (10^24) * @m@ milli (10^-3) * @u@ micro (10^-6) * @n@ nano (10^-9) * @p@ pico (10^-12) * @f@ femto (10^-15) * @a@ atto (10^-18) * @z@ zepto (10^-21) * @y@ yocto (10^-24) * @Ki@ kibi (2^10) * @Mi@ mebi (2^20) * @Gi@ gibi (2^30) * @Ti@ tebi (2^40) * @Pi@ pebi (2^50) __Grammar__ The grammar also includes these connectors: * @\/@ division or ratio (as an infix operator). For examples, @kBy\/{email}@ or @MiBy\/10ms@ (although you should almost never have @\/s@ in a metric @unit@; rates should always be computed at query time from the underlying cumulative or delta value). * @.@
    -- multiplication or composition (as an infix operator). For examples, @GBy.d@ or @k{watt}.h@. The grammar for a unit is as follows: Expression = Component { \".\" Component } { \"\/\" Component } ; Component = ( [ PREFIX ] UNIT | \"%\" ) [ Annotation ] | Annotation | \"1\" ; Annotation = \"{\" NAME \"}\" ; Notes: * @Annotation@ is just a comment if it follows a @UNIT@. If the annotation is used alone, then the unit is equivalent to @1@. For examples, @{request}\/s == 1\/s@, @By{transmitted}\/s == By\/s@. * @NAME@ is a sequence of non-blank printable ASCII characters not containing @{@ or @}@. * @1@ represents a unitary <https://en.wikipedia.org/wiki/Dimensionless_quantity dimensionless unit> of 1, such as in @1\/s@. It is typically used when none of the basic units are appropriate. For example, \"new users per day\" can be represented as @1\/d@ or @{new-users}\/d@ (and a metric value @5@ would mean \"5 new users). Alternatively, \"thousands of page views per day\" would be represented as @1000\/d@ or @k1\/d@ or
    -- @k{page_views}\/d@ (and a metric value of @5.3@ would mean \"5300 page views per day\"). * @%@ represents dimensionless value of 1\/100, and annotates values giving a percentage (so the metric values are typically in the range of 0..100, and a metric value @3@ means \"3 percent\"). * @10^2.%@ indicates a metric contains a ratio, typically in the range 0..1, that will be multiplied by 100 and displayed as a percentage (so a metric value @0.03@ means \"3 percent\").
    unit :: (Core.Maybe Core.Text),
    -- | Whether the measurement is an integer, a floating-point number, etc. Some combinations of @metric_kind@ and @value_type@ might not be supported.
    valueType :: (Core.Maybe MetricDescriptor_ValueType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricDescriptor' with the minimum fields required to make a request.
newMetricDescriptor ::
  MetricDescriptor
newMetricDescriptor =
  MetricDescriptor
    { description = Core.Nothing,
      displayName = Core.Nothing,
      labels = Core.Nothing,
      launchStage = Core.Nothing,
      metadata = Core.Nothing,
      metricKind = Core.Nothing,
      monitoredResourceTypes = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing,
      unit = Core.Nothing,
      valueType = Core.Nothing
    }

instance Core.FromJSON MetricDescriptor where
  parseJSON =
    Core.withObject
      "MetricDescriptor"
      ( \o ->
          MetricDescriptor
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "launchStage")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "metricKind")
            Core.<*> (o Core..:? "monitoredResourceTypes")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "unit")
            Core.<*> (o Core..:? "valueType")
      )

instance Core.ToJSON MetricDescriptor where
  toJSON MetricDescriptor {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("launchStage" Core..=) Core.<$> launchStage,
            ("metadata" Core..=) Core.<$> metadata,
            ("metricKind" Core..=) Core.<$> metricKind,
            ("monitoredResourceTypes" Core..=) Core.<$> monitoredResourceTypes,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type',
            ("unit" Core..=) Core.<$> unit,
            ("valueType" Core..=) Core.<$> valueType
          ]
      )

-- | Additional annotations that can be used to guide the usage of a metric.
--
-- /See:/ 'newMetricDescriptorMetadata' smart constructor.
data MetricDescriptorMetadata = MetricDescriptorMetadata
  { -- | The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors.
    ingestDelay :: (Core.Maybe Core.Duration),
    -- | Deprecated. Must use the MetricDescriptor.launch_stage instead.
    launchStage :: (Core.Maybe MetricDescriptorMetadata_LaunchStage),
    -- | The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period.
    samplePeriod :: (Core.Maybe Core.Duration),
    -- | The scope of the timeseries data of the metric.
    timeSeriesResourceHierarchyLevel ::
      ( Core.Maybe
          [MetricDescriptorMetadata_TimeSeriesResourceHierarchyLevelItem]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricDescriptorMetadata' with the minimum fields required to make a request.
newMetricDescriptorMetadata ::
  MetricDescriptorMetadata
newMetricDescriptorMetadata =
  MetricDescriptorMetadata
    { ingestDelay = Core.Nothing,
      launchStage = Core.Nothing,
      samplePeriod = Core.Nothing,
      timeSeriesResourceHierarchyLevel = Core.Nothing
    }

instance Core.FromJSON MetricDescriptorMetadata where
  parseJSON =
    Core.withObject
      "MetricDescriptorMetadata"
      ( \o ->
          MetricDescriptorMetadata
            Core.<$> (o Core..:? "ingestDelay")
            Core.<*> (o Core..:? "launchStage")
            Core.<*> (o Core..:? "samplePeriod")
            Core.<*> (o Core..:? "timeSeriesResourceHierarchyLevel")
      )

instance Core.ToJSON MetricDescriptorMetadata where
  toJSON MetricDescriptorMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("ingestDelay" Core..=) Core.<$> ingestDelay,
            ("launchStage" Core..=) Core.<$> launchStage,
            ("samplePeriod" Core..=) Core.<$> samplePeriod,
            ("timeSeriesResourceHierarchyLevel" Core..=)
              Core.<$> timeSeriesResourceHierarchyLevel
          ]
      )

-- | Bind API methods to metrics. Binding a method to a metric causes that metric\'s configured quota behaviors to apply to the method call.
--
-- /See:/ 'newMetricRule' smart constructor.
data MetricRule = MetricRule
  { -- | Metrics to update when the selected methods are called, and the associated cost applied to each metric. The key of the map is the metric name, and the values are the amount increased for the metric against which the quota limits are defined. The value must not be negative.
    metricCosts :: (Core.Maybe MetricRule_MetricCosts),
    -- | Selects the methods to which this rule applies. Refer to selector for syntax details.
    selector :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricRule' with the minimum fields required to make a request.
newMetricRule ::
  MetricRule
newMetricRule =
  MetricRule {metricCosts = Core.Nothing, selector = Core.Nothing}

instance Core.FromJSON MetricRule where
  parseJSON =
    Core.withObject
      "MetricRule"
      ( \o ->
          MetricRule
            Core.<$> (o Core..:? "metricCosts")
            Core.<*> (o Core..:? "selector")
      )

instance Core.ToJSON MetricRule where
  toJSON MetricRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("metricCosts" Core..=) Core.<$> metricCosts,
            ("selector" Core..=) Core.<$> selector
          ]
      )

-- | Metrics to update when the selected methods are called, and the associated cost applied to each metric. The key of the map is the metric name, and the values are the amount increased for the metric against which the quota limits are defined. The value must not be negative.
--
-- /See:/ 'newMetricRule_MetricCosts' smart constructor.
newtype MetricRule_MetricCosts = MetricRule_MetricCosts
  { additional :: (Core.HashMap Core.Text Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricRule_MetricCosts' with the minimum fields required to make a request.
newMetricRule_MetricCosts ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Int64 ->
  MetricRule_MetricCosts
newMetricRule_MetricCosts additional =
  MetricRule_MetricCosts {additional = additional}

instance Core.FromJSON MetricRule_MetricCosts where
  parseJSON =
    Core.withObject
      "MetricRule_MetricCosts"
      (\o -> MetricRule_MetricCosts Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON MetricRule_MetricCosts where
  toJSON MetricRule_MetricCosts {..} = Core.toJSON additional

-- | Declares an API Interface to be included in this interface. The including interface must redeclare all the methods from the included interface, but documentation and options are inherited as follows: - If after comment and whitespace stripping, the documentation string of the redeclared method is empty, it will be inherited from the original method. - Each annotation belonging to the service config (http, visibility) which is not set in the redeclared method will be inherited. - If an http annotation is inherited, the path pattern will be modified as follows. Any version prefix will be replaced by the version of the including interface plus the root path if specified. Example of a simple mixin: package google.acl.v1; service AccessControl { \/\/ Get the underlying ACL object. rpc GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get = \"\/v1\/{resource=__}:getAcl\"; } } package google.storage.v2; service Storage { \/\/ rpc GetAcl(GetAclRequest) returns (Acl); \/\/ Get a data record. rpc
-- GetData(GetDataRequest) returns (Data) { option (google.api.http).get = \"\/v2\/{resource=__}\"; } } Example of a mixin configuration: apis: - name: google.storage.v2.Storage mixins: - name: google.acl.v1.AccessControl The mixin construct implies that all methods in @AccessControl@ are also declared with same name and request\/response types in @Storage@. A documentation generator or annotation processor will see the effective @Storage.GetAcl@ method after inheriting documentation and annotations as follows: service Storage { \/\/ Get the underlying ACL object. rpc GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get = \"\/v2\/{resource=__}:getAcl\"; } ... } Note how the version in the path pattern changed from @v1@ to @v2@. If the @root@ field in the mixin is specified, it should be a relative path under which inherited HTTP paths are placed. Example: apis: - name: google.storage.v2.Storage mixins: - name: google.acl.v1.AccessControl root: acls This implies the following inherited HTTP
-- annotation: service Storage { \/\/ Get the underlying ACL object. rpc GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get = \"\/v2\/acls\/{resource=__}:getAcl\"; } ... }
--
-- /See:/ 'newMixin' smart constructor.
data Mixin = Mixin
  { -- | The fully qualified name of the interface which is included.
    name :: (Core.Maybe Core.Text),
    -- | If non-empty specifies a path under which inherited HTTP paths are rooted.
    root :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Mixin' with the minimum fields required to make a request.
newMixin ::
  Mixin
newMixin = Mixin {name = Core.Nothing, root = Core.Nothing}

instance Core.FromJSON Mixin where
  parseJSON =
    Core.withObject
      "Mixin"
      ( \o ->
          Mixin Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "root")
      )

instance Core.ToJSON Mixin where
  toJSON Mixin {..} =
    Core.object
      ( Core.catMaybes
          [("name" Core..=) Core.<$> name, ("root" Core..=) Core.<$> root]
      )

-- | An object that describes the schema of a MonitoredResource object using a type name and a set of labels. For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of @\"gce_instance\"@ and specifies the use of the labels @\"instance_id\"@ and @\"zone\"@ to identify particular VM instances. Different APIs can support different monitored resource types. APIs generally provide a @list@ method that returns the monitored resource descriptors used by the API.
--
-- /See:/ 'newMonitoredResourceDescriptor' smart constructor.
data MonitoredResourceDescriptor = MonitoredResourceDescriptor
  { -- | Optional. A detailed description of the monitored resource type that might be used in documentation.
    description :: (Core.Maybe Core.Text),
    -- | Optional. A concise name for the monitored resource type that might be displayed in user interfaces. It should be a Title Cased Noun Phrase, without any article or other determiners. For example, @\"Google Cloud SQL Database\"@.
    displayName :: (Core.Maybe Core.Text),
    -- | Required. A set of labels used to describe instances of this monitored resource type. For example, an individual Google Cloud SQL database is identified by values for the labels @\"database_id\"@ and @\"zone\"@.
    labels :: (Core.Maybe [LabelDescriptor]),
    -- | Optional. The launch stage of the monitored resource definition.
    launchStage :: (Core.Maybe MonitoredResourceDescriptor_LaunchStage),
    -- | Optional. The resource name of the monitored resource descriptor: @\"projects\/{project_id}\/monitoredResourceDescriptors\/{type}\"@ where {type} is the value of the @type@ field in this object and {project_id} is a project ID that provides API-specific context for accessing the type. APIs that do not use project information can use the resource name format @\"monitoredResourceDescriptors\/{type}\"@.
    name :: (Core.Maybe Core.Text),
    -- | Required. The monitored resource type. For example, the type @\"cloudsql_database\"@ represents databases in Google Cloud SQL. For a list of types, see <https://cloud.google.com/monitoring/api/resources Monitored resource types> and <https://cloud.google.com/logging/docs/api/v2/resource-list Logging resource types>.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoredResourceDescriptor' with the minimum fields required to make a request.
newMonitoredResourceDescriptor ::
  MonitoredResourceDescriptor
newMonitoredResourceDescriptor =
  MonitoredResourceDescriptor
    { description = Core.Nothing,
      displayName = Core.Nothing,
      labels = Core.Nothing,
      launchStage = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON MonitoredResourceDescriptor where
  parseJSON =
    Core.withObject
      "MonitoredResourceDescriptor"
      ( \o ->
          MonitoredResourceDescriptor
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "launchStage")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON MonitoredResourceDescriptor where
  toJSON MonitoredResourceDescriptor {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("launchStage" Core..=) Core.<$> launchStage,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Monitoring configuration of the service. The example below shows how to configure monitored resources and metrics for monitoring. In the example, a monitored resource and two metrics are defined. The @library.googleapis.com\/book\/returned_count@ metric is sent to both producer and consumer projects, whereas the @library.googleapis.com\/book\/num_overdue@ metric is only sent to the consumer project. monitored/resources: - type: library.googleapis.com\/Branch display/name: \"Library Branch\" description: \"A branch of a library.\" launch/stage: GA labels: - key: resource/container description: \"The Cloud container (ie. project id) for the Branch.\" - key: location description: \"The location of the library branch.\" - key: branch/id description: \"The id of the branch.\" metrics: - name: library.googleapis.com\/book\/returned/count display/name: \"Books Returned\" description: \"The count of books that have been returned.\" launch/stage: GA metric/kind: DELTA value/type: INT64 unit: \"1\" labels: - key:
-- customer/id description: \"The id of the customer.\" - name: library.googleapis.com\/book\/num/overdue display/name: \"Books Overdue\" description: \"The current number of overdue books.\" launch/stage: GA metric/kind: GAUGE value/type: INT64 unit: \"1\" labels: - key: customer/id description: \"The id of the customer.\" monitoring: producer/destinations: - monitored/resource: library.googleapis.com\/Branch metrics: - library.googleapis.com\/book\/returned/count consumer/destinations: - monitored/resource: library.googleapis.com\/Branch metrics: - library.googleapis.com\/book\/returned/count - library.googleapis.com\/book\/num/overdue
--
-- /See:/ 'newMonitoring' smart constructor.
data Monitoring = Monitoring
  { -- | Monitoring configurations for sending metrics to the consumer project. There can be multiple consumer destinations. A monitored resource type may appear in multiple monitoring destinations if different aggregations are needed for different sets of metrics associated with that monitored resource type. A monitored resource and metric pair may only be used once in the Monitoring configuration.
    consumerDestinations :: (Core.Maybe [MonitoringDestination]),
    -- | Monitoring configurations for sending metrics to the producer project. There can be multiple producer destinations. A monitored resource type may appear in multiple monitoring destinations if different aggregations are needed for different sets of metrics associated with that monitored resource type. A monitored resource and metric pair may only be used once in the Monitoring configuration.
    producerDestinations :: (Core.Maybe [MonitoringDestination])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Monitoring' with the minimum fields required to make a request.
newMonitoring ::
  Monitoring
newMonitoring =
  Monitoring
    { consumerDestinations = Core.Nothing,
      producerDestinations = Core.Nothing
    }

instance Core.FromJSON Monitoring where
  parseJSON =
    Core.withObject
      "Monitoring"
      ( \o ->
          Monitoring
            Core.<$> (o Core..:? "consumerDestinations")
            Core.<*> (o Core..:? "producerDestinations")
      )

instance Core.ToJSON Monitoring where
  toJSON Monitoring {..} =
    Core.object
      ( Core.catMaybes
          [ ("consumerDestinations" Core..=) Core.<$> consumerDestinations,
            ("producerDestinations" Core..=) Core.<$> producerDestinations
          ]
      )

-- | Configuration of a specific monitoring destination (the producer project or the consumer project).
--
-- /See:/ 'newMonitoringDestination' smart constructor.
data MonitoringDestination = MonitoringDestination
  { -- | Types of the metrics to report to this monitoring destination. Each type must be defined in Service.metrics section.
    metrics :: (Core.Maybe [Core.Text]),
    -- | The monitored resource type. The type must be defined in Service.monitored_resources section.
    monitoredResource :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringDestination' with the minimum fields required to make a request.
newMonitoringDestination ::
  MonitoringDestination
newMonitoringDestination =
  MonitoringDestination
    { metrics = Core.Nothing,
      monitoredResource = Core.Nothing
    }

instance Core.FromJSON MonitoringDestination where
  parseJSON =
    Core.withObject
      "MonitoringDestination"
      ( \o ->
          MonitoringDestination
            Core.<$> (o Core..:? "metrics")
            Core.<*> (o Core..:? "monitoredResource")
      )

instance Core.ToJSON MonitoringDestination where
  toJSON MonitoringDestination {..} =
    Core.object
      ( Core.catMaybes
          [ ("metrics" Core..=) Core.<$> metrics,
            ("monitoredResource" Core..=) Core.<$> monitoredResource
          ]
      )

-- | Settings for Node client libraries.
--
-- /See:/ 'newNodeSettings' smart constructor.
newtype NodeSettings = NodeSettings
  { -- | Some settings.
    common :: (Core.Maybe CommonLanguageSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeSettings' with the minimum fields required to make a request.
newNodeSettings ::
  NodeSettings
newNodeSettings = NodeSettings {common = Core.Nothing}

instance Core.FromJSON NodeSettings where
  parseJSON =
    Core.withObject
      "NodeSettings"
      (\o -> NodeSettings Core.<$> (o Core..:? "common"))

instance Core.ToJSON NodeSettings where
  toJSON NodeSettings {..} =
    Core.object (Core.catMaybes [("common" Core..=) Core.<$> common])

-- | OAuth scopes are a way to define data and permissions on data. For example, there are scopes defined for \"Read-only access to Google Calendar\" and \"Access to Cloud Platform\". Users can consent to a scope for an application, giving it permission to access that data on their behalf. OAuth scope specifications should be fairly coarse grained; a user will need to see and understand the text description of what your scope means. In most cases: use one or at most two OAuth scopes for an entire family of products. If your product has multiple APIs, you should probably be sharing the OAuth scope across all of those APIs. When you need finer grained OAuth consent screens: talk with your product management about how developers will use them in practice. Please note that even though each of the canonical scopes is enough for a request to be accepted and passed to the backend, a request can still fail due to the backend requiring additional scopes or permissions.
--
-- /See:/ 'newOAuthRequirements' smart constructor.
newtype OAuthRequirements = OAuthRequirements
  { -- | The list of publicly documented OAuth scopes that are allowed access. An OAuth token containing any of these scopes will be accepted. Example: canonical_scopes: https:\/\/www.googleapis.com\/auth\/calendar, https:\/\/www.googleapis.com\/auth\/calendar.read
    canonicalScopes :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OAuthRequirements' with the minimum fields required to make a request.
newOAuthRequirements ::
  OAuthRequirements
newOAuthRequirements =
  OAuthRequirements {canonicalScopes = Core.Nothing}

instance Core.FromJSON OAuthRequirements where
  parseJSON =
    Core.withObject
      "OAuthRequirements"
      (\o -> OAuthRequirements Core.<$> (o Core..:? "canonicalScopes"))

instance Core.ToJSON OAuthRequirements where
  toJSON OAuthRequirements {..} =
    Core.object
      ( Core.catMaybes
          [("canonicalScopes" Core..=) Core.<$> canonicalScopes]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional =
  Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      (\o -> Operation_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON additional

-- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional =
  Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      (\o -> Operation_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON additional

-- | A message representing the message types used by a long-running operation. Example: rpc Export(ExportRequest) returns (google.longrunning.Operation) { option (google.longrunning.operation/info) = { response/type: \"ExportResponse\" metadata_type: \"ExportMetadata\" }; }
--
-- /See:/ 'newOperationInfo' smart constructor.
data OperationInfo = OperationInfo
  { -- | Required. The message name of the metadata type for this long-running operation. If the response is in a different package from the rpc, a fully-qualified message name must be used (e.g. @google.protobuf.Struct@). Note: Altering this value constitutes a breaking change.
    metadataType :: (Core.Maybe Core.Text),
    -- | Required. The message name of the primary return type for this long-running operation. This type will be used to deserialize the LRO\'s response. If the response is in a different package from the rpc, a fully-qualified message name must be used (e.g. @google.protobuf.Struct@). Note: Altering this value constitutes a breaking change.
    responseType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationInfo' with the minimum fields required to make a request.
newOperationInfo ::
  OperationInfo
newOperationInfo =
  OperationInfo
    { metadataType = Core.Nothing,
      responseType = Core.Nothing
    }

instance Core.FromJSON OperationInfo where
  parseJSON =
    Core.withObject
      "OperationInfo"
      ( \o ->
          OperationInfo
            Core.<$> (o Core..:? "metadataType")
            Core.<*> (o Core..:? "responseType")
      )

instance Core.ToJSON OperationInfo where
  toJSON OperationInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("metadataType" Core..=) Core.<$> metadataType,
            ("responseType" Core..=) Core.<$> responseType
          ]
      )

-- | The metadata associated with a long running operation resource.
--
-- /See:/ 'newOperationMetadata' smart constructor.
data OperationMetadata = OperationMetadata
  { -- | Percentage of completion of this operation, ranging from 0 to 100.
    progressPercentage :: (Core.Maybe Core.Int32),
    -- | The full name of the resources that this operation is directly associated with.
    resourceNames :: (Core.Maybe [Core.Text]),
    -- | The start time of the operation.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Detailed status information for each step. The order is undetermined.
    steps :: (Core.Maybe [Step])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
newOperationMetadata ::
  OperationMetadata
newOperationMetadata =
  OperationMetadata
    { progressPercentage = Core.Nothing,
      resourceNames = Core.Nothing,
      startTime = Core.Nothing,
      steps = Core.Nothing
    }

instance Core.FromJSON OperationMetadata where
  parseJSON =
    Core.withObject
      "OperationMetadata"
      ( \o ->
          OperationMetadata
            Core.<$> (o Core..:? "progressPercentage")
            Core.<*> (o Core..:? "resourceNames")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "steps")
      )

instance Core.ToJSON OperationMetadata where
  toJSON OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("progressPercentage" Core..=) Core.<$> progressPercentage,
            ("resourceNames" Core..=) Core.<$> resourceNames,
            ("startTime" Core..=) Core.<$> startTime,
            ("steps" Core..=) Core.<$> steps
          ]
      )

-- | A protocol buffer option, which can be attached to a message, field, enumeration, etc.
--
-- /See:/ 'newOption' smart constructor.
data Option = Option
  { -- | The option\'s name. For protobuf built-in options (options defined in descriptor.proto), this is the short name. For example, @\"map_entry\"@. For custom options, it should be the fully-qualified name. For example, @\"google.api.http\"@.
    name :: (Core.Maybe Core.Text),
    -- | The option\'s value packed in an Any message. If the value is a primitive, the corresponding wrapper type defined in google\/protobuf\/wrappers.proto should be used. If the value is an enum, it should be stored as an int32 value using the google.protobuf.Int32Value type.
    value :: (Core.Maybe Option_Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Option' with the minimum fields required to make a request.
newOption ::
  Option
newOption = Option {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Option where
  parseJSON =
    Core.withObject
      "Option"
      ( \o ->
          Option Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Option where
  toJSON Option {..} =
    Core.object
      ( Core.catMaybes
          [("name" Core..=) Core.<$> name, ("value" Core..=) Core.<$> value]
      )

-- | The option\'s value packed in an Any message. If the value is a primitive, the corresponding wrapper type defined in google\/protobuf\/wrappers.proto should be used. If the value is an enum, it should be stored as an int32 value using the google.protobuf.Int32Value type.
--
-- /See:/ 'newOption_Value' smart constructor.
newtype Option_Value = Option_Value
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Option_Value' with the minimum fields required to make a request.
newOption_Value ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Option_Value
newOption_Value additional = Option_Value {additional = additional}

instance Core.FromJSON Option_Value where
  parseJSON =
    Core.withObject
      "Option_Value"
      (\o -> Option_Value Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Option_Value where
  toJSON Option_Value {..} = Core.toJSON additional

-- | Represents a documentation page. A page can contain subpages to represent nested documentation set structure.
--
-- /See:/ 'newPage' smart constructor.
data Page = Page
  { -- | The Markdown content of the page. You can use (== include {path} ==) to include content from a Markdown file. The content can be used to produce the documentation page such as HTML format page.
    content :: (Core.Maybe Core.Text),
    -- | The name of the page. It will be used as an identity of the page to generate URI of the page, text of the link to this page in navigation, etc. The full page name (start from the root page name to this page concatenated with @.@) can be used as reference to the page in your documentation. For example: pages: - name: Tutorial content: (== include tutorial.md ==) subpages: - name: Java content: (== include tutorial_java.md ==) You can reference @Java@ page using Markdown reference link syntax: @Java@.
    name :: (Core.Maybe Core.Text),
    -- | Subpages of this page. The order of subpages specified here will be honored in the generated docset.
    subpages :: (Core.Maybe [Page])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Page' with the minimum fields required to make a request.
newPage ::
  Page
newPage =
  Page
    { content = Core.Nothing,
      name = Core.Nothing,
      subpages = Core.Nothing
    }

instance Core.FromJSON Page where
  parseJSON =
    Core.withObject
      "Page"
      ( \o ->
          Page
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "subpages")
      )

instance Core.ToJSON Page where
  toJSON Page {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("name" Core..=) Core.<$> name,
            ("subpages" Core..=) Core.<$> subpages
          ]
      )

-- | Settings for Php client libraries.
--
-- /See:/ 'newPhpSettings' smart constructor.
newtype PhpSettings = PhpSettings
  { -- | Some settings.
    common :: (Core.Maybe CommonLanguageSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PhpSettings' with the minimum fields required to make a request.
newPhpSettings ::
  PhpSettings
newPhpSettings = PhpSettings {common = Core.Nothing}

instance Core.FromJSON PhpSettings where
  parseJSON =
    Core.withObject
      "PhpSettings"
      (\o -> PhpSettings Core.<$> (o Core..:? "common"))

instance Core.ToJSON PhpSettings where
  toJSON PhpSettings {..} =
    Core.object (Core.catMaybes [("common" Core..=) Core.<$> common])

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__
-- @{ \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\", \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 }@ __YAML example:__
-- @bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3@ For a description of IAM and its features, see the <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | Specifies cloud audit logging configuration for this policy.
    auditConfigs :: (Core.Maybe [AuditConfig]),
    -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
    bindings :: (Core.Maybe [Binding]),
    -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    etag :: (Core.Maybe Core.Base64),
    -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
    -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy ::
  Policy
newPolicy =
  Policy
    { auditConfigs = Core.Nothing,
      bindings = Core.Nothing,
      etag = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> (o Core..:? "auditConfigs")
            Core.<*> (o Core..:? "bindings")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Policy where
  toJSON Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditConfigs" Core..=) Core.<$> auditConfigs,
            ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | This message configures the settings for publishing <https://cloud.google.com/apis/docs/cloud-client-libraries Google Cloud Client libraries> generated from the service config.
--
-- /See:/ 'newPublishing' smart constructor.
data Publishing = Publishing
  { -- | Used as a tracking tag when collecting data about the APIs developer relations artifacts like docs, packages delivered to package managers, etc. Example: \"speech\".
    apiShortName :: (Core.Maybe Core.Text),
    -- | GitHub teams to be added to CODEOWNERS in the directory in GitHub containing source code for the client libraries for this API.
    codeownerGithubTeams :: (Core.Maybe [Core.Text]),
    -- | A prefix used in sample code when demarking regions to be included in documentation.
    docTagPrefix :: (Core.Maybe Core.Text),
    -- | Link to product home page. Example: https:\/\/cloud.google.com\/asset-inventory\/docs\/overview
    documentationUri :: (Core.Maybe Core.Text),
    -- | GitHub label to apply to issues and pull requests opened for this API.
    githubLabel :: (Core.Maybe Core.Text),
    -- | Client library settings. If the same version string appears multiple times in this list, then the last one wins. Settings from earlier settings with the same version string are discarded.
    librarySettings :: (Core.Maybe [ClientLibrarySettings]),
    -- | A list of API method settings, e.g. the behavior for methods that use the long-running operation pattern.
    methodSettings :: (Core.Maybe [MethodSettings]),
    -- | Link to a /public/ URI where users can report issues. Example: https:\/\/issuetracker.google.com\/issues\/new?component=190865&template=1161103
    newIssueUri' :: (Core.Maybe Core.Text),
    -- | For whom the client library is being published.
    organization :: (Core.Maybe Publishing_Organization),
    -- | Optional link to proto reference documentation. Example: https:\/\/cloud.google.com\/pubsub\/lite\/docs\/reference\/rpc
    protoReferenceDocumentationUri :: (Core.Maybe Core.Text),
    -- | Optional link to REST reference documentation. Example: https:\/\/cloud.google.com\/pubsub\/lite\/docs\/reference\/rest
    restReferenceDocumentationUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Publishing' with the minimum fields required to make a request.
newPublishing ::
  Publishing
newPublishing =
  Publishing
    { apiShortName = Core.Nothing,
      codeownerGithubTeams = Core.Nothing,
      docTagPrefix = Core.Nothing,
      documentationUri = Core.Nothing,
      githubLabel = Core.Nothing,
      librarySettings = Core.Nothing,
      methodSettings = Core.Nothing,
      newIssueUri' = Core.Nothing,
      organization = Core.Nothing,
      protoReferenceDocumentationUri = Core.Nothing,
      restReferenceDocumentationUri = Core.Nothing
    }

instance Core.FromJSON Publishing where
  parseJSON =
    Core.withObject
      "Publishing"
      ( \o ->
          Publishing
            Core.<$> (o Core..:? "apiShortName")
            Core.<*> (o Core..:? "codeownerGithubTeams")
            Core.<*> (o Core..:? "docTagPrefix")
            Core.<*> (o Core..:? "documentationUri")
            Core.<*> (o Core..:? "githubLabel")
            Core.<*> (o Core..:? "librarySettings")
            Core.<*> (o Core..:? "methodSettings")
            Core.<*> (o Core..:? "newIssueUri")
            Core.<*> (o Core..:? "organization")
            Core.<*> (o Core..:? "protoReferenceDocumentationUri")
            Core.<*> (o Core..:? "restReferenceDocumentationUri")
      )

instance Core.ToJSON Publishing where
  toJSON Publishing {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiShortName" Core..=) Core.<$> apiShortName,
            ("codeownerGithubTeams" Core..=) Core.<$> codeownerGithubTeams,
            ("docTagPrefix" Core..=) Core.<$> docTagPrefix,
            ("documentationUri" Core..=) Core.<$> documentationUri,
            ("githubLabel" Core..=) Core.<$> githubLabel,
            ("librarySettings" Core..=) Core.<$> librarySettings,
            ("methodSettings" Core..=) Core.<$> methodSettings,
            ("newIssueUri" Core..=) Core.<$> newIssueUri',
            ("organization" Core..=) Core.<$> organization,
            ("protoReferenceDocumentationUri" Core..=)
              Core.<$> protoReferenceDocumentationUri,
            ("restReferenceDocumentationUri" Core..=)
              Core.<$> restReferenceDocumentationUri
          ]
      )

-- | Settings for Python client libraries.
--
-- /See:/ 'newPythonSettings' smart constructor.
data PythonSettings = PythonSettings
  { -- | Some settings.
    common :: (Core.Maybe CommonLanguageSettings),
    -- | Experimental features to be included during client library generation.
    experimentalFeatures :: (Core.Maybe ExperimentalFeatures)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PythonSettings' with the minimum fields required to make a request.
newPythonSettings ::
  PythonSettings
newPythonSettings =
  PythonSettings
    { common = Core.Nothing,
      experimentalFeatures = Core.Nothing
    }

instance Core.FromJSON PythonSettings where
  parseJSON =
    Core.withObject
      "PythonSettings"
      ( \o ->
          PythonSettings
            Core.<$> (o Core..:? "common")
            Core.<*> (o Core..:? "experimentalFeatures")
      )

instance Core.ToJSON PythonSettings where
  toJSON PythonSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("common" Core..=) Core.<$> common,
            ("experimentalFeatures" Core..=) Core.<$> experimentalFeatures
          ]
      )

-- | Quota configuration helps to achieve fairness and budgeting in service usage. The metric based quota configuration works this way: - The service configuration defines a set of metrics. - For API calls, the quota.metric/rules maps methods to metrics with corresponding costs. - The quota.limits defines limits on the metrics, which will be used for quota checks at runtime. An example quota configuration in yaml format: quota: limits: - name: apiWriteQpsPerProject metric: library.googleapis.com\/write/calls unit: \"1\/min\/{project}\" # rate limit for consumer projects values: STANDARD: 10000 (The metric rules bind all methods to the read/calls metric, except for the UpdateBook and DeleteBook methods. These two methods are mapped to the write/calls metric, with the UpdateBook method consuming at twice rate as the DeleteBook method.) metric_rules: - selector: \"*\" metric/costs: library.googleapis.com\/read/calls: 1 - selector: google.example.library.v1.LibraryService.UpdateBook metric/costs:
-- library.googleapis.com\/write/calls: 2 - selector: google.example.library.v1.LibraryService.DeleteBook metric/costs: library.googleapis.com\/write/calls: 1 Corresponding Metric definition: metrics: - name: library.googleapis.com\/read/calls display/name: Read requests metric/kind: DELTA value/type: INT64 - name: library.googleapis.com\/write/calls display/name: Write requests metric/kind: DELTA value/type: INT64
--
-- /See:/ 'newQuota' smart constructor.
data Quota = Quota
  { -- | List of QuotaLimit definitions for the service.
    limits :: (Core.Maybe [QuotaLimit]),
    -- | List of MetricRule definitions, each one mapping a selected method to one or more metrics.
    metricRules :: (Core.Maybe [MetricRule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Quota' with the minimum fields required to make a request.
newQuota ::
  Quota
newQuota = Quota {limits = Core.Nothing, metricRules = Core.Nothing}

instance Core.FromJSON Quota where
  parseJSON =
    Core.withObject
      "Quota"
      ( \o ->
          Quota
            Core.<$> (o Core..:? "limits")
            Core.<*> (o Core..:? "metricRules")
      )

instance Core.ToJSON Quota where
  toJSON Quota {..} =
    Core.object
      ( Core.catMaybes
          [ ("limits" Core..=) Core.<$> limits,
            ("metricRules" Core..=) Core.<$> metricRules
          ]
      )

-- | @QuotaLimit@ defines a specific limit that applies over a specified duration for a limit type. There can be at most one limit for a duration and limit type combination defined within a @QuotaGroup@.
--
-- /See:/ 'newQuotaLimit' smart constructor.
data QuotaLimit = QuotaLimit
  { -- | Default number of tokens that can be consumed during the specified duration. This is the number of tokens assigned when a client application developer activates the service for his\/her project. Specifying a value of 0 will block all requests. This can be used if you are provisioning quota to selected consumers and blocking others. Similarly, a value of -1 will indicate an unlimited quota. No other negative values are allowed. Used by group-based quotas only.
    defaultLimit :: (Core.Maybe Core.Int64),
    -- | Optional. User-visible, extended description for this quota limit. Should be used only when more context is needed to understand this limit than provided by the limit\'s display name (see: @display_name@).
    description :: (Core.Maybe Core.Text),
    -- | User-visible display name for this limit. Optional. If not set, the UI will provide a default display name based on the quota configuration. This field can be used to override the default display name generated from the configuration.
    displayName :: (Core.Maybe Core.Text),
    -- | Duration of this limit in textual notation. Must be \"100s\" or \"1d\". Used by group-based quotas only.
    duration :: (Core.Maybe Core.Text),
    -- | Free tier value displayed in the Developers Console for this limit. The free tier is the number of tokens that will be subtracted from the billed amount when billing is enabled. This field can only be set on a limit with duration \"1d\", in a billable group; it is invalid on any other limit. If this field is not set, it defaults to 0, indicating that there is no free tier for this service. Used by group-based quotas only.
    freeTier :: (Core.Maybe Core.Int64),
    -- | Maximum number of tokens that can be consumed during the specified duration. Client application developers can override the default limit up to this maximum. If specified, this value cannot be set to a value less than the default limit. If not specified, it is set to the default limit. To allow clients to apply overrides with no upper bound, set this to -1, indicating unlimited maximum quota. Used by group-based quotas only.
    maxLimit :: (Core.Maybe Core.Int64),
    -- | The name of the metric this quota limit applies to. The quota limits with the same metric will be checked together during runtime. The metric must be defined within the service config.
    metric :: (Core.Maybe Core.Text),
    -- | Name of the quota limit. The name must be provided, and it must be unique within the service. The name can only include alphanumeric characters as well as \'-\'. The maximum length of the limit name is 64 characters.
    name :: (Core.Maybe Core.Text),
    -- | Specify the unit of the quota limit. It uses the same syntax as MetricDescriptor.unit. The supported unit kinds are determined by the quota backend system. Here are some examples: * \"1\/min\/{project}\" for quota per minute per project. Note: the order of unit components is insignificant. The \"1\" at the beginning is required to follow the metric unit syntax.
    unit :: (Core.Maybe Core.Text),
    -- | Tiered limit values. You must specify this as a key:value pair, with an integer value that is the maximum number of requests allowed for the specified unit. Currently only STANDARD is supported.
    values :: (Core.Maybe QuotaLimit_Values)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QuotaLimit' with the minimum fields required to make a request.
newQuotaLimit ::
  QuotaLimit
newQuotaLimit =
  QuotaLimit
    { defaultLimit = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      duration = Core.Nothing,
      freeTier = Core.Nothing,
      maxLimit = Core.Nothing,
      metric = Core.Nothing,
      name = Core.Nothing,
      unit = Core.Nothing,
      values = Core.Nothing
    }

instance Core.FromJSON QuotaLimit where
  parseJSON =
    Core.withObject
      "QuotaLimit"
      ( \o ->
          QuotaLimit
            Core.<$> (o Core..:? "defaultLimit" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "duration")
            Core.<*> (o Core..:? "freeTier" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "maxLimit" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "metric")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "unit")
            Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON QuotaLimit where
  toJSON QuotaLimit {..} =
    Core.object
      ( Core.catMaybes
          [ ("defaultLimit" Core..=) Core.. Core.AsText Core.<$> defaultLimit,
            ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("duration" Core..=) Core.<$> duration,
            ("freeTier" Core..=) Core.. Core.AsText Core.<$> freeTier,
            ("maxLimit" Core..=) Core.. Core.AsText Core.<$> maxLimit,
            ("metric" Core..=) Core.<$> metric,
            ("name" Core..=) Core.<$> name,
            ("unit" Core..=) Core.<$> unit,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | Tiered limit values. You must specify this as a key:value pair, with an integer value that is the maximum number of requests allowed for the specified unit. Currently only STANDARD is supported.
--
-- /See:/ 'newQuotaLimit_Values' smart constructor.
newtype QuotaLimit_Values = QuotaLimit_Values
  { additional :: (Core.HashMap Core.Text Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QuotaLimit_Values' with the minimum fields required to make a request.
newQuotaLimit_Values ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Int64 ->
  QuotaLimit_Values
newQuotaLimit_Values additional =
  QuotaLimit_Values {additional = additional}

instance Core.FromJSON QuotaLimit_Values where
  parseJSON =
    Core.withObject
      "QuotaLimit_Values"
      (\o -> QuotaLimit_Values Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON QuotaLimit_Values where
  toJSON QuotaLimit_Values {..} = Core.toJSON additional

-- | Defines a proto annotation that describes a string field that refers to an API resource.
--
-- /See:/ 'newResourceReference' smart constructor.
data ResourceReference = ResourceReference
  { -- | The resource type of a child collection that the annotated field references. This is useful for annotating the @parent@ field that doesn\'t have a fixed resource type. Example: message ListLogEntriesRequest { string parent = 1 [(google.api.resource/reference) = { child/type: \"logging.googleapis.com\/LogEntry\" }; }
    childType :: (Core.Maybe Core.Text),
    -- | The resource type that the annotated field references. Example: message Subscription { string topic = 2 [(google.api.resource/reference) = { type: \"pubsub.googleapis.com\/Topic\" }]; } Occasionally, a field may reference an arbitrary resource. In this case, APIs use the special value * in their resource reference. Example: message GetIamPolicyRequest { string resource = 2 [(google.api.resource/reference) = { type: \"*\" }]; }
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceReference' with the minimum fields required to make a request.
newResourceReference ::
  ResourceReference
newResourceReference =
  ResourceReference {childType = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON ResourceReference where
  parseJSON =
    Core.withObject
      "ResourceReference"
      ( \o ->
          ResourceReference
            Core.<$> (o Core..:? "childType")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ResourceReference where
  toJSON ResourceReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("childType" Core..=) Core.<$> childType,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A rollout resource that defines how service configuration versions are pushed to control plane systems. Typically, you create a new version of the service config, and then create a Rollout to push the service config.
--
-- /See:/ 'newRollout' smart constructor.
data Rollout = Rollout
  { -- | Creation time of the rollout. Readonly.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The user who created the Rollout. Readonly.
    createdBy :: (Core.Maybe Core.Text),
    -- | The strategy associated with a rollout to delete a @ManagedService@. Readonly.
    deleteServiceStrategy :: (Core.Maybe DeleteServiceStrategy),
    -- | Optional. Unique identifier of this Rollout. Must be no longer than 63 characters and only lower case letters, digits, \'.\', \'/\' and \'-\' are allowed. If not specified by client, the server will generate one. The generated id will have the form of , where \"date\" is the create date in ISO 8601 format. \"revision number\" is a monotonically increasing positive number that is reset every day for each service. An example of the generated rollout/id is \'2016-02-16r1\'
    rolloutId :: (Core.Maybe Core.Text),
    -- | The name of the service associated with this Rollout.
    serviceName :: (Core.Maybe Core.Text),
    -- | The status of this rollout. Readonly. In case of a failed rollout, the system will automatically rollback to the current Rollout version. Readonly.
    status :: (Core.Maybe Rollout_Status),
    -- | Google Service Control selects service configurations based on traffic percentage.
    trafficPercentStrategy :: (Core.Maybe TrafficPercentStrategy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Rollout' with the minimum fields required to make a request.
newRollout ::
  Rollout
newRollout =
  Rollout
    { createTime = Core.Nothing,
      createdBy = Core.Nothing,
      deleteServiceStrategy = Core.Nothing,
      rolloutId = Core.Nothing,
      serviceName = Core.Nothing,
      status = Core.Nothing,
      trafficPercentStrategy = Core.Nothing
    }

instance Core.FromJSON Rollout where
  parseJSON =
    Core.withObject
      "Rollout"
      ( \o ->
          Rollout
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "createdBy")
            Core.<*> (o Core..:? "deleteServiceStrategy")
            Core.<*> (o Core..:? "rolloutId")
            Core.<*> (o Core..:? "serviceName")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "trafficPercentStrategy")
      )

instance Core.ToJSON Rollout where
  toJSON Rollout {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("createdBy" Core..=) Core.<$> createdBy,
            ("deleteServiceStrategy" Core..=) Core.<$> deleteServiceStrategy,
            ("rolloutId" Core..=) Core.<$> rolloutId,
            ("serviceName" Core..=) Core.<$> serviceName,
            ("status" Core..=) Core.<$> status,
            ("trafficPercentStrategy" Core..=)
              Core.<$> trafficPercentStrategy
          ]
      )

-- | Settings for Ruby client libraries.
--
-- /See:/ 'newRubySettings' smart constructor.
newtype RubySettings = RubySettings
  { -- | Some settings.
    common :: (Core.Maybe CommonLanguageSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RubySettings' with the minimum fields required to make a request.
newRubySettings ::
  RubySettings
newRubySettings = RubySettings {common = Core.Nothing}

instance Core.FromJSON RubySettings where
  parseJSON =
    Core.withObject
      "RubySettings"
      (\o -> RubySettings Core.<$> (o Core..:? "common"))

instance Core.ToJSON RubySettings where
  toJSON RubySettings {..} =
    Core.object (Core.catMaybes [("common" Core..=) Core.<$> common])

-- | This message is used to configure the generation of a subset of the RPCs in a service for client libraries.
--
-- /See:/ 'newSelectiveGapicGeneration' smart constructor.
newtype SelectiveGapicGeneration = SelectiveGapicGeneration
  { -- | An allowlist of the fully qualified names of RPCs that should be included on public client surfaces.
    methods :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SelectiveGapicGeneration' with the minimum fields required to make a request.
newSelectiveGapicGeneration ::
  SelectiveGapicGeneration
newSelectiveGapicGeneration =
  SelectiveGapicGeneration {methods = Core.Nothing}

instance Core.FromJSON SelectiveGapicGeneration where
  parseJSON =
    Core.withObject
      "SelectiveGapicGeneration"
      (\o -> SelectiveGapicGeneration Core.<$> (o Core..:? "methods"))

instance Core.ToJSON SelectiveGapicGeneration where
  toJSON SelectiveGapicGeneration {..} =
    Core.object
      (Core.catMaybes [("methods" Core..=) Core.<$> methods])

-- | @Service@ is the root object of Google API service configuration (service config). It describes the basic information about a logical service, such as the service name and the user-facing title, and delegates other aspects to sub-sections. Each sub-section is either a proto message or a repeated proto message that configures a specific aspect, such as auth. For more information, see each proto message definition. Example: type: google.api.Service name: calendar.googleapis.com title: Google Calendar API apis: - name: google.calendar.v3.Calendar visibility: rules: - selector: \"google.calendar.v3./\" restriction: PREVIEW backend: rules: - selector: \"google.calendar.v3./\" address: calendar.example.com authentication: providers: - id: google/calendar/auth jwks_uri: https:\/\/www.googleapis.com\/oauth2\/v1\/certs issuer: https:\/\/securetoken.google.com rules: - selector: \"*\" requirements: provider/id: google/calendar_auth
--
-- /See:/ 'newService' smart constructor.
data Service = Service
  { -- | A list of API interfaces exported by this service. Only the @name@ field of the google.protobuf.Api needs to be provided by the configuration author, as the remaining fields will be derived from the IDL during the normalization process. It is an error to specify an API interface here which cannot be resolved against the associated IDL files.
    apis :: (Core.Maybe [Api]),
    -- | Auth configuration.
    authentication :: (Core.Maybe Authentication),
    -- | API backend configuration.
    backend :: (Core.Maybe Backend),
    -- | Billing configuration.
    billing :: (Core.Maybe Billing),
    -- | Obsolete. Do not use. This field has no semantic meaning. The service config compiler always sets this field to @3@.
    configVersion :: (Core.Maybe Core.Word32),
    -- | Context configuration.
    context :: (Core.Maybe Context),
    -- | Configuration for the service control plane.
    control :: (Core.Maybe Control),
    -- | Custom error configuration.
    customError :: (Core.Maybe CustomError),
    -- | Additional API documentation.
    documentation :: (Core.Maybe Documentation),
    -- | Configuration for network endpoints. If this is empty, then an endpoint with the same name as the service is automatically generated to service all defined APIs.
    endpoints :: (Core.Maybe [Endpoint]),
    -- | A list of all enum types included in this API service. Enums referenced directly or indirectly by the @apis@ are automatically included. Enums which are not referenced but shall be included should be listed here by name by the configuration author. Example: enums: - name: google.someapi.v1.SomeEnum
    enums :: (Core.Maybe [Enum']),
    -- | HTTP configuration.
    http :: (Core.Maybe Http),
    -- | A unique ID for a specific instance of this message, typically assigned by the client for tracking purpose. Must be no longer than 63 characters and only lower case letters, digits, \'.\', \'_\' and \'-\' are allowed. If empty, the server may choose to generate one instead.
    id :: (Core.Maybe Core.Text),
    -- | Logging configuration.
    logging :: (Core.Maybe Logging),
    -- | Defines the logs used by this service.
    logs :: (Core.Maybe [LogDescriptor]),
    -- | Defines the metrics used by this service.
    metrics :: (Core.Maybe [MetricDescriptor]),
    -- | Defines the monitored resources used by this service. This is required by the Service.monitoring and Service.logging configurations.
    monitoredResources :: (Core.Maybe [MonitoredResourceDescriptor]),
    -- | Monitoring configuration.
    monitoring :: (Core.Maybe Monitoring),
    -- | The service name, which is a DNS-like logical identifier for the service, such as @calendar.googleapis.com@. The service name typically goes through DNS verification to make sure the owner of the service also owns the DNS name.
    name :: (Core.Maybe Core.Text),
    -- | The Google project that owns this service.
    producerProjectId :: (Core.Maybe Core.Text),
    -- | Settings for <https://cloud.google.com/apis/docs/cloud-client-libraries Google Cloud Client libraries> generated from APIs defined as protocol buffers.
    publishing :: (Core.Maybe Publishing),
    -- | Quota configuration.
    quota :: (Core.Maybe Quota),
    -- | Output only. The source information for this configuration if available.
    sourceInfo :: (Core.Maybe SourceInfo),
    -- | System parameter configuration.
    systemParameters :: (Core.Maybe SystemParameters),
    -- | A list of all proto message types included in this API service. It serves similar purpose as [google.api.Service.types], except that these types are not needed by user-defined APIs. Therefore, they will not show up in the generated discovery doc. This field should only be used to define system APIs in ESF.
    systemTypes :: (Core.Maybe [Type]),
    -- | The product title for this service, it is the name displayed in Google Cloud Console.
    title :: (Core.Maybe Core.Text),
    -- | A list of all proto message types included in this API service. Types referenced directly or indirectly by the @apis@ are automatically included. Messages which are not referenced but shall be included, such as types used by the @google.protobuf.Any@ type, should be listed here by name by the configuration author. Example: types: - name: google.protobuf.Int32
    types :: (Core.Maybe [Type]),
    -- | Configuration controlling usage of this service.
    usage :: (Core.Maybe Usage)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Service' with the minimum fields required to make a request.
newService ::
  Service
newService =
  Service
    { apis = Core.Nothing,
      authentication = Core.Nothing,
      backend = Core.Nothing,
      billing = Core.Nothing,
      configVersion = Core.Nothing,
      context = Core.Nothing,
      control = Core.Nothing,
      customError = Core.Nothing,
      documentation = Core.Nothing,
      endpoints = Core.Nothing,
      enums = Core.Nothing,
      http = Core.Nothing,
      id = Core.Nothing,
      logging = Core.Nothing,
      logs = Core.Nothing,
      metrics = Core.Nothing,
      monitoredResources = Core.Nothing,
      monitoring = Core.Nothing,
      name = Core.Nothing,
      producerProjectId = Core.Nothing,
      publishing = Core.Nothing,
      quota = Core.Nothing,
      sourceInfo = Core.Nothing,
      systemParameters = Core.Nothing,
      systemTypes = Core.Nothing,
      title = Core.Nothing,
      types = Core.Nothing,
      usage = Core.Nothing
    }

instance Core.FromJSON Service where
  parseJSON =
    Core.withObject
      "Service"
      ( \o ->
          Service
            Core.<$> (o Core..:? "apis")
            Core.<*> (o Core..:? "authentication")
            Core.<*> (o Core..:? "backend")
            Core.<*> (o Core..:? "billing")
            Core.<*> (o Core..:? "configVersion")
            Core.<*> (o Core..:? "context")
            Core.<*> (o Core..:? "control")
            Core.<*> (o Core..:? "customError")
            Core.<*> (o Core..:? "documentation")
            Core.<*> (o Core..:? "endpoints")
            Core.<*> (o Core..:? "enums")
            Core.<*> (o Core..:? "http")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "logging")
            Core.<*> (o Core..:? "logs")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "monitoredResources")
            Core.<*> (o Core..:? "monitoring")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "producerProjectId")
            Core.<*> (o Core..:? "publishing")
            Core.<*> (o Core..:? "quota")
            Core.<*> (o Core..:? "sourceInfo")
            Core.<*> (o Core..:? "systemParameters")
            Core.<*> (o Core..:? "systemTypes")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "types")
            Core.<*> (o Core..:? "usage")
      )

instance Core.ToJSON Service where
  toJSON Service {..} =
    Core.object
      ( Core.catMaybes
          [ ("apis" Core..=) Core.<$> apis,
            ("authentication" Core..=) Core.<$> authentication,
            ("backend" Core..=) Core.<$> backend,
            ("billing" Core..=) Core.<$> billing,
            ("configVersion" Core..=) Core.<$> configVersion,
            ("context" Core..=) Core.<$> context,
            ("control" Core..=) Core.<$> control,
            ("customError" Core..=) Core.<$> customError,
            ("documentation" Core..=) Core.<$> documentation,
            ("endpoints" Core..=) Core.<$> endpoints,
            ("enums" Core..=) Core.<$> enums,
            ("http" Core..=) Core.<$> http,
            ("id" Core..=) Core.<$> id,
            ("logging" Core..=) Core.<$> logging,
            ("logs" Core..=) Core.<$> logs,
            ("metrics" Core..=) Core.<$> metrics,
            ("monitoredResources" Core..=) Core.<$> monitoredResources,
            ("monitoring" Core..=) Core.<$> monitoring,
            ("name" Core..=) Core.<$> name,
            ("producerProjectId" Core..=) Core.<$> producerProjectId,
            ("publishing" Core..=) Core.<$> publishing,
            ("quota" Core..=) Core.<$> quota,
            ("sourceInfo" Core..=) Core.<$> sourceInfo,
            ("systemParameters" Core..=) Core.<$> systemParameters,
            ("systemTypes" Core..=) Core.<$> systemTypes,
            ("title" Core..=) Core.<$> title,
            ("types" Core..=) Core.<$> types,
            ("usage" Core..=) Core.<$> usage
          ]
      )

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
data SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy),
    -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest ::
  SetIamPolicyRequest
newSetIamPolicyRequest =
  SetIamPolicyRequest
    { policy = Core.Nothing,
      updateMask = Core.Nothing
    }

instance Core.FromJSON SetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "SetIamPolicyRequest"
      ( \o ->
          SetIamPolicyRequest
            Core.<$> (o Core..:? "policy")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON SetIamPolicyRequest where
  toJSON SetIamPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("policy" Core..=) Core.<$> policy,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | @SourceContext@ represents information about the source of a protobuf element, like the file in which it is defined.
--
-- /See:/ 'newSourceContext' smart constructor.
newtype SourceContext = SourceContext
  { -- | The path-qualified name of the .proto file that contained the associated protobuf element. For example: @\"google\/protobuf\/source_context.proto\"@.
    fileName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceContext' with the minimum fields required to make a request.
newSourceContext ::
  SourceContext
newSourceContext = SourceContext {fileName = Core.Nothing}

instance Core.FromJSON SourceContext where
  parseJSON =
    Core.withObject
      "SourceContext"
      (\o -> SourceContext Core.<$> (o Core..:? "fileName"))

instance Core.ToJSON SourceContext where
  toJSON SourceContext {..} =
    Core.object
      (Core.catMaybes [("fileName" Core..=) Core.<$> fileName])

-- | Source information used to create a Service Config
--
-- /See:/ 'newSourceInfo' smart constructor.
newtype SourceInfo = SourceInfo
  { -- | All files used during config generation.
    sourceFiles :: (Core.Maybe [SourceInfo_SourceFilesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceInfo' with the minimum fields required to make a request.
newSourceInfo ::
  SourceInfo
newSourceInfo = SourceInfo {sourceFiles = Core.Nothing}

instance Core.FromJSON SourceInfo where
  parseJSON =
    Core.withObject
      "SourceInfo"
      (\o -> SourceInfo Core.<$> (o Core..:? "sourceFiles"))

instance Core.ToJSON SourceInfo where
  toJSON SourceInfo {..} =
    Core.object
      (Core.catMaybes [("sourceFiles" Core..=) Core.<$> sourceFiles])

--
-- /See:/ 'newSourceInfo_SourceFilesItem' smart constructor.
newtype SourceInfo_SourceFilesItem = SourceInfo_SourceFilesItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceInfo_SourceFilesItem' with the minimum fields required to make a request.
newSourceInfo_SourceFilesItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  SourceInfo_SourceFilesItem
newSourceInfo_SourceFilesItem additional =
  SourceInfo_SourceFilesItem {additional = additional}

instance Core.FromJSON SourceInfo_SourceFilesItem where
  parseJSON =
    Core.withObject
      "SourceInfo_SourceFilesItem"
      ( \o ->
          SourceInfo_SourceFilesItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SourceInfo_SourceFilesItem where
  toJSON SourceInfo_SourceFilesItem {..} = Core.toJSON additional

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional =
  Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      (\o -> Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON additional

-- | Represents the status of one operation step.
--
-- /See:/ 'newStep' smart constructor.
data Step = Step
  { -- | The short description of the step.
    description :: (Core.Maybe Core.Text),
    -- | The status code.
    status :: (Core.Maybe Step_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Step' with the minimum fields required to make a request.
newStep ::
  Step
newStep = Step {description = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON Step where
  parseJSON =
    Core.withObject
      "Step"
      ( \o ->
          Step
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON Step where
  toJSON Step {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Request message for SubmitConfigSource method.
--
-- /See:/ 'newSubmitConfigSourceRequest' smart constructor.
data SubmitConfigSourceRequest = SubmitConfigSourceRequest
  { -- | Required. The source configuration for the service.
    configSource :: (Core.Maybe ConfigSource),
    -- | Optional. If set, this will result in the generation of a @google.api.Service@ configuration based on the @ConfigSource@ provided, but the generated config and the sources will NOT be persisted.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubmitConfigSourceRequest' with the minimum fields required to make a request.
newSubmitConfigSourceRequest ::
  SubmitConfigSourceRequest
newSubmitConfigSourceRequest =
  SubmitConfigSourceRequest
    { configSource = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance Core.FromJSON SubmitConfigSourceRequest where
  parseJSON =
    Core.withObject
      "SubmitConfigSourceRequest"
      ( \o ->
          SubmitConfigSourceRequest
            Core.<$> (o Core..:? "configSource")
            Core.<*> (o Core..:? "validateOnly")
      )

instance Core.ToJSON SubmitConfigSourceRequest where
  toJSON SubmitConfigSourceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("configSource" Core..=) Core.<$> configSource,
            ("validateOnly" Core..=) Core.<$> validateOnly
          ]
      )

-- | Response message for SubmitConfigSource method.
--
-- /See:/ 'newSubmitConfigSourceResponse' smart constructor.
newtype SubmitConfigSourceResponse = SubmitConfigSourceResponse
  { -- | The generated service configuration.
    serviceConfig :: (Core.Maybe Service)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubmitConfigSourceResponse' with the minimum fields required to make a request.
newSubmitConfigSourceResponse ::
  SubmitConfigSourceResponse
newSubmitConfigSourceResponse =
  SubmitConfigSourceResponse {serviceConfig = Core.Nothing}

instance Core.FromJSON SubmitConfigSourceResponse where
  parseJSON =
    Core.withObject
      "SubmitConfigSourceResponse"
      ( \o ->
          SubmitConfigSourceResponse Core.<$> (o Core..:? "serviceConfig")
      )

instance Core.ToJSON SubmitConfigSourceResponse where
  toJSON SubmitConfigSourceResponse {..} =
    Core.object
      (Core.catMaybes [("serviceConfig" Core..=) Core.<$> serviceConfig])

-- | Define a parameter\'s name and location. The parameter may be passed as either an HTTP header or a URL query parameter, and if both are passed the behavior is implementation-dependent.
--
-- /See:/ 'newSystemParameter' smart constructor.
data SystemParameter = SystemParameter
  { -- | Define the HTTP header name to use for the parameter. It is case insensitive.
    httpHeader :: (Core.Maybe Core.Text),
    -- | Define the name of the parameter, such as \"api_key\" . It is case sensitive.
    name :: (Core.Maybe Core.Text),
    -- | Define the URL query parameter name to use for the parameter. It is case sensitive.
    urlQueryParameter :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SystemParameter' with the minimum fields required to make a request.
newSystemParameter ::
  SystemParameter
newSystemParameter =
  SystemParameter
    { httpHeader = Core.Nothing,
      name = Core.Nothing,
      urlQueryParameter = Core.Nothing
    }

instance Core.FromJSON SystemParameter where
  parseJSON =
    Core.withObject
      "SystemParameter"
      ( \o ->
          SystemParameter
            Core.<$> (o Core..:? "httpHeader")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "urlQueryParameter")
      )

instance Core.ToJSON SystemParameter where
  toJSON SystemParameter {..} =
    Core.object
      ( Core.catMaybes
          [ ("httpHeader" Core..=) Core.<$> httpHeader,
            ("name" Core..=) Core.<$> name,
            ("urlQueryParameter" Core..=) Core.<$> urlQueryParameter
          ]
      )

-- | Define a system parameter rule mapping system parameter definitions to methods.
--
-- /See:/ 'newSystemParameterRule' smart constructor.
data SystemParameterRule = SystemParameterRule
  { -- | Define parameters. Multiple names may be defined for a parameter. For a given method call, only one of them should be used. If multiple names are used the behavior is implementation-dependent. If none of the specified names are present the behavior is parameter-dependent.
    parameters :: (Core.Maybe [SystemParameter]),
    -- | Selects the methods to which this rule applies. Use \'*\' to indicate all methods in all APIs. Refer to selector for syntax details.
    selector :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SystemParameterRule' with the minimum fields required to make a request.
newSystemParameterRule ::
  SystemParameterRule
newSystemParameterRule =
  SystemParameterRule
    { parameters = Core.Nothing,
      selector = Core.Nothing
    }

instance Core.FromJSON SystemParameterRule where
  parseJSON =
    Core.withObject
      "SystemParameterRule"
      ( \o ->
          SystemParameterRule
            Core.<$> (o Core..:? "parameters")
            Core.<*> (o Core..:? "selector")
      )

instance Core.ToJSON SystemParameterRule where
  toJSON SystemParameterRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("parameters" Core..=) Core.<$> parameters,
            ("selector" Core..=) Core.<$> selector
          ]
      )

-- | === System parameter configuration A system parameter is a special kind of parameter defined by the API system, not by an individual API. It is typically mapped to an HTTP header and\/or a URL query parameter. This configuration specifies which methods change the names of the system parameters.
--
-- /See:/ 'newSystemParameters' smart constructor.
newtype SystemParameters = SystemParameters
  { -- | Define system parameters. The parameters defined here will override the default parameters implemented by the system. If this field is missing from the service config, default system parameters will be used. Default system parameters and names is implementation-dependent. Example: define api key for all methods system_parameters rules: - selector: \"*\" parameters: - name: api/key url/query/parameter: api/key Example: define 2 api key names for a specific method. system/parameters rules: - selector: \"\/ListShelves\" parameters: - name: api/key http/header: Api-Key1 - name: api/key http_header: Api-Key2 __NOTE:__ All service configuration rules follow \"last one wins\" order.
    rules :: (Core.Maybe [SystemParameterRule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SystemParameters' with the minimum fields required to make a request.
newSystemParameters ::
  SystemParameters
newSystemParameters = SystemParameters {rules = Core.Nothing}

instance Core.FromJSON SystemParameters where
  parseJSON =
    Core.withObject
      "SystemParameters"
      (\o -> SystemParameters Core.<$> (o Core..:? "rules"))

instance Core.ToJSON SystemParameters where
  toJSON SystemParameters {..} =
    Core.object (Core.catMaybes [("rules" Core..=) Core.<$> rules])

-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
  { -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as @*@ or @storage.*@) are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsRequest' with the minimum fields required to make a request.
newTestIamPermissionsRequest ::
  TestIamPermissionsRequest
newTestIamPermissionsRequest =
  TestIamPermissionsRequest {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsRequest where
  parseJSON =
    Core.withObject
      "TestIamPermissionsRequest"
      ( \o ->
          TestIamPermissionsRequest Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsRequest where
  toJSON TestIamPermissionsRequest {..} =
    Core.object
      (Core.catMaybes [("permissions" Core..=) Core.<$> permissions])

-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsResponse' smart constructor.
newtype TestIamPermissionsResponse = TestIamPermissionsResponse
  { -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsResponse' with the minimum fields required to make a request.
newTestIamPermissionsResponse ::
  TestIamPermissionsResponse
newTestIamPermissionsResponse =
  TestIamPermissionsResponse {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsResponse where
  parseJSON =
    Core.withObject
      "TestIamPermissionsResponse"
      ( \o ->
          TestIamPermissionsResponse Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      (Core.catMaybes [("permissions" Core..=) Core.<$> permissions])

-- | Strategy that specifies how clients of Google Service Controller want to send traffic to use different config versions. This is generally used by API proxy to split traffic based on your configured percentage for each config version. One example of how to gradually rollout a new service configuration using this strategy: Day 1 Rollout { id: \"example.googleapis.com\/rollout/20160206\" traffic/percent/strategy { percentages: { \"example.googleapis.com\/20160201\": 70.00 \"example.googleapis.com\/20160206\": 30.00 } } } Day 2 Rollout { id: \"example.googleapis.com\/rollout/20160207\" traffic/percent/strategy: { percentages: { \"example.googleapis.com\/20160206\": 100.00 } } }
--
-- /See:/ 'newTrafficPercentStrategy' smart constructor.
newtype TrafficPercentStrategy = TrafficPercentStrategy
  { -- | Maps service configuration IDs to their corresponding traffic percentage. Key is the service configuration ID, Value is the traffic percentage which must be greater than 0.0 and the sum must equal to 100.0.
    percentages :: (Core.Maybe TrafficPercentStrategy_Percentages)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrafficPercentStrategy' with the minimum fields required to make a request.
newTrafficPercentStrategy ::
  TrafficPercentStrategy
newTrafficPercentStrategy =
  TrafficPercentStrategy {percentages = Core.Nothing}

instance Core.FromJSON TrafficPercentStrategy where
  parseJSON =
    Core.withObject
      "TrafficPercentStrategy"
      (\o -> TrafficPercentStrategy Core.<$> (o Core..:? "percentages"))

instance Core.ToJSON TrafficPercentStrategy where
  toJSON TrafficPercentStrategy {..} =
    Core.object
      (Core.catMaybes [("percentages" Core..=) Core.<$> percentages])

-- | Maps service configuration IDs to their corresponding traffic percentage. Key is the service configuration ID, Value is the traffic percentage which must be greater than 0.0 and the sum must equal to 100.0.
--
-- /See:/ 'newTrafficPercentStrategy_Percentages' smart constructor.
newtype TrafficPercentStrategy_Percentages = TrafficPercentStrategy_Percentages
  { additional :: (Core.HashMap Core.Text Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrafficPercentStrategy_Percentages' with the minimum fields required to make a request.
newTrafficPercentStrategy_Percentages ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Double ->
  TrafficPercentStrategy_Percentages
newTrafficPercentStrategy_Percentages additional =
  TrafficPercentStrategy_Percentages {additional = additional}

instance Core.FromJSON TrafficPercentStrategy_Percentages where
  parseJSON =
    Core.withObject
      "TrafficPercentStrategy_Percentages"
      ( \o ->
          TrafficPercentStrategy_Percentages
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON TrafficPercentStrategy_Percentages where
  toJSON TrafficPercentStrategy_Percentages {..} =
    Core.toJSON additional

-- | A protocol buffer message type.
--
-- /See:/ 'newType' smart constructor.
data Type = Type
  { -- | The source edition string, only valid when syntax is SYNTAX_EDITIONS.
    edition :: (Core.Maybe Core.Text),
    -- | The list of fields.
    fields :: (Core.Maybe [Field]),
    -- | The fully qualified message name.
    name :: (Core.Maybe Core.Text),
    -- | The list of types appearing in @oneof@ definitions in this type.
    oneofs :: (Core.Maybe [Core.Text]),
    -- | The protocol buffer options.
    options :: (Core.Maybe [Option]),
    -- | The source context.
    sourceContext :: (Core.Maybe SourceContext),
    -- | The source syntax.
    syntax :: (Core.Maybe Type_Syntax)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Type' with the minimum fields required to make a request.
newType ::
  Type
newType =
  Type
    { edition = Core.Nothing,
      fields = Core.Nothing,
      name = Core.Nothing,
      oneofs = Core.Nothing,
      options = Core.Nothing,
      sourceContext = Core.Nothing,
      syntax = Core.Nothing
    }

instance Core.FromJSON Type where
  parseJSON =
    Core.withObject
      "Type"
      ( \o ->
          Type
            Core.<$> (o Core..:? "edition")
            Core.<*> (o Core..:? "fields")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "oneofs")
            Core.<*> (o Core..:? "options")
            Core.<*> (o Core..:? "sourceContext")
            Core.<*> (o Core..:? "syntax")
      )

instance Core.ToJSON Type where
  toJSON Type {..} =
    Core.object
      ( Core.catMaybes
          [ ("edition" Core..=) Core.<$> edition,
            ("fields" Core..=) Core.<$> fields,
            ("name" Core..=) Core.<$> name,
            ("oneofs" Core..=) Core.<$> oneofs,
            ("options" Core..=) Core.<$> options,
            ("sourceContext" Core..=) Core.<$> sourceContext,
            ("syntax" Core..=) Core.<$> syntax
          ]
      )

-- | Response message for UndeleteService method.
--
-- /See:/ 'newUndeleteServiceResponse' smart constructor.
newtype UndeleteServiceResponse = UndeleteServiceResponse
  { -- | Revived service resource.
    service :: (Core.Maybe ManagedService)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteServiceResponse' with the minimum fields required to make a request.
newUndeleteServiceResponse ::
  UndeleteServiceResponse
newUndeleteServiceResponse =
  UndeleteServiceResponse {service = Core.Nothing}

instance Core.FromJSON UndeleteServiceResponse where
  parseJSON =
    Core.withObject
      "UndeleteServiceResponse"
      (\o -> UndeleteServiceResponse Core.<$> (o Core..:? "service"))

instance Core.ToJSON UndeleteServiceResponse where
  toJSON UndeleteServiceResponse {..} =
    Core.object
      (Core.catMaybes [("service" Core..=) Core.<$> service])

-- | Configuration controlling usage of a service.
--
-- /See:/ 'newUsage' smart constructor.
data Usage = Usage
  { -- | The full resource name of a channel used for sending notifications to the service producer. Google Service Management currently only supports <https://cloud.google.com/pubsub Google Cloud Pub\/Sub> as a notification channel. To use Google Cloud Pub\/Sub as the channel, this must be the name of a Cloud Pub\/Sub topic that uses the Cloud Pub\/Sub topic name format documented in https:\/\/cloud.google.com\/pubsub\/docs\/overview.
    producerNotificationChannel :: (Core.Maybe Core.Text),
    -- | Requirements that must be satisfied before a consumer project can use the service. Each requirement is of the form \/; for example \'serviceusage.googleapis.com\/billing-enabled\'. For Google APIs, a Terms of Service requirement must be included here. Google Cloud APIs must include \"serviceusage.googleapis.com\/tos\/cloud\". Other Google APIs should include \"serviceusage.googleapis.com\/tos\/universal\". Additional ToS can be included based on the business needs.
    requirements :: (Core.Maybe [Core.Text]),
    -- | A list of usage rules that apply to individual API methods. __NOTE:__ All service configuration rules follow \"last one wins\" order.
    rules :: (Core.Maybe [UsageRule])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Usage' with the minimum fields required to make a request.
newUsage ::
  Usage
newUsage =
  Usage
    { producerNotificationChannel = Core.Nothing,
      requirements = Core.Nothing,
      rules = Core.Nothing
    }

instance Core.FromJSON Usage where
  parseJSON =
    Core.withObject
      "Usage"
      ( \o ->
          Usage
            Core.<$> (o Core..:? "producerNotificationChannel")
            Core.<*> (o Core..:? "requirements")
            Core.<*> (o Core..:? "rules")
      )

instance Core.ToJSON Usage where
  toJSON Usage {..} =
    Core.object
      ( Core.catMaybes
          [ ("producerNotificationChannel" Core..=)
              Core.<$> producerNotificationChannel,
            ("requirements" Core..=) Core.<$> requirements,
            ("rules" Core..=) Core.<$> rules
          ]
      )

-- | Usage configuration rules for the service. NOTE: Under development. Use this rule to configure unregistered calls for the service. Unregistered calls are calls that do not contain consumer project identity. (Example: calls that do not contain an API key). By default, API methods do not allow unregistered calls, and each method call must be identified by a consumer project identity. Use this rule to allow\/disallow unregistered calls. Example of an API that wants to allow unregistered calls for entire service. usage: rules: - selector: \"*\" allow/unregistered/calls: true Example of a method that wants to allow unregistered calls. usage: rules: - selector: \"google.example.library.v1.LibraryService.CreateBook\" allow/unregistered/calls: true
--
-- /See:/ 'newUsageRule' smart constructor.
data UsageRule = UsageRule
  { -- | If true, the selected method allows unregistered calls, e.g. calls that don\'t identify any user or application.
    allowUnregisteredCalls :: (Core.Maybe Core.Bool),
    -- | Selects the methods to which this rule applies. Use \'*\' to indicate all methods in all APIs. Refer to selector for syntax details.
    selector :: (Core.Maybe Core.Text),
    -- | If true, the selected method should skip service control and the control plane features, such as quota and billing, will not be available. This flag is used by Google Cloud Endpoints to bypass checks for internal methods, such as service health check methods.
    skipServiceControl :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageRule' with the minimum fields required to make a request.
newUsageRule ::
  UsageRule
newUsageRule =
  UsageRule
    { allowUnregisteredCalls = Core.Nothing,
      selector = Core.Nothing,
      skipServiceControl = Core.Nothing
    }

instance Core.FromJSON UsageRule where
  parseJSON =
    Core.withObject
      "UsageRule"
      ( \o ->
          UsageRule
            Core.<$> (o Core..:? "allowUnregisteredCalls")
            Core.<*> (o Core..:? "selector")
            Core.<*> (o Core..:? "skipServiceControl")
      )

instance Core.ToJSON UsageRule where
  toJSON UsageRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowUnregisteredCalls" Core..=)
              Core.<$> allowUnregisteredCalls,
            ("selector" Core..=) Core.<$> selector,
            ("skipServiceControl" Core..=) Core.<$> skipServiceControl
          ]
      )
