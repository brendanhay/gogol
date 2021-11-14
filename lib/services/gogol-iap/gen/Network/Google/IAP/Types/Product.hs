{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.IAP.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.IAP.Types.Product where

import Network.Google.IAP.Types.Sum
import Network.Google.Prelude

-- | The service defined labels of the resource on which the conditions will
-- be evaluated. The semantics - including the key names - are vague to
-- IAM. If the effective condition has a reference to a
-- \`resource.labels[foo]\` construct, IAM consults with this map to
-- retrieve the values associated with \`foo\` key for Conditions
-- evaluation. If the provided key is not found in the labels map, the
-- condition would evaluate to false. This field is in limited use. If your
-- intended use case is not expected to express resource.labels attribute
-- in IAM Conditions, leave this field empty. Before planning on using this
-- attribute please: * Read go\/iam-conditions-labels-comm and ensure your
-- service can meet the data availability and management requirements. *
-- Talk to iam-conditions-eng\' about your use case.
--
-- /See:/ 'resourceLabels' smart constructor.
newtype ResourceLabels =
  ResourceLabels'
    { _rlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlAddtional'
resourceLabels
    :: HashMap Text Text -- ^ 'rlAddtional'
    -> ResourceLabels
resourceLabels pRlAddtional_ =
  ResourceLabels' {_rlAddtional = _Coerce # pRlAddtional_}


rlAddtional :: Lens' ResourceLabels (HashMap Text Text)
rlAddtional
  = lens _rlAddtional (\ s a -> s{_rlAddtional = a}) .
      _Coerce

instance FromJSON ResourceLabels where
        parseJSON
          = withObject "ResourceLabels"
              (\ o -> ResourceLabels' <$> (parseJSONObject o))

instance ToJSON ResourceLabels where
        toJSON = toJSON . _rlAddtional

-- | PolicyDelegationConfig allows google-internal teams to use IAP for apps
-- hosted in a tenant project. Using these settings, the app can delegate
-- permission check to happen against the linked customer project. This is
-- only ever supposed to be used by google internal teams, hence the
-- restriction on the proto.
--
-- /See:/ 'policyDelegationSettings' smart constructor.
data PolicyDelegationSettings =
  PolicyDelegationSettings'
    { _pdsIAMServiceName :: !(Maybe Text)
    , _pdsPolicyName :: !(Maybe PolicyName)
    , _pdsIAMPermission :: !(Maybe Text)
    , _pdsResource :: !(Maybe Resource)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PolicyDelegationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdsIAMServiceName'
--
-- * 'pdsPolicyName'
--
-- * 'pdsIAMPermission'
--
-- * 'pdsResource'
policyDelegationSettings
    :: PolicyDelegationSettings
policyDelegationSettings =
  PolicyDelegationSettings'
    { _pdsIAMServiceName = Nothing
    , _pdsPolicyName = Nothing
    , _pdsIAMPermission = Nothing
    , _pdsResource = Nothing
    }


-- | The DNS name of the service (e.g. \"resourcemanager.googleapis.com\").
-- This should be the domain name part of the full resource names (see
-- https:\/\/aip.dev\/122#full-resource-names), which is usually the same
-- as IamServiceSpec.service of the service where the resource type is
-- defined.
pdsIAMServiceName :: Lens' PolicyDelegationSettings (Maybe Text)
pdsIAMServiceName
  = lens _pdsIAMServiceName
      (\ s a -> s{_pdsIAMServiceName = a})

-- | Policy name to be checked
pdsPolicyName :: Lens' PolicyDelegationSettings (Maybe PolicyName)
pdsPolicyName
  = lens _pdsPolicyName
      (\ s a -> s{_pdsPolicyName = a})

-- | Permission to check in IAM.
pdsIAMPermission :: Lens' PolicyDelegationSettings (Maybe Text)
pdsIAMPermission
  = lens _pdsIAMPermission
      (\ s a -> s{_pdsIAMPermission = a})

-- | IAM resource to check permission on
pdsResource :: Lens' PolicyDelegationSettings (Maybe Resource)
pdsResource
  = lens _pdsResource (\ s a -> s{_pdsResource = a})

instance FromJSON PolicyDelegationSettings where
        parseJSON
          = withObject "PolicyDelegationSettings"
              (\ o ->
                 PolicyDelegationSettings' <$>
                   (o .:? "iamServiceName") <*> (o .:? "policyName") <*>
                     (o .:? "iamPermission")
                     <*> (o .:? "resource"))

instance ToJSON PolicyDelegationSettings where
        toJSON PolicyDelegationSettings'{..}
          = object
              (catMaybes
                 [("iamServiceName" .=) <$> _pdsIAMServiceName,
                  ("policyName" .=) <$> _pdsPolicyName,
                  ("iamPermission" .=) <$> _pdsIAMPermission,
                  ("resource" .=) <$> _pdsResource])

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

-- | An internal name for an IAM policy, based on the resource to which the
-- policy applies. Not to be confused with a resource\'s external full
-- resource name. For more information on this distinction, see
-- go\/iam-full-resource-names.
--
-- /See:/ 'policyName' smart constructor.
data PolicyName =
  PolicyName'
    { _pnId :: !(Maybe Text)
    , _pnRegion :: !(Maybe Text)
    , _pnType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PolicyName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnId'
--
-- * 'pnRegion'
--
-- * 'pnType'
policyName
    :: PolicyName
policyName =
  PolicyName' {_pnId = Nothing, _pnRegion = Nothing, _pnType = Nothing}


-- | Identifies an instance of the type. ID format varies by type. The ID
-- format is defined in the IAM .service file that defines the type, either
-- in path_mapping or in a comment.
pnId :: Lens' PolicyName (Maybe Text)
pnId = lens _pnId (\ s a -> s{_pnId = a})

-- | For Cloud IAM: The location of the Policy. Must be empty or \"global\"
-- for Policies owned by global IAM. Must name a region from
-- prodspec\/cloud-iam-cloudspec for Regional IAM Policies, see
-- go\/iam-faq#where-is-iam-currently-deployed. For Local IAM: This field
-- should be set to \"local\".
pnRegion :: Lens' PolicyName (Maybe Text)
pnRegion = lens _pnRegion (\ s a -> s{_pnRegion = a})

-- | Resource type. Types are defined in IAM\'s .service files. Valid values
-- for type might be \'gce\', \'gcs\', \'project\', \'account\' etc.
pnType :: Lens' PolicyName (Maybe Text)
pnType = lens _pnType (\ s a -> s{_pnType = a})

instance FromJSON PolicyName where
        parseJSON
          = withObject "PolicyName"
              (\ o ->
                 PolicyName' <$>
                   (o .:? "id") <*> (o .:? "region") <*> (o .:? "type"))

instance ToJSON PolicyName where
        toJSON PolicyName'{..}
          = object
              (catMaybes
                 [("id" .=) <$> _pnId, ("region" .=) <$> _pnRegion,
                  ("type" .=) <$> _pnType])

-- | Wrapper over application specific settings for IAP.
--
-- /See:/ 'applicationSettings' smart constructor.
data ApplicationSettings =
  ApplicationSettings'
    { _asCookieDomain :: !(Maybe Text)
    , _asAccessDeniedPageSettings :: !(Maybe AccessDeniedPageSettings)
    , _asCsmSettings :: !(Maybe CsmSettings)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApplicationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asCookieDomain'
--
-- * 'asAccessDeniedPageSettings'
--
-- * 'asCsmSettings'
applicationSettings
    :: ApplicationSettings
applicationSettings =
  ApplicationSettings'
    { _asCookieDomain = Nothing
    , _asAccessDeniedPageSettings = Nothing
    , _asCsmSettings = Nothing
    }


-- | The Domain value to set for cookies generated by IAP. This value is not
-- validated by the API, but will be ignored at runtime if invalid.
asCookieDomain :: Lens' ApplicationSettings (Maybe Text)
asCookieDomain
  = lens _asCookieDomain
      (\ s a -> s{_asCookieDomain = a})

-- | Customization for Access Denied page.
asAccessDeniedPageSettings :: Lens' ApplicationSettings (Maybe AccessDeniedPageSettings)
asAccessDeniedPageSettings
  = lens _asAccessDeniedPageSettings
      (\ s a -> s{_asAccessDeniedPageSettings = a})

-- | Settings to configure IAP\'s behavior for a CSM mesh.
asCsmSettings :: Lens' ApplicationSettings (Maybe CsmSettings)
asCsmSettings
  = lens _asCsmSettings
      (\ s a -> s{_asCsmSettings = a})

instance FromJSON ApplicationSettings where
        parseJSON
          = withObject "ApplicationSettings"
              (\ o ->
                 ApplicationSettings' <$>
                   (o .:? "cookieDomain") <*>
                     (o .:? "accessDeniedPageSettings")
                     <*> (o .:? "csmSettings"))

instance ToJSON ApplicationSettings where
        toJSON ApplicationSettings'{..}
          = object
              (catMaybes
                 [("cookieDomain" .=) <$> _asCookieDomain,
                  ("accessDeniedPageSettings" .=) <$>
                    _asAccessDeniedPageSettings,
                  ("csmSettings" .=) <$> _asCsmSettings])

-- | Request message for \`GetIamPolicy\` method.
--
-- /See:/ 'getIAMPolicyRequest' smart constructor.
newtype GetIAMPolicyRequest =
  GetIAMPolicyRequest'
    { _giprOptions :: Maybe GetPolicyOptions
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giprOptions'
getIAMPolicyRequest
    :: GetIAMPolicyRequest
getIAMPolicyRequest = GetIAMPolicyRequest' {_giprOptions = Nothing}


-- | OPTIONAL: A \`GetPolicyOptions\` object for specifying options to
-- \`GetIamPolicy\`.
giprOptions :: Lens' GetIAMPolicyRequest (Maybe GetPolicyOptions)
giprOptions
  = lens _giprOptions (\ s a -> s{_giprOptions = a})

instance FromJSON GetIAMPolicyRequest where
        parseJSON
          = withObject "GetIAMPolicyRequest"
              (\ o -> GetIAMPolicyRequest' <$> (o .:? "options"))

instance ToJSON GetIAMPolicyRequest where
        toJSON GetIAMPolicyRequest'{..}
          = object
              (catMaybes [("options" .=) <$> _giprOptions])

-- | The IAP configurable settings.
--
-- /See:/ 'iapSettings' smart constructor.
data IapSettings =
  IapSettings'
    { _isApplicationSettings :: !(Maybe ApplicationSettings)
    , _isAccessSettings :: !(Maybe AccessSettings)
    , _isName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IapSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isApplicationSettings'
--
-- * 'isAccessSettings'
--
-- * 'isName'
iapSettings
    :: IapSettings
iapSettings =
  IapSettings'
    { _isApplicationSettings = Nothing
    , _isAccessSettings = Nothing
    , _isName = Nothing
    }


-- | Top level wrapper for all application related settings in IAP
isApplicationSettings :: Lens' IapSettings (Maybe ApplicationSettings)
isApplicationSettings
  = lens _isApplicationSettings
      (\ s a -> s{_isApplicationSettings = a})

-- | Top level wrapper for all access related setting in IAP
isAccessSettings :: Lens' IapSettings (Maybe AccessSettings)
isAccessSettings
  = lens _isAccessSettings
      (\ s a -> s{_isAccessSettings = a})

-- | Required. The resource name of the IAP protected resource.
isName :: Lens' IapSettings (Maybe Text)
isName = lens _isName (\ s a -> s{_isName = a})

instance FromJSON IapSettings where
        parseJSON
          = withObject "IapSettings"
              (\ o ->
                 IapSettings' <$>
                   (o .:? "applicationSettings") <*>
                     (o .:? "accessSettings")
                     <*> (o .:? "name"))

instance ToJSON IapSettings where
        toJSON IapSettings'{..}
          = object
              (catMaybes
                 [("applicationSettings" .=) <$>
                    _isApplicationSettings,
                  ("accessSettings" .=) <$> _isAccessSettings,
                  ("name" .=) <$> _isName])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Allows customers to configure tenant_id for GCIP instance per-app.
--
-- /See:/ 'gcipSettings' smart constructor.
data GcipSettings =
  GcipSettings'
    { _gsTenantIds :: !(Maybe [Text])
    , _gsLoginPageURI :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GcipSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsTenantIds'
--
-- * 'gsLoginPageURI'
gcipSettings
    :: GcipSettings
gcipSettings = GcipSettings' {_gsTenantIds = Nothing, _gsLoginPageURI = Nothing}


-- | GCIP tenant ids that are linked to the IAP resource. tenant_ids could be
-- a string beginning with a number character to indicate authenticating
-- with GCIP tenant flow, or in the format of _ to indicate authenticating
-- with GCIP agent flow. If agent flow is used, tenant_ids should only
-- contain one single element, while for tenant flow, tenant_ids can
-- contain multiple elements.
gsTenantIds :: Lens' GcipSettings [Text]
gsTenantIds
  = lens _gsTenantIds (\ s a -> s{_gsTenantIds = a}) .
      _Default
      . _Coerce

-- | Login page URI associated with the GCIP tenants. Typically, all
-- resources within the same project share the same login page, though it
-- could be overridden at the sub resource level.
gsLoginPageURI :: Lens' GcipSettings (Maybe Text)
gsLoginPageURI
  = lens _gsLoginPageURI
      (\ s a -> s{_gsLoginPageURI = a})

instance FromJSON GcipSettings where
        parseJSON
          = withObject "GcipSettings"
              (\ o ->
                 GcipSettings' <$>
                   (o .:? "tenantIds" .!= mempty) <*>
                     (o .:? "loginPageUri"))

instance ToJSON GcipSettings where
        toJSON GcipSettings'{..}
          = object
              (catMaybes
                 [("tenantIds" .=) <$> _gsTenantIds,
                  ("loginPageUri" .=) <$> _gsLoginPageURI])

-- | Contains the data that describes an Identity Aware Proxy owned client.
--
-- /See:/ 'identityAwareProxyClient' smart constructor.
data IdentityAwareProxyClient =
  IdentityAwareProxyClient'
    { _iapcSecret :: !(Maybe Text)
    , _iapcName :: !(Maybe Text)
    , _iapcDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IdentityAwareProxyClient' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapcSecret'
--
-- * 'iapcName'
--
-- * 'iapcDisplayName'
identityAwareProxyClient
    :: IdentityAwareProxyClient
identityAwareProxyClient =
  IdentityAwareProxyClient'
    {_iapcSecret = Nothing, _iapcName = Nothing, _iapcDisplayName = Nothing}


-- | Output only. Client secret of the OAuth client.
iapcSecret :: Lens' IdentityAwareProxyClient (Maybe Text)
iapcSecret
  = lens _iapcSecret (\ s a -> s{_iapcSecret = a})

-- | Output only. Unique identifier of the OAuth client.
iapcName :: Lens' IdentityAwareProxyClient (Maybe Text)
iapcName = lens _iapcName (\ s a -> s{_iapcName = a})

-- | Human-friendly name given to the OAuth client.
iapcDisplayName :: Lens' IdentityAwareProxyClient (Maybe Text)
iapcDisplayName
  = lens _iapcDisplayName
      (\ s a -> s{_iapcDisplayName = a})

instance FromJSON IdentityAwareProxyClient where
        parseJSON
          = withObject "IdentityAwareProxyClient"
              (\ o ->
                 IdentityAwareProxyClient' <$>
                   (o .:? "secret") <*> (o .:? "name") <*>
                     (o .:? "displayName"))

instance ToJSON IdentityAwareProxyClient where
        toJSON IdentityAwareProxyClient'{..}
          = object
              (catMaybes
                 [("secret" .=) <$> _iapcSecret,
                  ("name" .=) <$> _iapcName,
                  ("displayName" .=) <$> _iapcDisplayName])

-- | OAuth brand data. NOTE: Only contains a portion of the data that
-- describes a brand.
--
-- /See:/ 'brand' smart constructor.
data Brand =
  Brand'
    { _bOrgInternalOnly :: !(Maybe Bool)
    , _bName :: !(Maybe Text)
    , _bApplicationTitle :: !(Maybe Text)
    , _bSupportEmail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Brand' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bOrgInternalOnly'
--
-- * 'bName'
--
-- * 'bApplicationTitle'
--
-- * 'bSupportEmail'
brand
    :: Brand
brand =
  Brand'
    { _bOrgInternalOnly = Nothing
    , _bName = Nothing
    , _bApplicationTitle = Nothing
    , _bSupportEmail = Nothing
    }


-- | Output only. Whether the brand is only intended for usage inside the G
-- Suite organization only.
bOrgInternalOnly :: Lens' Brand (Maybe Bool)
bOrgInternalOnly
  = lens _bOrgInternalOnly
      (\ s a -> s{_bOrgInternalOnly = a})

-- | Output only. Identifier of the brand. NOTE: GCP project number achieves
-- the same brand identification purpose as only one brand per project can
-- be created.
bName :: Lens' Brand (Maybe Text)
bName = lens _bName (\ s a -> s{_bName = a})

-- | Application name displayed on OAuth consent screen.
bApplicationTitle :: Lens' Brand (Maybe Text)
bApplicationTitle
  = lens _bApplicationTitle
      (\ s a -> s{_bApplicationTitle = a})

-- | Support email displayed on the OAuth consent screen.
bSupportEmail :: Lens' Brand (Maybe Text)
bSupportEmail
  = lens _bSupportEmail
      (\ s a -> s{_bSupportEmail = a})

instance FromJSON Brand where
        parseJSON
          = withObject "Brand"
              (\ o ->
                 Brand' <$>
                   (o .:? "orgInternalOnly") <*> (o .:? "name") <*>
                     (o .:? "applicationTitle")
                     <*> (o .:? "supportEmail"))

instance ToJSON Brand where
        toJSON Brand'{..}
          = object
              (catMaybes
                 [("orgInternalOnly" .=) <$> _bOrgInternalOnly,
                  ("name" .=) <$> _bName,
                  ("applicationTitle" .=) <$> _bApplicationTitle,
                  ("supportEmail" .=) <$> _bSupportEmail])

-- | Encapsulates settings provided to GetIamPolicy.
--
-- /See:/ 'getPolicyOptions' smart constructor.
newtype GetPolicyOptions =
  GetPolicyOptions'
    { _gpoRequestedPolicyVersion :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetPolicyOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpoRequestedPolicyVersion'
getPolicyOptions
    :: GetPolicyOptions
getPolicyOptions = GetPolicyOptions' {_gpoRequestedPolicyVersion = Nothing}


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
gpoRequestedPolicyVersion :: Lens' GetPolicyOptions (Maybe Int32)
gpoRequestedPolicyVersion
  = lens _gpoRequestedPolicyVersion
      (\ s a -> s{_gpoRequestedPolicyVersion = a})
      . mapping _Coerce

instance FromJSON GetPolicyOptions where
        parseJSON
          = withObject "GetPolicyOptions"
              (\ o ->
                 GetPolicyOptions' <$>
                   (o .:? "requestedPolicyVersion"))

instance ToJSON GetPolicyOptions where
        toJSON GetPolicyOptions'{..}
          = object
              (catMaybes
                 [("requestedPolicyVersion" .=) <$>
                    _gpoRequestedPolicyVersion])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
newtype SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprPolicy :: Maybe Policy
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest = SetIAMPolicyRequest' {_siprPolicy = Nothing}


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
              (\ o -> SetIAMPolicyRequest' <$> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest'{..}
          = object (catMaybes [("policy" .=) <$> _siprPolicy])

-- | Access related settings for IAP protected apps.
--
-- /See:/ 'accessSettings' smart constructor.
data AccessSettings =
  AccessSettings'
    { _asPolicyDelegationSettings :: !(Maybe PolicyDelegationSettings)
    , _asGcipSettings :: !(Maybe GcipSettings)
    , _asOAuthSettings :: !(Maybe OAuthSettings)
    , _asCORSSettings :: !(Maybe CORSSettings)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asPolicyDelegationSettings'
--
-- * 'asGcipSettings'
--
-- * 'asOAuthSettings'
--
-- * 'asCORSSettings'
accessSettings
    :: AccessSettings
accessSettings =
  AccessSettings'
    { _asPolicyDelegationSettings = Nothing
    , _asGcipSettings = Nothing
    , _asOAuthSettings = Nothing
    , _asCORSSettings = Nothing
    }


-- | Settings to configure Policy delegation for apps hosted in tenant
-- projects. INTERNAL_ONLY.
asPolicyDelegationSettings :: Lens' AccessSettings (Maybe PolicyDelegationSettings)
asPolicyDelegationSettings
  = lens _asPolicyDelegationSettings
      (\ s a -> s{_asPolicyDelegationSettings = a})

-- | GCIP claims and endpoint configurations for 3p identity providers.
asGcipSettings :: Lens' AccessSettings (Maybe GcipSettings)
asGcipSettings
  = lens _asGcipSettings
      (\ s a -> s{_asGcipSettings = a})

-- | Settings to configure IAP\'s OAuth behavior.
asOAuthSettings :: Lens' AccessSettings (Maybe OAuthSettings)
asOAuthSettings
  = lens _asOAuthSettings
      (\ s a -> s{_asOAuthSettings = a})

-- | Configuration to allow cross-origin requests via IAP.
asCORSSettings :: Lens' AccessSettings (Maybe CORSSettings)
asCORSSettings
  = lens _asCORSSettings
      (\ s a -> s{_asCORSSettings = a})

instance FromJSON AccessSettings where
        parseJSON
          = withObject "AccessSettings"
              (\ o ->
                 AccessSettings' <$>
                   (o .:? "policyDelegationSettings") <*>
                     (o .:? "gcipSettings")
                     <*> (o .:? "oauthSettings")
                     <*> (o .:? "corsSettings"))

instance ToJSON AccessSettings where
        toJSON AccessSettings'{..}
          = object
              (catMaybes
                 [("policyDelegationSettings" .=) <$>
                    _asPolicyDelegationSettings,
                  ("gcipSettings" .=) <$> _asGcipSettings,
                  ("oauthSettings" .=) <$> _asOAuthSettings,
                  ("corsSettings" .=) <$> _asCORSSettings])

-- | Response message for ListBrands.
--
-- /See:/ 'listBrandsResponse' smart constructor.
newtype ListBrandsResponse =
  ListBrandsResponse'
    { _lbrBrands :: Maybe [Brand]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListBrandsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrBrands'
listBrandsResponse
    :: ListBrandsResponse
listBrandsResponse = ListBrandsResponse' {_lbrBrands = Nothing}


-- | Brands existing in the project.
lbrBrands :: Lens' ListBrandsResponse [Brand]
lbrBrands
  = lens _lbrBrands (\ s a -> s{_lbrBrands = a}) .
      _Default
      . _Coerce

instance FromJSON ListBrandsResponse where
        parseJSON
          = withObject "ListBrandsResponse"
              (\ o ->
                 ListBrandsResponse' <$> (o .:? "brands" .!= mempty))

instance ToJSON ListBrandsResponse where
        toJSON ListBrandsResponse'{..}
          = object (catMaybes [("brands" .=) <$> _lbrBrands])

-- | Response message for ListIdentityAwareProxyClients.
--
-- /See:/ 'listIdentityAwareProxyClientsResponse' smart constructor.
data ListIdentityAwareProxyClientsResponse =
  ListIdentityAwareProxyClientsResponse'
    { _liapcrNextPageToken :: !(Maybe Text)
    , _liapcrIdentityAwareProxyClients :: !(Maybe [IdentityAwareProxyClient])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListIdentityAwareProxyClientsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liapcrNextPageToken'
--
-- * 'liapcrIdentityAwareProxyClients'
listIdentityAwareProxyClientsResponse
    :: ListIdentityAwareProxyClientsResponse
listIdentityAwareProxyClientsResponse =
  ListIdentityAwareProxyClientsResponse'
    {_liapcrNextPageToken = Nothing, _liapcrIdentityAwareProxyClients = Nothing}


-- | A token, which can be send as \`page_token\` to retrieve the next page.
-- If this field is omitted, there are no subsequent pages.
liapcrNextPageToken :: Lens' ListIdentityAwareProxyClientsResponse (Maybe Text)
liapcrNextPageToken
  = lens _liapcrNextPageToken
      (\ s a -> s{_liapcrNextPageToken = a})

-- | Clients existing in the brand.
liapcrIdentityAwareProxyClients :: Lens' ListIdentityAwareProxyClientsResponse [IdentityAwareProxyClient]
liapcrIdentityAwareProxyClients
  = lens _liapcrIdentityAwareProxyClients
      (\ s a -> s{_liapcrIdentityAwareProxyClients = a})
      . _Default
      . _Coerce

instance FromJSON
           ListIdentityAwareProxyClientsResponse
         where
        parseJSON
          = withObject "ListIdentityAwareProxyClientsResponse"
              (\ o ->
                 ListIdentityAwareProxyClientsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "identityAwareProxyClients" .!= mempty))

instance ToJSON ListIdentityAwareProxyClientsResponse
         where
        toJSON ListIdentityAwareProxyClientsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _liapcrNextPageToken,
                  ("identityAwareProxyClients" .=) <$>
                    _liapcrIdentityAwareProxyClients])

--
-- /See:/ 'resource' smart constructor.
data Resource =
  Resource'
    { _rService :: !(Maybe Text)
    , _rName :: !(Maybe Text)
    , _rLabels :: !(Maybe ResourceLabels)
    , _rType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Resource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rService'
--
-- * 'rName'
--
-- * 'rLabels'
--
-- * 'rType'
resource
    :: Resource
resource =
  Resource'
    { _rService = Nothing
    , _rName = Nothing
    , _rLabels = Nothing
    , _rType = Nothing
    }


-- | The name of the service this resource belongs to. It is configured using
-- the official_service_name of the Service as defined in service
-- configurations under \/\/configs\/cloud\/resourcetypes. For example, the
-- official_service_name of cloud resource manager service is set as
-- \'cloudresourcemanager.googleapis.com\' according to
-- \/\/configs\/cloud\/resourcetypes\/google\/cloud\/resourcemanager\/prod.yaml
rService :: Lens' Resource (Maybe Text)
rService = lens _rService (\ s a -> s{_rService = a})

-- | Name of the resource on which conditions will be evaluated. Must use the
-- Relative Resource Name of the resource, which is the URI path of the
-- resource without the leading \"\/\". Examples are
-- \"projects\/_\/buckets\/[BUCKET-ID]\" for storage buckets or
-- \"projects\/[PROJECT-ID]\/global\/firewalls\/[FIREWALL-ID]\" for a
-- firewall. This field is required for evaluating conditions with rules on
-- resource names. For a \`list\` permission check, the resource.name value
-- must be set to the parent resource. If the parent resource is a project,
-- this field should be left unset.
rName :: Lens' Resource (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | The service defined labels of the resource on which the conditions will
-- be evaluated. The semantics - including the key names - are vague to
-- IAM. If the effective condition has a reference to a
-- \`resource.labels[foo]\` construct, IAM consults with this map to
-- retrieve the values associated with \`foo\` key for Conditions
-- evaluation. If the provided key is not found in the labels map, the
-- condition would evaluate to false. This field is in limited use. If your
-- intended use case is not expected to express resource.labels attribute
-- in IAM Conditions, leave this field empty. Before planning on using this
-- attribute please: * Read go\/iam-conditions-labels-comm and ensure your
-- service can meet the data availability and management requirements. *
-- Talk to iam-conditions-eng\' about your use case.
rLabels :: Lens' Resource (Maybe ResourceLabels)
rLabels = lens _rLabels (\ s a -> s{_rLabels = a})

-- | The public resource type name of the resource on which conditions will
-- be evaluated. It is configured using the official_name of the
-- ResourceType as defined in service configurations under
-- \/\/configs\/cloud\/resourcetypes. For example, the official_name for
-- GCP projects is set as \'cloudresourcemanager.googleapis.com\/Project\'
-- according to
-- \/\/configs\/cloud\/resourcetypes\/google\/cloud\/resourcemanager\/prod.yaml
-- For details see go\/iam-conditions-integration-guide.
rType :: Lens' Resource (Maybe Text)
rType = lens _rType (\ s a -> s{_rType = a})

instance FromJSON Resource where
        parseJSON
          = withObject "Resource"
              (\ o ->
                 Resource' <$>
                   (o .:? "service") <*> (o .:? "name") <*>
                     (o .:? "labels")
                     <*> (o .:? "type"))

instance ToJSON Resource where
        toJSON Resource'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _rService,
                  ("name" .=) <$> _rName, ("labels" .=) <$> _rLabels,
                  ("type" .=) <$> _rType])

-- | Configuration for OAuth login&consent flow behavior as well as for OAuth
-- Credentials.
--
-- /See:/ 'oAuthSettings' smart constructor.
newtype OAuthSettings =
  OAuthSettings'
    { _oasLoginHint :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OAuthSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oasLoginHint'
oAuthSettings
    :: OAuthSettings
oAuthSettings = OAuthSettings' {_oasLoginHint = Nothing}


-- | Domain hint to send as hd=? parameter in OAuth request flow. Enables
-- redirect to primary IDP by skipping Google\'s login screen.
-- https:\/\/developers.google.com\/identity\/protocols\/OpenIDConnect#hd-param
-- Note: IAP does not verify that the id token\'s hd claim matches this
-- value since access behavior is managed by IAM policies.
oasLoginHint :: Lens' OAuthSettings (Maybe Text)
oasLoginHint
  = lens _oasLoginHint (\ s a -> s{_oasLoginHint = a})

instance FromJSON OAuthSettings where
        parseJSON
          = withObject "OAuthSettings"
              (\ o -> OAuthSettings' <$> (o .:? "loginHint"))

instance ToJSON OAuthSettings where
        toJSON OAuthSettings'{..}
          = object
              (catMaybes [("loginHint" .=) <$> _oasLoginHint])

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

-- | Custom content configuration for access denied page. IAP allows
-- customers to define a custom URI to use as the error page when access is
-- denied to users. If IAP prevents access to this page, the default IAP
-- error page will be displayed instead.
--
-- /See:/ 'accessDeniedPageSettings' smart constructor.
data AccessDeniedPageSettings =
  AccessDeniedPageSettings'
    { _adpsGenerateTroubleshootingURI :: !(Maybe Bool)
    , _adpsAccessDeniedPageURI :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessDeniedPageSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adpsGenerateTroubleshootingURI'
--
-- * 'adpsAccessDeniedPageURI'
accessDeniedPageSettings
    :: AccessDeniedPageSettings
accessDeniedPageSettings =
  AccessDeniedPageSettings'
    { _adpsGenerateTroubleshootingURI = Nothing
    , _adpsAccessDeniedPageURI = Nothing
    }


-- | Whether to generate a troubleshooting URL on access denied events to
-- this application.
adpsGenerateTroubleshootingURI :: Lens' AccessDeniedPageSettings (Maybe Bool)
adpsGenerateTroubleshootingURI
  = lens _adpsGenerateTroubleshootingURI
      (\ s a -> s{_adpsGenerateTroubleshootingURI = a})

-- | The URI to be redirected to when access is denied.
adpsAccessDeniedPageURI :: Lens' AccessDeniedPageSettings (Maybe Text)
adpsAccessDeniedPageURI
  = lens _adpsAccessDeniedPageURI
      (\ s a -> s{_adpsAccessDeniedPageURI = a})

instance FromJSON AccessDeniedPageSettings where
        parseJSON
          = withObject "AccessDeniedPageSettings"
              (\ o ->
                 AccessDeniedPageSettings' <$>
                   (o .:? "generateTroubleshootingUri") <*>
                     (o .:? "accessDeniedPageUri"))

instance ToJSON AccessDeniedPageSettings where
        toJSON AccessDeniedPageSettings'{..}
          = object
              (catMaybes
                 [("generateTroubleshootingUri" .=) <$>
                    _adpsGenerateTroubleshootingURI,
                  ("accessDeniedPageUri" .=) <$>
                    _adpsAccessDeniedPageURI])

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
    { _pEtag :: !(Maybe Bytes)
    , _pVersion :: !(Maybe (Textual Int32))
    , _pBindings :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pEtag'
--
-- * 'pVersion'
--
-- * 'pBindings'
policy
    :: Policy
policy = Policy' {_pEtag = Nothing, _pVersion = Nothing, _pBindings = Nothing}


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
                   (o .:? "etag") <*> (o .:? "version") <*>
                     (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pEtag,
                  ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

-- | Configuration for RCTokens generated for CSM workloads protected by IAP.
-- RCTokens are IAP generated JWTs that can be verified at the application.
-- The RCToken is primarily used for ISTIO deployments, and can be scoped
-- to a single mesh by configuring the audience field accordingly
--
-- /See:/ 'csmSettings' smart constructor.
newtype CsmSettings =
  CsmSettings'
    { _csRctokenAud :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CsmSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csRctokenAud'
csmSettings
    :: CsmSettings
csmSettings = CsmSettings' {_csRctokenAud = Nothing}


-- | Audience claim set in the generated RCToken. This value is not validated
-- by IAP.
csRctokenAud :: Lens' CsmSettings (Maybe Text)
csRctokenAud
  = lens _csRctokenAud (\ s a -> s{_csRctokenAud = a})

instance FromJSON CsmSettings where
        parseJSON
          = withObject "CsmSettings"
              (\ o -> CsmSettings' <$> (o .:? "rctokenAud"))

instance ToJSON CsmSettings where
        toJSON CsmSettings'{..}
          = object
              (catMaybes [("rctokenAud" .=) <$> _csRctokenAud])

-- | Allows customers to configure HTTP request paths that\'ll allow HTTP
-- OPTIONS call to bypass authentication and authorization.
--
-- /See:/ 'corsSettings' smart constructor.
newtype CORSSettings =
  CORSSettings'
    { _csAllowHTTPOptions :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CORSSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csAllowHTTPOptions'
corsSettings
    :: CORSSettings
corsSettings = CORSSettings' {_csAllowHTTPOptions = Nothing}


-- | Configuration to allow HTTP OPTIONS calls to skip authorization. If
-- undefined, IAP will not apply any special logic to OPTIONS requests.
csAllowHTTPOptions :: Lens' CORSSettings (Maybe Bool)
csAllowHTTPOptions
  = lens _csAllowHTTPOptions
      (\ s a -> s{_csAllowHTTPOptions = a})

instance FromJSON CORSSettings where
        parseJSON
          = withObject "CORSSettings"
              (\ o -> CORSSettings' <$> (o .:? "allowHttpOptions"))

instance ToJSON CORSSettings where
        toJSON CORSSettings'{..}
          = object
              (catMaybes
                 [("allowHttpOptions" .=) <$> _csAllowHTTPOptions])

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

-- | The request sent to ResetIdentityAwareProxyClientSecret.
--
-- /See:/ 'resetIdentityAwareProxyClientSecretRequest' smart constructor.
data ResetIdentityAwareProxyClientSecretRequest =
  ResetIdentityAwareProxyClientSecretRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResetIdentityAwareProxyClientSecretRequest' with the minimum fields required to make a request.
--
resetIdentityAwareProxyClientSecretRequest
    :: ResetIdentityAwareProxyClientSecretRequest
resetIdentityAwareProxyClientSecretRequest =
  ResetIdentityAwareProxyClientSecretRequest'


instance FromJSON
           ResetIdentityAwareProxyClientSecretRequest
         where
        parseJSON
          = withObject
              "ResetIdentityAwareProxyClientSecretRequest"
              (\ o ->
                 pure ResetIdentityAwareProxyClientSecretRequest')

instance ToJSON
           ResetIdentityAwareProxyClientSecretRequest
         where
        toJSON = const emptyObject
