{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.KnowledgeGraphSearch.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.KnowledgeGraphSearch.Types.Product where

import           Network.Google.KnowledgeGraphSearch.Types.Sum
import           Network.Google.Prelude

-- | Options for counters
--
-- /See:/ 'counterOptions' smart constructor.
data CounterOptions = CounterOptions'
    { _coField  :: !(Maybe Text)
    , _coMetric :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CounterOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coField'
--
-- * 'coMetric'
counterOptions
    :: CounterOptions
counterOptions =
    CounterOptions'
    { _coField = Nothing
    , _coMetric = Nothing
    }

-- | The field value to attribute.
coField :: Lens' CounterOptions (Maybe Text)
coField = lens _coField (\ s a -> s{_coField = a})

-- | The metric to update.
coMetric :: Lens' CounterOptions (Maybe Text)
coMetric = lens _coMetric (\ s a -> s{_coMetric = a})

instance FromJSON CounterOptions where
        parseJSON
          = withObject "CounterOptions"
              (\ o ->
                 CounterOptions' <$>
                   (o .:? "field") <*> (o .:? "metric"))

instance ToJSON CounterOptions where
        toJSON CounterOptions'{..}
          = object
              (catMaybes
                 [("field" .=) <$> _coField,
                  ("metric" .=) <$> _coMetric])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Represents a service account key. A service account can have 0 or more
-- key pairs. The private keys for these are not stored by Google.
-- ServiceAccountKeys are immutable.
--
-- /See:/ 'serviceAccountKey' smart constructor.
data ServiceAccountKey = ServiceAccountKey'
    { _sakValidAfterTime  :: !(Maybe Text)
    , _sakPrivateKeyData  :: !(Maybe (Textual Word8))
    , _sakName            :: !(Maybe Text)
    , _sakPrivateKeyType  :: !(Maybe Text)
    , _sakValidBeforeTime :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServiceAccountKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sakValidAfterTime'
--
-- * 'sakPrivateKeyData'
--
-- * 'sakName'
--
-- * 'sakPrivateKeyType'
--
-- * 'sakValidBeforeTime'
serviceAccountKey
    :: ServiceAccountKey
serviceAccountKey =
    ServiceAccountKey'
    { _sakValidAfterTime = Nothing
    , _sakPrivateKeyData = Nothing
    , _sakName = Nothing
    , _sakPrivateKeyType = Nothing
    , _sakValidBeforeTime = Nothing
    }

-- | The key can be used after this timestamp.
sakValidAfterTime :: Lens' ServiceAccountKey (Maybe Text)
sakValidAfterTime
  = lens _sakValidAfterTime
      (\ s a -> s{_sakValidAfterTime = a})

-- | The key data.
sakPrivateKeyData :: Lens' ServiceAccountKey (Maybe Word8)
sakPrivateKeyData
  = lens _sakPrivateKeyData
      (\ s a -> s{_sakPrivateKeyData = a})
      . mapping _Coerce

-- | The resource name of the service account key in the format
-- \"projects\/{project}\/serviceAccounts\/{email}\/keys\/{key}\".
sakName :: Lens' ServiceAccountKey (Maybe Text)
sakName = lens _sakName (\ s a -> s{_sakName = a})

-- | The type of the private key.
sakPrivateKeyType :: Lens' ServiceAccountKey (Maybe Text)
sakPrivateKeyType
  = lens _sakPrivateKeyType
      (\ s a -> s{_sakPrivateKeyType = a})

-- | The key can be used before this timestamp.
sakValidBeforeTime :: Lens' ServiceAccountKey (Maybe Text)
sakValidBeforeTime
  = lens _sakValidBeforeTime
      (\ s a -> s{_sakValidBeforeTime = a})

instance FromJSON ServiceAccountKey where
        parseJSON
          = withObject "ServiceAccountKey"
              (\ o ->
                 ServiceAccountKey' <$>
                   (o .:? "validAfterTime") <*> (o .:? "privateKeyData")
                     <*> (o .:? "name")
                     <*> (o .:? "privateKeyType")
                     <*> (o .:? "validBeforeTime"))

instance ToJSON ServiceAccountKey where
        toJSON ServiceAccountKey'{..}
          = object
              (catMaybes
                 [("validAfterTime" .=) <$> _sakValidAfterTime,
                  ("privateKeyData" .=) <$> _sakPrivateKeyData,
                  ("name" .=) <$> _sakName,
                  ("privateKeyType" .=) <$> _sakPrivateKeyType,
                  ("validBeforeTime" .=) <$> _sakValidBeforeTime])

-- | A rule to be applied in a Policy.
--
-- /See:/ 'rule' smart constructor.
data Rule = Rule'
    { _rAction      :: !(Maybe Text)
    , _rIn          :: !(Maybe [Text])
    , _rNotIn       :: !(Maybe [Text])
    , _rConditions  :: !(Maybe [Condition])
    , _rPermissions :: !(Maybe [Text])
    , _rLogConfig   :: !(Maybe [LogConfig])
    , _rDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Rule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rAction'
--
-- * 'rIn'
--
-- * 'rNotIn'
--
-- * 'rConditions'
--
-- * 'rPermissions'
--
-- * 'rLogConfig'
--
-- * 'rDescription'
rule
    :: Rule
rule =
    Rule'
    { _rAction = Nothing
    , _rIn = Nothing
    , _rNotIn = Nothing
    , _rConditions = Nothing
    , _rPermissions = Nothing
    , _rLogConfig = Nothing
    , _rDescription = Nothing
    }

-- | Required
rAction :: Lens' Rule (Maybe Text)
rAction = lens _rAction (\ s a -> s{_rAction = a})

-- | The rule matches if the PRINCIPAL\/AUTHORITY_SELECTOR is in this set of
-- entries.
rIn :: Lens' Rule [Text]
rIn
  = lens _rIn (\ s a -> s{_rIn = a}) . _Default .
      _Coerce

-- | The rule matches if the PRINCIPAL\/AUTHORITY_SELECTOR is not in this set
-- of entries. The format for in and not_in entries is the same as for
-- members in a Binding (see google\/iam\/v1\/policy.proto).
rNotIn :: Lens' Rule [Text]
rNotIn
  = lens _rNotIn (\ s a -> s{_rNotIn = a}) . _Default .
      _Coerce

-- | Additional restrictions that must be met
rConditions :: Lens' Rule [Condition]
rConditions
  = lens _rConditions (\ s a -> s{_rConditions = a}) .
      _Default
      . _Coerce

-- | A permission is a string of form \'..\' (e.g.,
-- \'storage.buckets.list\'). A value of \'*\' matches all permissions, and
-- a verb part of \'*\' (e.g., \'storage.buckets.*\') matches all verbs.
rPermissions :: Lens' Rule [Text]
rPermissions
  = lens _rPermissions (\ s a -> s{_rPermissions = a})
      . _Default
      . _Coerce

-- | The config returned to callers of tech.iam.IAM.CheckPolicy for any
-- entries that match the LOG action.
rLogConfig :: Lens' Rule [LogConfig]
rLogConfig
  = lens _rLogConfig (\ s a -> s{_rLogConfig = a}) .
      _Default
      . _Coerce

-- | Human-readable description of the rule.
rDescription :: Lens' Rule (Maybe Text)
rDescription
  = lens _rDescription (\ s a -> s{_rDescription = a})

instance FromJSON Rule where
        parseJSON
          = withObject "Rule"
              (\ o ->
                 Rule' <$>
                   (o .:? "action") <*> (o .:? "in" .!= mempty) <*>
                     (o .:? "notIn" .!= mempty)
                     <*> (o .:? "conditions" .!= mempty)
                     <*> (o .:? "permissions" .!= mempty)
                     <*> (o .:? "logConfig" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON Rule where
        toJSON Rule'{..}
          = object
              (catMaybes
                 [("action" .=) <$> _rAction, ("in" .=) <$> _rIn,
                  ("notIn" .=) <$> _rNotIn,
                  ("conditions" .=) <$> _rConditions,
                  ("permissions" .=) <$> _rPermissions,
                  ("logConfig" .=) <$> _rLogConfig,
                  ("description" .=) <$> _rDescription])

-- | The service account key create request.
--
-- /See:/ 'createServiceAccountKeyRequest' smart constructor.
newtype CreateServiceAccountKeyRequest = CreateServiceAccountKeyRequest'
    { _csakrPrivateKeyType :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateServiceAccountKeyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csakrPrivateKeyType'
createServiceAccountKeyRequest
    :: CreateServiceAccountKeyRequest
createServiceAccountKeyRequest =
    CreateServiceAccountKeyRequest'
    { _csakrPrivateKeyType = Nothing
    }

-- | The type of the key requested. GOOGLE_CREDENTIALS is the default key
-- type.
csakrPrivateKeyType :: Lens' CreateServiceAccountKeyRequest (Maybe Text)
csakrPrivateKeyType
  = lens _csakrPrivateKeyType
      (\ s a -> s{_csakrPrivateKeyType = a})

instance FromJSON CreateServiceAccountKeyRequest
         where
        parseJSON
          = withObject "CreateServiceAccountKeyRequest"
              (\ o ->
                 CreateServiceAccountKeyRequest' <$>
                   (o .:? "privateKeyType"))

instance ToJSON CreateServiceAccountKeyRequest where
        toJSON CreateServiceAccountKeyRequest'{..}
          = object
              (catMaybes
                 [("privateKeyType" .=) <$> _csakrPrivateKeyType])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
newtype SetIAMPolicyRequest = SetIAMPolicyRequest'
    { _siprPolicy :: Maybe Policy
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest =
    SetIAMPolicyRequest'
    { _siprPolicy = Nothing
    }

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

-- | The service account sign blob request.
--
-- /See:/ 'signBlobRequest' smart constructor.
newtype SignBlobRequest = SignBlobRequest'
    { _sbrBytesToSign :: Maybe (Textual Word8)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SignBlobRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbrBytesToSign'
signBlobRequest
    :: SignBlobRequest
signBlobRequest =
    SignBlobRequest'
    { _sbrBytesToSign = Nothing
    }

-- | The bytes to sign
sbrBytesToSign :: Lens' SignBlobRequest (Maybe Word8)
sbrBytesToSign
  = lens _sbrBytesToSign
      (\ s a -> s{_sbrBytesToSign = a})
      . mapping _Coerce

instance FromJSON SignBlobRequest where
        parseJSON
          = withObject "SignBlobRequest"
              (\ o -> SignBlobRequest' <$> (o .:? "bytesToSign"))

instance ToJSON SignBlobRequest where
        toJSON SignBlobRequest'{..}
          = object
              (catMaybes [("bytesToSign" .=) <$> _sbrBytesToSign])

-- | The service account keys list response.
--
-- /See:/ 'listServiceAccountKeysResponse' smart constructor.
newtype ListServiceAccountKeysResponse = ListServiceAccountKeysResponse'
    { _lsakrKeys :: Maybe [ServiceAccountKey]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListServiceAccountKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsakrKeys'
listServiceAccountKeysResponse
    :: ListServiceAccountKeysResponse
listServiceAccountKeysResponse =
    ListServiceAccountKeysResponse'
    { _lsakrKeys = Nothing
    }

-- | The public keys for the service account.
lsakrKeys :: Lens' ListServiceAccountKeysResponse [ServiceAccountKey]
lsakrKeys
  = lens _lsakrKeys (\ s a -> s{_lsakrKeys = a}) .
      _Default
      . _Coerce

instance FromJSON ListServiceAccountKeysResponse
         where
        parseJSON
          = withObject "ListServiceAccountKeysResponse"
              (\ o ->
                 ListServiceAccountKeysResponse' <$>
                   (o .:? "keys" .!= mempty))

instance ToJSON ListServiceAccountKeysResponse where
        toJSON ListServiceAccountKeysResponse'{..}
          = object (catMaybes [("keys" .=) <$> _lsakrKeys])

-- | Write a Cloud Audit log
--
-- /See:/ 'cloudAuditOptions' smart constructor.
data CloudAuditOptions =
    CloudAuditOptions'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CloudAuditOptions' with the minimum fields required to make a request.
--
cloudAuditOptions
    :: CloudAuditOptions
cloudAuditOptions = CloudAuditOptions'

instance FromJSON CloudAuditOptions where
        parseJSON
          = withObject "CloudAuditOptions"
              (\ o -> pure CloudAuditOptions')

instance ToJSON CloudAuditOptions where
        toJSON = const emptyObject

-- | Write a Data Access (Gin) log
--
-- /See:/ 'dataAccessOptions' smart constructor.
data DataAccessOptions =
    DataAccessOptions'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataAccessOptions' with the minimum fields required to make a request.
--
dataAccessOptions
    :: DataAccessOptions
dataAccessOptions = DataAccessOptions'

instance FromJSON DataAccessOptions where
        parseJSON
          = withObject "DataAccessOptions"
              (\ o -> pure DataAccessOptions')

instance ToJSON DataAccessOptions where
        toJSON = const emptyObject

-- | A service account in the Identity and Access Management API. To create a
-- service account, you specify the project_id and account_id for the
-- account. The account_id is unique within the project, and used to
-- generate the service account email address and a stable unique id. All
-- other methods can identify accounts using the format
-- \"projects\/{project}\/serviceAccounts\/{account}\". Using \'-\' as a
-- wildcard for the project, will infer the project from the account. The
-- account value can be the email address or the unique_id of the service
-- account.
--
-- /See:/ 'serviceAccount' smart constructor.
data ServiceAccount = ServiceAccount'
    { _saEmail          :: !(Maybe Text)
    , _saEtag           :: !(Maybe (Textual Word8))
    , _saUniqueId       :: !(Maybe Text)
    , _saName           :: !(Maybe Text)
    , _saDisplayName    :: !(Maybe Text)
    , _saProjectId      :: !(Maybe Text)
    , _saOAuth2ClientId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saEmail'
--
-- * 'saEtag'
--
-- * 'saUniqueId'
--
-- * 'saName'
--
-- * 'saDisplayName'
--
-- * 'saProjectId'
--
-- * 'saOAuth2ClientId'
serviceAccount
    :: ServiceAccount
serviceAccount =
    ServiceAccount'
    { _saEmail = Nothing
    , _saEtag = Nothing
    , _saUniqueId = Nothing
    , _saName = Nothing
    , _saDisplayName = Nothing
    , _saProjectId = Nothing
    , _saOAuth2ClientId = Nothing
    }

-- | \'OutputOnly Email address of the service account.
saEmail :: Lens' ServiceAccount (Maybe Text)
saEmail = lens _saEmail (\ s a -> s{_saEmail = a})

-- | Used to perform a consistent read-modify-write.
saEtag :: Lens' ServiceAccount (Maybe Word8)
saEtag
  = lens _saEtag (\ s a -> s{_saEtag = a}) .
      mapping _Coerce

-- | \'OutputOnly unique and stable id of the service account.
saUniqueId :: Lens' ServiceAccount (Maybe Text)
saUniqueId
  = lens _saUniqueId (\ s a -> s{_saUniqueId = a})

-- | The resource name of the service account in the format
-- \"projects\/{project}\/serviceAccounts\/{account}\". In requests using
-- \'-\' as a wildcard for the project, will infer the project from the
-- account and the account value can be the email address or the unique_id
-- of the service account. In responses the resource name will always be in
-- the format \"projects\/{project}\/serviceAccounts\/{email}\".
saName :: Lens' ServiceAccount (Maybe Text)
saName = lens _saName (\ s a -> s{_saName = a})

-- | Optional. A user-specified description of the service account. Must be
-- fewer than 100 UTF-8 bytes.
saDisplayName :: Lens' ServiceAccount (Maybe Text)
saDisplayName
  = lens _saDisplayName
      (\ s a -> s{_saDisplayName = a})

-- | \'OutputOnly The id of the project that owns the service account.
saProjectId :: Lens' ServiceAccount (Maybe Text)
saProjectId
  = lens _saProjectId (\ s a -> s{_saProjectId = a})

-- | \'OutputOnly. The OAuth2 client id for the service account. This is used
-- in conjunction with the OAuth2 clientconfig API to make three legged
-- OAuth2 (3LO) flows to access the data of Google users.
saOAuth2ClientId :: Lens' ServiceAccount (Maybe Text)
saOAuth2ClientId
  = lens _saOAuth2ClientId
      (\ s a -> s{_saOAuth2ClientId = a})

instance FromJSON ServiceAccount where
        parseJSON
          = withObject "ServiceAccount"
              (\ o ->
                 ServiceAccount' <$>
                   (o .:? "email") <*> (o .:? "etag") <*>
                     (o .:? "uniqueId")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "projectId")
                     <*> (o .:? "oauth2ClientId"))

instance ToJSON ServiceAccount where
        toJSON ServiceAccount'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _saEmail, ("etag" .=) <$> _saEtag,
                  ("uniqueId" .=) <$> _saUniqueId,
                  ("name" .=) <$> _saName,
                  ("displayName" .=) <$> _saDisplayName,
                  ("projectId" .=) <$> _saProjectId,
                  ("oauth2ClientId" .=) <$> _saOAuth2ClientId])

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest = TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
    TestIAMPermissionsRequest'
    { _tiprPermissions = Nothing
    }

-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see IAM Overview.
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

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse = TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
    TestIAMPermissionsResponse'
    { _tiamprPermissions = Nothing
    }

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

-- | Defines an Identity and Access Management (IAM) policy. It is used to
-- specify access control policies for Cloud Platform resources. A
-- \`Policy\` consists of a list of \`bindings\`. A \`Binding\` binds a
-- list of \`members\` to a \`role\`, where the members can be user
-- accounts, Google groups, Google domains, and service accounts. A
-- \`role\` is a named list of permissions defined by IAM. **Example** {
-- \"bindings\": [ { \"role\": \"roles\/owner\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-other-app\'appspot.gserviceaccount.com\"] }, {
-- \"role\": \"roles\/viewer\", \"members\": [\"user:sean\'example.com\"] }
-- ] } For a description of IAM and its features, see the [IAM developer\'s
-- guide](https:\/\/cloud.google.com\/iam).
--
-- /See:/ 'policy' smart constructor.
data Policy = Policy'
    { _pEtag     :: !(Maybe (Textual Word8))
    , _pRules    :: !(Maybe [Rule])
    , _pVersion  :: !(Maybe (Textual Int32))
    , _pBindings :: !(Maybe [Binding])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pEtag'
--
-- * 'pRules'
--
-- * 'pVersion'
--
-- * 'pBindings'
policy
    :: Policy
policy =
    Policy'
    { _pEtag = Nothing
    , _pRules = Nothing
    , _pVersion = Nothing
    , _pBindings = Nothing
    }

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. If no \`etag\` is provided in the call to
-- \`setIamPolicy\`, then the existing policy is overwritten blindly.
pEtag :: Lens' Policy (Maybe Word8)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Coerce

pRules :: Lens' Policy [Rule]
pRules
  = lens _pRules (\ s a -> s{_pRules = a}) . _Default .
      _Coerce

-- | Version of the \`Policy\`. The default version is 0.
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Multiple \`bindings\`
-- must not be specified for the same \`role\`. \`bindings\` with no
-- members will result in an error.
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
                   (o .:? "etag") <*> (o .:? "rules" .!= mempty) <*>
                     (o .:? "version")
                     <*> (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pEtag, ("rules" .=) <$> _pRules,
                  ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

-- | A condition to be met.
--
-- /See:/ 'condition' smart constructor.
data Condition = Condition'
    { _cOp     :: !(Maybe Text)
    , _cIAM    :: !(Maybe Text)
    , _cValues :: !(Maybe [Text])
    , _cValue  :: !(Maybe Text)
    , _cSys    :: !(Maybe Text)
    , _cSvc    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Condition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cOp'
--
-- * 'cIAM'
--
-- * 'cValues'
--
-- * 'cValue'
--
-- * 'cSys'
--
-- * 'cSvc'
condition
    :: Condition
condition =
    Condition'
    { _cOp = Nothing
    , _cIAM = Nothing
    , _cValues = Nothing
    , _cValue = Nothing
    , _cSys = Nothing
    , _cSvc = Nothing
    }

-- | An operator to apply the subject with.
cOp :: Lens' Condition (Maybe Text)
cOp = lens _cOp (\ s a -> s{_cOp = a})

-- | Trusted attributes supplied by the IAM system.
cIAM :: Lens' Condition (Maybe Text)
cIAM = lens _cIAM (\ s a -> s{_cIAM = a})

-- | The objects of the condition. This is mutually exclusive with \'value\'.
cValues :: Lens' Condition [Text]
cValues
  = lens _cValues (\ s a -> s{_cValues = a}) . _Default
      . _Coerce

-- | The object of the condition. Exactly one of these must be set.
cValue :: Lens' Condition (Maybe Text)
cValue = lens _cValue (\ s a -> s{_cValue = a})

-- | Trusted attributes supplied by any service that owns resources and uses
-- the IAM system for access control.
cSys :: Lens' Condition (Maybe Text)
cSys = lens _cSys (\ s a -> s{_cSys = a})

-- | Trusted attributes discharged by the service.
cSvc :: Lens' Condition (Maybe Text)
cSvc = lens _cSvc (\ s a -> s{_cSvc = a})

instance FromJSON Condition where
        parseJSON
          = withObject "Condition"
              (\ o ->
                 Condition' <$>
                   (o .:? "op") <*> (o .:? "iam") <*>
                     (o .:? "values" .!= mempty)
                     <*> (o .:? "value")
                     <*> (o .:? "sys")
                     <*> (o .:? "svc"))

instance ToJSON Condition where
        toJSON Condition'{..}
          = object
              (catMaybes
                 [("op" .=) <$> _cOp, ("iam" .=) <$> _cIAM,
                  ("values" .=) <$> _cValues, ("value" .=) <$> _cValue,
                  ("sys" .=) <$> _cSys, ("svc" .=) <$> _cSvc])

-- | The service account sign blob response.
--
-- /See:/ 'signBlobResponse' smart constructor.
data SignBlobResponse = SignBlobResponse'
    { _sbrSignature :: !(Maybe (Textual Word8))
    , _sbrKeyId     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SignBlobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbrSignature'
--
-- * 'sbrKeyId'
signBlobResponse
    :: SignBlobResponse
signBlobResponse =
    SignBlobResponse'
    { _sbrSignature = Nothing
    , _sbrKeyId = Nothing
    }

-- | The signed blob.
sbrSignature :: Lens' SignBlobResponse (Maybe Word8)
sbrSignature
  = lens _sbrSignature (\ s a -> s{_sbrSignature = a})
      . mapping _Coerce

-- | The id of the key used to sign the blob.
sbrKeyId :: Lens' SignBlobResponse (Maybe Text)
sbrKeyId = lens _sbrKeyId (\ s a -> s{_sbrKeyId = a})

instance FromJSON SignBlobResponse where
        parseJSON
          = withObject "SignBlobResponse"
              (\ o ->
                 SignBlobResponse' <$>
                   (o .:? "signature") <*> (o .:? "keyId"))

instance ToJSON SignBlobResponse where
        toJSON SignBlobResponse'{..}
          = object
              (catMaybes
                 [("signature" .=) <$> _sbrSignature,
                  ("keyId" .=) <$> _sbrKeyId])

-- | The service account list response.
--
-- /See:/ 'listServiceAccountsResponse' smart constructor.
data ListServiceAccountsResponse = ListServiceAccountsResponse'
    { _lsarNextPageToken :: !(Maybe Text)
    , _lsarAccounts      :: !(Maybe [ServiceAccount])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListServiceAccountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsarNextPageToken'
--
-- * 'lsarAccounts'
listServiceAccountsResponse
    :: ListServiceAccountsResponse
listServiceAccountsResponse =
    ListServiceAccountsResponse'
    { _lsarNextPageToken = Nothing
    , _lsarAccounts = Nothing
    }

-- | To retrieve the next page of results, set
-- [ListServiceAccountsRequest.page_token] to this value.
lsarNextPageToken :: Lens' ListServiceAccountsResponse (Maybe Text)
lsarNextPageToken
  = lens _lsarNextPageToken
      (\ s a -> s{_lsarNextPageToken = a})

-- | The list of matching service accounts.
lsarAccounts :: Lens' ListServiceAccountsResponse [ServiceAccount]
lsarAccounts
  = lens _lsarAccounts (\ s a -> s{_lsarAccounts = a})
      . _Default
      . _Coerce

instance FromJSON ListServiceAccountsResponse where
        parseJSON
          = withObject "ListServiceAccountsResponse"
              (\ o ->
                 ListServiceAccountsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "accounts" .!= mempty))

instance ToJSON ListServiceAccountsResponse where
        toJSON ListServiceAccountsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsarNextPageToken,
                  ("accounts" .=) <$> _lsarAccounts])

-- | Specifies what kind of log the caller must write Increment a streamz
-- counter with the specified metric and field names. Metric names should
-- start with a \'\/\', generally be lowercase-only, and end in \"_count\".
-- Field names should not contain an initial slash. The actual exported
-- metric names will have \"\/iam\/policy\" prepended. Field names
-- correspond to IAM request parameters and field values are their
-- respective values. At present only \"iam_principal\", corresponding to
-- IAMContext.principal, is supported. Examples: counter { metric:
-- \"\/debug_access_count\" field: \"iam_principal\" } ==> increment
-- counter \/iam\/policy\/backend_debug_access_count {iam_principal=[value
-- of IAMContext.principal]} At this time we do not support: * multiple
-- field names (though this may be supported in the future) * decrementing
-- the counter * incrementing it by anything other than 1
--
-- /See:/ 'logConfig' smart constructor.
data LogConfig = LogConfig'
    { _lcCloudAudit :: !(Maybe CloudAuditOptions)
    , _lcDataAccess :: !(Maybe DataAccessOptions)
    , _lcCounter    :: !(Maybe CounterOptions)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcCloudAudit'
--
-- * 'lcDataAccess'
--
-- * 'lcCounter'
logConfig
    :: LogConfig
logConfig =
    LogConfig'
    { _lcCloudAudit = Nothing
    , _lcDataAccess = Nothing
    , _lcCounter = Nothing
    }

-- | Cloud audit options.
lcCloudAudit :: Lens' LogConfig (Maybe CloudAuditOptions)
lcCloudAudit
  = lens _lcCloudAudit (\ s a -> s{_lcCloudAudit = a})

-- | Data access options.
lcDataAccess :: Lens' LogConfig (Maybe DataAccessOptions)
lcDataAccess
  = lens _lcDataAccess (\ s a -> s{_lcDataAccess = a})

-- | Counter options.
lcCounter :: Lens' LogConfig (Maybe CounterOptions)
lcCounter
  = lens _lcCounter (\ s a -> s{_lcCounter = a})

instance FromJSON LogConfig where
        parseJSON
          = withObject "LogConfig"
              (\ o ->
                 LogConfig' <$>
                   (o .:? "cloudAudit") <*> (o .:? "dataAccess") <*>
                     (o .:? "counter"))

instance ToJSON LogConfig where
        toJSON LogConfig'{..}
          = object
              (catMaybes
                 [("cloudAudit" .=) <$> _lcCloudAudit,
                  ("dataAccess" .=) <$> _lcDataAccess,
                  ("counter" .=) <$> _lcCounter])

-- | The service account create request.
--
-- /See:/ 'createServiceAccountRequest' smart constructor.
data CreateServiceAccountRequest = CreateServiceAccountRequest'
    { _csarServiceAccount :: !(Maybe ServiceAccount)
    , _csarAccountId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateServiceAccountRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csarServiceAccount'
--
-- * 'csarAccountId'
createServiceAccountRequest
    :: CreateServiceAccountRequest
createServiceAccountRequest =
    CreateServiceAccountRequest'
    { _csarServiceAccount = Nothing
    , _csarAccountId = Nothing
    }

-- | The ServiceAccount resource to create. Currently, only the following
-- values are user assignable: display_name .
csarServiceAccount :: Lens' CreateServiceAccountRequest (Maybe ServiceAccount)
csarServiceAccount
  = lens _csarServiceAccount
      (\ s a -> s{_csarServiceAccount = a})

-- | Required. The account id that is used to generate the service account
-- email address and a stable unique id. It is unique within a project,
-- must be 1-63 characters long, and match the regular expression
-- [a-z]([-a-z0-9]*[a-z0-9]) to comply with RFC1035.
csarAccountId :: Lens' CreateServiceAccountRequest (Maybe Text)
csarAccountId
  = lens _csarAccountId
      (\ s a -> s{_csarAccountId = a})

instance FromJSON CreateServiceAccountRequest where
        parseJSON
          = withObject "CreateServiceAccountRequest"
              (\ o ->
                 CreateServiceAccountRequest' <$>
                   (o .:? "serviceAccount") <*> (o .:? "accountId"))

instance ToJSON CreateServiceAccountRequest where
        toJSON CreateServiceAccountRequest'{..}
          = object
              (catMaybes
                 [("serviceAccount" .=) <$> _csarServiceAccount,
                  ("accountId" .=) <$> _csarAccountId])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding = Binding'
    { _bMembers :: !(Maybe [Text])
    , _bRole    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
binding
    :: Binding
binding =
    Binding'
    { _bMembers = Nothing
    , _bRole = Nothing
    }

-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'gmail.com\` or \`joe\'example.com\`. *
-- \`serviceAccount:{emailid}\`: An email address that represents a service
-- account. For example, \`my-other-app\'appspot.gserviceaccount.com\`. *
-- \`group:{emailid}\`: An email address that represents a Google group.
-- For example, \`admins\'example.com\`. * \`domain:{domain}\`: A Google
-- Apps domain name that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`. Required
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole])
