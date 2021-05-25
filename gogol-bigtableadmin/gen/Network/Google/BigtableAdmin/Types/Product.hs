{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BigtableAdmin.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BigtableAdmin.Types.Product where

import Network.Google.BigtableAdmin.Types.Sum
import Network.Google.Prelude

-- | Unconditionally routes all read\/write requests to a specific cluster.
-- This option preserves read-your-writes consistency but does not improve
-- availability.
--
-- /See:/ 'singleClusterRouting' smart constructor.
data SingleClusterRouting =
  SingleClusterRouting'
    { _scrAllowTransactionalWrites :: !(Maybe Bool)
    , _scrClusterId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SingleClusterRouting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrAllowTransactionalWrites'
--
-- * 'scrClusterId'
singleClusterRouting
    :: SingleClusterRouting
singleClusterRouting =
  SingleClusterRouting'
    {_scrAllowTransactionalWrites = Nothing, _scrClusterId = Nothing}


-- | Whether or not \`CheckAndMutateRow\` and \`ReadModifyWriteRow\` requests
-- are allowed by this app profile. It is unsafe to send these requests to
-- the same table\/row\/column in multiple clusters.
scrAllowTransactionalWrites :: Lens' SingleClusterRouting (Maybe Bool)
scrAllowTransactionalWrites
  = lens _scrAllowTransactionalWrites
      (\ s a -> s{_scrAllowTransactionalWrites = a})

-- | The cluster to which read\/write requests should be routed.
scrClusterId :: Lens' SingleClusterRouting (Maybe Text)
scrClusterId
  = lens _scrClusterId (\ s a -> s{_scrClusterId = a})

instance FromJSON SingleClusterRouting where
        parseJSON
          = withObject "SingleClusterRouting"
              (\ o ->
                 SingleClusterRouting' <$>
                   (o .:? "allowTransactionalWrites") <*>
                     (o .:? "clusterId"))

instance ToJSON SingleClusterRouting where
        toJSON SingleClusterRouting'{..}
          = object
              (catMaybes
                 [("allowTransactionalWrites" .=) <$>
                    _scrAllowTransactionalWrites,
                  ("clusterId" .=) <$> _scrClusterId])

-- | Required. Labels are a flexible and lightweight mechanism for organizing
-- cloud resources into groups that reflect a customer\'s organizational
-- needs and deployment strategies. They can be used to filter resources
-- and aggregate metrics. * Label keys must be between 1 and 63 characters
-- long and must conform to the regular expression:
-- \`\\p{Ll}\\p{Lo}{0,62}\`. * Label values must be between 0 and 63
-- characters long and must conform to the regular expression:
-- \`[\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}\`. * No more than 64 labels can be
-- associated with a given resource. * Keys and values must both be under
-- 128 bytes.
--
-- /See:/ 'instanceLabels' smart constructor.
newtype InstanceLabels =
  InstanceLabels'
    { _ilAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilAddtional'
instanceLabels
    :: HashMap Text Text -- ^ 'ilAddtional'
    -> InstanceLabels
instanceLabels pIlAddtional_ =
  InstanceLabels' {_ilAddtional = _Coerce # pIlAddtional_}


ilAddtional :: Lens' InstanceLabels (HashMap Text Text)
ilAddtional
  = lens _ilAddtional (\ s a -> s{_ilAddtional = a}) .
      _Coerce

instance FromJSON InstanceLabels where
        parseJSON
          = withObject "InstanceLabels"
              (\ o -> InstanceLabels' <$> (parseJSONObject o))

instance ToJSON InstanceLabels where
        toJSON = toJSON . _ilAddtional

-- | The response for ListBackups.
--
-- /See:/ 'listBackupsResponse' smart constructor.
data ListBackupsResponse =
  ListBackupsResponse'
    { _lbrNextPageToken :: !(Maybe Text)
    , _lbrBackups :: !(Maybe [Backup])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListBackupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrNextPageToken'
--
-- * 'lbrBackups'
listBackupsResponse
    :: ListBackupsResponse
listBackupsResponse =
  ListBackupsResponse' {_lbrNextPageToken = Nothing, _lbrBackups = Nothing}


-- | \`next_page_token\` can be sent in a subsequent ListBackups call to
-- fetch more of the matching backups.
lbrNextPageToken :: Lens' ListBackupsResponse (Maybe Text)
lbrNextPageToken
  = lens _lbrNextPageToken
      (\ s a -> s{_lbrNextPageToken = a})

-- | The list of matching backups.
lbrBackups :: Lens' ListBackupsResponse [Backup]
lbrBackups
  = lens _lbrBackups (\ s a -> s{_lbrBackups = a}) .
      _Default
      . _Coerce

instance FromJSON ListBackupsResponse where
        parseJSON
          = withObject "ListBackupsResponse"
              (\ o ->
                 ListBackupsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "backups" .!= mempty))

instance ToJSON ListBackupsResponse where
        toJSON ListBackupsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lbrNextPageToken,
                  ("backups" .=) <$> _lbrBackups])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Request message for BigtableInstanceAdmin.CreateInstance.
--
-- /See:/ 'createInstanceRequest' smart constructor.
data CreateInstanceRequest =
  CreateInstanceRequest'
    { _cirParent :: !(Maybe Text)
    , _cirInstanceId :: !(Maybe Text)
    , _cirClusters :: !(Maybe CreateInstanceRequestClusters)
    , _cirInstance :: !(Maybe Instance)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirParent'
--
-- * 'cirInstanceId'
--
-- * 'cirClusters'
--
-- * 'cirInstance'
createInstanceRequest
    :: CreateInstanceRequest
createInstanceRequest =
  CreateInstanceRequest'
    { _cirParent = Nothing
    , _cirInstanceId = Nothing
    , _cirClusters = Nothing
    , _cirInstance = Nothing
    }


-- | Required. The unique name of the project in which to create the new
-- instance. Values are of the form \`projects\/{project}\`.
cirParent :: Lens' CreateInstanceRequest (Maybe Text)
cirParent
  = lens _cirParent (\ s a -> s{_cirParent = a})

-- | Required. The ID to be used when referring to the new instance within
-- its project, e.g., just \`myinstance\` rather than
-- \`projects\/myproject\/instances\/myinstance\`.
cirInstanceId :: Lens' CreateInstanceRequest (Maybe Text)
cirInstanceId
  = lens _cirInstanceId
      (\ s a -> s{_cirInstanceId = a})

-- | Required. The clusters to be created within the instance, mapped by
-- desired cluster ID, e.g., just \`mycluster\` rather than
-- \`projects\/myproject\/instances\/myinstance\/clusters\/mycluster\`.
-- Fields marked \`OutputOnly\` must be left blank. Currently, at most four
-- clusters can be specified.
cirClusters :: Lens' CreateInstanceRequest (Maybe CreateInstanceRequestClusters)
cirClusters
  = lens _cirClusters (\ s a -> s{_cirClusters = a})

-- | Required. The instance to create. Fields marked \`OutputOnly\` must be
-- left blank.
cirInstance :: Lens' CreateInstanceRequest (Maybe Instance)
cirInstance
  = lens _cirInstance (\ s a -> s{_cirInstance = a})

instance FromJSON CreateInstanceRequest where
        parseJSON
          = withObject "CreateInstanceRequest"
              (\ o ->
                 CreateInstanceRequest' <$>
                   (o .:? "parent") <*> (o .:? "instanceId") <*>
                     (o .:? "clusters")
                     <*> (o .:? "instance"))

instance ToJSON CreateInstanceRequest where
        toJSON CreateInstanceRequest'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _cirParent,
                  ("instanceId" .=) <$> _cirInstanceId,
                  ("clusters" .=) <$> _cirClusters,
                  ("instance" .=) <$> _cirInstance])

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

-- | Request message for
-- google.bigtable.admin.v2.BigtableTableAdmin.GenerateConsistencyToken
--
-- /See:/ 'generateConsistencyTokenRequest' smart constructor.
data GenerateConsistencyTokenRequest =
  GenerateConsistencyTokenRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GenerateConsistencyTokenRequest' with the minimum fields required to make a request.
--
generateConsistencyTokenRequest
    :: GenerateConsistencyTokenRequest
generateConsistencyTokenRequest = GenerateConsistencyTokenRequest'


instance FromJSON GenerateConsistencyTokenRequest
         where
        parseJSON
          = withObject "GenerateConsistencyTokenRequest"
              (\ o -> pure GenerateConsistencyTokenRequest')

instance ToJSON GenerateConsistencyTokenRequest where
        toJSON = const emptyObject

-- | Request message for
-- google.bigtable.admin.v2.BigtableTableAdmin.ModifyColumnFamilies
--
-- /See:/ 'modifyColumnFamiliesRequest' smart constructor.
newtype ModifyColumnFamiliesRequest =
  ModifyColumnFamiliesRequest'
    { _mcfrModifications :: Maybe [Modification]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModifyColumnFamiliesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcfrModifications'
modifyColumnFamiliesRequest
    :: ModifyColumnFamiliesRequest
modifyColumnFamiliesRequest =
  ModifyColumnFamiliesRequest' {_mcfrModifications = Nothing}


-- | Required. Modifications to be atomically applied to the specified
-- table\'s families. Entries are applied in order, meaning that earlier
-- modifications can be masked by later ones (in the case of repeated
-- updates to the same family, for example).
mcfrModifications :: Lens' ModifyColumnFamiliesRequest [Modification]
mcfrModifications
  = lens _mcfrModifications
      (\ s a -> s{_mcfrModifications = a})
      . _Default
      . _Coerce

instance FromJSON ModifyColumnFamiliesRequest where
        parseJSON
          = withObject "ModifyColumnFamiliesRequest"
              (\ o ->
                 ModifyColumnFamiliesRequest' <$>
                   (o .:? "modifications" .!= mempty))

instance ToJSON ModifyColumnFamiliesRequest where
        toJSON ModifyColumnFamiliesRequest'{..}
          = object
              (catMaybes
                 [("modifications" .=) <$> _mcfrModifications])

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

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'listLocationsResponse' smart constructor.
data ListLocationsResponse =
  ListLocationsResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLocations :: !(Maybe [Location])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrNextPageToken'
--
-- * 'llrLocations'
listLocationsResponse
    :: ListLocationsResponse
listLocationsResponse =
  ListLocationsResponse' {_llrNextPageToken = Nothing, _llrLocations = Nothing}


-- | The standard List next-page token.
llrNextPageToken :: Lens' ListLocationsResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | A list of locations that matches the specified filter in the request.
llrLocations :: Lens' ListLocationsResponse [Location]
llrLocations
  = lens _llrLocations (\ s a -> s{_llrLocations = a})
      . _Default
      . _Coerce

instance FromJSON ListLocationsResponse where
        parseJSON
          = withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "locations" .!= mempty))

instance ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llrNextPageToken,
                  ("locations" .=) <$> _llrLocations])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorNextPageToken'
--
-- * 'lorOperations'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
  ListOperationsResponse'
    {_lorNextPageToken = Nothing, _lorOperations = Nothing}


-- | The standard List next-page token.
lorNextPageToken :: Lens' ListOperationsResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
lorOperations :: Lens' ListOperationsResponse [Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lorNextPageToken,
                  ("operations" .=) <$> _lorOperations])

-- | Request message for BigtableInstanceAdmin.CreateCluster.
--
-- /See:/ 'createClusterRequest' smart constructor.
data CreateClusterRequest =
  CreateClusterRequest'
    { _ccrParent :: !(Maybe Text)
    , _ccrCluster :: !(Maybe Cluster)
    , _ccrClusterId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateClusterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrParent'
--
-- * 'ccrCluster'
--
-- * 'ccrClusterId'
createClusterRequest
    :: CreateClusterRequest
createClusterRequest =
  CreateClusterRequest'
    {_ccrParent = Nothing, _ccrCluster = Nothing, _ccrClusterId = Nothing}


-- | Required. The unique name of the instance in which to create the new
-- cluster. Values are of the form
-- \`projects\/{project}\/instances\/{instance}\`.
ccrParent :: Lens' CreateClusterRequest (Maybe Text)
ccrParent
  = lens _ccrParent (\ s a -> s{_ccrParent = a})

-- | Required. The cluster to be created. Fields marked \`OutputOnly\` must
-- be left blank.
ccrCluster :: Lens' CreateClusterRequest (Maybe Cluster)
ccrCluster
  = lens _ccrCluster (\ s a -> s{_ccrCluster = a})

-- | Required. The ID to be used when referring to the new cluster within its
-- instance, e.g., just \`mycluster\` rather than
-- \`projects\/myproject\/instances\/myinstance\/clusters\/mycluster\`.
ccrClusterId :: Lens' CreateClusterRequest (Maybe Text)
ccrClusterId
  = lens _ccrClusterId (\ s a -> s{_ccrClusterId = a})

instance FromJSON CreateClusterRequest where
        parseJSON
          = withObject "CreateClusterRequest"
              (\ o ->
                 CreateClusterRequest' <$>
                   (o .:? "parent") <*> (o .:? "cluster") <*>
                     (o .:? "clusterId"))

instance ToJSON CreateClusterRequest where
        toJSON CreateClusterRequest'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _ccrParent,
                  ("cluster" .=) <$> _ccrCluster,
                  ("clusterId" .=) <$> _ccrClusterId])

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

-- | A resizable group of nodes in a particular cloud location, capable of
-- serving all Tables in the parent Instance.
--
-- /See:/ 'cluster' smart constructor.
data Cluster =
  Cluster'
    { _cState :: !(Maybe ClusterType)
    , _cDefaultStorageType :: !(Maybe ClusterDefaultStorageType)
    , _cLocation :: !(Maybe Text)
    , _cServeNodes :: !(Maybe (Textual Int32))
    , _cName :: !(Maybe Text)
    , _cEncryptionConfig :: !(Maybe EncryptionConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cState'
--
-- * 'cDefaultStorageType'
--
-- * 'cLocation'
--
-- * 'cServeNodes'
--
-- * 'cName'
--
-- * 'cEncryptionConfig'
cluster
    :: Cluster
cluster =
  Cluster'
    { _cState = Nothing
    , _cDefaultStorageType = Nothing
    , _cLocation = Nothing
    , _cServeNodes = Nothing
    , _cName = Nothing
    , _cEncryptionConfig = Nothing
    }


-- | Output only. The current state of the cluster.
cState :: Lens' Cluster (Maybe ClusterType)
cState = lens _cState (\ s a -> s{_cState = a})

-- | Immutable. The type of storage used by this cluster to serve its parent
-- instance\'s tables, unless explicitly overridden.
cDefaultStorageType :: Lens' Cluster (Maybe ClusterDefaultStorageType)
cDefaultStorageType
  = lens _cDefaultStorageType
      (\ s a -> s{_cDefaultStorageType = a})

-- | Immutable. The location where this cluster\'s nodes and storage reside.
-- For best performance, clients should be located as close as possible to
-- this cluster. Currently only zones are supported, so values should be of
-- the form \`projects\/{project}\/locations\/{zone}\`.
cLocation :: Lens' Cluster (Maybe Text)
cLocation
  = lens _cLocation (\ s a -> s{_cLocation = a})

-- | Required. The number of nodes allocated to this cluster. More nodes
-- enable higher throughput and more consistent performance.
cServeNodes :: Lens' Cluster (Maybe Int32)
cServeNodes
  = lens _cServeNodes (\ s a -> s{_cServeNodes = a}) .
      mapping _Coerce

-- | The unique name of the cluster. Values are of the form
-- \`projects\/{project}\/instances\/{instance}\/clusters\/a-z*\`.
cName :: Lens' Cluster (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | Immutable. The encryption configuration for CMEK-protected clusters.
cEncryptionConfig :: Lens' Cluster (Maybe EncryptionConfig)
cEncryptionConfig
  = lens _cEncryptionConfig
      (\ s a -> s{_cEncryptionConfig = a})

instance FromJSON Cluster where
        parseJSON
          = withObject "Cluster"
              (\ o ->
                 Cluster' <$>
                   (o .:? "state") <*> (o .:? "defaultStorageType") <*>
                     (o .:? "location")
                     <*> (o .:? "serveNodes")
                     <*> (o .:? "name")
                     <*> (o .:? "encryptionConfig"))

instance ToJSON Cluster where
        toJSON Cluster'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _cState,
                  ("defaultStorageType" .=) <$> _cDefaultStorageType,
                  ("location" .=) <$> _cLocation,
                  ("serveNodes" .=) <$> _cServeNodes,
                  ("name" .=) <$> _cName,
                  ("encryptionConfig" .=) <$> _cEncryptionConfig])

-- | An initial split point for a newly created table.
--
-- /See:/ 'split' smart constructor.
newtype Split =
  Split'
    { _sKey :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Split' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sKey'
split
    :: Split
split = Split' {_sKey = Nothing}


-- | Row key to use as an initial tablet boundary.
sKey :: Lens' Split (Maybe ByteString)
sKey
  = lens _sKey (\ s a -> s{_sKey = a}) . mapping _Bytes

instance FromJSON Split where
        parseJSON
          = withObject "Split"
              (\ o -> Split' <$> (o .:? "key"))

instance ToJSON Split where
        toJSON Split'{..}
          = object (catMaybes [("key" .=) <$> _sKey])

-- | Read\/write requests are routed to the nearest cluster in the instance,
-- and will fail over to the nearest cluster that is available in the event
-- of transient errors or delays. Clusters in a region are considered
-- equidistant. Choosing this option sacrifices read-your-writes
-- consistency to improve availability.
--
-- /See:/ 'multiClusterRoutingUseAny' smart constructor.
data MultiClusterRoutingUseAny =
  MultiClusterRoutingUseAny'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MultiClusterRoutingUseAny' with the minimum fields required to make a request.
--
multiClusterRoutingUseAny
    :: MultiClusterRoutingUseAny
multiClusterRoutingUseAny = MultiClusterRoutingUseAny'


instance FromJSON MultiClusterRoutingUseAny where
        parseJSON
          = withObject "MultiClusterRoutingUseAny"
              (\ o -> pure MultiClusterRoutingUseAny')

instance ToJSON MultiClusterRoutingUseAny where
        toJSON = const emptyObject

-- | The state of a table\'s data in a particular cluster.
--
-- /See:/ 'clusterState' smart constructor.
data ClusterState =
  ClusterState'
    { _csReplicationState :: !(Maybe ClusterStateReplicationState)
    , _csEncryptionInfo :: !(Maybe [EncryptionInfo])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csReplicationState'
--
-- * 'csEncryptionInfo'
clusterState
    :: ClusterState
clusterState =
  ClusterState' {_csReplicationState = Nothing, _csEncryptionInfo = Nothing}


-- | Output only. The state of replication for the table in this cluster.
csReplicationState :: Lens' ClusterState (Maybe ClusterStateReplicationState)
csReplicationState
  = lens _csReplicationState
      (\ s a -> s{_csReplicationState = a})

-- | Output only. The encryption information for the table in this cluster.
-- If the encryption key protecting this resource is customer managed, then
-- its version can be rotated in Cloud Key Management Service (Cloud KMS).
-- The primary version of the key and its status will be reflected here
-- when changes propagate from Cloud KMS.
csEncryptionInfo :: Lens' ClusterState [EncryptionInfo]
csEncryptionInfo
  = lens _csEncryptionInfo
      (\ s a -> s{_csEncryptionInfo = a})
      . _Default
      . _Coerce

instance FromJSON ClusterState where
        parseJSON
          = withObject "ClusterState"
              (\ o ->
                 ClusterState' <$>
                   (o .:? "replicationState") <*>
                     (o .:? "encryptionInfo" .!= mempty))

instance ToJSON ClusterState where
        toJSON ClusterState'{..}
          = object
              (catMaybes
                 [("replicationState" .=) <$> _csReplicationState,
                  ("encryptionInfo" .=) <$> _csEncryptionInfo])

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lName :: !(Maybe Text)
    , _lMetadata :: !(Maybe LocationMetadata)
    , _lDisplayName :: !(Maybe Text)
    , _lLabels :: !(Maybe LocationLabels)
    , _lLocationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lName'
--
-- * 'lMetadata'
--
-- * 'lDisplayName'
--
-- * 'lLabels'
--
-- * 'lLocationId'
location
    :: Location
location =
  Location'
    { _lName = Nothing
    , _lMetadata = Nothing
    , _lDisplayName = Nothing
    , _lLabels = Nothing
    , _lLocationId = Nothing
    }


-- | Resource name for the location, which may vary between implementations.
-- For example: \`\"projects\/example-project\/locations\/us-east1\"\`
lName :: Lens' Location (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | Service-specific metadata. For example the available capacity at the
-- given location.
lMetadata :: Lens' Location (Maybe LocationMetadata)
lMetadata
  = lens _lMetadata (\ s a -> s{_lMetadata = a})

-- | The friendly name for this location, typically a nearby city name. For
-- example, \"Tokyo\".
lDisplayName :: Lens' Location (Maybe Text)
lDisplayName
  = lens _lDisplayName (\ s a -> s{_lDisplayName = a})

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
lLabels :: Lens' Location (Maybe LocationLabels)
lLabels = lens _lLabels (\ s a -> s{_lLabels = a})

-- | The canonical id for this location. For example: \`\"us-east1\"\`.
lLocationId :: Lens' Location (Maybe Text)
lLocationId
  = lens _lLocationId (\ s a -> s{_lLocationId = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "name") <*> (o .:? "metadata") <*>
                     (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "locationId"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lName,
                  ("metadata" .=) <$> _lMetadata,
                  ("displayName" .=) <$> _lDisplayName,
                  ("labels" .=) <$> _lLabels,
                  ("locationId" .=) <$> _lLocationId])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone :: !(Maybe Bool)
    , _oError :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

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

-- | Response message for BigtableInstanceAdmin.ListAppProfiles.
--
-- /See:/ 'listAppProFilesResponse' smart constructor.
data ListAppProFilesResponse =
  ListAppProFilesResponse'
    { _lapfrNextPageToken :: !(Maybe Text)
    , _lapfrFailedLocations :: !(Maybe [Text])
    , _lapfrAppProFiles :: !(Maybe [AppProFile])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAppProFilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lapfrNextPageToken'
--
-- * 'lapfrFailedLocations'
--
-- * 'lapfrAppProFiles'
listAppProFilesResponse
    :: ListAppProFilesResponse
listAppProFilesResponse =
  ListAppProFilesResponse'
    { _lapfrNextPageToken = Nothing
    , _lapfrFailedLocations = Nothing
    , _lapfrAppProFiles = Nothing
    }


-- | Set if not all app profiles could be returned in a single response. Pass
-- this value to \`page_token\` in another request to get the next page of
-- results.
lapfrNextPageToken :: Lens' ListAppProFilesResponse (Maybe Text)
lapfrNextPageToken
  = lens _lapfrNextPageToken
      (\ s a -> s{_lapfrNextPageToken = a})

-- | Locations from which AppProfile information could not be retrieved, due
-- to an outage or some other transient condition. AppProfiles from these
-- locations may be missing from \`app_profiles\`. Values are of the form
-- \`projects\/\/locations\/\`
lapfrFailedLocations :: Lens' ListAppProFilesResponse [Text]
lapfrFailedLocations
  = lens _lapfrFailedLocations
      (\ s a -> s{_lapfrFailedLocations = a})
      . _Default
      . _Coerce

-- | The list of requested app profiles.
lapfrAppProFiles :: Lens' ListAppProFilesResponse [AppProFile]
lapfrAppProFiles
  = lens _lapfrAppProFiles
      (\ s a -> s{_lapfrAppProFiles = a})
      . _Default
      . _Coerce

instance FromJSON ListAppProFilesResponse where
        parseJSON
          = withObject "ListAppProFilesResponse"
              (\ o ->
                 ListAppProFilesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "failedLocations" .!= mempty)
                     <*> (o .:? "appProfiles" .!= mempty))

instance ToJSON ListAppProFilesResponse where
        toJSON ListAppProFilesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lapfrNextPageToken,
                  ("failedLocations" .=) <$> _lapfrFailedLocations,
                  ("appProfiles" .=) <$> _lapfrAppProFiles])

-- | Encapsulates progress related information for a Cloud Bigtable long
-- running operation.
--
-- /See:/ 'operationProgress' smart constructor.
data OperationProgress =
  OperationProgress'
    { _opStartTime :: !(Maybe DateTime')
    , _opProgressPercent :: !(Maybe (Textual Int32))
    , _opEndTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opStartTime'
--
-- * 'opProgressPercent'
--
-- * 'opEndTime'
operationProgress
    :: OperationProgress
operationProgress =
  OperationProgress'
    {_opStartTime = Nothing, _opProgressPercent = Nothing, _opEndTime = Nothing}


-- | Time the request was received.
opStartTime :: Lens' OperationProgress (Maybe UTCTime)
opStartTime
  = lens _opStartTime (\ s a -> s{_opStartTime = a}) .
      mapping _DateTime

-- | Percent completion of the operation. Values are between 0 and 100
-- inclusive.
opProgressPercent :: Lens' OperationProgress (Maybe Int32)
opProgressPercent
  = lens _opProgressPercent
      (\ s a -> s{_opProgressPercent = a})
      . mapping _Coerce

-- | If set, the time at which this operation failed or was completed
-- successfully.
opEndTime :: Lens' OperationProgress (Maybe UTCTime)
opEndTime
  = lens _opEndTime (\ s a -> s{_opEndTime = a}) .
      mapping _DateTime

instance FromJSON OperationProgress where
        parseJSON
          = withObject "OperationProgress"
              (\ o ->
                 OperationProgress' <$>
                   (o .:? "startTime") <*> (o .:? "progressPercent") <*>
                     (o .:? "endTime"))

instance ToJSON OperationProgress where
        toJSON OperationProgress'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _opStartTime,
                  ("progressPercent" .=) <$> _opProgressPercent,
                  ("endTime" .=) <$> _opEndTime])

-- | Output only. Map from cluster ID to per-cluster table state. If it could
-- not be determined whether or not the table has data in a particular
-- cluster (for example, if its zone is unavailable), then there will be an
-- entry for the cluster with UNKNOWN \`replication_status\`. Views:
-- \`REPLICATION_VIEW\`, \`ENCRYPTION_VIEW\`, \`FULL\`
--
-- /See:/ 'tableClusterStates' smart constructor.
newtype TableClusterStates =
  TableClusterStates'
    { _tcsAddtional :: HashMap Text ClusterState
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableClusterStates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcsAddtional'
tableClusterStates
    :: HashMap Text ClusterState -- ^ 'tcsAddtional'
    -> TableClusterStates
tableClusterStates pTcsAddtional_ =
  TableClusterStates' {_tcsAddtional = _Coerce # pTcsAddtional_}


tcsAddtional :: Lens' TableClusterStates (HashMap Text ClusterState)
tcsAddtional
  = lens _tcsAddtional (\ s a -> s{_tcsAddtional = a})
      . _Coerce

instance FromJSON TableClusterStates where
        parseJSON
          = withObject "TableClusterStates"
              (\ o -> TableClusterStates' <$> (parseJSONObject o))

instance ToJSON TableClusterStates where
        toJSON = toJSON . _tcsAddtional

-- | The column families configured for this table, mapped by column family
-- ID. Views: \`SCHEMA_VIEW\`, \`FULL\`
--
-- /See:/ 'tableColumnFamilies' smart constructor.
newtype TableColumnFamilies =
  TableColumnFamilies'
    { _tcfAddtional :: HashMap Text ColumnFamily
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableColumnFamilies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcfAddtional'
tableColumnFamilies
    :: HashMap Text ColumnFamily -- ^ 'tcfAddtional'
    -> TableColumnFamilies
tableColumnFamilies pTcfAddtional_ =
  TableColumnFamilies' {_tcfAddtional = _Coerce # pTcfAddtional_}


tcfAddtional :: Lens' TableColumnFamilies (HashMap Text ColumnFamily)
tcfAddtional
  = lens _tcfAddtional (\ s a -> s{_tcfAddtional = a})
      . _Coerce

instance FromJSON TableColumnFamilies where
        parseJSON
          = withObject "TableColumnFamilies"
              (\ o -> TableColumnFamilies' <$> (parseJSONObject o))

instance ToJSON TableColumnFamilies where
        toJSON = toJSON . _tcfAddtional

-- | Request message for
-- google.bigtable.admin.v2.BigtableTableAdmin.CreateTable
--
-- /See:/ 'createTableRequest' smart constructor.
data CreateTableRequest =
  CreateTableRequest'
    { _ctrInitialSplits :: !(Maybe [Split])
    , _ctrTableId :: !(Maybe Text)
    , _ctrTable :: !(Maybe Table)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateTableRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrInitialSplits'
--
-- * 'ctrTableId'
--
-- * 'ctrTable'
createTableRequest
    :: CreateTableRequest
createTableRequest =
  CreateTableRequest'
    {_ctrInitialSplits = Nothing, _ctrTableId = Nothing, _ctrTable = Nothing}


-- | The optional list of row keys that will be used to initially split the
-- table into several tablets (tablets are similar to HBase regions). Given
-- two split keys, \`s1\` and \`s2\`, three tablets will be created,
-- spanning the key ranges: \`[, s1), [s1, s2), [s2, )\`. Example: * Row
-- keys := \`[\"a\", \"apple\", \"custom\", \"customer_1\",
-- \"customer_2\",\` \`\"other\", \"zz\"]\` * initial_split_keys :=
-- \`[\"apple\", \"customer_1\", \"customer_2\", \"other\"]\` * Key
-- assignment: - Tablet 1 \`[, apple) => {\"a\"}.\` - Tablet 2 \`[apple,
-- customer_1) => {\"apple\", \"custom\"}.\` - Tablet 3 \`[customer_1,
-- customer_2) => {\"customer_1\"}.\` - Tablet 4 \`[customer_2, other) =>
-- {\"customer_2\"}.\` - Tablet 5 \`[other, ) => {\"other\", \"zz\"}.\`
ctrInitialSplits :: Lens' CreateTableRequest [Split]
ctrInitialSplits
  = lens _ctrInitialSplits
      (\ s a -> s{_ctrInitialSplits = a})
      . _Default
      . _Coerce

-- | Required. The name by which the new table should be referred to within
-- the parent instance, e.g., \`foobar\` rather than
-- \`{parent}\/tables\/foobar\`. Maximum 50 characters.
ctrTableId :: Lens' CreateTableRequest (Maybe Text)
ctrTableId
  = lens _ctrTableId (\ s a -> s{_ctrTableId = a})

-- | Required. The Table to create.
ctrTable :: Lens' CreateTableRequest (Maybe Table)
ctrTable = lens _ctrTable (\ s a -> s{_ctrTable = a})

instance FromJSON CreateTableRequest where
        parseJSON
          = withObject "CreateTableRequest"
              (\ o ->
                 CreateTableRequest' <$>
                   (o .:? "initialSplits" .!= mempty) <*>
                     (o .:? "tableId")
                     <*> (o .:? "table"))

instance ToJSON CreateTableRequest where
        toJSON CreateTableRequest'{..}
          = object
              (catMaybes
                 [("initialSplits" .=) <$> _ctrInitialSplits,
                  ("tableId" .=) <$> _ctrTableId,
                  ("table" .=) <$> _ctrTable])

-- | The metadata for the Operation returned by CreateCluster.
--
-- /See:/ 'createClusterMetadata' smart constructor.
data CreateClusterMetadata =
  CreateClusterMetadata'
    { _ccmRequestTime :: !(Maybe DateTime')
    , _ccmTables :: !(Maybe CreateClusterMetadataTables)
    , _ccmOriginalRequest :: !(Maybe CreateClusterRequest)
    , _ccmFinishTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateClusterMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccmRequestTime'
--
-- * 'ccmTables'
--
-- * 'ccmOriginalRequest'
--
-- * 'ccmFinishTime'
createClusterMetadata
    :: CreateClusterMetadata
createClusterMetadata =
  CreateClusterMetadata'
    { _ccmRequestTime = Nothing
    , _ccmTables = Nothing
    , _ccmOriginalRequest = Nothing
    , _ccmFinishTime = Nothing
    }


-- | The time at which the original request was received.
ccmRequestTime :: Lens' CreateClusterMetadata (Maybe UTCTime)
ccmRequestTime
  = lens _ccmRequestTime
      (\ s a -> s{_ccmRequestTime = a})
      . mapping _DateTime

-- | Keys: the full \`name\` of each table that existed in the instance when
-- CreateCluster was first called, i.e.
-- \`projects\/\/instances\/\/tables\/\`. Any table added to the instance
-- by a later API call will be created in the new cluster by that API call,
-- not this one. Values: information on how much of a table\'s data has
-- been copied to the newly-created cluster so far.
ccmTables :: Lens' CreateClusterMetadata (Maybe CreateClusterMetadataTables)
ccmTables
  = lens _ccmTables (\ s a -> s{_ccmTables = a})

-- | The request that prompted the initiation of this CreateCluster
-- operation.
ccmOriginalRequest :: Lens' CreateClusterMetadata (Maybe CreateClusterRequest)
ccmOriginalRequest
  = lens _ccmOriginalRequest
      (\ s a -> s{_ccmOriginalRequest = a})

-- | The time at which the operation failed or was completed successfully.
ccmFinishTime :: Lens' CreateClusterMetadata (Maybe UTCTime)
ccmFinishTime
  = lens _ccmFinishTime
      (\ s a -> s{_ccmFinishTime = a})
      . mapping _DateTime

instance FromJSON CreateClusterMetadata where
        parseJSON
          = withObject "CreateClusterMetadata"
              (\ o ->
                 CreateClusterMetadata' <$>
                   (o .:? "requestTime") <*> (o .:? "tables") <*>
                     (o .:? "originalRequest")
                     <*> (o .:? "finishTime"))

instance ToJSON CreateClusterMetadata where
        toJSON CreateClusterMetadata'{..}
          = object
              (catMaybes
                 [("requestTime" .=) <$> _ccmRequestTime,
                  ("tables" .=) <$> _ccmTables,
                  ("originalRequest" .=) <$> _ccmOriginalRequest,
                  ("finishTime" .=) <$> _ccmFinishTime])

-- | Progress info for copying a table\'s data to the new cluster.
--
-- /See:/ 'tableProgress' smart constructor.
data TableProgress =
  TableProgress'
    { _tpState :: !(Maybe TableProgressState)
    , _tpEstimatedSizeBytes :: !(Maybe (Textual Int64))
    , _tpEstimatedCopiedBytes :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpState'
--
-- * 'tpEstimatedSizeBytes'
--
-- * 'tpEstimatedCopiedBytes'
tableProgress
    :: TableProgress
tableProgress =
  TableProgress'
    { _tpState = Nothing
    , _tpEstimatedSizeBytes = Nothing
    , _tpEstimatedCopiedBytes = Nothing
    }


tpState :: Lens' TableProgress (Maybe TableProgressState)
tpState = lens _tpState (\ s a -> s{_tpState = a})

-- | Estimate of the size of the table to be copied.
tpEstimatedSizeBytes :: Lens' TableProgress (Maybe Int64)
tpEstimatedSizeBytes
  = lens _tpEstimatedSizeBytes
      (\ s a -> s{_tpEstimatedSizeBytes = a})
      . mapping _Coerce

-- | Estimate of the number of bytes copied so far for this table. This will
-- eventually reach \'estimated_size_bytes\' unless the table copy is
-- CANCELLED.
tpEstimatedCopiedBytes :: Lens' TableProgress (Maybe Int64)
tpEstimatedCopiedBytes
  = lens _tpEstimatedCopiedBytes
      (\ s a -> s{_tpEstimatedCopiedBytes = a})
      . mapping _Coerce

instance FromJSON TableProgress where
        parseJSON
          = withObject "TableProgress"
              (\ o ->
                 TableProgress' <$>
                   (o .:? "state") <*> (o .:? "estimatedSizeBytes") <*>
                     (o .:? "estimatedCopiedBytes"))

instance ToJSON TableProgress where
        toJSON TableProgress'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _tpState,
                  ("estimatedSizeBytes" .=) <$> _tpEstimatedSizeBytes,
                  ("estimatedCopiedBytes" .=) <$>
                    _tpEstimatedCopiedBytes])

-- | A GcRule which deletes cells matching any of the given rules.
--
-- /See:/ 'union' smart constructor.
newtype Union =
  Union'
    { _uRules :: Maybe [GcRule]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Union' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uRules'
union
    :: Union
union = Union' {_uRules = Nothing}


-- | Delete cells which would be deleted by any element of \`rules\`.
uRules :: Lens' Union [GcRule]
uRules
  = lens _uRules (\ s a -> s{_uRules = a}) . _Default .
      _Coerce

instance FromJSON Union where
        parseJSON
          = withObject "Union"
              (\ o -> Union' <$> (o .:? "rules" .!= mempty))

instance ToJSON Union where
        toJSON Union'{..}
          = object (catMaybes [("rules" .=) <$> _uRules])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | Keys: the full \`name\` of each table that existed in the instance when
-- CreateCluster was first called, i.e.
-- \`projects\/\/instances\/\/tables\/\`. Any table added to the instance
-- by a later API call will be created in the new cluster by that API call,
-- not this one. Values: information on how much of a table\'s data has
-- been copied to the newly-created cluster so far.
--
-- /See:/ 'createClusterMetadataTables' smart constructor.
newtype CreateClusterMetadataTables =
  CreateClusterMetadataTables'
    { _ccmtAddtional :: HashMap Text TableProgress
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateClusterMetadataTables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccmtAddtional'
createClusterMetadataTables
    :: HashMap Text TableProgress -- ^ 'ccmtAddtional'
    -> CreateClusterMetadataTables
createClusterMetadataTables pCcmtAddtional_ =
  CreateClusterMetadataTables' {_ccmtAddtional = _Coerce # pCcmtAddtional_}


ccmtAddtional :: Lens' CreateClusterMetadataTables (HashMap Text TableProgress)
ccmtAddtional
  = lens _ccmtAddtional
      (\ s a -> s{_ccmtAddtional = a})
      . _Coerce

instance FromJSON CreateClusterMetadataTables where
        parseJSON
          = withObject "CreateClusterMetadataTables"
              (\ o ->
                 CreateClusterMetadataTables' <$> (parseJSONObject o))

instance ToJSON CreateClusterMetadataTables where
        toJSON = toJSON . _ccmtAddtional

-- | The metadata for the Operation returned by UpdateAppProfile.
--
-- /See:/ 'updateAppProFileMetadata' smart constructor.
data UpdateAppProFileMetadata =
  UpdateAppProFileMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateAppProFileMetadata' with the minimum fields required to make a request.
--
updateAppProFileMetadata
    :: UpdateAppProFileMetadata
updateAppProFileMetadata = UpdateAppProFileMetadata'


instance FromJSON UpdateAppProFileMetadata where
        parseJSON
          = withObject "UpdateAppProFileMetadata"
              (\ o -> pure UpdateAppProFileMetadata')

instance ToJSON UpdateAppProFileMetadata where
        toJSON = const emptyObject

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

-- | A backup of a Cloud Bigtable table.
--
-- /See:/ 'backup' smart constructor.
data Backup =
  Backup'
    { _bSizeBytes :: !(Maybe (Textual Int64))
    , _bState :: !(Maybe BackupState)
    , _bStartTime :: !(Maybe DateTime')
    , _bSourceTable :: !(Maybe Text)
    , _bName :: !(Maybe Text)
    , _bEndTime :: !(Maybe DateTime')
    , _bExpireTime :: !(Maybe DateTime')
    , _bEncryptionInfo :: !(Maybe EncryptionInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Backup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bSizeBytes'
--
-- * 'bState'
--
-- * 'bStartTime'
--
-- * 'bSourceTable'
--
-- * 'bName'
--
-- * 'bEndTime'
--
-- * 'bExpireTime'
--
-- * 'bEncryptionInfo'
backup
    :: Backup
backup =
  Backup'
    { _bSizeBytes = Nothing
    , _bState = Nothing
    , _bStartTime = Nothing
    , _bSourceTable = Nothing
    , _bName = Nothing
    , _bEndTime = Nothing
    , _bExpireTime = Nothing
    , _bEncryptionInfo = Nothing
    }


-- | Output only. Size of the backup in bytes.
bSizeBytes :: Lens' Backup (Maybe Int64)
bSizeBytes
  = lens _bSizeBytes (\ s a -> s{_bSizeBytes = a}) .
      mapping _Coerce

-- | Output only. The current state of the backup.
bState :: Lens' Backup (Maybe BackupState)
bState = lens _bState (\ s a -> s{_bState = a})

-- | Output only. \`start_time\` is the time that the backup was started
-- (i.e. approximately the time the CreateBackup request is received). The
-- row data in this backup will be no older than this timestamp.
bStartTime :: Lens' Backup (Maybe UTCTime)
bStartTime
  = lens _bStartTime (\ s a -> s{_bStartTime = a}) .
      mapping _DateTime

-- | Required. Immutable. Name of the table from which this backup was
-- created. This needs to be in the same instance as the backup. Values are
-- of the form
-- \`projects\/{project}\/instances\/{instance}\/tables\/{source_table}\`.
bSourceTable :: Lens' Backup (Maybe Text)
bSourceTable
  = lens _bSourceTable (\ s a -> s{_bSourceTable = a})

-- | A globally unique identifier for the backup which cannot be changed.
-- Values are of the form
-- \`projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/
-- backups\/_a-zA-Z0-9*\` The final segment of the name must be between 1
-- and 50 characters in length. The backup is stored in the cluster
-- identified by the prefix of the backup name of the form
-- \`projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\`.
bName :: Lens' Backup (Maybe Text)
bName = lens _bName (\ s a -> s{_bName = a})

-- | Output only. \`end_time\` is the time that the backup was finished. The
-- row data in the backup will be no newer than this timestamp.
bEndTime :: Lens' Backup (Maybe UTCTime)
bEndTime
  = lens _bEndTime (\ s a -> s{_bEndTime = a}) .
      mapping _DateTime

-- | Required. The expiration time of the backup, with microseconds
-- granularity that must be at least 6 hours and at most 30 days from the
-- time the request is received. Once the \`expire_time\` has passed, Cloud
-- Bigtable will delete the backup and free the resources used by the
-- backup.
bExpireTime :: Lens' Backup (Maybe UTCTime)
bExpireTime
  = lens _bExpireTime (\ s a -> s{_bExpireTime = a}) .
      mapping _DateTime

-- | Output only. The encryption information for the backup.
bEncryptionInfo :: Lens' Backup (Maybe EncryptionInfo)
bEncryptionInfo
  = lens _bEncryptionInfo
      (\ s a -> s{_bEncryptionInfo = a})

instance FromJSON Backup where
        parseJSON
          = withObject "Backup"
              (\ o ->
                 Backup' <$>
                   (o .:? "sizeBytes") <*> (o .:? "state") <*>
                     (o .:? "startTime")
                     <*> (o .:? "sourceTable")
                     <*> (o .:? "name")
                     <*> (o .:? "endTime")
                     <*> (o .:? "expireTime")
                     <*> (o .:? "encryptionInfo"))

instance ToJSON Backup where
        toJSON Backup'{..}
          = object
              (catMaybes
                 [("sizeBytes" .=) <$> _bSizeBytes,
                  ("state" .=) <$> _bState,
                  ("startTime" .=) <$> _bStartTime,
                  ("sourceTable" .=) <$> _bSourceTable,
                  ("name" .=) <$> _bName, ("endTime" .=) <$> _bEndTime,
                  ("expireTime" .=) <$> _bExpireTime,
                  ("encryptionInfo" .=) <$> _bEncryptionInfo])

-- | The metadata for the Operation returned by UpdateCluster.
--
-- /See:/ 'updateClusterMetadata' smart constructor.
data UpdateClusterMetadata =
  UpdateClusterMetadata'
    { _ucmRequestTime :: !(Maybe DateTime')
    , _ucmOriginalRequest :: !(Maybe Cluster)
    , _ucmFinishTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateClusterMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucmRequestTime'
--
-- * 'ucmOriginalRequest'
--
-- * 'ucmFinishTime'
updateClusterMetadata
    :: UpdateClusterMetadata
updateClusterMetadata =
  UpdateClusterMetadata'
    { _ucmRequestTime = Nothing
    , _ucmOriginalRequest = Nothing
    , _ucmFinishTime = Nothing
    }


-- | The time at which the original request was received.
ucmRequestTime :: Lens' UpdateClusterMetadata (Maybe UTCTime)
ucmRequestTime
  = lens _ucmRequestTime
      (\ s a -> s{_ucmRequestTime = a})
      . mapping _DateTime

-- | The request that prompted the initiation of this UpdateCluster
-- operation.
ucmOriginalRequest :: Lens' UpdateClusterMetadata (Maybe Cluster)
ucmOriginalRequest
  = lens _ucmOriginalRequest
      (\ s a -> s{_ucmOriginalRequest = a})

-- | The time at which the operation failed or was completed successfully.
ucmFinishTime :: Lens' UpdateClusterMetadata (Maybe UTCTime)
ucmFinishTime
  = lens _ucmFinishTime
      (\ s a -> s{_ucmFinishTime = a})
      . mapping _DateTime

instance FromJSON UpdateClusterMetadata where
        parseJSON
          = withObject "UpdateClusterMetadata"
              (\ o ->
                 UpdateClusterMetadata' <$>
                   (o .:? "requestTime") <*> (o .:? "originalRequest")
                     <*> (o .:? "finishTime"))

instance ToJSON UpdateClusterMetadata where
        toJSON UpdateClusterMetadata'{..}
          = object
              (catMaybes
                 [("requestTime" .=) <$> _ucmRequestTime,
                  ("originalRequest" .=) <$> _ucmOriginalRequest,
                  ("finishTime" .=) <$> _ucmFinishTime])

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

-- | Added to the error payload.
--
-- /See:/ 'failureTrace' smart constructor.
newtype FailureTrace =
  FailureTrace'
    { _ftFrames :: Maybe [Frame]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FailureTrace' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftFrames'
failureTrace
    :: FailureTrace
failureTrace = FailureTrace' {_ftFrames = Nothing}


ftFrames :: Lens' FailureTrace [Frame]
ftFrames
  = lens _ftFrames (\ s a -> s{_ftFrames = a}) .
      _Default
      . _Coerce

instance FromJSON FailureTrace where
        parseJSON
          = withObject "FailureTrace"
              (\ o ->
                 FailureTrace' <$> (o .:? "frames" .!= mempty))

instance ToJSON FailureTrace where
        toJSON FailureTrace'{..}
          = object (catMaybes [("frames" .=) <$> _ftFrames])

-- | Request message for
-- google.bigtable.admin.v2.BigtableTableAdmin.CheckConsistency
--
-- /See:/ 'checkConsistencyRequest' smart constructor.
newtype CheckConsistencyRequest =
  CheckConsistencyRequest'
    { _ccrConsistencyToken :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckConsistencyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrConsistencyToken'
checkConsistencyRequest
    :: CheckConsistencyRequest
checkConsistencyRequest =
  CheckConsistencyRequest' {_ccrConsistencyToken = Nothing}


-- | Required. The token created using GenerateConsistencyToken for the
-- Table.
ccrConsistencyToken :: Lens' CheckConsistencyRequest (Maybe Text)
ccrConsistencyToken
  = lens _ccrConsistencyToken
      (\ s a -> s{_ccrConsistencyToken = a})

instance FromJSON CheckConsistencyRequest where
        parseJSON
          = withObject "CheckConsistencyRequest"
              (\ o ->
                 CheckConsistencyRequest' <$>
                   (o .:? "consistencyToken"))

instance ToJSON CheckConsistencyRequest where
        toJSON CheckConsistencyRequest'{..}
          = object
              (catMaybes
                 [("consistencyToken" .=) <$> _ccrConsistencyToken])

-- | Response message for
-- google.bigtable.admin.v2.BigtableTableAdmin.ListTables
--
-- /See:/ 'listTablesResponse' smart constructor.
data ListTablesResponse =
  ListTablesResponse'
    { _ltrNextPageToken :: !(Maybe Text)
    , _ltrTables :: !(Maybe [Table])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListTablesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrNextPageToken'
--
-- * 'ltrTables'
listTablesResponse
    :: ListTablesResponse
listTablesResponse =
  ListTablesResponse' {_ltrNextPageToken = Nothing, _ltrTables = Nothing}


-- | Set if not all tables could be returned in a single response. Pass this
-- value to \`page_token\` in another request to get the next page of
-- results.
ltrNextPageToken :: Lens' ListTablesResponse (Maybe Text)
ltrNextPageToken
  = lens _ltrNextPageToken
      (\ s a -> s{_ltrNextPageToken = a})

-- | The tables present in the requested instance.
ltrTables :: Lens' ListTablesResponse [Table]
ltrTables
  = lens _ltrTables (\ s a -> s{_ltrTables = a}) .
      _Default
      . _Coerce

instance FromJSON ListTablesResponse where
        parseJSON
          = withObject "ListTablesResponse"
              (\ o ->
                 ListTablesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "tables" .!= mempty))

instance ToJSON ListTablesResponse where
        toJSON ListTablesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltrNextPageToken,
                  ("tables" .=) <$> _ltrTables])

-- | The request for RestoreTable.
--
-- /See:/ 'restoreTableRequest' smart constructor.
data RestoreTableRequest =
  RestoreTableRequest'
    { _rtrBackup :: !(Maybe Text)
    , _rtrTableId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RestoreTableRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtrBackup'
--
-- * 'rtrTableId'
restoreTableRequest
    :: RestoreTableRequest
restoreTableRequest =
  RestoreTableRequest' {_rtrBackup = Nothing, _rtrTableId = Nothing}


-- | Name of the backup from which to restore. Values are of the form
-- \`projects\/\/instances\/\/clusters\/\/backups\/\`.
rtrBackup :: Lens' RestoreTableRequest (Maybe Text)
rtrBackup
  = lens _rtrBackup (\ s a -> s{_rtrBackup = a})

-- | Required. The id of the table to create and restore to. This table must
-- not already exist. The \`table_id\` appended to \`parent\` forms the
-- full table name of the form \`projects\/\/instances\/\/tables\/\`.
rtrTableId :: Lens' RestoreTableRequest (Maybe Text)
rtrTableId
  = lens _rtrTableId (\ s a -> s{_rtrTableId = a})

instance FromJSON RestoreTableRequest where
        parseJSON
          = withObject "RestoreTableRequest"
              (\ o ->
                 RestoreTableRequest' <$>
                   (o .:? "backup") <*> (o .:? "tableId"))

instance ToJSON RestoreTableRequest where
        toJSON RestoreTableRequest'{..}
          = object
              (catMaybes
                 [("backup" .=) <$> _rtrBackup,
                  ("tableId" .=) <$> _rtrTableId])

-- | Metadata type for the operation returned by CreateBackup.
--
-- /See:/ 'createBackupMetadata' smart constructor.
data CreateBackupMetadata =
  CreateBackupMetadata'
    { _cbmStartTime :: !(Maybe DateTime')
    , _cbmSourceTable :: !(Maybe Text)
    , _cbmName :: !(Maybe Text)
    , _cbmEndTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateBackupMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbmStartTime'
--
-- * 'cbmSourceTable'
--
-- * 'cbmName'
--
-- * 'cbmEndTime'
createBackupMetadata
    :: CreateBackupMetadata
createBackupMetadata =
  CreateBackupMetadata'
    { _cbmStartTime = Nothing
    , _cbmSourceTable = Nothing
    , _cbmName = Nothing
    , _cbmEndTime = Nothing
    }


-- | The time at which this operation started.
cbmStartTime :: Lens' CreateBackupMetadata (Maybe UTCTime)
cbmStartTime
  = lens _cbmStartTime (\ s a -> s{_cbmStartTime = a})
      . mapping _DateTime

-- | The name of the table the backup is created from.
cbmSourceTable :: Lens' CreateBackupMetadata (Maybe Text)
cbmSourceTable
  = lens _cbmSourceTable
      (\ s a -> s{_cbmSourceTable = a})

-- | The name of the backup being created.
cbmName :: Lens' CreateBackupMetadata (Maybe Text)
cbmName = lens _cbmName (\ s a -> s{_cbmName = a})

-- | If set, the time at which this operation finished or was cancelled.
cbmEndTime :: Lens' CreateBackupMetadata (Maybe UTCTime)
cbmEndTime
  = lens _cbmEndTime (\ s a -> s{_cbmEndTime = a}) .
      mapping _DateTime

instance FromJSON CreateBackupMetadata where
        parseJSON
          = withObject "CreateBackupMetadata"
              (\ o ->
                 CreateBackupMetadata' <$>
                   (o .:? "startTime") <*> (o .:? "sourceTable") <*>
                     (o .:? "name")
                     <*> (o .:? "endTime"))

instance ToJSON CreateBackupMetadata where
        toJSON CreateBackupMetadata'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _cbmStartTime,
                  ("sourceTable" .=) <$> _cbmSourceTable,
                  ("name" .=) <$> _cbmName,
                  ("endTime" .=) <$> _cbmEndTime])

-- | Request message for BigtableInstanceAdmin.PartialUpdateInstance.
--
-- /See:/ 'partialUpdateInstanceRequest' smart constructor.
data PartialUpdateInstanceRequest =
  PartialUpdateInstanceRequest'
    { _puirUpdateMask :: !(Maybe GFieldMask)
    , _puirInstance :: !(Maybe Instance)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartialUpdateInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puirUpdateMask'
--
-- * 'puirInstance'
partialUpdateInstanceRequest
    :: PartialUpdateInstanceRequest
partialUpdateInstanceRequest =
  PartialUpdateInstanceRequest'
    {_puirUpdateMask = Nothing, _puirInstance = Nothing}


-- | Required. The subset of Instance fields which should be replaced. Must
-- be explicitly set.
puirUpdateMask :: Lens' PartialUpdateInstanceRequest (Maybe GFieldMask)
puirUpdateMask
  = lens _puirUpdateMask
      (\ s a -> s{_puirUpdateMask = a})

-- | Required. The Instance which will (partially) replace the current value.
puirInstance :: Lens' PartialUpdateInstanceRequest (Maybe Instance)
puirInstance
  = lens _puirInstance (\ s a -> s{_puirInstance = a})

instance FromJSON PartialUpdateInstanceRequest where
        parseJSON
          = withObject "PartialUpdateInstanceRequest"
              (\ o ->
                 PartialUpdateInstanceRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "instance"))

instance ToJSON PartialUpdateInstanceRequest where
        toJSON PartialUpdateInstanceRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _puirUpdateMask,
                  ("instance" .=) <$> _puirInstance])

-- | Rule for determining which cells to delete during garbage collection.
--
-- /See:/ 'gcRule' smart constructor.
data GcRule =
  GcRule'
    { _grMaxAge :: !(Maybe GDuration)
    , _grUnion :: !(Maybe Union)
    , _grIntersection :: !(Maybe Intersection)
    , _grMaxNumVersions :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GcRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grMaxAge'
--
-- * 'grUnion'
--
-- * 'grIntersection'
--
-- * 'grMaxNumVersions'
gcRule
    :: GcRule
gcRule =
  GcRule'
    { _grMaxAge = Nothing
    , _grUnion = Nothing
    , _grIntersection = Nothing
    , _grMaxNumVersions = Nothing
    }


-- | Delete cells in a column older than the given age. Values must be at
-- least one millisecond, and will be truncated to microsecond granularity.
grMaxAge :: Lens' GcRule (Maybe Scientific)
grMaxAge
  = lens _grMaxAge (\ s a -> s{_grMaxAge = a}) .
      mapping _GDuration

-- | Delete cells that would be deleted by any nested rule.
grUnion :: Lens' GcRule (Maybe Union)
grUnion = lens _grUnion (\ s a -> s{_grUnion = a})

-- | Delete cells that would be deleted by every nested rule.
grIntersection :: Lens' GcRule (Maybe Intersection)
grIntersection
  = lens _grIntersection
      (\ s a -> s{_grIntersection = a})

-- | Delete all cells in a column except the most recent N.
grMaxNumVersions :: Lens' GcRule (Maybe Int32)
grMaxNumVersions
  = lens _grMaxNumVersions
      (\ s a -> s{_grMaxNumVersions = a})
      . mapping _Coerce

instance FromJSON GcRule where
        parseJSON
          = withObject "GcRule"
              (\ o ->
                 GcRule' <$>
                   (o .:? "maxAge") <*> (o .:? "union") <*>
                     (o .:? "intersection")
                     <*> (o .:? "maxNumVersions"))

instance ToJSON GcRule where
        toJSON GcRule'{..}
          = object
              (catMaybes
                 [("maxAge" .=) <$> _grMaxAge,
                  ("union" .=) <$> _grUnion,
                  ("intersection" .=) <$> _grIntersection,
                  ("maxNumVersions" .=) <$> _grMaxNumVersions])

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

-- | A configuration object describing how Cloud Bigtable should treat
-- traffic from a particular end user application.
--
-- /See:/ 'appProFile' smart constructor.
data AppProFile =
  AppProFile'
    { _apfSingleClusterRouting :: !(Maybe SingleClusterRouting)
    , _apfEtag :: !(Maybe Text)
    , _apfMultiClusterRoutingUseAny :: !(Maybe MultiClusterRoutingUseAny)
    , _apfName :: !(Maybe Text)
    , _apfDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppProFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apfSingleClusterRouting'
--
-- * 'apfEtag'
--
-- * 'apfMultiClusterRoutingUseAny'
--
-- * 'apfName'
--
-- * 'apfDescription'
appProFile
    :: AppProFile
appProFile =
  AppProFile'
    { _apfSingleClusterRouting = Nothing
    , _apfEtag = Nothing
    , _apfMultiClusterRoutingUseAny = Nothing
    , _apfName = Nothing
    , _apfDescription = Nothing
    }


-- | Use a single-cluster routing policy.
apfSingleClusterRouting :: Lens' AppProFile (Maybe SingleClusterRouting)
apfSingleClusterRouting
  = lens _apfSingleClusterRouting
      (\ s a -> s{_apfSingleClusterRouting = a})

-- | Strongly validated etag for optimistic concurrency control. Preserve the
-- value returned from \`GetAppProfile\` when calling \`UpdateAppProfile\`
-- to fail the request if there has been a modification in the mean time.
-- The \`update_mask\` of the request need not include \`etag\` for this
-- protection to apply. See
-- [Wikipedia](https:\/\/en.wikipedia.org\/wiki\/HTTP_ETag) and [RFC
-- 7232](https:\/\/tools.ietf.org\/html\/rfc7232#section-2.3) for more
-- details.
apfEtag :: Lens' AppProFile (Maybe Text)
apfEtag = lens _apfEtag (\ s a -> s{_apfEtag = a})

-- | Use a multi-cluster routing policy.
apfMultiClusterRoutingUseAny :: Lens' AppProFile (Maybe MultiClusterRoutingUseAny)
apfMultiClusterRoutingUseAny
  = lens _apfMultiClusterRoutingUseAny
      (\ s a -> s{_apfMultiClusterRoutingUseAny = a})

-- | The unique name of the app profile. Values are of the form
-- \`projects\/{project}\/instances\/{instance}\/appProfiles\/_a-zA-Z0-9*\`.
apfName :: Lens' AppProFile (Maybe Text)
apfName = lens _apfName (\ s a -> s{_apfName = a})

-- | Long form description of the use case for this AppProfile.
apfDescription :: Lens' AppProFile (Maybe Text)
apfDescription
  = lens _apfDescription
      (\ s a -> s{_apfDescription = a})

instance FromJSON AppProFile where
        parseJSON
          = withObject "AppProFile"
              (\ o ->
                 AppProFile' <$>
                   (o .:? "singleClusterRouting") <*> (o .:? "etag") <*>
                     (o .:? "multiClusterRoutingUseAny")
                     <*> (o .:? "name")
                     <*> (o .:? "description"))

instance ToJSON AppProFile where
        toJSON AppProFile'{..}
          = object
              (catMaybes
                 [("singleClusterRouting" .=) <$>
                    _apfSingleClusterRouting,
                  ("etag" .=) <$> _apfEtag,
                  ("multiClusterRoutingUseAny" .=) <$>
                    _apfMultiClusterRoutingUseAny,
                  ("name" .=) <$> _apfName,
                  ("description" .=) <$> _apfDescription])

--
-- /See:/ 'frame' smart constructor.
data Frame =
  Frame'
    { _fWorkflowGuid :: !(Maybe Text)
    , _fZoneId :: !(Maybe Text)
    , _fTargetName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Frame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fWorkflowGuid'
--
-- * 'fZoneId'
--
-- * 'fTargetName'
frame
    :: Frame
frame =
  Frame' {_fWorkflowGuid = Nothing, _fZoneId = Nothing, _fTargetName = Nothing}


fWorkflowGuid :: Lens' Frame (Maybe Text)
fWorkflowGuid
  = lens _fWorkflowGuid
      (\ s a -> s{_fWorkflowGuid = a})

fZoneId :: Lens' Frame (Maybe Text)
fZoneId = lens _fZoneId (\ s a -> s{_fZoneId = a})

fTargetName :: Lens' Frame (Maybe Text)
fTargetName
  = lens _fTargetName (\ s a -> s{_fTargetName = a})

instance FromJSON Frame where
        parseJSON
          = withObject "Frame"
              (\ o ->
                 Frame' <$>
                   (o .:? "workflowGuid") <*> (o .:? "zoneId") <*>
                     (o .:? "targetName"))

instance ToJSON Frame where
        toJSON Frame'{..}
          = object
              (catMaybes
                 [("workflowGuid" .=) <$> _fWorkflowGuid,
                  ("zoneId" .=) <$> _fZoneId,
                  ("targetName" .=) <$> _fTargetName])

-- | Required. The clusters to be created within the instance, mapped by
-- desired cluster ID, e.g., just \`mycluster\` rather than
-- \`projects\/myproject\/instances\/myinstance\/clusters\/mycluster\`.
-- Fields marked \`OutputOnly\` must be left blank. Currently, at most four
-- clusters can be specified.
--
-- /See:/ 'createInstanceRequestClusters' smart constructor.
newtype CreateInstanceRequestClusters =
  CreateInstanceRequestClusters'
    { _circAddtional :: HashMap Text Cluster
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateInstanceRequestClusters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'circAddtional'
createInstanceRequestClusters
    :: HashMap Text Cluster -- ^ 'circAddtional'
    -> CreateInstanceRequestClusters
createInstanceRequestClusters pCircAddtional_ =
  CreateInstanceRequestClusters' {_circAddtional = _Coerce # pCircAddtional_}


circAddtional :: Lens' CreateInstanceRequestClusters (HashMap Text Cluster)
circAddtional
  = lens _circAddtional
      (\ s a -> s{_circAddtional = a})
      . _Coerce

instance FromJSON CreateInstanceRequestClusters where
        parseJSON
          = withObject "CreateInstanceRequestClusters"
              (\ o ->
                 CreateInstanceRequestClusters' <$>
                   (parseJSONObject o))

instance ToJSON CreateInstanceRequestClusters where
        toJSON = toJSON . _circAddtional

-- | Response message for
-- google.bigtable.admin.v2.BigtableTableAdmin.GenerateConsistencyToken
--
-- /See:/ 'generateConsistencyTokenResponse' smart constructor.
newtype GenerateConsistencyTokenResponse =
  GenerateConsistencyTokenResponse'
    { _gctrConsistencyToken :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GenerateConsistencyTokenResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gctrConsistencyToken'
generateConsistencyTokenResponse
    :: GenerateConsistencyTokenResponse
generateConsistencyTokenResponse =
  GenerateConsistencyTokenResponse' {_gctrConsistencyToken = Nothing}


-- | The generated consistency token.
gctrConsistencyToken :: Lens' GenerateConsistencyTokenResponse (Maybe Text)
gctrConsistencyToken
  = lens _gctrConsistencyToken
      (\ s a -> s{_gctrConsistencyToken = a})

instance FromJSON GenerateConsistencyTokenResponse
         where
        parseJSON
          = withObject "GenerateConsistencyTokenResponse"
              (\ o ->
                 GenerateConsistencyTokenResponse' <$>
                   (o .:? "consistencyToken"))

instance ToJSON GenerateConsistencyTokenResponse
         where
        toJSON GenerateConsistencyTokenResponse'{..}
          = object
              (catMaybes
                 [("consistencyToken" .=) <$> _gctrConsistencyToken])

-- | Cloud Key Management Service (Cloud KMS) settings for a CMEK-protected
-- cluster.
--
-- /See:/ 'encryptionConfig' smart constructor.
newtype EncryptionConfig =
  EncryptionConfig'
    { _ecKmsKeyName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EncryptionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecKmsKeyName'
encryptionConfig
    :: EncryptionConfig
encryptionConfig = EncryptionConfig' {_ecKmsKeyName = Nothing}


-- | Describes the Cloud KMS encryption key that will be used to protect the
-- destination Bigtable cluster. The requirements for this key are: 1) The
-- Cloud Bigtable service account associated with the project that contains
-- this cluster must be granted the
-- \`cloudkms.cryptoKeyEncrypterDecrypter\` role on the CMEK key. 2) Only
-- regional keys can be used and the region of the CMEK key must match the
-- region of the cluster. 3) All clusters within an instance must use the
-- same CMEK key. Values are of the form
-- \`projects\/{project}\/locations\/{location}\/keyRings\/{keyring}\/cryptoKeys\/{key}\`
ecKmsKeyName :: Lens' EncryptionConfig (Maybe Text)
ecKmsKeyName
  = lens _ecKmsKeyName (\ s a -> s{_ecKmsKeyName = a})

instance FromJSON EncryptionConfig where
        parseJSON
          = withObject "EncryptionConfig"
              (\ o -> EncryptionConfig' <$> (o .:? "kmsKeyName"))

instance ToJSON EncryptionConfig where
        toJSON EncryptionConfig'{..}
          = object
              (catMaybes [("kmsKeyName" .=) <$> _ecKmsKeyName])

-- | Request message for
-- google.bigtable.admin.v2.BigtableTableAdmin.DropRowRange
--
-- /See:/ 'dropRowRangeRequest' smart constructor.
data DropRowRangeRequest =
  DropRowRangeRequest'
    { _drrrRowKeyPrefix :: !(Maybe Bytes)
    , _drrrDeleteAllDataFromTable :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DropRowRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrrRowKeyPrefix'
--
-- * 'drrrDeleteAllDataFromTable'
dropRowRangeRequest
    :: DropRowRangeRequest
dropRowRangeRequest =
  DropRowRangeRequest'
    {_drrrRowKeyPrefix = Nothing, _drrrDeleteAllDataFromTable = Nothing}


-- | Delete all rows that start with this row key prefix. Prefix cannot be
-- zero length.
drrrRowKeyPrefix :: Lens' DropRowRangeRequest (Maybe ByteString)
drrrRowKeyPrefix
  = lens _drrrRowKeyPrefix
      (\ s a -> s{_drrrRowKeyPrefix = a})
      . mapping _Bytes

-- | Delete all rows in the table. Setting this to false is a no-op.
drrrDeleteAllDataFromTable :: Lens' DropRowRangeRequest (Maybe Bool)
drrrDeleteAllDataFromTable
  = lens _drrrDeleteAllDataFromTable
      (\ s a -> s{_drrrDeleteAllDataFromTable = a})

instance FromJSON DropRowRangeRequest where
        parseJSON
          = withObject "DropRowRangeRequest"
              (\ o ->
                 DropRowRangeRequest' <$>
                   (o .:? "rowKeyPrefix") <*>
                     (o .:? "deleteAllDataFromTable"))

instance ToJSON DropRowRangeRequest where
        toJSON DropRowRangeRequest'{..}
          = object
              (catMaybes
                 [("rowKeyPrefix" .=) <$> _drrrRowKeyPrefix,
                  ("deleteAllDataFromTable" .=) <$>
                    _drrrDeleteAllDataFromTable])

-- | The metadata for the Operation returned by UpdateInstance.
--
-- /See:/ 'updateInstanceMetadata' smart constructor.
data UpdateInstanceMetadata =
  UpdateInstanceMetadata'
    { _uimRequestTime :: !(Maybe DateTime')
    , _uimOriginalRequest :: !(Maybe PartialUpdateInstanceRequest)
    , _uimFinishTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateInstanceMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uimRequestTime'
--
-- * 'uimOriginalRequest'
--
-- * 'uimFinishTime'
updateInstanceMetadata
    :: UpdateInstanceMetadata
updateInstanceMetadata =
  UpdateInstanceMetadata'
    { _uimRequestTime = Nothing
    , _uimOriginalRequest = Nothing
    , _uimFinishTime = Nothing
    }


-- | The time at which the original request was received.
uimRequestTime :: Lens' UpdateInstanceMetadata (Maybe UTCTime)
uimRequestTime
  = lens _uimRequestTime
      (\ s a -> s{_uimRequestTime = a})
      . mapping _DateTime

-- | The request that prompted the initiation of this UpdateInstance
-- operation.
uimOriginalRequest :: Lens' UpdateInstanceMetadata (Maybe PartialUpdateInstanceRequest)
uimOriginalRequest
  = lens _uimOriginalRequest
      (\ s a -> s{_uimOriginalRequest = a})

-- | The time at which the operation failed or was completed successfully.
uimFinishTime :: Lens' UpdateInstanceMetadata (Maybe UTCTime)
uimFinishTime
  = lens _uimFinishTime
      (\ s a -> s{_uimFinishTime = a})
      . mapping _DateTime

instance FromJSON UpdateInstanceMetadata where
        parseJSON
          = withObject "UpdateInstanceMetadata"
              (\ o ->
                 UpdateInstanceMetadata' <$>
                   (o .:? "requestTime") <*> (o .:? "originalRequest")
                     <*> (o .:? "finishTime"))

instance ToJSON UpdateInstanceMetadata where
        toJSON UpdateInstanceMetadata'{..}
          = object
              (catMaybes
                 [("requestTime" .=) <$> _uimRequestTime,
                  ("originalRequest" .=) <$> _uimOriginalRequest,
                  ("finishTime" .=) <$> _uimFinishTime])

-- | A GcRule which deletes cells matching all of the given rules.
--
-- /See:/ 'intersection' smart constructor.
newtype Intersection =
  Intersection'
    { _iRules :: Maybe [GcRule]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Intersection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iRules'
intersection
    :: Intersection
intersection = Intersection' {_iRules = Nothing}


-- | Only delete cells which would be deleted by every element of \`rules\`.
iRules :: Lens' Intersection [GcRule]
iRules
  = lens _iRules (\ s a -> s{_iRules = a}) . _Default .
      _Coerce

instance FromJSON Intersection where
        parseJSON
          = withObject "Intersection"
              (\ o -> Intersection' <$> (o .:? "rules" .!= mempty))

instance ToJSON Intersection where
        toJSON Intersection'{..}
          = object (catMaybes [("rules" .=) <$> _iRules])

-- | A set of columns within a table which share a common configuration.
--
-- /See:/ 'columnFamily' smart constructor.
newtype ColumnFamily =
  ColumnFamily'
    { _cfGcRule :: Maybe GcRule
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ColumnFamily' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfGcRule'
columnFamily
    :: ColumnFamily
columnFamily = ColumnFamily' {_cfGcRule = Nothing}


-- | Garbage collection rule specified as a protobuf. Must serialize to at
-- most 500 bytes. NOTE: Garbage collection executes opportunistically in
-- the background, and so it\'s possible for reads to return a cell even if
-- it matches the active GC expression for its family.
cfGcRule :: Lens' ColumnFamily (Maybe GcRule)
cfGcRule = lens _cfGcRule (\ s a -> s{_cfGcRule = a})

instance FromJSON ColumnFamily where
        parseJSON
          = withObject "ColumnFamily"
              (\ o -> ColumnFamily' <$> (o .:? "gcRule"))

instance ToJSON ColumnFamily where
        toJSON ColumnFamily'{..}
          = object (catMaybes [("gcRule" .=) <$> _cfGcRule])

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

-- | Response message for BigtableInstanceAdmin.ListClusters.
--
-- /See:/ 'listClustersResponse' smart constructor.
data ListClustersResponse =
  ListClustersResponse'
    { _lcrNextPageToken :: !(Maybe Text)
    , _lcrFailedLocations :: !(Maybe [Text])
    , _lcrClusters :: !(Maybe [Cluster])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListClustersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrNextPageToken'
--
-- * 'lcrFailedLocations'
--
-- * 'lcrClusters'
listClustersResponse
    :: ListClustersResponse
listClustersResponse =
  ListClustersResponse'
    { _lcrNextPageToken = Nothing
    , _lcrFailedLocations = Nothing
    , _lcrClusters = Nothing
    }


-- | DEPRECATED: This field is unused and ignored.
lcrNextPageToken :: Lens' ListClustersResponse (Maybe Text)
lcrNextPageToken
  = lens _lcrNextPageToken
      (\ s a -> s{_lcrNextPageToken = a})

-- | Locations from which Cluster information could not be retrieved, due to
-- an outage or some other transient condition. Clusters from these
-- locations may be missing from \`clusters\`, or may only have partial
-- information returned. Values are of the form \`projects\/\/locations\/\`
lcrFailedLocations :: Lens' ListClustersResponse [Text]
lcrFailedLocations
  = lens _lcrFailedLocations
      (\ s a -> s{_lcrFailedLocations = a})
      . _Default
      . _Coerce

-- | The list of requested clusters.
lcrClusters :: Lens' ListClustersResponse [Cluster]
lcrClusters
  = lens _lcrClusters (\ s a -> s{_lcrClusters = a}) .
      _Default
      . _Coerce

instance FromJSON ListClustersResponse where
        parseJSON
          = withObject "ListClustersResponse"
              (\ o ->
                 ListClustersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "failedLocations" .!= mempty)
                     <*> (o .:? "clusters" .!= mempty))

instance ToJSON ListClustersResponse where
        toJSON ListClustersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcrNextPageToken,
                  ("failedLocations" .=) <$> _lcrFailedLocations,
                  ("clusters" .=) <$> _lcrClusters])

-- | Information about a backup.
--
-- /See:/ 'backupInfo' smart constructor.
data BackupInfo =
  BackupInfo'
    { _biStartTime :: !(Maybe DateTime')
    , _biSourceTable :: !(Maybe Text)
    , _biBackup :: !(Maybe Text)
    , _biEndTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackupInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'biStartTime'
--
-- * 'biSourceTable'
--
-- * 'biBackup'
--
-- * 'biEndTime'
backupInfo
    :: BackupInfo
backupInfo =
  BackupInfo'
    { _biStartTime = Nothing
    , _biSourceTable = Nothing
    , _biBackup = Nothing
    , _biEndTime = Nothing
    }


-- | Output only. The time that the backup was started. Row data in the
-- backup will be no older than this timestamp.
biStartTime :: Lens' BackupInfo (Maybe UTCTime)
biStartTime
  = lens _biStartTime (\ s a -> s{_biStartTime = a}) .
      mapping _DateTime

-- | Output only. Name of the table the backup was created from.
biSourceTable :: Lens' BackupInfo (Maybe Text)
biSourceTable
  = lens _biSourceTable
      (\ s a -> s{_biSourceTable = a})

-- | Output only. Name of the backup.
biBackup :: Lens' BackupInfo (Maybe Text)
biBackup = lens _biBackup (\ s a -> s{_biBackup = a})

-- | Output only. This time that the backup was finished. Row data in the
-- backup will be no newer than this timestamp.
biEndTime :: Lens' BackupInfo (Maybe UTCTime)
biEndTime
  = lens _biEndTime (\ s a -> s{_biEndTime = a}) .
      mapping _DateTime

instance FromJSON BackupInfo where
        parseJSON
          = withObject "BackupInfo"
              (\ o ->
                 BackupInfo' <$>
                   (o .:? "startTime") <*> (o .:? "sourceTable") <*>
                     (o .:? "backup")
                     <*> (o .:? "endTime"))

instance ToJSON BackupInfo where
        toJSON BackupInfo'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _biStartTime,
                  ("sourceTable" .=) <$> _biSourceTable,
                  ("backup" .=) <$> _biBackup,
                  ("endTime" .=) <$> _biEndTime])

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

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'locationLabels' smart constructor.
newtype LocationLabels =
  LocationLabels'
    { _llAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llAddtional'
locationLabels
    :: HashMap Text Text -- ^ 'llAddtional'
    -> LocationLabels
locationLabels pLlAddtional_ =
  LocationLabels' {_llAddtional = _Coerce # pLlAddtional_}


llAddtional :: Lens' LocationLabels (HashMap Text Text)
llAddtional
  = lens _llAddtional (\ s a -> s{_llAddtional = a}) .
      _Coerce

instance FromJSON LocationLabels where
        parseJSON
          = withObject "LocationLabels"
              (\ o -> LocationLabels' <$> (parseJSONObject o))

instance ToJSON LocationLabels where
        toJSON = toJSON . _llAddtional

-- | The metadata for the Operation returned by CreateInstance.
--
-- /See:/ 'createInstanceMetadata' smart constructor.
data CreateInstanceMetadata =
  CreateInstanceMetadata'
    { _cimRequestTime :: !(Maybe DateTime')
    , _cimOriginalRequest :: !(Maybe CreateInstanceRequest)
    , _cimFinishTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateInstanceMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cimRequestTime'
--
-- * 'cimOriginalRequest'
--
-- * 'cimFinishTime'
createInstanceMetadata
    :: CreateInstanceMetadata
createInstanceMetadata =
  CreateInstanceMetadata'
    { _cimRequestTime = Nothing
    , _cimOriginalRequest = Nothing
    , _cimFinishTime = Nothing
    }


-- | The time at which the original request was received.
cimRequestTime :: Lens' CreateInstanceMetadata (Maybe UTCTime)
cimRequestTime
  = lens _cimRequestTime
      (\ s a -> s{_cimRequestTime = a})
      . mapping _DateTime

-- | The request that prompted the initiation of this CreateInstance
-- operation.
cimOriginalRequest :: Lens' CreateInstanceMetadata (Maybe CreateInstanceRequest)
cimOriginalRequest
  = lens _cimOriginalRequest
      (\ s a -> s{_cimOriginalRequest = a})

-- | The time at which the operation failed or was completed successfully.
cimFinishTime :: Lens' CreateInstanceMetadata (Maybe UTCTime)
cimFinishTime
  = lens _cimFinishTime
      (\ s a -> s{_cimFinishTime = a})
      . mapping _DateTime

instance FromJSON CreateInstanceMetadata where
        parseJSON
          = withObject "CreateInstanceMetadata"
              (\ o ->
                 CreateInstanceMetadata' <$>
                   (o .:? "requestTime") <*> (o .:? "originalRequest")
                     <*> (o .:? "finishTime"))

instance ToJSON CreateInstanceMetadata where
        toJSON CreateInstanceMetadata'{..}
          = object
              (catMaybes
                 [("requestTime" .=) <$> _cimRequestTime,
                  ("originalRequest" .=) <$> _cimOriginalRequest,
                  ("finishTime" .=) <$> _cimFinishTime])

-- | Service-specific metadata. For example the available capacity at the
-- given location.
--
-- /See:/ 'locationMetadata' smart constructor.
newtype LocationMetadata =
  LocationMetadata'
    { _lmAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmAddtional'
locationMetadata
    :: HashMap Text JSONValue -- ^ 'lmAddtional'
    -> LocationMetadata
locationMetadata pLmAddtional_ =
  LocationMetadata' {_lmAddtional = _Coerce # pLmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
lmAddtional :: Lens' LocationMetadata (HashMap Text JSONValue)
lmAddtional
  = lens _lmAddtional (\ s a -> s{_lmAddtional = a}) .
      _Coerce

instance FromJSON LocationMetadata where
        parseJSON
          = withObject "LocationMetadata"
              (\ o -> LocationMetadata' <$> (parseJSONObject o))

instance ToJSON LocationMetadata where
        toJSON = toJSON . _lmAddtional

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

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

-- | Response message for BigtableInstanceAdmin.ListInstances.
--
-- /See:/ 'listInstancesResponse' smart constructor.
data ListInstancesResponse =
  ListInstancesResponse'
    { _lirNextPageToken :: !(Maybe Text)
    , _lirFailedLocations :: !(Maybe [Text])
    , _lirInstances :: !(Maybe [Instance])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirNextPageToken'
--
-- * 'lirFailedLocations'
--
-- * 'lirInstances'
listInstancesResponse
    :: ListInstancesResponse
listInstancesResponse =
  ListInstancesResponse'
    { _lirNextPageToken = Nothing
    , _lirFailedLocations = Nothing
    , _lirInstances = Nothing
    }


-- | DEPRECATED: This field is unused and ignored.
lirNextPageToken :: Lens' ListInstancesResponse (Maybe Text)
lirNextPageToken
  = lens _lirNextPageToken
      (\ s a -> s{_lirNextPageToken = a})

-- | Locations from which Instance information could not be retrieved, due to
-- an outage or some other transient condition. Instances whose Clusters
-- are all in one of the failed locations may be missing from
-- \`instances\`, and Instances with at least one Cluster in a failed
-- location may only have partial information returned. Values are of the
-- form \`projects\/\/locations\/\`
lirFailedLocations :: Lens' ListInstancesResponse [Text]
lirFailedLocations
  = lens _lirFailedLocations
      (\ s a -> s{_lirFailedLocations = a})
      . _Default
      . _Coerce

-- | The list of requested instances.
lirInstances :: Lens' ListInstancesResponse [Instance]
lirInstances
  = lens _lirInstances (\ s a -> s{_lirInstances = a})
      . _Default
      . _Coerce

instance FromJSON ListInstancesResponse where
        parseJSON
          = withObject "ListInstancesResponse"
              (\ o ->
                 ListInstancesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "failedLocations" .!= mempty)
                     <*> (o .:? "instances" .!= mempty))

instance ToJSON ListInstancesResponse where
        toJSON ListInstancesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lirNextPageToken,
                  ("failedLocations" .=) <$> _lirFailedLocations,
                  ("instances" .=) <$> _lirInstances])

-- | Metadata type for the long-running operation returned by RestoreTable.
--
-- /See:/ 'restoreTableMetadata' smart constructor.
data RestoreTableMetadata =
  RestoreTableMetadata'
    { _rtmOptimizeTableOperationName :: !(Maybe Text)
    , _rtmSourceType :: !(Maybe RestoreTableMetadataSourceType)
    , _rtmProgress :: !(Maybe OperationProgress)
    , _rtmName :: !(Maybe Text)
    , _rtmBackupInfo :: !(Maybe BackupInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RestoreTableMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtmOptimizeTableOperationName'
--
-- * 'rtmSourceType'
--
-- * 'rtmProgress'
--
-- * 'rtmName'
--
-- * 'rtmBackupInfo'
restoreTableMetadata
    :: RestoreTableMetadata
restoreTableMetadata =
  RestoreTableMetadata'
    { _rtmOptimizeTableOperationName = Nothing
    , _rtmSourceType = Nothing
    , _rtmProgress = Nothing
    , _rtmName = Nothing
    , _rtmBackupInfo = Nothing
    }


-- | If exists, the name of the long-running operation that will be used to
-- track the post-restore optimization process to optimize the performance
-- of the restored table. The metadata type of the long-running operation
-- is OptimizeRestoreTableMetadata. The response type is Empty. This
-- long-running operation may be automatically created by the system if
-- applicable after the RestoreTable long-running operation completes
-- successfully. This operation may not be created if the table is already
-- optimized or the restore was not successful.
rtmOptimizeTableOperationName :: Lens' RestoreTableMetadata (Maybe Text)
rtmOptimizeTableOperationName
  = lens _rtmOptimizeTableOperationName
      (\ s a -> s{_rtmOptimizeTableOperationName = a})

-- | The type of the restore source.
rtmSourceType :: Lens' RestoreTableMetadata (Maybe RestoreTableMetadataSourceType)
rtmSourceType
  = lens _rtmSourceType
      (\ s a -> s{_rtmSourceType = a})

-- | The progress of the RestoreTable operation.
rtmProgress :: Lens' RestoreTableMetadata (Maybe OperationProgress)
rtmProgress
  = lens _rtmProgress (\ s a -> s{_rtmProgress = a})

-- | Name of the table being created and restored to.
rtmName :: Lens' RestoreTableMetadata (Maybe Text)
rtmName = lens _rtmName (\ s a -> s{_rtmName = a})

rtmBackupInfo :: Lens' RestoreTableMetadata (Maybe BackupInfo)
rtmBackupInfo
  = lens _rtmBackupInfo
      (\ s a -> s{_rtmBackupInfo = a})

instance FromJSON RestoreTableMetadata where
        parseJSON
          = withObject "RestoreTableMetadata"
              (\ o ->
                 RestoreTableMetadata' <$>
                   (o .:? "optimizeTableOperationName") <*>
                     (o .:? "sourceType")
                     <*> (o .:? "progress")
                     <*> (o .:? "name")
                     <*> (o .:? "backupInfo"))

instance ToJSON RestoreTableMetadata where
        toJSON RestoreTableMetadata'{..}
          = object
              (catMaybes
                 [("optimizeTableOperationName" .=) <$>
                    _rtmOptimizeTableOperationName,
                  ("sourceType" .=) <$> _rtmSourceType,
                  ("progress" .=) <$> _rtmProgress,
                  ("name" .=) <$> _rtmName,
                  ("backupInfo" .=) <$> _rtmBackupInfo])

-- | Response message for
-- google.bigtable.admin.v2.BigtableTableAdmin.CheckConsistency
--
-- /See:/ 'checkConsistencyResponse' smart constructor.
newtype CheckConsistencyResponse =
  CheckConsistencyResponse'
    { _ccrConsistent :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckConsistencyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrConsistent'
checkConsistencyResponse
    :: CheckConsistencyResponse
checkConsistencyResponse = CheckConsistencyResponse' {_ccrConsistent = Nothing}


-- | True only if the token is consistent. A token is consistent if
-- replication has caught up with the restrictions specified in the
-- request.
ccrConsistent :: Lens' CheckConsistencyResponse (Maybe Bool)
ccrConsistent
  = lens _ccrConsistent
      (\ s a -> s{_ccrConsistent = a})

instance FromJSON CheckConsistencyResponse where
        parseJSON
          = withObject "CheckConsistencyResponse"
              (\ o ->
                 CheckConsistencyResponse' <$> (o .:? "consistent"))

instance ToJSON CheckConsistencyResponse where
        toJSON CheckConsistencyResponse'{..}
          = object
              (catMaybes [("consistent" .=) <$> _ccrConsistent])

-- | A create, update, or delete of a particular column family.
--
-- /See:/ 'modification' smart constructor.
data Modification =
  Modification'
    { _mDrop :: !(Maybe Bool)
    , _mCreate :: !(Maybe ColumnFamily)
    , _mId :: !(Maybe Text)
    , _mUpdate :: !(Maybe ColumnFamily)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Modification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mDrop'
--
-- * 'mCreate'
--
-- * 'mId'
--
-- * 'mUpdate'
modification
    :: Modification
modification =
  Modification'
    {_mDrop = Nothing, _mCreate = Nothing, _mId = Nothing, _mUpdate = Nothing}


-- | Drop (delete) the column family with the given ID, or fail if no such
-- family exists.
mDrop :: Lens' Modification (Maybe Bool)
mDrop = lens _mDrop (\ s a -> s{_mDrop = a})

-- | Create a new column family with the specified schema, or fail if one
-- already exists with the given ID.
mCreate :: Lens' Modification (Maybe ColumnFamily)
mCreate = lens _mCreate (\ s a -> s{_mCreate = a})

-- | The ID of the column family to be modified.
mId :: Lens' Modification (Maybe Text)
mId = lens _mId (\ s a -> s{_mId = a})

-- | Update an existing column family to the specified schema, or fail if no
-- column family exists with the given ID.
mUpdate :: Lens' Modification (Maybe ColumnFamily)
mUpdate = lens _mUpdate (\ s a -> s{_mUpdate = a})

instance FromJSON Modification where
        parseJSON
          = withObject "Modification"
              (\ o ->
                 Modification' <$>
                   (o .:? "drop") <*> (o .:? "create") <*> (o .:? "id")
                     <*> (o .:? "update"))

instance ToJSON Modification where
        toJSON Modification'{..}
          = object
              (catMaybes
                 [("drop" .=) <$> _mDrop, ("create" .=) <$> _mCreate,
                  ("id" .=) <$> _mId, ("update" .=) <$> _mUpdate])

-- | A collection of user data indexed by row, column, and timestamp. Each
-- table is served using the resources of its parent cluster.
--
-- /See:/ 'table' smart constructor.
data Table =
  Table'
    { _tGranularity :: !(Maybe TableGranularity)
    , _tName :: !(Maybe Text)
    , _tRestoreInfo :: !(Maybe RestoreInfo)
    , _tClusterStates :: !(Maybe TableClusterStates)
    , _tColumnFamilies :: !(Maybe TableColumnFamilies)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Table' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tGranularity'
--
-- * 'tName'
--
-- * 'tRestoreInfo'
--
-- * 'tClusterStates'
--
-- * 'tColumnFamilies'
table
    :: Table
table =
  Table'
    { _tGranularity = Nothing
    , _tName = Nothing
    , _tRestoreInfo = Nothing
    , _tClusterStates = Nothing
    , _tColumnFamilies = Nothing
    }


-- | Immutable. The granularity (i.e. \`MILLIS\`) at which timestamps are
-- stored in this table. Timestamps not matching the granularity will be
-- rejected. If unspecified at creation time, the value will be set to
-- \`MILLIS\`. Views: \`SCHEMA_VIEW\`, \`FULL\`.
tGranularity :: Lens' Table (Maybe TableGranularity)
tGranularity
  = lens _tGranularity (\ s a -> s{_tGranularity = a})

-- | The unique name of the table. Values are of the form
-- \`projects\/{project}\/instances\/{instance}\/tables\/_a-zA-Z0-9*\`.
-- Views: \`NAME_ONLY\`, \`SCHEMA_VIEW\`, \`REPLICATION_VIEW\`, \`FULL\`
tName :: Lens' Table (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | Output only. If this table was restored from another data source (e.g. a
-- backup), this field will be populated with information about the
-- restore.
tRestoreInfo :: Lens' Table (Maybe RestoreInfo)
tRestoreInfo
  = lens _tRestoreInfo (\ s a -> s{_tRestoreInfo = a})

-- | Output only. Map from cluster ID to per-cluster table state. If it could
-- not be determined whether or not the table has data in a particular
-- cluster (for example, if its zone is unavailable), then there will be an
-- entry for the cluster with UNKNOWN \`replication_status\`. Views:
-- \`REPLICATION_VIEW\`, \`ENCRYPTION_VIEW\`, \`FULL\`
tClusterStates :: Lens' Table (Maybe TableClusterStates)
tClusterStates
  = lens _tClusterStates
      (\ s a -> s{_tClusterStates = a})

-- | The column families configured for this table, mapped by column family
-- ID. Views: \`SCHEMA_VIEW\`, \`FULL\`
tColumnFamilies :: Lens' Table (Maybe TableColumnFamilies)
tColumnFamilies
  = lens _tColumnFamilies
      (\ s a -> s{_tColumnFamilies = a})

instance FromJSON Table where
        parseJSON
          = withObject "Table"
              (\ o ->
                 Table' <$>
                   (o .:? "granularity") <*> (o .:? "name") <*>
                     (o .:? "restoreInfo")
                     <*> (o .:? "clusterStates")
                     <*> (o .:? "columnFamilies"))

instance ToJSON Table where
        toJSON Table'{..}
          = object
              (catMaybes
                 [("granularity" .=) <$> _tGranularity,
                  ("name" .=) <$> _tName,
                  ("restoreInfo" .=) <$> _tRestoreInfo,
                  ("clusterStates" .=) <$> _tClusterStates,
                  ("columnFamilies" .=) <$> _tColumnFamilies])

-- | Metadata type for the long-running operation used to track the progress
-- of optimizations performed on a newly restored table. This long-running
-- operation is automatically created by the system after the successful
-- completion of a table restore, and cannot be cancelled.
--
-- /See:/ 'optimizeRestoredTableMetadata' smart constructor.
data OptimizeRestoredTableMetadata =
  OptimizeRestoredTableMetadata'
    { _ortmProgress :: !(Maybe OperationProgress)
    , _ortmName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OptimizeRestoredTableMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ortmProgress'
--
-- * 'ortmName'
optimizeRestoredTableMetadata
    :: OptimizeRestoredTableMetadata
optimizeRestoredTableMetadata =
  OptimizeRestoredTableMetadata' {_ortmProgress = Nothing, _ortmName = Nothing}


-- | The progress of the post-restore optimizations.
ortmProgress :: Lens' OptimizeRestoredTableMetadata (Maybe OperationProgress)
ortmProgress
  = lens _ortmProgress (\ s a -> s{_ortmProgress = a})

-- | Name of the restored table being optimized.
ortmName :: Lens' OptimizeRestoredTableMetadata (Maybe Text)
ortmName = lens _ortmName (\ s a -> s{_ortmName = a})

instance FromJSON OptimizeRestoredTableMetadata where
        parseJSON
          = withObject "OptimizeRestoredTableMetadata"
              (\ o ->
                 OptimizeRestoredTableMetadata' <$>
                   (o .:? "progress") <*> (o .:? "name"))

instance ToJSON OptimizeRestoredTableMetadata where
        toJSON OptimizeRestoredTableMetadata'{..}
          = object
              (catMaybes
                 [("progress" .=) <$> _ortmProgress,
                  ("name" .=) <$> _ortmName])

-- | Information about a table restore.
--
-- /See:/ 'restoreInfo' smart constructor.
data RestoreInfo =
  RestoreInfo'
    { _riSourceType :: !(Maybe RestoreInfoSourceType)
    , _riBackupInfo :: !(Maybe BackupInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RestoreInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riSourceType'
--
-- * 'riBackupInfo'
restoreInfo
    :: RestoreInfo
restoreInfo = RestoreInfo' {_riSourceType = Nothing, _riBackupInfo = Nothing}


-- | The type of the restore source.
riSourceType :: Lens' RestoreInfo (Maybe RestoreInfoSourceType)
riSourceType
  = lens _riSourceType (\ s a -> s{_riSourceType = a})

-- | Information about the backup used to restore the table. The backup may
-- no longer exist.
riBackupInfo :: Lens' RestoreInfo (Maybe BackupInfo)
riBackupInfo
  = lens _riBackupInfo (\ s a -> s{_riBackupInfo = a})

instance FromJSON RestoreInfo where
        parseJSON
          = withObject "RestoreInfo"
              (\ o ->
                 RestoreInfo' <$>
                   (o .:? "sourceType") <*> (o .:? "backupInfo"))

instance ToJSON RestoreInfo where
        toJSON RestoreInfo'{..}
          = object
              (catMaybes
                 [("sourceType" .=) <$> _riSourceType,
                  ("backupInfo" .=) <$> _riBackupInfo])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | Encryption information for a given resource. If this resource is
-- protected with customer managed encryption, the in-use Cloud Key
-- Management Service (Cloud KMS) key version is specified along with its
-- status.
--
-- /See:/ 'encryptionInfo' smart constructor.
data EncryptionInfo =
  EncryptionInfo'
    { _eiEncryptionType :: !(Maybe EncryptionInfoEncryptionType)
    , _eiKmsKeyVersion :: !(Maybe Text)
    , _eiEncryptionStatus :: !(Maybe Status)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EncryptionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiEncryptionType'
--
-- * 'eiKmsKeyVersion'
--
-- * 'eiEncryptionStatus'
encryptionInfo
    :: EncryptionInfo
encryptionInfo =
  EncryptionInfo'
    { _eiEncryptionType = Nothing
    , _eiKmsKeyVersion = Nothing
    , _eiEncryptionStatus = Nothing
    }


-- | Output only. The type of encryption used to protect this resource.
eiEncryptionType :: Lens' EncryptionInfo (Maybe EncryptionInfoEncryptionType)
eiEncryptionType
  = lens _eiEncryptionType
      (\ s a -> s{_eiEncryptionType = a})

-- | Output only. The version of the Cloud KMS key specified in the parent
-- cluster that is in use for the data underlying this table.
eiKmsKeyVersion :: Lens' EncryptionInfo (Maybe Text)
eiKmsKeyVersion
  = lens _eiKmsKeyVersion
      (\ s a -> s{_eiKmsKeyVersion = a})

-- | Output only. The status of encrypt\/decrypt calls on underlying data for
-- this resource. Regardless of status, the existing data is always
-- encrypted at rest.
eiEncryptionStatus :: Lens' EncryptionInfo (Maybe Status)
eiEncryptionStatus
  = lens _eiEncryptionStatus
      (\ s a -> s{_eiEncryptionStatus = a})

instance FromJSON EncryptionInfo where
        parseJSON
          = withObject "EncryptionInfo"
              (\ o ->
                 EncryptionInfo' <$>
                   (o .:? "encryptionType") <*> (o .:? "kmsKeyVersion")
                     <*> (o .:? "encryptionStatus"))

instance ToJSON EncryptionInfo where
        toJSON EncryptionInfo'{..}
          = object
              (catMaybes
                 [("encryptionType" .=) <$> _eiEncryptionType,
                  ("kmsKeyVersion" .=) <$> _eiKmsKeyVersion,
                  ("encryptionStatus" .=) <$> _eiEncryptionStatus])

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

-- | A collection of Bigtable Tables and the resources that serve them. All
-- tables in an instance are served from all Clusters in the instance.
--
-- /See:/ 'instance'' smart constructor.
data Instance =
  Instance'
    { _iState :: !(Maybe InstanceState)
    , _iName :: !(Maybe Text)
    , _iDisplayName :: !(Maybe Text)
    , _iLabels :: !(Maybe InstanceLabels)
    , _iType :: !(Maybe InstanceType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iState'
--
-- * 'iName'
--
-- * 'iDisplayName'
--
-- * 'iLabels'
--
-- * 'iType'
instance'
    :: Instance
instance' =
  Instance'
    { _iState = Nothing
    , _iName = Nothing
    , _iDisplayName = Nothing
    , _iLabels = Nothing
    , _iType = Nothing
    }


-- | Output only. The current state of the instance.
iState :: Lens' Instance (Maybe InstanceState)
iState = lens _iState (\ s a -> s{_iState = a})

-- | The unique name of the instance. Values are of the form
-- \`projects\/{project}\/instances\/a-z+[a-z0-9]\`.
iName :: Lens' Instance (Maybe Text)
iName = lens _iName (\ s a -> s{_iName = a})

-- | Required. The descriptive name for this instance as it appears in UIs.
-- Can be changed at any time, but should be kept globally unique to avoid
-- confusion.
iDisplayName :: Lens' Instance (Maybe Text)
iDisplayName
  = lens _iDisplayName (\ s a -> s{_iDisplayName = a})

-- | Required. Labels are a flexible and lightweight mechanism for organizing
-- cloud resources into groups that reflect a customer\'s organizational
-- needs and deployment strategies. They can be used to filter resources
-- and aggregate metrics. * Label keys must be between 1 and 63 characters
-- long and must conform to the regular expression:
-- \`\\p{Ll}\\p{Lo}{0,62}\`. * Label values must be between 0 and 63
-- characters long and must conform to the regular expression:
-- \`[\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}\`. * No more than 64 labels can be
-- associated with a given resource. * Keys and values must both be under
-- 128 bytes.
iLabels :: Lens' Instance (Maybe InstanceLabels)
iLabels = lens _iLabels (\ s a -> s{_iLabels = a})

-- | Required. The type of the instance. Defaults to \`PRODUCTION\`.
iType :: Lens' Instance (Maybe InstanceType)
iType = lens _iType (\ s a -> s{_iType = a})

instance FromJSON Instance where
        parseJSON
          = withObject "Instance"
              (\ o ->
                 Instance' <$>
                   (o .:? "state") <*> (o .:? "name") <*>
                     (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "type"))

instance ToJSON Instance where
        toJSON Instance'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _iState, ("name" .=) <$> _iName,
                  ("displayName" .=) <$> _iDisplayName,
                  ("labels" .=) <$> _iLabels, ("type" .=) <$> _iType])
