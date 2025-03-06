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
-- Module      : Gogol.IAP.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.IAP.Internal.Product
  ( -- * AccessDeniedPageSettings
    AccessDeniedPageSettings (..),
    newAccessDeniedPageSettings,

    -- * AccessSettings
    AccessSettings (..),
    newAccessSettings,

    -- * AllowedDomainsSettings
    AllowedDomainsSettings (..),
    newAllowedDomainsSettings,

    -- * ApplicationSettings
    ApplicationSettings (..),
    newApplicationSettings,

    -- * AttributePropagationSettings
    AttributePropagationSettings (..),
    newAttributePropagationSettings,

    -- * Binding
    Binding (..),
    newBinding,

    -- * Brand
    Brand (..),
    newBrand,

    -- * CorsSettings
    CorsSettings (..),
    newCorsSettings,

    -- * CsmSettings
    CsmSettings (..),
    newCsmSettings,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Expr
    Expr (..),
    newExpr,

    -- * GcipSettings
    GcipSettings (..),
    newGcipSettings,

    -- * GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- * GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- * IapSettings
    IapSettings (..),
    newIapSettings,

    -- * IdentityAwareProxyClient
    IdentityAwareProxyClient (..),
    newIdentityAwareProxyClient,

    -- * ListBrandsResponse
    ListBrandsResponse (..),
    newListBrandsResponse,

    -- * ListIdentityAwareProxyClientsResponse
    ListIdentityAwareProxyClientsResponse (..),
    newListIdentityAwareProxyClientsResponse,

    -- * ListTunnelDestGroupsResponse
    ListTunnelDestGroupsResponse (..),
    newListTunnelDestGroupsResponse,

    -- * NextStateOfTags
    NextStateOfTags (..),
    newNextStateOfTags,

    -- * OAuth2
    OAuth2 (..),
    newOAuth2,

    -- * OAuthSettings
    OAuthSettings (..),
    newOAuthSettings,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PolicyDelegationSettings
    PolicyDelegationSettings (..),
    newPolicyDelegationSettings,

    -- * PolicyName
    PolicyName (..),
    newPolicyName,

    -- * ReauthSettings
    ReauthSettings (..),
    newReauthSettings,

    -- * ResetIdentityAwareProxyClientSecretRequest
    ResetIdentityAwareProxyClientSecretRequest (..),
    newResetIdentityAwareProxyClientSecretRequest,

    -- * Resource
    Resource (..),
    newResource,

    -- * Resource_ExpectedNextState
    Resource_ExpectedNextState (..),
    newResource_ExpectedNextState,

    -- * Resource_Labels
    Resource_Labels (..),
    newResource_Labels,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * TagsFullState
    TagsFullState (..),
    newTagsFullState,

    -- * TagsFullState_Tags
    TagsFullState_Tags (..),
    newTagsFullState_Tags,

    -- * TagsFullStateForChildResource
    TagsFullStateForChildResource (..),
    newTagsFullStateForChildResource,

    -- * TagsFullStateForChildResource_Tags
    TagsFullStateForChildResource_Tags (..),
    newTagsFullStateForChildResource_Tags,

    -- * TagsPartialState
    TagsPartialState (..),
    newTagsPartialState,

    -- * TagsPartialState_TagsToUpsert
    TagsPartialState_TagsToUpsert (..),
    newTagsPartialState_TagsToUpsert,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * TunnelDestGroup
    TunnelDestGroup (..),
    newTunnelDestGroup,

    -- * ValidateIapAttributeExpressionResponse
    ValidateIapAttributeExpressionResponse (..),
    newValidateIapAttributeExpressionResponse,

    -- * WorkforceIdentitySettings
    WorkforceIdentitySettings (..),
    newWorkforceIdentitySettings,
  )
where

import Gogol.IAP.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Custom content configuration for access denied page. IAP allows customers to define a custom URI to use as the error page when access is denied to users. If IAP prevents access to this page, the default IAP error page will be displayed instead.
--
-- /See:/ 'newAccessDeniedPageSettings' smart constructor.
data AccessDeniedPageSettings = AccessDeniedPageSettings
  { -- | The URI to be redirected to when access is denied.
    accessDeniedPageUri :: (Core.Maybe Core.Text),
    -- | Whether to generate a troubleshooting URL on access denied events to this application.
    generateTroubleshootingUri :: (Core.Maybe Core.Bool),
    -- | Whether to generate remediation token on access denied events to this application.
    remediationTokenGenerationEnabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessDeniedPageSettings' with the minimum fields required to make a request.
newAccessDeniedPageSettings ::
  AccessDeniedPageSettings
newAccessDeniedPageSettings =
  AccessDeniedPageSettings
    { accessDeniedPageUri = Core.Nothing,
      generateTroubleshootingUri = Core.Nothing,
      remediationTokenGenerationEnabled = Core.Nothing
    }

instance Core.FromJSON AccessDeniedPageSettings where
  parseJSON =
    Core.withObject
      "AccessDeniedPageSettings"
      ( \o ->
          AccessDeniedPageSettings
            Core.<$> (o Core..:? "accessDeniedPageUri")
            Core.<*> (o Core..:? "generateTroubleshootingUri")
            Core.<*> (o Core..:? "remediationTokenGenerationEnabled")
      )

instance Core.ToJSON AccessDeniedPageSettings where
  toJSON AccessDeniedPageSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessDeniedPageUri" Core..=) Core.<$> accessDeniedPageUri,
            ("generateTroubleshootingUri" Core..=)
              Core.<$> generateTroubleshootingUri,
            ("remediationTokenGenerationEnabled" Core..=)
              Core.<$> remediationTokenGenerationEnabled
          ]
      )

-- | Access related settings for IAP protected apps.
--
-- /See:/ 'newAccessSettings' smart constructor.
data AccessSettings = AccessSettings
  { -- | Optional. Settings to configure and enable allowed domains.
    allowedDomainsSettings :: (Core.Maybe AllowedDomainsSettings),
    -- | Optional. Configuration to allow cross-origin requests via IAP.
    corsSettings :: (Core.Maybe CorsSettings),
    -- | Optional. GCIP claims and endpoint configurations for 3p identity providers.
    gcipSettings :: (Core.Maybe GcipSettings),
    -- | Optional. Identity sources that IAP can use to authenticate the end user. Only one identity source can be configured.
    identitySources :: (Core.Maybe [AccessSettings_IdentitySourcesItem]),
    -- | Optional. Settings to configure IAP\'s OAuth behavior.
    oauthSettings :: (Core.Maybe OAuthSettings),
    -- | Optional. Settings to allow google-internal teams to use IAP for apps hosted in a tenant project.
    policyDelegationSettings :: (Core.Maybe PolicyDelegationSettings),
    -- | Optional. Settings to configure reauthentication policies in IAP.
    reauthSettings :: (Core.Maybe ReauthSettings),
    -- | Optional. Settings to configure the workforce identity federation, including workforce pools and OAuth 2.0 settings.
    workforceIdentitySettings :: (Core.Maybe WorkforceIdentitySettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSettings' with the minimum fields required to make a request.
newAccessSettings ::
  AccessSettings
newAccessSettings =
  AccessSettings
    { allowedDomainsSettings = Core.Nothing,
      corsSettings = Core.Nothing,
      gcipSettings = Core.Nothing,
      identitySources = Core.Nothing,
      oauthSettings = Core.Nothing,
      policyDelegationSettings = Core.Nothing,
      reauthSettings = Core.Nothing,
      workforceIdentitySettings = Core.Nothing
    }

instance Core.FromJSON AccessSettings where
  parseJSON =
    Core.withObject
      "AccessSettings"
      ( \o ->
          AccessSettings
            Core.<$> (o Core..:? "allowedDomainsSettings")
            Core.<*> (o Core..:? "corsSettings")
            Core.<*> (o Core..:? "gcipSettings")
            Core.<*> (o Core..:? "identitySources")
            Core.<*> (o Core..:? "oauthSettings")
            Core.<*> (o Core..:? "policyDelegationSettings")
            Core.<*> (o Core..:? "reauthSettings")
            Core.<*> (o Core..:? "workforceIdentitySettings")
      )

instance Core.ToJSON AccessSettings where
  toJSON AccessSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowedDomainsSettings" Core..=)
              Core.<$> allowedDomainsSettings,
            ("corsSettings" Core..=) Core.<$> corsSettings,
            ("gcipSettings" Core..=) Core.<$> gcipSettings,
            ("identitySources" Core..=) Core.<$> identitySources,
            ("oauthSettings" Core..=) Core.<$> oauthSettings,
            ("policyDelegationSettings" Core..=)
              Core.<$> policyDelegationSettings,
            ("reauthSettings" Core..=) Core.<$> reauthSettings,
            ("workforceIdentitySettings" Core..=)
              Core.<$> workforceIdentitySettings
          ]
      )

-- | Configuration for IAP allowed domains. Lets you to restrict access to an app and allow access to only the domains that you list.
--
-- /See:/ 'newAllowedDomainsSettings' smart constructor.
data AllowedDomainsSettings = AllowedDomainsSettings
  { -- | Optional. List of trusted domains.
    domains :: (Core.Maybe [Core.Text]),
    -- | Optional. Configuration for customers to opt in for the feature.
    enable :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AllowedDomainsSettings' with the minimum fields required to make a request.
newAllowedDomainsSettings ::
  AllowedDomainsSettings
newAllowedDomainsSettings =
  AllowedDomainsSettings
    { domains = Core.Nothing,
      enable = Core.Nothing
    }

instance Core.FromJSON AllowedDomainsSettings where
  parseJSON =
    Core.withObject
      "AllowedDomainsSettings"
      ( \o ->
          AllowedDomainsSettings
            Core.<$> (o Core..:? "domains")
            Core.<*> (o Core..:? "enable")
      )

instance Core.ToJSON AllowedDomainsSettings where
  toJSON AllowedDomainsSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("domains" Core..=) Core.<$> domains,
            ("enable" Core..=) Core.<$> enable
          ]
      )

-- | Wrapper over application specific settings for IAP.
--
-- /See:/ 'newApplicationSettings' smart constructor.
data ApplicationSettings = ApplicationSettings
  { -- | Optional. Customization for Access Denied page.
    accessDeniedPageSettings :: (Core.Maybe AccessDeniedPageSettings),
    -- | Optional. Settings to configure attribute propagation.
    attributePropagationSettings :: (Core.Maybe AttributePropagationSettings),
    -- | The Domain value to set for cookies generated by IAP. This value is not validated by the API, but will be ignored at runtime if invalid.
    cookieDomain :: (Core.Maybe Core.Text),
    -- | Optional. Settings to configure IAP\'s behavior for a service mesh.
    csmSettings :: (Core.Maybe CsmSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationSettings' with the minimum fields required to make a request.
newApplicationSettings ::
  ApplicationSettings
newApplicationSettings =
  ApplicationSettings
    { accessDeniedPageSettings = Core.Nothing,
      attributePropagationSettings = Core.Nothing,
      cookieDomain = Core.Nothing,
      csmSettings = Core.Nothing
    }

instance Core.FromJSON ApplicationSettings where
  parseJSON =
    Core.withObject
      "ApplicationSettings"
      ( \o ->
          ApplicationSettings
            Core.<$> (o Core..:? "accessDeniedPageSettings")
            Core.<*> (o Core..:? "attributePropagationSettings")
            Core.<*> (o Core..:? "cookieDomain")
            Core.<*> (o Core..:? "csmSettings")
      )

instance Core.ToJSON ApplicationSettings where
  toJSON ApplicationSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessDeniedPageSettings" Core..=)
              Core.<$> accessDeniedPageSettings,
            ("attributePropagationSettings" Core..=)
              Core.<$> attributePropagationSettings,
            ("cookieDomain" Core..=) Core.<$> cookieDomain,
            ("csmSettings" Core..=) Core.<$> csmSettings
          ]
      )

-- | Configuration for propagating attributes to applications protected by IAP.
--
-- /See:/ 'newAttributePropagationSettings' smart constructor.
data AttributePropagationSettings = AttributePropagationSettings
  { -- | Optional. Whether the provided attribute propagation settings should be evaluated on user requests. If set to true, attributes returned from the expression will be propagated in the set output credentials.
    enable :: (Core.Maybe Core.Bool),
    -- | Optional. Raw string CEL expression. Must return a list of attributes. A maximum of 45 attributes can be selected. Expressions can select different attribute types from @attributes@: @attributes.saml_attributes@, @attributes.iap_attributes@. The following functions are supported: - filter @.filter(, )@: Returns a subset of @where@ is true for every item. - in @in@: Returns true if @contains@. - selectByName @.selectByName()@: Returns the attribute in @with the given@ name, otherwise returns empty. - emitAs @.emitAs()@: Sets the @name field to the given@ for propagation in selected output credentials. - strict @.strict()@: Ignores the @x-goog-iap-attr-@ prefix for the provided @when propagating with the \`HEADER\` output credential, such as request headers. - append \`.append()\` OR \`.append()\`: Appends the provided@ or @to the end of@. Example expression: @attributes.saml_attributes.filter(x, x.name in [\'test\']).append(attributes.iap_attributes.selectByName(\'exact\').emitAs(\'custom\').strict())@
    expression :: (Core.Maybe Core.Text),
    -- | Optional. Which output credentials attributes selected by the CEL expression should be propagated in. All attributes will be fully duplicated in each selected output credential.
    outputCredentials :: (Core.Maybe [AttributePropagationSettings_OutputCredentialsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttributePropagationSettings' with the minimum fields required to make a request.
newAttributePropagationSettings ::
  AttributePropagationSettings
newAttributePropagationSettings =
  AttributePropagationSettings
    { enable = Core.Nothing,
      expression = Core.Nothing,
      outputCredentials = Core.Nothing
    }

instance Core.FromJSON AttributePropagationSettings where
  parseJSON =
    Core.withObject
      "AttributePropagationSettings"
      ( \o ->
          AttributePropagationSettings
            Core.<$> (o Core..:? "enable")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "outputCredentials")
      )

instance Core.ToJSON AttributePropagationSettings where
  toJSON AttributePropagationSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("enable" Core..=) Core.<$> enable,
            ("expression" Core..=) Core.<$> expression,
            ("outputCredentials" Core..=) Core.<$> outputCredentials
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

-- | OAuth brand data. NOTE: Only contains a portion of the data that describes a brand.
--
-- /See:/ 'newBrand' smart constructor.
data Brand = Brand
  { -- | Application name displayed on OAuth consent screen.
    applicationTitle :: (Core.Maybe Core.Text),
    -- | Output only. Identifier of the brand. NOTE: GCP project number achieves the same brand identification purpose as only one brand per project can be created.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Whether the brand is only intended for usage inside the G Suite organization only.
    orgInternalOnly :: (Core.Maybe Core.Bool),
    -- | Support email displayed on the OAuth consent screen.
    supportEmail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Brand' with the minimum fields required to make a request.
newBrand ::
  Brand
newBrand =
  Brand
    { applicationTitle = Core.Nothing,
      name = Core.Nothing,
      orgInternalOnly = Core.Nothing,
      supportEmail = Core.Nothing
    }

instance Core.FromJSON Brand where
  parseJSON =
    Core.withObject
      "Brand"
      ( \o ->
          Brand
            Core.<$> (o Core..:? "applicationTitle")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "orgInternalOnly")
            Core.<*> (o Core..:? "supportEmail")
      )

instance Core.ToJSON Brand where
  toJSON Brand {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationTitle" Core..=) Core.<$> applicationTitle,
            ("name" Core..=) Core.<$> name,
            ("orgInternalOnly" Core..=) Core.<$> orgInternalOnly,
            ("supportEmail" Core..=) Core.<$> supportEmail
          ]
      )

-- | Allows customers to configure HTTP request paths that\'ll allow HTTP OPTIONS call to bypass authentication and authorization.
--
-- /See:/ 'newCorsSettings' smart constructor.
newtype CorsSettings = CorsSettings
  { -- | Configuration to allow HTTP OPTIONS calls to skip authorization. If undefined, IAP will not apply any special logic to OPTIONS requests.
    allowHttpOptions :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CorsSettings' with the minimum fields required to make a request.
newCorsSettings ::
  CorsSettings
newCorsSettings = CorsSettings {allowHttpOptions = Core.Nothing}

instance Core.FromJSON CorsSettings where
  parseJSON =
    Core.withObject
      "CorsSettings"
      (\o -> CorsSettings Core.<$> (o Core..:? "allowHttpOptions"))

instance Core.ToJSON CorsSettings where
  toJSON CorsSettings {..} =
    Core.object
      ( Core.catMaybes
          [("allowHttpOptions" Core..=) Core.<$> allowHttpOptions]
      )

-- | Configuration for RCToken generated for service mesh workloads protected by IAP. RCToken are IAP generated JWTs that can be verified at the application. The RCToken is primarily used for service mesh deployments, and can be scoped to a single mesh by configuring the audience field accordingly.
--
-- /See:/ 'newCsmSettings' smart constructor.
newtype CsmSettings = CsmSettings
  { -- | Audience claim set in the generated RCToken. This value is not validated by IAP.
    rctokenAud :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CsmSettings' with the minimum fields required to make a request.
newCsmSettings ::
  CsmSettings
newCsmSettings = CsmSettings {rctokenAud = Core.Nothing}

instance Core.FromJSON CsmSettings where
  parseJSON =
    Core.withObject
      "CsmSettings"
      (\o -> CsmSettings Core.<$> (o Core..:? "rctokenAud"))

instance Core.ToJSON CsmSettings where
  toJSON CsmSettings {..} =
    Core.object
      (Core.catMaybes [("rctokenAud" Core..=) Core.<$> rctokenAud])

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON = Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

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

-- | Allows customers to configure tenant_id for GCIP instance per-app.
--
-- /See:/ 'newGcipSettings' smart constructor.
data GcipSettings = GcipSettings
  { -- | Login page URI associated with the GCIP tenants. Typically, all resources within the same project share the same login page, though it could be overridden at the sub resource level.
    loginPageUri :: (Core.Maybe Core.Text),
    -- | Optional. GCIP tenant ids that are linked to the IAP resource. tenant/ids could be a string beginning with a number character to indicate authenticating with GCIP tenant flow, or in the format of / to indicate authenticating with GCIP agent flow. If agent flow is used, tenant/ids should only contain one single element, while for tenant flow, tenant/ids can contain multiple elements.
    tenantIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcipSettings' with the minimum fields required to make a request.
newGcipSettings ::
  GcipSettings
newGcipSettings =
  GcipSettings
    { loginPageUri = Core.Nothing,
      tenantIds = Core.Nothing
    }

instance Core.FromJSON GcipSettings where
  parseJSON =
    Core.withObject
      "GcipSettings"
      ( \o ->
          GcipSettings
            Core.<$> (o Core..:? "loginPageUri")
            Core.<*> (o Core..:? "tenantIds")
      )

instance Core.ToJSON GcipSettings where
  toJSON GcipSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("loginPageUri" Core..=) Core.<$> loginPageUri,
            ("tenantIds" Core..=) Core.<$> tenantIds
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

-- | The IAP configurable settings.
--
-- /See:/ 'newIapSettings' smart constructor.
data IapSettings = IapSettings
  { -- | Optional. Top level wrapper for all access related setting in IAP
    accessSettings :: (Core.Maybe AccessSettings),
    -- | Optional. Top level wrapper for all application related settings in IAP
    applicationSettings :: (Core.Maybe ApplicationSettings),
    -- | Required. The resource name of the IAP protected resource.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IapSettings' with the minimum fields required to make a request.
newIapSettings ::
  IapSettings
newIapSettings =
  IapSettings
    { accessSettings = Core.Nothing,
      applicationSettings = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON IapSettings where
  parseJSON =
    Core.withObject
      "IapSettings"
      ( \o ->
          IapSettings
            Core.<$> (o Core..:? "accessSettings")
            Core.<*> (o Core..:? "applicationSettings")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON IapSettings where
  toJSON IapSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessSettings" Core..=) Core.<$> accessSettings,
            ("applicationSettings" Core..=) Core.<$> applicationSettings,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Contains the data that describes an Identity Aware Proxy owned client.
--
-- /See:/ 'newIdentityAwareProxyClient' smart constructor.
data IdentityAwareProxyClient = IdentityAwareProxyClient
  { -- | Human-friendly name given to the OAuth client.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. Unique identifier of the OAuth client.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Client secret of the OAuth client.
    secret :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityAwareProxyClient' with the minimum fields required to make a request.
newIdentityAwareProxyClient ::
  IdentityAwareProxyClient
newIdentityAwareProxyClient =
  IdentityAwareProxyClient
    { displayName = Core.Nothing,
      name = Core.Nothing,
      secret = Core.Nothing
    }

instance Core.FromJSON IdentityAwareProxyClient where
  parseJSON =
    Core.withObject
      "IdentityAwareProxyClient"
      ( \o ->
          IdentityAwareProxyClient
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "secret")
      )

instance Core.ToJSON IdentityAwareProxyClient where
  toJSON IdentityAwareProxyClient {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("secret" Core..=) Core.<$> secret
          ]
      )

-- | Response message for ListBrands.
--
-- /See:/ 'newListBrandsResponse' smart constructor.
newtype ListBrandsResponse = ListBrandsResponse
  { -- | Brands existing in the project.
    brands :: (Core.Maybe [Brand])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBrandsResponse' with the minimum fields required to make a request.
newListBrandsResponse ::
  ListBrandsResponse
newListBrandsResponse = ListBrandsResponse {brands = Core.Nothing}

instance Core.FromJSON ListBrandsResponse where
  parseJSON =
    Core.withObject
      "ListBrandsResponse"
      (\o -> ListBrandsResponse Core.<$> (o Core..:? "brands"))

instance Core.ToJSON ListBrandsResponse where
  toJSON ListBrandsResponse {..} =
    Core.object (Core.catMaybes [("brands" Core..=) Core.<$> brands])

-- | Response message for ListIdentityAwareProxyClients.
--
-- /See:/ 'newListIdentityAwareProxyClientsResponse' smart constructor.
data ListIdentityAwareProxyClientsResponse = ListIdentityAwareProxyClientsResponse
  { -- | Clients existing in the brand.
    identityAwareProxyClients :: (Core.Maybe [IdentityAwareProxyClient]),
    -- | A token, which can be send as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListIdentityAwareProxyClientsResponse' with the minimum fields required to make a request.
newListIdentityAwareProxyClientsResponse ::
  ListIdentityAwareProxyClientsResponse
newListIdentityAwareProxyClientsResponse =
  ListIdentityAwareProxyClientsResponse
    { identityAwareProxyClients =
        Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListIdentityAwareProxyClientsResponse where
  parseJSON =
    Core.withObject
      "ListIdentityAwareProxyClientsResponse"
      ( \o ->
          ListIdentityAwareProxyClientsResponse
            Core.<$> (o Core..:? "identityAwareProxyClients")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListIdentityAwareProxyClientsResponse where
  toJSON ListIdentityAwareProxyClientsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("identityAwareProxyClients" Core..=)
              Core.<$> identityAwareProxyClients,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response from ListTunnelDestGroups.
--
-- /See:/ 'newListTunnelDestGroupsResponse' smart constructor.
data ListTunnelDestGroupsResponse = ListTunnelDestGroupsResponse
  { -- | A token that you can send as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | TunnelDestGroup existing in the project.
    tunnelDestGroups :: (Core.Maybe [TunnelDestGroup])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTunnelDestGroupsResponse' with the minimum fields required to make a request.
newListTunnelDestGroupsResponse ::
  ListTunnelDestGroupsResponse
newListTunnelDestGroupsResponse =
  ListTunnelDestGroupsResponse
    { nextPageToken = Core.Nothing,
      tunnelDestGroups = Core.Nothing
    }

instance Core.FromJSON ListTunnelDestGroupsResponse where
  parseJSON =
    Core.withObject
      "ListTunnelDestGroupsResponse"
      ( \o ->
          ListTunnelDestGroupsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "tunnelDestGroups")
      )

instance Core.ToJSON ListTunnelDestGroupsResponse where
  toJSON ListTunnelDestGroupsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("tunnelDestGroups" Core..=) Core.<$> tunnelDestGroups
          ]
      )

-- | Used for calculating the next state of tags on the resource being passed for the CheckCustomConstraints RPC call. The detail evaluation of each field is described in go\/op-create-update-time-tags and go\/tags-in-orgpolicy-requests.
--
-- /See:/ 'newNextStateOfTags' smart constructor.
data NextStateOfTags = NextStateOfTags
  { tagsFullState :: (Core.Maybe TagsFullState),
    tagsFullStateForChildResource :: (Core.Maybe TagsFullStateForChildResource),
    tagsPartialState :: (Core.Maybe TagsPartialState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NextStateOfTags' with the minimum fields required to make a request.
newNextStateOfTags ::
  NextStateOfTags
newNextStateOfTags =
  NextStateOfTags
    { tagsFullState = Core.Nothing,
      tagsFullStateForChildResource = Core.Nothing,
      tagsPartialState = Core.Nothing
    }

instance Core.FromJSON NextStateOfTags where
  parseJSON =
    Core.withObject
      "NextStateOfTags"
      ( \o ->
          NextStateOfTags
            Core.<$> (o Core..:? "tagsFullState")
            Core.<*> (o Core..:? "tagsFullStateForChildResource")
            Core.<*> (o Core..:? "tagsPartialState")
      )

instance Core.ToJSON NextStateOfTags where
  toJSON NextStateOfTags {..} =
    Core.object
      ( Core.catMaybes
          [ ("tagsFullState" Core..=) Core.<$> tagsFullState,
            ("tagsFullStateForChildResource" Core..=)
              Core.<$> tagsFullStateForChildResource,
            ("tagsPartialState" Core..=) Core.<$> tagsPartialState
          ]
      )

-- | The OAuth 2.0 Settings
--
-- /See:/ 'newOAuth2' smart constructor.
data OAuth2 = OAuth2
  { -- | The OAuth 2.0 client ID registered in the workforce identity federation OAuth 2.0 Server.
    clientId :: (Core.Maybe Core.Text),
    -- | Input only. The OAuth 2.0 client secret created while registering the client ID.
    clientSecret :: (Core.Maybe Core.Text),
    -- | Output only. SHA256 hash value for the client secret. This field is returned by IAP when the settings are retrieved.
    clientSecretSha256 :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OAuth2' with the minimum fields required to make a request.
newOAuth2 ::
  OAuth2
newOAuth2 =
  OAuth2
    { clientId = Core.Nothing,
      clientSecret = Core.Nothing,
      clientSecretSha256 = Core.Nothing
    }

instance Core.FromJSON OAuth2 where
  parseJSON =
    Core.withObject
      "OAuth2"
      ( \o ->
          OAuth2
            Core.<$> (o Core..:? "clientId")
            Core.<*> (o Core..:? "clientSecret")
            Core.<*> (o Core..:? "clientSecretSha256")
      )

instance Core.ToJSON OAuth2 where
  toJSON OAuth2 {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientId" Core..=) Core.<$> clientId,
            ("clientSecret" Core..=) Core.<$> clientSecret,
            ("clientSecretSha256" Core..=) Core.<$> clientSecretSha256
          ]
      )

-- | Configuration for OAuth login&consent flow behavior as well as for OAuth Credentials.
--
-- /See:/ 'newOAuthSettings' smart constructor.
data OAuthSettings = OAuthSettings
  { -- | Domain hint to send as hd=? parameter in OAuth request flow. Enables redirect to primary IDP by skipping Google\'s login screen. https:\/\/developers.google.com\/identity\/protocols\/OpenIDConnect#hd-param Note: IAP does not verify that the id token\'s hd claim matches this value since access behavior is managed by IAM policies.
    loginHint :: (Core.Maybe Core.Text),
    -- | Optional. List of client ids allowed to use IAP programmatically.
    programmaticClients :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OAuthSettings' with the minimum fields required to make a request.
newOAuthSettings ::
  OAuthSettings
newOAuthSettings =
  OAuthSettings
    { loginHint = Core.Nothing,
      programmaticClients = Core.Nothing
    }

instance Core.FromJSON OAuthSettings where
  parseJSON =
    Core.withObject
      "OAuthSettings"
      ( \o ->
          OAuthSettings
            Core.<$> (o Core..:? "loginHint")
            Core.<*> (o Core..:? "programmaticClients")
      )

instance Core.ToJSON OAuthSettings where
  toJSON OAuthSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("loginHint" Core..=) Core.<$> loginHint,
            ("programmaticClients" Core..=) Core.<$> programmaticClients
          ]
      )

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__
-- @{ \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\", \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 }@ __YAML example:__
-- @bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3@ For a description of IAM and its features, see the <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
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
    { bindings = Core.Nothing,
      etag = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> (o Core..:? "bindings")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Policy where
  toJSON Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | PolicyDelegationConfig allows google-internal teams to use IAP for apps hosted in a tenant project. Using these settings, the app can delegate permission check to happen against the linked customer project. This is only ever supposed to be used by google internal teams, hence the restriction on the proto.
--
-- /See:/ 'newPolicyDelegationSettings' smart constructor.
data PolicyDelegationSettings = PolicyDelegationSettings
  { -- | Permission to check in IAM.
    iamPermission :: (Core.Maybe Core.Text),
    -- | The DNS name of the service (e.g. \"resourcemanager.googleapis.com\"). This should be the domain name part of the full resource names (see https:\/\/aip.dev\/122#full-resource-names), which is usually the same as IamServiceSpec.service of the service where the resource type is defined.
    iamServiceName :: (Core.Maybe Core.Text),
    -- | Policy name to be checked
    policyName :: (Core.Maybe PolicyName),
    -- | IAM resource to check permission on
    resource :: (Core.Maybe Resource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PolicyDelegationSettings' with the minimum fields required to make a request.
newPolicyDelegationSettings ::
  PolicyDelegationSettings
newPolicyDelegationSettings =
  PolicyDelegationSettings
    { iamPermission = Core.Nothing,
      iamServiceName = Core.Nothing,
      policyName = Core.Nothing,
      resource = Core.Nothing
    }

instance Core.FromJSON PolicyDelegationSettings where
  parseJSON =
    Core.withObject
      "PolicyDelegationSettings"
      ( \o ->
          PolicyDelegationSettings
            Core.<$> (o Core..:? "iamPermission")
            Core.<*> (o Core..:? "iamServiceName")
            Core.<*> (o Core..:? "policyName")
            Core.<*> (o Core..:? "resource")
      )

instance Core.ToJSON PolicyDelegationSettings where
  toJSON PolicyDelegationSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("iamPermission" Core..=) Core.<$> iamPermission,
            ("iamServiceName" Core..=) Core.<$> iamServiceName,
            ("policyName" Core..=) Core.<$> policyName,
            ("resource" Core..=) Core.<$> resource
          ]
      )

-- | An internal name for an IAM policy, based on the resource to which the policy applies. Not to be confused with a resource\'s external full resource name. For more information on this distinction, see go\/iam-full-resource-names.
--
-- /See:/ 'newPolicyName' smart constructor.
data PolicyName = PolicyName
  { -- | Identifies an instance of the type. ID format varies by type. The ID format is defined in the IAM .service file that defines the type, either in path_mapping or in a comment.
    id :: (Core.Maybe Core.Text),
    -- | For Cloud IAM: The location of the Policy. Must be empty or \"global\" for Policies owned by global IAM. Must name a region from prodspec\/cloud-iam-cloudspec for Regional IAM Policies, see go\/iam-faq#where-is-iam-currently-deployed. For Local IAM: This field should be set to \"local\".
    region :: (Core.Maybe Core.Text),
    -- | Resource type. Types are defined in IAM\'s .service files. Valid values for type might be \'storage/buckets\', \'compute/instances\', \'resourcemanager/customers\', \'billing/accounts\', etc.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PolicyName' with the minimum fields required to make a request.
newPolicyName ::
  PolicyName
newPolicyName =
  PolicyName
    { id = Core.Nothing,
      region = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON PolicyName where
  parseJSON =
    Core.withObject
      "PolicyName"
      ( \o ->
          PolicyName
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON PolicyName where
  toJSON PolicyName {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("region" Core..=) Core.<$> region,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Configuration for IAP reauthentication policies.
--
-- /See:/ 'newReauthSettings' smart constructor.
data ReauthSettings = ReauthSettings
  { -- | Optional. Reauth session lifetime, how long before a user has to reauthenticate again.
    maxAge :: (Core.Maybe Core.Duration),
    -- | Optional. Reauth method requested.
    method :: (Core.Maybe ReauthSettings_Method),
    -- | Optional. How IAP determines the effective policy in cases of hierarchical policies. Policies are merged from higher in the hierarchy to lower in the hierarchy.
    policyType :: (Core.Maybe ReauthSettings_PolicyType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReauthSettings' with the minimum fields required to make a request.
newReauthSettings ::
  ReauthSettings
newReauthSettings =
  ReauthSettings
    { maxAge = Core.Nothing,
      method = Core.Nothing,
      policyType = Core.Nothing
    }

instance Core.FromJSON ReauthSettings where
  parseJSON =
    Core.withObject
      "ReauthSettings"
      ( \o ->
          ReauthSettings
            Core.<$> (o Core..:? "maxAge")
            Core.<*> (o Core..:? "method")
            Core.<*> (o Core..:? "policyType")
      )

instance Core.ToJSON ReauthSettings where
  toJSON ReauthSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxAge" Core..=) Core.<$> maxAge,
            ("method" Core..=) Core.<$> method,
            ("policyType" Core..=) Core.<$> policyType
          ]
      )

-- | The request sent to ResetIdentityAwareProxyClientSecret.
--
-- /See:/ 'newResetIdentityAwareProxyClientSecretRequest' smart constructor.
data ResetIdentityAwareProxyClientSecretRequest = ResetIdentityAwareProxyClientSecretRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResetIdentityAwareProxyClientSecretRequest' with the minimum fields required to make a request.
newResetIdentityAwareProxyClientSecretRequest ::
  ResetIdentityAwareProxyClientSecretRequest
newResetIdentityAwareProxyClientSecretRequest =
  ResetIdentityAwareProxyClientSecretRequest

instance Core.FromJSON ResetIdentityAwareProxyClientSecretRequest where
  parseJSON =
    Core.withObject
      "ResetIdentityAwareProxyClientSecretRequest"
      (\o -> Core.pure ResetIdentityAwareProxyClientSecretRequest)

instance Core.ToJSON ResetIdentityAwareProxyClientSecretRequest where
  toJSON = Core.const Core.emptyObject

--
-- /See:/ 'newResource' smart constructor.
data Resource = Resource
  { -- | The proto or JSON formatted expected next state of the resource, wrapped in a google.protobuf.Any proto, against which the policy rules are evaluated. Services not integrated with custom org policy can omit this field. Services integrated with custom org policy must populate this field for all requests where the API call changes the state of the resource. Custom org policy backend uses these attributes to enforce custom org policies. For create operations, GCP service is expected to pass resource from customer request as is. For update\/patch operations, GCP service is expected to compute the next state with the patch provided by the user. See go\/custom-constraints-org-policy-integration-guide for additional details.
    expectedNextState :: (Core.Maybe Resource_ExpectedNextState),
    -- | The service defined labels of the resource on which the conditions will be evaluated. The semantics - including the key names - are vague to IAM. If the effective condition has a reference to a @resource.labels[foo]@ construct, IAM consults with this map to retrieve the values associated with @foo@ key for Conditions evaluation. If the provided key is not found in the labels map, the condition would evaluate to false. This field is in limited use. If your intended use case is not expected to express resource.labels attribute in IAM Conditions, leave this field empty. Before planning on using this attribute please: * Read go\/iam-conditions-labels-comm and ensure your service can meet the data availability and management requirements. * Talk to iam-conditions-eng\@ about your use case.
    labels :: (Core.Maybe Resource_Labels),
    -- | The __relative__ name of the resource, which is the URI path of the resource without the leading \"\/\". See https:\/\/cloud.google.com\/iam\/docs\/conditions-resource-attributes#resource-name for examples used by other GCP Services. This field is __required__ for services integrated with resource-attribute-based IAM conditions and\/or CustomOrgPolicy. This field requires special handling for parents-only permissions such as @create@ and @list@. See the document linked below for further details. See go\/iam-conditions-sig-g3#populate-resource-attributes for specific details on populating this field.
    name :: (Core.Maybe Core.Text),
    -- | Used for calculating the next state of tags on the resource being passed for Custom Org Policy enforcement. NOTE: Only one of the tags representations (i.e. numeric or namespaced) should be populated. The input tags will be converted to the same representation before the calculation. This behavior intentionally may differ from other tags related fields in CheckPolicy request, which may require both formats to be passed in. IMPORTANT: If tags are unchanged, this field should not be set.
    nextStateOfTags :: (Core.Maybe NextStateOfTags),
    -- | The name of the service this resource belongs to. It is configured using the official/service/name of the Service as defined in service configurations under \/\/configs\/cloud\/resourcetypes. For example, the official/service/name of cloud resource manager service is set as \'cloudresourcemanager.googleapis.com\' according to \/\/configs\/cloud\/resourcetypes\/google\/cloud\/resourcemanager\/prod.yaml This field is __required__ for services integrated with resource-attribute-based IAM conditions and\/or CustomOrgPolicy. This field requires special handling for parents-only permissions such as @create@ and @list@. See the document linked below for further details. See go\/iam-conditions-sig-g3#populate-resource-attributes for specific details on populating this field.
    service :: (Core.Maybe Core.Text),
    -- | The public resource type name of the resource. It is configured using the official/name of the ResourceType as defined in service configurations under \/\/configs\/cloud\/resourcetypes. For example, the official/name for GCP projects is set as \'cloudresourcemanager.googleapis.com\/Project\' according to \/\/configs\/cloud\/resourcetypes\/google\/cloud\/resourcemanager\/prod.yaml This field is __required__ for services integrated with resource-attribute-based IAM conditions and\/or CustomOrgPolicy. This field requires special handling for parents-only permissions such as @create@ and @list@. See the document linked below for further details. See go\/iam-conditions-sig-g3#populate-resource-attributes for specific details on populating this field.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Resource' with the minimum fields required to make a request.
newResource ::
  Resource
newResource =
  Resource
    { expectedNextState = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      nextStateOfTags = Core.Nothing,
      service = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Resource where
  parseJSON =
    Core.withObject
      "Resource"
      ( \o ->
          Resource
            Core.<$> (o Core..:? "expectedNextState")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nextStateOfTags")
            Core.<*> (o Core..:? "service")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Resource where
  toJSON Resource {..} =
    Core.object
      ( Core.catMaybes
          [ ("expectedNextState" Core..=) Core.<$> expectedNextState,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("nextStateOfTags" Core..=) Core.<$> nextStateOfTags,
            ("service" Core..=) Core.<$> service,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The proto or JSON formatted expected next state of the resource, wrapped in a google.protobuf.Any proto, against which the policy rules are evaluated. Services not integrated with custom org policy can omit this field. Services integrated with custom org policy must populate this field for all requests where the API call changes the state of the resource. Custom org policy backend uses these attributes to enforce custom org policies. For create operations, GCP service is expected to pass resource from customer request as is. For update\/patch operations, GCP service is expected to compute the next state with the patch provided by the user. See go\/custom-constraints-org-policy-integration-guide for additional details.
--
-- /See:/ 'newResource_ExpectedNextState' smart constructor.
newtype Resource_ExpectedNextState = Resource_ExpectedNextState
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Resource_ExpectedNextState' with the minimum fields required to make a request.
newResource_ExpectedNextState ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Resource_ExpectedNextState
newResource_ExpectedNextState additional =
  Resource_ExpectedNextState {additional = additional}

instance Core.FromJSON Resource_ExpectedNextState where
  parseJSON =
    Core.withObject
      "Resource_ExpectedNextState"
      ( \o ->
          Resource_ExpectedNextState Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Resource_ExpectedNextState where
  toJSON Resource_ExpectedNextState {..} = Core.toJSON additional

-- | The service defined labels of the resource on which the conditions will be evaluated. The semantics - including the key names - are vague to IAM. If the effective condition has a reference to a @resource.labels[foo]@ construct, IAM consults with this map to retrieve the values associated with @foo@ key for Conditions evaluation. If the provided key is not found in the labels map, the condition would evaluate to false. This field is in limited use. If your intended use case is not expected to express resource.labels attribute in IAM Conditions, leave this field empty. Before planning on using this attribute please: * Read go\/iam-conditions-labels-comm and ensure your service can meet the data availability and management requirements. * Talk to iam-conditions-eng\@ about your use case.
--
-- /See:/ 'newResource_Labels' smart constructor.
newtype Resource_Labels = Resource_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Resource_Labels' with the minimum fields required to make a request.
newResource_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Resource_Labels
newResource_Labels additional =
  Resource_Labels {additional = additional}

instance Core.FromJSON Resource_Labels where
  parseJSON =
    Core.withObject
      "Resource_Labels"
      (\o -> Resource_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Resource_Labels where
  toJSON Resource_Labels {..} = Core.toJSON additional

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
newtype SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest ::
  SetIamPolicyRequest
newSetIamPolicyRequest = SetIamPolicyRequest {policy = Core.Nothing}

instance Core.FromJSON SetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "SetIamPolicyRequest"
      (\o -> SetIamPolicyRequest Core.<$> (o Core..:? "policy"))

instance Core.ToJSON SetIamPolicyRequest where
  toJSON SetIamPolicyRequest {..} =
    Core.object (Core.catMaybes [("policy" Core..=) Core.<$> policy])

--
-- /See:/ 'newTagsFullState' smart constructor.
newtype TagsFullState = TagsFullState
  { -- | If TagsFullState is initialized, the values in this field fully represent all the tags in the next state (the current tag values are not used). If tags.size() == 0, the next state of tags would be no tags for evaluation purposes. Only one type of tags reference (numeric or namespace) is required to be passed.
    tags :: (Core.Maybe TagsFullState_Tags)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagsFullState' with the minimum fields required to make a request.
newTagsFullState ::
  TagsFullState
newTagsFullState = TagsFullState {tags = Core.Nothing}

instance Core.FromJSON TagsFullState where
  parseJSON =
    Core.withObject
      "TagsFullState"
      (\o -> TagsFullState Core.<$> (o Core..:? "tags"))

instance Core.ToJSON TagsFullState where
  toJSON TagsFullState {..} =
    Core.object (Core.catMaybes [("tags" Core..=) Core.<$> tags])

-- | If TagsFullState is initialized, the values in this field fully represent all the tags in the next state (the current tag values are not used). If tags.size() == 0, the next state of tags would be no tags for evaluation purposes. Only one type of tags reference (numeric or namespace) is required to be passed.
--
-- /See:/ 'newTagsFullState_Tags' smart constructor.
newtype TagsFullState_Tags = TagsFullState_Tags
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagsFullState_Tags' with the minimum fields required to make a request.
newTagsFullState_Tags ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  TagsFullState_Tags
newTagsFullState_Tags additional =
  TagsFullState_Tags {additional = additional}

instance Core.FromJSON TagsFullState_Tags where
  parseJSON =
    Core.withObject
      "TagsFullState_Tags"
      (\o -> TagsFullState_Tags Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON TagsFullState_Tags where
  toJSON TagsFullState_Tags {..} = Core.toJSON additional

--
-- /See:/ 'newTagsFullStateForChildResource' smart constructor.
newtype TagsFullStateForChildResource = TagsFullStateForChildResource
  { -- | If TagsFullStateForChildResource is initialized, the values in this field represent all the tags in the next state for the child resource. Only one type of tags reference (numeric or namespace) is required to be passed. IMPORTANT: This field should only be used when the target resource IAM policy name is UNKNOWN and the resource\'s parent IAM policy name is being passed in the request.
    tags :: (Core.Maybe TagsFullStateForChildResource_Tags)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagsFullStateForChildResource' with the minimum fields required to make a request.
newTagsFullStateForChildResource ::
  TagsFullStateForChildResource
newTagsFullStateForChildResource =
  TagsFullStateForChildResource {tags = Core.Nothing}

instance Core.FromJSON TagsFullStateForChildResource where
  parseJSON =
    Core.withObject
      "TagsFullStateForChildResource"
      (\o -> TagsFullStateForChildResource Core.<$> (o Core..:? "tags"))

instance Core.ToJSON TagsFullStateForChildResource where
  toJSON TagsFullStateForChildResource {..} =
    Core.object (Core.catMaybes [("tags" Core..=) Core.<$> tags])

-- | If TagsFullStateForChildResource is initialized, the values in this field represent all the tags in the next state for the child resource. Only one type of tags reference (numeric or namespace) is required to be passed. IMPORTANT: This field should only be used when the target resource IAM policy name is UNKNOWN and the resource\'s parent IAM policy name is being passed in the request.
--
-- /See:/ 'newTagsFullStateForChildResource_Tags' smart constructor.
newtype TagsFullStateForChildResource_Tags = TagsFullStateForChildResource_Tags
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagsFullStateForChildResource_Tags' with the minimum fields required to make a request.
newTagsFullStateForChildResource_Tags ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  TagsFullStateForChildResource_Tags
newTagsFullStateForChildResource_Tags additional =
  TagsFullStateForChildResource_Tags {additional = additional}

instance Core.FromJSON TagsFullStateForChildResource_Tags where
  parseJSON =
    Core.withObject
      "TagsFullStateForChildResource_Tags"
      ( \o ->
          TagsFullStateForChildResource_Tags
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON TagsFullStateForChildResource_Tags where
  toJSON TagsFullStateForChildResource_Tags {..} =
    Core.toJSON additional

--
-- /See:/ 'newTagsPartialState' smart constructor.
data TagsPartialState = TagsPartialState
  { -- | Keys of the tags that should be removed for evaluation purposes. IMPORTANT: Currently only numeric references are supported. Once support for namespace references is added, both the tag references (numeric and namespace) will be removed.
    tagKeysToRemove :: (Core.Maybe [Core.Text]),
    -- | Tags that’ll be updated or added to the current state of tags for evaluation purposes. If a key exists in both \"tags/to/upsert\" and \"tag/keys/to/remove\", the one in \"tag/keys/to/remove\" is ignored. Only one type of tags reference (numeric or namespace) is required to be passed.
    tagsToUpsert :: (Core.Maybe TagsPartialState_TagsToUpsert)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagsPartialState' with the minimum fields required to make a request.
newTagsPartialState ::
  TagsPartialState
newTagsPartialState =
  TagsPartialState
    { tagKeysToRemove = Core.Nothing,
      tagsToUpsert = Core.Nothing
    }

instance Core.FromJSON TagsPartialState where
  parseJSON =
    Core.withObject
      "TagsPartialState"
      ( \o ->
          TagsPartialState
            Core.<$> (o Core..:? "tagKeysToRemove")
            Core.<*> (o Core..:? "tagsToUpsert")
      )

instance Core.ToJSON TagsPartialState where
  toJSON TagsPartialState {..} =
    Core.object
      ( Core.catMaybes
          [ ("tagKeysToRemove" Core..=) Core.<$> tagKeysToRemove,
            ("tagsToUpsert" Core..=) Core.<$> tagsToUpsert
          ]
      )

-- | Tags that’ll be updated or added to the current state of tags for evaluation purposes. If a key exists in both \"tags/to/upsert\" and \"tag/keys/to/remove\", the one in \"tag/keys/to/remove\" is ignored. Only one type of tags reference (numeric or namespace) is required to be passed.
--
-- /See:/ 'newTagsPartialState_TagsToUpsert' smart constructor.
newtype TagsPartialState_TagsToUpsert = TagsPartialState_TagsToUpsert
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagsPartialState_TagsToUpsert' with the minimum fields required to make a request.
newTagsPartialState_TagsToUpsert ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  TagsPartialState_TagsToUpsert
newTagsPartialState_TagsToUpsert additional =
  TagsPartialState_TagsToUpsert {additional = additional}

instance Core.FromJSON TagsPartialState_TagsToUpsert where
  parseJSON =
    Core.withObject
      "TagsPartialState_TagsToUpsert"
      ( \o ->
          TagsPartialState_TagsToUpsert Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON TagsPartialState_TagsToUpsert where
  toJSON TagsPartialState_TagsToUpsert {..} = Core.toJSON additional

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

-- | A TunnelDestGroup.
--
-- /See:/ 'newTunnelDestGroup' smart constructor.
data TunnelDestGroup = TunnelDestGroup
  { -- | Optional. Unordered list. List of CIDRs that this group applies to.
    cidrs :: (Core.Maybe [Core.Text]),
    -- | Optional. Unordered list. List of FQDNs that this group applies to.
    fqdns :: (Core.Maybe [Core.Text]),
    -- | Identifier. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters (a-z) and dashes (-).
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TunnelDestGroup' with the minimum fields required to make a request.
newTunnelDestGroup ::
  TunnelDestGroup
newTunnelDestGroup =
  TunnelDestGroup
    { cidrs = Core.Nothing,
      fqdns = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON TunnelDestGroup where
  parseJSON =
    Core.withObject
      "TunnelDestGroup"
      ( \o ->
          TunnelDestGroup
            Core.<$> (o Core..:? "cidrs")
            Core.<*> (o Core..:? "fqdns")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON TunnelDestGroup where
  toJSON TunnelDestGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("cidrs" Core..=) Core.<$> cidrs,
            ("fqdns" Core..=) Core.<$> fqdns,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | IAP Expression Linter endpoint returns empty response body.
--
-- /See:/ 'newValidateIapAttributeExpressionResponse' smart constructor.
data ValidateIapAttributeExpressionResponse = ValidateIapAttributeExpressionResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValidateIapAttributeExpressionResponse' with the minimum fields required to make a request.
newValidateIapAttributeExpressionResponse ::
  ValidateIapAttributeExpressionResponse
newValidateIapAttributeExpressionResponse =
  ValidateIapAttributeExpressionResponse

instance Core.FromJSON ValidateIapAttributeExpressionResponse where
  parseJSON =
    Core.withObject
      "ValidateIapAttributeExpressionResponse"
      (\o -> Core.pure ValidateIapAttributeExpressionResponse)

instance Core.ToJSON ValidateIapAttributeExpressionResponse where
  toJSON = Core.const Core.emptyObject

-- | WorkforceIdentitySettings allows customers to configure workforce pools and OAuth 2.0 settings to gate their applications using a third-party IdP with access control.
--
-- /See:/ 'newWorkforceIdentitySettings' smart constructor.
data WorkforceIdentitySettings = WorkforceIdentitySettings
  { -- | OAuth 2.0 settings for IAP to perform OIDC flow with workforce identity federation services.
    oauth2 :: (Core.Maybe OAuth2),
    -- | The workforce pool resources. Only one workforce pool is accepted.
    workforcePools :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkforceIdentitySettings' with the minimum fields required to make a request.
newWorkforceIdentitySettings ::
  WorkforceIdentitySettings
newWorkforceIdentitySettings =
  WorkforceIdentitySettings
    { oauth2 = Core.Nothing,
      workforcePools = Core.Nothing
    }

instance Core.FromJSON WorkforceIdentitySettings where
  parseJSON =
    Core.withObject
      "WorkforceIdentitySettings"
      ( \o ->
          WorkforceIdentitySettings
            Core.<$> (o Core..:? "oauth2")
            Core.<*> (o Core..:? "workforcePools")
      )

instance Core.ToJSON WorkforceIdentitySettings where
  toJSON WorkforceIdentitySettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("oauth2" Core..=) Core.<$> oauth2,
            ("workforcePools" Core..=) Core.<$> workforcePools
          ]
      )
