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
-- Module      : Gogol.Billing.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Billing.Internal.Product
  ( -- * AggregationInfo
    AggregationInfo (..),
    newAggregationInfo,

    -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * BillingAccount
    BillingAccount (..),
    newBillingAccount,

    -- * Binding
    Binding (..),
    newBinding,

    -- * Category
    Category (..),
    newCategory,

    -- * Expr
    Expr (..),
    newExpr,

    -- * GeoTaxonomy
    GeoTaxonomy (..),
    newGeoTaxonomy,

    -- * ListBillingAccountsResponse
    ListBillingAccountsResponse (..),
    newListBillingAccountsResponse,

    -- * ListProjectBillingInfoResponse
    ListProjectBillingInfoResponse (..),
    newListProjectBillingInfoResponse,

    -- * ListServicesResponse
    ListServicesResponse (..),
    newListServicesResponse,

    -- * ListSkusResponse
    ListSkusResponse (..),
    newListSkusResponse,

    -- * Money
    Money (..),
    newMoney,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PricingExpression
    PricingExpression (..),
    newPricingExpression,

    -- * PricingInfo
    PricingInfo (..),
    newPricingInfo,

    -- * ProjectBillingInfo
    ProjectBillingInfo (..),
    newProjectBillingInfo,

    -- * Service
    Service (..),
    newService,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * Sku
    Sku (..),
    newSku,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * TierRate
    TierRate (..),
    newTierRate,
  )
where

import Gogol.Billing.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Represents the aggregation level and interval for pricing of a single SKU.
--
-- /See:/ 'newAggregationInfo' smart constructor.
data AggregationInfo = AggregationInfo
  { -- | The number of intervals to aggregate over. Example: If aggregation/level is \"DAILY\" and aggregation/count is 14, aggregation will be over 14 days.
    aggregationCount :: (Core.Maybe Core.Int32),
    -- |
    aggregationInterval :: (Core.Maybe AggregationInfo_AggregationInterval),
    -- |
    aggregationLevel :: (Core.Maybe AggregationInfo_AggregationLevel)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AggregationInfo' with the minimum fields required to make a request.
newAggregationInfo ::
  AggregationInfo
newAggregationInfo =
  AggregationInfo
    { aggregationCount = Core.Nothing,
      aggregationInterval = Core.Nothing,
      aggregationLevel = Core.Nothing
    }

instance Core.FromJSON AggregationInfo where
  parseJSON =
    Core.withObject
      "AggregationInfo"
      ( \o ->
          AggregationInfo
            Core.<$> (o Core..:? "aggregationCount")
            Core.<*> (o Core..:? "aggregationInterval")
            Core.<*> (o Core..:? "aggregationLevel")
      )

instance Core.ToJSON AggregationInfo where
  toJSON AggregationInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregationCount" Core..=)
              Core.<$> aggregationCount,
            ("aggregationInterval" Core..=)
              Core.<$> aggregationInterval,
            ("aggregationLevel" Core..=)
              Core.<$> aggregationLevel
          ]
      )

-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit/configs\": [ { \"service\": \"allServices\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" }, { \"log/type\": \"ADMIN/READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\" }, { \"log/type\": \"DATA/WRITE\", \"exempted/members\": [ \"user:aliya\@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA/READ, DATA/WRITE and
-- ADMIN/READ logging. It also exempts jose\@example.com from DATA/READ logging, and aliya\@example.com from DATA/WRITE logging.
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
  AuditConfig {auditLogConfigs = Core.Nothing, service = Core.Nothing}

instance Core.FromJSON AuditConfig where
  parseJSON =
    Core.withObject
      "AuditConfig"
      ( \o ->
          AuditConfig
            Core.<$> (o Core..:? "auditLogConfigs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "service")
      )

instance Core.ToJSON AuditConfig where
  toJSON AuditConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditLogConfigs" Core..=)
              Core.<$> auditLogConfigs,
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
  AuditLogConfig {exemptedMembers = Core.Nothing, logType = Core.Nothing}

instance Core.FromJSON AuditLogConfig where
  parseJSON =
    Core.withObject
      "AuditLogConfig"
      ( \o ->
          AuditLogConfig
            Core.<$> (o Core..:? "exemptedMembers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "logType")
      )

instance Core.ToJSON AuditLogConfig where
  toJSON AuditLogConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("exemptedMembers" Core..=)
              Core.<$> exemptedMembers,
            ("logType" Core..=) Core.<$> logType
          ]
      )

-- | A billing account in the <https://console.cloud.google.com/ Google Cloud Console>. You can assign a billing account to one or more projects.
--
-- /See:/ 'newBillingAccount' smart constructor.
data BillingAccount = BillingAccount
  { -- | The display name given to the billing account, such as @My Billing Account@. This name is displayed in the Google Cloud Console.
    displayName :: (Core.Maybe Core.Text),
    -- | If this account is a <https://cloud.google.com/billing/docs/concepts subaccount>, then this will be the resource name of the parent billing account that it is being resold through. Otherwise this will be empty.
    masterBillingAccount :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the billing account. The resource name has the form @billingAccounts\/{billing_account_id}@. For example, @billingAccounts\/012345-567890-ABCDEF@ would be the resource name for billing account @012345-567890-ABCDEF@.
    name :: (Core.Maybe Core.Text),
    -- | Output only. True if the billing account is open, and will therefore be charged for any usage on associated projects. False if the billing account is closed, and therefore projects associated with it will be unable to use paid services.
    open :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BillingAccount' with the minimum fields required to make a request.
newBillingAccount ::
  BillingAccount
newBillingAccount =
  BillingAccount
    { displayName = Core.Nothing,
      masterBillingAccount = Core.Nothing,
      name = Core.Nothing,
      open = Core.Nothing
    }

instance Core.FromJSON BillingAccount where
  parseJSON =
    Core.withObject
      "BillingAccount"
      ( \o ->
          BillingAccount
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "masterBillingAccount")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "open")
      )

instance Core.ToJSON BillingAccount where
  toJSON BillingAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("masterBillingAccount" Core..=)
              Core.<$> masterBillingAccount,
            ("name" Core..=) Core.<$> name,
            ("open" Core..=) Core.<$> open
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
            Core.<*> (o Core..:? "members" Core..!= Core.mempty)
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

-- | Represents the category hierarchy of a SKU.
--
-- /See:/ 'newCategory' smart constructor.
data Category = Category
  { -- | The type of product the SKU refers to. Example: \"Compute\", \"Storage\", \"Network\", \"ApplicationServices\" etc.
    resourceFamily :: (Core.Maybe Core.Text),
    -- | A group classification for related SKUs. Example: \"RAM\", \"GPU\", \"Prediction\", \"Ops\", \"GoogleEgress\" etc.
    resourceGroup :: (Core.Maybe Core.Text),
    -- | The display name of the service this SKU belongs to.
    serviceDisplayName :: (Core.Maybe Core.Text),
    -- | Represents how the SKU is consumed. Example: \"OnDemand\", \"Preemptible\", \"Commit1Mo\", \"Commit1Yr\" etc.
    usageType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Category' with the minimum fields required to make a request.
newCategory ::
  Category
newCategory =
  Category
    { resourceFamily = Core.Nothing,
      resourceGroup = Core.Nothing,
      serviceDisplayName = Core.Nothing,
      usageType = Core.Nothing
    }

instance Core.FromJSON Category where
  parseJSON =
    Core.withObject
      "Category"
      ( \o ->
          Category
            Core.<$> (o Core..:? "resourceFamily")
            Core.<*> (o Core..:? "resourceGroup")
            Core.<*> (o Core..:? "serviceDisplayName")
            Core.<*> (o Core..:? "usageType")
      )

instance Core.ToJSON Category where
  toJSON Category {..} =
    Core.object
      ( Core.catMaybes
          [ ("resourceFamily" Core..=) Core.<$> resourceFamily,
            ("resourceGroup" Core..=) Core.<$> resourceGroup,
            ("serviceDisplayName" Core..=)
              Core.<$> serviceDisplayName,
            ("usageType" Core..=) Core.<$> usageType
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

-- | Encapsulates the geographic taxonomy data for a sku.
--
-- /See:/ 'newGeoTaxonomy' smart constructor.
data GeoTaxonomy = GeoTaxonomy
  { -- | The list of regions associated with a sku. Empty for Global skus, which are associated with all Google Cloud regions.
    regions :: (Core.Maybe [Core.Text]),
    -- | The type of Geo Taxonomy: GLOBAL, REGIONAL, or MULTI_REGIONAL.
    type' :: (Core.Maybe GeoTaxonomy_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeoTaxonomy' with the minimum fields required to make a request.
newGeoTaxonomy ::
  GeoTaxonomy
newGeoTaxonomy = GeoTaxonomy {regions = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON GeoTaxonomy where
  parseJSON =
    Core.withObject
      "GeoTaxonomy"
      ( \o ->
          GeoTaxonomy
            Core.<$> (o Core..:? "regions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON GeoTaxonomy where
  toJSON GeoTaxonomy {..} =
    Core.object
      ( Core.catMaybes
          [ ("regions" Core..=) Core.<$> regions,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Response message for @ListBillingAccounts@.
--
-- /See:/ 'newListBillingAccountsResponse' smart constructor.
data ListBillingAccountsResponse = ListBillingAccountsResponse
  { -- | A list of billing accounts.
    billingAccounts :: (Core.Maybe [BillingAccount]),
    -- | A token to retrieve the next page of results. To retrieve the next page, call @ListBillingAccounts@ again with the @page_token@ field set to this value. This field is empty if there are no more results to retrieve.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBillingAccountsResponse' with the minimum fields required to make a request.
newListBillingAccountsResponse ::
  ListBillingAccountsResponse
newListBillingAccountsResponse =
  ListBillingAccountsResponse
    { billingAccounts = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListBillingAccountsResponse where
  parseJSON =
    Core.withObject
      "ListBillingAccountsResponse"
      ( \o ->
          ListBillingAccountsResponse
            Core.<$> (o Core..:? "billingAccounts" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListBillingAccountsResponse where
  toJSON ListBillingAccountsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("billingAccounts" Core..=)
              Core.<$> billingAccounts,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Request message for @ListProjectBillingInfoResponse@.
--
-- /See:/ 'newListProjectBillingInfoResponse' smart constructor.
data ListProjectBillingInfoResponse = ListProjectBillingInfoResponse
  { -- | A token to retrieve the next page of results. To retrieve the next page, call @ListProjectBillingInfo@ again with the @page_token@ field set to this value. This field is empty if there are no more results to retrieve.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of @ProjectBillingInfo@ resources representing the projects associated with the billing account.
    projectBillingInfo :: (Core.Maybe [ProjectBillingInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListProjectBillingInfoResponse' with the minimum fields required to make a request.
newListProjectBillingInfoResponse ::
  ListProjectBillingInfoResponse
newListProjectBillingInfoResponse =
  ListProjectBillingInfoResponse
    { nextPageToken = Core.Nothing,
      projectBillingInfo = Core.Nothing
    }

instance Core.FromJSON ListProjectBillingInfoResponse where
  parseJSON =
    Core.withObject
      "ListProjectBillingInfoResponse"
      ( \o ->
          ListProjectBillingInfoResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> ( o Core..:? "projectBillingInfo"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ListProjectBillingInfoResponse where
  toJSON ListProjectBillingInfoResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("projectBillingInfo" Core..=)
              Core.<$> projectBillingInfo
          ]
      )

-- | Response message for @ListServices@.
--
-- /See:/ 'newListServicesResponse' smart constructor.
data ListServicesResponse = ListServicesResponse
  { -- | A token to retrieve the next page of results. To retrieve the next page, call @ListServices@ again with the @page_token@ field set to this value. This field is empty if there are no more results to retrieve.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of services.
    services :: (Core.Maybe [Service])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListServicesResponse' with the minimum fields required to make a request.
newListServicesResponse ::
  ListServicesResponse
newListServicesResponse =
  ListServicesResponse {nextPageToken = Core.Nothing, services = Core.Nothing}

instance Core.FromJSON ListServicesResponse where
  parseJSON =
    Core.withObject
      "ListServicesResponse"
      ( \o ->
          ListServicesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "services" Core..!= Core.mempty)
      )

instance Core.ToJSON ListServicesResponse where
  toJSON ListServicesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("services" Core..=) Core.<$> services
          ]
      )

-- | Response message for @ListSkus@.
--
-- /See:/ 'newListSkusResponse' smart constructor.
data ListSkusResponse = ListSkusResponse
  { -- | A token to retrieve the next page of results. To retrieve the next page, call @ListSkus@ again with the @page_token@ field set to this value. This field is empty if there are no more results to retrieve.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of public SKUs of the given service.
    skus :: (Core.Maybe [Sku])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSkusResponse' with the minimum fields required to make a request.
newListSkusResponse ::
  ListSkusResponse
newListSkusResponse =
  ListSkusResponse {nextPageToken = Core.Nothing, skus = Core.Nothing}

instance Core.FromJSON ListSkusResponse where
  parseJSON =
    Core.withObject
      "ListSkusResponse"
      ( \o ->
          ListSkusResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "skus" Core..!= Core.mempty)
      )

instance Core.ToJSON ListSkusResponse where
  toJSON ListSkusResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("skus" Core..=) Core.<$> skus
          ]
      )

-- | Represents an amount of money with its currency type.
--
-- /See:/ 'newMoney' smart constructor.
data Money = Money
  { -- | The three-letter currency code defined in ISO 4217.
    currencyCode :: (Core.Maybe Core.Text),
    -- | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If @units@ is positive, @nanos@ must be positive or zero. If @units@ is zero, @nanos@ can be positive, zero, or negative. If @units@ is negative, @nanos@ must be negative or zero. For example $-1.75 is represented as @units@=-1 and @nanos@=-750,000,000.
    nanos :: (Core.Maybe Core.Int32),
    -- | The whole units of the amount. For example if @currencyCode@ is @\"USD\"@, then 1 unit is one US dollar.
    units :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Money' with the minimum fields required to make a request.
newMoney ::
  Money
newMoney =
  Money
    { currencyCode = Core.Nothing,
      nanos = Core.Nothing,
      units = Core.Nothing
    }

instance Core.FromJSON Money where
  parseJSON =
    Core.withObject
      "Money"
      ( \o ->
          Money
            Core.<$> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "nanos")
            Core.<*> (o Core..:? "units")
      )

instance Core.ToJSON Money where
  toJSON Money {..} =
    Core.object
      ( Core.catMaybes
          [ ("currencyCode" Core..=) Core.<$> currencyCode,
            ("nanos" Core..=) Core.<$> nanos,
            ("units" Core..=) Core.. Core.AsText Core.<$> units
          ]
      )

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
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
            Core.<$> (o Core..:? "auditConfigs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "bindings" Core..!= Core.mempty)
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

-- | Expresses a mathematical pricing formula. For Example:- @usage_unit: GBy@ @tiered_rates:@ @[start_usage_amount: 20, unit_price: $10]@ @[start_usage_amount: 100, unit_price: $5]@ The above expresses a pricing formula where the first 20GB is free, the next 80GB is priced at $10 per GB followed by $5 per GB for additional usage.
--
-- /See:/ 'newPricingExpression' smart constructor.
data PricingExpression = PricingExpression
  { -- | The base unit for the SKU which is the unit used in usage exports. Example: \"By\"
    baseUnit :: (Core.Maybe Core.Text),
    -- | Conversion factor for converting from price per usage/unit to price per base/unit, and start/usage/amount to start/usage/amount in base/unit. unit/price \/ base/unit/conversion/factor = price per base/unit. start/usage/amount * base/unit/conversion/factor = start/usage/amount in base/unit.
    baseUnitConversionFactor :: (Core.Maybe Core.Double),
    -- | The base unit in human readable form. Example: \"byte\".
    baseUnitDescription :: (Core.Maybe Core.Text),
    -- | The recommended quantity of units for displaying pricing info. When displaying pricing info it is recommended to display: (unit/price * display/quantity) per display/quantity usage/unit. This field does not affect the pricing formula and is for display purposes only. Example: If the unit/price is \"0.0001 USD\", the usage/unit is \"GB\" and the display_quantity is \"1000\" then the recommended way of displaying the pricing info is \"0.10 USD per 1000 GB\"
    displayQuantity :: (Core.Maybe Core.Double),
    -- | The list of tiered rates for this pricing. The total cost is computed by applying each of the tiered rates on usage. This repeated list is sorted by ascending order of start/usage/amount.
    tieredRates :: (Core.Maybe [TierRate]),
    -- | The short hand for unit of usage this pricing is specified in. Example: usage_unit of \"GiBy\" means that usage is specified in \"Gibi Byte\".
    usageUnit :: (Core.Maybe Core.Text),
    -- | The unit of usage in human readable form. Example: \"gibi byte\".
    usageUnitDescription :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PricingExpression' with the minimum fields required to make a request.
newPricingExpression ::
  PricingExpression
newPricingExpression =
  PricingExpression
    { baseUnit = Core.Nothing,
      baseUnitConversionFactor = Core.Nothing,
      baseUnitDescription = Core.Nothing,
      displayQuantity = Core.Nothing,
      tieredRates = Core.Nothing,
      usageUnit = Core.Nothing,
      usageUnitDescription = Core.Nothing
    }

instance Core.FromJSON PricingExpression where
  parseJSON =
    Core.withObject
      "PricingExpression"
      ( \o ->
          PricingExpression
            Core.<$> (o Core..:? "baseUnit")
            Core.<*> (o Core..:? "baseUnitConversionFactor")
            Core.<*> (o Core..:? "baseUnitDescription")
            Core.<*> (o Core..:? "displayQuantity")
            Core.<*> (o Core..:? "tieredRates" Core..!= Core.mempty)
            Core.<*> (o Core..:? "usageUnit")
            Core.<*> (o Core..:? "usageUnitDescription")
      )

instance Core.ToJSON PricingExpression where
  toJSON PricingExpression {..} =
    Core.object
      ( Core.catMaybes
          [ ("baseUnit" Core..=) Core.<$> baseUnit,
            ("baseUnitConversionFactor" Core..=)
              Core.<$> baseUnitConversionFactor,
            ("baseUnitDescription" Core..=)
              Core.<$> baseUnitDescription,
            ("displayQuantity" Core..=) Core.<$> displayQuantity,
            ("tieredRates" Core..=) Core.<$> tieredRates,
            ("usageUnit" Core..=) Core.<$> usageUnit,
            ("usageUnitDescription" Core..=)
              Core.<$> usageUnitDescription
          ]
      )

-- | Represents the pricing information for a SKU at a single point of time.
--
-- /See:/ 'newPricingInfo' smart constructor.
data PricingInfo = PricingInfo
  { -- | Aggregation Info. This can be left unspecified if the pricing expression doesn\'t require aggregation.
    aggregationInfo :: (Core.Maybe AggregationInfo),
    -- | Conversion rate used for currency conversion, from USD to the currency specified in the request. This includes any surcharge collected for billing in non USD currency. If a currency is not specified in the request this defaults to 1.0. Example: USD * currency/conversion/rate = JPY
    currencyConversionRate :: (Core.Maybe Core.Double),
    -- | The timestamp from which this pricing was effective within the requested time range. This is guaranteed to be greater than or equal to the start/time field in the request and less than the end/time field in the request. If a time range was not specified in the request this field will be equivalent to a time within the last 12 hours, indicating the latest pricing info.
    effectiveTime :: (Core.Maybe Core.DateTime'),
    -- | Expresses the pricing formula. See @PricingExpression@ for an example.
    pricingExpression :: (Core.Maybe PricingExpression),
    -- | An optional human readable summary of the pricing information, has a maximum length of 256 characters.
    summary :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PricingInfo' with the minimum fields required to make a request.
newPricingInfo ::
  PricingInfo
newPricingInfo =
  PricingInfo
    { aggregationInfo = Core.Nothing,
      currencyConversionRate = Core.Nothing,
      effectiveTime = Core.Nothing,
      pricingExpression = Core.Nothing,
      summary = Core.Nothing
    }

instance Core.FromJSON PricingInfo where
  parseJSON =
    Core.withObject
      "PricingInfo"
      ( \o ->
          PricingInfo
            Core.<$> (o Core..:? "aggregationInfo")
            Core.<*> (o Core..:? "currencyConversionRate")
            Core.<*> (o Core..:? "effectiveTime")
            Core.<*> (o Core..:? "pricingExpression")
            Core.<*> (o Core..:? "summary")
      )

instance Core.ToJSON PricingInfo where
  toJSON PricingInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregationInfo" Core..=)
              Core.<$> aggregationInfo,
            ("currencyConversionRate" Core..=)
              Core.<$> currencyConversionRate,
            ("effectiveTime" Core..=) Core.<$> effectiveTime,
            ("pricingExpression" Core..=)
              Core.<$> pricingExpression,
            ("summary" Core..=) Core.<$> summary
          ]
      )

-- | Encapsulation of billing information for a Google Cloud Console project. A project has at most one associated billing account at a time (but a billing account can be assigned to multiple projects).
--
-- /See:/ 'newProjectBillingInfo' smart constructor.
data ProjectBillingInfo = ProjectBillingInfo
  { -- | The resource name of the billing account associated with the project, if any. For example, @billingAccounts\/012345-567890-ABCDEF@.
    billingAccountName :: (Core.Maybe Core.Text),
    -- | True if the project is associated with an open billing account, to which usage on the project is charged. False if the project is associated with a closed billing account, or no billing account at all, and therefore cannot use paid services. This field is read-only.
    billingEnabled :: (Core.Maybe Core.Bool),
    -- | The resource name for the @ProjectBillingInfo@; has the form @projects\/{project_id}\/billingInfo@. For example, the resource name for the billing information for project @tokyo-rain-123@ would be @projects\/tokyo-rain-123\/billingInfo@. This field is read-only.
    name :: (Core.Maybe Core.Text),
    -- | The ID of the project that this @ProjectBillingInfo@ represents, such as @tokyo-rain-123@. This is a convenience field so that you don\'t need to parse the @name@ field to obtain a project ID. This field is read-only.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProjectBillingInfo' with the minimum fields required to make a request.
newProjectBillingInfo ::
  ProjectBillingInfo
newProjectBillingInfo =
  ProjectBillingInfo
    { billingAccountName = Core.Nothing,
      billingEnabled = Core.Nothing,
      name = Core.Nothing,
      projectId = Core.Nothing
    }

instance Core.FromJSON ProjectBillingInfo where
  parseJSON =
    Core.withObject
      "ProjectBillingInfo"
      ( \o ->
          ProjectBillingInfo
            Core.<$> (o Core..:? "billingAccountName")
            Core.<*> (o Core..:? "billingEnabled")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON ProjectBillingInfo where
  toJSON ProjectBillingInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("billingAccountName" Core..=)
              Core.<$> billingAccountName,
            ("billingEnabled" Core..=) Core.<$> billingEnabled,
            ("name" Core..=) Core.<$> name,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

-- | Encapsulates a single service in Google Cloud Platform.
--
-- /See:/ 'newService' smart constructor.
data Service = Service
  { -- | The business under which the service is offered. Ex. \"businessEntities\/GCP\", \"businessEntities\/Maps\"
    businessEntityName :: (Core.Maybe Core.Text),
    -- | A human readable display name for this service.
    displayName :: (Core.Maybe Core.Text),
    -- | The resource name for the service. Example: \"services\/DA34-426B-A397\"
    name :: (Core.Maybe Core.Text),
    -- | The identifier for the service. Example: \"DA34-426B-A397\"
    serviceId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Service' with the minimum fields required to make a request.
newService ::
  Service
newService =
  Service
    { businessEntityName = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      serviceId = Core.Nothing
    }

instance Core.FromJSON Service where
  parseJSON =
    Core.withObject
      "Service"
      ( \o ->
          Service
            Core.<$> (o Core..:? "businessEntityName")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "serviceId")
      )

instance Core.ToJSON Service where
  toJSON Service {..} =
    Core.object
      ( Core.catMaybes
          [ ("businessEntityName" Core..=)
              Core.<$> businessEntityName,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("serviceId" Core..=) Core.<$> serviceId
          ]
      )

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
data SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy),
    -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    updateMask :: (Core.Maybe Core.GFieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest ::
  SetIamPolicyRequest
newSetIamPolicyRequest =
  SetIamPolicyRequest {policy = Core.Nothing, updateMask = Core.Nothing}

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

-- | Encapsulates a single SKU in Google Cloud Platform
--
-- /See:/ 'newSku' smart constructor.
data Sku = Sku
  { -- | The category hierarchy of this SKU, purely for organizational purpose.
    category :: (Core.Maybe Category),
    -- | A human readable description of the SKU, has a maximum length of 256 characters.
    description :: (Core.Maybe Core.Text),
    -- | The geographic taxonomy for this sku.
    geoTaxonomy :: (Core.Maybe GeoTaxonomy),
    -- | The resource name for the SKU. Example: \"services\/DA34-426B-A397\/skus\/AA95-CD31-42FE\"
    name :: (Core.Maybe Core.Text),
    -- | A timeline of pricing info for this SKU in chronological order.
    pricingInfo :: (Core.Maybe [PricingInfo]),
    -- | Identifies the service provider. This is \'Google\' for first party services in Google Cloud Platform.
    serviceProviderName :: (Core.Maybe Core.Text),
    -- | List of service regions this SKU is offered at. Example: \"asia-east1\" Service regions can be found at https:\/\/cloud.google.com\/about\/locations\/
    serviceRegions :: (Core.Maybe [Core.Text]),
    -- | The identifier for the SKU. Example: \"AA95-CD31-42FE\"
    skuId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Sku' with the minimum fields required to make a request.
newSku ::
  Sku
newSku =
  Sku
    { category = Core.Nothing,
      description = Core.Nothing,
      geoTaxonomy = Core.Nothing,
      name = Core.Nothing,
      pricingInfo = Core.Nothing,
      serviceProviderName = Core.Nothing,
      serviceRegions = Core.Nothing,
      skuId = Core.Nothing
    }

instance Core.FromJSON Sku where
  parseJSON =
    Core.withObject
      "Sku"
      ( \o ->
          Sku
            Core.<$> (o Core..:? "category")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "geoTaxonomy")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pricingInfo" Core..!= Core.mempty)
            Core.<*> (o Core..:? "serviceProviderName")
            Core.<*> (o Core..:? "serviceRegions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "skuId")
      )

instance Core.ToJSON Sku where
  toJSON Sku {..} =
    Core.object
      ( Core.catMaybes
          [ ("category" Core..=) Core.<$> category,
            ("description" Core..=) Core.<$> description,
            ("geoTaxonomy" Core..=) Core.<$> geoTaxonomy,
            ("name" Core..=) Core.<$> name,
            ("pricingInfo" Core..=) Core.<$> pricingInfo,
            ("serviceProviderName" Core..=)
              Core.<$> serviceProviderName,
            ("serviceRegions" Core..=) Core.<$> serviceRegions,
            ("skuId" Core..=) Core.<$> skuId
          ]
      )

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
            Core.<$> (o Core..:? "permissions" Core..!= Core.mempty)
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
            Core.<$> (o Core..:? "permissions" Core..!= Core.mempty)
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | The price rate indicating starting usage and its corresponding price.
--
-- /See:/ 'newTierRate' smart constructor.
data TierRate = TierRate
  { -- | Usage is priced at this rate only after this amount. Example: start/usage/amount of 10 indicates that the usage will be priced at the unit/price after the first 10 usage/units.
    startUsageAmount :: (Core.Maybe Core.Double),
    -- | The price per unit of usage. Example: unit_price of amount $10 indicates that each unit will cost $10.
    unitPrice :: (Core.Maybe Money)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TierRate' with the minimum fields required to make a request.
newTierRate ::
  TierRate
newTierRate =
  TierRate {startUsageAmount = Core.Nothing, unitPrice = Core.Nothing}

instance Core.FromJSON TierRate where
  parseJSON =
    Core.withObject
      "TierRate"
      ( \o ->
          TierRate
            Core.<$> (o Core..:? "startUsageAmount")
            Core.<*> (o Core..:? "unitPrice")
      )

instance Core.ToJSON TierRate where
  toJSON TierRate {..} =
    Core.object
      ( Core.catMaybes
          [ ("startUsageAmount" Core..=)
              Core.<$> startUsageAmount,
            ("unitPrice" Core..=) Core.<$> unitPrice
          ]
      )
