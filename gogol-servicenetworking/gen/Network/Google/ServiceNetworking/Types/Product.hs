{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ServiceNetworking.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ServiceNetworking.Types.Product where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types.Sum

-- | Represents a subnet that was created or discovered by a private access
-- management service.
--
-- /See:/ 'googleCloudServicenetworkingV1betaSubnetwork' smart constructor.
data GoogleCloudServicenetworkingV1betaSubnetwork =
  GoogleCloudServicenetworkingV1betaSubnetwork'
    { _gcsvsOutsideAllocation :: !(Maybe Bool)
    , _gcsvsNetwork :: !(Maybe Text)
    , _gcsvsName :: !(Maybe Text)
    , _gcsvsIPCIdRRange :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudServicenetworkingV1betaSubnetwork' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsvsOutsideAllocation'
--
-- * 'gcsvsNetwork'
--
-- * 'gcsvsName'
--
-- * 'gcsvsIPCIdRRange'
googleCloudServicenetworkingV1betaSubnetwork
    :: GoogleCloudServicenetworkingV1betaSubnetwork
googleCloudServicenetworkingV1betaSubnetwork =
  GoogleCloudServicenetworkingV1betaSubnetwork'
    { _gcsvsOutsideAllocation = Nothing
    , _gcsvsNetwork = Nothing
    , _gcsvsName = Nothing
    , _gcsvsIPCIdRRange = Nothing
    }


-- | This is a discovered subnet that is not within the current consumer
-- allocated ranges.
gcsvsOutsideAllocation :: Lens' GoogleCloudServicenetworkingV1betaSubnetwork (Maybe Bool)
gcsvsOutsideAllocation
  = lens _gcsvsOutsideAllocation
      (\ s a -> s{_gcsvsOutsideAllocation = a})

-- | In the Shared VPC host project, the VPC network that\'s peered with the
-- consumer network. For example:
-- \`projects\/1234321\/global\/networks\/host-network\`
gcsvsNetwork :: Lens' GoogleCloudServicenetworkingV1betaSubnetwork (Maybe Text)
gcsvsNetwork
  = lens _gcsvsNetwork (\ s a -> s{_gcsvsNetwork = a})

-- | Subnetwork name. See https:\/\/cloud.google.com\/compute\/docs\/vpc\/
gcsvsName :: Lens' GoogleCloudServicenetworkingV1betaSubnetwork (Maybe Text)
gcsvsName
  = lens _gcsvsName (\ s a -> s{_gcsvsName = a})

-- | Subnetwork CIDR range in \`10.x.x.x\/y\` format.
gcsvsIPCIdRRange :: Lens' GoogleCloudServicenetworkingV1betaSubnetwork (Maybe Text)
gcsvsIPCIdRRange
  = lens _gcsvsIPCIdRRange
      (\ s a -> s{_gcsvsIPCIdRRange = a})

instance FromJSON
           GoogleCloudServicenetworkingV1betaSubnetwork
         where
        parseJSON
          = withObject
              "GoogleCloudServicenetworkingV1betaSubnetwork"
              (\ o ->
                 GoogleCloudServicenetworkingV1betaSubnetwork' <$>
                   (o .:? "outsideAllocation") <*> (o .:? "network") <*>
                     (o .:? "name")
                     <*> (o .:? "ipCidrRange"))

instance ToJSON
           GoogleCloudServicenetworkingV1betaSubnetwork
         where
        toJSON
          GoogleCloudServicenetworkingV1betaSubnetwork'{..}
          = object
              (catMaybes
                 [("outsideAllocation" .=) <$>
                    _gcsvsOutsideAllocation,
                  ("network" .=) <$> _gcsvsNetwork,
                  ("name" .=) <$> _gcsvsName,
                  ("ipCidrRange" .=) <$> _gcsvsIPCIdRRange])

-- | Specifies a location to extract JWT from an API request.
--
-- /See:/ 'jwtLocation' smart constructor.
data JwtLocation =
  JwtLocation'
    { _jlValuePrefix :: !(Maybe Text)
    , _jlHeader :: !(Maybe Text)
    , _jlQuery :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JwtLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jlValuePrefix'
--
-- * 'jlHeader'
--
-- * 'jlQuery'
jwtLocation
    :: JwtLocation
jwtLocation =
  JwtLocation'
    {_jlValuePrefix = Nothing, _jlHeader = Nothing, _jlQuery = Nothing}


-- | The value prefix. The value format is \"value_prefix{token}\" Only
-- applies to \"in\" header type. Must be empty for \"in\" query type. If
-- not empty, the header value has to match (case sensitive) this prefix.
-- If not matched, JWT will not be extracted. If matched, JWT will be
-- extracted after the prefix is removed. For example, for \"Authorization:
-- Bearer {JWT}\", value_prefix=\"Bearer \" with a space at the end.
jlValuePrefix :: Lens' JwtLocation (Maybe Text)
jlValuePrefix
  = lens _jlValuePrefix
      (\ s a -> s{_jlValuePrefix = a})

-- | Specifies HTTP header name to extract JWT token.
jlHeader :: Lens' JwtLocation (Maybe Text)
jlHeader = lens _jlHeader (\ s a -> s{_jlHeader = a})

-- | Specifies URL query parameter name to extract JWT token.
jlQuery :: Lens' JwtLocation (Maybe Text)
jlQuery = lens _jlQuery (\ s a -> s{_jlQuery = a})

instance FromJSON JwtLocation where
        parseJSON
          = withObject "JwtLocation"
              (\ o ->
                 JwtLocation' <$>
                   (o .:? "valuePrefix") <*> (o .:? "header") <*>
                     (o .:? "query"))

instance ToJSON JwtLocation where
        toJSON JwtLocation'{..}
          = object
              (catMaybes
                 [("valuePrefix" .=) <$> _jlValuePrefix,
                  ("header" .=) <$> _jlHeader,
                  ("query" .=) <$> _jlQuery])

-- | Metadata provided through GetOperation request for the LRO generated by
-- RemoveDnsZone API
--
-- /See:/ 'removeDNSZoneMetadata' smart constructor.
data RemoveDNSZoneMetadata =
  RemoveDNSZoneMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemoveDNSZoneMetadata' with the minimum fields required to make a request.
--
removeDNSZoneMetadata
    :: RemoveDNSZoneMetadata
removeDNSZoneMetadata = RemoveDNSZoneMetadata'


instance FromJSON RemoveDNSZoneMetadata where
        parseJSON
          = withObject "RemoveDNSZoneMetadata"
              (\ o -> pure RemoveDNSZoneMetadata')

instance ToJSON RemoveDNSZoneMetadata where
        toJSON = const emptyObject

-- | Define a parameter\'s name and location. The parameter may be passed as
-- either an HTTP header or a URL query parameter, and if both are passed
-- the behavior is implementation-dependent.
--
-- /See:/ 'systemParameter' smart constructor.
data SystemParameter =
  SystemParameter'
    { _spHTTPHeader :: !(Maybe Text)
    , _spURLQueryParameter :: !(Maybe Text)
    , _spName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SystemParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spHTTPHeader'
--
-- * 'spURLQueryParameter'
--
-- * 'spName'
systemParameter
    :: SystemParameter
systemParameter =
  SystemParameter'
    {_spHTTPHeader = Nothing, _spURLQueryParameter = Nothing, _spName = Nothing}


-- | Define the HTTP header name to use for the parameter. It is case
-- insensitive.
spHTTPHeader :: Lens' SystemParameter (Maybe Text)
spHTTPHeader
  = lens _spHTTPHeader (\ s a -> s{_spHTTPHeader = a})

-- | Define the URL query parameter name to use for the parameter. It is case
-- sensitive.
spURLQueryParameter :: Lens' SystemParameter (Maybe Text)
spURLQueryParameter
  = lens _spURLQueryParameter
      (\ s a -> s{_spURLQueryParameter = a})

-- | Define the name of the parameter, such as \"api_key\" . It is case
-- sensitive.
spName :: Lens' SystemParameter (Maybe Text)
spName = lens _spName (\ s a -> s{_spName = a})

instance FromJSON SystemParameter where
        parseJSON
          = withObject "SystemParameter"
              (\ o ->
                 SystemParameter' <$>
                   (o .:? "httpHeader") <*> (o .:? "urlQueryParameter")
                     <*> (o .:? "name"))

instance ToJSON SystemParameter where
        toJSON SystemParameter'{..}
          = object
              (catMaybes
                 [("httpHeader" .=) <$> _spHTTPHeader,
                  ("urlQueryParameter" .=) <$> _spURLQueryParameter,
                  ("name" .=) <$> _spName])

-- | An object that describes the schema of a MonitoredResource object using
-- a type name and a set of labels. For example, the monitored resource
-- descriptor for Google Compute Engine VM instances has a type of
-- \`\"gce_instance\"\` and specifies the use of the labels
-- \`\"instance_id\"\` and \`\"zone\"\` to identify particular VM
-- instances. Different APIs can support different monitored resource
-- types. APIs generally provide a \`list\` method that returns the
-- monitored resource descriptors used by the API.
--
-- /See:/ 'monitoredResourceDescriptor' smart constructor.
data MonitoredResourceDescriptor =
  MonitoredResourceDescriptor'
    { _mrdName :: !(Maybe Text)
    , _mrdDisplayName :: !(Maybe Text)
    , _mrdLabels :: !(Maybe [LabelDescriptor])
    , _mrdType :: !(Maybe Text)
    , _mrdDescription :: !(Maybe Text)
    , _mrdLaunchStage :: !(Maybe MonitoredResourceDescriptorLaunchStage)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MonitoredResourceDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrdName'
--
-- * 'mrdDisplayName'
--
-- * 'mrdLabels'
--
-- * 'mrdType'
--
-- * 'mrdDescription'
--
-- * 'mrdLaunchStage'
monitoredResourceDescriptor
    :: MonitoredResourceDescriptor
monitoredResourceDescriptor =
  MonitoredResourceDescriptor'
    { _mrdName = Nothing
    , _mrdDisplayName = Nothing
    , _mrdLabels = Nothing
    , _mrdType = Nothing
    , _mrdDescription = Nothing
    , _mrdLaunchStage = Nothing
    }


-- | Optional. The resource name of the monitored resource descriptor:
-- \`\"projects\/{project_id}\/monitoredResourceDescriptors\/{type}\"\`
-- where {type} is the value of the \`type\` field in this object and
-- {project_id} is a project ID that provides API-specific context for
-- accessing the type. APIs that do not use project information can use the
-- resource name format \`\"monitoredResourceDescriptors\/{type}\"\`.
mrdName :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdName = lens _mrdName (\ s a -> s{_mrdName = a})

-- | Optional. A concise name for the monitored resource type that might be
-- displayed in user interfaces. It should be a Title Cased Noun Phrase,
-- without any article or other determiners. For example, \`\"Google Cloud
-- SQL Database\"\`.
mrdDisplayName :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdDisplayName
  = lens _mrdDisplayName
      (\ s a -> s{_mrdDisplayName = a})

-- | Required. A set of labels used to describe instances of this monitored
-- resource type. For example, an individual Google Cloud SQL database is
-- identified by values for the labels \`\"database_id\"\` and
-- \`\"zone\"\`.
mrdLabels :: Lens' MonitoredResourceDescriptor [LabelDescriptor]
mrdLabels
  = lens _mrdLabels (\ s a -> s{_mrdLabels = a}) .
      _Default
      . _Coerce

-- | Required. The monitored resource type. For example, the type
-- \`\"cloudsql_database\"\` represents databases in Google Cloud SQL.
mrdType :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdType = lens _mrdType (\ s a -> s{_mrdType = a})

-- | Optional. A detailed description of the monitored resource type that
-- might be used in documentation.
mrdDescription :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdDescription
  = lens _mrdDescription
      (\ s a -> s{_mrdDescription = a})

-- | Optional. The launch stage of the monitored resource definition.
mrdLaunchStage :: Lens' MonitoredResourceDescriptor (Maybe MonitoredResourceDescriptorLaunchStage)
mrdLaunchStage
  = lens _mrdLaunchStage
      (\ s a -> s{_mrdLaunchStage = a})

instance FromJSON MonitoredResourceDescriptor where
        parseJSON
          = withObject "MonitoredResourceDescriptor"
              (\ o ->
                 MonitoredResourceDescriptor' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "labels" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "description")
                     <*> (o .:? "launchStage"))

instance ToJSON MonitoredResourceDescriptor where
        toJSON MonitoredResourceDescriptor'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _mrdName,
                  ("displayName" .=) <$> _mrdDisplayName,
                  ("labels" .=) <$> _mrdLabels,
                  ("type" .=) <$> _mrdType,
                  ("description" .=) <$> _mrdDescription,
                  ("launchStage" .=) <$> _mrdLaunchStage])

--
-- /See:/ 'secondaryIPRange' smart constructor.
data SecondaryIPRange =
  SecondaryIPRange'
    { _sirRangeName :: !(Maybe Text)
    , _sirIPCIdRRange :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecondaryIPRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sirRangeName'
--
-- * 'sirIPCIdRRange'
secondaryIPRange
    :: SecondaryIPRange
secondaryIPRange =
  SecondaryIPRange' {_sirRangeName = Nothing, _sirIPCIdRRange = Nothing}


-- | Name of the secondary IP range.
sirRangeName :: Lens' SecondaryIPRange (Maybe Text)
sirRangeName
  = lens _sirRangeName (\ s a -> s{_sirRangeName = a})

-- | Secondary IP CIDR range in \`x.x.x.x\/y\` format.
sirIPCIdRRange :: Lens' SecondaryIPRange (Maybe Text)
sirIPCIdRRange
  = lens _sirIPCIdRRange
      (\ s a -> s{_sirIPCIdRRange = a})

instance FromJSON SecondaryIPRange where
        parseJSON
          = withObject "SecondaryIPRange"
              (\ o ->
                 SecondaryIPRange' <$>
                   (o .:? "rangeName") <*> (o .:? "ipCidrRange"))

instance ToJSON SecondaryIPRange where
        toJSON SecondaryIPRange'{..}
          = object
              (catMaybes
                 [("rangeName" .=) <$> _sirRangeName,
                  ("ipCidrRange" .=) <$> _sirIPCIdRRange])

-- | Request to enable VPC service controls.
--
-- /See:/ 'enableVPCServiceControlsRequest' smart constructor.
newtype EnableVPCServiceControlsRequest =
  EnableVPCServiceControlsRequest'
    { _evscrConsumerNetwork :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnableVPCServiceControlsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evscrConsumerNetwork'
enableVPCServiceControlsRequest
    :: EnableVPCServiceControlsRequest
enableVPCServiceControlsRequest =
  EnableVPCServiceControlsRequest' {_evscrConsumerNetwork = Nothing}


-- | Required. The network that the consumer is using to connect with
-- services. Must be in the form of
-- projects\/{project}\/global\/networks\/{network} {project} is a project
-- number, as in \'12345\' {network} is network name.
evscrConsumerNetwork :: Lens' EnableVPCServiceControlsRequest (Maybe Text)
evscrConsumerNetwork
  = lens _evscrConsumerNetwork
      (\ s a -> s{_evscrConsumerNetwork = a})

instance FromJSON EnableVPCServiceControlsRequest
         where
        parseJSON
          = withObject "EnableVPCServiceControlsRequest"
              (\ o ->
                 EnableVPCServiceControlsRequest' <$>
                   (o .:? "consumerNetwork"))

instance ToJSON EnableVPCServiceControlsRequest where
        toJSON EnableVPCServiceControlsRequest'{..}
          = object
              (catMaybes
                 [("consumerNetwork" .=) <$> _evscrConsumerNetwork])

-- | ListConnectionsResponse is the response to list peering states for the
-- given service and consumer project.
--
-- /See:/ 'listConnectionsResponse' smart constructor.
newtype ListConnectionsResponse =
  ListConnectionsResponse'
    { _lcrConnections :: Maybe [Connection]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListConnectionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrConnections'
listConnectionsResponse
    :: ListConnectionsResponse
listConnectionsResponse = ListConnectionsResponse' {_lcrConnections = Nothing}


-- | The list of Connections.
lcrConnections :: Lens' ListConnectionsResponse [Connection]
lcrConnections
  = lens _lcrConnections
      (\ s a -> s{_lcrConnections = a})
      . _Default
      . _Coerce

instance FromJSON ListConnectionsResponse where
        parseJSON
          = withObject "ListConnectionsResponse"
              (\ o ->
                 ListConnectionsResponse' <$>
                   (o .:? "connections" .!= mempty))

instance ToJSON ListConnectionsResponse where
        toJSON ListConnectionsResponse'{..}
          = object
              (catMaybes [("connections" .=) <$> _lcrConnections])

-- | A documentation rule provides information about individual API elements.
--
-- /See:/ 'documentationRule' smart constructor.
data DocumentationRule =
  DocumentationRule'
    { _drSelector :: !(Maybe Text)
    , _drDeprecationDescription :: !(Maybe Text)
    , _drDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentationRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drSelector'
--
-- * 'drDeprecationDescription'
--
-- * 'drDescription'
documentationRule
    :: DocumentationRule
documentationRule =
  DocumentationRule'
    { _drSelector = Nothing
    , _drDeprecationDescription = Nothing
    , _drDescription = Nothing
    }


-- | The selector is a comma-separated list of patterns for any element such
-- as a method, a field, an enum value. Each pattern is a qualified name of
-- the element which may end in \"*\", indicating a wildcard. Wildcards are
-- only allowed at the end and for a whole component of the qualified name,
-- i.e. \"foo.*\" is ok, but not \"foo.b*\" or \"foo.*.bar\". A wildcard
-- will match one or more components. To specify a default for all
-- applicable elements, the whole pattern \"*\" is used.
drSelector :: Lens' DocumentationRule (Maybe Text)
drSelector
  = lens _drSelector (\ s a -> s{_drSelector = a})

-- | Deprecation description of the selected element(s). It can be provided
-- if an element is marked as \`deprecated\`.
drDeprecationDescription :: Lens' DocumentationRule (Maybe Text)
drDeprecationDescription
  = lens _drDeprecationDescription
      (\ s a -> s{_drDeprecationDescription = a})

-- | The description is the comment in front of the selected proto element,
-- such as a message, a method, a \'service\' definition, or a field.
drDescription :: Lens' DocumentationRule (Maybe Text)
drDescription
  = lens _drDescription
      (\ s a -> s{_drDescription = a})

instance FromJSON DocumentationRule where
        parseJSON
          = withObject "DocumentationRule"
              (\ o ->
                 DocumentationRule' <$>
                   (o .:? "selector") <*>
                     (o .:? "deprecationDescription")
                     <*> (o .:? "description"))

instance ToJSON DocumentationRule where
        toJSON DocumentationRule'{..}
          = object
              (catMaybes
                 [("selector" .=) <$> _drSelector,
                  ("deprecationDescription" .=) <$>
                    _drDeprecationDescription,
                  ("description" .=) <$> _drDescription])

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

-- | Configuration information for a private service access connection.
--
-- /See:/ 'consumerConfig' smart constructor.
data ConsumerConfig =
  ConsumerConfig'
    { _ccProducerExportCustomRoutes :: !(Maybe Bool)
    , _ccConsumerImportSubnetRoutesWithPublicIP :: !(Maybe Bool)
    , _ccReservedRanges :: !(Maybe [GoogleCloudServicenetworkingV1ConsumerConfigReservedRange])
    , _ccConsumerExportCustomRoutes :: !(Maybe Bool)
    , _ccVPCScReferenceArchitectureEnabled :: !(Maybe Bool)
    , _ccProducerNetwork :: !(Maybe Text)
    , _ccProducerImportCustomRoutes :: !(Maybe Bool)
    , _ccProducerExportSubnetRoutesWithPublicIP :: !(Maybe Bool)
    , _ccConsumerImportCustomRoutes :: !(Maybe Bool)
    , _ccProducerImportSubnetRoutesWithPublicIP :: !(Maybe Bool)
    , _ccConsumerExportSubnetRoutesWithPublicIP :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConsumerConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccProducerExportCustomRoutes'
--
-- * 'ccConsumerImportSubnetRoutesWithPublicIP'
--
-- * 'ccReservedRanges'
--
-- * 'ccConsumerExportCustomRoutes'
--
-- * 'ccVPCScReferenceArchitectureEnabled'
--
-- * 'ccProducerNetwork'
--
-- * 'ccProducerImportCustomRoutes'
--
-- * 'ccProducerExportSubnetRoutesWithPublicIP'
--
-- * 'ccConsumerImportCustomRoutes'
--
-- * 'ccProducerImportSubnetRoutesWithPublicIP'
--
-- * 'ccConsumerExportSubnetRoutesWithPublicIP'
consumerConfig
    :: ConsumerConfig
consumerConfig =
  ConsumerConfig'
    { _ccProducerExportCustomRoutes = Nothing
    , _ccConsumerImportSubnetRoutesWithPublicIP = Nothing
    , _ccReservedRanges = Nothing
    , _ccConsumerExportCustomRoutes = Nothing
    , _ccVPCScReferenceArchitectureEnabled = Nothing
    , _ccProducerNetwork = Nothing
    , _ccProducerImportCustomRoutes = Nothing
    , _ccProducerExportSubnetRoutesWithPublicIP = Nothing
    , _ccConsumerImportCustomRoutes = Nothing
    , _ccProducerImportSubnetRoutesWithPublicIP = Nothing
    , _ccConsumerExportSubnetRoutesWithPublicIP = Nothing
    }


-- | Export custom routes flag value for peering from producer to consumer.
ccProducerExportCustomRoutes :: Lens' ConsumerConfig (Maybe Bool)
ccProducerExportCustomRoutes
  = lens _ccProducerExportCustomRoutes
      (\ s a -> s{_ccProducerExportCustomRoutes = a})

-- | Import subnet routes with public ip flag value for peering from consumer
-- to producer.
ccConsumerImportSubnetRoutesWithPublicIP :: Lens' ConsumerConfig (Maybe Bool)
ccConsumerImportSubnetRoutesWithPublicIP
  = lens _ccConsumerImportSubnetRoutesWithPublicIP
      (\ s a ->
         s{_ccConsumerImportSubnetRoutesWithPublicIP = a})

-- | Output only. The reserved ranges associated with this private service
-- access connection.
ccReservedRanges :: Lens' ConsumerConfig [GoogleCloudServicenetworkingV1ConsumerConfigReservedRange]
ccReservedRanges
  = lens _ccReservedRanges
      (\ s a -> s{_ccReservedRanges = a})
      . _Default
      . _Coerce

-- | Export custom routes flag value for peering from consumer to producer.
ccConsumerExportCustomRoutes :: Lens' ConsumerConfig (Maybe Bool)
ccConsumerExportCustomRoutes
  = lens _ccConsumerExportCustomRoutes
      (\ s a -> s{_ccConsumerExportCustomRoutes = a})

-- | Output only. Indicates whether the VPC Service Controls reference
-- architecture is configured for the producer VPC host network.
ccVPCScReferenceArchitectureEnabled :: Lens' ConsumerConfig (Maybe Bool)
ccVPCScReferenceArchitectureEnabled
  = lens _ccVPCScReferenceArchitectureEnabled
      (\ s a ->
         s{_ccVPCScReferenceArchitectureEnabled = a})

-- | Output only. The VPC host network that is used to host managed service
-- instances. In the format,
-- projects\/{project}\/global\/networks\/{network} where {project} is the
-- project number e.g. \'12345\' and {network} is the network name.
ccProducerNetwork :: Lens' ConsumerConfig (Maybe Text)
ccProducerNetwork
  = lens _ccProducerNetwork
      (\ s a -> s{_ccProducerNetwork = a})

-- | Import custom routes flag value for peering from producer to consumer.
ccProducerImportCustomRoutes :: Lens' ConsumerConfig (Maybe Bool)
ccProducerImportCustomRoutes
  = lens _ccProducerImportCustomRoutes
      (\ s a -> s{_ccProducerImportCustomRoutes = a})

-- | Export subnet routes with public ip flag value for peering from producer
-- to consumer.
ccProducerExportSubnetRoutesWithPublicIP :: Lens' ConsumerConfig (Maybe Bool)
ccProducerExportSubnetRoutesWithPublicIP
  = lens _ccProducerExportSubnetRoutesWithPublicIP
      (\ s a ->
         s{_ccProducerExportSubnetRoutesWithPublicIP = a})

-- | Import custom routes flag value for peering from consumer to producer.
ccConsumerImportCustomRoutes :: Lens' ConsumerConfig (Maybe Bool)
ccConsumerImportCustomRoutes
  = lens _ccConsumerImportCustomRoutes
      (\ s a -> s{_ccConsumerImportCustomRoutes = a})

-- | Import subnet routes with public ip flag value for peering from producer
-- to consumer.
ccProducerImportSubnetRoutesWithPublicIP :: Lens' ConsumerConfig (Maybe Bool)
ccProducerImportSubnetRoutesWithPublicIP
  = lens _ccProducerImportSubnetRoutesWithPublicIP
      (\ s a ->
         s{_ccProducerImportSubnetRoutesWithPublicIP = a})

-- | Export subnet routes with public ip flag value for peering from consumer
-- to producer.
ccConsumerExportSubnetRoutesWithPublicIP :: Lens' ConsumerConfig (Maybe Bool)
ccConsumerExportSubnetRoutesWithPublicIP
  = lens _ccConsumerExportSubnetRoutesWithPublicIP
      (\ s a ->
         s{_ccConsumerExportSubnetRoutesWithPublicIP = a})

instance FromJSON ConsumerConfig where
        parseJSON
          = withObject "ConsumerConfig"
              (\ o ->
                 ConsumerConfig' <$>
                   (o .:? "producerExportCustomRoutes") <*>
                     (o .:? "consumerImportSubnetRoutesWithPublicIp")
                     <*> (o .:? "reservedRanges" .!= mempty)
                     <*> (o .:? "consumerExportCustomRoutes")
                     <*> (o .:? "vpcScReferenceArchitectureEnabled")
                     <*> (o .:? "producerNetwork")
                     <*> (o .:? "producerImportCustomRoutes")
                     <*> (o .:? "producerExportSubnetRoutesWithPublicIp")
                     <*> (o .:? "consumerImportCustomRoutes")
                     <*> (o .:? "producerImportSubnetRoutesWithPublicIp")
                     <*> (o .:? "consumerExportSubnetRoutesWithPublicIp"))

instance ToJSON ConsumerConfig where
        toJSON ConsumerConfig'{..}
          = object
              (catMaybes
                 [("producerExportCustomRoutes" .=) <$>
                    _ccProducerExportCustomRoutes,
                  ("consumerImportSubnetRoutesWithPublicIp" .=) <$>
                    _ccConsumerImportSubnetRoutesWithPublicIP,
                  ("reservedRanges" .=) <$> _ccReservedRanges,
                  ("consumerExportCustomRoutes" .=) <$>
                    _ccConsumerExportCustomRoutes,
                  ("vpcScReferenceArchitectureEnabled" .=) <$>
                    _ccVPCScReferenceArchitectureEnabled,
                  ("producerNetwork" .=) <$> _ccProducerNetwork,
                  ("producerImportCustomRoutes" .=) <$>
                    _ccProducerImportCustomRoutes,
                  ("producerExportSubnetRoutesWithPublicIp" .=) <$>
                    _ccProducerExportSubnetRoutesWithPublicIP,
                  ("consumerImportCustomRoutes" .=) <$>
                    _ccConsumerImportCustomRoutes,
                  ("producerImportSubnetRoutesWithPublicIp" .=) <$>
                    _ccProducerImportSubnetRoutesWithPublicIP,
                  ("consumerExportSubnetRoutesWithPublicIp" .=) <$>
                    _ccConsumerExportSubnetRoutesWithPublicIP])

-- | Request to add a private managed DNS zone in the shared producer host
-- project and a matching DNS peering zone in the consumer project.
--
-- /See:/ 'addDNSZoneRequest' smart constructor.
data AddDNSZoneRequest =
  AddDNSZoneRequest'
    { _adzrDNSSuffix :: !(Maybe Text)
    , _adzrName :: !(Maybe Text)
    , _adzrConsumerNetwork :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddDNSZoneRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adzrDNSSuffix'
--
-- * 'adzrName'
--
-- * 'adzrConsumerNetwork'
addDNSZoneRequest
    :: AddDNSZoneRequest
addDNSZoneRequest =
  AddDNSZoneRequest'
    { _adzrDNSSuffix = Nothing
    , _adzrName = Nothing
    , _adzrConsumerNetwork = Nothing
    }


-- | Required. The DNS name suffix for the zones e.g. \`example.com\`.
adzrDNSSuffix :: Lens' AddDNSZoneRequest (Maybe Text)
adzrDNSSuffix
  = lens _adzrDNSSuffix
      (\ s a -> s{_adzrDNSSuffix = a})

-- | Required. The name for both the private zone in the shared producer host
-- project and the peering zone in the consumer project. Must be unique
-- within both projects. The name must be 1-63 characters long, must begin
-- with a letter, end with a letter or digit, and only contain lowercase
-- letters, digits or dashes.
adzrName :: Lens' AddDNSZoneRequest (Maybe Text)
adzrName = lens _adzrName (\ s a -> s{_adzrName = a})

-- | Required. The network that the consumer is using to connect with
-- services. Must be in the form of
-- projects\/{project}\/global\/networks\/{network} {project} is the
-- project number, as in \'12345\' {network} is the network name.
adzrConsumerNetwork :: Lens' AddDNSZoneRequest (Maybe Text)
adzrConsumerNetwork
  = lens _adzrConsumerNetwork
      (\ s a -> s{_adzrConsumerNetwork = a})

instance FromJSON AddDNSZoneRequest where
        parseJSON
          = withObject "AddDNSZoneRequest"
              (\ o ->
                 AddDNSZoneRequest' <$>
                   (o .:? "dnsSuffix") <*> (o .:? "name") <*>
                     (o .:? "consumerNetwork"))

instance ToJSON AddDNSZoneRequest where
        toJSON AddDNSZoneRequest'{..}
          = object
              (catMaybes
                 [("dnsSuffix" .=) <$> _adzrDNSSuffix,
                  ("name" .=) <$> _adzrName,
                  ("consumerNetwork" .=) <$> _adzrConsumerNetwork])

-- | Request for AddRoles to allow Service Producers to add roles in the
-- shared VPC host project for them to use.
--
-- /See:/ 'addRolesRequest' smart constructor.
data AddRolesRequest =
  AddRolesRequest'
    { _arrPolicyBinding :: !(Maybe [PolicyBinding])
    , _arrConsumerNetwork :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddRolesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arrPolicyBinding'
--
-- * 'arrConsumerNetwork'
addRolesRequest
    :: AddRolesRequest
addRolesRequest =
  AddRolesRequest' {_arrPolicyBinding = Nothing, _arrConsumerNetwork = Nothing}


-- | Required. List of policy bindings to add to shared VPC host project.
arrPolicyBinding :: Lens' AddRolesRequest [PolicyBinding]
arrPolicyBinding
  = lens _arrPolicyBinding
      (\ s a -> s{_arrPolicyBinding = a})
      . _Default
      . _Coerce

-- | Required. The network that the consumer is using to connect with
-- services. Must be in the form of
-- projects\/{project}\/global\/networks\/{network} {project} is a project
-- number, as in \'12345\' {network} is a network name.
arrConsumerNetwork :: Lens' AddRolesRequest (Maybe Text)
arrConsumerNetwork
  = lens _arrConsumerNetwork
      (\ s a -> s{_arrConsumerNetwork = a})

instance FromJSON AddRolesRequest where
        parseJSON
          = withObject "AddRolesRequest"
              (\ o ->
                 AddRolesRequest' <$>
                   (o .:? "policyBinding" .!= mempty) <*>
                     (o .:? "consumerNetwork"))

instance ToJSON AddRolesRequest where
        toJSON AddRolesRequest'{..}
          = object
              (catMaybes
                 [("policyBinding" .=) <$> _arrPolicyBinding,
                  ("consumerNetwork" .=) <$> _arrConsumerNetwork])

-- | Configuration of a specific billing destination (Currently only support
-- bill against consumer project).
--
-- /See:/ 'billingDestination' smart constructor.
data BillingDestination =
  BillingDestination'
    { _bdMetrics :: !(Maybe [Text])
    , _bdMonitoredResource :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdMetrics'
--
-- * 'bdMonitoredResource'
billingDestination
    :: BillingDestination
billingDestination =
  BillingDestination' {_bdMetrics = Nothing, _bdMonitoredResource = Nothing}


-- | Names of the metrics to report to this billing destination. Each name
-- must be defined in Service.metrics section.
bdMetrics :: Lens' BillingDestination [Text]
bdMetrics
  = lens _bdMetrics (\ s a -> s{_bdMetrics = a}) .
      _Default
      . _Coerce

-- | The monitored resource type. The type must be defined in
-- Service.monitored_resources section.
bdMonitoredResource :: Lens' BillingDestination (Maybe Text)
bdMonitoredResource
  = lens _bdMonitoredResource
      (\ s a -> s{_bdMonitoredResource = a})

instance FromJSON BillingDestination where
        parseJSON
          = withObject "BillingDestination"
              (\ o ->
                 BillingDestination' <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "monitoredResource"))

instance ToJSON BillingDestination where
        toJSON BillingDestination'{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _bdMetrics,
                  ("monitoredResource" .=) <$> _bdMonitoredResource])

-- | Selects and configures the service controller used by the service. The
-- service controller handles features like abuse, quota, billing, logging,
-- monitoring, etc.
--
-- /See:/ 'control' smart constructor.
newtype Control =
  Control'
    { _cEnvironment :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Control' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEnvironment'
control
    :: Control
control = Control' {_cEnvironment = Nothing}


-- | The service control environment to use. If empty, no control plane
-- feature (like quota and billing) will be enabled.
cEnvironment :: Lens' Control (Maybe Text)
cEnvironment
  = lens _cEnvironment (\ s a -> s{_cEnvironment = a})

instance FromJSON Control where
        parseJSON
          = withObject "Control"
              (\ o -> Control' <$> (o .:? "environment"))

instance ToJSON Control where
        toJSON Control'{..}
          = object
              (catMaybes [("environment" .=) <$> _cEnvironment])

-- | Metadata provided through GetOperation request for the LRO generated by
-- CreatePeeredDnsDomain API.
--
-- /See:/ 'peeredDNSDomainMetadata' smart constructor.
data PeeredDNSDomainMetadata =
  PeeredDNSDomainMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeeredDNSDomainMetadata' with the minimum fields required to make a request.
--
peeredDNSDomainMetadata
    :: PeeredDNSDomainMetadata
peeredDNSDomainMetadata = PeeredDNSDomainMetadata'


instance FromJSON PeeredDNSDomainMetadata where
        parseJSON
          = withObject "PeeredDNSDomainMetadata"
              (\ o -> pure PeeredDNSDomainMetadata')

instance ToJSON PeeredDNSDomainMetadata where
        toJSON = const emptyObject

-- | Represents a range reservation.
--
-- /See:/ 'rangeReservation' smart constructor.
data RangeReservation =
  RangeReservation'
    { _rrIPPrefixLength :: !(Maybe (Textual Int32))
    , _rrSecondaryRangeIPPrefixLengths :: !(Maybe [Textual Int32])
    , _rrRequestedRanges :: !(Maybe [Text])
    , _rrSubnetworkCandidates :: !(Maybe [Subnetwork])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RangeReservation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrIPPrefixLength'
--
-- * 'rrSecondaryRangeIPPrefixLengths'
--
-- * 'rrRequestedRanges'
--
-- * 'rrSubnetworkCandidates'
rangeReservation
    :: RangeReservation
rangeReservation =
  RangeReservation'
    { _rrIPPrefixLength = Nothing
    , _rrSecondaryRangeIPPrefixLengths = Nothing
    , _rrRequestedRanges = Nothing
    , _rrSubnetworkCandidates = Nothing
    }


-- | Required. The size of the desired subnet. Use usual CIDR range notation.
-- For example, \'30\' to find unused x.x.x.x\/30 CIDR range. The goal is
-- to determine if one of the allocated ranges has enough free space for a
-- subnet of the requested size.
rrIPPrefixLength :: Lens' RangeReservation (Maybe Int32)
rrIPPrefixLength
  = lens _rrIPPrefixLength
      (\ s a -> s{_rrIPPrefixLength = a})
      . mapping _Coerce

-- | Optional. The size of the desired secondary ranges for the subnet. Use
-- usual CIDR range notation. For example, \'30\' to find unused
-- x.x.x.x\/30 CIDR range. The goal is to determine that the allocated
-- ranges have enough free space for all the requested secondary ranges.
rrSecondaryRangeIPPrefixLengths :: Lens' RangeReservation [Int32]
rrSecondaryRangeIPPrefixLengths
  = lens _rrSecondaryRangeIPPrefixLengths
      (\ s a -> s{_rrSecondaryRangeIPPrefixLengths = a})
      . _Default
      . _Coerce

-- | Optional. The name of one or more allocated IP address ranges associated
-- with this private service access connection. If no range names are
-- provided all ranges associated with this connection will be considered.
-- If a CIDR range with the specified IP prefix length is not available
-- within these ranges the validation fails.
rrRequestedRanges :: Lens' RangeReservation [Text]
rrRequestedRanges
  = lens _rrRequestedRanges
      (\ s a -> s{_rrRequestedRanges = a})
      . _Default
      . _Coerce

-- | Optional. List of subnetwork candidates to validate. The required input
-- fields are \`name\`, \`network\`, and \`region\`. Subnetworks from this
-- list which exist will be returned in the response with the
-- \`ip_cidr_range\`, \`secondary_ip_cider_ranges\`, and
-- \`outside_allocation\` fields set.
rrSubnetworkCandidates :: Lens' RangeReservation [Subnetwork]
rrSubnetworkCandidates
  = lens _rrSubnetworkCandidates
      (\ s a -> s{_rrSubnetworkCandidates = a})
      . _Default
      . _Coerce

instance FromJSON RangeReservation where
        parseJSON
          = withObject "RangeReservation"
              (\ o ->
                 RangeReservation' <$>
                   (o .:? "ipPrefixLength") <*>
                     (o .:? "secondaryRangeIpPrefixLengths" .!= mempty)
                     <*> (o .:? "requestedRanges" .!= mempty)
                     <*> (o .:? "subnetworkCandidates" .!= mempty))

instance ToJSON RangeReservation where
        toJSON RangeReservation'{..}
          = object
              (catMaybes
                 [("ipPrefixLength" .=) <$> _rrIPPrefixLength,
                  ("secondaryRangeIpPrefixLengths" .=) <$>
                    _rrSecondaryRangeIPPrefixLengths,
                  ("requestedRanges" .=) <$> _rrRequestedRanges,
                  ("subnetworkCandidates" .=) <$>
                    _rrSubnetworkCandidates])

-- | User-defined authentication requirements, including support for [JSON
-- Web Token
-- (JWT)](https:\/\/tools.ietf.org\/html\/draft-ietf-oauth-json-web-token-32).
--
-- /See:/ 'authRequirement' smart constructor.
data AuthRequirement =
  AuthRequirement'
    { _arProviderId :: !(Maybe Text)
    , _arAudiences :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthRequirement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arProviderId'
--
-- * 'arAudiences'
authRequirement
    :: AuthRequirement
authRequirement =
  AuthRequirement' {_arProviderId = Nothing, _arAudiences = Nothing}


-- | id from authentication provider. Example: provider_id: bookstore_auth
arProviderId :: Lens' AuthRequirement (Maybe Text)
arProviderId
  = lens _arProviderId (\ s a -> s{_arProviderId = a})

-- | NOTE: This will be deprecated soon, once AuthProvider.audiences is
-- implemented and accepted in all the runtime components. The list of JWT
-- [audiences](https:\/\/tools.ietf.org\/html\/draft-ietf-oauth-json-web-token-32#section-4.1.3).
-- that are allowed to access. A JWT containing any of these audiences will
-- be accepted. When this setting is absent, only JWTs with audience
-- \"https:\/\/Service_name\/API_name\" will be accepted. For example, if
-- no audiences are in the setting, LibraryService API will only accept
-- JWTs with the following audience
-- \"https:\/\/library-example.googleapis.com\/google.example.library.v1.LibraryService\".
-- Example: audiences: bookstore_android.apps.googleusercontent.com,
-- bookstore_web.apps.googleusercontent.com
arAudiences :: Lens' AuthRequirement (Maybe Text)
arAudiences
  = lens _arAudiences (\ s a -> s{_arAudiences = a})

instance FromJSON AuthRequirement where
        parseJSON
          = withObject "AuthRequirement"
              (\ o ->
                 AuthRequirement' <$>
                   (o .:? "providerId") <*> (o .:? "audiences"))

instance ToJSON AuthRequirement where
        toJSON AuthRequirement'{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _arProviderId,
                  ("audiences" .=) <$> _arAudiences])

-- | \`Context\` defines which contexts an API requests. Example: context:
-- rules: - selector: \"*\" requested: - google.rpc.context.ProjectContext
-- - google.rpc.context.OriginContext The above specifies that all methods
-- in the API request \`google.rpc.context.ProjectContext\` and
-- \`google.rpc.context.OriginContext\`. Available context types are
-- defined in package \`google.rpc.context\`. This also provides mechanism
-- to allowlist any protobuf message extension that can be sent in grpc
-- metadata using “x-goog-ext--bin” and “x-goog-ext--jspb” format. For
-- example, list any service specific protobuf types that can appear in
-- grpc metadata as follows in your yaml file: Example: context: rules: -
-- selector: \"google.example.library.v1.LibraryService.CreateBook\"
-- allowed_request_extensions: - google.foo.v1.NewExtension
-- allowed_response_extensions: - google.foo.v1.NewExtension You can also
-- specify extension ID instead of fully qualified extension name here.
--
-- /See:/ 'context' smart constructor.
newtype Context =
  Context'
    { _cRules :: Maybe [ContextRule]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Context' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cRules'
context
    :: Context
context = Context' {_cRules = Nothing}


-- | A list of RPC context rules that apply to individual API methods.
-- **NOTE:** All service configuration rules follow \"last one wins\"
-- order.
cRules :: Lens' Context [ContextRule]
cRules
  = lens _cRules (\ s a -> s{_cRules = a}) . _Default .
      _Coerce

instance FromJSON Context where
        parseJSON
          = withObject "Context"
              (\ o -> Context' <$> (o .:? "rules" .!= mempty))

instance ToJSON Context where
        toJSON Context'{..}
          = object (catMaybes [("rules" .=) <$> _cRules])

-- | Configuration of a specific logging destination (the producer project or
-- the consumer project).
--
-- /See:/ 'loggingDestination' smart constructor.
data LoggingDestination =
  LoggingDestination'
    { _ldMonitoredResource :: !(Maybe Text)
    , _ldLogs :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LoggingDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldMonitoredResource'
--
-- * 'ldLogs'
loggingDestination
    :: LoggingDestination
loggingDestination =
  LoggingDestination' {_ldMonitoredResource = Nothing, _ldLogs = Nothing}


-- | The monitored resource type. The type must be defined in the
-- Service.monitored_resources section.
ldMonitoredResource :: Lens' LoggingDestination (Maybe Text)
ldMonitoredResource
  = lens _ldMonitoredResource
      (\ s a -> s{_ldMonitoredResource = a})

-- | Names of the logs to be sent to this destination. Each name must be
-- defined in the Service.logs section. If the log name is not a domain
-- scoped name, it will be automatically prefixed with the service name
-- followed by \"\/\".
ldLogs :: Lens' LoggingDestination [Text]
ldLogs
  = lens _ldLogs (\ s a -> s{_ldLogs = a}) . _Default .
      _Coerce

instance FromJSON LoggingDestination where
        parseJSON
          = withObject "LoggingDestination"
              (\ o ->
                 LoggingDestination' <$>
                   (o .:? "monitoredResource") <*>
                     (o .:? "logs" .!= mempty))

instance ToJSON LoggingDestination where
        toJSON LoggingDestination'{..}
          = object
              (catMaybes
                 [("monitoredResource" .=) <$> _ldMonitoredResource,
                  ("logs" .=) <$> _ldLogs])

-- | Defines a metric type and its schema. Once a metric descriptor is
-- created, deleting or altering it stops data collection and makes the
-- metric type\'s existing data unusable.
--
-- /See:/ 'metricDescriptor' smart constructor.
data MetricDescriptor =
  MetricDescriptor'
    { _mdMonitoredResourceTypes :: !(Maybe [Text])
    , _mdMetricKind :: !(Maybe MetricDescriptorMetricKind)
    , _mdName :: !(Maybe Text)
    , _mdMetadata :: !(Maybe MetricDescriptorMetadata)
    , _mdDisplayName :: !(Maybe Text)
    , _mdLabels :: !(Maybe [LabelDescriptor])
    , _mdType :: !(Maybe Text)
    , _mdValueType :: !(Maybe MetricDescriptorValueType)
    , _mdDescription :: !(Maybe Text)
    , _mdUnit :: !(Maybe Text)
    , _mdLaunchStage :: !(Maybe MetricDescriptorLaunchStage)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdMonitoredResourceTypes'
--
-- * 'mdMetricKind'
--
-- * 'mdName'
--
-- * 'mdMetadata'
--
-- * 'mdDisplayName'
--
-- * 'mdLabels'
--
-- * 'mdType'
--
-- * 'mdValueType'
--
-- * 'mdDescription'
--
-- * 'mdUnit'
--
-- * 'mdLaunchStage'
metricDescriptor
    :: MetricDescriptor
metricDescriptor =
  MetricDescriptor'
    { _mdMonitoredResourceTypes = Nothing
    , _mdMetricKind = Nothing
    , _mdName = Nothing
    , _mdMetadata = Nothing
    , _mdDisplayName = Nothing
    , _mdLabels = Nothing
    , _mdType = Nothing
    , _mdValueType = Nothing
    , _mdDescription = Nothing
    , _mdUnit = Nothing
    , _mdLaunchStage = Nothing
    }


-- | Read-only. If present, then a time series, which is identified partially
-- by a metric type and a MonitoredResourceDescriptor, that is associated
-- with this metric type can only be associated with one of the monitored
-- resource types listed here.
mdMonitoredResourceTypes :: Lens' MetricDescriptor [Text]
mdMonitoredResourceTypes
  = lens _mdMonitoredResourceTypes
      (\ s a -> s{_mdMonitoredResourceTypes = a})
      . _Default
      . _Coerce

-- | Whether the metric records instantaneous values, changes to a value,
-- etc. Some combinations of \`metric_kind\` and \`value_type\` might not
-- be supported.
mdMetricKind :: Lens' MetricDescriptor (Maybe MetricDescriptorMetricKind)
mdMetricKind
  = lens _mdMetricKind (\ s a -> s{_mdMetricKind = a})

-- | The resource name of the metric descriptor.
mdName :: Lens' MetricDescriptor (Maybe Text)
mdName = lens _mdName (\ s a -> s{_mdName = a})

-- | Optional. Metadata which can be used to guide usage of the metric.
mdMetadata :: Lens' MetricDescriptor (Maybe MetricDescriptorMetadata)
mdMetadata
  = lens _mdMetadata (\ s a -> s{_mdMetadata = a})

-- | A concise name for the metric, which can be displayed in user
-- interfaces. Use sentence case without an ending period, for example
-- \"Request count\". This field is optional but it is recommended to be
-- set for any metrics associated with user-visible concepts, such as
-- Quota.
mdDisplayName :: Lens' MetricDescriptor (Maybe Text)
mdDisplayName
  = lens _mdDisplayName
      (\ s a -> s{_mdDisplayName = a})

-- | The set of labels that can be used to describe a specific instance of
-- this metric type. For example, the
-- \`appengine.googleapis.com\/http\/server\/response_latencies\` metric
-- type has a label for the HTTP response code, \`response_code\`, so you
-- can look at latencies for successful responses or just for responses
-- that failed.
mdLabels :: Lens' MetricDescriptor [LabelDescriptor]
mdLabels
  = lens _mdLabels (\ s a -> s{_mdLabels = a}) .
      _Default
      . _Coerce

-- | The metric type, including its DNS name prefix. The type is not
-- URL-encoded. All user-defined metric types have the DNS name
-- \`custom.googleapis.com\` or \`external.googleapis.com\`. Metric types
-- should use a natural hierarchical grouping. For example:
-- \"custom.googleapis.com\/invoice\/paid\/amount\"
-- \"external.googleapis.com\/prometheus\/up\"
-- \"appengine.googleapis.com\/http\/server\/response_latencies\"
mdType :: Lens' MetricDescriptor (Maybe Text)
mdType = lens _mdType (\ s a -> s{_mdType = a})

-- | Whether the measurement is an integer, a floating-point number, etc.
-- Some combinations of \`metric_kind\` and \`value_type\` might not be
-- supported.
mdValueType :: Lens' MetricDescriptor (Maybe MetricDescriptorValueType)
mdValueType
  = lens _mdValueType (\ s a -> s{_mdValueType = a})

-- | A detailed description of the metric, which can be used in
-- documentation.
mdDescription :: Lens' MetricDescriptor (Maybe Text)
mdDescription
  = lens _mdDescription
      (\ s a -> s{_mdDescription = a})

-- | The units in which the metric value is reported. It is only applicable
-- if the \`value_type\` is \`INT64\`, \`DOUBLE\`, or \`DISTRIBUTION\`. The
-- \`unit\` defines the representation of the stored metric values.
-- Different systems might scale the values to be more easily displayed (so
-- a value of \`0.02kBy\` _might_ be displayed as \`20By\`, and a value of
-- \`3523kBy\` _might_ be displayed as \`3.5MBy\`). However, if the
-- \`unit\` is \`kBy\`, then the value of the metric is always in thousands
-- of bytes, no matter how it might be displayed. If you want a custom
-- metric to record the exact number of CPU-seconds used by a job, you can
-- create an \`INT64 CUMULATIVE\` metric whose \`unit\` is \`s{CPU}\` (or
-- equivalently \`1s{CPU}\` or just \`s\`). If the job uses 12,005
-- CPU-seconds, then the value is written as \`12005\`. Alternatively, if
-- you want a custom metric to record data in a more granular way, you can
-- create a \`DOUBLE CUMULATIVE\` metric whose \`unit\` is \`ks{CPU}\`, and
-- then write the value \`12.005\` (which is \`12005\/1000\`), or use
-- \`Kis{CPU}\` and write \`11.723\` (which is \`12005\/1024\`). The
-- supported units are a subset of [The Unified Code for Units of
-- Measure](https:\/\/unitsofmeasure.org\/ucum.html) standard: **Basic
-- units (UNIT)** * \`bit\` bit * \`By\` byte * \`s\` second * \`min\`
-- minute * \`h\` hour * \`d\` day * \`1\` dimensionless **Prefixes
-- (PREFIX)** * \`k\` kilo (10^3) * \`M\` mega (10^6) * \`G\` giga (10^9) *
-- \`T\` tera (10^12) * \`P\` peta (10^15) * \`E\` exa (10^18) * \`Z\`
-- zetta (10^21) * \`Y\` yotta (10^24) * \`m\` milli (10^-3) * \`u\` micro
-- (10^-6) * \`n\` nano (10^-9) * \`p\` pico (10^-12) * \`f\` femto
-- (10^-15) * \`a\` atto (10^-18) * \`z\` zepto (10^-21) * \`y\` yocto
-- (10^-24) * \`Ki\` kibi (2^10) * \`Mi\` mebi (2^20) * \`Gi\` gibi (2^30)
-- * \`Ti\` tebi (2^40) * \`Pi\` pebi (2^50) **Grammar** The grammar also
-- includes these connectors: * \`\/\` division or ratio (as an infix
-- operator). For examples, \`kBy\/{email}\` or \`MiBy\/10ms\` (although
-- you should almost never have \`\/s\` in a metric \`unit\`; rates should
-- always be computed at query time from the underlying cumulative or delta
-- value). * \`.\` multiplication or composition (as an infix operator).
-- For examples, \`GBy.d\` or \`k{watt}.h\`. The grammar for a unit is as
-- follows: Expression = Component { \".\" Component } { \"\/\" Component }
-- ; Component = ( [ PREFIX ] UNIT | \"%\" ) [ Annotation ] | Annotation |
-- \"1\" ; Annotation = \"{\" NAME \"}\" ; Notes: * \`Annotation\` is just
-- a comment if it follows a \`UNIT\`. If the annotation is used alone,
-- then the unit is equivalent to \`1\`. For examples, \`{request}\/s ==
-- 1\/s\`, \`By{transmitted}\/s == By\/s\`. * \`NAME\` is a sequence of
-- non-blank printable ASCII characters not containing \`{\` or \`}\`. *
-- \`1\` represents a unitary [dimensionless
-- unit](https:\/\/en.wikipedia.org\/wiki\/Dimensionless_quantity) of 1,
-- such as in \`1\/s\`. It is typically used when none of the basic units
-- are appropriate. For example, \"new users per day\" can be represented
-- as \`1\/d\` or \`{new-users}\/d\` (and a metric value \`5\` would mean
-- \"5 new users). Alternatively, \"thousands of page views per day\" would
-- be represented as \`1000\/d\` or \`k1\/d\` or \`k{page_views}\/d\` (and
-- a metric value of \`5.3\` would mean \"5300 page views per day\"). *
-- \`%\` represents dimensionless value of 1\/100, and annotates values
-- giving a percentage (so the metric values are typically in the range of
-- 0..100, and a metric value \`3\` means \"3 percent\"). * \`10^2.%\`
-- indicates a metric contains a ratio, typically in the range 0..1, that
-- will be multiplied by 100 and displayed as a percentage (so a metric
-- value \`0.03\` means \"3 percent\").
mdUnit :: Lens' MetricDescriptor (Maybe Text)
mdUnit = lens _mdUnit (\ s a -> s{_mdUnit = a})

-- | Optional. The launch stage of the metric definition.
mdLaunchStage :: Lens' MetricDescriptor (Maybe MetricDescriptorLaunchStage)
mdLaunchStage
  = lens _mdLaunchStage
      (\ s a -> s{_mdLaunchStage = a})

instance FromJSON MetricDescriptor where
        parseJSON
          = withObject "MetricDescriptor"
              (\ o ->
                 MetricDescriptor' <$>
                   (o .:? "monitoredResourceTypes" .!= mempty) <*>
                     (o .:? "metricKind")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata")
                     <*> (o .:? "displayName")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "valueType")
                     <*> (o .:? "description")
                     <*> (o .:? "unit")
                     <*> (o .:? "launchStage"))

instance ToJSON MetricDescriptor where
        toJSON MetricDescriptor'{..}
          = object
              (catMaybes
                 [("monitoredResourceTypes" .=) <$>
                    _mdMonitoredResourceTypes,
                  ("metricKind" .=) <$> _mdMetricKind,
                  ("name" .=) <$> _mdName,
                  ("metadata" .=) <$> _mdMetadata,
                  ("displayName" .=) <$> _mdDisplayName,
                  ("labels" .=) <$> _mdLabels, ("type" .=) <$> _mdType,
                  ("valueType" .=) <$> _mdValueType,
                  ("description" .=) <$> _mdDescription,
                  ("unit" .=) <$> _mdUnit,
                  ("launchStage" .=) <$> _mdLaunchStage])

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

-- | Represents a DNS zone resource.
--
-- /See:/ 'dnsZone' smart constructor.
data DNSZone =
  DNSZone'
    { _dzDNSSuffix :: !(Maybe Text)
    , _dzName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DNSZone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dzDNSSuffix'
--
-- * 'dzName'
dnsZone
    :: DNSZone
dnsZone = DNSZone' {_dzDNSSuffix = Nothing, _dzName = Nothing}


-- | The DNS name suffix of this zone e.g. \`example.com.\`.
dzDNSSuffix :: Lens' DNSZone (Maybe Text)
dzDNSSuffix
  = lens _dzDNSSuffix (\ s a -> s{_dzDNSSuffix = a})

-- | User assigned name for this resource. Must be unique within the project.
-- The name must be 1-63 characters long, must begin with a letter, end
-- with a letter or digit, and only contain lowercase letters, digits or
-- dashes.
dzName :: Lens' DNSZone (Maybe Text)
dzName = lens _dzName (\ s a -> s{_dzName = a})

instance FromJSON DNSZone where
        parseJSON
          = withObject "DNSZone"
              (\ o ->
                 DNSZone' <$> (o .:? "dnsSuffix") <*> (o .:? "name"))

instance ToJSON DNSZone where
        toJSON DNSZone'{..}
          = object
              (catMaybes
                 [("dnsSuffix" .=) <$> _dzDNSSuffix,
                  ("name" .=) <$> _dzName])

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'cancelOperationRequest' smart constructor.
data CancelOperationRequest =
  CancelOperationRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
--
cancelOperationRequest
    :: CancelOperationRequest
cancelOperationRequest = CancelOperationRequest'


instance FromJSON CancelOperationRequest where
        parseJSON
          = withObject "CancelOperationRequest"
              (\ o -> pure CancelOperationRequest')

instance ToJSON CancelOperationRequest where
        toJSON = const emptyObject

-- | A backend rule provides configuration for an individual API element.
--
-- /See:/ 'backendRule' smart constructor.
data BackendRule =
  BackendRule'
    { _brJwtAudience :: !(Maybe Text)
    , _brSelector :: !(Maybe Text)
    , _brAddress :: !(Maybe Text)
    , _brProtocol :: !(Maybe Text)
    , _brDisableAuth :: !(Maybe Bool)
    , _brOperationDeadline :: !(Maybe (Textual Double))
    , _brDeadline :: !(Maybe (Textual Double))
    , _brPathTranslation :: !(Maybe BackendRulePathTranslation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackendRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brJwtAudience'
--
-- * 'brSelector'
--
-- * 'brAddress'
--
-- * 'brProtocol'
--
-- * 'brDisableAuth'
--
-- * 'brOperationDeadline'
--
-- * 'brDeadline'
--
-- * 'brPathTranslation'
backendRule
    :: BackendRule
backendRule =
  BackendRule'
    { _brJwtAudience = Nothing
    , _brSelector = Nothing
    , _brAddress = Nothing
    , _brProtocol = Nothing
    , _brDisableAuth = Nothing
    , _brOperationDeadline = Nothing
    , _brDeadline = Nothing
    , _brPathTranslation = Nothing
    }


-- | The JWT audience is used when generating a JWT ID token for the backend.
-- This ID token will be added in the HTTP \"authorization\" header, and
-- sent to the backend.
brJwtAudience :: Lens' BackendRule (Maybe Text)
brJwtAudience
  = lens _brJwtAudience
      (\ s a -> s{_brJwtAudience = a})

-- | Selects the methods to which this rule applies. Refer to selector for
-- syntax details.
brSelector :: Lens' BackendRule (Maybe Text)
brSelector
  = lens _brSelector (\ s a -> s{_brSelector = a})

-- | The address of the API backend. The scheme is used to determine the
-- backend protocol and security. The following schemes are accepted:
-- SCHEME PROTOCOL SECURITY http:\/\/ HTTP None https:\/\/ HTTP TLS
-- grpc:\/\/ gRPC None grpcs:\/\/ gRPC TLS It is recommended to explicitly
-- include a scheme. Leaving out the scheme may cause constrasting
-- behaviors across platforms. If the port is unspecified, the default is:
-- - 80 for schemes without TLS - 443 for schemes with TLS For HTTP
-- backends, use protocol to specify the protocol version.
brAddress :: Lens' BackendRule (Maybe Text)
brAddress
  = lens _brAddress (\ s a -> s{_brAddress = a})

-- | The protocol used for sending a request to the backend. The supported
-- values are \"http\/1.1\" and \"h2\". The default value is inferred from
-- the scheme in the address field: SCHEME PROTOCOL http:\/\/ http\/1.1
-- https:\/\/ http\/1.1 grpc:\/\/ h2 grpcs:\/\/ h2 For secure HTTP backends
-- (https:\/\/) that support HTTP\/2, set this field to \"h2\" for improved
-- performance. Configuring this field to non-default values is only
-- supported for secure HTTP backends. This field will be ignored for all
-- other backends. See
-- https:\/\/www.iana.org\/assignments\/tls-extensiontype-values\/tls-extensiontype-values.xhtml#alpn-protocol-ids
-- for more details on the supported values.
brProtocol :: Lens' BackendRule (Maybe Text)
brProtocol
  = lens _brProtocol (\ s a -> s{_brProtocol = a})

-- | When disable_auth is true, a JWT ID token won\'t be generated and the
-- original \"Authorization\" HTTP header will be preserved. If the header
-- is used to carry the original token and is expected by the backend, this
-- field must be set to true to preserve the header.
brDisableAuth :: Lens' BackendRule (Maybe Bool)
brDisableAuth
  = lens _brDisableAuth
      (\ s a -> s{_brDisableAuth = a})

-- | The number of seconds to wait for the completion of a long running
-- operation. The default is no deadline.
brOperationDeadline :: Lens' BackendRule (Maybe Double)
brOperationDeadline
  = lens _brOperationDeadline
      (\ s a -> s{_brOperationDeadline = a})
      . mapping _Coerce

-- | The number of seconds to wait for a response from a request. The default
-- varies based on the request protocol and deployment environment.
brDeadline :: Lens' BackendRule (Maybe Double)
brDeadline
  = lens _brDeadline (\ s a -> s{_brDeadline = a}) .
      mapping _Coerce

brPathTranslation :: Lens' BackendRule (Maybe BackendRulePathTranslation)
brPathTranslation
  = lens _brPathTranslation
      (\ s a -> s{_brPathTranslation = a})

instance FromJSON BackendRule where
        parseJSON
          = withObject "BackendRule"
              (\ o ->
                 BackendRule' <$>
                   (o .:? "jwtAudience") <*> (o .:? "selector") <*>
                     (o .:? "address")
                     <*> (o .:? "protocol")
                     <*> (o .:? "disableAuth")
                     <*> (o .:? "operationDeadline")
                     <*> (o .:? "deadline")
                     <*> (o .:? "pathTranslation"))

instance ToJSON BackendRule where
        toJSON BackendRule'{..}
          = object
              (catMaybes
                 [("jwtAudience" .=) <$> _brJwtAudience,
                  ("selector" .=) <$> _brSelector,
                  ("address" .=) <$> _brAddress,
                  ("protocol" .=) <$> _brProtocol,
                  ("disableAuth" .=) <$> _brDisableAuth,
                  ("operationDeadline" .=) <$> _brOperationDeadline,
                  ("deadline" .=) <$> _brDeadline,
                  ("pathTranslation" .=) <$> _brPathTranslation])

-- | Metadata provided through GetOperation request for the LRO generated by
-- UpdateDnsRecordSet API
--
-- /See:/ 'updateDNSRecordSetMetadata' smart constructor.
data UpdateDNSRecordSetMetadata =
  UpdateDNSRecordSetMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateDNSRecordSetMetadata' with the minimum fields required to make a request.
--
updateDNSRecordSetMetadata
    :: UpdateDNSRecordSetMetadata
updateDNSRecordSetMetadata = UpdateDNSRecordSetMetadata'


instance FromJSON UpdateDNSRecordSetMetadata where
        parseJSON
          = withObject "UpdateDNSRecordSetMetadata"
              (\ o -> pure UpdateDNSRecordSetMetadata')

instance ToJSON UpdateDNSRecordSetMetadata where
        toJSON = const emptyObject

-- | \`SourceContext\` represents information about the source of a protobuf
-- element, like the file in which it is defined.
--
-- /See:/ 'sourceContext' smart constructor.
newtype SourceContext =
  SourceContext'
    { _scFileName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scFileName'
sourceContext
    :: SourceContext
sourceContext = SourceContext' {_scFileName = Nothing}


-- | The path-qualified name of the .proto file that contained the associated
-- protobuf element. For example:
-- \`\"google\/protobuf\/source_context.proto\"\`.
scFileName :: Lens' SourceContext (Maybe Text)
scFileName
  = lens _scFileName (\ s a -> s{_scFileName = a})

instance FromJSON SourceContext where
        parseJSON
          = withObject "SourceContext"
              (\ o -> SourceContext' <$> (o .:? "fileName"))

instance ToJSON SourceContext where
        toJSON SourceContext'{..}
          = object
              (catMaybes [("fileName" .=) <$> _scFileName])

-- | A single field of a message type.
--
-- /See:/ 'field' smart constructor.
data Field =
  Field'
    { _fKind :: !(Maybe FieldKind)
    , _fOneofIndex :: !(Maybe (Textual Int32))
    , _fName :: !(Maybe Text)
    , _fJSONName :: !(Maybe Text)
    , _fCardinality :: !(Maybe FieldCardinality)
    , _fOptions :: !(Maybe [Option])
    , _fPacked :: !(Maybe Bool)
    , _fDefaultValue :: !(Maybe Text)
    , _fNumber :: !(Maybe (Textual Int32))
    , _fTypeURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Field' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fKind'
--
-- * 'fOneofIndex'
--
-- * 'fName'
--
-- * 'fJSONName'
--
-- * 'fCardinality'
--
-- * 'fOptions'
--
-- * 'fPacked'
--
-- * 'fDefaultValue'
--
-- * 'fNumber'
--
-- * 'fTypeURL'
field
    :: Field
field =
  Field'
    { _fKind = Nothing
    , _fOneofIndex = Nothing
    , _fName = Nothing
    , _fJSONName = Nothing
    , _fCardinality = Nothing
    , _fOptions = Nothing
    , _fPacked = Nothing
    , _fDefaultValue = Nothing
    , _fNumber = Nothing
    , _fTypeURL = Nothing
    }


-- | The field type.
fKind :: Lens' Field (Maybe FieldKind)
fKind = lens _fKind (\ s a -> s{_fKind = a})

-- | The index of the field type in \`Type.oneofs\`, for message or
-- enumeration types. The first type has index 1; zero means the type is
-- not in the list.
fOneofIndex :: Lens' Field (Maybe Int32)
fOneofIndex
  = lens _fOneofIndex (\ s a -> s{_fOneofIndex = a}) .
      mapping _Coerce

-- | The field name.
fName :: Lens' Field (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | The field JSON name.
fJSONName :: Lens' Field (Maybe Text)
fJSONName
  = lens _fJSONName (\ s a -> s{_fJSONName = a})

-- | The field cardinality.
fCardinality :: Lens' Field (Maybe FieldCardinality)
fCardinality
  = lens _fCardinality (\ s a -> s{_fCardinality = a})

-- | The protocol buffer options.
fOptions :: Lens' Field [Option]
fOptions
  = lens _fOptions (\ s a -> s{_fOptions = a}) .
      _Default
      . _Coerce

-- | Whether to use alternative packed wire representation.
fPacked :: Lens' Field (Maybe Bool)
fPacked = lens _fPacked (\ s a -> s{_fPacked = a})

-- | The string value of the default value of this field. Proto2 syntax only.
fDefaultValue :: Lens' Field (Maybe Text)
fDefaultValue
  = lens _fDefaultValue
      (\ s a -> s{_fDefaultValue = a})

-- | The field number.
fNumber :: Lens' Field (Maybe Int32)
fNumber
  = lens _fNumber (\ s a -> s{_fNumber = a}) .
      mapping _Coerce

-- | The field type URL, without the scheme, for message or enumeration
-- types. Example: \`\"type.googleapis.com\/google.protobuf.Timestamp\"\`.
fTypeURL :: Lens' Field (Maybe Text)
fTypeURL = lens _fTypeURL (\ s a -> s{_fTypeURL = a})

instance FromJSON Field where
        parseJSON
          = withObject "Field"
              (\ o ->
                 Field' <$>
                   (o .:? "kind") <*> (o .:? "oneofIndex") <*>
                     (o .:? "name")
                     <*> (o .:? "jsonName")
                     <*> (o .:? "cardinality")
                     <*> (o .:? "options" .!= mempty)
                     <*> (o .:? "packed")
                     <*> (o .:? "defaultValue")
                     <*> (o .:? "number")
                     <*> (o .:? "typeUrl"))

instance ToJSON Field where
        toJSON Field'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _fKind,
                  ("oneofIndex" .=) <$> _fOneofIndex,
                  ("name" .=) <$> _fName,
                  ("jsonName" .=) <$> _fJSONName,
                  ("cardinality" .=) <$> _fCardinality,
                  ("options" .=) <$> _fOptions,
                  ("packed" .=) <$> _fPacked,
                  ("defaultValue" .=) <$> _fDefaultValue,
                  ("number" .=) <$> _fNumber,
                  ("typeUrl" .=) <$> _fTypeURL])

-- | Bind API methods to metrics. Binding a method to a metric causes that
-- metric\'s configured quota behaviors to apply to the method call.
--
-- /See:/ 'metricRule' smart constructor.
data MetricRule =
  MetricRule'
    { _mrSelector :: !(Maybe Text)
    , _mrMetricCosts :: !(Maybe MetricRuleMetricCosts)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrSelector'
--
-- * 'mrMetricCosts'
metricRule
    :: MetricRule
metricRule = MetricRule' {_mrSelector = Nothing, _mrMetricCosts = Nothing}


-- | Selects the methods to which this rule applies. Refer to selector for
-- syntax details.
mrSelector :: Lens' MetricRule (Maybe Text)
mrSelector
  = lens _mrSelector (\ s a -> s{_mrSelector = a})

-- | Metrics to update when the selected methods are called, and the
-- associated cost applied to each metric. The key of the map is the metric
-- name, and the values are the amount increased for the metric against
-- which the quota limits are defined. The value must not be negative.
mrMetricCosts :: Lens' MetricRule (Maybe MetricRuleMetricCosts)
mrMetricCosts
  = lens _mrMetricCosts
      (\ s a -> s{_mrMetricCosts = a})

instance FromJSON MetricRule where
        parseJSON
          = withObject "MetricRule"
              (\ o ->
                 MetricRule' <$>
                   (o .:? "selector") <*> (o .:? "metricCosts"))

instance ToJSON MetricRule where
        toJSON MetricRule'{..}
          = object
              (catMaybes
                 [("selector" .=) <$> _mrSelector,
                  ("metricCosts" .=) <$> _mrMetricCosts])

-- | \`Service\` is the root object of Google API service configuration
-- (service config). It describes the basic information about a logical
-- service, such as the service name and the user-facing title, and
-- delegates other aspects to sub-sections. Each sub-section is either a
-- proto message or a repeated proto message that configures a specific
-- aspect, such as auth. For more information, see each proto message
-- definition. Example: type: google.api.Service name:
-- calendar.googleapis.com title: Google Calendar API apis: - name:
-- google.calendar.v3.Calendar visibility: rules: - selector:
-- \"google.calendar.v3.*\" restriction: PREVIEW backend: rules: -
-- selector: \"google.calendar.v3.*\" address: calendar.example.com
-- authentication: providers: - id: google_calendar_auth jwks_uri:
-- https:\/\/www.googleapis.com\/oauth2\/v1\/certs issuer:
-- https:\/\/securetoken.google.com rules: - selector: \"*\" requirements:
-- provider_id: google_calendar_auth
--
-- /See:/ 'service' smart constructor.
data Service =
  Service'
    { _sControl :: !(Maybe Control)
    , _sMetrics :: !(Maybe [MetricDescriptor])
    , _sContext :: !(Maybe Context)
    , _sAuthentication :: !(Maybe Authentication)
    , _sAPIs :: !(Maybe [API])
    , _sTypes :: !(Maybe [Type])
    , _sSystemTypes :: !(Maybe [Type])
    , _sMonitoredResources :: !(Maybe [MonitoredResourceDescriptor])
    , _sBackend :: !(Maybe Backend)
    , _sMonitoring :: !(Maybe Monitoring)
    , _sName :: !(Maybe Text)
    , _sSystemParameters :: !(Maybe SystemParameters)
    , _sLogs :: !(Maybe [LogDescriptor])
    , _sDocumentation :: !(Maybe Documentation)
    , _sId :: !(Maybe Text)
    , _sUsage :: !(Maybe Usage)
    , _sEndpoints :: !(Maybe [Endpoint])
    , _sEnums :: !(Maybe [Enum'])
    , _sConfigVersion :: !(Maybe (Textual Word32))
    , _sHTTP :: !(Maybe HTTP)
    , _sTitle :: !(Maybe Text)
    , _sProducerProjectId :: !(Maybe Text)
    , _sSourceInfo :: !(Maybe SourceInfo)
    , _sBilling :: !(Maybe Billing)
    , _sCustomError :: !(Maybe CustomError)
    , _sLogging :: !(Maybe Logging)
    , _sQuota :: !(Maybe Quota)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Service' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sControl'
--
-- * 'sMetrics'
--
-- * 'sContext'
--
-- * 'sAuthentication'
--
-- * 'sAPIs'
--
-- * 'sTypes'
--
-- * 'sSystemTypes'
--
-- * 'sMonitoredResources'
--
-- * 'sBackend'
--
-- * 'sMonitoring'
--
-- * 'sName'
--
-- * 'sSystemParameters'
--
-- * 'sLogs'
--
-- * 'sDocumentation'
--
-- * 'sId'
--
-- * 'sUsage'
--
-- * 'sEndpoints'
--
-- * 'sEnums'
--
-- * 'sConfigVersion'
--
-- * 'sHTTP'
--
-- * 'sTitle'
--
-- * 'sProducerProjectId'
--
-- * 'sSourceInfo'
--
-- * 'sBilling'
--
-- * 'sCustomError'
--
-- * 'sLogging'
--
-- * 'sQuota'
service
    :: Service
service =
  Service'
    { _sControl = Nothing
    , _sMetrics = Nothing
    , _sContext = Nothing
    , _sAuthentication = Nothing
    , _sAPIs = Nothing
    , _sTypes = Nothing
    , _sSystemTypes = Nothing
    , _sMonitoredResources = Nothing
    , _sBackend = Nothing
    , _sMonitoring = Nothing
    , _sName = Nothing
    , _sSystemParameters = Nothing
    , _sLogs = Nothing
    , _sDocumentation = Nothing
    , _sId = Nothing
    , _sUsage = Nothing
    , _sEndpoints = Nothing
    , _sEnums = Nothing
    , _sConfigVersion = Nothing
    , _sHTTP = Nothing
    , _sTitle = Nothing
    , _sProducerProjectId = Nothing
    , _sSourceInfo = Nothing
    , _sBilling = Nothing
    , _sCustomError = Nothing
    , _sLogging = Nothing
    , _sQuota = Nothing
    }


-- | Configuration for the service control plane.
sControl :: Lens' Service (Maybe Control)
sControl = lens _sControl (\ s a -> s{_sControl = a})

-- | Defines the metrics used by this service.
sMetrics :: Lens' Service [MetricDescriptor]
sMetrics
  = lens _sMetrics (\ s a -> s{_sMetrics = a}) .
      _Default
      . _Coerce

-- | Context configuration.
sContext :: Lens' Service (Maybe Context)
sContext = lens _sContext (\ s a -> s{_sContext = a})

-- | Auth configuration.
sAuthentication :: Lens' Service (Maybe Authentication)
sAuthentication
  = lens _sAuthentication
      (\ s a -> s{_sAuthentication = a})

-- | A list of API interfaces exported by this service. Only the \`name\`
-- field of the google.protobuf.Api needs to be provided by the
-- configuration author, as the remaining fields will be derived from the
-- IDL during the normalization process. It is an error to specify an API
-- interface here which cannot be resolved against the associated IDL
-- files.
sAPIs :: Lens' Service [API]
sAPIs
  = lens _sAPIs (\ s a -> s{_sAPIs = a}) . _Default .
      _Coerce

-- | A list of all proto message types included in this API service. Types
-- referenced directly or indirectly by the \`apis\` are automatically
-- included. Messages which are not referenced but shall be included, such
-- as types used by the \`google.protobuf.Any\` type, should be listed here
-- by name by the configuration author. Example: types: - name:
-- google.protobuf.Int32
sTypes :: Lens' Service [Type]
sTypes
  = lens _sTypes (\ s a -> s{_sTypes = a}) . _Default .
      _Coerce

-- | A list of all proto message types included in this API service. It
-- serves similar purpose as [google.api.Service.types], except that these
-- types are not needed by user-defined APIs. Therefore, they will not show
-- up in the generated discovery doc. This field should only be used to
-- define system APIs in ESF.
sSystemTypes :: Lens' Service [Type]
sSystemTypes
  = lens _sSystemTypes (\ s a -> s{_sSystemTypes = a})
      . _Default
      . _Coerce

-- | Defines the monitored resources used by this service. This is required
-- by the Service.monitoring and Service.logging configurations.
sMonitoredResources :: Lens' Service [MonitoredResourceDescriptor]
sMonitoredResources
  = lens _sMonitoredResources
      (\ s a -> s{_sMonitoredResources = a})
      . _Default
      . _Coerce

-- | API backend configuration.
sBackend :: Lens' Service (Maybe Backend)
sBackend = lens _sBackend (\ s a -> s{_sBackend = a})

-- | Monitoring configuration.
sMonitoring :: Lens' Service (Maybe Monitoring)
sMonitoring
  = lens _sMonitoring (\ s a -> s{_sMonitoring = a})

-- | The service name, which is a DNS-like logical identifier for the
-- service, such as \`calendar.googleapis.com\`. The service name typically
-- goes through DNS verification to make sure the owner of the service also
-- owns the DNS name.
sName :: Lens' Service (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | System parameter configuration.
sSystemParameters :: Lens' Service (Maybe SystemParameters)
sSystemParameters
  = lens _sSystemParameters
      (\ s a -> s{_sSystemParameters = a})

-- | Defines the logs used by this service.
sLogs :: Lens' Service [LogDescriptor]
sLogs
  = lens _sLogs (\ s a -> s{_sLogs = a}) . _Default .
      _Coerce

-- | Additional API documentation.
sDocumentation :: Lens' Service (Maybe Documentation)
sDocumentation
  = lens _sDocumentation
      (\ s a -> s{_sDocumentation = a})

-- | A unique ID for a specific instance of this message, typically assigned
-- by the client for tracking purpose. Must be no longer than 63 characters
-- and only lower case letters, digits, \'.\', \'_\' and \'-\' are allowed.
-- If empty, the server may choose to generate one instead.
sId :: Lens' Service (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

-- | Configuration controlling usage of this service.
sUsage :: Lens' Service (Maybe Usage)
sUsage = lens _sUsage (\ s a -> s{_sUsage = a})

-- | Configuration for network endpoints. If this is empty, then an endpoint
-- with the same name as the service is automatically generated to service
-- all defined APIs.
sEndpoints :: Lens' Service [Endpoint]
sEndpoints
  = lens _sEndpoints (\ s a -> s{_sEndpoints = a}) .
      _Default
      . _Coerce

-- | A list of all enum types included in this API service. Enums referenced
-- directly or indirectly by the \`apis\` are automatically included. Enums
-- which are not referenced but shall be included should be listed here by
-- name by the configuration author. Example: enums: - name:
-- google.someapi.v1.SomeEnum
sEnums :: Lens' Service [Enum']
sEnums
  = lens _sEnums (\ s a -> s{_sEnums = a}) . _Default .
      _Coerce

-- | Obsolete. Do not use. This field has no semantic meaning. The service
-- config compiler always sets this field to \`3\`.
sConfigVersion :: Lens' Service (Maybe Word32)
sConfigVersion
  = lens _sConfigVersion
      (\ s a -> s{_sConfigVersion = a})
      . mapping _Coerce

-- | HTTP configuration.
sHTTP :: Lens' Service (Maybe HTTP)
sHTTP = lens _sHTTP (\ s a -> s{_sHTTP = a})

-- | The product title for this service, it is the name displayed in Google
-- Cloud Console.
sTitle :: Lens' Service (Maybe Text)
sTitle = lens _sTitle (\ s a -> s{_sTitle = a})

-- | The Google project that owns this service.
sProducerProjectId :: Lens' Service (Maybe Text)
sProducerProjectId
  = lens _sProducerProjectId
      (\ s a -> s{_sProducerProjectId = a})

-- | Output only. The source information for this configuration if available.
sSourceInfo :: Lens' Service (Maybe SourceInfo)
sSourceInfo
  = lens _sSourceInfo (\ s a -> s{_sSourceInfo = a})

-- | Billing configuration.
sBilling :: Lens' Service (Maybe Billing)
sBilling = lens _sBilling (\ s a -> s{_sBilling = a})

-- | Custom error configuration.
sCustomError :: Lens' Service (Maybe CustomError)
sCustomError
  = lens _sCustomError (\ s a -> s{_sCustomError = a})

-- | Logging configuration.
sLogging :: Lens' Service (Maybe Logging)
sLogging = lens _sLogging (\ s a -> s{_sLogging = a})

-- | Quota configuration.
sQuota :: Lens' Service (Maybe Quota)
sQuota = lens _sQuota (\ s a -> s{_sQuota = a})

instance FromJSON Service where
        parseJSON
          = withObject "Service"
              (\ o ->
                 Service' <$>
                   (o .:? "control") <*> (o .:? "metrics" .!= mempty)
                     <*> (o .:? "context")
                     <*> (o .:? "authentication")
                     <*> (o .:? "apis" .!= mempty)
                     <*> (o .:? "types" .!= mempty)
                     <*> (o .:? "systemTypes" .!= mempty)
                     <*> (o .:? "monitoredResources" .!= mempty)
                     <*> (o .:? "backend")
                     <*> (o .:? "monitoring")
                     <*> (o .:? "name")
                     <*> (o .:? "systemParameters")
                     <*> (o .:? "logs" .!= mempty)
                     <*> (o .:? "documentation")
                     <*> (o .:? "id")
                     <*> (o .:? "usage")
                     <*> (o .:? "endpoints" .!= mempty)
                     <*> (o .:? "enums" .!= mempty)
                     <*> (o .:? "configVersion")
                     <*> (o .:? "http")
                     <*> (o .:? "title")
                     <*> (o .:? "producerProjectId")
                     <*> (o .:? "sourceInfo")
                     <*> (o .:? "billing")
                     <*> (o .:? "customError")
                     <*> (o .:? "logging")
                     <*> (o .:? "quota"))

instance ToJSON Service where
        toJSON Service'{..}
          = object
              (catMaybes
                 [("control" .=) <$> _sControl,
                  ("metrics" .=) <$> _sMetrics,
                  ("context" .=) <$> _sContext,
                  ("authentication" .=) <$> _sAuthentication,
                  ("apis" .=) <$> _sAPIs, ("types" .=) <$> _sTypes,
                  ("systemTypes" .=) <$> _sSystemTypes,
                  ("monitoredResources" .=) <$> _sMonitoredResources,
                  ("backend" .=) <$> _sBackend,
                  ("monitoring" .=) <$> _sMonitoring,
                  ("name" .=) <$> _sName,
                  ("systemParameters" .=) <$> _sSystemParameters,
                  ("logs" .=) <$> _sLogs,
                  ("documentation" .=) <$> _sDocumentation,
                  ("id" .=) <$> _sId, ("usage" .=) <$> _sUsage,
                  ("endpoints" .=) <$> _sEndpoints,
                  ("enums" .=) <$> _sEnums,
                  ("configVersion" .=) <$> _sConfigVersion,
                  ("http" .=) <$> _sHTTP, ("title" .=) <$> _sTitle,
                  ("producerProjectId" .=) <$> _sProducerProjectId,
                  ("sourceInfo" .=) <$> _sSourceInfo,
                  ("billing" .=) <$> _sBilling,
                  ("customError" .=) <$> _sCustomError,
                  ("logging" .=) <$> _sLogging,
                  ("quota" .=) <$> _sQuota])

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

-- | Metadata provided through GetOperation request for the LRO generated by
-- RemoveDnsRecordSet API
--
-- /See:/ 'removeDNSRecordSetMetadata' smart constructor.
data RemoveDNSRecordSetMetadata =
  RemoveDNSRecordSetMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemoveDNSRecordSetMetadata' with the minimum fields required to make a request.
--
removeDNSRecordSetMetadata
    :: RemoveDNSRecordSetMetadata
removeDNSRecordSetMetadata = RemoveDNSRecordSetMetadata'


instance FromJSON RemoveDNSRecordSetMetadata where
        parseJSON
          = withObject "RemoveDNSRecordSetMetadata"
              (\ o -> pure RemoveDNSRecordSetMetadata')

instance ToJSON RemoveDNSRecordSetMetadata where
        toJSON = const emptyObject

-- | A custom error rule.
--
-- /See:/ 'customErrorRule' smart constructor.
data CustomErrorRule =
  CustomErrorRule'
    { _cerIsErrorType :: !(Maybe Bool)
    , _cerSelector :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomErrorRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cerIsErrorType'
--
-- * 'cerSelector'
customErrorRule
    :: CustomErrorRule
customErrorRule =
  CustomErrorRule' {_cerIsErrorType = Nothing, _cerSelector = Nothing}


-- | Mark this message as possible payload in error response. Otherwise,
-- objects of this type will be filtered when they appear in error payload.
cerIsErrorType :: Lens' CustomErrorRule (Maybe Bool)
cerIsErrorType
  = lens _cerIsErrorType
      (\ s a -> s{_cerIsErrorType = a})

-- | Selects messages to which this rule applies. Refer to selector for
-- syntax details.
cerSelector :: Lens' CustomErrorRule (Maybe Text)
cerSelector
  = lens _cerSelector (\ s a -> s{_cerSelector = a})

instance FromJSON CustomErrorRule where
        parseJSON
          = withObject "CustomErrorRule"
              (\ o ->
                 CustomErrorRule' <$>
                   (o .:? "isErrorType") <*> (o .:? "selector"))

instance ToJSON CustomErrorRule where
        toJSON CustomErrorRule'{..}
          = object
              (catMaybes
                 [("isErrorType" .=) <$> _cerIsErrorType,
                  ("selector" .=) <$> _cerSelector])

-- | Response to list peered DNS domains for a given connection.
--
-- /See:/ 'listPeeredDNSDomainsResponse' smart constructor.
newtype ListPeeredDNSDomainsResponse =
  ListPeeredDNSDomainsResponse'
    { _lpddrPeeredDNSDomains :: Maybe [PeeredDNSDomain]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListPeeredDNSDomainsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpddrPeeredDNSDomains'
listPeeredDNSDomainsResponse
    :: ListPeeredDNSDomainsResponse
listPeeredDNSDomainsResponse =
  ListPeeredDNSDomainsResponse' {_lpddrPeeredDNSDomains = Nothing}


-- | The list of peered DNS domains.
lpddrPeeredDNSDomains :: Lens' ListPeeredDNSDomainsResponse [PeeredDNSDomain]
lpddrPeeredDNSDomains
  = lens _lpddrPeeredDNSDomains
      (\ s a -> s{_lpddrPeeredDNSDomains = a})
      . _Default
      . _Coerce

instance FromJSON ListPeeredDNSDomainsResponse where
        parseJSON
          = withObject "ListPeeredDNSDomainsResponse"
              (\ o ->
                 ListPeeredDNSDomainsResponse' <$>
                   (o .:? "peeredDnsDomains" .!= mempty))

instance ToJSON ListPeeredDNSDomainsResponse where
        toJSON ListPeeredDNSDomainsResponse'{..}
          = object
              (catMaybes
                 [("peeredDnsDomains" .=) <$> _lpddrPeeredDNSDomains])

-- | Represents a private connection resource. A private connection is
-- implemented as a VPC Network Peering connection between a service
-- producer\'s VPC network and a service consumer\'s VPC network.
--
-- /See:/ 'googleCloudServicenetworkingV1betaConnection' smart constructor.
data GoogleCloudServicenetworkingV1betaConnection =
  GoogleCloudServicenetworkingV1betaConnection'
    { _gcsvcPeering :: !(Maybe Text)
    , _gcsvcReservedPeeringRanges :: !(Maybe [Text])
    , _gcsvcService :: !(Maybe Text)
    , _gcsvcNetwork :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudServicenetworkingV1betaConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsvcPeering'
--
-- * 'gcsvcReservedPeeringRanges'
--
-- * 'gcsvcService'
--
-- * 'gcsvcNetwork'
googleCloudServicenetworkingV1betaConnection
    :: GoogleCloudServicenetworkingV1betaConnection
googleCloudServicenetworkingV1betaConnection =
  GoogleCloudServicenetworkingV1betaConnection'
    { _gcsvcPeering = Nothing
    , _gcsvcReservedPeeringRanges = Nothing
    , _gcsvcService = Nothing
    , _gcsvcNetwork = Nothing
    }


-- | Output only. The name of the VPC Network Peering connection that was
-- created by the service producer.
gcsvcPeering :: Lens' GoogleCloudServicenetworkingV1betaConnection (Maybe Text)
gcsvcPeering
  = lens _gcsvcPeering (\ s a -> s{_gcsvcPeering = a})

-- | The name of one or more allocated IP address ranges for this service
-- producer of type \`PEERING\`. Note that invoking this method with a
-- different range when connection is already established will not modify
-- already provisioned service producer subnetworks.
gcsvcReservedPeeringRanges :: Lens' GoogleCloudServicenetworkingV1betaConnection [Text]
gcsvcReservedPeeringRanges
  = lens _gcsvcReservedPeeringRanges
      (\ s a -> s{_gcsvcReservedPeeringRanges = a})
      . _Default
      . _Coerce

-- | Output only. The name of the peering service that\'s associated with
-- this connection, in the following format: \`services\/{service name}\`.
gcsvcService :: Lens' GoogleCloudServicenetworkingV1betaConnection (Maybe Text)
gcsvcService
  = lens _gcsvcService (\ s a -> s{_gcsvcService = a})

-- | The name of service consumer\'s VPC network that\'s connected with
-- service producer network, in the following format:
-- \`projects\/{project}\/global\/networks\/{network}\`. \`{project}\` is a
-- project number, such as in \`12345\` that includes the VPC service
-- consumer\'s VPC network. \`{network}\` is the name of the service
-- consumer\'s VPC network.
gcsvcNetwork :: Lens' GoogleCloudServicenetworkingV1betaConnection (Maybe Text)
gcsvcNetwork
  = lens _gcsvcNetwork (\ s a -> s{_gcsvcNetwork = a})

instance FromJSON
           GoogleCloudServicenetworkingV1betaConnection
         where
        parseJSON
          = withObject
              "GoogleCloudServicenetworkingV1betaConnection"
              (\ o ->
                 GoogleCloudServicenetworkingV1betaConnection' <$>
                   (o .:? "peering") <*>
                     (o .:? "reservedPeeringRanges" .!= mempty)
                     <*> (o .:? "service")
                     <*> (o .:? "network"))

instance ToJSON
           GoogleCloudServicenetworkingV1betaConnection
         where
        toJSON
          GoogleCloudServicenetworkingV1betaConnection'{..}
          = object
              (catMaybes
                 [("peering" .=) <$> _gcsvcPeering,
                  ("reservedPeeringRanges" .=) <$>
                    _gcsvcReservedPeeringRanges,
                  ("service" .=) <$> _gcsvcService,
                  ("network" .=) <$> _gcsvcNetwork])

-- | The option\'s value packed in an Any message. If the value is a
-- primitive, the corresponding wrapper type defined in
-- google\/protobuf\/wrappers.proto should be used. If the value is an
-- enum, it should be stored as an int32 value using the
-- google.protobuf.Int32Value type.
--
-- /See:/ 'optionValue' smart constructor.
newtype OptionValue =
  OptionValue'
    { _ovAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OptionValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ovAddtional'
optionValue
    :: HashMap Text JSONValue -- ^ 'ovAddtional'
    -> OptionValue
optionValue pOvAddtional_ =
  OptionValue' {_ovAddtional = _Coerce # pOvAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
ovAddtional :: Lens' OptionValue (HashMap Text JSONValue)
ovAddtional
  = lens _ovAddtional (\ s a -> s{_ovAddtional = a}) .
      _Coerce

instance FromJSON OptionValue where
        parseJSON
          = withObject "OptionValue"
              (\ o -> OptionValue' <$> (parseJSONObject o))

instance ToJSON OptionValue where
        toJSON = toJSON . _ovAddtional

-- | Enum value definition.
--
-- /See:/ 'enumValue' smart constructor.
data EnumValue =
  EnumValue'
    { _evName :: !(Maybe Text)
    , _evOptions :: !(Maybe [Option])
    , _evNumber :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnumValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evName'
--
-- * 'evOptions'
--
-- * 'evNumber'
enumValue
    :: EnumValue
enumValue =
  EnumValue' {_evName = Nothing, _evOptions = Nothing, _evNumber = Nothing}


-- | Enum value name.
evName :: Lens' EnumValue (Maybe Text)
evName = lens _evName (\ s a -> s{_evName = a})

-- | Protocol buffer options.
evOptions :: Lens' EnumValue [Option]
evOptions
  = lens _evOptions (\ s a -> s{_evOptions = a}) .
      _Default
      . _Coerce

-- | Enum value number.
evNumber :: Lens' EnumValue (Maybe Int32)
evNumber
  = lens _evNumber (\ s a -> s{_evNumber = a}) .
      mapping _Coerce

instance FromJSON EnumValue where
        parseJSON
          = withObject "EnumValue"
              (\ o ->
                 EnumValue' <$>
                   (o .:? "name") <*> (o .:? "options" .!= mempty) <*>
                     (o .:? "number"))

instance ToJSON EnumValue where
        toJSON EnumValue'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _evName,
                  ("options" .=) <$> _evOptions,
                  ("number" .=) <$> _evNumber])

-- | \`Authentication\` defines the authentication configuration for API
-- methods provided by an API service. Example: name:
-- calendar.googleapis.com authentication: providers: - id:
-- google_calendar_auth jwks_uri:
-- https:\/\/www.googleapis.com\/oauth2\/v1\/certs issuer:
-- https:\/\/securetoken.google.com rules: - selector: \"*\" requirements:
-- provider_id: google_calendar_auth - selector: google.calendar.Delegate
-- oauth: canonical_scopes:
-- https:\/\/www.googleapis.com\/auth\/calendar.read
--
-- /See:/ 'authentication' smart constructor.
data Authentication =
  Authentication'
    { _aRules :: !(Maybe [AuthenticationRule])
    , _aProviders :: !(Maybe [AuthProvider])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Authentication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aRules'
--
-- * 'aProviders'
authentication
    :: Authentication
authentication = Authentication' {_aRules = Nothing, _aProviders = Nothing}


-- | A list of authentication rules that apply to individual API methods.
-- **NOTE:** All service configuration rules follow \"last one wins\"
-- order.
aRules :: Lens' Authentication [AuthenticationRule]
aRules
  = lens _aRules (\ s a -> s{_aRules = a}) . _Default .
      _Coerce

-- | Defines a set of authentication providers that a service supports.
aProviders :: Lens' Authentication [AuthProvider]
aProviders
  = lens _aProviders (\ s a -> s{_aProviders = a}) .
      _Default
      . _Coerce

instance FromJSON Authentication where
        parseJSON
          = withObject "Authentication"
              (\ o ->
                 Authentication' <$>
                   (o .:? "rules" .!= mempty) <*>
                     (o .:? "providers" .!= mempty))

instance ToJSON Authentication where
        toJSON Authentication'{..}
          = object
              (catMaybes
                 [("rules" .=) <$> _aRules,
                  ("providers" .=) <$> _aProviders])

-- | Metadata provided through GetOperation request for the LRO generated by
-- AddRoles API
--
-- /See:/ 'addRolesMetadata' smart constructor.
data AddRolesMetadata =
  AddRolesMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddRolesMetadata' with the minimum fields required to make a request.
--
addRolesMetadata
    :: AddRolesMetadata
addRolesMetadata = AddRolesMetadata'


instance FromJSON AddRolesMetadata where
        parseJSON
          = withObject "AddRolesMetadata"
              (\ o -> pure AddRolesMetadata')

instance ToJSON AddRolesMetadata where
        toJSON = const emptyObject

-- | Declares an API Interface to be included in this interface. The
-- including interface must redeclare all the methods from the included
-- interface, but documentation and options are inherited as follows: - If
-- after comment and whitespace stripping, the documentation string of the
-- redeclared method is empty, it will be inherited from the original
-- method. - Each annotation belonging to the service config (http,
-- visibility) which is not set in the redeclared method will be inherited.
-- - If an http annotation is inherited, the path pattern will be modified
-- as follows. Any version prefix will be replaced by the version of the
-- including interface plus the root path if specified. Example of a simple
-- mixin: package google.acl.v1; service AccessControl { \/\/ Get the
-- underlying ACL object. rpc GetAcl(GetAclRequest) returns (Acl) { option
-- (google.api.http).get = \"\/v1\/{resource=**}:getAcl\"; } } package
-- google.storage.v2; service Storage { \/\/ rpc GetAcl(GetAclRequest)
-- returns (Acl); \/\/ Get a data record. rpc GetData(GetDataRequest)
-- returns (Data) { option (google.api.http).get = \"\/v2\/{resource=**}\";
-- } } Example of a mixin configuration: apis: - name:
-- google.storage.v2.Storage mixins: - name: google.acl.v1.AccessControl
-- The mixin construct implies that all methods in \`AccessControl\` are
-- also declared with same name and request\/response types in \`Storage\`.
-- A documentation generator or annotation processor will see the effective
-- \`Storage.GetAcl\` method after inheriting documentation and annotations
-- as follows: service Storage { \/\/ Get the underlying ACL object. rpc
-- GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get =
-- \"\/v2\/{resource=**}:getAcl\"; } ... } Note how the version in the path
-- pattern changed from \`v1\` to \`v2\`. If the \`root\` field in the
-- mixin is specified, it should be a relative path under which inherited
-- HTTP paths are placed. Example: apis: - name: google.storage.v2.Storage
-- mixins: - name: google.acl.v1.AccessControl root: acls This implies the
-- following inherited HTTP annotation: service Storage { \/\/ Get the
-- underlying ACL object. rpc GetAcl(GetAclRequest) returns (Acl) { option
-- (google.api.http).get = \"\/v2\/acls\/{resource=**}:getAcl\"; } ... }
--
-- /See:/ 'mixin' smart constructor.
data Mixin =
  Mixin'
    { _mRoot :: !(Maybe Text)
    , _mName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Mixin' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mRoot'
--
-- * 'mName'
mixin
    :: Mixin
mixin = Mixin' {_mRoot = Nothing, _mName = Nothing}


-- | If non-empty specifies a path under which inherited HTTP paths are
-- rooted.
mRoot :: Lens' Mixin (Maybe Text)
mRoot = lens _mRoot (\ s a -> s{_mRoot = a})

-- | The fully qualified name of the interface which is included.
mName :: Lens' Mixin (Maybe Text)
mName = lens _mName (\ s a -> s{_mName = a})

instance FromJSON Mixin where
        parseJSON
          = withObject "Mixin"
              (\ o -> Mixin' <$> (o .:? "root") <*> (o .:? "name"))

instance ToJSON Mixin where
        toJSON Mixin'{..}
          = object
              (catMaybes
                 [("root" .=) <$> _mRoot, ("name" .=) <$> _mName])

-- | A custom pattern is used for defining custom HTTP verb.
--
-- /See:/ 'customHTTPPattern' smart constructor.
data CustomHTTPPattern =
  CustomHTTPPattern'
    { _chttppPath :: !(Maybe Text)
    , _chttppKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomHTTPPattern' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chttppPath'
--
-- * 'chttppKind'
customHTTPPattern
    :: CustomHTTPPattern
customHTTPPattern =
  CustomHTTPPattern' {_chttppPath = Nothing, _chttppKind = Nothing}


-- | The path matched by this custom verb.
chttppPath :: Lens' CustomHTTPPattern (Maybe Text)
chttppPath
  = lens _chttppPath (\ s a -> s{_chttppPath = a})

-- | The name of this custom HTTP verb.
chttppKind :: Lens' CustomHTTPPattern (Maybe Text)
chttppKind
  = lens _chttppKind (\ s a -> s{_chttppKind = a})

instance FromJSON CustomHTTPPattern where
        parseJSON
          = withObject "CustomHTTPPattern"
              (\ o ->
                 CustomHTTPPattern' <$>
                   (o .:? "path") <*> (o .:? "kind"))

instance ToJSON CustomHTTPPattern where
        toJSON CustomHTTPPattern'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _chttppPath,
                  ("kind" .=) <$> _chttppKind])

-- | Represents a consumer project.
--
-- /See:/ 'consumerProject' smart constructor.
newtype ConsumerProject =
  ConsumerProject'
    { _cpProjectNum :: Maybe (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConsumerProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpProjectNum'
consumerProject
    :: ConsumerProject
consumerProject = ConsumerProject' {_cpProjectNum = Nothing}


-- | Required. Project number of the consumer that is launching the service
-- instance. It can own the network that is peered with Google or, be a
-- service project in an XPN where the host project has the network.
cpProjectNum :: Lens' ConsumerProject (Maybe Int64)
cpProjectNum
  = lens _cpProjectNum (\ s a -> s{_cpProjectNum = a})
      . mapping _Coerce

instance FromJSON ConsumerProject where
        parseJSON
          = withObject "ConsumerProject"
              (\ o -> ConsumerProject' <$> (o .:? "projectNum"))

instance ToJSON ConsumerProject where
        toJSON ConsumerProject'{..}
          = object
              (catMaybes [("projectNum" .=) <$> _cpProjectNum])

-- | Usage configuration rules for the service. NOTE: Under development. Use
-- this rule to configure unregistered calls for the service. Unregistered
-- calls are calls that do not contain consumer project identity. (Example:
-- calls that do not contain an API key). By default, API methods do not
-- allow unregistered calls, and each method call must be identified by a
-- consumer project identity. Use this rule to allow\/disallow unregistered
-- calls. Example of an API that wants to allow unregistered calls for
-- entire service. usage: rules: - selector: \"*\"
-- allow_unregistered_calls: true Example of a method that wants to allow
-- unregistered calls. usage: rules: - selector:
-- \"google.example.library.v1.LibraryService.CreateBook\"
-- allow_unregistered_calls: true
--
-- /See:/ 'usageRule' smart constructor.
data UsageRule =
  UsageRule'
    { _urSelector :: !(Maybe Text)
    , _urAllowUnregisteredCalls :: !(Maybe Bool)
    , _urSkipServiceControl :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsageRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urSelector'
--
-- * 'urAllowUnregisteredCalls'
--
-- * 'urSkipServiceControl'
usageRule
    :: UsageRule
usageRule =
  UsageRule'
    { _urSelector = Nothing
    , _urAllowUnregisteredCalls = Nothing
    , _urSkipServiceControl = Nothing
    }


-- | Selects the methods to which this rule applies. Use \'*\' to indicate
-- all methods in all APIs. Refer to selector for syntax details.
urSelector :: Lens' UsageRule (Maybe Text)
urSelector
  = lens _urSelector (\ s a -> s{_urSelector = a})

-- | If true, the selected method allows unregistered calls, e.g. calls that
-- don\'t identify any user or application.
urAllowUnregisteredCalls :: Lens' UsageRule (Maybe Bool)
urAllowUnregisteredCalls
  = lens _urAllowUnregisteredCalls
      (\ s a -> s{_urAllowUnregisteredCalls = a})

-- | If true, the selected method should skip service control and the control
-- plane features, such as quota and billing, will not be available. This
-- flag is used by Google Cloud Endpoints to bypass checks for internal
-- methods, such as service health check methods.
urSkipServiceControl :: Lens' UsageRule (Maybe Bool)
urSkipServiceControl
  = lens _urSkipServiceControl
      (\ s a -> s{_urSkipServiceControl = a})

instance FromJSON UsageRule where
        parseJSON
          = withObject "UsageRule"
              (\ o ->
                 UsageRule' <$>
                   (o .:? "selector") <*>
                     (o .:? "allowUnregisteredCalls")
                     <*> (o .:? "skipServiceControl"))

instance ToJSON UsageRule where
        toJSON UsageRule'{..}
          = object
              (catMaybes
                 [("selector" .=) <$> _urSelector,
                  ("allowUnregisteredCalls" .=) <$>
                    _urAllowUnregisteredCalls,
                  ("skipServiceControl" .=) <$> _urSkipServiceControl])

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

-- | Represents a documentation page. A page can contain subpages to
-- represent nested documentation set structure.
--
-- /See:/ 'page' smart constructor.
data Page =
  Page'
    { _pSubpages :: !(Maybe [Page])
    , _pContent :: !(Maybe Text)
    , _pName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Page' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pSubpages'
--
-- * 'pContent'
--
-- * 'pName'
page
    :: Page
page = Page' {_pSubpages = Nothing, _pContent = Nothing, _pName = Nothing}


-- | Subpages of this page. The order of subpages specified here will be
-- honored in the generated docset.
pSubpages :: Lens' Page [Page]
pSubpages
  = lens _pSubpages (\ s a -> s{_pSubpages = a}) .
      _Default
      . _Coerce

-- | The Markdown content of the page. You can use (== include {path} ==) to
-- include content from a Markdown file. The content can be used to produce
-- the documentation page such as HTML format page.
pContent :: Lens' Page (Maybe Text)
pContent = lens _pContent (\ s a -> s{_pContent = a})

-- | The name of the page. It will be used as an identity of the page to
-- generate URI of the page, text of the link to this page in navigation,
-- etc. The full page name (start from the root page name to this page
-- concatenated with \`.\`) can be used as reference to the page in your
-- documentation. For example: pages: - name: Tutorial content: (== include
-- tutorial.md ==) subpages: - name: Java content: (== include
-- tutorial_java.md ==) You can reference \`Java\` page using Markdown
-- reference link syntax: \`Java\`.
pName :: Lens' Page (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

instance FromJSON Page where
        parseJSON
          = withObject "Page"
              (\ o ->
                 Page' <$>
                   (o .:? "subpages" .!= mempty) <*> (o .:? "content")
                     <*> (o .:? "name"))

instance ToJSON Page where
        toJSON Page'{..}
          = object
              (catMaybes
                 [("subpages" .=) <$> _pSubpages,
                  ("content" .=) <$> _pContent,
                  ("name" .=) <$> _pName])

-- | Allocated IP address ranges for this private service access connection.
--
-- /See:/ 'googleCloudServicenetworkingV1ConsumerConfigReservedRange' smart constructor.
data GoogleCloudServicenetworkingV1ConsumerConfigReservedRange =
  GoogleCloudServicenetworkingV1ConsumerConfigReservedRange'
    { _gcsvccrrIPPrefixLength :: !(Maybe (Textual Int32))
    , _gcsvccrrAddress :: !(Maybe Text)
    , _gcsvccrrName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudServicenetworkingV1ConsumerConfigReservedRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsvccrrIPPrefixLength'
--
-- * 'gcsvccrrAddress'
--
-- * 'gcsvccrrName'
googleCloudServicenetworkingV1ConsumerConfigReservedRange
    :: GoogleCloudServicenetworkingV1ConsumerConfigReservedRange
googleCloudServicenetworkingV1ConsumerConfigReservedRange =
  GoogleCloudServicenetworkingV1ConsumerConfigReservedRange'
    { _gcsvccrrIPPrefixLength = Nothing
    , _gcsvccrrAddress = Nothing
    , _gcsvccrrName = Nothing
    }


-- | The prefix length of the reserved range.
gcsvccrrIPPrefixLength :: Lens' GoogleCloudServicenetworkingV1ConsumerConfigReservedRange (Maybe Int32)
gcsvccrrIPPrefixLength
  = lens _gcsvccrrIPPrefixLength
      (\ s a -> s{_gcsvccrrIPPrefixLength = a})
      . mapping _Coerce

-- | The starting address of the reserved range. The address must be a valid
-- IPv4 address in the x.x.x.x format. This value combined with the IP
-- prefix length is the CIDR range for the reserved range.
gcsvccrrAddress :: Lens' GoogleCloudServicenetworkingV1ConsumerConfigReservedRange (Maybe Text)
gcsvccrrAddress
  = lens _gcsvccrrAddress
      (\ s a -> s{_gcsvccrrAddress = a})

-- | The name of the reserved range.
gcsvccrrName :: Lens' GoogleCloudServicenetworkingV1ConsumerConfigReservedRange (Maybe Text)
gcsvccrrName
  = lens _gcsvccrrName (\ s a -> s{_gcsvccrrName = a})

instance FromJSON
           GoogleCloudServicenetworkingV1ConsumerConfigReservedRange
         where
        parseJSON
          = withObject
              "GoogleCloudServicenetworkingV1ConsumerConfigReservedRange"
              (\ o ->
                 GoogleCloudServicenetworkingV1ConsumerConfigReservedRange'
                   <$>
                   (o .:? "ipPrefixLength") <*> (o .:? "address") <*>
                     (o .:? "name"))

instance ToJSON
           GoogleCloudServicenetworkingV1ConsumerConfigReservedRange
         where
        toJSON
          GoogleCloudServicenetworkingV1ConsumerConfigReservedRange'{..}
          = object
              (catMaybes
                 [("ipPrefixLength" .=) <$> _gcsvccrrIPPrefixLength,
                  ("address" .=) <$> _gcsvccrrAddress,
                  ("name" .=) <$> _gcsvccrrName])

-- | Metadata provided through GetOperation request for the LRO generated by
-- AddDnsZone API
--
-- /See:/ 'addDNSZoneMetadata' smart constructor.
data AddDNSZoneMetadata =
  AddDNSZoneMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddDNSZoneMetadata' with the minimum fields required to make a request.
--
addDNSZoneMetadata
    :: AddDNSZoneMetadata
addDNSZoneMetadata = AddDNSZoneMetadata'


instance FromJSON AddDNSZoneMetadata where
        parseJSON
          = withObject "AddDNSZoneMetadata"
              (\ o -> pure AddDNSZoneMetadata')

instance ToJSON AddDNSZoneMetadata where
        toJSON = const emptyObject

-- | Authentication rules for the service. By default, if a method has any
-- authentication requirements, every request must include a valid
-- credential matching one of the requirements. It\'s an error to include
-- more than one kind of credential in a single request. If a method
-- doesn\'t have any auth requirements, request credentials will be
-- ignored.
--
-- /See:/ 'authenticationRule' smart constructor.
data AuthenticationRule =
  AuthenticationRule'
    { _arRequirements :: !(Maybe [AuthRequirement])
    , _arSelector :: !(Maybe Text)
    , _arAllowWithoutCredential :: !(Maybe Bool)
    , _arOAuth :: !(Maybe OAuthRequirements)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthenticationRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arRequirements'
--
-- * 'arSelector'
--
-- * 'arAllowWithoutCredential'
--
-- * 'arOAuth'
authenticationRule
    :: AuthenticationRule
authenticationRule =
  AuthenticationRule'
    { _arRequirements = Nothing
    , _arSelector = Nothing
    , _arAllowWithoutCredential = Nothing
    , _arOAuth = Nothing
    }


-- | Requirements for additional authentication providers.
arRequirements :: Lens' AuthenticationRule [AuthRequirement]
arRequirements
  = lens _arRequirements
      (\ s a -> s{_arRequirements = a})
      . _Default
      . _Coerce

-- | Selects the methods to which this rule applies. Refer to selector for
-- syntax details.
arSelector :: Lens' AuthenticationRule (Maybe Text)
arSelector
  = lens _arSelector (\ s a -> s{_arSelector = a})

-- | If true, the service accepts API keys without any other credential. This
-- flag only applies to HTTP and gRPC requests.
arAllowWithoutCredential :: Lens' AuthenticationRule (Maybe Bool)
arAllowWithoutCredential
  = lens _arAllowWithoutCredential
      (\ s a -> s{_arAllowWithoutCredential = a})

-- | The requirements for OAuth credentials.
arOAuth :: Lens' AuthenticationRule (Maybe OAuthRequirements)
arOAuth = lens _arOAuth (\ s a -> s{_arOAuth = a})

instance FromJSON AuthenticationRule where
        parseJSON
          = withObject "AuthenticationRule"
              (\ o ->
                 AuthenticationRule' <$>
                   (o .:? "requirements" .!= mempty) <*>
                     (o .:? "selector")
                     <*> (o .:? "allowWithoutCredential")
                     <*> (o .:? "oauth"))

instance ToJSON AuthenticationRule where
        toJSON AuthenticationRule'{..}
          = object
              (catMaybes
                 [("requirements" .=) <$> _arRequirements,
                  ("selector" .=) <$> _arSelector,
                  ("allowWithoutCredential" .=) <$>
                    _arAllowWithoutCredential,
                  ("oauth" .=) <$> _arOAuth])

-- | Represents a private connection resource. A private connection is
-- implemented as a VPC Network Peering connection between a service
-- producer\'s VPC network and a service consumer\'s VPC network.
--
-- /See:/ 'connection' smart constructor.
data Connection =
  Connection'
    { _cPeering :: !(Maybe Text)
    , _cReservedPeeringRanges :: !(Maybe [Text])
    , _cService :: !(Maybe Text)
    , _cNetwork :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Connection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cPeering'
--
-- * 'cReservedPeeringRanges'
--
-- * 'cService'
--
-- * 'cNetwork'
connection
    :: Connection
connection =
  Connection'
    { _cPeering = Nothing
    , _cReservedPeeringRanges = Nothing
    , _cService = Nothing
    , _cNetwork = Nothing
    }


-- | Output only. The name of the VPC Network Peering connection that was
-- created by the service producer.
cPeering :: Lens' Connection (Maybe Text)
cPeering = lens _cPeering (\ s a -> s{_cPeering = a})

-- | The name of one or more allocated IP address ranges for this service
-- producer of type \`PEERING\`. Note that invoking CreateConnection method
-- with a different range when connection is already established will not
-- modify already provisioned service producer subnetworks. If
-- CreateConnection method is invoked repeatedly to reconnect when peering
-- connection had been disconnected on the consumer side, leaving this
-- field empty will restore previously allocated IP ranges.
cReservedPeeringRanges :: Lens' Connection [Text]
cReservedPeeringRanges
  = lens _cReservedPeeringRanges
      (\ s a -> s{_cReservedPeeringRanges = a})
      . _Default
      . _Coerce

-- | Output only. The name of the peering service that\'s associated with
-- this connection, in the following format: \`services\/{service name}\`.
cService :: Lens' Connection (Maybe Text)
cService = lens _cService (\ s a -> s{_cService = a})

-- | The name of service consumer\'s VPC network that\'s connected with
-- service producer network, in the following format:
-- \`projects\/{project}\/global\/networks\/{network}\`. \`{project}\` is a
-- project number, such as in \`12345\` that includes the VPC service
-- consumer\'s VPC network. \`{network}\` is the name of the service
-- consumer\'s VPC network.
cNetwork :: Lens' Connection (Maybe Text)
cNetwork = lens _cNetwork (\ s a -> s{_cNetwork = a})

instance FromJSON Connection where
        parseJSON
          = withObject "Connection"
              (\ o ->
                 Connection' <$>
                   (o .:? "peering") <*>
                     (o .:? "reservedPeeringRanges" .!= mempty)
                     <*> (o .:? "service")
                     <*> (o .:? "network"))

instance ToJSON Connection where
        toJSON Connection'{..}
          = object
              (catMaybes
                 [("peering" .=) <$> _cPeering,
                  ("reservedPeeringRanges" .=) <$>
                    _cReservedPeeringRanges,
                  ("service" .=) <$> _cService,
                  ("network" .=) <$> _cNetwork])

-- | Request to update a record set from a private managed DNS zone in the
-- shared producer host project. The name, type, ttl, and data values of
-- the existing record set must all exactly match an existing record set in
-- the specified zone.
--
-- /See:/ 'updateDNSRecordSetRequest' smart constructor.
data UpdateDNSRecordSetRequest =
  UpdateDNSRecordSetRequest'
    { _udrsrZone :: !(Maybe Text)
    , _udrsrNewDNSRecordSet :: !(Maybe DNSRecordSet)
    , _udrsrExistingDNSRecordSet :: !(Maybe DNSRecordSet)
    , _udrsrConsumerNetwork :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateDNSRecordSetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udrsrZone'
--
-- * 'udrsrNewDNSRecordSet'
--
-- * 'udrsrExistingDNSRecordSet'
--
-- * 'udrsrConsumerNetwork'
updateDNSRecordSetRequest
    :: UpdateDNSRecordSetRequest
updateDNSRecordSetRequest =
  UpdateDNSRecordSetRequest'
    { _udrsrZone = Nothing
    , _udrsrNewDNSRecordSet = Nothing
    , _udrsrExistingDNSRecordSet = Nothing
    , _udrsrConsumerNetwork = Nothing
    }


-- | Required. The name of the private DNS zone in the shared producer host
-- project from which the record set will be removed.
udrsrZone :: Lens' UpdateDNSRecordSetRequest (Maybe Text)
udrsrZone
  = lens _udrsrZone (\ s a -> s{_udrsrZone = a})

-- | Required. The new values that the DNS record set should be updated to
-- hold.
udrsrNewDNSRecordSet :: Lens' UpdateDNSRecordSetRequest (Maybe DNSRecordSet)
udrsrNewDNSRecordSet
  = lens _udrsrNewDNSRecordSet
      (\ s a -> s{_udrsrNewDNSRecordSet = a})

-- | Required. The existing DNS record set to update.
udrsrExistingDNSRecordSet :: Lens' UpdateDNSRecordSetRequest (Maybe DNSRecordSet)
udrsrExistingDNSRecordSet
  = lens _udrsrExistingDNSRecordSet
      (\ s a -> s{_udrsrExistingDNSRecordSet = a})

-- | Required. The network that the consumer is using to connect with
-- services. Must be in the form of
-- projects\/{project}\/global\/networks\/{network} {project} is the
-- project number, as in \'12345\' {network} is the network name.
udrsrConsumerNetwork :: Lens' UpdateDNSRecordSetRequest (Maybe Text)
udrsrConsumerNetwork
  = lens _udrsrConsumerNetwork
      (\ s a -> s{_udrsrConsumerNetwork = a})

instance FromJSON UpdateDNSRecordSetRequest where
        parseJSON
          = withObject "UpdateDNSRecordSetRequest"
              (\ o ->
                 UpdateDNSRecordSetRequest' <$>
                   (o .:? "zone") <*> (o .:? "newDnsRecordSet") <*>
                     (o .:? "existingDnsRecordSet")
                     <*> (o .:? "consumerNetwork"))

instance ToJSON UpdateDNSRecordSetRequest where
        toJSON UpdateDNSRecordSetRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _udrsrZone,
                  ("newDnsRecordSet" .=) <$> _udrsrNewDNSRecordSet,
                  ("existingDnsRecordSet" .=) <$>
                    _udrsrExistingDNSRecordSet,
                  ("consumerNetwork" .=) <$> _udrsrConsumerNetwork])

-- | Metrics to update when the selected methods are called, and the
-- associated cost applied to each metric. The key of the map is the metric
-- name, and the values are the amount increased for the metric against
-- which the quota limits are defined. The value must not be negative.
--
-- /See:/ 'metricRuleMetricCosts' smart constructor.
newtype MetricRuleMetricCosts =
  MetricRuleMetricCosts'
    { _mrmcAddtional :: HashMap Text (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricRuleMetricCosts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrmcAddtional'
metricRuleMetricCosts
    :: HashMap Text Int64 -- ^ 'mrmcAddtional'
    -> MetricRuleMetricCosts
metricRuleMetricCosts pMrmcAddtional_ =
  MetricRuleMetricCosts' {_mrmcAddtional = _Coerce # pMrmcAddtional_}


mrmcAddtional :: Lens' MetricRuleMetricCosts (HashMap Text Int64)
mrmcAddtional
  = lens _mrmcAddtional
      (\ s a -> s{_mrmcAddtional = a})
      . _Coerce

instance FromJSON MetricRuleMetricCosts where
        parseJSON
          = withObject "MetricRuleMetricCosts"
              (\ o ->
                 MetricRuleMetricCosts' <$> (parseJSONObject o))

instance ToJSON MetricRuleMetricCosts where
        toJSON = toJSON . _mrmcAddtional

-- | Represents a route that was created or discovered by a private access
-- management service.
--
-- /See:/ 'route' smart constructor.
data Route =
  Route'
    { _rNextHopGateway :: !(Maybe Text)
    , _rNetwork :: !(Maybe Text)
    , _rDestRange :: !(Maybe Text)
    , _rName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Route' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rNextHopGateway'
--
-- * 'rNetwork'
--
-- * 'rDestRange'
--
-- * 'rName'
route
    :: Route
route =
  Route'
    { _rNextHopGateway = Nothing
    , _rNetwork = Nothing
    , _rDestRange = Nothing
    , _rName = Nothing
    }


-- | Fully-qualified URL of the gateway that should handle matching packets
-- that this route applies to. For example:
-- \`projects\/123456\/global\/gateways\/default-internet-gateway\`
rNextHopGateway :: Lens' Route (Maybe Text)
rNextHopGateway
  = lens _rNextHopGateway
      (\ s a -> s{_rNextHopGateway = a})

-- | Fully-qualified URL of the VPC network in the producer host tenant
-- project that this route applies to. For example:
-- \`projects\/123456\/global\/networks\/host-network\`
rNetwork :: Lens' Route (Maybe Text)
rNetwork = lens _rNetwork (\ s a -> s{_rNetwork = a})

-- | Destination CIDR range that this route applies to.
rDestRange :: Lens' Route (Maybe Text)
rDestRange
  = lens _rDestRange (\ s a -> s{_rDestRange = a})

-- | Route name. See https:\/\/cloud.google.com\/vpc\/docs\/routes
rName :: Lens' Route (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

instance FromJSON Route where
        parseJSON
          = withObject "Route"
              (\ o ->
                 Route' <$>
                   (o .:? "nextHopGateway") <*> (o .:? "network") <*>
                     (o .:? "destRange")
                     <*> (o .:? "name"))

instance ToJSON Route where
        toJSON Route'{..}
          = object
              (catMaybes
                 [("nextHopGateway" .=) <$> _rNextHopGateway,
                  ("network" .=) <$> _rNetwork,
                  ("destRange" .=) <$> _rDestRange,
                  ("name" .=) <$> _rName])

-- | Request to disable VPC service controls.
--
-- /See:/ 'disableVPCServiceControlsRequest' smart constructor.
newtype DisableVPCServiceControlsRequest =
  DisableVPCServiceControlsRequest'
    { _dvscrConsumerNetwork :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisableVPCServiceControlsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvscrConsumerNetwork'
disableVPCServiceControlsRequest
    :: DisableVPCServiceControlsRequest
disableVPCServiceControlsRequest =
  DisableVPCServiceControlsRequest' {_dvscrConsumerNetwork = Nothing}


-- | Required. The network that the consumer is using to connect with
-- services. Must be in the form of
-- projects\/{project}\/global\/networks\/{network} {project} is a project
-- number, as in \'12345\' {network} is network name.
dvscrConsumerNetwork :: Lens' DisableVPCServiceControlsRequest (Maybe Text)
dvscrConsumerNetwork
  = lens _dvscrConsumerNetwork
      (\ s a -> s{_dvscrConsumerNetwork = a})

instance FromJSON DisableVPCServiceControlsRequest
         where
        parseJSON
          = withObject "DisableVPCServiceControlsRequest"
              (\ o ->
                 DisableVPCServiceControlsRequest' <$>
                   (o .:? "consumerNetwork"))

instance ToJSON DisableVPCServiceControlsRequest
         where
        toJSON DisableVPCServiceControlsRequest'{..}
          = object
              (catMaybes
                 [("consumerNetwork" .=) <$> _dvscrConsumerNetwork])

-- | Metadata provided through GetOperation request for the LRO generated by
-- Partial Delete Connection API
--
-- /See:/ 'partialDeleteConnectionMetadata' smart constructor.
data PartialDeleteConnectionMetadata =
  PartialDeleteConnectionMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartialDeleteConnectionMetadata' with the minimum fields required to make a request.
--
partialDeleteConnectionMetadata
    :: PartialDeleteConnectionMetadata
partialDeleteConnectionMetadata = PartialDeleteConnectionMetadata'


instance FromJSON PartialDeleteConnectionMetadata
         where
        parseJSON
          = withObject "PartialDeleteConnectionMetadata"
              (\ o -> pure PartialDeleteConnectionMetadata')

instance ToJSON PartialDeleteConnectionMetadata where
        toJSON = const emptyObject

-- | Request to remove a record set from a private managed DNS zone in the
-- shared producer host project. The name, type, ttl, and data values must
-- all exactly match an existing record set in the specified zone.
--
-- /See:/ 'removeDNSRecordSetRequest' smart constructor.
data RemoveDNSRecordSetRequest =
  RemoveDNSRecordSetRequest'
    { _rdrsrZone :: !(Maybe Text)
    , _rdrsrConsumerNetwork :: !(Maybe Text)
    , _rdrsrDNSRecordSet :: !(Maybe DNSRecordSet)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemoveDNSRecordSetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdrsrZone'
--
-- * 'rdrsrConsumerNetwork'
--
-- * 'rdrsrDNSRecordSet'
removeDNSRecordSetRequest
    :: RemoveDNSRecordSetRequest
removeDNSRecordSetRequest =
  RemoveDNSRecordSetRequest'
    { _rdrsrZone = Nothing
    , _rdrsrConsumerNetwork = Nothing
    , _rdrsrDNSRecordSet = Nothing
    }


-- | Required. The name of the private DNS zone in the shared producer host
-- project from which the record set will be removed.
rdrsrZone :: Lens' RemoveDNSRecordSetRequest (Maybe Text)
rdrsrZone
  = lens _rdrsrZone (\ s a -> s{_rdrsrZone = a})

-- | Required. The network that the consumer is using to connect with
-- services. Must be in the form of
-- projects\/{project}\/global\/networks\/{network} {project} is the
-- project number, as in \'12345\' {network} is the network name.
rdrsrConsumerNetwork :: Lens' RemoveDNSRecordSetRequest (Maybe Text)
rdrsrConsumerNetwork
  = lens _rdrsrConsumerNetwork
      (\ s a -> s{_rdrsrConsumerNetwork = a})

-- | Required. The DNS record set to remove.
rdrsrDNSRecordSet :: Lens' RemoveDNSRecordSetRequest (Maybe DNSRecordSet)
rdrsrDNSRecordSet
  = lens _rdrsrDNSRecordSet
      (\ s a -> s{_rdrsrDNSRecordSet = a})

instance FromJSON RemoveDNSRecordSetRequest where
        parseJSON
          = withObject "RemoveDNSRecordSetRequest"
              (\ o ->
                 RemoveDNSRecordSetRequest' <$>
                   (o .:? "zone") <*> (o .:? "consumerNetwork") <*>
                     (o .:? "dnsRecordSet"))

instance ToJSON RemoveDNSRecordSetRequest where
        toJSON RemoveDNSRecordSetRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _rdrsrZone,
                  ("consumerNetwork" .=) <$> _rdrsrConsumerNetwork,
                  ("dnsRecordSet" .=) <$> _rdrsrDNSRecordSet])

-- | Grouping of IAM role and IAM member.
--
-- /See:/ 'policyBinding' smart constructor.
data PolicyBinding =
  PolicyBinding'
    { _pbRole :: !(Maybe Text)
    , _pbMember :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PolicyBinding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbRole'
--
-- * 'pbMember'
policyBinding
    :: PolicyBinding
policyBinding = PolicyBinding' {_pbRole = Nothing, _pbMember = Nothing}


-- | Required. Role to apply. Only allowlisted roles can be used at the
-- specified granularity. The role must be one of the following: -
-- \'roles\/container.hostServiceAgentUser\' applied on the shared VPC host
-- project - \'roles\/compute.securityAdmin\' applied on the shared VPC
-- host project
pbRole :: Lens' PolicyBinding (Maybe Text)
pbRole = lens _pbRole (\ s a -> s{_pbRole = a})

-- | Required. Member to bind the role with. See
-- \/iam\/docs\/reference\/rest\/v1\/Policy#Binding for how to format each
-- member. Eg. - user:myuser\'mydomain.com -
-- serviceAccount:my-service-account\'app.gserviceaccount.com
pbMember :: Lens' PolicyBinding (Maybe Text)
pbMember = lens _pbMember (\ s a -> s{_pbMember = a})

instance FromJSON PolicyBinding where
        parseJSON
          = withObject "PolicyBinding"
              (\ o ->
                 PolicyBinding' <$>
                   (o .:? "role") <*> (o .:? "member"))

instance ToJSON PolicyBinding where
        toJSON PolicyBinding'{..}
          = object
              (catMaybes
                 [("role" .=) <$> _pbRole,
                  ("member" .=) <$> _pbMember])

--
-- /See:/ 'validateConsumerConfigResponse' smart constructor.
data ValidateConsumerConfigResponse =
  ValidateConsumerConfigResponse'
    { _vccrExistingSubnetworkCandidates :: !(Maybe [Subnetwork])
    , _vccrValidationError :: !(Maybe ValidateConsumerConfigResponseValidationError)
    , _vccrIsValid :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ValidateConsumerConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vccrExistingSubnetworkCandidates'
--
-- * 'vccrValidationError'
--
-- * 'vccrIsValid'
validateConsumerConfigResponse
    :: ValidateConsumerConfigResponse
validateConsumerConfigResponse =
  ValidateConsumerConfigResponse'
    { _vccrExistingSubnetworkCandidates = Nothing
    , _vccrValidationError = Nothing
    , _vccrIsValid = Nothing
    }


-- | List of subnetwork candidates from the request which exist with the
-- \`ip_cidr_range\`, \`secondary_ip_cider_ranges\`, and
-- \`outside_allocation\` fields set.
vccrExistingSubnetworkCandidates :: Lens' ValidateConsumerConfigResponse [Subnetwork]
vccrExistingSubnetworkCandidates
  = lens _vccrExistingSubnetworkCandidates
      (\ s a -> s{_vccrExistingSubnetworkCandidates = a})
      . _Default
      . _Coerce

-- | The first validation which failed.
vccrValidationError :: Lens' ValidateConsumerConfigResponse (Maybe ValidateConsumerConfigResponseValidationError)
vccrValidationError
  = lens _vccrValidationError
      (\ s a -> s{_vccrValidationError = a})

-- | Indicates whether all the requested validations passed.
vccrIsValid :: Lens' ValidateConsumerConfigResponse (Maybe Bool)
vccrIsValid
  = lens _vccrIsValid (\ s a -> s{_vccrIsValid = a})

instance FromJSON ValidateConsumerConfigResponse
         where
        parseJSON
          = withObject "ValidateConsumerConfigResponse"
              (\ o ->
                 ValidateConsumerConfigResponse' <$>
                   (o .:? "existingSubnetworkCandidates" .!= mempty) <*>
                     (o .:? "validationError")
                     <*> (o .:? "isValid"))

instance ToJSON ValidateConsumerConfigResponse where
        toJSON ValidateConsumerConfigResponse'{..}
          = object
              (catMaybes
                 [("existingSubnetworkCandidates" .=) <$>
                    _vccrExistingSubnetworkCandidates,
                  ("validationError" .=) <$> _vccrValidationError,
                  ("isValid" .=) <$> _vccrIsValid])

-- | \`Backend\` defines the backend configuration for a service.
--
-- /See:/ 'backend' smart constructor.
newtype Backend =
  Backend'
    { _bRules :: Maybe [BackendRule]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Backend' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bRules'
backend
    :: Backend
backend = Backend' {_bRules = Nothing}


-- | A list of API backend rules that apply to individual API methods.
-- **NOTE:** All service configuration rules follow \"last one wins\"
-- order.
bRules :: Lens' Backend [BackendRule]
bRules
  = lens _bRules (\ s a -> s{_bRules = a}) . _Default .
      _Coerce

instance FromJSON Backend where
        parseJSON
          = withObject "Backend"
              (\ o -> Backend' <$> (o .:? "rules" .!= mempty))

instance ToJSON Backend where
        toJSON Backend'{..}
          = object (catMaybes [("rules" .=) <$> _bRules])

-- | Request to update the configuration of a service networking connection
-- including the import\/export of custom routes and subnetwork routes with
-- public IP.
--
-- /See:/ 'updateConsumerConfigRequest' smart constructor.
newtype UpdateConsumerConfigRequest =
  UpdateConsumerConfigRequest'
    { _uccrConsumerConfig :: Maybe ConsumerConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateConsumerConfigRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uccrConsumerConfig'
updateConsumerConfigRequest
    :: UpdateConsumerConfigRequest
updateConsumerConfigRequest =
  UpdateConsumerConfigRequest' {_uccrConsumerConfig = Nothing}


-- | Required. The updated peering config.
uccrConsumerConfig :: Lens' UpdateConsumerConfigRequest (Maybe ConsumerConfig)
uccrConsumerConfig
  = lens _uccrConsumerConfig
      (\ s a -> s{_uccrConsumerConfig = a})

instance FromJSON UpdateConsumerConfigRequest where
        parseJSON
          = withObject "UpdateConsumerConfigRequest"
              (\ o ->
                 UpdateConsumerConfigRequest' <$>
                   (o .:? "consumerConfig"))

instance ToJSON UpdateConsumerConfigRequest where
        toJSON UpdateConsumerConfigRequest'{..}
          = object
              (catMaybes
                 [("consumerConfig" .=) <$> _uccrConsumerConfig])

-- | Monitoring configuration of the service. The example below shows how to
-- configure monitored resources and metrics for monitoring. In the
-- example, a monitored resource and two metrics are defined. The
-- \`library.googleapis.com\/book\/returned_count\` metric is sent to both
-- producer and consumer projects, whereas the
-- \`library.googleapis.com\/book\/num_overdue\` metric is only sent to the
-- consumer project. monitored_resources: - type:
-- library.googleapis.com\/Branch display_name: \"Library Branch\"
-- description: \"A branch of a library.\" launch_stage: GA labels: - key:
-- resource_container description: \"The Cloud container (ie. project id)
-- for the Branch.\" - key: location description: \"The location of the
-- library branch.\" - key: branch_id description: \"The id of the
-- branch.\" metrics: - name: library.googleapis.com\/book\/returned_count
-- display_name: \"Books Returned\" description: \"The count of books that
-- have been returned.\" launch_stage: GA metric_kind: DELTA value_type:
-- INT64 unit: \"1\" labels: - key: customer_id description: \"The id of
-- the customer.\" - name: library.googleapis.com\/book\/num_overdue
-- display_name: \"Books Overdue\" description: \"The current number of
-- overdue books.\" launch_stage: GA metric_kind: GAUGE value_type: INT64
-- unit: \"1\" labels: - key: customer_id description: \"The id of the
-- customer.\" monitoring: producer_destinations: - monitored_resource:
-- library.googleapis.com\/Branch metrics: -
-- library.googleapis.com\/book\/returned_count consumer_destinations: -
-- monitored_resource: library.googleapis.com\/Branch metrics: -
-- library.googleapis.com\/book\/returned_count -
-- library.googleapis.com\/book\/num_overdue
--
-- /See:/ 'monitoring' smart constructor.
data Monitoring =
  Monitoring'
    { _mProducerDestinations :: !(Maybe [MonitoringDestination])
    , _mConsumerDestinations :: !(Maybe [MonitoringDestination])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Monitoring' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mProducerDestinations'
--
-- * 'mConsumerDestinations'
monitoring
    :: Monitoring
monitoring =
  Monitoring'
    {_mProducerDestinations = Nothing, _mConsumerDestinations = Nothing}


-- | Monitoring configurations for sending metrics to the producer project.
-- There can be multiple producer destinations. A monitored resource type
-- may appear in multiple monitoring destinations if different aggregations
-- are needed for different sets of metrics associated with that monitored
-- resource type. A monitored resource and metric pair may only be used
-- once in the Monitoring configuration.
mProducerDestinations :: Lens' Monitoring [MonitoringDestination]
mProducerDestinations
  = lens _mProducerDestinations
      (\ s a -> s{_mProducerDestinations = a})
      . _Default
      . _Coerce

-- | Monitoring configurations for sending metrics to the consumer project.
-- There can be multiple consumer destinations. A monitored resource type
-- may appear in multiple monitoring destinations if different aggregations
-- are needed for different sets of metrics associated with that monitored
-- resource type. A monitored resource and metric pair may only be used
-- once in the Monitoring configuration.
mConsumerDestinations :: Lens' Monitoring [MonitoringDestination]
mConsumerDestinations
  = lens _mConsumerDestinations
      (\ s a -> s{_mConsumerDestinations = a})
      . _Default
      . _Coerce

instance FromJSON Monitoring where
        parseJSON
          = withObject "Monitoring"
              (\ o ->
                 Monitoring' <$>
                   (o .:? "producerDestinations" .!= mempty) <*>
                     (o .:? "consumerDestinations" .!= mempty))

instance ToJSON Monitoring where
        toJSON Monitoring'{..}
          = object
              (catMaybes
                 [("producerDestinations" .=) <$>
                    _mProducerDestinations,
                  ("consumerDestinations" .=) <$>
                    _mConsumerDestinations])

-- | A description of a log type. Example in YAML format: - name:
-- library.googleapis.com\/activity_history description: The history of
-- borrowing and returning library items. display_name: Activity labels: -
-- key: \/customer_id description: Identifier of a library customer
--
-- /See:/ 'logDescriptor' smart constructor.
data LogDescriptor =
  LogDescriptor'
    { _ldName :: !(Maybe Text)
    , _ldDisplayName :: !(Maybe Text)
    , _ldLabels :: !(Maybe [LabelDescriptor])
    , _ldDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldName'
--
-- * 'ldDisplayName'
--
-- * 'ldLabels'
--
-- * 'ldDescription'
logDescriptor
    :: LogDescriptor
logDescriptor =
  LogDescriptor'
    { _ldName = Nothing
    , _ldDisplayName = Nothing
    , _ldLabels = Nothing
    , _ldDescription = Nothing
    }


-- | The name of the log. It must be less than 512 characters long and can
-- include the following characters: upper- and lower-case alphanumeric
-- characters [A-Za-z0-9], and punctuation characters including slash,
-- underscore, hyphen, period [\/_-.].
ldName :: Lens' LogDescriptor (Maybe Text)
ldName = lens _ldName (\ s a -> s{_ldName = a})

-- | The human-readable name for this log. This information appears on the
-- user interface and should be concise.
ldDisplayName :: Lens' LogDescriptor (Maybe Text)
ldDisplayName
  = lens _ldDisplayName
      (\ s a -> s{_ldDisplayName = a})

-- | The set of labels that are available to describe a specific log entry.
-- Runtime requests that contain labels not specified here are considered
-- invalid.
ldLabels :: Lens' LogDescriptor [LabelDescriptor]
ldLabels
  = lens _ldLabels (\ s a -> s{_ldLabels = a}) .
      _Default
      . _Coerce

-- | A human-readable description of this log. This information appears in
-- the documentation and can contain details.
ldDescription :: Lens' LogDescriptor (Maybe Text)
ldDescription
  = lens _ldDescription
      (\ s a -> s{_ldDescription = a})

instance FromJSON LogDescriptor where
        parseJSON
          = withObject "LogDescriptor"
              (\ o ->
                 LogDescriptor' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "labels" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON LogDescriptor where
        toJSON LogDescriptor'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _ldName,
                  ("displayName" .=) <$> _ldDisplayName,
                  ("labels" .=) <$> _ldLabels,
                  ("description" .=) <$> _ldDescription])

-- | Method represents a method of an API interface.
--
-- /See:/ 'method' smart constructor.
data Method =
  Method'
    { _metRequestStreaming :: !(Maybe Bool)
    , _metResponseTypeURL :: !(Maybe Text)
    , _metName :: !(Maybe Text)
    , _metResponseStreaming :: !(Maybe Bool)
    , _metRequestTypeURL :: !(Maybe Text)
    , _metOptions :: !(Maybe [Option])
    , _metSyntax :: !(Maybe MethodSyntax)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Method' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'metRequestStreaming'
--
-- * 'metResponseTypeURL'
--
-- * 'metName'
--
-- * 'metResponseStreaming'
--
-- * 'metRequestTypeURL'
--
-- * 'metOptions'
--
-- * 'metSyntax'
method
    :: Method
method =
  Method'
    { _metRequestStreaming = Nothing
    , _metResponseTypeURL = Nothing
    , _metName = Nothing
    , _metResponseStreaming = Nothing
    , _metRequestTypeURL = Nothing
    , _metOptions = Nothing
    , _metSyntax = Nothing
    }


-- | If true, the request is streamed.
metRequestStreaming :: Lens' Method (Maybe Bool)
metRequestStreaming
  = lens _metRequestStreaming
      (\ s a -> s{_metRequestStreaming = a})

-- | The URL of the output message type.
metResponseTypeURL :: Lens' Method (Maybe Text)
metResponseTypeURL
  = lens _metResponseTypeURL
      (\ s a -> s{_metResponseTypeURL = a})

-- | The simple name of this method.
metName :: Lens' Method (Maybe Text)
metName = lens _metName (\ s a -> s{_metName = a})

-- | If true, the response is streamed.
metResponseStreaming :: Lens' Method (Maybe Bool)
metResponseStreaming
  = lens _metResponseStreaming
      (\ s a -> s{_metResponseStreaming = a})

-- | A URL of the input message type.
metRequestTypeURL :: Lens' Method (Maybe Text)
metRequestTypeURL
  = lens _metRequestTypeURL
      (\ s a -> s{_metRequestTypeURL = a})

-- | Any metadata attached to the method.
metOptions :: Lens' Method [Option]
metOptions
  = lens _metOptions (\ s a -> s{_metOptions = a}) .
      _Default
      . _Coerce

-- | The source syntax of this method.
metSyntax :: Lens' Method (Maybe MethodSyntax)
metSyntax
  = lens _metSyntax (\ s a -> s{_metSyntax = a})

instance FromJSON Method where
        parseJSON
          = withObject "Method"
              (\ o ->
                 Method' <$>
                   (o .:? "requestStreaming") <*>
                     (o .:? "responseTypeUrl")
                     <*> (o .:? "name")
                     <*> (o .:? "responseStreaming")
                     <*> (o .:? "requestTypeUrl")
                     <*> (o .:? "options" .!= mempty)
                     <*> (o .:? "syntax"))

instance ToJSON Method where
        toJSON Method'{..}
          = object
              (catMaybes
                 [("requestStreaming" .=) <$> _metRequestStreaming,
                  ("responseTypeUrl" .=) <$> _metResponseTypeURL,
                  ("name" .=) <$> _metName,
                  ("responseStreaming" .=) <$> _metResponseStreaming,
                  ("requestTypeUrl" .=) <$> _metRequestTypeURL,
                  ("options" .=) <$> _metOptions,
                  ("syntax" .=) <$> _metSyntax])

-- | Represents a found unused range.
--
-- /See:/ 'range' smart constructor.
data Range =
  Range'
    { _ranNetwork :: !(Maybe Text)
    , _ranIPCIdRRange :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Range' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ranNetwork'
--
-- * 'ranIPCIdRRange'
range
    :: Range
range = Range' {_ranNetwork = Nothing, _ranIPCIdRRange = Nothing}


-- | In the Shared VPC host project, the VPC network that\'s peered with the
-- consumer network. For example:
-- \`projects\/1234321\/global\/networks\/host-network\`
ranNetwork :: Lens' Range (Maybe Text)
ranNetwork
  = lens _ranNetwork (\ s a -> s{_ranNetwork = a})

-- | CIDR range in \"10.x.x.x\/y\" format that is within the allocated ranges
-- and currently unused.
ranIPCIdRRange :: Lens' Range (Maybe Text)
ranIPCIdRRange
  = lens _ranIPCIdRRange
      (\ s a -> s{_ranIPCIdRRange = a})

instance FromJSON Range where
        parseJSON
          = withObject "Range"
              (\ o ->
                 Range' <$>
                   (o .:? "network") <*> (o .:? "ipCidrRange"))

instance ToJSON Range where
        toJSON Range'{..}
          = object
              (catMaybes
                 [("network" .=) <$> _ranNetwork,
                  ("ipCidrRange" .=) <$> _ranIPCIdRRange])

-- | ### System parameter configuration A system parameter is a special kind
-- of parameter defined by the API system, not by an individual API. It is
-- typically mapped to an HTTP header and\/or a URL query parameter. This
-- configuration specifies which methods change the names of the system
-- parameters.
--
-- /See:/ 'systemParameters' smart constructor.
newtype SystemParameters =
  SystemParameters'
    { _spRules :: Maybe [SystemParameterRule]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SystemParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spRules'
systemParameters
    :: SystemParameters
systemParameters = SystemParameters' {_spRules = Nothing}


-- | Define system parameters. The parameters defined here will override the
-- default parameters implemented by the system. If this field is missing
-- from the service config, default system parameters will be used. Default
-- system parameters and names is implementation-dependent. Example: define
-- api key for all methods system_parameters rules: - selector: \"*\"
-- parameters: - name: api_key url_query_parameter: api_key Example: define
-- 2 api key names for a specific method. system_parameters rules: -
-- selector: \"\/ListShelves\" parameters: - name: api_key http_header:
-- Api-Key1 - name: api_key http_header: Api-Key2 **NOTE:** All service
-- configuration rules follow \"last one wins\" order.
spRules :: Lens' SystemParameters [SystemParameterRule]
spRules
  = lens _spRules (\ s a -> s{_spRules = a}) . _Default
      . _Coerce

instance FromJSON SystemParameters where
        parseJSON
          = withObject "SystemParameters"
              (\ o ->
                 SystemParameters' <$> (o .:? "rules" .!= mempty))

instance ToJSON SystemParameters where
        toJSON SystemParameters'{..}
          = object (catMaybes [("rules" .=) <$> _spRules])

-- | Metadata provided through GetOperation request for the LRO generated by
-- Delete Connection API
--
-- /See:/ 'deleteConnectionMetadata' smart constructor.
data DeleteConnectionMetadata =
  DeleteConnectionMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteConnectionMetadata' with the minimum fields required to make a request.
--
deleteConnectionMetadata
    :: DeleteConnectionMetadata
deleteConnectionMetadata = DeleteConnectionMetadata'


instance FromJSON DeleteConnectionMetadata where
        parseJSON
          = withObject "DeleteConnectionMetadata"
              (\ o -> pure DeleteConnectionMetadata')

instance ToJSON DeleteConnectionMetadata where
        toJSON = const emptyObject

-- | Blank message response type for RemoveDnsZone API
--
-- /See:/ 'removeDNSZoneResponse' smart constructor.
data RemoveDNSZoneResponse =
  RemoveDNSZoneResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemoveDNSZoneResponse' with the minimum fields required to make a request.
--
removeDNSZoneResponse
    :: RemoveDNSZoneResponse
removeDNSZoneResponse = RemoveDNSZoneResponse'


instance FromJSON RemoveDNSZoneResponse where
        parseJSON
          = withObject "RemoveDNSZoneResponse"
              (\ o -> pure RemoveDNSZoneResponse')

instance ToJSON RemoveDNSZoneResponse where
        toJSON = const emptyObject

-- | \`Documentation\` provides the information for describing a service.
-- Example: documentation: summary: > The Google Calendar API gives access
-- to most calendar features. pages: - name: Overview content: (== include
-- google\/foo\/overview.md ==) - name: Tutorial content: (== include
-- google\/foo\/tutorial.md ==) subpages; - name: Java content: (== include
-- google\/foo\/tutorial_java.md ==) rules: - selector:
-- google.calendar.Calendar.Get description: > ... - selector:
-- google.calendar.Calendar.Put description: > ... Documentation is
-- provided in markdown syntax. In addition to standard markdown features,
-- definition lists, tables and fenced code blocks are supported. Section
-- headers can be provided and are interpreted relative to the section
-- nesting of the context where a documentation fragment is embedded.
-- Documentation from the IDL is merged with documentation defined via the
-- config at normalization time, where documentation provided by config
-- rules overrides IDL provided. A number of constructs specific to the API
-- platform are supported in documentation text. In order to reference a
-- proto element, the following notation can be used:
-- [fully.qualified.proto.name][] To override the display text used for the
-- link, this can be used: [display text][fully.qualified.proto.name] Text
-- can be excluded from doc using the following notation: (-- internal
-- comment --) A few directives are available in documentation. Note that
-- directives must appear on a single line to be properly identified. The
-- \`include\` directive includes a markdown file from an external source:
-- (== include path\/to\/file ==) The \`resource_for\` directive marks a
-- message to be the resource of a collection in REST view. If it is not
-- specified, tools attempt to infer the resource from the operations in a
-- collection: (== resource_for v1.shelves.books ==) The directive
-- \`suppress_warning\` does not directly affect documentation and is
-- documented together with service config validation.
--
-- /See:/ 'documentation' smart constructor.
data Documentation =
  Documentation'
    { _dSummary :: !(Maybe Text)
    , _dDocumentationRootURL :: !(Maybe Text)
    , _dRules :: !(Maybe [DocumentationRule])
    , _dPages :: !(Maybe [Page])
    , _dServiceRootURL :: !(Maybe Text)
    , _dOverview :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Documentation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dSummary'
--
-- * 'dDocumentationRootURL'
--
-- * 'dRules'
--
-- * 'dPages'
--
-- * 'dServiceRootURL'
--
-- * 'dOverview'
documentation
    :: Documentation
documentation =
  Documentation'
    { _dSummary = Nothing
    , _dDocumentationRootURL = Nothing
    , _dRules = Nothing
    , _dPages = Nothing
    , _dServiceRootURL = Nothing
    , _dOverview = Nothing
    }


-- | A short description of what the service does. The summary must be plain
-- text. It becomes the overview of the service displayed in Google Cloud
-- Console. NOTE: This field is equivalent to the standard field
-- \`description\`.
dSummary :: Lens' Documentation (Maybe Text)
dSummary = lens _dSummary (\ s a -> s{_dSummary = a})

-- | The URL to the root of documentation.
dDocumentationRootURL :: Lens' Documentation (Maybe Text)
dDocumentationRootURL
  = lens _dDocumentationRootURL
      (\ s a -> s{_dDocumentationRootURL = a})

-- | A list of documentation rules that apply to individual API elements.
-- **NOTE:** All service configuration rules follow \"last one wins\"
-- order.
dRules :: Lens' Documentation [DocumentationRule]
dRules
  = lens _dRules (\ s a -> s{_dRules = a}) . _Default .
      _Coerce

-- | The top level pages for the documentation set.
dPages :: Lens' Documentation [Page]
dPages
  = lens _dPages (\ s a -> s{_dPages = a}) . _Default .
      _Coerce

-- | Specifies the service root url if the default one (the service name from
-- the yaml file) is not suitable. This can be seen in any fully specified
-- service urls as well as sections that show a base that other urls are
-- relative to.
dServiceRootURL :: Lens' Documentation (Maybe Text)
dServiceRootURL
  = lens _dServiceRootURL
      (\ s a -> s{_dServiceRootURL = a})

-- | Declares a single overview page. For example: documentation: summary:
-- ... overview: (== include overview.md ==) This is a shortcut for the
-- following declaration (using pages style): documentation: summary: ...
-- pages: - name: Overview content: (== include overview.md ==) Note: you
-- cannot specify both \`overview\` field and \`pages\` field.
dOverview :: Lens' Documentation (Maybe Text)
dOverview
  = lens _dOverview (\ s a -> s{_dOverview = a})

instance FromJSON Documentation where
        parseJSON
          = withObject "Documentation"
              (\ o ->
                 Documentation' <$>
                   (o .:? "summary") <*> (o .:? "documentationRootUrl")
                     <*> (o .:? "rules" .!= mempty)
                     <*> (o .:? "pages" .!= mempty)
                     <*> (o .:? "serviceRootUrl")
                     <*> (o .:? "overview"))

instance ToJSON Documentation where
        toJSON Documentation'{..}
          = object
              (catMaybes
                 [("summary" .=) <$> _dSummary,
                  ("documentationRootUrl" .=) <$>
                    _dDocumentationRootURL,
                  ("rules" .=) <$> _dRules, ("pages" .=) <$> _dPages,
                  ("serviceRootUrl" .=) <$> _dServiceRootURL,
                  ("overview" .=) <$> _dOverview])

-- | Metadata provided through GetOperation request for the LRO generated by
-- AddDnsRecordSet API
--
-- /See:/ 'addDNSRecordSetMetadata' smart constructor.
data AddDNSRecordSetMetadata =
  AddDNSRecordSetMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddDNSRecordSetMetadata' with the minimum fields required to make a request.
--
addDNSRecordSetMetadata
    :: AddDNSRecordSetMetadata
addDNSRecordSetMetadata = AddDNSRecordSetMetadata'


instance FromJSON AddDNSRecordSetMetadata where
        parseJSON
          = withObject "AddDNSRecordSetMetadata"
              (\ o -> pure AddDNSRecordSetMetadata')

instance ToJSON AddDNSRecordSetMetadata where
        toJSON = const emptyObject

-- | Additional annotations that can be used to guide the usage of a metric.
--
-- /See:/ 'metricDescriptorMetadata' smart constructor.
data MetricDescriptorMetadata =
  MetricDescriptorMetadata'
    { _mdmSamplePeriod :: !(Maybe GDuration)
    , _mdmIngestDelay :: !(Maybe GDuration)
    , _mdmLaunchStage :: !(Maybe MetricDescriptorMetadataLaunchStage)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricDescriptorMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdmSamplePeriod'
--
-- * 'mdmIngestDelay'
--
-- * 'mdmLaunchStage'
metricDescriptorMetadata
    :: MetricDescriptorMetadata
metricDescriptorMetadata =
  MetricDescriptorMetadata'
    { _mdmSamplePeriod = Nothing
    , _mdmIngestDelay = Nothing
    , _mdmLaunchStage = Nothing
    }


-- | The sampling period of metric data points. For metrics which are written
-- periodically, consecutive data points are stored at this time interval,
-- excluding data loss due to errors. Metrics with a higher granularity
-- have a smaller sampling period.
mdmSamplePeriod :: Lens' MetricDescriptorMetadata (Maybe Scientific)
mdmSamplePeriod
  = lens _mdmSamplePeriod
      (\ s a -> s{_mdmSamplePeriod = a})
      . mapping _GDuration

-- | The delay of data points caused by ingestion. Data points older than
-- this age are guaranteed to be ingested and available to be read,
-- excluding data loss due to errors.
mdmIngestDelay :: Lens' MetricDescriptorMetadata (Maybe Scientific)
mdmIngestDelay
  = lens _mdmIngestDelay
      (\ s a -> s{_mdmIngestDelay = a})
      . mapping _GDuration

-- | Deprecated. Must use the MetricDescriptor.launch_stage instead.
mdmLaunchStage :: Lens' MetricDescriptorMetadata (Maybe MetricDescriptorMetadataLaunchStage)
mdmLaunchStage
  = lens _mdmLaunchStage
      (\ s a -> s{_mdmLaunchStage = a})

instance FromJSON MetricDescriptorMetadata where
        parseJSON
          = withObject "MetricDescriptorMetadata"
              (\ o ->
                 MetricDescriptorMetadata' <$>
                   (o .:? "samplePeriod") <*> (o .:? "ingestDelay") <*>
                     (o .:? "launchStage"))

instance ToJSON MetricDescriptorMetadata where
        toJSON MetricDescriptorMetadata'{..}
          = object
              (catMaybes
                 [("samplePeriod" .=) <$> _mdmSamplePeriod,
                  ("ingestDelay" .=) <$> _mdmIngestDelay,
                  ("launchStage" .=) <$> _mdmLaunchStage])

-- | DNS domain suffix for which requests originating in the producer VPC
-- network are resolved in the associated consumer VPC network.
--
-- /See:/ 'peeredDNSDomain' smart constructor.
data PeeredDNSDomain =
  PeeredDNSDomain'
    { _pddDNSSuffix :: !(Maybe Text)
    , _pddName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeeredDNSDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddDNSSuffix'
--
-- * 'pddName'
peeredDNSDomain
    :: PeeredDNSDomain
peeredDNSDomain = PeeredDNSDomain' {_pddDNSSuffix = Nothing, _pddName = Nothing}


-- | The DNS domain name suffix e.g. \`example.com.\`.
pddDNSSuffix :: Lens' PeeredDNSDomain (Maybe Text)
pddDNSSuffix
  = lens _pddDNSSuffix (\ s a -> s{_pddDNSSuffix = a})

-- | User assigned name for this resource. Must be unique within the consumer
-- network. The name must be 1-63 characters long, must begin with a
-- letter, end with a letter or digit, and only contain lowercase letters,
-- digits or dashes.
pddName :: Lens' PeeredDNSDomain (Maybe Text)
pddName = lens _pddName (\ s a -> s{_pddName = a})

instance FromJSON PeeredDNSDomain where
        parseJSON
          = withObject "PeeredDNSDomain"
              (\ o ->
                 PeeredDNSDomain' <$>
                   (o .:? "dnsSuffix") <*> (o .:? "name"))

instance ToJSON PeeredDNSDomain where
        toJSON PeeredDNSDomain'{..}
          = object
              (catMaybes
                 [("dnsSuffix" .=) <$> _pddDNSSuffix,
                  ("name" .=) <$> _pddName])

-- | Represents a subnet that was created or discovered by a private access
-- management service.
--
-- /See:/ 'subnetwork' smart constructor.
data Subnetwork =
  Subnetwork'
    { _subOutsideAllocation :: !(Maybe Bool)
    , _subNetwork :: !(Maybe Text)
    , _subName :: !(Maybe Text)
    , _subSecondaryIPRanges :: !(Maybe [SecondaryIPRange])
    , _subIPCIdRRange :: !(Maybe Text)
    , _subRegion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Subnetwork' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'subOutsideAllocation'
--
-- * 'subNetwork'
--
-- * 'subName'
--
-- * 'subSecondaryIPRanges'
--
-- * 'subIPCIdRRange'
--
-- * 'subRegion'
subnetwork
    :: Subnetwork
subnetwork =
  Subnetwork'
    { _subOutsideAllocation = Nothing
    , _subNetwork = Nothing
    , _subName = Nothing
    , _subSecondaryIPRanges = Nothing
    , _subIPCIdRRange = Nothing
    , _subRegion = Nothing
    }


-- | This is a discovered subnet that is not within the current consumer
-- allocated ranges.
subOutsideAllocation :: Lens' Subnetwork (Maybe Bool)
subOutsideAllocation
  = lens _subOutsideAllocation
      (\ s a -> s{_subOutsideAllocation = a})

-- | In the Shared VPC host project, the VPC network that\'s peered with the
-- consumer network. For example:
-- \`projects\/1234321\/global\/networks\/host-network\`
subNetwork :: Lens' Subnetwork (Maybe Text)
subNetwork
  = lens _subNetwork (\ s a -> s{_subNetwork = a})

-- | Subnetwork name. See https:\/\/cloud.google.com\/compute\/docs\/vpc\/
subName :: Lens' Subnetwork (Maybe Text)
subName = lens _subName (\ s a -> s{_subName = a})

-- | List of secondary IP ranges in this subnetwork.
subSecondaryIPRanges :: Lens' Subnetwork [SecondaryIPRange]
subSecondaryIPRanges
  = lens _subSecondaryIPRanges
      (\ s a -> s{_subSecondaryIPRanges = a})
      . _Default
      . _Coerce

-- | Subnetwork CIDR range in \`10.x.x.x\/y\` format.
subIPCIdRRange :: Lens' Subnetwork (Maybe Text)
subIPCIdRRange
  = lens _subIPCIdRRange
      (\ s a -> s{_subIPCIdRRange = a})

-- | GCP region where the subnetwork is located.
subRegion :: Lens' Subnetwork (Maybe Text)
subRegion
  = lens _subRegion (\ s a -> s{_subRegion = a})

instance FromJSON Subnetwork where
        parseJSON
          = withObject "Subnetwork"
              (\ o ->
                 Subnetwork' <$>
                   (o .:? "outsideAllocation") <*> (o .:? "network") <*>
                     (o .:? "name")
                     <*> (o .:? "secondaryIpRanges" .!= mempty)
                     <*> (o .:? "ipCidrRange")
                     <*> (o .:? "region"))

instance ToJSON Subnetwork where
        toJSON Subnetwork'{..}
          = object
              (catMaybes
                 [("outsideAllocation" .=) <$> _subOutsideAllocation,
                  ("network" .=) <$> _subNetwork,
                  ("name" .=) <$> _subName,
                  ("secondaryIpRanges" .=) <$> _subSecondaryIPRanges,
                  ("ipCidrRange" .=) <$> _subIPCIdRRange,
                  ("region" .=) <$> _subRegion])

-- | Request to create a subnetwork in a previously peered service network.
--
-- /See:/ 'addSubnetworkRequest' smart constructor.
data AddSubnetworkRequest =
  AddSubnetworkRequest'
    { _asrIPPrefixLength :: !(Maybe (Textual Int32))
    , _asrRequestedAddress :: !(Maybe Text)
    , _asrRequestedRanges :: !(Maybe [Text])
    , _asrSecondaryIPRangeSpecs :: !(Maybe [SecondaryIPRangeSpec])
    , _asrSubnetwork :: !(Maybe Text)
    , _asrRegion :: !(Maybe Text)
    , _asrSubnetworkUsers :: !(Maybe [Text])
    , _asrConsumerNetwork :: !(Maybe Text)
    , _asrConsumer :: !(Maybe Text)
    , _asrDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddSubnetworkRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrIPPrefixLength'
--
-- * 'asrRequestedAddress'
--
-- * 'asrRequestedRanges'
--
-- * 'asrSecondaryIPRangeSpecs'
--
-- * 'asrSubnetwork'
--
-- * 'asrRegion'
--
-- * 'asrSubnetworkUsers'
--
-- * 'asrConsumerNetwork'
--
-- * 'asrConsumer'
--
-- * 'asrDescription'
addSubnetworkRequest
    :: AddSubnetworkRequest
addSubnetworkRequest =
  AddSubnetworkRequest'
    { _asrIPPrefixLength = Nothing
    , _asrRequestedAddress = Nothing
    , _asrRequestedRanges = Nothing
    , _asrSecondaryIPRangeSpecs = Nothing
    , _asrSubnetwork = Nothing
    , _asrRegion = Nothing
    , _asrSubnetworkUsers = Nothing
    , _asrConsumerNetwork = Nothing
    , _asrConsumer = Nothing
    , _asrDescription = Nothing
    }


-- | Required. The prefix length of the subnet\'s IP address range. Use CIDR
-- range notation, such as \`30\` to provision a subnet with an
-- \`x.x.x.x\/30\` CIDR range. The IP address range is drawn from a pool of
-- available ranges in the service consumer\'s allocated range.
asrIPPrefixLength :: Lens' AddSubnetworkRequest (Maybe Int32)
asrIPPrefixLength
  = lens _asrIPPrefixLength
      (\ s a -> s{_asrIPPrefixLength = a})
      . mapping _Coerce

-- | Optional. The starting address of a range. The address must be a valid
-- IPv4 address in the x.x.x.x format. This value combined with the IP
-- prefix range is the CIDR range for the subnet. The range must be within
-- the allocated range that is assigned to the private connection. If the
-- CIDR range isn\'t available, the call fails.
asrRequestedAddress :: Lens' AddSubnetworkRequest (Maybe Text)
asrRequestedAddress
  = lens _asrRequestedAddress
      (\ s a -> s{_asrRequestedAddress = a})

-- | Optional. The name of one or more allocated IP address ranges associated
-- with this private service access connection. If no range names are
-- provided all ranges associated with this connection will be considered.
-- If a CIDR range with the specified IP prefix length is not available
-- within these ranges, the call fails.
asrRequestedRanges :: Lens' AddSubnetworkRequest [Text]
asrRequestedRanges
  = lens _asrRequestedRanges
      (\ s a -> s{_asrRequestedRanges = a})
      . _Default
      . _Coerce

-- | Optional. A list of secondary IP ranges to be created within the new
-- subnetwork.
asrSecondaryIPRangeSpecs :: Lens' AddSubnetworkRequest [SecondaryIPRangeSpec]
asrSecondaryIPRangeSpecs
  = lens _asrSecondaryIPRangeSpecs
      (\ s a -> s{_asrSecondaryIPRangeSpecs = a})
      . _Default
      . _Coerce

-- | Required. A name for the new subnet. For information about the naming
-- requirements, see
-- [subnetwork](\/compute\/docs\/reference\/rest\/v1\/subnetworks) in the
-- Compute API documentation.
asrSubnetwork :: Lens' AddSubnetworkRequest (Maybe Text)
asrSubnetwork
  = lens _asrSubnetwork
      (\ s a -> s{_asrSubnetwork = a})

-- | Required. The name of a [region](\/compute\/docs\/regions-zones) for the
-- subnet, such \`europe-west1\`.
asrRegion :: Lens' AddSubnetworkRequest (Maybe Text)
asrRegion
  = lens _asrRegion (\ s a -> s{_asrRegion = a})

-- | A list of members that are granted the \`compute.networkUser\` role on
-- the subnet.
asrSubnetworkUsers :: Lens' AddSubnetworkRequest [Text]
asrSubnetworkUsers
  = lens _asrSubnetworkUsers
      (\ s a -> s{_asrSubnetworkUsers = a})
      . _Default
      . _Coerce

-- | Required. The name of the service consumer\'s VPC network. The network
-- must have an existing private connection that was provisioned through
-- the connections.create method. The name must be in the following format:
-- \`projects\/{project}\/global\/networks\/{network}\`, where {project} is
-- a project number, such as \`12345\`. {network} is the name of a VPC
-- network in the project.
asrConsumerNetwork :: Lens' AddSubnetworkRequest (Maybe Text)
asrConsumerNetwork
  = lens _asrConsumerNetwork
      (\ s a -> s{_asrConsumerNetwork = a})

-- | Required. A resource that represents the service consumer, such as
-- \`projects\/123456\`. The project number can be different from the value
-- in the consumer network parameter. For example, the network might be
-- part of a Shared VPC network. In those cases, Service Networking
-- validates that this resource belongs to that Shared VPC.
asrConsumer :: Lens' AddSubnetworkRequest (Maybe Text)
asrConsumer
  = lens _asrConsumer (\ s a -> s{_asrConsumer = a})

-- | Optional. Description of the subnet.
asrDescription :: Lens' AddSubnetworkRequest (Maybe Text)
asrDescription
  = lens _asrDescription
      (\ s a -> s{_asrDescription = a})

instance FromJSON AddSubnetworkRequest where
        parseJSON
          = withObject "AddSubnetworkRequest"
              (\ o ->
                 AddSubnetworkRequest' <$>
                   (o .:? "ipPrefixLength") <*>
                     (o .:? "requestedAddress")
                     <*> (o .:? "requestedRanges" .!= mempty)
                     <*> (o .:? "secondaryIpRangeSpecs" .!= mempty)
                     <*> (o .:? "subnetwork")
                     <*> (o .:? "region")
                     <*> (o .:? "subnetworkUsers" .!= mempty)
                     <*> (o .:? "consumerNetwork")
                     <*> (o .:? "consumer")
                     <*> (o .:? "description"))

instance ToJSON AddSubnetworkRequest where
        toJSON AddSubnetworkRequest'{..}
          = object
              (catMaybes
                 [("ipPrefixLength" .=) <$> _asrIPPrefixLength,
                  ("requestedAddress" .=) <$> _asrRequestedAddress,
                  ("requestedRanges" .=) <$> _asrRequestedRanges,
                  ("secondaryIpRangeSpecs" .=) <$>
                    _asrSecondaryIPRangeSpecs,
                  ("subnetwork" .=) <$> _asrSubnetwork,
                  ("region" .=) <$> _asrRegion,
                  ("subnetworkUsers" .=) <$> _asrSubnetworkUsers,
                  ("consumerNetwork" .=) <$> _asrConsumerNetwork,
                  ("consumer" .=) <$> _asrConsumer,
                  ("description" .=) <$> _asrDescription])

-- | Define a system parameter rule mapping system parameter definitions to
-- methods.
--
-- /See:/ 'systemParameterRule' smart constructor.
data SystemParameterRule =
  SystemParameterRule'
    { _sprSelector :: !(Maybe Text)
    , _sprParameters :: !(Maybe [SystemParameter])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SystemParameterRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sprSelector'
--
-- * 'sprParameters'
systemParameterRule
    :: SystemParameterRule
systemParameterRule =
  SystemParameterRule' {_sprSelector = Nothing, _sprParameters = Nothing}


-- | Selects the methods to which this rule applies. Use \'*\' to indicate
-- all methods in all APIs. Refer to selector for syntax details.
sprSelector :: Lens' SystemParameterRule (Maybe Text)
sprSelector
  = lens _sprSelector (\ s a -> s{_sprSelector = a})

-- | Define parameters. Multiple names may be defined for a parameter. For a
-- given method call, only one of them should be used. If multiple names
-- are used the behavior is implementation-dependent. If none of the
-- specified names are present the behavior is parameter-dependent.
sprParameters :: Lens' SystemParameterRule [SystemParameter]
sprParameters
  = lens _sprParameters
      (\ s a -> s{_sprParameters = a})
      . _Default
      . _Coerce

instance FromJSON SystemParameterRule where
        parseJSON
          = withObject "SystemParameterRule"
              (\ o ->
                 SystemParameterRule' <$>
                   (o .:? "selector") <*>
                     (o .:? "parameters" .!= mempty))

instance ToJSON SystemParameterRule where
        toJSON SystemParameterRule'{..}
          = object
              (catMaybes
                 [("selector" .=) <$> _sprSelector,
                  ("parameters" .=) <$> _sprParameters])

-- | A description of a label.
--
-- /See:/ 'labelDescriptor' smart constructor.
data LabelDescriptor =
  LabelDescriptor'
    { _lKey :: !(Maybe Text)
    , _lValueType :: !(Maybe LabelDescriptorValueType)
    , _lDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LabelDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lKey'
--
-- * 'lValueType'
--
-- * 'lDescription'
labelDescriptor
    :: LabelDescriptor
labelDescriptor =
  LabelDescriptor'
    {_lKey = Nothing, _lValueType = Nothing, _lDescription = Nothing}


-- | The label key.
lKey :: Lens' LabelDescriptor (Maybe Text)
lKey = lens _lKey (\ s a -> s{_lKey = a})

-- | The type of data that can be assigned to the label.
lValueType :: Lens' LabelDescriptor (Maybe LabelDescriptorValueType)
lValueType
  = lens _lValueType (\ s a -> s{_lValueType = a})

-- | A human-readable description for the label.
lDescription :: Lens' LabelDescriptor (Maybe Text)
lDescription
  = lens _lDescription (\ s a -> s{_lDescription = a})

instance FromJSON LabelDescriptor where
        parseJSON
          = withObject "LabelDescriptor"
              (\ o ->
                 LabelDescriptor' <$>
                   (o .:? "key") <*> (o .:? "valueType") <*>
                     (o .:? "description"))

instance ToJSON LabelDescriptor where
        toJSON LabelDescriptor'{..}
          = object
              (catMaybes
                 [("key" .=) <$> _lKey,
                  ("valueType" .=) <$> _lValueType,
                  ("description" .=) <$> _lDescription])

-- | Represents IAM roles added to the shared VPC host project.
--
-- /See:/ 'addRolesResponse' smart constructor.
newtype AddRolesResponse =
  AddRolesResponse'
    { _aPolicyBinding :: Maybe [PolicyBinding]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddRolesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aPolicyBinding'
addRolesResponse
    :: AddRolesResponse
addRolesResponse = AddRolesResponse' {_aPolicyBinding = Nothing}


-- | Required. List of policy bindings that were added to the shared VPC host
-- project.
aPolicyBinding :: Lens' AddRolesResponse [PolicyBinding]
aPolicyBinding
  = lens _aPolicyBinding
      (\ s a -> s{_aPolicyBinding = a})
      . _Default
      . _Coerce

instance FromJSON AddRolesResponse where
        parseJSON
          = withObject "AddRolesResponse"
              (\ o ->
                 AddRolesResponse' <$>
                   (o .:? "policyBinding" .!= mempty))

instance ToJSON AddRolesResponse where
        toJSON AddRolesResponse'{..}
          = object
              (catMaybes
                 [("policyBinding" .=) <$> _aPolicyBinding])

-- | Configuration controlling usage of a service.
--
-- /See:/ 'usage' smart constructor.
data Usage =
  Usage'
    { _uRequirements :: !(Maybe [Text])
    , _uRules :: !(Maybe [UsageRule])
    , _uProducerNotificationChannel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Usage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uRequirements'
--
-- * 'uRules'
--
-- * 'uProducerNotificationChannel'
usage
    :: Usage
usage =
  Usage'
    { _uRequirements = Nothing
    , _uRules = Nothing
    , _uProducerNotificationChannel = Nothing
    }


-- | Requirements that must be satisfied before a consumer project can use
-- the service. Each requirement is of the form \/; for example
-- \'serviceusage.googleapis.com\/billing-enabled\'. For Google APIs, a
-- Terms of Service requirement must be included here. Google Cloud APIs
-- must include \"serviceusage.googleapis.com\/tos\/cloud\". Other Google
-- APIs should include \"serviceusage.googleapis.com\/tos\/universal\".
-- Additional ToS can be included based on the business needs.
uRequirements :: Lens' Usage [Text]
uRequirements
  = lens _uRequirements
      (\ s a -> s{_uRequirements = a})
      . _Default
      . _Coerce

-- | A list of usage rules that apply to individual API methods. **NOTE:**
-- All service configuration rules follow \"last one wins\" order.
uRules :: Lens' Usage [UsageRule]
uRules
  = lens _uRules (\ s a -> s{_uRules = a}) . _Default .
      _Coerce

-- | The full resource name of a channel used for sending notifications to
-- the service producer. Google Service Management currently only supports
-- [Google Cloud Pub\/Sub](https:\/\/cloud.google.com\/pubsub) as a
-- notification channel. To use Google Cloud Pub\/Sub as the channel, this
-- must be the name of a Cloud Pub\/Sub topic that uses the Cloud Pub\/Sub
-- topic name format documented in
-- https:\/\/cloud.google.com\/pubsub\/docs\/overview.
uProducerNotificationChannel :: Lens' Usage (Maybe Text)
uProducerNotificationChannel
  = lens _uProducerNotificationChannel
      (\ s a -> s{_uProducerNotificationChannel = a})

instance FromJSON Usage where
        parseJSON
          = withObject "Usage"
              (\ o ->
                 Usage' <$>
                   (o .:? "requirements" .!= mempty) <*>
                     (o .:? "rules" .!= mempty)
                     <*> (o .:? "producerNotificationChannel"))

instance ToJSON Usage where
        toJSON Usage'{..}
          = object
              (catMaybes
                 [("requirements" .=) <$> _uRequirements,
                  ("rules" .=) <$> _uRules,
                  ("producerNotificationChannel" .=) <$>
                    _uProducerNotificationChannel])

-- | Represents managed DNS zones created in the shared producer host and
-- consumer projects.
--
-- /See:/ 'addDNSZoneResponse' smart constructor.
data AddDNSZoneResponse =
  AddDNSZoneResponse'
    { _adzrConsumerPeeringZone :: !(Maybe DNSZone)
    , _adzrProducerPrivateZone :: !(Maybe DNSZone)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddDNSZoneResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adzrConsumerPeeringZone'
--
-- * 'adzrProducerPrivateZone'
addDNSZoneResponse
    :: AddDNSZoneResponse
addDNSZoneResponse =
  AddDNSZoneResponse'
    {_adzrConsumerPeeringZone = Nothing, _adzrProducerPrivateZone = Nothing}


-- | The DNS peering zone created in the consumer project.
adzrConsumerPeeringZone :: Lens' AddDNSZoneResponse (Maybe DNSZone)
adzrConsumerPeeringZone
  = lens _adzrConsumerPeeringZone
      (\ s a -> s{_adzrConsumerPeeringZone = a})

-- | The private DNS zone created in the shared producer host project.
adzrProducerPrivateZone :: Lens' AddDNSZoneResponse (Maybe DNSZone)
adzrProducerPrivateZone
  = lens _adzrProducerPrivateZone
      (\ s a -> s{_adzrProducerPrivateZone = a})

instance FromJSON AddDNSZoneResponse where
        parseJSON
          = withObject "AddDNSZoneResponse"
              (\ o ->
                 AddDNSZoneResponse' <$>
                   (o .:? "consumerPeeringZone") <*>
                     (o .:? "producerPrivateZone"))

instance ToJSON AddDNSZoneResponse where
        toJSON AddDNSZoneResponse'{..}
          = object
              (catMaybes
                 [("consumerPeeringZone" .=) <$>
                    _adzrConsumerPeeringZone,
                  ("producerPrivateZone" .=) <$>
                    _adzrProducerPrivateZone])

-- | Request to remove a private managed DNS zone in the shared producer host
-- project and a matching DNS peering zone in the consumer project.
--
-- /See:/ 'removeDNSZoneRequest' smart constructor.
data RemoveDNSZoneRequest =
  RemoveDNSZoneRequest'
    { _rdzrName :: !(Maybe Text)
    , _rdzrConsumerNetwork :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemoveDNSZoneRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdzrName'
--
-- * 'rdzrConsumerNetwork'
removeDNSZoneRequest
    :: RemoveDNSZoneRequest
removeDNSZoneRequest =
  RemoveDNSZoneRequest' {_rdzrName = Nothing, _rdzrConsumerNetwork = Nothing}


-- | Required. The name for both the private zone in the shared producer host
-- project and the peering zone in the consumer project.
rdzrName :: Lens' RemoveDNSZoneRequest (Maybe Text)
rdzrName = lens _rdzrName (\ s a -> s{_rdzrName = a})

-- | Required. The network that the consumer is using to connect with
-- services. Must be in the form of
-- projects\/{project}\/global\/networks\/{network} {project} is the
-- project number, as in \'12345\' {network} is the network name.
rdzrConsumerNetwork :: Lens' RemoveDNSZoneRequest (Maybe Text)
rdzrConsumerNetwork
  = lens _rdzrConsumerNetwork
      (\ s a -> s{_rdzrConsumerNetwork = a})

instance FromJSON RemoveDNSZoneRequest where
        parseJSON
          = withObject "RemoveDNSZoneRequest"
              (\ o ->
                 RemoveDNSZoneRequest' <$>
                   (o .:? "name") <*> (o .:? "consumerNetwork"))

instance ToJSON RemoveDNSZoneRequest where
        toJSON RemoveDNSZoneRequest'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _rdzrName,
                  ("consumerNetwork" .=) <$> _rdzrConsumerNetwork])

-- | Request to search for an unused range within allocated ranges.
--
-- /See:/ 'searchRangeRequest' smart constructor.
data SearchRangeRequest =
  SearchRangeRequest'
    { _srrIPPrefixLength :: !(Maybe (Textual Int32))
    , _srrNetwork :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrIPPrefixLength'
--
-- * 'srrNetwork'
searchRangeRequest
    :: SearchRangeRequest
searchRangeRequest =
  SearchRangeRequest' {_srrIPPrefixLength = Nothing, _srrNetwork = Nothing}


-- | Required. The prefix length of the IP range. Use usual CIDR range
-- notation. For example, \'30\' to find unused x.x.x.x\/30 CIDR range.
-- Actual range will be determined using allocated range for the consumer
-- peered network and returned in the result.
srrIPPrefixLength :: Lens' SearchRangeRequest (Maybe Int32)
srrIPPrefixLength
  = lens _srrIPPrefixLength
      (\ s a -> s{_srrIPPrefixLength = a})
      . mapping _Coerce

-- | Network name in the consumer project. This network must have been
-- already peered with a shared VPC network using CreateConnection method.
-- Must be in a form \'projects\/{project}\/global\/networks\/{network}\'.
-- {project} is a project number, as in \'12345\' {network} is network
-- name.
srrNetwork :: Lens' SearchRangeRequest (Maybe Text)
srrNetwork
  = lens _srrNetwork (\ s a -> s{_srrNetwork = a})

instance FromJSON SearchRangeRequest where
        parseJSON
          = withObject "SearchRangeRequest"
              (\ o ->
                 SearchRangeRequest' <$>
                   (o .:? "ipPrefixLength") <*> (o .:? "network"))

instance ToJSON SearchRangeRequest where
        toJSON SearchRangeRequest'{..}
          = object
              (catMaybes
                 [("ipPrefixLength" .=) <$> _srrIPPrefixLength,
                  ("network" .=) <$> _srrNetwork])

-- | Defines the HTTP configuration for an API service. It contains a list of
-- HttpRule, each specifying the mapping of an RPC method to one or more
-- HTTP REST API methods.
--
-- /See:/ 'hTTP' smart constructor.
data HTTP =
  HTTP'
    { _hRules :: !(Maybe [HTTPRule])
    , _hFullyDecodeReservedExpansion :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTP' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hRules'
--
-- * 'hFullyDecodeReservedExpansion'
hTTP
    :: HTTP
hTTP = HTTP' {_hRules = Nothing, _hFullyDecodeReservedExpansion = Nothing}


-- | A list of HTTP configuration rules that apply to individual API methods.
-- **NOTE:** All service configuration rules follow \"last one wins\"
-- order.
hRules :: Lens' HTTP [HTTPRule]
hRules
  = lens _hRules (\ s a -> s{_hRules = a}) . _Default .
      _Coerce

-- | When set to true, URL path parameters will be fully URI-decoded except
-- in cases of single segment matches in reserved expansion, where \"%2F\"
-- will be left encoded. The default behavior is to not decode RFC 6570
-- reserved characters in multi segment matches.
hFullyDecodeReservedExpansion :: Lens' HTTP (Maybe Bool)
hFullyDecodeReservedExpansion
  = lens _hFullyDecodeReservedExpansion
      (\ s a -> s{_hFullyDecodeReservedExpansion = a})

instance FromJSON HTTP where
        parseJSON
          = withObject "HTTP"
              (\ o ->
                 HTTP' <$>
                   (o .:? "rules" .!= mempty) <*>
                     (o .:? "fullyDecodeReservedExpansion"))

instance ToJSON HTTP where
        toJSON HTTP'{..}
          = object
              (catMaybes
                 [("rules" .=) <$> _hRules,
                  ("fullyDecodeReservedExpansion" .=) <$>
                    _hFullyDecodeReservedExpansion])

-- | A protocol buffer message type.
--
-- /See:/ 'type'' smart constructor.
data Type =
  Type'
    { _tSourceContext :: !(Maybe SourceContext)
    , _tOneofs :: !(Maybe [Text])
    , _tName :: !(Maybe Text)
    , _tOptions :: !(Maybe [Option])
    , _tFields :: !(Maybe [Field])
    , _tSyntax :: !(Maybe TypeSyntax)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Type' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tSourceContext'
--
-- * 'tOneofs'
--
-- * 'tName'
--
-- * 'tOptions'
--
-- * 'tFields'
--
-- * 'tSyntax'
type'
    :: Type
type' =
  Type'
    { _tSourceContext = Nothing
    , _tOneofs = Nothing
    , _tName = Nothing
    , _tOptions = Nothing
    , _tFields = Nothing
    , _tSyntax = Nothing
    }


-- | The source context.
tSourceContext :: Lens' Type (Maybe SourceContext)
tSourceContext
  = lens _tSourceContext
      (\ s a -> s{_tSourceContext = a})

-- | The list of types appearing in \`oneof\` definitions in this type.
tOneofs :: Lens' Type [Text]
tOneofs
  = lens _tOneofs (\ s a -> s{_tOneofs = a}) . _Default
      . _Coerce

-- | The fully qualified message name.
tName :: Lens' Type (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | The protocol buffer options.
tOptions :: Lens' Type [Option]
tOptions
  = lens _tOptions (\ s a -> s{_tOptions = a}) .
      _Default
      . _Coerce

-- | The list of fields.
tFields :: Lens' Type [Field]
tFields
  = lens _tFields (\ s a -> s{_tFields = a}) . _Default
      . _Coerce

-- | The source syntax.
tSyntax :: Lens' Type (Maybe TypeSyntax)
tSyntax = lens _tSyntax (\ s a -> s{_tSyntax = a})

instance FromJSON Type where
        parseJSON
          = withObject "Type"
              (\ o ->
                 Type' <$>
                   (o .:? "sourceContext") <*>
                     (o .:? "oneofs" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "options" .!= mempty)
                     <*> (o .:? "fields" .!= mempty)
                     <*> (o .:? "syntax"))

instance ToJSON Type where
        toJSON Type'{..}
          = object
              (catMaybes
                 [("sourceContext" .=) <$> _tSourceContext,
                  ("oneofs" .=) <$> _tOneofs, ("name" .=) <$> _tName,
                  ("options" .=) <$> _tOptions,
                  ("fields" .=) <$> _tFields,
                  ("syntax" .=) <$> _tSyntax])

-- | Api is a light-weight descriptor for an API Interface. Interfaces are
-- also described as \"protocol buffer services\" in some contexts, such as
-- by the \"service\" keyword in a .proto file, but they are different from
-- API Services, which represent a concrete implementation of an interface
-- as opposed to simply a description of methods and bindings. They are
-- also sometimes simply referred to as \"APIs\" in other contexts, such as
-- the name of this message itself. See
-- https:\/\/cloud.google.com\/apis\/design\/glossary for detailed
-- terminology.
--
-- /See:/ 'api' smart constructor.
data API =
  API'
    { _aSourceContext :: !(Maybe SourceContext)
    , _aMixins :: !(Maybe [Mixin])
    , _aMethods :: !(Maybe [Method])
    , _aName :: !(Maybe Text)
    , _aVersion :: !(Maybe Text)
    , _aOptions :: !(Maybe [Option])
    , _aSyntax :: !(Maybe APISyntax)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'API' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aSourceContext'
--
-- * 'aMixins'
--
-- * 'aMethods'
--
-- * 'aName'
--
-- * 'aVersion'
--
-- * 'aOptions'
--
-- * 'aSyntax'
api
    :: API
api =
  API'
    { _aSourceContext = Nothing
    , _aMixins = Nothing
    , _aMethods = Nothing
    , _aName = Nothing
    , _aVersion = Nothing
    , _aOptions = Nothing
    , _aSyntax = Nothing
    }


-- | Source context for the protocol buffer service represented by this
-- message.
aSourceContext :: Lens' API (Maybe SourceContext)
aSourceContext
  = lens _aSourceContext
      (\ s a -> s{_aSourceContext = a})

-- | Included interfaces. See Mixin.
aMixins :: Lens' API [Mixin]
aMixins
  = lens _aMixins (\ s a -> s{_aMixins = a}) . _Default
      . _Coerce

-- | The methods of this interface, in unspecified order.
aMethods :: Lens' API [Method]
aMethods
  = lens _aMethods (\ s a -> s{_aMethods = a}) .
      _Default
      . _Coerce

-- | The fully qualified name of this interface, including package name
-- followed by the interface\'s simple name.
aName :: Lens' API (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | A version string for this interface. If specified, must have the form
-- \`major-version.minor-version\`, as in \`1.10\`. If the minor version is
-- omitted, it defaults to zero. If the entire version field is empty, the
-- major version is derived from the package name, as outlined below. If
-- the field is not empty, the version in the package name will be verified
-- to be consistent with what is provided here. The versioning schema uses
-- [semantic versioning](http:\/\/semver.org) where the major version
-- number indicates a breaking change and the minor version an additive,
-- non-breaking change. Both version numbers are signals to users what to
-- expect from different versions, and should be carefully chosen based on
-- the product plan. The major version is also reflected in the package
-- name of the interface, which must end in \`v\`, as in
-- \`google.feature.v1\`. For major versions 0 and 1, the suffix can be
-- omitted. Zero major versions must only be used for experimental, non-GA
-- interfaces.
aVersion :: Lens' API (Maybe Text)
aVersion = lens _aVersion (\ s a -> s{_aVersion = a})

-- | Any metadata attached to the interface.
aOptions :: Lens' API [Option]
aOptions
  = lens _aOptions (\ s a -> s{_aOptions = a}) .
      _Default
      . _Coerce

-- | The source syntax of the service.
aSyntax :: Lens' API (Maybe APISyntax)
aSyntax = lens _aSyntax (\ s a -> s{_aSyntax = a})

instance FromJSON API where
        parseJSON
          = withObject "API"
              (\ o ->
                 API' <$>
                   (o .:? "sourceContext") <*>
                     (o .:? "mixins" .!= mempty)
                     <*> (o .:? "methods" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "version")
                     <*> (o .:? "options" .!= mempty)
                     <*> (o .:? "syntax"))

instance ToJSON API where
        toJSON API'{..}
          = object
              (catMaybes
                 [("sourceContext" .=) <$> _aSourceContext,
                  ("mixins" .=) <$> _aMixins,
                  ("methods" .=) <$> _aMethods, ("name" .=) <$> _aName,
                  ("version" .=) <$> _aVersion,
                  ("options" .=) <$> _aOptions,
                  ("syntax" .=) <$> _aSyntax])

-- | Configuration of a specific monitoring destination (the producer project
-- or the consumer project).
--
-- /See:/ 'monitoringDestination' smart constructor.
data MonitoringDestination =
  MonitoringDestination'
    { _mdMetrics :: !(Maybe [Text])
    , _mdMonitoredResource :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MonitoringDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdMetrics'
--
-- * 'mdMonitoredResource'
monitoringDestination
    :: MonitoringDestination
monitoringDestination =
  MonitoringDestination' {_mdMetrics = Nothing, _mdMonitoredResource = Nothing}


-- | Types of the metrics to report to this monitoring destination. Each type
-- must be defined in Service.metrics section.
mdMetrics :: Lens' MonitoringDestination [Text]
mdMetrics
  = lens _mdMetrics (\ s a -> s{_mdMetrics = a}) .
      _Default
      . _Coerce

-- | The monitored resource type. The type must be defined in
-- Service.monitored_resources section.
mdMonitoredResource :: Lens' MonitoringDestination (Maybe Text)
mdMonitoredResource
  = lens _mdMonitoredResource
      (\ s a -> s{_mdMonitoredResource = a})

instance FromJSON MonitoringDestination where
        parseJSON
          = withObject "MonitoringDestination"
              (\ o ->
                 MonitoringDestination' <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "monitoredResource"))

instance ToJSON MonitoringDestination where
        toJSON MonitoringDestination'{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _mdMetrics,
                  ("monitoredResource" .=) <$> _mdMonitoredResource])

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

-- | \`Endpoint\` describes a network address of a service that serves a set
-- of APIs. It is commonly known as a service endpoint. A service may
-- expose any number of service endpoints, and all service endpoints share
-- the same service definition, such as quota limits and monitoring
-- metrics. Example: type: google.api.Service name:
-- library-example.googleapis.com endpoints: # Declares network address
-- \`https:\/\/library-example.googleapis.com\` # for service
-- \`library-example.googleapis.com\`. The \`https\` scheme # is implicit
-- for all service endpoints. Other schemes may be # supported in the
-- future. - name: library-example.googleapis.com allow_cors: false - name:
-- content-staging-library-example.googleapis.com # Allows HTTP OPTIONS
-- calls to be passed to the API frontend, for it # to decide whether the
-- subsequent cross-origin request is allowed # to proceed. allow_cors:
-- true
--
-- /See:/ 'endpoint' smart constructor.
data Endpoint =
  Endpoint'
    { _eAllowCORS :: !(Maybe Bool)
    , _eName :: !(Maybe Text)
    , _eTarget :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Endpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eAllowCORS'
--
-- * 'eName'
--
-- * 'eTarget'
endpoint
    :: Endpoint
endpoint =
  Endpoint' {_eAllowCORS = Nothing, _eName = Nothing, _eTarget = Nothing}


-- | Allowing
-- [CORS](https:\/\/en.wikipedia.org\/wiki\/Cross-origin_resource_sharing),
-- aka cross-domain traffic, would allow the backends served from this
-- endpoint to receive and respond to HTTP OPTIONS requests. The response
-- will be used by the browser to determine whether the subsequent
-- cross-origin request is allowed to proceed.
eAllowCORS :: Lens' Endpoint (Maybe Bool)
eAllowCORS
  = lens _eAllowCORS (\ s a -> s{_eAllowCORS = a})

-- | The canonical name of this endpoint.
eName :: Lens' Endpoint (Maybe Text)
eName = lens _eName (\ s a -> s{_eName = a})

-- | The specification of an Internet routable address of API frontend that
-- will handle requests to this [API
-- Endpoint](https:\/\/cloud.google.com\/apis\/design\/glossary). It should
-- be either a valid IPv4 address or a fully-qualified domain name. For
-- example, \"8.8.8.8\" or \"myservice.appspot.com\".
eTarget :: Lens' Endpoint (Maybe Text)
eTarget = lens _eTarget (\ s a -> s{_eTarget = a})

instance FromJSON Endpoint where
        parseJSON
          = withObject "Endpoint"
              (\ o ->
                 Endpoint' <$>
                   (o .:? "allowCors") <*> (o .:? "name") <*>
                     (o .:? "target"))

instance ToJSON Endpoint where
        toJSON Endpoint'{..}
          = object
              (catMaybes
                 [("allowCors" .=) <$> _eAllowCORS,
                  ("name" .=) <$> _eName, ("target" .=) <$> _eTarget])

-- | OAuth scopes are a way to define data and permissions on data. For
-- example, there are scopes defined for \"Read-only access to Google
-- Calendar\" and \"Access to Cloud Platform\". Users can consent to a
-- scope for an application, giving it permission to access that data on
-- their behalf. OAuth scope specifications should be fairly coarse
-- grained; a user will need to see and understand the text description of
-- what your scope means. In most cases: use one or at most two OAuth
-- scopes for an entire family of products. If your product has multiple
-- APIs, you should probably be sharing the OAuth scope across all of those
-- APIs. When you need finer grained OAuth consent screens: talk with your
-- product management about how developers will use them in practice.
-- Please note that even though each of the canonical scopes is enough for
-- a request to be accepted and passed to the backend, a request can still
-- fail due to the backend requiring additional scopes or permissions.
--
-- /See:/ 'oAuthRequirements' smart constructor.
newtype OAuthRequirements =
  OAuthRequirements'
    { _oarCanonicalScopes :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OAuthRequirements' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oarCanonicalScopes'
oAuthRequirements
    :: OAuthRequirements
oAuthRequirements = OAuthRequirements' {_oarCanonicalScopes = Nothing}


-- | The list of publicly documented OAuth scopes that are allowed access. An
-- OAuth token containing any of these scopes will be accepted. Example:
-- canonical_scopes: https:\/\/www.googleapis.com\/auth\/calendar,
-- https:\/\/www.googleapis.com\/auth\/calendar.read
oarCanonicalScopes :: Lens' OAuthRequirements (Maybe Text)
oarCanonicalScopes
  = lens _oarCanonicalScopes
      (\ s a -> s{_oarCanonicalScopes = a})

instance FromJSON OAuthRequirements where
        parseJSON
          = withObject "OAuthRequirements"
              (\ o ->
                 OAuthRequirements' <$> (o .:? "canonicalScopes"))

instance ToJSON OAuthRequirements where
        toJSON OAuthRequirements'{..}
          = object
              (catMaybes
                 [("canonicalScopes" .=) <$> _oarCanonicalScopes])

-- | Customize service error responses. For example, list any service
-- specific protobuf types that can appear in error detail lists of error
-- responses. Example: custom_error: types: - google.foo.v1.CustomError -
-- google.foo.v1.AnotherError
--
-- /See:/ 'customError' smart constructor.
data CustomError =
  CustomError'
    { _ceRules :: !(Maybe [CustomErrorRule])
    , _ceTypes :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceRules'
--
-- * 'ceTypes'
customError
    :: CustomError
customError = CustomError' {_ceRules = Nothing, _ceTypes = Nothing}


-- | The list of custom error rules that apply to individual API messages.
-- **NOTE:** All service configuration rules follow \"last one wins\"
-- order.
ceRules :: Lens' CustomError [CustomErrorRule]
ceRules
  = lens _ceRules (\ s a -> s{_ceRules = a}) . _Default
      . _Coerce

-- | The list of custom error detail types, e.g.
-- \'google.foo.v1.CustomError\'.
ceTypes :: Lens' CustomError [Text]
ceTypes
  = lens _ceTypes (\ s a -> s{_ceTypes = a}) . _Default
      . _Coerce

instance FromJSON CustomError where
        parseJSON
          = withObject "CustomError"
              (\ o ->
                 CustomError' <$>
                   (o .:? "rules" .!= mempty) <*>
                     (o .:? "types" .!= mempty))

instance ToJSON CustomError where
        toJSON CustomError'{..}
          = object
              (catMaybes
                 [("rules" .=) <$> _ceRules,
                  ("types" .=) <$> _ceTypes])

-- | \`QuotaLimit\` defines a specific limit that applies over a specified
-- duration for a limit type. There can be at most one limit for a duration
-- and limit type combination defined within a \`QuotaGroup\`.
--
-- /See:/ 'quotaLimit' smart constructor.
data QuotaLimit =
  QuotaLimit'
    { _qlValues :: !(Maybe QuotaLimitValues)
    , _qlFreeTier :: !(Maybe (Textual Int64))
    , _qlMetric :: !(Maybe Text)
    , _qlName :: !(Maybe Text)
    , _qlDisplayName :: !(Maybe Text)
    , _qlDuration :: !(Maybe Text)
    , _qlDefaultLimit :: !(Maybe (Textual Int64))
    , _qlDescription :: !(Maybe Text)
    , _qlUnit :: !(Maybe Text)
    , _qlMaxLimit :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QuotaLimit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qlValues'
--
-- * 'qlFreeTier'
--
-- * 'qlMetric'
--
-- * 'qlName'
--
-- * 'qlDisplayName'
--
-- * 'qlDuration'
--
-- * 'qlDefaultLimit'
--
-- * 'qlDescription'
--
-- * 'qlUnit'
--
-- * 'qlMaxLimit'
quotaLimit
    :: QuotaLimit
quotaLimit =
  QuotaLimit'
    { _qlValues = Nothing
    , _qlFreeTier = Nothing
    , _qlMetric = Nothing
    , _qlName = Nothing
    , _qlDisplayName = Nothing
    , _qlDuration = Nothing
    , _qlDefaultLimit = Nothing
    , _qlDescription = Nothing
    , _qlUnit = Nothing
    , _qlMaxLimit = Nothing
    }


-- | Tiered limit values. You must specify this as a key:value pair, with an
-- integer value that is the maximum number of requests allowed for the
-- specified unit. Currently only STANDARD is supported.
qlValues :: Lens' QuotaLimit (Maybe QuotaLimitValues)
qlValues = lens _qlValues (\ s a -> s{_qlValues = a})

-- | Free tier value displayed in the Developers Console for this limit. The
-- free tier is the number of tokens that will be subtracted from the
-- billed amount when billing is enabled. This field can only be set on a
-- limit with duration \"1d\", in a billable group; it is invalid on any
-- other limit. If this field is not set, it defaults to 0, indicating that
-- there is no free tier for this service. Used by group-based quotas only.
qlFreeTier :: Lens' QuotaLimit (Maybe Int64)
qlFreeTier
  = lens _qlFreeTier (\ s a -> s{_qlFreeTier = a}) .
      mapping _Coerce

-- | The name of the metric this quota limit applies to. The quota limits
-- with the same metric will be checked together during runtime. The metric
-- must be defined within the service config.
qlMetric :: Lens' QuotaLimit (Maybe Text)
qlMetric = lens _qlMetric (\ s a -> s{_qlMetric = a})

-- | Name of the quota limit. The name must be provided, and it must be
-- unique within the service. The name can only include alphanumeric
-- characters as well as \'-\'. The maximum length of the limit name is 64
-- characters.
qlName :: Lens' QuotaLimit (Maybe Text)
qlName = lens _qlName (\ s a -> s{_qlName = a})

-- | User-visible display name for this limit. Optional. If not set, the UI
-- will provide a default display name based on the quota configuration.
-- This field can be used to override the default display name generated
-- from the configuration.
qlDisplayName :: Lens' QuotaLimit (Maybe Text)
qlDisplayName
  = lens _qlDisplayName
      (\ s a -> s{_qlDisplayName = a})

-- | Duration of this limit in textual notation. Must be \"100s\" or \"1d\".
-- Used by group-based quotas only.
qlDuration :: Lens' QuotaLimit (Maybe Text)
qlDuration
  = lens _qlDuration (\ s a -> s{_qlDuration = a})

-- | Default number of tokens that can be consumed during the specified
-- duration. This is the number of tokens assigned when a client
-- application developer activates the service for his\/her project.
-- Specifying a value of 0 will block all requests. This can be used if you
-- are provisioning quota to selected consumers and blocking others.
-- Similarly, a value of -1 will indicate an unlimited quota. No other
-- negative values are allowed. Used by group-based quotas only.
qlDefaultLimit :: Lens' QuotaLimit (Maybe Int64)
qlDefaultLimit
  = lens _qlDefaultLimit
      (\ s a -> s{_qlDefaultLimit = a})
      . mapping _Coerce

-- | Optional. User-visible, extended description for this quota limit.
-- Should be used only when more context is needed to understand this limit
-- than provided by the limit\'s display name (see: \`display_name\`).
qlDescription :: Lens' QuotaLimit (Maybe Text)
qlDescription
  = lens _qlDescription
      (\ s a -> s{_qlDescription = a})

-- | Specify the unit of the quota limit. It uses the same syntax as
-- Metric.unit. The supported unit kinds are determined by the quota
-- backend system. Here are some examples: * \"1\/min\/{project}\" for
-- quota per minute per project. Note: the order of unit components is
-- insignificant. The \"1\" at the beginning is required to follow the
-- metric unit syntax.
qlUnit :: Lens' QuotaLimit (Maybe Text)
qlUnit = lens _qlUnit (\ s a -> s{_qlUnit = a})

-- | Maximum number of tokens that can be consumed during the specified
-- duration. Client application developers can override the default limit
-- up to this maximum. If specified, this value cannot be set to a value
-- less than the default limit. If not specified, it is set to the default
-- limit. To allow clients to apply overrides with no upper bound, set this
-- to -1, indicating unlimited maximum quota. Used by group-based quotas
-- only.
qlMaxLimit :: Lens' QuotaLimit (Maybe Int64)
qlMaxLimit
  = lens _qlMaxLimit (\ s a -> s{_qlMaxLimit = a}) .
      mapping _Coerce

instance FromJSON QuotaLimit where
        parseJSON
          = withObject "QuotaLimit"
              (\ o ->
                 QuotaLimit' <$>
                   (o .:? "values") <*> (o .:? "freeTier") <*>
                     (o .:? "metric")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "duration")
                     <*> (o .:? "defaultLimit")
                     <*> (o .:? "description")
                     <*> (o .:? "unit")
                     <*> (o .:? "maxLimit"))

instance ToJSON QuotaLimit where
        toJSON QuotaLimit'{..}
          = object
              (catMaybes
                 [("values" .=) <$> _qlValues,
                  ("freeTier" .=) <$> _qlFreeTier,
                  ("metric" .=) <$> _qlMetric, ("name" .=) <$> _qlName,
                  ("displayName" .=) <$> _qlDisplayName,
                  ("duration" .=) <$> _qlDuration,
                  ("defaultLimit" .=) <$> _qlDefaultLimit,
                  ("description" .=) <$> _qlDescription,
                  ("unit" .=) <$> _qlUnit,
                  ("maxLimit" .=) <$> _qlMaxLimit])

-- | Blank message response type for RemoveDnsRecordSet API
--
-- /See:/ 'removeDNSRecordSetResponse' smart constructor.
data RemoveDNSRecordSetResponse =
  RemoveDNSRecordSetResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemoveDNSRecordSetResponse' with the minimum fields required to make a request.
--
removeDNSRecordSetResponse
    :: RemoveDNSRecordSetResponse
removeDNSRecordSetResponse = RemoveDNSRecordSetResponse'


instance FromJSON RemoveDNSRecordSetResponse where
        parseJSON
          = withObject "RemoveDNSRecordSetResponse"
              (\ o -> pure RemoveDNSRecordSetResponse')

instance ToJSON RemoveDNSRecordSetResponse where
        toJSON = const emptyObject

-- | A protocol buffer option, which can be attached to a message, field,
-- enumeration, etc.
--
-- /See:/ 'option' smart constructor.
data Option =
  Option'
    { _optValue :: !(Maybe OptionValue)
    , _optName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Option' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'optValue'
--
-- * 'optName'
option
    :: Option
option = Option' {_optValue = Nothing, _optName = Nothing}


-- | The option\'s value packed in an Any message. If the value is a
-- primitive, the corresponding wrapper type defined in
-- google\/protobuf\/wrappers.proto should be used. If the value is an
-- enum, it should be stored as an int32 value using the
-- google.protobuf.Int32Value type.
optValue :: Lens' Option (Maybe OptionValue)
optValue = lens _optValue (\ s a -> s{_optValue = a})

-- | The option\'s name. For protobuf built-in options (options defined in
-- descriptor.proto), this is the short name. For example,
-- \`\"map_entry\"\`. For custom options, it should be the fully-qualified
-- name. For example, \`\"google.api.http\"\`.
optName :: Lens' Option (Maybe Text)
optName = lens _optName (\ s a -> s{_optName = a})

instance FromJSON Option where
        parseJSON
          = withObject "Option"
              (\ o ->
                 Option' <$> (o .:? "value") <*> (o .:? "name"))

instance ToJSON Option where
        toJSON Option'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _optValue,
                  ("name" .=) <$> _optName])

-- | Billing related configuration of the service. The following example
-- shows how to configure monitored resources and metrics for billing,
-- \`consumer_destinations\` is the only supported destination and the
-- monitored resources need at least one label key
-- \`cloud.googleapis.com\/location\` to indicate the location of the
-- billing usage, using different monitored resources between monitoring
-- and billing is recommended so they can be evolved independently:
-- monitored_resources: - type: library.googleapis.com\/billing_branch
-- labels: - key: cloud.googleapis.com\/location description: | Predefined
-- label to support billing location restriction. - key: city description:
-- | Custom label to define the city where the library branch is located
-- in. - key: name description: Custom label to define the name of the
-- library branch. metrics: - name:
-- library.googleapis.com\/book\/borrowed_count metric_kind: DELTA
-- value_type: INT64 unit: \"1\" billing: consumer_destinations: -
-- monitored_resource: library.googleapis.com\/billing_branch metrics: -
-- library.googleapis.com\/book\/borrowed_count
--
-- /See:/ 'billing' smart constructor.
newtype Billing =
  Billing'
    { _bConsumerDestinations :: Maybe [BillingDestination]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Billing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bConsumerDestinations'
billing
    :: Billing
billing = Billing' {_bConsumerDestinations = Nothing}


-- | Billing configurations for sending metrics to the consumer project.
-- There can be multiple consumer destinations per service, each one must
-- have a different monitored resource type. A metric can be used in at
-- most one consumer destination.
bConsumerDestinations :: Lens' Billing [BillingDestination]
bConsumerDestinations
  = lens _bConsumerDestinations
      (\ s a -> s{_bConsumerDestinations = a})
      . _Default
      . _Coerce

instance FromJSON Billing where
        parseJSON
          = withObject "Billing"
              (\ o ->
                 Billing' <$>
                   (o .:? "consumerDestinations" .!= mempty))

instance ToJSON Billing where
        toJSON Billing'{..}
          = object
              (catMaybes
                 [("consumerDestinations" .=) <$>
                    _bConsumerDestinations])

-- | Source information used to create a Service Config
--
-- /See:/ 'sourceInfo' smart constructor.
newtype SourceInfo =
  SourceInfo'
    { _siSourceFiles :: Maybe [SourceInfoSourceFilesItem]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siSourceFiles'
sourceInfo
    :: SourceInfo
sourceInfo = SourceInfo' {_siSourceFiles = Nothing}


-- | All files used during config generation.
siSourceFiles :: Lens' SourceInfo [SourceInfoSourceFilesItem]
siSourceFiles
  = lens _siSourceFiles
      (\ s a -> s{_siSourceFiles = a})
      . _Default
      . _Coerce

instance FromJSON SourceInfo where
        parseJSON
          = withObject "SourceInfo"
              (\ o ->
                 SourceInfo' <$> (o .:? "sourceFiles" .!= mempty))

instance ToJSON SourceInfo where
        toJSON SourceInfo'{..}
          = object
              (catMaybes [("sourceFiles" .=) <$> _siSourceFiles])

-- | Tiered limit values. You must specify this as a key:value pair, with an
-- integer value that is the maximum number of requests allowed for the
-- specified unit. Currently only STANDARD is supported.
--
-- /See:/ 'quotaLimitValues' smart constructor.
newtype QuotaLimitValues =
  QuotaLimitValues'
    { _qlvAddtional :: HashMap Text (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QuotaLimitValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qlvAddtional'
quotaLimitValues
    :: HashMap Text Int64 -- ^ 'qlvAddtional'
    -> QuotaLimitValues
quotaLimitValues pQlvAddtional_ =
  QuotaLimitValues' {_qlvAddtional = _Coerce # pQlvAddtional_}


qlvAddtional :: Lens' QuotaLimitValues (HashMap Text Int64)
qlvAddtional
  = lens _qlvAddtional (\ s a -> s{_qlvAddtional = a})
      . _Coerce

instance FromJSON QuotaLimitValues where
        parseJSON
          = withObject "QuotaLimitValues"
              (\ o -> QuotaLimitValues' <$> (parseJSONObject o))

instance ToJSON QuotaLimitValues where
        toJSON = toJSON . _qlvAddtional

--
-- /See:/ 'validateConsumerConfigRequest' smart constructor.
data ValidateConsumerConfigRequest =
  ValidateConsumerConfigRequest'
    { _vccrRangeReservation :: !(Maybe RangeReservation)
    , _vccrConsumerProject :: !(Maybe ConsumerProject)
    , _vccrValidateNetwork :: !(Maybe Bool)
    , _vccrConsumerNetwork :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ValidateConsumerConfigRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vccrRangeReservation'
--
-- * 'vccrConsumerProject'
--
-- * 'vccrValidateNetwork'
--
-- * 'vccrConsumerNetwork'
validateConsumerConfigRequest
    :: ValidateConsumerConfigRequest
validateConsumerConfigRequest =
  ValidateConsumerConfigRequest'
    { _vccrRangeReservation = Nothing
    , _vccrConsumerProject = Nothing
    , _vccrValidateNetwork = Nothing
    , _vccrConsumerNetwork = Nothing
    }


-- | RANGES_EXHAUSTED, RANGES_EXHAUSTED, and RANGES_DELETED_LATER are done
-- when range_reservation is provided.
vccrRangeReservation :: Lens' ValidateConsumerConfigRequest (Maybe RangeReservation)
vccrRangeReservation
  = lens _vccrRangeReservation
      (\ s a -> s{_vccrRangeReservation = a})

-- | NETWORK_NOT_IN_CONSUMERS_PROJECT, NETWORK_NOT_IN_CONSUMERS_HOST_PROJECT,
-- and HOST_PROJECT_NOT_FOUND are done when consumer_project is provided.
vccrConsumerProject :: Lens' ValidateConsumerConfigRequest (Maybe ConsumerProject)
vccrConsumerProject
  = lens _vccrConsumerProject
      (\ s a -> s{_vccrConsumerProject = a})

-- | The validations will be performed in the order listed in the
-- ValidationError enum. The first failure will return. If a validation is
-- not requested, then the next one will be performed.
-- SERVICE_NETWORKING_NOT_ENABLED and NETWORK_NOT_PEERED checks are
-- performed for all requests where validation is requested.
-- NETWORK_NOT_FOUND and NETWORK_DISCONNECTED checks are done for requests
-- that have validate_network set to true.
vccrValidateNetwork :: Lens' ValidateConsumerConfigRequest (Maybe Bool)
vccrValidateNetwork
  = lens _vccrValidateNetwork
      (\ s a -> s{_vccrValidateNetwork = a})

-- | Required. The network that the consumer is using to connect with
-- services. Must be in the form of
-- projects\/{project}\/global\/networks\/{network} {project} is a project
-- number, as in \'12345\' {network} is network name.
vccrConsumerNetwork :: Lens' ValidateConsumerConfigRequest (Maybe Text)
vccrConsumerNetwork
  = lens _vccrConsumerNetwork
      (\ s a -> s{_vccrConsumerNetwork = a})

instance FromJSON ValidateConsumerConfigRequest where
        parseJSON
          = withObject "ValidateConsumerConfigRequest"
              (\ o ->
                 ValidateConsumerConfigRequest' <$>
                   (o .:? "rangeReservation") <*>
                     (o .:? "consumerProject")
                     <*> (o .:? "validateNetwork")
                     <*> (o .:? "consumerNetwork"))

instance ToJSON ValidateConsumerConfigRequest where
        toJSON ValidateConsumerConfigRequest'{..}
          = object
              (catMaybes
                 [("rangeReservation" .=) <$> _vccrRangeReservation,
                  ("consumerProject" .=) <$> _vccrConsumerProject,
                  ("validateNetwork" .=) <$> _vccrValidateNetwork,
                  ("consumerNetwork" .=) <$> _vccrConsumerNetwork])

-- | Enum type definition.
--
-- /See:/ 'enum' smart constructor.
data Enum' =
  Enum''
    { _enuSourceContext :: !(Maybe SourceContext)
    , _enuEnumvalue :: !(Maybe [EnumValue])
    , _enuName :: !(Maybe Text)
    , _enuOptions :: !(Maybe [Option])
    , _enuSyntax :: !(Maybe EnumSyntax)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Enum' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'enuSourceContext'
--
-- * 'enuEnumvalue'
--
-- * 'enuName'
--
-- * 'enuOptions'
--
-- * 'enuSyntax'
enum
    :: Enum'
enum =
  Enum''
    { _enuSourceContext = Nothing
    , _enuEnumvalue = Nothing
    , _enuName = Nothing
    , _enuOptions = Nothing
    , _enuSyntax = Nothing
    }


-- | The source context.
enuSourceContext :: Lens' Enum' (Maybe SourceContext)
enuSourceContext
  = lens _enuSourceContext
      (\ s a -> s{_enuSourceContext = a})

-- | Enum value definitions.
enuEnumvalue :: Lens' Enum' [EnumValue]
enuEnumvalue
  = lens _enuEnumvalue (\ s a -> s{_enuEnumvalue = a})
      . _Default
      . _Coerce

-- | Enum type name.
enuName :: Lens' Enum' (Maybe Text)
enuName = lens _enuName (\ s a -> s{_enuName = a})

-- | Protocol buffer options.
enuOptions :: Lens' Enum' [Option]
enuOptions
  = lens _enuOptions (\ s a -> s{_enuOptions = a}) .
      _Default
      . _Coerce

-- | The source syntax.
enuSyntax :: Lens' Enum' (Maybe EnumSyntax)
enuSyntax
  = lens _enuSyntax (\ s a -> s{_enuSyntax = a})

instance FromJSON Enum' where
        parseJSON
          = withObject "Enum"
              (\ o ->
                 Enum'' <$>
                   (o .:? "sourceContext") <*>
                     (o .:? "enumvalue" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "options" .!= mempty)
                     <*> (o .:? "syntax"))

instance ToJSON Enum' where
        toJSON Enum''{..}
          = object
              (catMaybes
                 [("sourceContext" .=) <$> _enuSourceContext,
                  ("enumvalue" .=) <$> _enuEnumvalue,
                  ("name" .=) <$> _enuName,
                  ("options" .=) <$> _enuOptions,
                  ("syntax" .=) <$> _enuSyntax])

-- | Logging configuration of the service. The following example shows how to
-- configure logs to be sent to the producer and consumer projects. In the
-- example, the \`activity_history\` log is sent to both the producer and
-- consumer projects, whereas the \`purchase_history\` log is only sent to
-- the producer project. monitored_resources: - type:
-- library.googleapis.com\/branch labels: - key: \/city description: The
-- city where the library branch is located in. - key: \/name description:
-- The name of the branch. logs: - name: activity_history labels: - key:
-- \/customer_id - name: purchase_history logging: producer_destinations: -
-- monitored_resource: library.googleapis.com\/branch logs: -
-- activity_history - purchase_history consumer_destinations: -
-- monitored_resource: library.googleapis.com\/branch logs: -
-- activity_history
--
-- /See:/ 'logging' smart constructor.
data Logging =
  Logging'
    { _lProducerDestinations :: !(Maybe [LoggingDestination])
    , _lConsumerDestinations :: !(Maybe [LoggingDestination])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Logging' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lProducerDestinations'
--
-- * 'lConsumerDestinations'
logging
    :: Logging
logging =
  Logging' {_lProducerDestinations = Nothing, _lConsumerDestinations = Nothing}


-- | Logging configurations for sending logs to the producer project. There
-- can be multiple producer destinations, each one must have a different
-- monitored resource type. A log can be used in at most one producer
-- destination.
lProducerDestinations :: Lens' Logging [LoggingDestination]
lProducerDestinations
  = lens _lProducerDestinations
      (\ s a -> s{_lProducerDestinations = a})
      . _Default
      . _Coerce

-- | Logging configurations for sending logs to the consumer project. There
-- can be multiple consumer destinations, each one must have a different
-- monitored resource type. A log can be used in at most one consumer
-- destination.
lConsumerDestinations :: Lens' Logging [LoggingDestination]
lConsumerDestinations
  = lens _lConsumerDestinations
      (\ s a -> s{_lConsumerDestinations = a})
      . _Default
      . _Coerce

instance FromJSON Logging where
        parseJSON
          = withObject "Logging"
              (\ o ->
                 Logging' <$>
                   (o .:? "producerDestinations" .!= mempty) <*>
                     (o .:? "consumerDestinations" .!= mempty))

instance ToJSON Logging where
        toJSON Logging'{..}
          = object
              (catMaybes
                 [("producerDestinations" .=) <$>
                    _lProducerDestinations,
                  ("consumerDestinations" .=) <$>
                    _lConsumerDestinations])

-- | Request to delete a private service access connection. The call will
-- fail if there are any managed service instances using this connection.
--
-- /See:/ 'deleteConnectionRequest' smart constructor.
newtype DeleteConnectionRequest =
  DeleteConnectionRequest'
    { _dcrConsumerNetwork :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteConnectionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrConsumerNetwork'
deleteConnectionRequest
    :: DeleteConnectionRequest
deleteConnectionRequest =
  DeleteConnectionRequest' {_dcrConsumerNetwork = Nothing}


-- | Required. The network that the consumer is using to connect with
-- services. Must be in the form of
-- projects\/{project}\/global\/networks\/{network} {project} is a project
-- number, as in \'12345\' {network} is a network name.
dcrConsumerNetwork :: Lens' DeleteConnectionRequest (Maybe Text)
dcrConsumerNetwork
  = lens _dcrConsumerNetwork
      (\ s a -> s{_dcrConsumerNetwork = a})

instance FromJSON DeleteConnectionRequest where
        parseJSON
          = withObject "DeleteConnectionRequest"
              (\ o ->
                 DeleteConnectionRequest' <$>
                   (o .:? "consumerNetwork"))

instance ToJSON DeleteConnectionRequest where
        toJSON DeleteConnectionRequest'{..}
          = object
              (catMaybes
                 [("consumerNetwork" .=) <$> _dcrConsumerNetwork])

--
-- /See:/ 'sourceInfoSourceFilesItem' smart constructor.
newtype SourceInfoSourceFilesItem =
  SourceInfoSourceFilesItem'
    { _sisfiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceInfoSourceFilesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sisfiAddtional'
sourceInfoSourceFilesItem
    :: HashMap Text JSONValue -- ^ 'sisfiAddtional'
    -> SourceInfoSourceFilesItem
sourceInfoSourceFilesItem pSisfiAddtional_ =
  SourceInfoSourceFilesItem' {_sisfiAddtional = _Coerce # pSisfiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sisfiAddtional :: Lens' SourceInfoSourceFilesItem (HashMap Text JSONValue)
sisfiAddtional
  = lens _sisfiAddtional
      (\ s a -> s{_sisfiAddtional = a})
      . _Coerce

instance FromJSON SourceInfoSourceFilesItem where
        parseJSON
          = withObject "SourceInfoSourceFilesItem"
              (\ o ->
                 SourceInfoSourceFilesItem' <$> (parseJSONObject o))

instance ToJSON SourceInfoSourceFilesItem where
        toJSON = toJSON . _sisfiAddtional

-- | Quota configuration helps to achieve fairness and budgeting in service
-- usage. The metric based quota configuration works this way: - The
-- service configuration defines a set of metrics. - For API calls, the
-- quota.metric_rules maps methods to metrics with corresponding costs. -
-- The quota.limits defines limits on the metrics, which will be used for
-- quota checks at runtime. An example quota configuration in yaml format:
-- quota: limits: - name: apiWriteQpsPerProject metric:
-- library.googleapis.com\/write_calls unit: \"1\/min\/{project}\" # rate
-- limit for consumer projects values: STANDARD: 10000 # The metric rules
-- bind all methods to the read_calls metric, # except for the UpdateBook
-- and DeleteBook methods. These two methods # are mapped to the
-- write_calls metric, with the UpdateBook method # consuming at twice rate
-- as the DeleteBook method. metric_rules: - selector: \"*\" metric_costs:
-- library.googleapis.com\/read_calls: 1 - selector:
-- google.example.library.v1.LibraryService.UpdateBook metric_costs:
-- library.googleapis.com\/write_calls: 2 - selector:
-- google.example.library.v1.LibraryService.DeleteBook metric_costs:
-- library.googleapis.com\/write_calls: 1 Corresponding Metric definition:
-- metrics: - name: library.googleapis.com\/read_calls display_name: Read
-- requests metric_kind: DELTA value_type: INT64 - name:
-- library.googleapis.com\/write_calls display_name: Write requests
-- metric_kind: DELTA value_type: INT64
--
-- /See:/ 'quota' smart constructor.
data Quota =
  Quota'
    { _qLimits :: !(Maybe [QuotaLimit])
    , _qMetricRules :: !(Maybe [MetricRule])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Quota' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qLimits'
--
-- * 'qMetricRules'
quota
    :: Quota
quota = Quota' {_qLimits = Nothing, _qMetricRules = Nothing}


-- | List of \`QuotaLimit\` definitions for the service.
qLimits :: Lens' Quota [QuotaLimit]
qLimits
  = lens _qLimits (\ s a -> s{_qLimits = a}) . _Default
      . _Coerce

-- | List of \`MetricRule\` definitions, each one mapping a selected method
-- to one or more metrics.
qMetricRules :: Lens' Quota [MetricRule]
qMetricRules
  = lens _qMetricRules (\ s a -> s{_qMetricRules = a})
      . _Default
      . _Coerce

instance FromJSON Quota where
        parseJSON
          = withObject "Quota"
              (\ o ->
                 Quota' <$>
                   (o .:? "limits" .!= mempty) <*>
                     (o .:? "metricRules" .!= mempty))

instance ToJSON Quota where
        toJSON Quota'{..}
          = object
              (catMaybes
                 [("limits" .=) <$> _qLimits,
                  ("metricRules" .=) <$> _qMetricRules])

-- | Metadata provided through GetOperation request for the LRO generated by
-- DeletePeeredDnsDomain API.
--
-- /See:/ 'deletePeeredDNSDomainMetadata' smart constructor.
data DeletePeeredDNSDomainMetadata =
  DeletePeeredDNSDomainMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeletePeeredDNSDomainMetadata' with the minimum fields required to make a request.
--
deletePeeredDNSDomainMetadata
    :: DeletePeeredDNSDomainMetadata
deletePeeredDNSDomainMetadata = DeletePeeredDNSDomainMetadata'


instance FromJSON DeletePeeredDNSDomainMetadata where
        parseJSON
          = withObject "DeletePeeredDNSDomainMetadata"
              (\ o -> pure DeletePeeredDNSDomainMetadata')

instance ToJSON DeletePeeredDNSDomainMetadata where
        toJSON = const emptyObject

-- | # gRPC Transcoding gRPC Transcoding is a feature for mapping between a
-- gRPC method and one or more HTTP REST endpoints. It allows developers to
-- build a single API service that supports both gRPC APIs and REST APIs.
-- Many systems, including [Google
-- APIs](https:\/\/github.com\/googleapis\/googleapis), [Cloud
-- Endpoints](https:\/\/cloud.google.com\/endpoints), [gRPC
-- Gateway](https:\/\/github.com\/grpc-ecosystem\/grpc-gateway), and
-- [Envoy](https:\/\/github.com\/envoyproxy\/envoy) proxy support this
-- feature and use it for large scale production services. \`HttpRule\`
-- defines the schema of the gRPC\/REST mapping. The mapping specifies how
-- different portions of the gRPC request message are mapped to the URL
-- path, URL query parameters, and HTTP request body. It also controls how
-- the gRPC response message is mapped to the HTTP response body.
-- \`HttpRule\` is typically specified as an \`google.api.http\` annotation
-- on the gRPC method. Each mapping specifies a URL path template and an
-- HTTP method. The path template may refer to one or more fields in the
-- gRPC request message, as long as each field is a non-repeated field with
-- a primitive (non-message) type. The path template controls how fields of
-- the request message are mapped to the URL path. Example: service
-- Messaging { rpc GetMessage(GetMessageRequest) returns (Message) { option
-- (google.api.http) = { get: \"\/v1\/{name=messages\/*}\" }; } } message
-- GetMessageRequest { string name = 1; \/\/ Mapped to URL path. } message
-- Message { string text = 1; \/\/ The resource content. } This enables an
-- HTTP REST to gRPC mapping as below: HTTP | gRPC -----|----- \`GET
-- \/v1\/messages\/123456\` | \`GetMessage(name: \"messages\/123456\")\`
-- Any fields in the request message which are not bound by the path
-- template automatically become HTTP query parameters if there is no HTTP
-- request body. For example: service Messaging { rpc
-- GetMessage(GetMessageRequest) returns (Message) { option
-- (google.api.http) = { get:\"\/v1\/messages\/{message_id}\" }; } }
-- message GetMessageRequest { message SubMessage { string subfield = 1; }
-- string message_id = 1; \/\/ Mapped to URL path. int64 revision = 2; \/\/
-- Mapped to URL query parameter \`revision\`. SubMessage sub = 3; \/\/
-- Mapped to URL query parameter \`sub.subfield\`. } This enables a HTTP
-- JSON to RPC mapping as below: HTTP | gRPC -----|----- \`GET
-- \/v1\/messages\/123456?revision=2&sub.subfield=foo\` |
-- \`GetMessage(message_id: \"123456\" revision: 2 sub:
-- SubMessage(subfield: \"foo\"))\` Note that fields which are mapped to
-- URL query parameters must have a primitive type or a repeated primitive
-- type or a non-repeated message type. In the case of a repeated type, the
-- parameter can be repeated in the URL as \`...?param=A&param=B\`. In the
-- case of a message type, each field of the message is mapped to a
-- separate parameter, such as \`...?foo.a=A&foo.b=B&foo.c=C\`. For HTTP
-- methods that allow a request body, the \`body\` field specifies the
-- mapping. Consider a REST update method on the message resource
-- collection: service Messaging { rpc UpdateMessage(UpdateMessageRequest)
-- returns (Message) { option (google.api.http) = { patch:
-- \"\/v1\/messages\/{message_id}\" body: \"message\" }; } } message
-- UpdateMessageRequest { string message_id = 1; \/\/ mapped to the URL
-- Message message = 2; \/\/ mapped to the body } The following HTTP JSON
-- to RPC mapping is enabled, where the representation of the JSON in the
-- request body is determined by protos JSON encoding: HTTP | gRPC
-- -----|----- \`PATCH \/v1\/messages\/123456 { \"text\": \"Hi!\" }\` |
-- \`UpdateMessage(message_id: \"123456\" message { text: \"Hi!\" })\` The
-- special name \`*\` can be used in the body mapping to define that every
-- field not bound by the path template should be mapped to the request
-- body. This enables the following alternative definition of the update
-- method: service Messaging { rpc UpdateMessage(Message) returns (Message)
-- { option (google.api.http) = { patch: \"\/v1\/messages\/{message_id}\"
-- body: \"*\" }; } } message Message { string message_id = 1; string text
-- = 2; } The following HTTP JSON to RPC mapping is enabled: HTTP | gRPC
-- -----|----- \`PATCH \/v1\/messages\/123456 { \"text\": \"Hi!\" }\` |
-- \`UpdateMessage(message_id: \"123456\" text: \"Hi!\")\` Note that when
-- using \`*\` in the body mapping, it is not possible to have HTTP
-- parameters, as all fields not bound by the path end in the body. This
-- makes this option more rarely used in practice when defining REST APIs.
-- The common usage of \`*\` is in custom methods which don\'t use the URL
-- at all for transferring data. It is possible to define multiple HTTP
-- methods for one RPC by using the \`additional_bindings\` option.
-- Example: service Messaging { rpc GetMessage(GetMessageRequest) returns
-- (Message) { option (google.api.http) = { get:
-- \"\/v1\/messages\/{message_id}\" additional_bindings { get:
-- \"\/v1\/users\/{user_id}\/messages\/{message_id}\" } }; } } message
-- GetMessageRequest { string message_id = 1; string user_id = 2; } This
-- enables the following two alternative HTTP JSON to RPC mappings: HTTP |
-- gRPC -----|----- \`GET \/v1\/messages\/123456\` |
-- \`GetMessage(message_id: \"123456\")\` \`GET
-- \/v1\/users\/me\/messages\/123456\` | \`GetMessage(user_id: \"me\"
-- message_id: \"123456\")\` ## Rules for HTTP mapping 1. Leaf request
-- fields (recursive expansion nested messages in the request message) are
-- classified into three categories: - Fields referred by the path
-- template. They are passed via the URL path. - Fields referred by the
-- HttpRule.body. They are passed via the HTTP request body. - All other
-- fields are passed via the URL query parameters, and the parameter name
-- is the field path in the request message. A repeated field can be
-- represented as multiple query parameters under the same name. 2. If
-- HttpRule.body is \"*\", there is no URL query parameter, all fields are
-- passed via URL path and HTTP request body. 3. If HttpRule.body is
-- omitted, there is no HTTP request body, all fields are passed via URL
-- path and URL query parameters. ### Path template syntax Template =
-- \"\/\" Segments [ Verb ] ; Segments = Segment { \"\/\" Segment } ;
-- Segment = \"*\" | \"**\" | LITERAL | Variable ; Variable = \"{\"
-- FieldPath [ \"=\" Segments ] \"}\" ; FieldPath = IDENT { \".\" IDENT } ;
-- Verb = \":\" LITERAL ; The syntax \`*\` matches a single URL path
-- segment. The syntax \`**\` matches zero or more URL path segments, which
-- must be the last part of the URL path except the \`Verb\`. The syntax
-- \`Variable\` matches part of the URL path as specified by its template.
-- A variable template must not contain other variables. If a variable
-- matches a single path segment, its template may be omitted, e.g.
-- \`{var}\` is equivalent to \`{var=*}\`. The syntax \`LITERAL\` matches
-- literal text in the URL path. If the \`LITERAL\` contains any reserved
-- character, such characters should be percent-encoded before the
-- matching. If a variable contains exactly one path segment, such as
-- \`\"{var}\"\` or \`\"{var=*}\"\`, when such a variable is expanded into
-- a URL path on the client side, all characters except \`[-_.~0-9a-zA-Z]\`
-- are percent-encoded. The server side does the reverse decoding. Such
-- variables show up in the [Discovery
-- Document](https:\/\/developers.google.com\/discovery\/v1\/reference\/apis)
-- as \`{var}\`. If a variable contains multiple path segments, such as
-- \`\"{var=foo\/*}\"\` or \`\"{var=**}\"\`, when such a variable is
-- expanded into a URL path on the client side, all characters except
-- \`[-_.~\/0-9a-zA-Z]\` are percent-encoded. The server side does the
-- reverse decoding, except \"%2F\" and \"%2f\" are left unchanged. Such
-- variables show up in the [Discovery
-- Document](https:\/\/developers.google.com\/discovery\/v1\/reference\/apis)
-- as \`{+var}\`. ## Using gRPC API Service Configuration gRPC API Service
-- Configuration (service config) is a configuration language for
-- configuring a gRPC service to become a user-facing product. The service
-- config is simply the YAML representation of the \`google.api.Service\`
-- proto message. As an alternative to annotating your proto file, you can
-- configure gRPC transcoding in your service config YAML files. You do
-- this by specifying a \`HttpRule\` that maps the gRPC method to a REST
-- endpoint, achieving the same effect as the proto annotation. This can be
-- particularly useful if you have a proto that is reused in multiple
-- services. Note that any transcoding specified in the service config will
-- override any matching transcoding configuration in the proto. Example:
-- http: rules: # Selects a gRPC method and applies HttpRule to it. -
-- selector: example.v1.Messaging.GetMessage get:
-- \/v1\/messages\/{message_id}\/{sub.subfield} ## Special notes When gRPC
-- Transcoding is used to map a gRPC to JSON REST endpoints, the proto to
-- JSON conversion must follow the [proto3
-- specification](https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json).
-- While the single segment variable follows the semantics of [RFC
-- 6570](https:\/\/tools.ietf.org\/html\/rfc6570) Section 3.2.2 Simple
-- String Expansion, the multi segment variable **does not** follow RFC
-- 6570 Section 3.2.3 Reserved Expansion. The reason is that the Reserved
-- Expansion does not expand special characters like \`?\` and \`#\`, which
-- would lead to invalid URLs. As the result, gRPC Transcoding uses a
-- custom encoding for multi segment variables. The path variables **must
-- not** refer to any repeated or mapped field, because client libraries
-- are not capable of handling such variable expansion. The path variables
-- **must not** capture the leading \"\/\" character. The reason is that
-- the most common use case \"{var}\" does not capture the leading \"\/\"
-- character. For consistency, all path variables must share the same
-- behavior. Repeated message fields must not be mapped to URL query
-- parameters, because no client library can support such complicated
-- mapping. If an API needs to use a JSON array for request or response
-- body, it can map the request or response body to a repeated field.
-- However, some gRPC Transcoding implementations may not support this
-- feature.
--
-- /See:/ 'hTTPRule' smart constructor.
data HTTPRule =
  HTTPRule'
    { _httprSelector :: !(Maybe Text)
    , _httprPost :: !(Maybe Text)
    , _httprBody :: !(Maybe Text)
    , _httprCustom :: !(Maybe CustomHTTPPattern)
    , _httprResponseBody :: !(Maybe Text)
    , _httprPatch :: !(Maybe Text)
    , _httprGet :: !(Maybe Text)
    , _httprAdditionalBindings :: !(Maybe [HTTPRule])
    , _httprDelete :: !(Maybe Text)
    , _httprPut :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httprSelector'
--
-- * 'httprPost'
--
-- * 'httprBody'
--
-- * 'httprCustom'
--
-- * 'httprResponseBody'
--
-- * 'httprPatch'
--
-- * 'httprGet'
--
-- * 'httprAdditionalBindings'
--
-- * 'httprDelete'
--
-- * 'httprPut'
hTTPRule
    :: HTTPRule
hTTPRule =
  HTTPRule'
    { _httprSelector = Nothing
    , _httprPost = Nothing
    , _httprBody = Nothing
    , _httprCustom = Nothing
    , _httprResponseBody = Nothing
    , _httprPatch = Nothing
    , _httprGet = Nothing
    , _httprAdditionalBindings = Nothing
    , _httprDelete = Nothing
    , _httprPut = Nothing
    }


-- | Selects a method to which this rule applies. Refer to selector for
-- syntax details.
httprSelector :: Lens' HTTPRule (Maybe Text)
httprSelector
  = lens _httprSelector
      (\ s a -> s{_httprSelector = a})

-- | Maps to HTTP POST. Used for creating a resource or performing an action.
httprPost :: Lens' HTTPRule (Maybe Text)
httprPost
  = lens _httprPost (\ s a -> s{_httprPost = a})

-- | The name of the request field whose value is mapped to the HTTP request
-- body, or \`*\` for mapping all request fields not captured by the path
-- pattern to the HTTP body, or omitted for not having any HTTP request
-- body. NOTE: the referred field must be present at the top-level of the
-- request message type.
httprBody :: Lens' HTTPRule (Maybe Text)
httprBody
  = lens _httprBody (\ s a -> s{_httprBody = a})

-- | The custom pattern is used for specifying an HTTP method that is not
-- included in the \`pattern\` field, such as HEAD, or \"*\" to leave the
-- HTTP method unspecified for this rule. The wild-card rule is useful for
-- services that provide content to Web (HTML) clients.
httprCustom :: Lens' HTTPRule (Maybe CustomHTTPPattern)
httprCustom
  = lens _httprCustom (\ s a -> s{_httprCustom = a})

-- | Optional. The name of the response field whose value is mapped to the
-- HTTP response body. When omitted, the entire response message will be
-- used as the HTTP response body. NOTE: The referred field must be present
-- at the top-level of the response message type.
httprResponseBody :: Lens' HTTPRule (Maybe Text)
httprResponseBody
  = lens _httprResponseBody
      (\ s a -> s{_httprResponseBody = a})

-- | Maps to HTTP PATCH. Used for updating a resource.
httprPatch :: Lens' HTTPRule (Maybe Text)
httprPatch
  = lens _httprPatch (\ s a -> s{_httprPatch = a})

-- | Maps to HTTP GET. Used for listing and getting information about
-- resources.
httprGet :: Lens' HTTPRule (Maybe Text)
httprGet = lens _httprGet (\ s a -> s{_httprGet = a})

-- | Additional HTTP bindings for the selector. Nested bindings must not
-- contain an \`additional_bindings\` field themselves (that is, the
-- nesting may only be one level deep).
httprAdditionalBindings :: Lens' HTTPRule [HTTPRule]
httprAdditionalBindings
  = lens _httprAdditionalBindings
      (\ s a -> s{_httprAdditionalBindings = a})
      . _Default
      . _Coerce

-- | Maps to HTTP DELETE. Used for deleting a resource.
httprDelete :: Lens' HTTPRule (Maybe Text)
httprDelete
  = lens _httprDelete (\ s a -> s{_httprDelete = a})

-- | Maps to HTTP PUT. Used for replacing a resource.
httprPut :: Lens' HTTPRule (Maybe Text)
httprPut = lens _httprPut (\ s a -> s{_httprPut = a})

instance FromJSON HTTPRule where
        parseJSON
          = withObject "HTTPRule"
              (\ o ->
                 HTTPRule' <$>
                   (o .:? "selector") <*> (o .:? "post") <*>
                     (o .:? "body")
                     <*> (o .:? "custom")
                     <*> (o .:? "responseBody")
                     <*> (o .:? "patch")
                     <*> (o .:? "get")
                     <*> (o .:? "additionalBindings" .!= mempty)
                     <*> (o .:? "delete")
                     <*> (o .:? "put"))

instance ToJSON HTTPRule where
        toJSON HTTPRule'{..}
          = object
              (catMaybes
                 [("selector" .=) <$> _httprSelector,
                  ("post" .=) <$> _httprPost,
                  ("body" .=) <$> _httprBody,
                  ("custom" .=) <$> _httprCustom,
                  ("responseBody" .=) <$> _httprResponseBody,
                  ("patch" .=) <$> _httprPatch,
                  ("get" .=) <$> _httprGet,
                  ("additionalBindings" .=) <$>
                    _httprAdditionalBindings,
                  ("delete" .=) <$> _httprDelete,
                  ("put" .=) <$> _httprPut])

-- | Represents a DNS record set resource.
--
-- /See:/ 'dnsRecordSet' smart constructor.
data DNSRecordSet =
  DNSRecordSet'
    { _drsTtl :: !(Maybe GDuration)
    , _drsData :: !(Maybe [Text])
    , _drsDomain :: !(Maybe Text)
    , _drsType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DNSRecordSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsTtl'
--
-- * 'drsData'
--
-- * 'drsDomain'
--
-- * 'drsType'
dnsRecordSet
    :: DNSRecordSet
dnsRecordSet =
  DNSRecordSet'
    { _drsTtl = Nothing
    , _drsData = Nothing
    , _drsDomain = Nothing
    , _drsType = Nothing
    }


-- | Required. The period of time for which this RecordSet can be cached by
-- resolvers.
drsTtl :: Lens' DNSRecordSet (Maybe Scientific)
drsTtl
  = lens _drsTtl (\ s a -> s{_drsTtl = a}) .
      mapping _GDuration

-- | Required. As defined in RFC 1035 (section 5) and RFC 1034 (section
-- 3.6.1) for examples see
-- https:\/\/cloud.google.com\/dns\/records\/json-record.
drsData :: Lens' DNSRecordSet [Text]
drsData
  = lens _drsData (\ s a -> s{_drsData = a}) . _Default
      . _Coerce

-- | Required. The DNS or domain name of the record set, e.g.
-- \`test.example.com\`.
drsDomain :: Lens' DNSRecordSet (Maybe Text)
drsDomain
  = lens _drsDomain (\ s a -> s{_drsDomain = a})

-- | Required. The identifier of a supported record type.
drsType :: Lens' DNSRecordSet (Maybe Text)
drsType = lens _drsType (\ s a -> s{_drsType = a})

instance FromJSON DNSRecordSet where
        parseJSON
          = withObject "DNSRecordSet"
              (\ o ->
                 DNSRecordSet' <$>
                   (o .:? "ttl") <*> (o .:? "data" .!= mempty) <*>
                     (o .:? "domain")
                     <*> (o .:? "type"))

instance ToJSON DNSRecordSet where
        toJSON DNSRecordSet'{..}
          = object
              (catMaybes
                 [("ttl" .=) <$> _drsTtl, ("data" .=) <$> _drsData,
                  ("domain" .=) <$> _drsDomain,
                  ("type" .=) <$> _drsType])

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

-- | Request to add a record set to a private managed DNS zone in the shared
-- producer host project.
--
-- /See:/ 'addDNSRecordSetRequest' smart constructor.
data AddDNSRecordSetRequest =
  AddDNSRecordSetRequest'
    { _adrsrZone :: !(Maybe Text)
    , _adrsrConsumerNetwork :: !(Maybe Text)
    , _adrsrDNSRecordSet :: !(Maybe DNSRecordSet)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddDNSRecordSetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adrsrZone'
--
-- * 'adrsrConsumerNetwork'
--
-- * 'adrsrDNSRecordSet'
addDNSRecordSetRequest
    :: AddDNSRecordSetRequest
addDNSRecordSetRequest =
  AddDNSRecordSetRequest'
    { _adrsrZone = Nothing
    , _adrsrConsumerNetwork = Nothing
    , _adrsrDNSRecordSet = Nothing
    }


-- | Required. The name of the private DNS zone in the shared producer host
-- project to which the record set will be added.
adrsrZone :: Lens' AddDNSRecordSetRequest (Maybe Text)
adrsrZone
  = lens _adrsrZone (\ s a -> s{_adrsrZone = a})

-- | Required. The network that the consumer is using to connect with
-- services. Must be in the form of
-- projects\/{project}\/global\/networks\/{network} {project} is the
-- project number, as in \'12345\' {network} is the network name.
adrsrConsumerNetwork :: Lens' AddDNSRecordSetRequest (Maybe Text)
adrsrConsumerNetwork
  = lens _adrsrConsumerNetwork
      (\ s a -> s{_adrsrConsumerNetwork = a})

-- | Required. The DNS record set to add.
adrsrDNSRecordSet :: Lens' AddDNSRecordSetRequest (Maybe DNSRecordSet)
adrsrDNSRecordSet
  = lens _adrsrDNSRecordSet
      (\ s a -> s{_adrsrDNSRecordSet = a})

instance FromJSON AddDNSRecordSetRequest where
        parseJSON
          = withObject "AddDNSRecordSetRequest"
              (\ o ->
                 AddDNSRecordSetRequest' <$>
                   (o .:? "zone") <*> (o .:? "consumerNetwork") <*>
                     (o .:? "dnsRecordSet"))

instance ToJSON AddDNSRecordSetRequest where
        toJSON AddDNSRecordSetRequest'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _adrsrZone,
                  ("consumerNetwork" .=) <$> _adrsrConsumerNetwork,
                  ("dnsRecordSet" .=) <$> _adrsrDNSRecordSet])

-- | Metadata provided through GetOperation request for the LRO generated by
-- UpdateConsumerConfig API.
--
-- /See:/ 'consumerConfigMetadata' smart constructor.
data ConsumerConfigMetadata =
  ConsumerConfigMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConsumerConfigMetadata' with the minimum fields required to make a request.
--
consumerConfigMetadata
    :: ConsumerConfigMetadata
consumerConfigMetadata = ConsumerConfigMetadata'


instance FromJSON ConsumerConfigMetadata where
        parseJSON
          = withObject "ConsumerConfigMetadata"
              (\ o -> pure ConsumerConfigMetadata')

instance ToJSON ConsumerConfigMetadata where
        toJSON = const emptyObject

-- | Configuration for an authentication provider, including support for
-- [JSON Web Token
-- (JWT)](https:\/\/tools.ietf.org\/html\/draft-ietf-oauth-json-web-token-32).
--
-- /See:/ 'authProvider' smart constructor.
data AuthProvider =
  AuthProvider'
    { _apJWKsURI :: !(Maybe Text)
    , _apAudiences :: !(Maybe Text)
    , _apJwtLocations :: !(Maybe [JwtLocation])
    , _apId :: !(Maybe Text)
    , _apAuthorizationURL :: !(Maybe Text)
    , _apIssuer :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apJWKsURI'
--
-- * 'apAudiences'
--
-- * 'apJwtLocations'
--
-- * 'apId'
--
-- * 'apAuthorizationURL'
--
-- * 'apIssuer'
authProvider
    :: AuthProvider
authProvider =
  AuthProvider'
    { _apJWKsURI = Nothing
    , _apAudiences = Nothing
    , _apJwtLocations = Nothing
    , _apId = Nothing
    , _apAuthorizationURL = Nothing
    , _apIssuer = Nothing
    }


-- | URL of the provider\'s public key set to validate signature of the JWT.
-- See [OpenID
-- Discovery](https:\/\/openid.net\/specs\/openid-connect-discovery-1_0.html#ProviderMetadata).
-- Optional if the key set document: - can be retrieved from [OpenID
-- Discovery](https:\/\/openid.net\/specs\/openid-connect-discovery-1_0.html)
-- of the issuer. - can be inferred from the email domain of the issuer
-- (e.g. a Google service account). Example:
-- https:\/\/www.googleapis.com\/oauth2\/v1\/certs
apJWKsURI :: Lens' AuthProvider (Maybe Text)
apJWKsURI
  = lens _apJWKsURI (\ s a -> s{_apJWKsURI = a})

-- | The list of JWT
-- [audiences](https:\/\/tools.ietf.org\/html\/draft-ietf-oauth-json-web-token-32#section-4.1.3).
-- that are allowed to access. A JWT containing any of these audiences will
-- be accepted. When this setting is absent, JWTs with audiences: -
-- \"https:\/\/[service.name]\/[google.protobuf.Api.name]\" -
-- \"https:\/\/[service.name]\/\" will be accepted. For example, if no
-- audiences are in the setting, LibraryService API will accept JWTs with
-- the following audiences: -
-- https:\/\/library-example.googleapis.com\/google.example.library.v1.LibraryService
-- - https:\/\/library-example.googleapis.com\/ Example: audiences:
-- bookstore_android.apps.googleusercontent.com,
-- bookstore_web.apps.googleusercontent.com
apAudiences :: Lens' AuthProvider (Maybe Text)
apAudiences
  = lens _apAudiences (\ s a -> s{_apAudiences = a})

-- | Defines the locations to extract the JWT. JWT locations can be either
-- from HTTP headers or URL query parameters. The rule is that the first
-- match wins. The checking order is: checking all headers first, then URL
-- query parameters. If not specified, default to use following 3
-- locations: 1) Authorization: Bearer 2) x-goog-iap-jwt-assertion 3)
-- access_token query parameter Default locations can be specified as
-- followings: jwt_locations: - header: Authorization value_prefix:
-- \"Bearer \" - header: x-goog-iap-jwt-assertion - query: access_token
apJwtLocations :: Lens' AuthProvider [JwtLocation]
apJwtLocations
  = lens _apJwtLocations
      (\ s a -> s{_apJwtLocations = a})
      . _Default
      . _Coerce

-- | The unique identifier of the auth provider. It will be referred to by
-- \`AuthRequirement.provider_id\`. Example: \"bookstore_auth\".
apId :: Lens' AuthProvider (Maybe Text)
apId = lens _apId (\ s a -> s{_apId = a})

-- | Redirect URL if JWT token is required but not present or is expired.
-- Implement authorizationUrl of securityDefinitions in OpenAPI spec.
apAuthorizationURL :: Lens' AuthProvider (Maybe Text)
apAuthorizationURL
  = lens _apAuthorizationURL
      (\ s a -> s{_apAuthorizationURL = a})

-- | Identifies the principal that issued the JWT. See
-- https:\/\/tools.ietf.org\/html\/draft-ietf-oauth-json-web-token-32#section-4.1.1
-- Usually a URL or an email address. Example:
-- https:\/\/securetoken.google.com Example:
-- 1234567-compute\'developer.gserviceaccount.com
apIssuer :: Lens' AuthProvider (Maybe Text)
apIssuer = lens _apIssuer (\ s a -> s{_apIssuer = a})

instance FromJSON AuthProvider where
        parseJSON
          = withObject "AuthProvider"
              (\ o ->
                 AuthProvider' <$>
                   (o .:? "jwksUri") <*> (o .:? "audiences") <*>
                     (o .:? "jwtLocations" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "authorizationUrl")
                     <*> (o .:? "issuer"))

instance ToJSON AuthProvider where
        toJSON AuthProvider'{..}
          = object
              (catMaybes
                 [("jwksUri" .=) <$> _apJWKsURI,
                  ("audiences" .=) <$> _apAudiences,
                  ("jwtLocations" .=) <$> _apJwtLocations,
                  ("id" .=) <$> _apId,
                  ("authorizationUrl" .=) <$> _apAuthorizationURL,
                  ("issuer" .=) <$> _apIssuer])

-- | A context rule provides information about the context for an individual
-- API element.
--
-- /See:/ 'contextRule' smart constructor.
data ContextRule =
  ContextRule'
    { _crSelector :: !(Maybe Text)
    , _crRequested :: !(Maybe [Text])
    , _crAllowedRequestExtensions :: !(Maybe [Text])
    , _crProvided :: !(Maybe [Text])
    , _crAllowedResponseExtensions :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContextRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crSelector'
--
-- * 'crRequested'
--
-- * 'crAllowedRequestExtensions'
--
-- * 'crProvided'
--
-- * 'crAllowedResponseExtensions'
contextRule
    :: ContextRule
contextRule =
  ContextRule'
    { _crSelector = Nothing
    , _crRequested = Nothing
    , _crAllowedRequestExtensions = Nothing
    , _crProvided = Nothing
    , _crAllowedResponseExtensions = Nothing
    }


-- | Selects the methods to which this rule applies. Refer to selector for
-- syntax details.
crSelector :: Lens' ContextRule (Maybe Text)
crSelector
  = lens _crSelector (\ s a -> s{_crSelector = a})

-- | A list of full type names of requested contexts.
crRequested :: Lens' ContextRule [Text]
crRequested
  = lens _crRequested (\ s a -> s{_crRequested = a}) .
      _Default
      . _Coerce

-- | A list of full type names or extension IDs of extensions allowed in grpc
-- side channel from client to backend.
crAllowedRequestExtensions :: Lens' ContextRule [Text]
crAllowedRequestExtensions
  = lens _crAllowedRequestExtensions
      (\ s a -> s{_crAllowedRequestExtensions = a})
      . _Default
      . _Coerce

-- | A list of full type names of provided contexts.
crProvided :: Lens' ContextRule [Text]
crProvided
  = lens _crProvided (\ s a -> s{_crProvided = a}) .
      _Default
      . _Coerce

-- | A list of full type names or extension IDs of extensions allowed in grpc
-- side channel from backend to client.
crAllowedResponseExtensions :: Lens' ContextRule [Text]
crAllowedResponseExtensions
  = lens _crAllowedResponseExtensions
      (\ s a -> s{_crAllowedResponseExtensions = a})
      . _Default
      . _Coerce

instance FromJSON ContextRule where
        parseJSON
          = withObject "ContextRule"
              (\ o ->
                 ContextRule' <$>
                   (o .:? "selector") <*> (o .:? "requested" .!= mempty)
                     <*> (o .:? "allowedRequestExtensions" .!= mempty)
                     <*> (o .:? "provided" .!= mempty)
                     <*> (o .:? "allowedResponseExtensions" .!= mempty))

instance ToJSON ContextRule where
        toJSON ContextRule'{..}
          = object
              (catMaybes
                 [("selector" .=) <$> _crSelector,
                  ("requested" .=) <$> _crRequested,
                  ("allowedRequestExtensions" .=) <$>
                    _crAllowedRequestExtensions,
                  ("provided" .=) <$> _crProvided,
                  ("allowedResponseExtensions" .=) <$>
                    _crAllowedResponseExtensions])

--
-- /See:/ 'secondaryIPRangeSpec' smart constructor.
data SecondaryIPRangeSpec =
  SecondaryIPRangeSpec'
    { _sirsIPPrefixLength :: !(Maybe (Textual Int32))
    , _sirsRangeName :: !(Maybe Text)
    , _sirsRequestedAddress :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecondaryIPRangeSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sirsIPPrefixLength'
--
-- * 'sirsRangeName'
--
-- * 'sirsRequestedAddress'
secondaryIPRangeSpec
    :: SecondaryIPRangeSpec
secondaryIPRangeSpec =
  SecondaryIPRangeSpec'
    { _sirsIPPrefixLength = Nothing
    , _sirsRangeName = Nothing
    , _sirsRequestedAddress = Nothing
    }


-- | Required. The prefix length of the secondary IP range. Use CIDR range
-- notation, such as \`30\` to provision a secondary IP range with an
-- \`x.x.x.x\/30\` CIDR range. The IP address range is drawn from a pool of
-- available ranges in the service consumer\'s allocated range.
sirsIPPrefixLength :: Lens' SecondaryIPRangeSpec (Maybe Int32)
sirsIPPrefixLength
  = lens _sirsIPPrefixLength
      (\ s a -> s{_sirsIPPrefixLength = a})
      . mapping _Coerce

-- | Required. A name for the secondary IP range. The name must be 1-63
-- characters long, and comply with RFC1035. The name must be unique within
-- the subnetwork.
sirsRangeName :: Lens' SecondaryIPRangeSpec (Maybe Text)
sirsRangeName
  = lens _sirsRangeName
      (\ s a -> s{_sirsRangeName = a})

-- | Optional. The starting address of a range. The address must be a valid
-- IPv4 address in the x.x.x.x format. This value combined with the IP
-- prefix range is the CIDR range for the secondary IP range. The range
-- must be within the allocated range that is assigned to the private
-- connection. If the CIDR range isn\'t available, the call fails.
sirsRequestedAddress :: Lens' SecondaryIPRangeSpec (Maybe Text)
sirsRequestedAddress
  = lens _sirsRequestedAddress
      (\ s a -> s{_sirsRequestedAddress = a})

instance FromJSON SecondaryIPRangeSpec where
        parseJSON
          = withObject "SecondaryIPRangeSpec"
              (\ o ->
                 SecondaryIPRangeSpec' <$>
                   (o .:? "ipPrefixLength") <*> (o .:? "rangeName") <*>
                     (o .:? "requestedAddress"))

instance ToJSON SecondaryIPRangeSpec where
        toJSON SecondaryIPRangeSpec'{..}
          = object
              (catMaybes
                 [("ipPrefixLength" .=) <$> _sirsIPPrefixLength,
                  ("rangeName" .=) <$> _sirsRangeName,
                  ("requestedAddress" .=) <$> _sirsRequestedAddress])
