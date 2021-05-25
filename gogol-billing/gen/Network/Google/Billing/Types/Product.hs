{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Billing.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Billing.Types.Product where

import Network.Google.Billing.Types.Sum
import Network.Google.Prelude

-- | Specifies the audit configuration for a service. The configuration
-- determines which permission types are logged, and what identities, if
-- any, are exempted from logging. An AuditConfig must have one or more
-- AuditLogConfigs. If there are AuditConfigs for both \`allServices\` and
-- a specific service, the union of the two AuditConfigs is used for that
-- service: the log_types specified in each AuditConfig are enabled, and
-- the exempted_members in each AuditLogConfig are exempted. Example Policy
-- with multiple AuditConfigs: { \"audit_configs\": [ { \"service\":
-- \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\":
-- \"sampleservice.googleapis.com\", \"audit_log_configs\": [ {
-- \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\",
-- \"exempted_members\": [ \"user:aliya\'example.com\" ] } ] } ] } For
-- sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
-- logging. It also exempts jose\'example.com from DATA_READ logging, and
-- aliya\'example.com from DATA_WRITE logging.
--
-- /See:/ 'auditConfig' smart constructor.
data AuditConfig =
  AuditConfig'
    { _acService :: !(Maybe Text)
    , _acAuditLogConfigs :: !(Maybe [AuditLogConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acService'
--
-- * 'acAuditLogConfigs'
auditConfig
    :: AuditConfig
auditConfig = AuditConfig' {_acService = Nothing, _acAuditLogConfigs = Nothing}


-- | Specifies a service that will be enabled for audit logging. For example,
-- \`storage.googleapis.com\`, \`cloudsql.googleapis.com\`. \`allServices\`
-- is a special value that covers all services.
acService :: Lens' AuditConfig (Maybe Text)
acService
  = lens _acService (\ s a -> s{_acService = a})

-- | The configuration for logging of each type of permission.
acAuditLogConfigs :: Lens' AuditConfig [AuditLogConfig]
acAuditLogConfigs
  = lens _acAuditLogConfigs
      (\ s a -> s{_acAuditLogConfigs = a})
      . _Default
      . _Coerce

instance FromJSON AuditConfig where
        parseJSON
          = withObject "AuditConfig"
              (\ o ->
                 AuditConfig' <$>
                   (o .:? "service") <*>
                     (o .:? "auditLogConfigs" .!= mempty))

instance ToJSON AuditConfig where
        toJSON AuditConfig'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _acService,
                  ("auditLogConfigs" .=) <$> _acAuditLogConfigs])

-- | Response message for \`ListServices\`.
--
-- /See:/ 'listServicesResponse' smart constructor.
data ListServicesResponse =
  ListServicesResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrServices :: !(Maybe [Service])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListServicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNextPageToken'
--
-- * 'lsrServices'
listServicesResponse
    :: ListServicesResponse
listServicesResponse =
  ListServicesResponse' {_lsrNextPageToken = Nothing, _lsrServices = Nothing}


-- | A token to retrieve the next page of results. To retrieve the next page,
-- call \`ListServices\` again with the \`page_token\` field set to this
-- value. This field is empty if there are no more results to retrieve.
lsrNextPageToken :: Lens' ListServicesResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | A list of services.
lsrServices :: Lens' ListServicesResponse [Service]
lsrServices
  = lens _lsrServices (\ s a -> s{_lsrServices = a}) .
      _Default
      . _Coerce

instance FromJSON ListServicesResponse where
        parseJSON
          = withObject "ListServicesResponse"
              (\ o ->
                 ListServicesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "services" .!= mempty))

instance ToJSON ListServicesResponse where
        toJSON ListServicesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrNextPageToken,
                  ("services" .=) <$> _lsrServices])

-- | Represents a textual expression in the Common Expression Language (CEL)
-- syntax. CEL is a C-like expression language. The syntax and semantics of
-- CEL are documented at https:\/\/github.com\/google\/cel-spec. Example
-- (Comparison): title: \"Summary size limit\" description: \"Determines if
-- a summary is less than 100 chars\" expression: \"document.summary.size()
-- \< 100\" Example (Equality): title: \"Requestor is owner\" description:
-- \"Determines if requestor is the document owner\" expression:
-- \"document.owner == request.auth.claims.email\" Example (Logic): title:
-- \"Public documents\" description: \"Determine whether the document
-- should be publicly visible\" expression: \"document.type != \'private\'
-- && document.type != \'internal\'\" Example (Data Manipulation): title:
-- \"Notification string\" description: \"Create a notification string with
-- a timestamp.\" expression: \"\'New message received at \' +
-- string(document.create_time)\" The exact variables and functions that
-- may be referenced within an expression are determined by the service
-- that evaluates it. See the service documentation for additional
-- information.
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation :: !(Maybe Text)
    , _eExpression :: !(Maybe Text)
    , _eTitle :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
  Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }


-- | Optional. String indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | Optional. Title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | Optional. Description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | Encapsulates the geographic taxonomy data for a sku.
--
-- /See:/ 'geoTaxonomy' smart constructor.
data GeoTaxonomy =
  GeoTaxonomy'
    { _gtRegions :: !(Maybe [Text])
    , _gtType :: !(Maybe GeoTaxonomyType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GeoTaxonomy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtRegions'
--
-- * 'gtType'
geoTaxonomy
    :: GeoTaxonomy
geoTaxonomy = GeoTaxonomy' {_gtRegions = Nothing, _gtType = Nothing}


-- | The list of regions associated with a sku. Empty for Global skus, which
-- are associated with all Google Cloud regions.
gtRegions :: Lens' GeoTaxonomy [Text]
gtRegions
  = lens _gtRegions (\ s a -> s{_gtRegions = a}) .
      _Default
      . _Coerce

-- | The type of Geo Taxonomy: GLOBAL, REGIONAL, or MULTI_REGIONAL.
gtType :: Lens' GeoTaxonomy (Maybe GeoTaxonomyType)
gtType = lens _gtType (\ s a -> s{_gtType = a})

instance FromJSON GeoTaxonomy where
        parseJSON
          = withObject "GeoTaxonomy"
              (\ o ->
                 GeoTaxonomy' <$>
                   (o .:? "regions" .!= mempty) <*> (o .:? "type"))

instance ToJSON GeoTaxonomy where
        toJSON GeoTaxonomy'{..}
          = object
              (catMaybes
                 [("regions" .=) <$> _gtRegions,
                  ("type" .=) <$> _gtType])

-- | A billing account in the [Google Cloud
-- Console](https:\/\/console.cloud.google.com\/). You can assign a billing
-- account to one or more projects.
--
-- /See:/ 'billingAccount' smart constructor.
data BillingAccount =
  BillingAccount'
    { _baMasterBillingAccount :: !(Maybe Text)
    , _baOpen :: !(Maybe Bool)
    , _baName :: !(Maybe Text)
    , _baDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baMasterBillingAccount'
--
-- * 'baOpen'
--
-- * 'baName'
--
-- * 'baDisplayName'
billingAccount
    :: BillingAccount
billingAccount =
  BillingAccount'
    { _baMasterBillingAccount = Nothing
    , _baOpen = Nothing
    , _baName = Nothing
    , _baDisplayName = Nothing
    }


-- | If this account is a
-- [subaccount](https:\/\/cloud.google.com\/billing\/docs\/concepts), then
-- this will be the resource name of the parent billing account that it is
-- being resold through. Otherwise this will be empty.
baMasterBillingAccount :: Lens' BillingAccount (Maybe Text)
baMasterBillingAccount
  = lens _baMasterBillingAccount
      (\ s a -> s{_baMasterBillingAccount = a})

-- | Output only. True if the billing account is open, and will therefore be
-- charged for any usage on associated projects. False if the billing
-- account is closed, and therefore projects associated with it will be
-- unable to use paid services.
baOpen :: Lens' BillingAccount (Maybe Bool)
baOpen = lens _baOpen (\ s a -> s{_baOpen = a})

-- | Output only. The resource name of the billing account. The resource name
-- has the form \`billingAccounts\/{billing_account_id}\`. For example,
-- \`billingAccounts\/012345-567890-ABCDEF\` would be the resource name for
-- billing account \`012345-567890-ABCDEF\`.
baName :: Lens' BillingAccount (Maybe Text)
baName = lens _baName (\ s a -> s{_baName = a})

-- | The display name given to the billing account, such as \`My Billing
-- Account\`. This name is displayed in the Google Cloud Console.
baDisplayName :: Lens' BillingAccount (Maybe Text)
baDisplayName
  = lens _baDisplayName
      (\ s a -> s{_baDisplayName = a})

instance FromJSON BillingAccount where
        parseJSON
          = withObject "BillingAccount"
              (\ o ->
                 BillingAccount' <$>
                   (o .:? "masterBillingAccount") <*> (o .:? "open") <*>
                     (o .:? "name")
                     <*> (o .:? "displayName"))

instance ToJSON BillingAccount where
        toJSON BillingAccount'{..}
          = object
              (catMaybes
                 [("masterBillingAccount" .=) <$>
                    _baMasterBillingAccount,
                  ("open" .=) <$> _baOpen, ("name" .=) <$> _baName,
                  ("displayName" .=) <$> _baDisplayName])

-- | Encapsulates a single service in Google Cloud Platform.
--
-- /See:/ 'service' smart constructor.
data Service =
  Service'
    { _sBusinessEntityName :: !(Maybe Text)
    , _sName :: !(Maybe Text)
    , _sDisplayName :: !(Maybe Text)
    , _sServiceId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Service' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sBusinessEntityName'
--
-- * 'sName'
--
-- * 'sDisplayName'
--
-- * 'sServiceId'
service
    :: Service
service =
  Service'
    { _sBusinessEntityName = Nothing
    , _sName = Nothing
    , _sDisplayName = Nothing
    , _sServiceId = Nothing
    }


-- | The business under which the service is offered. Ex.
-- \"businessEntities\/GCP\", \"businessEntities\/Maps\"
sBusinessEntityName :: Lens' Service (Maybe Text)
sBusinessEntityName
  = lens _sBusinessEntityName
      (\ s a -> s{_sBusinessEntityName = a})

-- | The resource name for the service. Example: \"services\/DA34-426B-A397\"
sName :: Lens' Service (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | A human readable display name for this service.
sDisplayName :: Lens' Service (Maybe Text)
sDisplayName
  = lens _sDisplayName (\ s a -> s{_sDisplayName = a})

-- | The identifier for the service. Example: \"DA34-426B-A397\"
sServiceId :: Lens' Service (Maybe Text)
sServiceId
  = lens _sServiceId (\ s a -> s{_sServiceId = a})

instance FromJSON Service where
        parseJSON
          = withObject "Service"
              (\ o ->
                 Service' <$>
                   (o .:? "businessEntityName") <*> (o .:? "name") <*>
                     (o .:? "displayName")
                     <*> (o .:? "serviceId"))

instance ToJSON Service where
        toJSON Service'{..}
          = object
              (catMaybes
                 [("businessEntityName" .=) <$> _sBusinessEntityName,
                  ("name" .=) <$> _sName,
                  ("displayName" .=) <$> _sDisplayName,
                  ("serviceId" .=) <$> _sServiceId])

-- | Encapsulation of billing information for a Google Cloud Console project.
-- A project has at most one associated billing account at a time (but a
-- billing account can be assigned to multiple projects).
--
-- /See:/ 'projectBillingInfo' smart constructor.
data ProjectBillingInfo =
  ProjectBillingInfo'
    { _pbiName :: !(Maybe Text)
    , _pbiBillingAccountName :: !(Maybe Text)
    , _pbiProjectId :: !(Maybe Text)
    , _pbiBillingEnabled :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectBillingInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbiName'
--
-- * 'pbiBillingAccountName'
--
-- * 'pbiProjectId'
--
-- * 'pbiBillingEnabled'
projectBillingInfo
    :: ProjectBillingInfo
projectBillingInfo =
  ProjectBillingInfo'
    { _pbiName = Nothing
    , _pbiBillingAccountName = Nothing
    , _pbiProjectId = Nothing
    , _pbiBillingEnabled = Nothing
    }


-- | The resource name for the \`ProjectBillingInfo\`; has the form
-- \`projects\/{project_id}\/billingInfo\`. For example, the resource name
-- for the billing information for project \`tokyo-rain-123\` would be
-- \`projects\/tokyo-rain-123\/billingInfo\`. This field is read-only.
pbiName :: Lens' ProjectBillingInfo (Maybe Text)
pbiName = lens _pbiName (\ s a -> s{_pbiName = a})

-- | The resource name of the billing account associated with the project, if
-- any. For example, \`billingAccounts\/012345-567890-ABCDEF\`.
pbiBillingAccountName :: Lens' ProjectBillingInfo (Maybe Text)
pbiBillingAccountName
  = lens _pbiBillingAccountName
      (\ s a -> s{_pbiBillingAccountName = a})

-- | The ID of the project that this \`ProjectBillingInfo\` represents, such
-- as \`tokyo-rain-123\`. This is a convenience field so that you don\'t
-- need to parse the \`name\` field to obtain a project ID. This field is
-- read-only.
pbiProjectId :: Lens' ProjectBillingInfo (Maybe Text)
pbiProjectId
  = lens _pbiProjectId (\ s a -> s{_pbiProjectId = a})

-- | True if the project is associated with an open billing account, to which
-- usage on the project is charged. False if the project is associated with
-- a closed billing account, or no billing account at all, and therefore
-- cannot use paid services. This field is read-only.
pbiBillingEnabled :: Lens' ProjectBillingInfo (Maybe Bool)
pbiBillingEnabled
  = lens _pbiBillingEnabled
      (\ s a -> s{_pbiBillingEnabled = a})

instance FromJSON ProjectBillingInfo where
        parseJSON
          = withObject "ProjectBillingInfo"
              (\ o ->
                 ProjectBillingInfo' <$>
                   (o .:? "name") <*> (o .:? "billingAccountName") <*>
                     (o .:? "projectId")
                     <*> (o .:? "billingEnabled"))

instance ToJSON ProjectBillingInfo where
        toJSON ProjectBillingInfo'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _pbiName,
                  ("billingAccountName" .=) <$> _pbiBillingAccountName,
                  ("projectId" .=) <$> _pbiProjectId,
                  ("billingEnabled" .=) <$> _pbiBillingEnabled])

-- | The price rate indicating starting usage and its corresponding price.
--
-- /See:/ 'tierRate' smart constructor.
data TierRate =
  TierRate'
    { _trUnitPrice :: !(Maybe Money)
    , _trStartUsageAmount :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TierRate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trUnitPrice'
--
-- * 'trStartUsageAmount'
tierRate
    :: TierRate
tierRate = TierRate' {_trUnitPrice = Nothing, _trStartUsageAmount = Nothing}


-- | The price per unit of usage. Example: unit_price of amount $10 indicates
-- that each unit will cost $10.
trUnitPrice :: Lens' TierRate (Maybe Money)
trUnitPrice
  = lens _trUnitPrice (\ s a -> s{_trUnitPrice = a})

-- | Usage is priced at this rate only after this amount. Example:
-- start_usage_amount of 10 indicates that the usage will be priced at the
-- unit_price after the first 10 usage_units.
trStartUsageAmount :: Lens' TierRate (Maybe Double)
trStartUsageAmount
  = lens _trStartUsageAmount
      (\ s a -> s{_trStartUsageAmount = a})
      . mapping _Coerce

instance FromJSON TierRate where
        parseJSON
          = withObject "TierRate"
              (\ o ->
                 TierRate' <$>
                   (o .:? "unitPrice") <*> (o .:? "startUsageAmount"))

instance ToJSON TierRate where
        toJSON TierRate'{..}
          = object
              (catMaybes
                 [("unitPrice" .=) <$> _trUnitPrice,
                  ("startUsageAmount" .=) <$> _trStartUsageAmount])

-- | Represents an amount of money with its currency type.
--
-- /See:/ 'money' smart constructor.
data Money =
  Money'
    { _mCurrencyCode :: !(Maybe Text)
    , _mNanos :: !(Maybe (Textual Int32))
    , _mUnits :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Money' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mCurrencyCode'
--
-- * 'mNanos'
--
-- * 'mUnits'
money
    :: Money
money = Money' {_mCurrencyCode = Nothing, _mNanos = Nothing, _mUnits = Nothing}


-- | The three-letter currency code defined in ISO 4217.
mCurrencyCode :: Lens' Money (Maybe Text)
mCurrencyCode
  = lens _mCurrencyCode
      (\ s a -> s{_mCurrencyCode = a})

-- | Number of nano (10^-9) units of the amount. The value must be between
-- -999,999,999 and +999,999,999 inclusive. If \`units\` is positive,
-- \`nanos\` must be positive or zero. If \`units\` is zero, \`nanos\` can
-- be positive, zero, or negative. If \`units\` is negative, \`nanos\` must
-- be negative or zero. For example $-1.75 is represented as \`units\`=-1
-- and \`nanos\`=-750,000,000.
mNanos :: Lens' Money (Maybe Int32)
mNanos
  = lens _mNanos (\ s a -> s{_mNanos = a}) .
      mapping _Coerce

-- | The whole units of the amount. For example if \`currencyCode\` is
-- \`\"USD\"\`, then 1 unit is one US dollar.
mUnits :: Lens' Money (Maybe Int64)
mUnits
  = lens _mUnits (\ s a -> s{_mUnits = a}) .
      mapping _Coerce

instance FromJSON Money where
        parseJSON
          = withObject "Money"
              (\ o ->
                 Money' <$>
                   (o .:? "currencyCode") <*> (o .:? "nanos") <*>
                     (o .:? "units"))

instance ToJSON Money where
        toJSON Money'{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _mCurrencyCode,
                  ("nanos" .=) <$> _mNanos, ("units" .=) <$> _mUnits])

-- | Represents the category hierarchy of a SKU.
--
-- /See:/ 'category' smart constructor.
data Category =
  Category'
    { _cResourceFamily :: !(Maybe Text)
    , _cUsageType :: !(Maybe Text)
    , _cServiceDisplayName :: !(Maybe Text)
    , _cResourceGroup :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Category' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cResourceFamily'
--
-- * 'cUsageType'
--
-- * 'cServiceDisplayName'
--
-- * 'cResourceGroup'
category
    :: Category
category =
  Category'
    { _cResourceFamily = Nothing
    , _cUsageType = Nothing
    , _cServiceDisplayName = Nothing
    , _cResourceGroup = Nothing
    }


-- | The type of product the SKU refers to. Example: \"Compute\",
-- \"Storage\", \"Network\", \"ApplicationServices\" etc.
cResourceFamily :: Lens' Category (Maybe Text)
cResourceFamily
  = lens _cResourceFamily
      (\ s a -> s{_cResourceFamily = a})

-- | Represents how the SKU is consumed. Example: \"OnDemand\",
-- \"Preemptible\", \"Commit1Mo\", \"Commit1Yr\" etc.
cUsageType :: Lens' Category (Maybe Text)
cUsageType
  = lens _cUsageType (\ s a -> s{_cUsageType = a})

-- | The display name of the service this SKU belongs to.
cServiceDisplayName :: Lens' Category (Maybe Text)
cServiceDisplayName
  = lens _cServiceDisplayName
      (\ s a -> s{_cServiceDisplayName = a})

-- | A group classification for related SKUs. Example: \"RAM\", \"GPU\",
-- \"Prediction\", \"Ops\", \"GoogleEgress\" etc.
cResourceGroup :: Lens' Category (Maybe Text)
cResourceGroup
  = lens _cResourceGroup
      (\ s a -> s{_cResourceGroup = a})

instance FromJSON Category where
        parseJSON
          = withObject "Category"
              (\ o ->
                 Category' <$>
                   (o .:? "resourceFamily") <*> (o .:? "usageType") <*>
                     (o .:? "serviceDisplayName")
                     <*> (o .:? "resourceGroup"))

instance ToJSON Category where
        toJSON Category'{..}
          = object
              (catMaybes
                 [("resourceFamily" .=) <$> _cResourceFamily,
                  ("usageType" .=) <$> _cUsageType,
                  ("serviceDisplayName" .=) <$> _cServiceDisplayName,
                  ("resourceGroup" .=) <$> _cResourceGroup])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
data SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprUpdateMask :: !(Maybe GFieldMask)
    , _siprPolicy :: !(Maybe Policy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprUpdateMask'
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest =
  SetIAMPolicyRequest' {_siprUpdateMask = Nothing, _siprPolicy = Nothing}


-- | OPTIONAL: A FieldMask specifying which fields of the policy to modify.
-- Only the fields in the mask will be modified. If no mask is provided,
-- the following default mask is used: \`paths: \"bindings, etag\"\`
siprUpdateMask :: Lens' SetIAMPolicyRequest (Maybe GFieldMask)
siprUpdateMask
  = lens _siprUpdateMask
      (\ s a -> s{_siprUpdateMask = a})

-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
siprPolicy :: Lens' SetIAMPolicyRequest (Maybe Policy)
siprPolicy
  = lens _siprPolicy (\ s a -> s{_siprPolicy = a})

instance FromJSON SetIAMPolicyRequest where
        parseJSON
          = withObject "SetIAMPolicyRequest"
              (\ o ->
                 SetIAMPolicyRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _siprUpdateMask,
                  ("policy" .=) <$> _siprPolicy])

-- | Request message for \`ListProjectBillingInfoResponse\`.
--
-- /See:/ 'listProjectBillingInfoResponse' smart constructor.
data ListProjectBillingInfoResponse =
  ListProjectBillingInfoResponse'
    { _lpbirNextPageToken :: !(Maybe Text)
    , _lpbirProjectBillingInfo :: !(Maybe [ProjectBillingInfo])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListProjectBillingInfoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpbirNextPageToken'
--
-- * 'lpbirProjectBillingInfo'
listProjectBillingInfoResponse
    :: ListProjectBillingInfoResponse
listProjectBillingInfoResponse =
  ListProjectBillingInfoResponse'
    {_lpbirNextPageToken = Nothing, _lpbirProjectBillingInfo = Nothing}


-- | A token to retrieve the next page of results. To retrieve the next page,
-- call \`ListProjectBillingInfo\` again with the \`page_token\` field set
-- to this value. This field is empty if there are no more results to
-- retrieve.
lpbirNextPageToken :: Lens' ListProjectBillingInfoResponse (Maybe Text)
lpbirNextPageToken
  = lens _lpbirNextPageToken
      (\ s a -> s{_lpbirNextPageToken = a})

-- | A list of \`ProjectBillingInfo\` resources representing the projects
-- associated with the billing account.
lpbirProjectBillingInfo :: Lens' ListProjectBillingInfoResponse [ProjectBillingInfo]
lpbirProjectBillingInfo
  = lens _lpbirProjectBillingInfo
      (\ s a -> s{_lpbirProjectBillingInfo = a})
      . _Default
      . _Coerce

instance FromJSON ListProjectBillingInfoResponse
         where
        parseJSON
          = withObject "ListProjectBillingInfoResponse"
              (\ o ->
                 ListProjectBillingInfoResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "projectBillingInfo" .!= mempty))

instance ToJSON ListProjectBillingInfoResponse where
        toJSON ListProjectBillingInfoResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lpbirNextPageToken,
                  ("projectBillingInfo" .=) <$>
                    _lpbirProjectBillingInfo])

-- | Response message for \`ListSkus\`.
--
-- /See:/ 'listSKUsResponse' smart constructor.
data ListSKUsResponse =
  ListSKUsResponse'
    { _lskurNextPageToken :: !(Maybe Text)
    , _lskurSKUs :: !(Maybe [SKU])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSKUsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lskurNextPageToken'
--
-- * 'lskurSKUs'
listSKUsResponse
    :: ListSKUsResponse
listSKUsResponse =
  ListSKUsResponse' {_lskurNextPageToken = Nothing, _lskurSKUs = Nothing}


-- | A token to retrieve the next page of results. To retrieve the next page,
-- call \`ListSkus\` again with the \`page_token\` field set to this value.
-- This field is empty if there are no more results to retrieve.
lskurNextPageToken :: Lens' ListSKUsResponse (Maybe Text)
lskurNextPageToken
  = lens _lskurNextPageToken
      (\ s a -> s{_lskurNextPageToken = a})

-- | The list of public SKUs of the given service.
lskurSKUs :: Lens' ListSKUsResponse [SKU]
lskurSKUs
  = lens _lskurSKUs (\ s a -> s{_lskurSKUs = a}) .
      _Default
      . _Coerce

instance FromJSON ListSKUsResponse where
        parseJSON
          = withObject "ListSKUsResponse"
              (\ o ->
                 ListSKUsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "skus" .!= mempty))

instance ToJSON ListSKUsResponse where
        toJSON ListSKUsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lskurNextPageToken,
                  ("skus" .=) <$> _lskurSKUs])

-- | Expresses a mathematical pricing formula. For Example:- \`usage_unit:
-- GBy\` \`tiered_rates:\` \`[start_usage_amount: 20, unit_price: $10]\`
-- \`[start_usage_amount: 100, unit_price: $5]\` The above expresses a
-- pricing formula where the first 20GB is free, the next 80GB is priced at
-- $10 per GB followed by $5 per GB for additional usage.
--
-- /See:/ 'pricingExpression' smart constructor.
data PricingExpression =
  PricingExpression'
    { _peUsageUnitDescription :: !(Maybe Text)
    , _peBaseUnit :: !(Maybe Text)
    , _peBaseUnitConversionFactor :: !(Maybe (Textual Double))
    , _peDisplayQuantity :: !(Maybe (Textual Double))
    , _peTieredRates :: !(Maybe [TierRate])
    , _peBaseUnitDescription :: !(Maybe Text)
    , _peUsageUnit :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PricingExpression' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peUsageUnitDescription'
--
-- * 'peBaseUnit'
--
-- * 'peBaseUnitConversionFactor'
--
-- * 'peDisplayQuantity'
--
-- * 'peTieredRates'
--
-- * 'peBaseUnitDescription'
--
-- * 'peUsageUnit'
pricingExpression
    :: PricingExpression
pricingExpression =
  PricingExpression'
    { _peUsageUnitDescription = Nothing
    , _peBaseUnit = Nothing
    , _peBaseUnitConversionFactor = Nothing
    , _peDisplayQuantity = Nothing
    , _peTieredRates = Nothing
    , _peBaseUnitDescription = Nothing
    , _peUsageUnit = Nothing
    }


-- | The unit of usage in human readable form. Example: \"gibi byte\".
peUsageUnitDescription :: Lens' PricingExpression (Maybe Text)
peUsageUnitDescription
  = lens _peUsageUnitDescription
      (\ s a -> s{_peUsageUnitDescription = a})

-- | The base unit for the SKU which is the unit used in usage exports.
-- Example: \"By\"
peBaseUnit :: Lens' PricingExpression (Maybe Text)
peBaseUnit
  = lens _peBaseUnit (\ s a -> s{_peBaseUnit = a})

-- | Conversion factor for converting from price per usage_unit to price per
-- base_unit, and start_usage_amount to start_usage_amount in base_unit.
-- unit_price \/ base_unit_conversion_factor = price per base_unit.
-- start_usage_amount * base_unit_conversion_factor = start_usage_amount in
-- base_unit.
peBaseUnitConversionFactor :: Lens' PricingExpression (Maybe Double)
peBaseUnitConversionFactor
  = lens _peBaseUnitConversionFactor
      (\ s a -> s{_peBaseUnitConversionFactor = a})
      . mapping _Coerce

-- | The recommended quantity of units for displaying pricing info. When
-- displaying pricing info it is recommended to display: (unit_price *
-- display_quantity) per display_quantity usage_unit. This field does not
-- affect the pricing formula and is for display purposes only. Example: If
-- the unit_price is \"0.0001 USD\", the usage_unit is \"GB\" and the
-- display_quantity is \"1000\" then the recommended way of displaying the
-- pricing info is \"0.10 USD per 1000 GB\"
peDisplayQuantity :: Lens' PricingExpression (Maybe Double)
peDisplayQuantity
  = lens _peDisplayQuantity
      (\ s a -> s{_peDisplayQuantity = a})
      . mapping _Coerce

-- | The list of tiered rates for this pricing. The total cost is computed by
-- applying each of the tiered rates on usage. This repeated list is sorted
-- by ascending order of start_usage_amount.
peTieredRates :: Lens' PricingExpression [TierRate]
peTieredRates
  = lens _peTieredRates
      (\ s a -> s{_peTieredRates = a})
      . _Default
      . _Coerce

-- | The base unit in human readable form. Example: \"byte\".
peBaseUnitDescription :: Lens' PricingExpression (Maybe Text)
peBaseUnitDescription
  = lens _peBaseUnitDescription
      (\ s a -> s{_peBaseUnitDescription = a})

-- | The short hand for unit of usage this pricing is specified in. Example:
-- usage_unit of \"GiBy\" means that usage is specified in \"Gibi Byte\".
peUsageUnit :: Lens' PricingExpression (Maybe Text)
peUsageUnit
  = lens _peUsageUnit (\ s a -> s{_peUsageUnit = a})

instance FromJSON PricingExpression where
        parseJSON
          = withObject "PricingExpression"
              (\ o ->
                 PricingExpression' <$>
                   (o .:? "usageUnitDescription") <*> (o .:? "baseUnit")
                     <*> (o .:? "baseUnitConversionFactor")
                     <*> (o .:? "displayQuantity")
                     <*> (o .:? "tieredRates" .!= mempty)
                     <*> (o .:? "baseUnitDescription")
                     <*> (o .:? "usageUnit"))

instance ToJSON PricingExpression where
        toJSON PricingExpression'{..}
          = object
              (catMaybes
                 [("usageUnitDescription" .=) <$>
                    _peUsageUnitDescription,
                  ("baseUnit" .=) <$> _peBaseUnit,
                  ("baseUnitConversionFactor" .=) <$>
                    _peBaseUnitConversionFactor,
                  ("displayQuantity" .=) <$> _peDisplayQuantity,
                  ("tieredRates" .=) <$> _peTieredRates,
                  ("baseUnitDescription" .=) <$>
                    _peBaseUnitDescription,
                  ("usageUnit" .=) <$> _peUsageUnit])

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest =
  TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
  TestIAMPermissionsRequest' {_tiprPermissions = Nothing}


-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see [IAM
-- Overview](https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
tiprPermissions :: Lens' TestIAMPermissionsRequest [Text]
tiprPermissions
  = lens _tiprPermissions
      (\ s a -> s{_tiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsRequest where
        parseJSON
          = withObject "TestIAMPermissionsRequest"
              (\ o ->
                 TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest'{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

-- | Represents the aggregation level and interval for pricing of a single
-- SKU.
--
-- /See:/ 'aggregationInfo' smart constructor.
data AggregationInfo =
  AggregationInfo'
    { _aiAggregationInterval :: !(Maybe AggregationInfoAggregationInterval)
    , _aiAggregationCount :: !(Maybe (Textual Int32))
    , _aiAggregationLevel :: !(Maybe AggregationInfoAggregationLevel)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AggregationInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiAggregationInterval'
--
-- * 'aiAggregationCount'
--
-- * 'aiAggregationLevel'
aggregationInfo
    :: AggregationInfo
aggregationInfo =
  AggregationInfo'
    { _aiAggregationInterval = Nothing
    , _aiAggregationCount = Nothing
    , _aiAggregationLevel = Nothing
    }


aiAggregationInterval :: Lens' AggregationInfo (Maybe AggregationInfoAggregationInterval)
aiAggregationInterval
  = lens _aiAggregationInterval
      (\ s a -> s{_aiAggregationInterval = a})

-- | The number of intervals to aggregate over. Example: If aggregation_level
-- is \"DAILY\" and aggregation_count is 14, aggregation will be over 14
-- days.
aiAggregationCount :: Lens' AggregationInfo (Maybe Int32)
aiAggregationCount
  = lens _aiAggregationCount
      (\ s a -> s{_aiAggregationCount = a})
      . mapping _Coerce

aiAggregationLevel :: Lens' AggregationInfo (Maybe AggregationInfoAggregationLevel)
aiAggregationLevel
  = lens _aiAggregationLevel
      (\ s a -> s{_aiAggregationLevel = a})

instance FromJSON AggregationInfo where
        parseJSON
          = withObject "AggregationInfo"
              (\ o ->
                 AggregationInfo' <$>
                   (o .:? "aggregationInterval") <*>
                     (o .:? "aggregationCount")
                     <*> (o .:? "aggregationLevel"))

instance ToJSON AggregationInfo where
        toJSON AggregationInfo'{..}
          = object
              (catMaybes
                 [("aggregationInterval" .=) <$>
                    _aiAggregationInterval,
                  ("aggregationCount" .=) <$> _aiAggregationCount,
                  ("aggregationLevel" .=) <$> _aiAggregationLevel])

-- | Encapsulates a single SKU in Google Cloud Platform
--
-- /See:/ 'sKU' smart constructor.
data SKU =
  SKU'
    { _skukGeoTaxonomy :: !(Maybe GeoTaxonomy)
    , _skukCategory :: !(Maybe Category)
    , _skukSKUId :: !(Maybe Text)
    , _skukServiceProviderName :: !(Maybe Text)
    , _skukServiceRegions :: !(Maybe [Text])
    , _skukName :: !(Maybe Text)
    , _skukPricingInfo :: !(Maybe [PricingInfo])
    , _skukDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SKU' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'skukGeoTaxonomy'
--
-- * 'skukCategory'
--
-- * 'skukSKUId'
--
-- * 'skukServiceProviderName'
--
-- * 'skukServiceRegions'
--
-- * 'skukName'
--
-- * 'skukPricingInfo'
--
-- * 'skukDescription'
sKU
    :: SKU
sKU =
  SKU'
    { _skukGeoTaxonomy = Nothing
    , _skukCategory = Nothing
    , _skukSKUId = Nothing
    , _skukServiceProviderName = Nothing
    , _skukServiceRegions = Nothing
    , _skukName = Nothing
    , _skukPricingInfo = Nothing
    , _skukDescription = Nothing
    }


-- | The geographic taxonomy for this sku.
skukGeoTaxonomy :: Lens' SKU (Maybe GeoTaxonomy)
skukGeoTaxonomy
  = lens _skukGeoTaxonomy
      (\ s a -> s{_skukGeoTaxonomy = a})

-- | The category hierarchy of this SKU, purely for organizational purpose.
skukCategory :: Lens' SKU (Maybe Category)
skukCategory
  = lens _skukCategory (\ s a -> s{_skukCategory = a})

-- | The identifier for the SKU. Example: \"AA95-CD31-42FE\"
skukSKUId :: Lens' SKU (Maybe Text)
skukSKUId
  = lens _skukSKUId (\ s a -> s{_skukSKUId = a})

-- | Identifies the service provider. This is \'Google\' for first party
-- services in Google Cloud Platform.
skukServiceProviderName :: Lens' SKU (Maybe Text)
skukServiceProviderName
  = lens _skukServiceProviderName
      (\ s a -> s{_skukServiceProviderName = a})

-- | List of service regions this SKU is offered at. Example: \"asia-east1\"
-- Service regions can be found at
-- https:\/\/cloud.google.com\/about\/locations\/
skukServiceRegions :: Lens' SKU [Text]
skukServiceRegions
  = lens _skukServiceRegions
      (\ s a -> s{_skukServiceRegions = a})
      . _Default
      . _Coerce

-- | The resource name for the SKU. Example:
-- \"services\/DA34-426B-A397\/skus\/AA95-CD31-42FE\"
skukName :: Lens' SKU (Maybe Text)
skukName = lens _skukName (\ s a -> s{_skukName = a})

-- | A timeline of pricing info for this SKU in chronological order.
skukPricingInfo :: Lens' SKU [PricingInfo]
skukPricingInfo
  = lens _skukPricingInfo
      (\ s a -> s{_skukPricingInfo = a})
      . _Default
      . _Coerce

-- | A human readable description of the SKU, has a maximum length of 256
-- characters.
skukDescription :: Lens' SKU (Maybe Text)
skukDescription
  = lens _skukDescription
      (\ s a -> s{_skukDescription = a})

instance FromJSON SKU where
        parseJSON
          = withObject "SKU"
              (\ o ->
                 SKU' <$>
                   (o .:? "geoTaxonomy") <*> (o .:? "category") <*>
                     (o .:? "skuId")
                     <*> (o .:? "serviceProviderName")
                     <*> (o .:? "serviceRegions" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "pricingInfo" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON SKU where
        toJSON SKU'{..}
          = object
              (catMaybes
                 [("geoTaxonomy" .=) <$> _skukGeoTaxonomy,
                  ("category" .=) <$> _skukCategory,
                  ("skuId" .=) <$> _skukSKUId,
                  ("serviceProviderName" .=) <$>
                    _skukServiceProviderName,
                  ("serviceRegions" .=) <$> _skukServiceRegions,
                  ("name" .=) <$> _skukName,
                  ("pricingInfo" .=) <$> _skukPricingInfo,
                  ("description" .=) <$> _skukDescription])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse =
  TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
  TestIAMPermissionsResponse' {_tiamprPermissions = Nothing}


-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
tiamprPermissions :: Lens' TestIAMPermissionsResponse [Text]
tiamprPermissions
  = lens _tiamprPermissions
      (\ s a -> s{_tiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsResponse where
        parseJSON
          = withObject "TestIAMPermissionsResponse"
              (\ o ->
                 TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _tiamprPermissions])

-- | An Identity and Access Management (IAM) policy, which specifies access
-- controls for Google Cloud resources. A \`Policy\` is a collection of
-- \`bindings\`. A \`binding\` binds one or more \`members\` to a single
-- \`role\`. Members can be user accounts, service accounts, Google groups,
-- and domains (such as G Suite). A \`role\` is a named list of
-- permissions; each \`role\` can be an IAM predefined role or a
-- user-created custom role. For some types of Google Cloud resources, a
-- \`binding\` can also specify a \`condition\`, which is a logical
-- expression that allows access to a resource only if the expression
-- evaluates to \`true\`. A condition can add constraints based on
-- attributes of the request, the resource, or both. To learn which
-- resources support conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
-- **JSON example:** { \"bindings\": [ { \"role\":
-- \"roles\/resourcemanager.organizationAdmin\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-project-id\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [
-- \"user:eve\'example.com\" ], \"condition\": { \"title\": \"expirable
-- access\", \"description\": \"Does not grant access after Sep 2020\",
-- \"expression\": \"request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\":
-- \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: -
-- members: - user:mike\'example.com - group:admins\'example.com -
-- domain:google.com -
-- serviceAccount:my-project-id\'appspot.gserviceaccount.com role:
-- roles\/resourcemanager.organizationAdmin - members: -
-- user:eve\'example.com role: roles\/resourcemanager.organizationViewer
-- condition: title: expirable access description: Does not grant access
-- after Sep 2020 expression: request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\') - etag: BwWWja0YfJA= - version:
-- 3 For a description of IAM and its features, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/docs\/).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pAuditConfigs :: !(Maybe [AuditConfig])
    , _pEtag :: !(Maybe Bytes)
    , _pVersion :: !(Maybe (Textual Int32))
    , _pBindings :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAuditConfigs'
--
-- * 'pEtag'
--
-- * 'pVersion'
--
-- * 'pBindings'
policy
    :: Policy
policy =
  Policy'
    { _pAuditConfigs = Nothing
    , _pEtag = Nothing
    , _pVersion = Nothing
    , _pBindings = Nothing
    }


-- | Specifies cloud audit logging configuration for this policy.
pAuditConfigs :: Lens' Policy [AuditConfig]
pAuditConfigs
  = lens _pAuditConfigs
      (\ s a -> s{_pAuditConfigs = a})
      . _Default
      . _Coerce

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. **Important:** If you use IAM Conditions, you
-- must include the \`etag\` field whenever you call \`setIamPolicy\`. If
-- you omit this field, then IAM allows you to overwrite a version \`3\`
-- policy with a version \`1\` policy, and all of the conditions in the
-- version \`3\` policy are lost.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Specifies the format of the policy. Valid values are \`0\`, \`1\`, and
-- \`3\`. Requests that specify an invalid value are rejected. Any
-- operation that affects conditional role bindings must specify version
-- \`3\`. This requirement applies to the following operations: * Getting a
-- policy that includes a conditional role binding * Adding a conditional
-- role binding to a policy * Changing a conditional role binding in a
-- policy * Removing any role binding, with or without a condition, from a
-- policy that includes conditions **Important:** If you use IAM
-- Conditions, you must include the \`etag\` field whenever you call
-- \`setIamPolicy\`. If you omit this field, then IAM allows you to
-- overwrite a version \`3\` policy with a version \`1\` policy, and all of
-- the conditions in the version \`3\` policy are lost. If a policy does
-- not include any conditions, operations on that policy may specify any
-- valid version or leave the field unset. To learn which resources support
-- conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Optionally, may specify
-- a \`condition\` that determines how and when the \`bindings\` are
-- applied. Each of the \`bindings\` must contain at least one member.
pBindings :: Lens' Policy [Binding]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "auditConfigs" .!= mempty) <*> (o .:? "etag")
                     <*> (o .:? "version")
                     <*> (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("auditConfigs" .=) <$> _pAuditConfigs,
                  ("etag" .=) <$> _pEtag, ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

-- | Response message for \`ListBillingAccounts\`.
--
-- /See:/ 'listBillingAccountsResponse' smart constructor.
data ListBillingAccountsResponse =
  ListBillingAccountsResponse'
    { _lbarNextPageToken :: !(Maybe Text)
    , _lbarBillingAccounts :: !(Maybe [BillingAccount])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListBillingAccountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbarNextPageToken'
--
-- * 'lbarBillingAccounts'
listBillingAccountsResponse
    :: ListBillingAccountsResponse
listBillingAccountsResponse =
  ListBillingAccountsResponse'
    {_lbarNextPageToken = Nothing, _lbarBillingAccounts = Nothing}


-- | A token to retrieve the next page of results. To retrieve the next page,
-- call \`ListBillingAccounts\` again with the \`page_token\` field set to
-- this value. This field is empty if there are no more results to
-- retrieve.
lbarNextPageToken :: Lens' ListBillingAccountsResponse (Maybe Text)
lbarNextPageToken
  = lens _lbarNextPageToken
      (\ s a -> s{_lbarNextPageToken = a})

-- | A list of billing accounts.
lbarBillingAccounts :: Lens' ListBillingAccountsResponse [BillingAccount]
lbarBillingAccounts
  = lens _lbarBillingAccounts
      (\ s a -> s{_lbarBillingAccounts = a})
      . _Default
      . _Coerce

instance FromJSON ListBillingAccountsResponse where
        parseJSON
          = withObject "ListBillingAccountsResponse"
              (\ o ->
                 ListBillingAccountsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "billingAccounts" .!= mempty))

instance ToJSON ListBillingAccountsResponse where
        toJSON ListBillingAccountsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lbarNextPageToken,
                  ("billingAccounts" .=) <$> _lbarBillingAccounts])

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting jose\'example.com from DATA_READ logging.
--
-- /See:/ 'auditLogConfig' smart constructor.
data AuditLogConfig =
  AuditLogConfig'
    { _alcLogType :: !(Maybe AuditLogConfigLogType)
    , _alcExemptedMembers :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alcLogType'
--
-- * 'alcExemptedMembers'
auditLogConfig
    :: AuditLogConfig
auditLogConfig =
  AuditLogConfig' {_alcLogType = Nothing, _alcExemptedMembers = Nothing}


-- | The log type that this config enables.
alcLogType :: Lens' AuditLogConfig (Maybe AuditLogConfigLogType)
alcLogType
  = lens _alcLogType (\ s a -> s{_alcLogType = a})

-- | Specifies the identities that do not cause logging for this type of
-- permission. Follows the same format of Binding.members.
alcExemptedMembers :: Lens' AuditLogConfig [Text]
alcExemptedMembers
  = lens _alcExemptedMembers
      (\ s a -> s{_alcExemptedMembers = a})
      . _Default
      . _Coerce

instance FromJSON AuditLogConfig where
        parseJSON
          = withObject "AuditLogConfig"
              (\ o ->
                 AuditLogConfig' <$>
                   (o .:? "logType") <*>
                     (o .:? "exemptedMembers" .!= mempty))

instance ToJSON AuditLogConfig where
        toJSON AuditLogConfig'{..}
          = object
              (catMaybes
                 [("logType" .=) <$> _alcLogType,
                  ("exemptedMembers" .=) <$> _alcExemptedMembers])

-- | Represents the pricing information for a SKU at a single point of time.
--
-- /See:/ 'pricingInfo' smart constructor.
data PricingInfo =
  PricingInfo'
    { _piSummary :: !(Maybe Text)
    , _piAggregationInfo :: !(Maybe AggregationInfo)
    , _piPricingExpression :: !(Maybe PricingExpression)
    , _piCurrencyConversionRate :: !(Maybe (Textual Double))
    , _piEffectiveTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PricingInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piSummary'
--
-- * 'piAggregationInfo'
--
-- * 'piPricingExpression'
--
-- * 'piCurrencyConversionRate'
--
-- * 'piEffectiveTime'
pricingInfo
    :: PricingInfo
pricingInfo =
  PricingInfo'
    { _piSummary = Nothing
    , _piAggregationInfo = Nothing
    , _piPricingExpression = Nothing
    , _piCurrencyConversionRate = Nothing
    , _piEffectiveTime = Nothing
    }


-- | An optional human readable summary of the pricing information, has a
-- maximum length of 256 characters.
piSummary :: Lens' PricingInfo (Maybe Text)
piSummary
  = lens _piSummary (\ s a -> s{_piSummary = a})

-- | Aggregation Info. This can be left unspecified if the pricing expression
-- doesn\'t require aggregation.
piAggregationInfo :: Lens' PricingInfo (Maybe AggregationInfo)
piAggregationInfo
  = lens _piAggregationInfo
      (\ s a -> s{_piAggregationInfo = a})

-- | Expresses the pricing formula. See \`PricingExpression\` for an example.
piPricingExpression :: Lens' PricingInfo (Maybe PricingExpression)
piPricingExpression
  = lens _piPricingExpression
      (\ s a -> s{_piPricingExpression = a})

-- | Conversion rate used for currency conversion, from USD to the currency
-- specified in the request. This includes any surcharge collected for
-- billing in non USD currency. If a currency is not specified in the
-- request this defaults to 1.0. Example: USD * currency_conversion_rate =
-- JPY
piCurrencyConversionRate :: Lens' PricingInfo (Maybe Double)
piCurrencyConversionRate
  = lens _piCurrencyConversionRate
      (\ s a -> s{_piCurrencyConversionRate = a})
      . mapping _Coerce

-- | The timestamp from which this pricing was effective within the requested
-- time range. This is guaranteed to be greater than or equal to the
-- start_time field in the request and less than the end_time field in the
-- request. If a time range was not specified in the request this field
-- will be equivalent to a time within the last 12 hours, indicating the
-- latest pricing info.
piEffectiveTime :: Lens' PricingInfo (Maybe UTCTime)
piEffectiveTime
  = lens _piEffectiveTime
      (\ s a -> s{_piEffectiveTime = a})
      . mapping _DateTime

instance FromJSON PricingInfo where
        parseJSON
          = withObject "PricingInfo"
              (\ o ->
                 PricingInfo' <$>
                   (o .:? "summary") <*> (o .:? "aggregationInfo") <*>
                     (o .:? "pricingExpression")
                     <*> (o .:? "currencyConversionRate")
                     <*> (o .:? "effectiveTime"))

instance ToJSON PricingInfo where
        toJSON PricingInfo'{..}
          = object
              (catMaybes
                 [("summary" .=) <$> _piSummary,
                  ("aggregationInfo" .=) <$> _piAggregationInfo,
                  ("pricingExpression" .=) <$> _piPricingExpression,
                  ("currencyConversionRate" .=) <$>
                    _piCurrencyConversionRate,
                  ("effectiveTime" .=) <$> _piEffectiveTime])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers :: !(Maybe [Text])
    , _bRole :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
--
-- * 'bCondition'
binding
    :: Binding
binding =
  Binding' {_bMembers = Nothing, _bRole = Nothing, _bCondition = Nothing}


-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'example.com\` . * \`serviceAccount:{emailid}\`: An email
-- address that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`deleted:user:{emailid}?uid={uniqueid}\`: An
-- email address (plus unique identifier) representing a user that has been
-- recently deleted. For example,
-- \`alice\'example.com?uid=123456789012345678901\`. If the user is
-- recovered, this value reverts to \`user:{emailid}\` and the recovered
-- user retains the role in the binding. *
-- \`deleted:serviceAccount:{emailid}?uid={uniqueid}\`: An email address
-- (plus unique identifier) representing a service account that has been
-- recently deleted. For example,
-- \`my-other-app\'appspot.gserviceaccount.com?uid=123456789012345678901\`.
-- If the service account is undeleted, this value reverts to
-- \`serviceAccount:{emailid}\` and the undeleted service account retains
-- the role in the binding. * \`deleted:group:{emailid}?uid={uniqueid}\`:
-- An email address (plus unique identifier) representing a Google group
-- that has been recently deleted. For example,
-- \`admins\'example.com?uid=123456789012345678901\`. If the group is
-- recovered, this value reverts to \`group:{emailid}\` and the recovered
-- group retains the role in the binding. * \`domain:{domain}\`: The G
-- Suite domain (primary) that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | The condition that is associated with this binding. If the condition
-- evaluates to \`true\`, then this binding applies to the current request.
-- If the condition evaluates to \`false\`, then this binding does not
-- apply to the current request. However, a different role binding might
-- grant the same role to one or more of the members in this binding. To
-- learn which resources support conditions in their IAM policies, see the
-- [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
bCondition :: Lens' Binding (Maybe Expr)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole,
                  ("condition" .=) <$> _bCondition])
