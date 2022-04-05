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
-- Module      : Gogol.IAP.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.IAP.Internal.Product
  ( -- * AccessDeniedPageSettings
    AccessDeniedPageSettings (..),
    newAccessDeniedPageSettings,

    -- * AccessSettings
    AccessSettings (..),
    newAccessSettings,

    -- * ApplicationSettings
    ApplicationSettings (..),
    newApplicationSettings,

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

    -- * Resource_Labels
    Resource_Labels (..),
    newResource_Labels,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,
  )
where

import Gogol.IAP.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Custom content configuration for access denied page. IAP allows customers to define a custom URI to use as the error page when access is denied to users. If IAP prevents access to this page, the default IAP error page will be displayed instead.
--
-- /See:/ 'newAccessDeniedPageSettings' smart constructor.
data AccessDeniedPageSettings = AccessDeniedPageSettings
  { -- | The URI to be redirected to when access is denied.
    accessDeniedPageUri :: (Core.Maybe Core.Text),
    -- | Whether to generate a troubleshooting URL on access denied events to this application.
    generateTroubleshootingUri :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessDeniedPageSettings' with the minimum fields required to make a request.
newAccessDeniedPageSettings ::
  AccessDeniedPageSettings
newAccessDeniedPageSettings =
  AccessDeniedPageSettings
    { accessDeniedPageUri = Core.Nothing,
      generateTroubleshootingUri = Core.Nothing
    }

instance Core.FromJSON AccessDeniedPageSettings where
  parseJSON =
    Core.withObject
      "AccessDeniedPageSettings"
      ( \o ->
          AccessDeniedPageSettings
            Core.<$> (o Core..:? "accessDeniedPageUri")
            Core.<*> (o Core..:? "generateTroubleshootingUri")
      )

instance Core.ToJSON AccessDeniedPageSettings where
  toJSON AccessDeniedPageSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessDeniedPageUri" Core..=)
              Core.<$> accessDeniedPageUri,
            ("generateTroubleshootingUri" Core..=)
              Core.<$> generateTroubleshootingUri
          ]
      )

-- | Access related settings for IAP protected apps.
--
-- /See:/ 'newAccessSettings' smart constructor.
data AccessSettings = AccessSettings
  { -- | Configuration to allow cross-origin requests via IAP.
    corsSettings :: (Core.Maybe CorsSettings),
    -- | GCIP claims and endpoint configurations for 3p identity providers.
    gcipSettings :: (Core.Maybe GcipSettings),
    -- | Settings to configure IAP\'s OAuth behavior.
    oauthSettings :: (Core.Maybe OAuthSettings),
    -- | Settings to configure Policy delegation for apps hosted in tenant projects. INTERNAL_ONLY.
    policyDelegationSettings :: (Core.Maybe PolicyDelegationSettings),
    -- | Settings to configure reauthentication policies in IAP.
    reauthSettings :: (Core.Maybe ReauthSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSettings' with the minimum fields required to make a request.
newAccessSettings ::
  AccessSettings
newAccessSettings =
  AccessSettings
    { corsSettings = Core.Nothing,
      gcipSettings = Core.Nothing,
      oauthSettings = Core.Nothing,
      policyDelegationSettings = Core.Nothing,
      reauthSettings = Core.Nothing
    }

instance Core.FromJSON AccessSettings where
  parseJSON =
    Core.withObject
      "AccessSettings"
      ( \o ->
          AccessSettings
            Core.<$> (o Core..:? "corsSettings")
            Core.<*> (o Core..:? "gcipSettings")
            Core.<*> (o Core..:? "oauthSettings")
            Core.<*> (o Core..:? "policyDelegationSettings")
            Core.<*> (o Core..:? "reauthSettings")
      )

instance Core.ToJSON AccessSettings where
  toJSON AccessSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("corsSettings" Core..=) Core.<$> corsSettings,
            ("gcipSettings" Core..=) Core.<$> gcipSettings,
            ("oauthSettings" Core..=) Core.<$> oauthSettings,
            ("policyDelegationSettings" Core..=)
              Core.<$> policyDelegationSettings,
            ("reauthSettings" Core..=) Core.<$> reauthSettings
          ]
      )

-- | Wrapper over application specific settings for IAP.
--
-- /See:/ 'newApplicationSettings' smart constructor.
data ApplicationSettings = ApplicationSettings
  { -- | Customization for Access Denied page.
    accessDeniedPageSettings :: (Core.Maybe AccessDeniedPageSettings),
    -- | The Domain value to set for cookies generated by IAP. This value is not validated by the API, but will be ignored at runtime if invalid.
    cookieDomain :: (Core.Maybe Core.Text),
    -- | Settings to configure IAP\'s behavior for a CSM mesh.
    csmSettings :: (Core.Maybe CsmSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationSettings' with the minimum fields required to make a request.
newApplicationSettings ::
  ApplicationSettings
newApplicationSettings =
  ApplicationSettings
    { accessDeniedPageSettings = Core.Nothing,
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
            Core.<*> (o Core..:? "cookieDomain")
            Core.<*> (o Core..:? "csmSettings")
      )

instance Core.ToJSON ApplicationSettings where
  toJSON ApplicationSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessDeniedPageSettings" Core..=)
              Core.<$> accessDeniedPageSettings,
            ("cookieDomain" Core..=) Core.<$> cookieDomain,
            ("csmSettings" Core..=) Core.<$> csmSettings
          ]
      )

-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    condition :: (Core.Maybe Expr),
    -- | Specifies the principals requesting access for a Cloud Platform resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains
    -- the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@.
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
          [ ("applicationTitle" Core..=)
              Core.<$> applicationTitle,
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
      ( \o ->
          CorsSettings
            Core.<$> (o Core..:? "allowHttpOptions")
      )

instance Core.ToJSON CorsSettings where
  toJSON CorsSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowHttpOptions" Core..=)
              Core.<$> allowHttpOptions
          ]
      )

-- | Configuration for RCTokens generated for CSM workloads protected by IAP. RCTokens are IAP generated JWTs that can be verified at the application. The RCToken is primarily used for ISTIO deployments, and can be scoped to a single mesh by configuring the audience field accordingly
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
      ( \o ->
          CsmSettings Core.<$> (o Core..:? "rctokenAud")
      )

instance Core.ToJSON CsmSettings where
  toJSON CsmSettings {..} =
    Core.object
      ( Core.catMaybes
          [("rctokenAud" Core..=) Core.<$> rctokenAud]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

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
    -- | GCIP tenant ids that are linked to the IAP resource. tenant/ids could be a string beginning with a number character to indicate authenticating with GCIP tenant flow, or in the format of / to indicate authenticating with GCIP agent flow. If agent flow is used, tenant/ids should only contain one single element, while for tenant flow, tenant/ids can contain multiple elements.
    tenantIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcipSettings' with the minimum fields required to make a request.
newGcipSettings ::
  GcipSettings
newGcipSettings =
  GcipSettings {loginPageUri = Core.Nothing, tenantIds = Core.Nothing}

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
newGetIamPolicyRequest = GetIamPolicyRequest {options = Core.Nothing}

instance Core.FromJSON GetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "GetIamPolicyRequest"
      ( \o ->
          GetIamPolicyRequest Core.<$> (o Core..:? "options")
      )

instance Core.ToJSON GetIamPolicyRequest where
  toJSON GetIamPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [("options" Core..=) Core.<$> options]
      )

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
newGetPolicyOptions = GetPolicyOptions {requestedPolicyVersion = Core.Nothing}

instance Core.FromJSON GetPolicyOptions where
  parseJSON =
    Core.withObject
      "GetPolicyOptions"
      ( \o ->
          GetPolicyOptions
            Core.<$> (o Core..:? "requestedPolicyVersion")
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
  { -- | Top level wrapper for all access related setting in IAP
    accessSettings :: (Core.Maybe AccessSettings),
    -- | Top level wrapper for all application related settings in IAP
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
            ("applicationSettings" Core..=)
              Core.<$> applicationSettings,
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
      ( \o ->
          ListBrandsResponse Core.<$> (o Core..:? "brands")
      )

instance Core.ToJSON ListBrandsResponse where
  toJSON ListBrandsResponse {..} =
    Core.object
      (Core.catMaybes [("brands" Core..=) Core.<$> brands])

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
    { identityAwareProxyClients = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    ListIdentityAwareProxyClientsResponse
  where
  parseJSON =
    Core.withObject
      "ListIdentityAwareProxyClientsResponse"
      ( \o ->
          ListIdentityAwareProxyClientsResponse
            Core.<$> (o Core..:? "identityAwareProxyClients")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    ListIdentityAwareProxyClientsResponse
  where
  toJSON ListIdentityAwareProxyClientsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("identityAwareProxyClients" Core..=)
              Core.<$> identityAwareProxyClients,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Configuration for OAuth login&consent flow behavior as well as for OAuth Credentials.
--
-- /See:/ 'newOAuthSettings' smart constructor.
newtype OAuthSettings = OAuthSettings
  { -- | Domain hint to send as hd=? parameter in OAuth request flow. Enables redirect to primary IDP by skipping Google\'s login screen. https:\/\/developers.google.com\/identity\/protocols\/OpenIDConnect#hd-param Note: IAP does not verify that the id token\'s hd claim matches this value since access behavior is managed by IAM policies.
    loginHint :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OAuthSettings' with the minimum fields required to make a request.
newOAuthSettings ::
  OAuthSettings
newOAuthSettings = OAuthSettings {loginHint = Core.Nothing}

instance Core.FromJSON OAuthSettings where
  parseJSON =
    Core.withObject
      "OAuthSettings"
      ( \o ->
          OAuthSettings Core.<$> (o Core..:? "loginHint")
      )

instance Core.ToJSON OAuthSettings where
  toJSON OAuthSettings {..} =
    Core.object
      ( Core.catMaybes
          [("loginHint" Core..=) Core.<$> loginHint]
      )

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
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
  Policy {bindings = Core.Nothing, etag = Core.Nothing, version = Core.Nothing}

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
    -- | Resource type. Types are defined in IAM\'s .service files. Valid values for type might be \'gce\', \'gcs\', \'project\', \'account\' etc.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PolicyName' with the minimum fields required to make a request.
newPolicyName ::
  PolicyName
newPolicyName =
  PolicyName {id = Core.Nothing, region = Core.Nothing, type' = Core.Nothing}

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
  { -- | Reauth session lifetime, how long before a user has to reauthenticate again.
    maxAge :: (Core.Maybe Core.Duration),
    -- | Reauth method required by the policy.
    method :: (Core.Maybe ReauthSettings_Method),
    -- | How IAP determines the effective policy in cases of hierarchial policies. Policies are merged from higher in the hierarchy to lower in the hierarchy.
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

instance
  Core.FromJSON
    ResetIdentityAwareProxyClientSecretRequest
  where
  parseJSON =
    Core.withObject
      "ResetIdentityAwareProxyClientSecretRequest"
      ( \o ->
          Core.pure ResetIdentityAwareProxyClientSecretRequest
      )

instance
  Core.ToJSON
    ResetIdentityAwareProxyClientSecretRequest
  where
  toJSON = Core.const Core.emptyObject

--
-- /See:/ 'newResource' smart constructor.
data Resource = Resource
  { -- | The service defined labels of the resource on which the conditions will be evaluated. The semantics - including the key names - are vague to IAM. If the effective condition has a reference to a @resource.labels[foo]@ construct, IAM consults with this map to retrieve the values associated with @foo@ key for Conditions evaluation. If the provided key is not found in the labels map, the condition would evaluate to false. This field is in limited use. If your intended use case is not expected to express resource.labels attribute in IAM Conditions, leave this field empty. Before planning on using this attribute please: * Read go\/iam-conditions-labels-comm and ensure your service can meet the data availability and management requirements. * Talk to iam-conditions-eng\@ about your use case.
    labels :: (Core.Maybe Resource_Labels),
    -- | Name of the resource on which conditions will be evaluated. Must use the Relative Resource Name of the resource, which is the URI path of the resource without the leading \"\/\". Examples are \"projects\/_\/buckets\/[BUCKET-ID]\" for storage buckets or \"projects\/[PROJECT-ID]\/global\/firewalls\/[FIREWALL-ID]\" for a firewall. This field is required for evaluating conditions with rules on resource names. For a @list@ permission check, the resource.name value must be set to the parent resource. If the parent resource is a project, this field should be left unset.
    name :: (Core.Maybe Core.Text),
    -- | The name of the service this resource belongs to. It is configured using the official/service/name of the Service as defined in service configurations under \/\/configs\/cloud\/resourcetypes. For example, the official/service/name of cloud resource manager service is set as \'cloudresourcemanager.googleapis.com\' according to \/\/configs\/cloud\/resourcetypes\/google\/cloud\/resourcemanager\/prod.yaml
    service :: (Core.Maybe Core.Text),
    -- | The public resource type name of the resource on which conditions will be evaluated. It is configured using the official/name of the ResourceType as defined in service configurations under \/\/configs\/cloud\/resourcetypes. For example, the official/name for GCP projects is set as \'cloudresourcemanager.googleapis.com\/Project\' according to \/\/configs\/cloud\/resourcetypes\/google\/cloud\/resourcemanager\/prod.yaml For details see go\/iam-conditions-integration-guide.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Resource' with the minimum fields required to make a request.
newResource ::
  Resource
newResource =
  Resource
    { labels = Core.Nothing,
      name = Core.Nothing,
      service = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Resource where
  parseJSON =
    Core.withObject
      "Resource"
      ( \o ->
          Resource
            Core.<$> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "service")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Resource where
  toJSON Resource {..} =
    Core.object
      ( Core.catMaybes
          [ ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("service" Core..=) Core.<$> service,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The service defined labels of the resource on which the conditions will be evaluated. The semantics - including the key names - are vague to IAM. If the effective condition has a reference to a @resource.labels[foo]@ construct, IAM consults with this map to retrieve the values associated with @foo@ key for Conditions evaluation. If the provided key is not found in the labels map, the condition would evaluate to false. This field is in limited use. If your intended use case is not expected to express resource.labels attribute in IAM Conditions, leave this field empty. Before planning on using this attribute please: * Read go\/iam-conditions-labels-comm and ensure your service can meet the data availability and management requirements. * Talk to iam-conditions-eng\@ about your use case.
--
-- /See:/ 'newResource_Labels' smart constructor.
newtype Resource_Labels = Resource_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Resource_Labels' with the minimum fields required to make a request.
newResource_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Resource_Labels
newResource_Labels additional = Resource_Labels {additional = additional}

instance Core.FromJSON Resource_Labels where
  parseJSON =
    Core.withObject
      "Resource_Labels"
      ( \o ->
          Resource_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Resource_Labels where
  toJSON Resource_Labels {..} = Core.toJSON additional

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
newtype SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them.
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
      ( \o ->
          SetIamPolicyRequest Core.<$> (o Core..:? "policy")
      )

instance Core.ToJSON SetIamPolicyRequest where
  toJSON SetIamPolicyRequest {..} =
    Core.object
      (Core.catMaybes [("policy" Core..=) Core.<$> policy])

-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
  { -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as \'/\' or \'storage./\') are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
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
          TestIamPermissionsRequest
            Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsRequest where
  toJSON TestIamPermissionsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

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
          TestIamPermissionsResponse
            Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )
