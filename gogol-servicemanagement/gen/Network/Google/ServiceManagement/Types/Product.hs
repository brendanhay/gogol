{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ServiceManagement.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ServiceManagement.Types.Product where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types.Sum

-- | Response message for UndeleteService method.
--
-- /See:/ 'undeleteServiceResponse' smart constructor.
newtype UndeleteServiceResponse = UndeleteServiceResponse'
    { _usrService :: Maybe ManagedService
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UndeleteServiceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usrService'
undeleteServiceResponse
    :: UndeleteServiceResponse
undeleteServiceResponse =
    UndeleteServiceResponse'
    { _usrService = Nothing
    }

-- | Revived service resource.
usrService :: Lens' UndeleteServiceResponse (Maybe ManagedService)
usrService
  = lens _usrService (\ s a -> s{_usrService = a})

instance FromJSON UndeleteServiceResponse where
        parseJSON
          = withObject "UndeleteServiceResponse"
              (\ o ->
                 UndeleteServiceResponse' <$> (o .:? "service"))

instance ToJSON UndeleteServiceResponse where
        toJSON UndeleteServiceResponse'{..}
          = object (catMaybes [("service" .=) <$> _usrService])

-- | Define a parameter\'s name and location. The parameter may be passed as
-- either an HTTP header or a URL query parameter, and if both are passed
-- the behavior is implementation-dependent.
--
-- /See:/ 'systemParameter' smart constructor.
data SystemParameter = SystemParameter'
    { _spHTTPHeader        :: !(Maybe Text)
    , _spURLQueryParameter :: !(Maybe Text)
    , _spName              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _spHTTPHeader = Nothing
    , _spURLQueryParameter = Nothing
    , _spName = Nothing
    }

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

-- | Define the name of the parameter, such as \"api_key\", \"alt\",
-- \"callback\", and etc. It is case sensitive.
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

-- | Generated advice about this change, used for providing more information
-- about how a change will affect the existing service.
--
-- /See:/ 'advice' smart constructor.
newtype Advice = Advice'
    { _aDescription :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Advice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aDescription'
advice
    :: Advice
advice =
    Advice'
    { _aDescription = Nothing
    }

-- | Useful description for why this advice was applied and what actions
-- should be taken to mitigate any implied risks.
aDescription :: Lens' Advice (Maybe Text)
aDescription
  = lens _aDescription (\ s a -> s{_aDescription = a})

instance FromJSON Advice where
        parseJSON
          = withObject "Advice"
              (\ o -> Advice' <$> (o .:? "description"))

instance ToJSON Advice where
        toJSON Advice'{..}
          = object
              (catMaybes [("description" .=) <$> _aDescription])

-- | Generic specification of a source configuration file
--
-- /See:/ 'configFile' smart constructor.
data ConfigFile = ConfigFile'
    { _cfFileContents :: !(Maybe Base64)
    , _cfFilePath     :: !(Maybe Text)
    , _cfFileType     :: !(Maybe ConfigFileFileType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConfigFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfFileContents'
--
-- * 'cfFilePath'
--
-- * 'cfFileType'
configFile
    :: ConfigFile
configFile =
    ConfigFile'
    { _cfFileContents = Nothing
    , _cfFilePath = Nothing
    , _cfFileType = Nothing
    }

-- | The bytes that constitute the file.
cfFileContents :: Lens' ConfigFile (Maybe ByteString)
cfFileContents
  = lens _cfFileContents
      (\ s a -> s{_cfFileContents = a})
      . mapping _Base64

-- | The file name of the configuration file (full or relative path).
cfFilePath :: Lens' ConfigFile (Maybe Text)
cfFilePath
  = lens _cfFilePath (\ s a -> s{_cfFilePath = a})

-- | The type of configuration file this represents.
cfFileType :: Lens' ConfigFile (Maybe ConfigFileFileType)
cfFileType
  = lens _cfFileType (\ s a -> s{_cfFileType = a})

instance FromJSON ConfigFile where
        parseJSON
          = withObject "ConfigFile"
              (\ o ->
                 ConfigFile' <$>
                   (o .:? "fileContents") <*> (o .:? "filePath") <*>
                     (o .:? "fileType"))

instance ToJSON ConfigFile where
        toJSON ConfigFile'{..}
          = object
              (catMaybes
                 [("fileContents" .=) <$> _cfFileContents,
                  ("filePath" .=) <$> _cfFilePath,
                  ("fileType" .=) <$> _cfFileType])

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
data MonitoredResourceDescriptor = MonitoredResourceDescriptor'
    { _mrdName        :: !(Maybe Text)
    , _mrdDisplayName :: !(Maybe Text)
    , _mrdLabels      :: !(Maybe [LabelDescriptor])
    , _mrdType        :: !(Maybe Text)
    , _mrdDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
monitoredResourceDescriptor
    :: MonitoredResourceDescriptor
monitoredResourceDescriptor =
    MonitoredResourceDescriptor'
    { _mrdName = Nothing
    , _mrdDisplayName = Nothing
    , _mrdLabels = Nothing
    , _mrdType = Nothing
    , _mrdDescription = Nothing
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
-- \`\"cloudsql_database\"\` represents databases in Google Cloud SQL. The
-- maximum length of this value is 256 characters.
mrdType :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdType = lens _mrdType (\ s a -> s{_mrdType = a})

-- | Optional. A detailed description of the monitored resource type that
-- might be used in documentation.
mrdDescription :: Lens' MonitoredResourceDescriptor (Maybe Text)
mrdDescription
  = lens _mrdDescription
      (\ s a -> s{_mrdDescription = a})

instance FromJSON MonitoredResourceDescriptor where
        parseJSON
          = withObject "MonitoredResourceDescriptor"
              (\ o ->
                 MonitoredResourceDescriptor' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "labels" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON MonitoredResourceDescriptor where
        toJSON MonitoredResourceDescriptor'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _mrdName,
                  ("displayName" .=) <$> _mrdDisplayName,
                  ("labels" .=) <$> _mrdLabels,
                  ("type" .=) <$> _mrdType,
                  ("description" .=) <$> _mrdDescription])

-- | A documentation rule provides information about individual API elements.
--
-- /See:/ 'documentationRule' smart constructor.
data DocumentationRule = DocumentationRule'
    { _drSelector               :: !(Maybe Text)
    , _drDeprecationDescription :: !(Maybe Text)
    , _drDescription            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | The selector is a comma-separated list of patterns. Each pattern is a
-- qualified name of the element which may end in \"*\", indicating a
-- wildcard. Wildcards are only allowed at the end and for a whole
-- component of the qualified name, i.e. \"foo.*\" is ok, but not
-- \"foo.b*\" or \"foo.*.bar\". To specify a default for all applicable
-- elements, the whole pattern \"*\" is used.
drSelector :: Lens' DocumentationRule (Maybe Text)
drSelector
  = lens _drSelector (\ s a -> s{_drSelector = a})

-- | Deprecation description of the selected element(s). It can be provided
-- if an element is marked as \`deprecated\`.
drDeprecationDescription :: Lens' DocumentationRule (Maybe Text)
drDeprecationDescription
  = lens _drDeprecationDescription
      (\ s a -> s{_drDeprecationDescription = a})

-- | Description of the selected API(s).
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
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` which can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting
-- purpose. - Batch operations. If a client uses batch request and batch
-- response, the \`Status\` message should be used directly inside batch
-- response, one for each error sub-response. - Asynchronous operations. If
-- an API call embeds asynchronous operation results in its response, the
-- status of those operations should be represented directly using the
-- \`Status\` message. - Logging. If some API errors are stored in logs,
-- the message \`Status\` could be used directly after any stripping needed
-- for security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status = Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
status =
    Status'
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | A list of messages that carry the error details. There will be a common
-- set of message types for APIs to use.
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

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationSchema' smart constructor.
newtype OperationSchema = OperationSchema'
    { _osAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osAddtional'
operationSchema
    :: HashMap Text JSONValue -- ^ 'osAddtional'
    -> OperationSchema
operationSchema pOsAddtional_ =
    OperationSchema'
    { _osAddtional = _Coerce # pOsAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
osAddtional :: Lens' OperationSchema (HashMap Text JSONValue)
osAddtional
  = lens _osAddtional (\ s a -> s{_osAddtional = a}) .
      _Coerce

instance FromJSON OperationSchema where
        parseJSON
          = withObject "OperationSchema"
              (\ o -> OperationSchema' <$> (parseJSONObject o))

instance ToJSON OperationSchema where
        toJSON = toJSON . _osAddtional

-- | Response message for GenerateConfigReport method.
--
-- /See:/ 'generateConfigReportResponse' smart constructor.
data GenerateConfigReportResponse = GenerateConfigReportResponse'
    { _gcrrDiagnostics   :: !(Maybe [Diagnostic])
    , _gcrrServiceName   :: !(Maybe Text)
    , _gcrrId            :: !(Maybe Text)
    , _gcrrChangeReports :: !(Maybe [ChangeReport])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GenerateConfigReportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrrDiagnostics'
--
-- * 'gcrrServiceName'
--
-- * 'gcrrId'
--
-- * 'gcrrChangeReports'
generateConfigReportResponse
    :: GenerateConfigReportResponse
generateConfigReportResponse =
    GenerateConfigReportResponse'
    { _gcrrDiagnostics = Nothing
    , _gcrrServiceName = Nothing
    , _gcrrId = Nothing
    , _gcrrChangeReports = Nothing
    }

-- | Errors \/ Linter warnings associated with the service definition this
-- report belongs to.
gcrrDiagnostics :: Lens' GenerateConfigReportResponse [Diagnostic]
gcrrDiagnostics
  = lens _gcrrDiagnostics
      (\ s a -> s{_gcrrDiagnostics = a})
      . _Default
      . _Coerce

-- | Name of the service this report belongs to.
gcrrServiceName :: Lens' GenerateConfigReportResponse (Maybe Text)
gcrrServiceName
  = lens _gcrrServiceName
      (\ s a -> s{_gcrrServiceName = a})

-- | ID of the service configuration this report belongs to.
gcrrId :: Lens' GenerateConfigReportResponse (Maybe Text)
gcrrId = lens _gcrrId (\ s a -> s{_gcrrId = a})

-- | list of ChangeReport, each corresponding to comparison between two
-- service configurations.
gcrrChangeReports :: Lens' GenerateConfigReportResponse [ChangeReport]
gcrrChangeReports
  = lens _gcrrChangeReports
      (\ s a -> s{_gcrrChangeReports = a})
      . _Default
      . _Coerce

instance FromJSON GenerateConfigReportResponse where
        parseJSON
          = withObject "GenerateConfigReportResponse"
              (\ o ->
                 GenerateConfigReportResponse' <$>
                   (o .:? "diagnostics" .!= mempty) <*>
                     (o .:? "serviceName")
                     <*> (o .:? "id")
                     <*> (o .:? "changeReports" .!= mempty))

instance ToJSON GenerateConfigReportResponse where
        toJSON GenerateConfigReportResponse'{..}
          = object
              (catMaybes
                 [("diagnostics" .=) <$> _gcrrDiagnostics,
                  ("serviceName" .=) <$> _gcrrServiceName,
                  ("id" .=) <$> _gcrrId,
                  ("changeReports" .=) <$> _gcrrChangeReports])

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

-- | Do not use this. For media support, add instead
-- [][google.bytestream.RestByteStream] as an API to your configuration.
--
-- /See:/ 'mediaUpload' smart constructor.
newtype MediaUpload' = MediaUpload''
    { _muEnabled :: Maybe Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MediaUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muEnabled'
mediaUpload
    :: MediaUpload'
mediaUpload =
    MediaUpload''
    { _muEnabled = Nothing
    }

-- | Whether upload is enabled.
muEnabled :: Lens' MediaUpload' (Maybe Bool)
muEnabled
  = lens _muEnabled (\ s a -> s{_muEnabled = a})

instance FromJSON MediaUpload' where
        parseJSON
          = withObject "MediaUpload"
              (\ o -> MediaUpload'' <$> (o .:? "enabled"))

instance ToJSON MediaUpload' where
        toJSON MediaUpload''{..}
          = object (catMaybes [("enabled" .=) <$> _muEnabled])

-- | Enables \"data access\" audit logging for a service and specifies a list
-- of members that are log-exempted.
--
-- /See:/ 'auditConfig' smart constructor.
data AuditConfig = AuditConfig'
    { _acService         :: !(Maybe Text)
    , _acExemptedMembers :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acService'
--
-- * 'acExemptedMembers'
auditConfig
    :: AuditConfig
auditConfig =
    AuditConfig'
    { _acService = Nothing
    , _acExemptedMembers = Nothing
    }

-- | Specifies a service that will be enabled for \"data access\" audit
-- logging. For example, \`resourcemanager\`, \`storage\`, \`compute\`.
-- \`allServices\` is a special value that covers all services.
acService :: Lens' AuditConfig (Maybe Text)
acService
  = lens _acService (\ s a -> s{_acService = a})

-- | Specifies the identities that are exempted from \"data access\" audit
-- logging for the \`service\` specified above. Follows the same format of
-- Binding.members.
acExemptedMembers :: Lens' AuditConfig [Text]
acExemptedMembers
  = lens _acExemptedMembers
      (\ s a -> s{_acExemptedMembers = a})
      . _Default
      . _Coerce

instance FromJSON AuditConfig where
        parseJSON
          = withObject "AuditConfig"
              (\ o ->
                 AuditConfig' <$>
                   (o .:? "service") <*>
                     (o .:? "exemptedMembers" .!= mempty))

instance ToJSON AuditConfig where
        toJSON AuditConfig'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _acService,
                  ("exemptedMembers" .=) <$> _acExemptedMembers])

-- | Selects and configures the service controller used by the service. The
-- service controller handles features like abuse, quota, billing, logging,
-- monitoring, etc.
--
-- /See:/ 'control' smart constructor.
newtype Control = Control'
    { _cEnvironment :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Control' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEnvironment'
control
    :: Control
control =
    Control'
    { _cEnvironment = Nothing
    }

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

-- | Strategy used to delete a service. This strategy is a placeholder only
-- used by the system generated rollout to delete a service.
--
-- /See:/ 'deleteServiceStrategy' smart constructor.
data DeleteServiceStrategy =
    DeleteServiceStrategy'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteServiceStrategy' with the minimum fields required to make a request.
--
deleteServiceStrategy
    :: DeleteServiceStrategy
deleteServiceStrategy = DeleteServiceStrategy'

instance FromJSON DeleteServiceStrategy where
        parseJSON
          = withObject "DeleteServiceStrategy"
              (\ o -> pure DeleteServiceStrategy')

instance ToJSON DeleteServiceStrategy where
        toJSON = const emptyObject

-- | User-defined authentication requirements, including support for [JSON
-- Web Token
-- (JWT)](https:\/\/tools.ietf.org\/html\/draft-ietf-oauth-json-web-token-32).
--
-- /See:/ 'authRequirement' smart constructor.
data AuthRequirement = AuthRequirement'
    { _arProviderId :: !(Maybe Text)
    , _arAudiences  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AuthRequirement'
    { _arProviderId = Nothing
    , _arAudiences = Nothing
    }

-- | id from authentication provider. Example: provider_id: bookstore_auth
arProviderId :: Lens' AuthRequirement (Maybe Text)
arProviderId
  = lens _arProviderId (\ s a -> s{_arProviderId = a})

-- | The list of JWT
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

-- | Response message for \`ListServices\` method.
--
-- /See:/ 'listServicesResponse' smart constructor.
data ListServicesResponse = ListServicesResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrServices      :: !(Maybe [ManagedService])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ListServicesResponse'
    { _lsrNextPageToken = Nothing
    , _lsrServices = Nothing
    }

-- | Token that can be passed to \`ListServices\` to resume a paginated
-- query.
lsrNextPageToken :: Lens' ListServicesResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | The results of the query.
lsrServices :: Lens' ListServicesResponse [ManagedService]
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

-- | \`Context\` defines which contexts an API requests. Example: context:
-- rules: - selector: \"*\" requested: - google.rpc.context.ProjectContext
-- - google.rpc.context.OriginContext The above specifies that all methods
-- in the API request \`google.rpc.context.ProjectContext\` and
-- \`google.rpc.context.OriginContext\`. Available context types are
-- defined in package \`google.rpc.context\`.
--
-- /See:/ 'context' smart constructor.
newtype Context = Context'
    { _cRules :: Maybe [ContextRule]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Context' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cRules'
context
    :: Context
context =
    Context'
    { _cRules = Nothing
    }

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
data LoggingDestination = LoggingDestination'
    { _ldMonitoredResource :: !(Maybe Text)
    , _ldLogs              :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    LoggingDestination'
    { _ldMonitoredResource = Nothing
    , _ldLogs = Nothing
    }

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

-- | Defines a metric type and its schema.
--
-- /See:/ 'metricDescriptor' smart constructor.
data MetricDescriptor = MetricDescriptor'
    { _mdMetricKind  :: !(Maybe MetricDescriptorMetricKind)
    , _mdName        :: !(Maybe Text)
    , _mdDisplayName :: !(Maybe Text)
    , _mdLabels      :: !(Maybe [LabelDescriptor])
    , _mdType        :: !(Maybe Text)
    , _mdValueType   :: !(Maybe MetricDescriptorValueType)
    , _mdDescription :: !(Maybe Text)
    , _mdUnit        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdMetricKind'
--
-- * 'mdName'
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
metricDescriptor
    :: MetricDescriptor
metricDescriptor =
    MetricDescriptor'
    { _mdMetricKind = Nothing
    , _mdName = Nothing
    , _mdDisplayName = Nothing
    , _mdLabels = Nothing
    , _mdType = Nothing
    , _mdValueType = Nothing
    , _mdDescription = Nothing
    , _mdUnit = Nothing
    }

-- | Whether the metric records instantaneous values, changes to a value,
-- etc. Some combinations of \`metric_kind\` and \`value_type\` might not
-- be supported.
mdMetricKind :: Lens' MetricDescriptor (Maybe MetricDescriptorMetricKind)
mdMetricKind
  = lens _mdMetricKind (\ s a -> s{_mdMetricKind = a})

-- | Resource name. The format of the name may vary between different
-- implementations. For examples:
-- projects\/{project_id}\/metricDescriptors\/{type=**}
-- metricDescriptors\/{type=**}
mdName :: Lens' MetricDescriptor (Maybe Text)
mdName = lens _mdName (\ s a -> s{_mdName = a})

-- | A concise name for the metric, which can be displayed in user
-- interfaces. Use sentence case without an ending period, for example
-- \"Request count\".
mdDisplayName :: Lens' MetricDescriptor (Maybe Text)
mdDisplayName
  = lens _mdDisplayName
      (\ s a -> s{_mdDisplayName = a})

-- | The set of labels that can be used to describe a specific instance of
-- this metric type. For example, the
-- \`compute.googleapis.com\/instance\/network\/received_bytes_count\`
-- metric type has a label, \`loadbalanced\`, that specifies whether the
-- traffic was received through a load balanced IP address.
mdLabels :: Lens' MetricDescriptor [LabelDescriptor]
mdLabels
  = lens _mdLabels (\ s a -> s{_mdLabels = a}) .
      _Default
      . _Coerce

-- | The metric type including a DNS name prefix, for example
-- \`\"compute.googleapis.com\/instance\/cpu\/utilization\"\`. Metric types
-- should use a natural hierarchical grouping such as the following:
-- compute.googleapis.com\/instance\/cpu\/utilization
-- compute.googleapis.com\/instance\/disk\/read_ops_count
-- compute.googleapis.com\/instance\/network\/received_bytes_count Note
-- that if the metric type changes, the monitoring data will be
-- discontinued, and anything depends on it will break, such as monitoring
-- dashboards, alerting rules and quota limits. Therefore, once a metric
-- has been published, its type should be immutable.
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

-- | The unit in which the metric value is reported. It is only applicable if
-- the \`value_type\` is \`INT64\`, \`DOUBLE\`, or \`DISTRIBUTION\`. The
-- supported units are a subset of [The Unified Code for Units of
-- Measure](http:\/\/unitsofmeasure.org\/ucum.html) standard: **Basic units
-- (UNIT)** * \`bit\` bit * \`By\` byte * \`s\` second * \`min\` minute *
-- \`h\` hour * \`d\` day **Prefixes (PREFIX)** * \`k\` kilo (10**3) *
-- \`M\` mega (10**6) * \`G\` giga (10**9) * \`T\` tera (10**12) * \`P\`
-- peta (10**15) * \`E\` exa (10**18) * \`Z\` zetta (10**21) * \`Y\` yotta
-- (10**24) * \`m\` milli (10**-3) * \`u\` micro (10**-6) * \`n\` nano
-- (10**-9) * \`p\` pico (10**-12) * \`f\` femto (10**-15) * \`a\` atto
-- (10**-18) * \`z\` zepto (10**-21) * \`y\` yocto (10**-24) * \`Ki\` kibi
-- (2**10) * \`Mi\` mebi (2**20) * \`Gi\` gibi (2**30) * \`Ti\` tebi
-- (2**40) **Grammar** The grammar includes the dimensionless unit \`1\`,
-- such as \`1\/s\`. The grammar also includes these connectors: * \`\/\`
-- division (as an infix operator, e.g. \`1\/s\`). * \`.\` multiplication
-- (as an infix operator, e.g. \`GBy.d\`) The grammar for a unit is as
-- follows: Expression = Component { \".\" Component } { \"\/\" Component }
-- ; Component = [ PREFIX ] UNIT [ Annotation ] | Annotation | \"1\" ;
-- Annotation = \"{\" NAME \"}\" ; Notes: * \`Annotation\` is just a
-- comment if it follows a \`UNIT\` and is equivalent to \`1\` if it is
-- used alone. For examples, \`{requests}\/s == 1\/s\`,
-- \`By{transmitted}\/s == By\/s\`. * \`NAME\` is a sequence of non-blank
-- printable ASCII characters not containing \'{\' or \'}\'.
mdUnit :: Lens' MetricDescriptor (Maybe Text)
mdUnit = lens _mdUnit (\ s a -> s{_mdUnit = a})

instance FromJSON MetricDescriptor where
        parseJSON
          = withObject "MetricDescriptor"
              (\ o ->
                 MetricDescriptor' <$>
                   (o .:? "metricKind") <*> (o .:? "name") <*>
                     (o .:? "displayName")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "valueType")
                     <*> (o .:? "description")
                     <*> (o .:? "unit"))

instance ToJSON MetricDescriptor where
        toJSON MetricDescriptor'{..}
          = object
              (catMaybes
                 [("metricKind" .=) <$> _mdMetricKind,
                  ("name" .=) <$> _mdName,
                  ("displayName" .=) <$> _mdDisplayName,
                  ("labels" .=) <$> _mdLabels, ("type" .=) <$> _mdType,
                  ("valueType" .=) <$> _mdValueType,
                  ("description" .=) <$> _mdDescription,
                  ("unit" .=) <$> _mdUnit])

-- | Request message for \`GetIamPolicy\` method.
--
-- /See:/ 'getIAMPolicyRequest' smart constructor.
data GetIAMPolicyRequest =
    GetIAMPolicyRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetIAMPolicyRequest' with the minimum fields required to make a request.
--
getIAMPolicyRequest
    :: GetIAMPolicyRequest
getIAMPolicyRequest = GetIAMPolicyRequest'

instance FromJSON GetIAMPolicyRequest where
        parseJSON
          = withObject "GetIAMPolicyRequest"
              (\ o -> pure GetIAMPolicyRequest')

instance ToJSON GetIAMPolicyRequest where
        toJSON = const emptyObject

-- | A backend rule provides configuration for an individual API element.
--
-- /See:/ 'backendRule' smart constructor.
data BackendRule = BackendRule'
    { _brSelector :: !(Maybe Text)
    , _brAddress  :: !(Maybe Text)
    , _brDeadline :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brSelector'
--
-- * 'brAddress'
--
-- * 'brDeadline'
backendRule
    :: BackendRule
backendRule =
    BackendRule'
    { _brSelector = Nothing
    , _brAddress = Nothing
    , _brDeadline = Nothing
    }

-- | Selects the methods to which this rule applies. Refer to selector for
-- syntax details.
brSelector :: Lens' BackendRule (Maybe Text)
brSelector
  = lens _brSelector (\ s a -> s{_brSelector = a})

-- | The address of the API backend.
brAddress :: Lens' BackendRule (Maybe Text)
brAddress
  = lens _brAddress (\ s a -> s{_brAddress = a})

-- | The number of seconds to wait for a response from a request. The default
-- depends on the deployment context.
brDeadline :: Lens' BackendRule (Maybe Double)
brDeadline
  = lens _brDeadline (\ s a -> s{_brDeadline = a}) .
      mapping _Coerce

instance FromJSON BackendRule where
        parseJSON
          = withObject "BackendRule"
              (\ o ->
                 BackendRule' <$>
                   (o .:? "selector") <*> (o .:? "address") <*>
                     (o .:? "deadline"))

instance ToJSON BackendRule where
        toJSON BackendRule'{..}
          = object
              (catMaybes
                 [("selector" .=) <$> _brSelector,
                  ("address" .=) <$> _brAddress,
                  ("deadline" .=) <$> _brDeadline])

-- | Request message for SubmitConfigSource method.
--
-- /See:/ 'submitConfigSourceRequest' smart constructor.
data SubmitConfigSourceRequest = SubmitConfigSourceRequest'
    { _scsrValidateOnly :: !(Maybe Bool)
    , _scsrConfigSource :: !(Maybe ConfigSource)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubmitConfigSourceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scsrValidateOnly'
--
-- * 'scsrConfigSource'
submitConfigSourceRequest
    :: SubmitConfigSourceRequest
submitConfigSourceRequest =
    SubmitConfigSourceRequest'
    { _scsrValidateOnly = Nothing
    , _scsrConfigSource = Nothing
    }

-- | Optional. If set, this will result in the generation of a
-- \`google.api.Service\` configuration based on the \`ConfigSource\`
-- provided, but the generated config and the sources will NOT be
-- persisted.
scsrValidateOnly :: Lens' SubmitConfigSourceRequest (Maybe Bool)
scsrValidateOnly
  = lens _scsrValidateOnly
      (\ s a -> s{_scsrValidateOnly = a})

-- | The source configuration for the service.
scsrConfigSource :: Lens' SubmitConfigSourceRequest (Maybe ConfigSource)
scsrConfigSource
  = lens _scsrConfigSource
      (\ s a -> s{_scsrConfigSource = a})

instance FromJSON SubmitConfigSourceRequest where
        parseJSON
          = withObject "SubmitConfigSourceRequest"
              (\ o ->
                 SubmitConfigSourceRequest' <$>
                   (o .:? "validateOnly") <*> (o .:? "configSource"))

instance ToJSON SubmitConfigSourceRequest where
        toJSON SubmitConfigSourceRequest'{..}
          = object
              (catMaybes
                 [("validateOnly" .=) <$> _scsrValidateOnly,
                  ("configSource" .=) <$> _scsrConfigSource])

-- | \`SourceContext\` represents information about the source of a protobuf
-- element, like the file in which it is defined.
--
-- /See:/ 'sourceContext' smart constructor.
newtype SourceContext = SourceContext'
    { _scFileName :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scFileName'
sourceContext
    :: SourceContext
sourceContext =
    SourceContext'
    { _scFileName = Nothing
    }

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
data Field = Field'
    { _fKind         :: !(Maybe FieldKind)
    , _fOneofIndex   :: !(Maybe (Textual Int32))
    , _fName         :: !(Maybe Text)
    , _fJSONName     :: !(Maybe Text)
    , _fCardinality  :: !(Maybe FieldCardinality)
    , _fOptions      :: !(Maybe [Option])
    , _fPacked       :: !(Maybe Bool)
    , _fDefaultValue :: !(Maybe Text)
    , _fNumber       :: !(Maybe (Textual Int32))
    , _fTypeURL      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Strategy that specifies how Google Service Control should select
-- different versions of service configurations based on traffic
-- percentage. One example of how to gradually rollout a new service
-- configuration using this strategy: Day 1 Rollout { id:
-- \"example.googleapis.com\/rollout_20160206\" traffic_percent_strategy {
-- percentages: { \"example.googleapis.com\/20160201\": 70.00
-- \"example.googleapis.com\/20160206\": 30.00 } } } Day 2 Rollout { id:
-- \"example.googleapis.com\/rollout_20160207\" traffic_percent_strategy: {
-- percentages: { \"example.googleapis.com\/20160206\": 100.00 } } }
--
-- /See:/ 'trafficPercentStrategy' smart constructor.
newtype TrafficPercentStrategy = TrafficPercentStrategy'
    { _tpsPercentages :: Maybe TrafficPercentStrategyPercentages
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrafficPercentStrategy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpsPercentages'
trafficPercentStrategy
    :: TrafficPercentStrategy
trafficPercentStrategy =
    TrafficPercentStrategy'
    { _tpsPercentages = Nothing
    }

-- | Maps service configuration IDs to their corresponding traffic
-- percentage. Key is the service configuration ID, Value is the traffic
-- percentage which must be greater than 0.0 and the sum must equal to
-- 100.0.
tpsPercentages :: Lens' TrafficPercentStrategy (Maybe TrafficPercentStrategyPercentages)
tpsPercentages
  = lens _tpsPercentages
      (\ s a -> s{_tpsPercentages = a})

instance FromJSON TrafficPercentStrategy where
        parseJSON
          = withObject "TrafficPercentStrategy"
              (\ o ->
                 TrafficPercentStrategy' <$> (o .:? "percentages"))

instance ToJSON TrafficPercentStrategy where
        toJSON TrafficPercentStrategy'{..}
          = object
              (catMaybes [("percentages" .=) <$> _tpsPercentages])

-- | \`Service\` is the root object of Google service configuration schema.
-- It describes basic information about a service, such as the name and the
-- title, and delegates other aspects to sub-sections. Each sub-section is
-- either a proto message or a repeated proto message that configures a
-- specific aspect, such as auth. See each proto message definition for
-- details. Example: type: google.api.Service config_version: 3 name:
-- calendar.googleapis.com title: Google Calendar API apis: - name:
-- google.calendar.v3.Calendar backend: rules: - selector:
-- \"google.calendar.v3.*\" address: calendar.example.com
--
-- /See:/ 'service' smart constructor.
data Service = Service'
    { _sControl            :: !(Maybe Control)
    , _sMetrics            :: !(Maybe [MetricDescriptor])
    , _sContext            :: !(Maybe Context)
    , _sAuthentication     :: !(Maybe Authentication)
    , _sAPIs               :: !(Maybe [API])
    , _sTypes              :: !(Maybe [Type])
    , _sAnalytics          :: !(Maybe Analytics)
    , _sVisibility         :: !(Maybe Visibility)
    , _sSystemTypes        :: !(Maybe [Type])
    , _sMonitoredResources :: !(Maybe [MonitoredResourceDescriptor])
    , _sBackend            :: !(Maybe Backend)
    , _sMonitoring         :: !(Maybe Monitoring)
    , _sName               :: !(Maybe Text)
    , _sSystemParameters   :: !(Maybe SystemParameters)
    , _sLogs               :: !(Maybe [LogDescriptor])
    , _sDocumentation      :: !(Maybe Documentation)
    , _sId                 :: !(Maybe Text)
    , _sUsage              :: !(Maybe Usage)
    , _sEndpoints          :: !(Maybe [Endpoint])
    , _sEnums              :: !(Maybe [Enum'])
    , _sConfigVersion      :: !(Maybe (Textual Word32))
    , _sHTTP               :: !(Maybe HTTP)
    , _sTitle              :: !(Maybe Text)
    , _sProducerProjectId  :: !(Maybe Text)
    , _sCustomError        :: !(Maybe CustomError)
    , _sLogging            :: !(Maybe Logging)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'sAnalytics'
--
-- * 'sVisibility'
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
-- * 'sCustomError'
--
-- * 'sLogging'
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
    , _sAnalytics = Nothing
    , _sVisibility = Nothing
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
    , _sCustomError = Nothing
    , _sLogging = Nothing
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
-- by name. Example: types: - name: google.protobuf.Int32
sTypes :: Lens' Service [Type]
sTypes
  = lens _sTypes (\ s a -> s{_sTypes = a}) . _Default .
      _Coerce

-- | WARNING: DO NOT USE UNTIL THIS MESSAGE IS REMOVED. Analytics
-- configuration.
sAnalytics :: Lens' Service (Maybe Analytics)
sAnalytics
  = lens _sAnalytics (\ s a -> s{_sAnalytics = a})

-- | API visibility configuration.
sVisibility :: Lens' Service (Maybe Visibility)
sVisibility
  = lens _sVisibility (\ s a -> s{_sVisibility = a})

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

-- | The DNS address at which this service is available, e.g.
-- \`calendar.googleapis.com\`.
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
-- by the client for tracking purpose. If empty, the server may choose to
-- generate one instead.
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
-- name. Example: enums: - name: google.someapi.v1.SomeEnum
sEnums :: Lens' Service [Enum']
sEnums
  = lens _sEnums (\ s a -> s{_sEnums = a}) . _Default .
      _Coerce

-- | The version of the service configuration. The config version may
-- influence interpretation of the configuration, for example, to determine
-- defaults. This is documented together with applicable options. The
-- current default for the config version itself is \`3\`.
sConfigVersion :: Lens' Service (Maybe Word32)
sConfigVersion
  = lens _sConfigVersion
      (\ s a -> s{_sConfigVersion = a})
      . mapping _Coerce

-- | HTTP configuration.
sHTTP :: Lens' Service (Maybe HTTP)
sHTTP = lens _sHTTP (\ s a -> s{_sHTTP = a})

-- | The product title associated with this service.
sTitle :: Lens' Service (Maybe Text)
sTitle = lens _sTitle (\ s a -> s{_sTitle = a})

-- | The id of the Google developer project that owns the service. Members of
-- this project can manage the service configuration, manage consumption of
-- the service, etc.
sProducerProjectId :: Lens' Service (Maybe Text)
sProducerProjectId
  = lens _sProducerProjectId
      (\ s a -> s{_sProducerProjectId = a})

-- | Custom error configuration.
sCustomError :: Lens' Service (Maybe CustomError)
sCustomError
  = lens _sCustomError (\ s a -> s{_sCustomError = a})

-- | Logging configuration.
sLogging :: Lens' Service (Maybe Logging)
sLogging = lens _sLogging (\ s a -> s{_sLogging = a})

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
                     <*> (o .:? "analytics")
                     <*> (o .:? "visibility")
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
                     <*> (o .:? "customError")
                     <*> (o .:? "logging"))

instance ToJSON Service where
        toJSON Service'{..}
          = object
              (catMaybes
                 [("control" .=) <$> _sControl,
                  ("metrics" .=) <$> _sMetrics,
                  ("context" .=) <$> _sContext,
                  ("authentication" .=) <$> _sAuthentication,
                  ("apis" .=) <$> _sAPIs, ("types" .=) <$> _sTypes,
                  ("analytics" .=) <$> _sAnalytics,
                  ("visibility" .=) <$> _sVisibility,
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
                  ("customError" .=) <$> _sCustomError,
                  ("logging" .=) <$> _sLogging])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationSchema)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- If true, the operation is completed, and either \`error\` or
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
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationSchema)
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

-- | Request message for EnableService method.
--
-- /See:/ 'enableServiceRequest' smart constructor.
newtype EnableServiceRequest = EnableServiceRequest'
    { _esrConsumerId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnableServiceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esrConsumerId'
enableServiceRequest
    :: EnableServiceRequest
enableServiceRequest =
    EnableServiceRequest'
    { _esrConsumerId = Nothing
    }

-- | The identity of consumer resource which service enablement will be
-- applied to. The Google Service Management implementation accepts the
-- following forms: \"project:\", \"project_number:\". Note: this is made
-- compatible with google.api.servicecontrol.v1.Operation.consumer_id.
esrConsumerId :: Lens' EnableServiceRequest (Maybe Text)
esrConsumerId
  = lens _esrConsumerId
      (\ s a -> s{_esrConsumerId = a})

instance FromJSON EnableServiceRequest where
        parseJSON
          = withObject "EnableServiceRequest"
              (\ o ->
                 EnableServiceRequest' <$> (o .:? "consumerId"))

instance ToJSON EnableServiceRequest where
        toJSON EnableServiceRequest'{..}
          = object
              (catMaybes [("consumerId" .=) <$> _esrConsumerId])

-- | Response message for ListServiceConfigs method.
--
-- /See:/ 'listServiceConfigsResponse' smart constructor.
data ListServiceConfigsResponse = ListServiceConfigsResponse'
    { _lscrServiceConfigs :: !(Maybe [Service])
    , _lscrNextPageToken  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListServiceConfigsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lscrServiceConfigs'
--
-- * 'lscrNextPageToken'
listServiceConfigsResponse
    :: ListServiceConfigsResponse
listServiceConfigsResponse =
    ListServiceConfigsResponse'
    { _lscrServiceConfigs = Nothing
    , _lscrNextPageToken = Nothing
    }

-- | The list of service configuration resources.
lscrServiceConfigs :: Lens' ListServiceConfigsResponse [Service]
lscrServiceConfigs
  = lens _lscrServiceConfigs
      (\ s a -> s{_lscrServiceConfigs = a})
      . _Default
      . _Coerce

-- | The token of the next page of results.
lscrNextPageToken :: Lens' ListServiceConfigsResponse (Maybe Text)
lscrNextPageToken
  = lens _lscrNextPageToken
      (\ s a -> s{_lscrNextPageToken = a})

instance FromJSON ListServiceConfigsResponse where
        parseJSON
          = withObject "ListServiceConfigsResponse"
              (\ o ->
                 ListServiceConfigsResponse' <$>
                   (o .:? "serviceConfigs" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListServiceConfigsResponse where
        toJSON ListServiceConfigsResponse'{..}
          = object
              (catMaybes
                 [("serviceConfigs" .=) <$> _lscrServiceConfigs,
                  ("nextPageToken" .=) <$> _lscrNextPageToken])

-- | A custom error rule.
--
-- /See:/ 'customErrorRule' smart constructor.
data CustomErrorRule = CustomErrorRule'
    { _cerIsErrorType :: !(Maybe Bool)
    , _cerSelector    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    CustomErrorRule'
    { _cerIsErrorType = Nothing
    , _cerSelector = Nothing
    }

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

-- | Response message for SubmitConfigSource method.
--
-- /See:/ 'submitConfigSourceResponse' smart constructor.
newtype SubmitConfigSourceResponse = SubmitConfigSourceResponse'
    { _scsrServiceConfig :: Maybe Service
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubmitConfigSourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scsrServiceConfig'
submitConfigSourceResponse
    :: SubmitConfigSourceResponse
submitConfigSourceResponse =
    SubmitConfigSourceResponse'
    { _scsrServiceConfig = Nothing
    }

-- | The generated service configuration.
scsrServiceConfig :: Lens' SubmitConfigSourceResponse (Maybe Service)
scsrServiceConfig
  = lens _scsrServiceConfig
      (\ s a -> s{_scsrServiceConfig = a})

instance FromJSON SubmitConfigSourceResponse where
        parseJSON
          = withObject "SubmitConfigSourceResponse"
              (\ o ->
                 SubmitConfigSourceResponse' <$>
                   (o .:? "serviceConfig"))

instance ToJSON SubmitConfigSourceResponse where
        toJSON SubmitConfigSourceResponse'{..}
          = object
              (catMaybes
                 [("serviceConfig" .=) <$> _scsrServiceConfig])

-- | A visibility rule provides visibility configuration for an individual
-- API element.
--
-- /See:/ 'visibilityRule' smart constructor.
data VisibilityRule = VisibilityRule'
    { _vrRestriction :: !(Maybe Text)
    , _vrSelector    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VisibilityRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrRestriction'
--
-- * 'vrSelector'
visibilityRule
    :: VisibilityRule
visibilityRule =
    VisibilityRule'
    { _vrRestriction = Nothing
    , _vrSelector = Nothing
    }

-- | A comma-separated list of visibility labels that apply to the
-- \`selector\`. Any of the listed labels can be used to grant the
-- visibility. If a rule has multiple labels, removing one of the labels
-- but not all of them can break clients. Example: visibility: rules: -
-- selector: google.calendar.Calendar.EnhancedSearch restriction:
-- GOOGLE_INTERNAL, TRUSTED_TESTER Removing GOOGLE_INTERNAL from this
-- restriction will break clients that rely on this method and only had
-- access to it through GOOGLE_INTERNAL.
vrRestriction :: Lens' VisibilityRule (Maybe Text)
vrRestriction
  = lens _vrRestriction
      (\ s a -> s{_vrRestriction = a})

-- | Selects methods, messages, fields, enums, etc. to which this rule
-- applies. Refer to selector for syntax details.
vrSelector :: Lens' VisibilityRule (Maybe Text)
vrSelector
  = lens _vrSelector (\ s a -> s{_vrSelector = a})

instance FromJSON VisibilityRule where
        parseJSON
          = withObject "VisibilityRule"
              (\ o ->
                 VisibilityRule' <$>
                   (o .:? "restriction") <*> (o .:? "selector"))

instance ToJSON VisibilityRule where
        toJSON VisibilityRule'{..}
          = object
              (catMaybes
                 [("restriction" .=) <$> _vrRestriction,
                  ("selector" .=) <$> _vrSelector])

-- | Change report associated with a particular service configuration. It
-- contains a list of ConfigChanges based on the comparison between two
-- service configurations.
--
-- /See:/ 'changeReport' smart constructor.
newtype ChangeReport = ChangeReport'
    { _crConfigChanges :: Maybe [ConfigChange]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangeReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crConfigChanges'
changeReport
    :: ChangeReport
changeReport =
    ChangeReport'
    { _crConfigChanges = Nothing
    }

-- | List of changes between two service configurations. The changes will be
-- alphabetically sorted based on the identifier of each change. A
-- ConfigChange identifier is a dot separated path to the configuration.
-- Example:
-- visibility.rules[selector=\'LibraryService.CreateBook\'].restriction
crConfigChanges :: Lens' ChangeReport [ConfigChange]
crConfigChanges
  = lens _crConfigChanges
      (\ s a -> s{_crConfigChanges = a})
      . _Default
      . _Coerce

instance FromJSON ChangeReport where
        parseJSON
          = withObject "ChangeReport"
              (\ o ->
                 ChangeReport' <$> (o .:? "configChanges" .!= mempty))

instance ToJSON ChangeReport where
        toJSON ChangeReport'{..}
          = object
              (catMaybes
                 [("configChanges" .=) <$> _crConfigChanges])

-- | Do not use this. For media support, add instead
-- [][google.bytestream.RestByteStream] as an API to your configuration.
--
-- /See:/ 'mediaDownload' smart constructor.
newtype MediaDownload' = MediaDownload''
    { _mdEnabled :: Maybe Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MediaDownload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdEnabled'
mediaDownload
    :: MediaDownload'
mediaDownload =
    MediaDownload''
    { _mdEnabled = Nothing
    }

-- | Whether download is enabled.
mdEnabled :: Lens' MediaDownload' (Maybe Bool)
mdEnabled
  = lens _mdEnabled (\ s a -> s{_mdEnabled = a})

instance FromJSON MediaDownload' where
        parseJSON
          = withObject "MediaDownload"
              (\ o -> MediaDownload'' <$> (o .:? "enabled"))

instance ToJSON MediaDownload' where
        toJSON MediaDownload''{..}
          = object (catMaybes [("enabled" .=) <$> _mdEnabled])

-- | The option\'s value. For example, \`\"com.google.protobuf\"\`.
--
-- /See:/ 'optionValue' smart constructor.
newtype OptionValue = OptionValue'
    { _ovAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OptionValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ovAddtional'
optionValue
    :: HashMap Text JSONValue -- ^ 'ovAddtional'
    -> OptionValue
optionValue pOvAddtional_ =
    OptionValue'
    { _ovAddtional = _Coerce # pOvAddtional_
    }

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
data EnumValue = EnumValue'
    { _evName    :: !(Maybe Text)
    , _evOptions :: !(Maybe [Option])
    , _evNumber  :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    EnumValue'
    { _evName = Nothing
    , _evOptions = Nothing
    , _evNumber = Nothing
    }

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

-- | \`Authentication\` defines the authentication configuration for an API.
-- Example for an API targeted for external use: name:
-- calendar.googleapis.com authentication: rules: - selector: \"*\" oauth:
-- canonical_scopes: https:\/\/www.googleapis.com\/auth\/calendar -
-- selector: google.calendar.Delegate oauth: canonical_scopes:
-- https:\/\/www.googleapis.com\/auth\/calendar.read
--
-- /See:/ 'authentication' smart constructor.
data Authentication = Authentication'
    { _aRules     :: !(Maybe [AuthenticationRule])
    , _aProviders :: !(Maybe [AuthProvider])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Authentication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aRules'
--
-- * 'aProviders'
authentication
    :: Authentication
authentication =
    Authentication'
    { _aRules = Nothing
    , _aProviders = Nothing
    }

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

-- | Declares an API to be included in this API. The including API must
-- redeclare all the methods from the included API, but documentation and
-- options are inherited as follows: - If after comment and whitespace
-- stripping, the documentation string of the redeclared method is empty,
-- it will be inherited from the original method. - Each annotation
-- belonging to the service config (http, visibility) which is not set in
-- the redeclared method will be inherited. - If an http annotation is
-- inherited, the path pattern will be modified as follows. Any version
-- prefix will be replaced by the version of the including API plus the
-- root path if specified. Example of a simple mixin: package
-- google.acl.v1; service AccessControl { \/\/ Get the underlying ACL
-- object. rpc GetAcl(GetAclRequest) returns (Acl) { option
-- (google.api.http).get = \"\/v1\/{resource=**}:getAcl\"; } } package
-- google.storage.v2; service Storage { \/\/ rpc GetAcl(GetAclRequest)
-- returns (Acl); \/\/ Get a data record. rpc GetData(GetDataRequest)
-- returns (Data) { option (google.api.http).get = \"\/v2\/{resource=**}\";
-- } } Example of a mixin configuration: apis: - name:
-- google.storage.v2.Storage mixins: - name: google.acl.v1.AccessControl
-- The mixin construct implies that all methods in \`AccessControl\` are
-- also declared with same name and request\/response types in \`Storage\`.
-- A documentation generator or annotation processor will see the effective
-- \`Storage.GetAcl\` method after inherting documentation and annotations
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
data Mixin = Mixin'
    { _mRoot :: !(Maybe Text)
    , _mName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Mixin' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mRoot'
--
-- * 'mName'
mixin
    :: Mixin
mixin =
    Mixin'
    { _mRoot = Nothing
    , _mName = Nothing
    }

-- | If non-empty specifies a path under which inherited HTTP paths are
-- rooted.
mRoot :: Lens' Mixin (Maybe Text)
mRoot = lens _mRoot (\ s a -> s{_mRoot = a})

-- | The fully qualified name of the API which is included.
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
data CustomHTTPPattern = CustomHTTPPattern'
    { _chttppPath :: !(Maybe Text)
    , _chttppKind :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    CustomHTTPPattern'
    { _chttppPath = Nothing
    , _chttppKind = Nothing
    }

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
data UsageRule = UsageRule'
    { _urSelector               :: !(Maybe Text)
    , _urAllowUnregisteredCalls :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsageRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urSelector'
--
-- * 'urAllowUnregisteredCalls'
usageRule
    :: UsageRule
usageRule =
    UsageRule'
    { _urSelector = Nothing
    , _urAllowUnregisteredCalls = Nothing
    }

-- | Selects the methods to which this rule applies. Use \'*\' to indicate
-- all methods in all APIs. Refer to selector for syntax details.
urSelector :: Lens' UsageRule (Maybe Text)
urSelector
  = lens _urSelector (\ s a -> s{_urSelector = a})

-- | True, if the method allows unregistered calls; false otherwise.
urAllowUnregisteredCalls :: Lens' UsageRule (Maybe Bool)
urAllowUnregisteredCalls
  = lens _urAllowUnregisteredCalls
      (\ s a -> s{_urAllowUnregisteredCalls = a})

instance FromJSON UsageRule where
        parseJSON
          = withObject "UsageRule"
              (\ o ->
                 UsageRule' <$>
                   (o .:? "selector") <*>
                     (o .:? "allowUnregisteredCalls"))

instance ToJSON UsageRule where
        toJSON UsageRule'{..}
          = object
              (catMaybes
                 [("selector" .=) <$> _urSelector,
                  ("allowUnregisteredCalls" .=) <$>
                    _urAllowUnregisteredCalls])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem = StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
    StatusDetailsItem'
    { _sdiAddtional = _Coerce # pSdiAddtional_
    }

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
data Page = Page'
    { _pSubpages :: !(Maybe [Page])
    , _pContent  :: !(Maybe Text)
    , _pName     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
page =
    Page'
    { _pSubpages = Nothing
    , _pContent = Nothing
    , _pName = Nothing
    }

-- | Subpages of this page. The order of subpages specified here will be
-- honored in the generated docset.
pSubpages :: Lens' Page [Page]
pSubpages
  = lens _pSubpages (\ s a -> s{_pSubpages = a}) .
      _Default
      . _Coerce

-- | The Markdown content of the page. You can use '(== include {path} ==)'
-- to include content from a Markdown file.
pContent :: Lens' Page (Maybe Text)
pContent = lens _pContent (\ s a -> s{_pContent = a})

-- | The name of the page. It will be used as an identity of the page to
-- generate URI of the page, text of the link to this page in navigation,
-- etc. The full page name (start from the root page name to this page
-- concatenated with \`.\`) can be used as reference to the page in your
-- documentation. For example:
--
-- > pages:
-- > - name: Tutorial
-- >   content: (== include tutorial.md ==)
-- >   subpages:
-- >   - name: Java
-- >     content: (== include tutorial_java.md ==)
--
-- You can reference \`Java\` page using Markdown reference link syntax:
-- \`Java\`.
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

-- | Service configuration against which the comparison will be done. For
-- this version of API, the supported types are
-- google.api.servicemanagement.v1.ConfigRef,
-- google.api.servicemanagement.v1.ConfigSource, and google.api.Service
--
-- /See:/ 'generateConfigReportRequestOldConfig' smart constructor.
newtype GenerateConfigReportRequestOldConfig = GenerateConfigReportRequestOldConfig'
    { _gcrrocAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GenerateConfigReportRequestOldConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrrocAddtional'
generateConfigReportRequestOldConfig
    :: HashMap Text JSONValue -- ^ 'gcrrocAddtional'
    -> GenerateConfigReportRequestOldConfig
generateConfigReportRequestOldConfig pGcrrocAddtional_ =
    GenerateConfigReportRequestOldConfig'
    { _gcrrocAddtional = _Coerce # pGcrrocAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
gcrrocAddtional :: Lens' GenerateConfigReportRequestOldConfig (HashMap Text JSONValue)
gcrrocAddtional
  = lens _gcrrocAddtional
      (\ s a -> s{_gcrrocAddtional = a})
      . _Coerce

instance FromJSON
         GenerateConfigReportRequestOldConfig where
        parseJSON
          = withObject "GenerateConfigReportRequestOldConfig"
              (\ o ->
                 GenerateConfigReportRequestOldConfig' <$>
                   (parseJSONObject o))

instance ToJSON GenerateConfigReportRequestOldConfig
         where
        toJSON = toJSON . _gcrrocAddtional

-- | Analytics configuration of the service. The example below shows how to
-- configure monitored resources and metrics for analytics. In the example,
-- a monitored resource and two metrics are defined. The
-- \`library.googleapis.com\/book\/returned_count\` and
-- \`library.googleapis.com\/book\/overdue_count\` metric are sent to the
-- analytics. monitored_resources: - type: library.googleapis.com\/branch
-- labels: - key: \/city description: The city where the library branch is
-- located in. - key: \/name description: The name of the branch. metrics:
-- - name: library.googleapis.com\/book\/returned_count metric_kind: DELTA
-- value_type: INT64 labels: - key: \/customer_id - name:
-- library.googleapis.com\/book\/overdue_count metric_kind: GAUGE
-- value_type: INT64 labels: - key: \/customer_id analytics:
-- producer_destinations: - monitored_resource:
-- library.googleapis.com\/branch metrics: -
-- library.googleapis.com\/book\/returned_count -
-- library.googleapis.com\/book\/overdue_count
--
-- /See:/ 'analytics' smart constructor.
newtype Analytics = Analytics'
    { _aProducerDestinations :: Maybe [AnalyticsDestination]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Analytics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aProducerDestinations'
analytics
    :: Analytics
analytics =
    Analytics'
    { _aProducerDestinations = Nothing
    }

-- | Analytics configurations for sending metrics to the analytics backend.
-- There can be multiple producer destinations, each one must have a
-- different monitored resource type. A metric can be used in at most one
-- producer destination.
aProducerDestinations :: Lens' Analytics [AnalyticsDestination]
aProducerDestinations
  = lens _aProducerDestinations
      (\ s a -> s{_aProducerDestinations = a})
      . _Default
      . _Coerce

instance FromJSON Analytics where
        parseJSON
          = withObject "Analytics"
              (\ o ->
                 Analytics' <$>
                   (o .:? "producerDestinations" .!= mempty))

instance ToJSON Analytics where
        toJSON Analytics'{..}
          = object
              (catMaybes
                 [("producerDestinations" .=) <$>
                    _aProducerDestinations])

-- | A rule to be applied in a Policy.
--
-- /See:/ 'rule' smart constructor.
data Rule = Rule'
    { _rAction      :: !(Maybe RuleAction)
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
rAction :: Lens' Rule (Maybe RuleAction)
rAction = lens _rAction (\ s a -> s{_rAction = a})

-- | If one or more \'in\' clauses are specified, the rule matches if the
-- PRINCIPAL\/AUTHORITY_SELECTOR is in at least one of these entries.
rIn :: Lens' Rule [Text]
rIn
  = lens _rIn (\ s a -> s{_rIn = a}) . _Default .
      _Coerce

-- | If one or more \'not_in\' clauses are specified, the rule matches if the
-- PRINCIPAL\/AUTHORITY_SELECTOR is in none of the entries. The format for
-- in and not_in entries is the same as for members in a Binding (see
-- google\/iam\/v1\/policy.proto).
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

-- | \`Visibility\` defines restrictions for the visibility of service
-- elements. Restrictions are specified using visibility labels (e.g.,
-- TRUSTED_TESTER) that are elsewhere linked to users and projects. Users
-- and projects can have access to more than one visibility label. The
-- effective visibility for multiple labels is the union of each label\'s
-- elements, plus any unrestricted elements. If an element and its parents
-- have no restrictions, visibility is unconditionally granted. Example:
-- visibility: rules: - selector: google.calendar.Calendar.EnhancedSearch
-- restriction: TRUSTED_TESTER - selector:
-- google.calendar.Calendar.Delegate restriction: GOOGLE_INTERNAL Here, all
-- methods are publicly visible except for the restricted methods
-- EnhancedSearch and Delegate.
--
-- /See:/ 'visibility' smart constructor.
newtype Visibility = Visibility'
    { _vRules :: Maybe [VisibilityRule]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Visibility' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vRules'
visibility
    :: Visibility
visibility =
    Visibility'
    { _vRules = Nothing
    }

-- | A list of visibility rules that apply to individual API elements.
-- **NOTE:** All service configuration rules follow \"last one wins\"
-- order.
vRules :: Lens' Visibility [VisibilityRule]
vRules
  = lens _vRules (\ s a -> s{_vRules = a}) . _Default .
      _Coerce

instance FromJSON Visibility where
        parseJSON
          = withObject "Visibility"
              (\ o -> Visibility' <$> (o .:? "rules" .!= mempty))

instance ToJSON Visibility where
        toJSON Visibility'{..}
          = object (catMaybes [("rules" .=) <$> _vRules])

-- | Authentication rules for the service. By default, if a method has any
-- authentication requirements, every request must include a valid
-- credential matching one of the requirements. It\'s an error to include
-- more than one kind of credential in a single request. If a method
-- doesn\'t have any auth requirements, request credentials will be
-- ignored.
--
-- /See:/ 'authenticationRule' smart constructor.
data AuthenticationRule = AuthenticationRule'
    { _arRequirements           :: !(Maybe [AuthRequirement])
    , _arSelector               :: !(Maybe Text)
    , _arAllowWithoutCredential :: !(Maybe Bool)
    , _arOAuth                  :: !(Maybe OAuthRequirements)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Whether to allow requests without a credential. The credential can be an
-- OAuth token, Google cookies (first-party auth) or EndUserCreds. For
-- requests without credentials, if the service control environment is
-- specified, each incoming request **must** be associated with a service
-- consumer. This can be done by passing an API key that belongs to a
-- consumer project.
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

-- | Maps service configuration IDs to their corresponding traffic
-- percentage. Key is the service configuration ID, Value is the traffic
-- percentage which must be greater than 0.0 and the sum must equal to
-- 100.0.
--
-- /See:/ 'trafficPercentStrategyPercentages' smart constructor.
newtype TrafficPercentStrategyPercentages = TrafficPercentStrategyPercentages'
    { _tpspAddtional :: HashMap Text (Textual Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrafficPercentStrategyPercentages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpspAddtional'
trafficPercentStrategyPercentages
    :: HashMap Text Double -- ^ 'tpspAddtional'
    -> TrafficPercentStrategyPercentages
trafficPercentStrategyPercentages pTpspAddtional_ =
    TrafficPercentStrategyPercentages'
    { _tpspAddtional = _Coerce # pTpspAddtional_
    }

tpspAddtional :: Lens' TrafficPercentStrategyPercentages (HashMap Text Double)
tpspAddtional
  = lens _tpspAddtional
      (\ s a -> s{_tpspAddtional = a})
      . _Coerce

instance FromJSON TrafficPercentStrategyPercentages
         where
        parseJSON
          = withObject "TrafficPercentStrategyPercentages"
              (\ o ->
                 TrafficPercentStrategyPercentages' <$>
                   (parseJSONObject o))

instance ToJSON TrafficPercentStrategyPercentages
         where
        toJSON = toJSON . _tpspAddtional

-- | Response message for ListServiceRollouts method.
--
-- /See:/ 'listServiceRolloutsResponse' smart constructor.
data ListServiceRolloutsResponse = ListServiceRolloutsResponse'
    { _lsrrNextPageToken :: !(Maybe Text)
    , _lsrrRollouts      :: !(Maybe [Rollout])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListServiceRolloutsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrNextPageToken'
--
-- * 'lsrrRollouts'
listServiceRolloutsResponse
    :: ListServiceRolloutsResponse
listServiceRolloutsResponse =
    ListServiceRolloutsResponse'
    { _lsrrNextPageToken = Nothing
    , _lsrrRollouts = Nothing
    }

-- | The token of the next page of results.
lsrrNextPageToken :: Lens' ListServiceRolloutsResponse (Maybe Text)
lsrrNextPageToken
  = lens _lsrrNextPageToken
      (\ s a -> s{_lsrrNextPageToken = a})

-- | The list of rollout resources.
lsrrRollouts :: Lens' ListServiceRolloutsResponse [Rollout]
lsrrRollouts
  = lens _lsrrRollouts (\ s a -> s{_lsrrRollouts = a})
      . _Default
      . _Coerce

instance FromJSON ListServiceRolloutsResponse where
        parseJSON
          = withObject "ListServiceRolloutsResponse"
              (\ o ->
                 ListServiceRolloutsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "rollouts" .!= mempty))

instance ToJSON ListServiceRolloutsResponse where
        toJSON ListServiceRolloutsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrrNextPageToken,
                  ("rollouts" .=) <$> _lsrrRollouts])

-- | Output generated from semantically comparing two versions of a service
-- configuration. Includes detailed information about a field that have
-- changed with applicable advice about potential consequences for the
-- change, such as backwards-incompatibility.
--
-- /See:/ 'configChange' smart constructor.
data ConfigChange = ConfigChange'
    { _ccOldValue   :: !(Maybe Text)
    , _ccNewValue   :: !(Maybe Text)
    , _ccAdvices    :: !(Maybe [Advice])
    , _ccChangeType :: !(Maybe ConfigChangeChangeType)
    , _ccElement    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConfigChange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccOldValue'
--
-- * 'ccNewValue'
--
-- * 'ccAdvices'
--
-- * 'ccChangeType'
--
-- * 'ccElement'
configChange
    :: ConfigChange
configChange =
    ConfigChange'
    { _ccOldValue = Nothing
    , _ccNewValue = Nothing
    , _ccAdvices = Nothing
    , _ccChangeType = Nothing
    , _ccElement = Nothing
    }

-- | Value of the changed object in the old Service configuration, in JSON
-- format. This field will not be populated if ChangeType == ADDED.
ccOldValue :: Lens' ConfigChange (Maybe Text)
ccOldValue
  = lens _ccOldValue (\ s a -> s{_ccOldValue = a})

-- | Value of the changed object in the new Service configuration, in JSON
-- format. This field will not be populated if ChangeType == REMOVED.
ccNewValue :: Lens' ConfigChange (Maybe Text)
ccNewValue
  = lens _ccNewValue (\ s a -> s{_ccNewValue = a})

-- | Collection of advice provided for this change, useful for determining
-- the possible impact of this change.
ccAdvices :: Lens' ConfigChange [Advice]
ccAdvices
  = lens _ccAdvices (\ s a -> s{_ccAdvices = a}) .
      _Default
      . _Coerce

-- | The type for this change, either ADDED, REMOVED, or MODIFIED.
ccChangeType :: Lens' ConfigChange (Maybe ConfigChangeChangeType)
ccChangeType
  = lens _ccChangeType (\ s a -> s{_ccChangeType = a})

-- | Object hierarchy path to the change, with levels separated by a \'.\'
-- character. For repeated fields, an applicable unique identifier field is
-- used for the index (usually selector, name, or id). For maps, the term
-- \'key\' is used. If the field has no unique identifier, the numeric
-- index is used. Examples: -
-- visibility.rules[selector==\"google.LibraryService.CreateBook\"].restriction
-- -
-- quota.metric_rules[selector==\"google\"].metric_costs[key==\"reads\"].value
-- - logging.producer_destinations[0]
ccElement :: Lens' ConfigChange (Maybe Text)
ccElement
  = lens _ccElement (\ s a -> s{_ccElement = a})

instance FromJSON ConfigChange where
        parseJSON
          = withObject "ConfigChange"
              (\ o ->
                 ConfigChange' <$>
                   (o .:? "oldValue") <*> (o .:? "newValue") <*>
                     (o .:? "advices" .!= mempty)
                     <*> (o .:? "changeType")
                     <*> (o .:? "element"))

instance ToJSON ConfigChange where
        toJSON ConfigChange'{..}
          = object
              (catMaybes
                 [("oldValue" .=) <$> _ccOldValue,
                  ("newValue" .=) <$> _ccNewValue,
                  ("advices" .=) <$> _ccAdvices,
                  ("changeType" .=) <$> _ccChangeType,
                  ("element" .=) <$> _ccElement])

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

-- | \`Backend\` defines the backend configuration for a service.
--
-- /See:/ 'backend' smart constructor.
newtype Backend = Backend'
    { _bRules :: Maybe [BackendRule]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Backend' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bRules'
backend
    :: Backend
backend =
    Backend'
    { _bRules = Nothing
    }

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

-- | Monitoring configuration of the service. The example below shows how to
-- configure monitored resources and metrics for monitoring. In the
-- example, a monitored resource and two metrics are defined. The
-- \`library.googleapis.com\/book\/returned_count\` metric is sent to both
-- producer and consumer projects, whereas the
-- \`library.googleapis.com\/book\/overdue_count\` metric is only sent to
-- the consumer project. monitored_resources: - type:
-- library.googleapis.com\/branch labels: - key: \/city description: The
-- city where the library branch is located in. - key: \/name description:
-- The name of the branch. metrics: - name:
-- library.googleapis.com\/book\/returned_count metric_kind: DELTA
-- value_type: INT64 labels: - key: \/customer_id - name:
-- library.googleapis.com\/book\/overdue_count metric_kind: GAUGE
-- value_type: INT64 labels: - key: \/customer_id monitoring:
-- producer_destinations: - monitored_resource:
-- library.googleapis.com\/branch metrics: -
-- library.googleapis.com\/book\/returned_count consumer_destinations: -
-- monitored_resource: library.googleapis.com\/branch metrics: -
-- library.googleapis.com\/book\/returned_count -
-- library.googleapis.com\/book\/overdue_count
--
-- /See:/ 'monitoring' smart constructor.
data Monitoring = Monitoring'
    { _mProducerDestinations :: !(Maybe [MonitoringDestination])
    , _mConsumerDestinations :: !(Maybe [MonitoringDestination])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _mProducerDestinations = Nothing
    , _mConsumerDestinations = Nothing
    }

-- | Monitoring configurations for sending metrics to the producer project.
-- There can be multiple producer destinations, each one must have a
-- different monitored resource type. A metric can be used in at most one
-- producer destination.
mProducerDestinations :: Lens' Monitoring [MonitoringDestination]
mProducerDestinations
  = lens _mProducerDestinations
      (\ s a -> s{_mProducerDestinations = a})
      . _Default
      . _Coerce

-- | Monitoring configurations for sending metrics to the consumer project.
-- There can be multiple consumer destinations, each one must have a
-- different monitored resource type. A metric can be used in at most one
-- consumer destination.
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
data LogDescriptor = LogDescriptor'
    { _ldName        :: !(Maybe Text)
    , _ldDisplayName :: !(Maybe Text)
    , _ldLabels      :: !(Maybe [LabelDescriptor])
    , _ldDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Method represents a method of an api.
--
-- /See:/ 'method' smart constructor.
data Method = Method'
    { _metRequestStreaming  :: !(Maybe Bool)
    , _metResponseTypeURL   :: !(Maybe Text)
    , _metName              :: !(Maybe Text)
    , _metResponseStreaming :: !(Maybe Bool)
    , _metRequestTypeURL    :: !(Maybe Text)
    , _metOptions           :: !(Maybe [Option])
    , _metSyntax            :: !(Maybe MethodSyntax)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Represents a diagnostic message (error or warning)
--
-- /See:/ 'diagnostic' smart constructor.
data Diagnostic = Diagnostic'
    { _dLocation :: !(Maybe Text)
    , _dKind     :: !(Maybe DiagnosticKind)
    , _dMessage  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Diagnostic' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dLocation'
--
-- * 'dKind'
--
-- * 'dMessage'
diagnostic
    :: Diagnostic
diagnostic =
    Diagnostic'
    { _dLocation = Nothing
    , _dKind = Nothing
    , _dMessage = Nothing
    }

-- | File name and line number of the error or warning.
dLocation :: Lens' Diagnostic (Maybe Text)
dLocation
  = lens _dLocation (\ s a -> s{_dLocation = a})

-- | The kind of diagnostic information provided.
dKind :: Lens' Diagnostic (Maybe DiagnosticKind)
dKind = lens _dKind (\ s a -> s{_dKind = a})

-- | Message describing the error or warning.
dMessage :: Lens' Diagnostic (Maybe Text)
dMessage = lens _dMessage (\ s a -> s{_dMessage = a})

instance FromJSON Diagnostic where
        parseJSON
          = withObject "Diagnostic"
              (\ o ->
                 Diagnostic' <$>
                   (o .:? "location") <*> (o .:? "kind") <*>
                     (o .:? "message"))

instance ToJSON Diagnostic where
        toJSON Diagnostic'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _dLocation,
                  ("kind" .=) <$> _dKind,
                  ("message" .=) <$> _dMessage])

-- | ### System parameter configuration A system parameter is a special kind
-- of parameter defined by the API system, not by an individual API. It is
-- typically mapped to an HTTP header and\/or a URL query parameter. This
-- configuration specifies which methods change the names of the system
-- parameters.
--
-- /See:/ 'systemParameters' smart constructor.
newtype SystemParameters = SystemParameters'
    { _spRules :: Maybe [SystemParameterRule]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SystemParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spRules'
systemParameters
    :: SystemParameters
systemParameters =
    SystemParameters'
    { _spRules = Nothing
    }

-- | Define system parameters. The parameters defined here will override the
-- default parameters implemented by the system. If this field is missing
-- from the service config, default system parameters will be used. Default
-- system parameters and names is implementation-dependent. Example: define
-- api key and alt name for all methods system_parameters rules: -
-- selector: \"*\" parameters: - name: api_key url_query_parameter: api_key
-- - name: alt http_header: Response-Content-Type Example: define 2 api key
-- names for a specific method. system_parameters rules: - selector:
-- \"\/ListShelves\" parameters: - name: api_key http_header: Api-Key1 -
-- name: api_key http_header: Api-Key2 **NOTE:** All service configuration
-- rules follow \"last one wins\" order.
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

-- | Represents a source file which is used to generate the service
-- configuration defined by \`google.api.Service\`.
--
-- /See:/ 'configSource' smart constructor.
data ConfigSource = ConfigSource'
    { _csFiles :: !(Maybe [ConfigFile])
    , _csId    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConfigSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csFiles'
--
-- * 'csId'
configSource
    :: ConfigSource
configSource =
    ConfigSource'
    { _csFiles = Nothing
    , _csId = Nothing
    }

-- | Set of source configuration files that are used to generate a service
-- configuration (\`google.api.Service\`).
csFiles :: Lens' ConfigSource [ConfigFile]
csFiles
  = lens _csFiles (\ s a -> s{_csFiles = a}) . _Default
      . _Coerce

-- | A unique ID for a specific instance of this message, typically assigned
-- by the client for tracking purpose. If empty, the server may choose to
-- generate one instead.
csId :: Lens' ConfigSource (Maybe Text)
csId = lens _csId (\ s a -> s{_csId = a})

instance FromJSON ConfigSource where
        parseJSON
          = withObject "ConfigSource"
              (\ o ->
                 ConfigSource' <$>
                   (o .:? "files" .!= mempty) <*> (o .:? "id"))

instance ToJSON ConfigSource where
        toJSON ConfigSource'{..}
          = object
              (catMaybes
                 [("files" .=) <$> _csFiles, ("id" .=) <$> _csId])

-- | \`Documentation\` provides the information for describing a service.
-- Example:
--
-- > documentation:
-- >   summary: >
-- >     The Google Calendar API gives access
-- >     to most calendar features.
-- >   pages:
-- >   - name: Overview
-- >     content: (== include google/foo/overview.md ==)
-- >   - name: Tutorial
-- >     content: (== include google/foo/tutorial.md ==)
-- >     subpages;
-- >     - name: Java
-- >       content: (== include google/foo/tutorial_java.md ==)
-- >   rules:
-- >   - selector: google.calendar.Calendar.Get
-- >     description: >
-- >       ...
-- >   - selector: google.calendar.Calendar.Put
-- >     description: >
-- >       ...
--
-- Documentation is provided in markdown syntax. In addition to standard
-- markdown features, definition lists, tables and fenced code blocks are
-- supported. Section headers can be provided and are interpreted relative
-- to the section nesting of the context where a documentation fragment is
-- embedded. Documentation from the IDL is merged with documentation
-- defined via the config at normalization time, where documentation
-- provided by config rules overrides IDL provided. A number of constructs
-- specific to the API platform are supported in documentation text. In
-- order to reference a proto element, the following notation can be used:
--
-- > [fully.qualified.proto.name][]
--
-- To override the display text used for the link, this can be used:
--
-- > [display text][fully.qualified.proto.name]
--
-- Text can be excluded from doc using the following notation:
--
-- > (-- internal comment --)
--
-- Comments can be made conditional using a visibility label. The below
-- text will be only rendered if the \`BETA\` label is available:
--
-- > (--BETA: comment for BETA users --)
--
-- A few directives are available in documentation. Note that directives
-- must appear on a single line to be properly identified. The \`include\`
-- directive includes a markdown file from an external source:
--
-- > (== include path/to/file ==)
--
-- The \`resource_for\` directive marks a message to be the resource of a
-- collection in REST view. If it is not specified, tools attempt to infer
-- the resource from the operations in a collection:
--
-- > (== resource_for v1.shelves.books ==)
--
-- The directive \`suppress_warning\` does not directly affect
-- documentation and is documented together with service config validation.
--
-- /See:/ 'documentation' smart constructor.
data Documentation = Documentation'
    { _dSummary              :: !(Maybe Text)
    , _dDocumentationRootURL :: !(Maybe Text)
    , _dRules                :: !(Maybe [DocumentationRule])
    , _dPages                :: !(Maybe [Page])
    , _dOverview             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'dOverview'
documentation
    :: Documentation
documentation =
    Documentation'
    { _dSummary = Nothing
    , _dDocumentationRootURL = Nothing
    , _dRules = Nothing
    , _dPages = Nothing
    , _dOverview = Nothing
    }

-- | A short summary of what the service does. Can only be provided by plain
-- text.
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

-- | Declares a single overview page. For example:
--
-- > documentation:
-- >   summary: ...
-- >   overview: (== include overview.md ==)
--
-- This is a shortcut for the following declaration (using pages style):
--
-- > documentation:
-- >   summary: ...
-- >   pages:
-- >   - name: Overview
-- >     content: (== include overview.md ==)
--
-- Note: you cannot specify both \`overview\` field and \`pages\` field.
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
                     <*> (o .:? "overview"))

instance ToJSON Documentation where
        toJSON Documentation'{..}
          = object
              (catMaybes
                 [("summary" .=) <$> _dSummary,
                  ("documentationRootUrl" .=) <$>
                    _dDocumentationRootURL,
                  ("rules" .=) <$> _dRules, ("pages" .=) <$> _dPages,
                  ("overview" .=) <$> _dOverview])

-- | Represents the status of one operation step.
--
-- /See:/ 'step' smart constructor.
data Step = Step'
    { _sStatus      :: !(Maybe StepStatus)
    , _sDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Step' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sStatus'
--
-- * 'sDescription'
step
    :: Step
step =
    Step'
    { _sStatus = Nothing
    , _sDescription = Nothing
    }

-- | The status code.
sStatus :: Lens' Step (Maybe StepStatus)
sStatus = lens _sStatus (\ s a -> s{_sStatus = a})

-- | The short description of the step.
sDescription :: Lens' Step (Maybe Text)
sDescription
  = lens _sDescription (\ s a -> s{_sDescription = a})

instance FromJSON Step where
        parseJSON
          = withObject "Step"
              (\ o ->
                 Step' <$> (o .:? "status") <*> (o .:? "description"))

instance ToJSON Step where
        toJSON Step'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _sStatus,
                  ("description" .=) <$> _sDescription])

-- | Configuration of a specific analytics destination.
--
-- /See:/ 'analyticsDestination' smart constructor.
data AnalyticsDestination = AnalyticsDestination'
    { _adMetrics           :: !(Maybe [Text])
    , _adMonitoredResource :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyticsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adMetrics'
--
-- * 'adMonitoredResource'
analyticsDestination
    :: AnalyticsDestination
analyticsDestination =
    AnalyticsDestination'
    { _adMetrics = Nothing
    , _adMonitoredResource = Nothing
    }

-- | Names of the metrics to report to this analytics destination. Each name
-- must be defined in Service.metrics section. Metrics with value type BOOL
-- and STRING must be of GUAGE kind, metrics with value type INT64, DOUBLE
-- and MONEY must be of DELTA kind.
adMetrics :: Lens' AnalyticsDestination [Text]
adMetrics
  = lens _adMetrics (\ s a -> s{_adMetrics = a}) .
      _Default
      . _Coerce

-- | The monitored resource type. The type must be defined in
-- Service.monitored_resources section.
adMonitoredResource :: Lens' AnalyticsDestination (Maybe Text)
adMonitoredResource
  = lens _adMonitoredResource
      (\ s a -> s{_adMonitoredResource = a})

instance FromJSON AnalyticsDestination where
        parseJSON
          = withObject "AnalyticsDestination"
              (\ o ->
                 AnalyticsDestination' <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "monitoredResource"))

instance ToJSON AnalyticsDestination where
        toJSON AnalyticsDestination'{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _adMetrics,
                  ("monitoredResource" .=) <$> _adMonitoredResource])

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

-- | Define a system parameter rule mapping system parameter definitions to
-- methods.
--
-- /See:/ 'systemParameterRule' smart constructor.
data SystemParameterRule = SystemParameterRule'
    { _sprSelector   :: !(Maybe Text)
    , _sprParameters :: !(Maybe [SystemParameter])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SystemParameterRule'
    { _sprSelector = Nothing
    , _sprParameters = Nothing
    }

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
data LabelDescriptor = LabelDescriptor'
    { _lKey         :: !(Maybe Text)
    , _lValueType   :: !(Maybe LabelDescriptorValueType)
    , _lDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _lKey = Nothing
    , _lValueType = Nothing
    , _lDescription = Nothing
    }

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

-- | Configuration controlling usage of a service.
--
-- /See:/ 'usage' smart constructor.
data Usage = Usage'
    { _uRequirements :: !(Maybe [Text])
    , _uRules        :: !(Maybe [UsageRule])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Usage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uRequirements'
--
-- * 'uRules'
usage
    :: Usage
usage =
    Usage'
    { _uRequirements = Nothing
    , _uRules = Nothing
    }

-- | Requirements that must be satisfied before a consumer project can use
-- the service. Each requirement is of the form \/; for example
-- \'serviceusage.googleapis.com\/billing-enabled\'.
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

instance FromJSON Usage where
        parseJSON
          = withObject "Usage"
              (\ o ->
                 Usage' <$>
                   (o .:? "requirements" .!= mempty) <*>
                     (o .:? "rules" .!= mempty))

instance ToJSON Usage where
        toJSON Usage'{..}
          = object
              (catMaybes
                 [("requirements" .=) <$> _uRequirements,
                  ("rules" .=) <$> _uRules])

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

-- | Service configuration for which we want to generate the report. For this
-- version of API, the supported types are
-- google.api.servicemanagement.v1.ConfigRef,
-- google.api.servicemanagement.v1.ConfigSource, and google.api.Service
--
-- /See:/ 'generateConfigReportRequestNewConfig' smart constructor.
newtype GenerateConfigReportRequestNewConfig = GenerateConfigReportRequestNewConfig'
    { _gcrrncAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GenerateConfigReportRequestNewConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrrncAddtional'
generateConfigReportRequestNewConfig
    :: HashMap Text JSONValue -- ^ 'gcrrncAddtional'
    -> GenerateConfigReportRequestNewConfig
generateConfigReportRequestNewConfig pGcrrncAddtional_ =
    GenerateConfigReportRequestNewConfig'
    { _gcrrncAddtional = _Coerce # pGcrrncAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
gcrrncAddtional :: Lens' GenerateConfigReportRequestNewConfig (HashMap Text JSONValue)
gcrrncAddtional
  = lens _gcrrncAddtional
      (\ s a -> s{_gcrrncAddtional = a})
      . _Coerce

instance FromJSON
         GenerateConfigReportRequestNewConfig where
        parseJSON
          = withObject "GenerateConfigReportRequestNewConfig"
              (\ o ->
                 GenerateConfigReportRequestNewConfig' <$>
                   (parseJSONObject o))

instance ToJSON GenerateConfigReportRequestNewConfig
         where
        toJSON = toJSON . _gcrrncAddtional

-- | Defines the HTTP configuration for a service. It contains a list of
-- HttpRule, each specifying the mapping of an RPC method to one or more
-- HTTP REST API methods.
--
-- /See:/ 'hTTP' smart constructor.
newtype HTTP = HTTP'
    { _hRules :: Maybe [HTTPRule]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTP' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hRules'
hTTP
    :: HTTP
hTTP =
    HTTP'
    { _hRules = Nothing
    }

-- | A list of HTTP configuration rules that apply to individual API methods.
-- **NOTE:** All service configuration rules follow \"last one wins\"
-- order.
hRules :: Lens' HTTP [HTTPRule]
hRules
  = lens _hRules (\ s a -> s{_hRules = a}) . _Default .
      _Coerce

instance FromJSON HTTP where
        parseJSON
          = withObject "HTTP"
              (\ o -> HTTP' <$> (o .:? "rules" .!= mempty))

instance ToJSON HTTP where
        toJSON HTTP'{..}
          = object (catMaybes [("rules" .=) <$> _hRules])

-- | Request message for DisableService method.
--
-- /See:/ 'disableServiceRequest' smart constructor.
newtype DisableServiceRequest = DisableServiceRequest'
    { _dsrConsumerId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisableServiceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrConsumerId'
disableServiceRequest
    :: DisableServiceRequest
disableServiceRequest =
    DisableServiceRequest'
    { _dsrConsumerId = Nothing
    }

-- | The identity of consumer resource which service disablement will be
-- applied to. The Google Service Management implementation accepts the
-- following forms: \"project:\", \"project_number:\". Note: this is made
-- compatible with google.api.servicecontrol.v1.Operation.consumer_id.
dsrConsumerId :: Lens' DisableServiceRequest (Maybe Text)
dsrConsumerId
  = lens _dsrConsumerId
      (\ s a -> s{_dsrConsumerId = a})

instance FromJSON DisableServiceRequest where
        parseJSON
          = withObject "DisableServiceRequest"
              (\ o ->
                 DisableServiceRequest' <$> (o .:? "consumerId"))

instance ToJSON DisableServiceRequest where
        toJSON DisableServiceRequest'{..}
          = object
              (catMaybes [("consumerId" .=) <$> _dsrConsumerId])

-- | Defines an Identity and Access Management (IAM) policy. It is used to
-- specify access control policies for Cloud Platform resources. A
-- \`Policy\` consists of a list of \`bindings\`. A \`Binding\` binds a
-- list of \`members\` to a \`role\`, where the members can be user
-- accounts, Google groups, Google domains, and service accounts. A
-- \`role\` is a named list of permissions defined by IAM. **Example** {
-- \"bindings\": [ { \"role\": \"roles\/owner\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-other-app\'appspot.gserviceaccount.com\", ] }, {
-- \"role\": \"roles\/viewer\", \"members\": [\"user:sean\'example.com\"] }
-- ] } For a description of IAM and its features, see the [IAM developer\'s
-- guide](https:\/\/cloud.google.com\/iam).
--
-- /See:/ 'policy' smart constructor.
data Policy = Policy'
    { _pAuditConfigs :: !(Maybe [AuditConfig])
    , _pEtag         :: !(Maybe Base64)
    , _pRules        :: !(Maybe [Rule])
    , _pVersion      :: !(Maybe (Textual Int32))
    , _pBindings     :: !(Maybe [Binding])
    , _pIAMOwned     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAuditConfigs'
--
-- * 'pEtag'
--
-- * 'pRules'
--
-- * 'pVersion'
--
-- * 'pBindings'
--
-- * 'pIAMOwned'
policy
    :: Policy
policy =
    Policy'
    { _pAuditConfigs = Nothing
    , _pEtag = Nothing
    , _pRules = Nothing
    , _pVersion = Nothing
    , _pBindings = Nothing
    , _pIAMOwned = Nothing
    }

-- | Specifies audit logging configs for \"data access\". \"data access\":
-- generally refers to data reads\/writes and admin reads. \"admin
-- activity\": generally refers to admin writes. Note: \`AuditConfig\`
-- doesn\'t apply to \"admin activity\", which always enables audit
-- logging.
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
-- version of the policy. If no \`etag\` is provided in the call to
-- \`setIamPolicy\`, then the existing policy is overwritten blindly.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Base64

-- | If more than one rule is specified, the rules are applied in the
-- following manner: - All matching LOG rules are always applied. - If any
-- DENY\/DENY_WITH_LOG rule matches, permission is denied. Logging will be
-- applied if one or more matching rule requires logging. - Otherwise, if
-- any ALLOW\/ALLOW_WITH_LOG rule matches, permission is granted. Logging
-- will be applied if one or more matching rule requires logging. -
-- Otherwise, if no rule applies, permission is denied.
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

pIAMOwned :: Lens' Policy (Maybe Bool)
pIAMOwned
  = lens _pIAMOwned (\ s a -> s{_pIAMOwned = a})

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "auditConfigs" .!= mempty) <*> (o .:? "etag")
                     <*> (o .:? "rules" .!= mempty)
                     <*> (o .:? "version")
                     <*> (o .:? "bindings" .!= mempty)
                     <*> (o .:? "iamOwned"))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("auditConfigs" .=) <$> _pAuditConfigs,
                  ("etag" .=) <$> _pEtag, ("rules" .=) <$> _pRules,
                  ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings,
                  ("iamOwned" .=) <$> _pIAMOwned])

-- | A protocol buffer message type.
--
-- /See:/ 'type'' smart constructor.
data Type = Type'
    { _tSourceContext :: !(Maybe SourceContext)
    , _tOneofs        :: !(Maybe [Text])
    , _tName          :: !(Maybe Text)
    , _tOptions       :: !(Maybe [Option])
    , _tFields        :: !(Maybe [Field])
    , _tSyntax        :: !(Maybe TypeSyntax)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Api is a light-weight descriptor for a protocol buffer service.
--
-- /See:/ 'api' smart constructor.
data API = API'
    { _aSourceContext :: !(Maybe SourceContext)
    , _aMixins        :: !(Maybe [Mixin])
    , _aMethods       :: !(Maybe [Method])
    , _aName          :: !(Maybe Text)
    , _aVersion       :: !(Maybe Text)
    , _aOptions       :: !(Maybe [Option])
    , _aSyntax        :: !(Maybe APISyntax)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Included APIs. See Mixin.
aMixins :: Lens' API [Mixin]
aMixins
  = lens _aMixins (\ s a -> s{_aMixins = a}) . _Default
      . _Coerce

-- | The methods of this api, in unspecified order.
aMethods :: Lens' API [Method]
aMethods
  = lens _aMethods (\ s a -> s{_aMethods = a}) .
      _Default
      . _Coerce

-- | The fully qualified name of this api, including package name followed by
-- the api\'s simple name.
aName :: Lens' API (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | A version string for this api. If specified, must have the form
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
-- name of the API, which must end in \`v\`, as in \`google.feature.v1\`.
-- For major versions 0 and 1, the suffix can be omitted. Zero major
-- versions must only be used for experimental, none-GA apis.
aVersion :: Lens' API (Maybe Text)
aVersion = lens _aVersion (\ s a -> s{_aVersion = a})

-- | Any metadata attached to the API.
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
data MonitoringDestination = MonitoringDestination'
    { _mdMetrics           :: !(Maybe [Text])
    , _mdMonitoredResource :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    MonitoringDestination'
    { _mdMetrics = Nothing
    , _mdMonitoredResource = Nothing
    }

-- | Names of the metrics to report to this monitoring destination. Each name
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

-- | The full representation of a Service that is managed by Google Service
-- Management.
--
-- /See:/ 'managedService' smart constructor.
data ManagedService = ManagedService'
    { _msServiceName       :: !(Maybe Text)
    , _msProducerProjectId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagedService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msServiceName'
--
-- * 'msProducerProjectId'
managedService
    :: ManagedService
managedService =
    ManagedService'
    { _msServiceName = Nothing
    , _msProducerProjectId = Nothing
    }

-- | The name of the service. See the
-- [overview](\/service-management\/overview) for naming requirements.
msServiceName :: Lens' ManagedService (Maybe Text)
msServiceName
  = lens _msServiceName
      (\ s a -> s{_msServiceName = a})

-- | ID of the project that produces and owns this service.
msProducerProjectId :: Lens' ManagedService (Maybe Text)
msProducerProjectId
  = lens _msProducerProjectId
      (\ s a -> s{_msProducerProjectId = a})

instance FromJSON ManagedService where
        parseJSON
          = withObject "ManagedService"
              (\ o ->
                 ManagedService' <$>
                   (o .:? "serviceName") <*>
                     (o .:? "producerProjectId"))

instance ToJSON ManagedService where
        toJSON ManagedService'{..}
          = object
              (catMaybes
                 [("serviceName" .=) <$> _msServiceName,
                  ("producerProjectId" .=) <$> _msProducerProjectId])

-- | The metadata associated with a long running operation resource.
--
-- /See:/ 'operationMetadata' smart constructor.
data OperationMetadata = OperationMetadata'
    { _omStartTime          :: !(Maybe DateTime')
    , _omSteps              :: !(Maybe [Step])
    , _omProgressPercentage :: !(Maybe (Textual Int32))
    , _omResourceNames      :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omStartTime'
--
-- * 'omSteps'
--
-- * 'omProgressPercentage'
--
-- * 'omResourceNames'
operationMetadata
    :: OperationMetadata
operationMetadata =
    OperationMetadata'
    { _omStartTime = Nothing
    , _omSteps = Nothing
    , _omProgressPercentage = Nothing
    , _omResourceNames = Nothing
    }

-- | The start time of the operation.
omStartTime :: Lens' OperationMetadata (Maybe UTCTime)
omStartTime
  = lens _omStartTime (\ s a -> s{_omStartTime = a}) .
      mapping _DateTime

-- | Detailed status information for each step. The order is undetermined.
omSteps :: Lens' OperationMetadata [Step]
omSteps
  = lens _omSteps (\ s a -> s{_omSteps = a}) . _Default
      . _Coerce

-- | Percentage of completion of this operation, ranging from 0 to 100.
omProgressPercentage :: Lens' OperationMetadata (Maybe Int32)
omProgressPercentage
  = lens _omProgressPercentage
      (\ s a -> s{_omProgressPercentage = a})
      . mapping _Coerce

-- | The full name of the resources that this operation is directly
-- associated with.
omResourceNames :: Lens' OperationMetadata [Text]
omResourceNames
  = lens _omResourceNames
      (\ s a -> s{_omResourceNames = a})
      . _Default
      . _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o ->
                 OperationMetadata' <$>
                   (o .:? "startTime") <*> (o .:? "steps" .!= mempty)
                     <*> (o .:? "progressPercentage")
                     <*> (o .:? "resourceNames" .!= mempty))

instance ToJSON OperationMetadata where
        toJSON OperationMetadata'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _omStartTime,
                  ("steps" .=) <$> _omSteps,
                  ("progressPercentage" .=) <$> _omProgressPercentage,
                  ("resourceNames" .=) <$> _omResourceNames])

-- | \`Endpoint\` describes a network endpoint that serves a set of APIs. A
-- service may expose any number of endpoints, and all endpoints share the
-- same service configuration, such as quota configuration and monitoring
-- configuration. Example service configuration: name:
-- library-example.googleapis.com endpoints: # Below entry makes
-- \'google.example.library.v1.Library\' # API be served from endpoint
-- address library-example.googleapis.com. # It also allows HTTP OPTIONS
-- calls to be passed to the backend, for # it to decide whether the
-- subsequent cross-origin request is # allowed to proceed. - name:
-- library-example.googleapis.com apis: google.example.library.v1.Library
-- allow_cors: true # Below entry makes
-- \'google.example.library.v1.Library\' # API be served from endpoint
-- address # google.example.library-example.v1.LibraryManager. - name:
-- library-manager.googleapis.com apis:
-- google.example.library.v1.LibraryManager # BNS address for a borg job.
-- Can specify a task by appending # \"\/taskId\" (e.g. \"\/0\") to the job
-- spec. Example OpenAPI extension for endpoint with allow_cors set to
-- true: { \"swagger\": \"2.0\", \"info\": { \"description\": \"A
-- simple...\" }, \"host\": \"MY_PROJECT_ID.appspot.com\",
-- \"x-google-endpoints\": [{ \"name\": \"MY_PROJECT_ID.appspot.com\",
-- \"allow_cors\": \"true\" }] }
--
-- /See:/ 'endpoint' smart constructor.
data Endpoint = Endpoint'
    { _eAliases   :: !(Maybe [Text])
    , _eAPIs      :: !(Maybe [Text])
    , _eAllowCORS :: !(Maybe Bool)
    , _eName      :: !(Maybe Text)
    , _eFeatures  :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Endpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eAliases'
--
-- * 'eAPIs'
--
-- * 'eAllowCORS'
--
-- * 'eName'
--
-- * 'eFeatures'
endpoint
    :: Endpoint
endpoint =
    Endpoint'
    { _eAliases = Nothing
    , _eAPIs = Nothing
    , _eAllowCORS = Nothing
    , _eName = Nothing
    , _eFeatures = Nothing
    }

-- | DEPRECATED: This field is no longer supported. Instead of using aliases,
-- please specify multiple google.api.Endpoint for each of the intented
-- alias. Additional names that this endpoint will be hosted on.
eAliases :: Lens' Endpoint [Text]
eAliases
  = lens _eAliases (\ s a -> s{_eAliases = a}) .
      _Default
      . _Coerce

-- | The list of APIs served by this endpoint.
eAPIs :: Lens' Endpoint [Text]
eAPIs
  = lens _eAPIs (\ s a -> s{_eAPIs = a}) . _Default .
      _Coerce

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

-- | The list of features enabled on this endpoint.
eFeatures :: Lens' Endpoint [Text]
eFeatures
  = lens _eFeatures (\ s a -> s{_eFeatures = a}) .
      _Default
      . _Coerce

instance FromJSON Endpoint where
        parseJSON
          = withObject "Endpoint"
              (\ o ->
                 Endpoint' <$>
                   (o .:? "aliases" .!= mempty) <*>
                     (o .:? "apis" .!= mempty)
                     <*> (o .:? "allowCors")
                     <*> (o .:? "name")
                     <*> (o .:? "features" .!= mempty))

instance ToJSON Endpoint where
        toJSON Endpoint'{..}
          = object
              (catMaybes
                 [("aliases" .=) <$> _eAliases,
                  ("apis" .=) <$> _eAPIs,
                  ("allowCors" .=) <$> _eAllowCORS,
                  ("name" .=) <$> _eName,
                  ("features" .=) <$> _eFeatures])

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
newtype OAuthRequirements = OAuthRequirements'
    { _oarCanonicalScopes :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OAuthRequirements' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oarCanonicalScopes'
oAuthRequirements
    :: OAuthRequirements
oAuthRequirements =
    OAuthRequirements'
    { _oarCanonicalScopes = Nothing
    }

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
data CustomError = CustomError'
    { _ceRules :: !(Maybe [CustomErrorRule])
    , _ceTypes :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceRules'
--
-- * 'ceTypes'
customError
    :: CustomError
customError =
    CustomError'
    { _ceRules = Nothing
    , _ceTypes = Nothing
    }

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

-- | A protocol buffer option, which can be attached to a message, field,
-- enumeration, etc.
--
-- /See:/ 'option' smart constructor.
data Option = Option'
    { _optValue :: !(Maybe OptionValue)
    , _optName  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Option' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'optValue'
--
-- * 'optName'
option
    :: Option
option =
    Option'
    { _optValue = Nothing
    , _optName = Nothing
    }

-- | The option\'s value. For example, \`\"com.google.protobuf\"\`.
optValue :: Lens' Option (Maybe OptionValue)
optValue = lens _optValue (\ s a -> s{_optValue = a})

-- | The option\'s name. For example, \`\"java_package\"\`.
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

-- | A rollout resource that defines how service configuration versions are
-- pushed to control plane systems. Typically, you create a new version of
-- the service config, and then create a Rollout to push the service
-- config.
--
-- /See:/ 'rollout' smart constructor.
data Rollout = Rollout'
    { _rStatus                 :: !(Maybe RolloutStatus)
    , _rDeleteServiceStrategy  :: !(Maybe DeleteServiceStrategy)
    , _rTrafficPercentStrategy :: !(Maybe TrafficPercentStrategy)
    , _rCreatedBy              :: !(Maybe Text)
    , _rServiceName            :: !(Maybe Text)
    , _rRolloutId              :: !(Maybe Text)
    , _rCreateTime             :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Rollout' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rStatus'
--
-- * 'rDeleteServiceStrategy'
--
-- * 'rTrafficPercentStrategy'
--
-- * 'rCreatedBy'
--
-- * 'rServiceName'
--
-- * 'rRolloutId'
--
-- * 'rCreateTime'
rollout
    :: Rollout
rollout =
    Rollout'
    { _rStatus = Nothing
    , _rDeleteServiceStrategy = Nothing
    , _rTrafficPercentStrategy = Nothing
    , _rCreatedBy = Nothing
    , _rServiceName = Nothing
    , _rRolloutId = Nothing
    , _rCreateTime = Nothing
    }

-- | The status of this rollout. Readonly. In case of a failed rollout, the
-- system will automatically rollback to the current Rollout version.
-- Readonly.
rStatus :: Lens' Rollout (Maybe RolloutStatus)
rStatus = lens _rStatus (\ s a -> s{_rStatus = a})

-- | The strategy associated with a rollout to delete a \`ManagedService\`.
-- Readonly.
rDeleteServiceStrategy :: Lens' Rollout (Maybe DeleteServiceStrategy)
rDeleteServiceStrategy
  = lens _rDeleteServiceStrategy
      (\ s a -> s{_rDeleteServiceStrategy = a})

-- | Google Service Control selects service configurations based on traffic
-- percentage.
rTrafficPercentStrategy :: Lens' Rollout (Maybe TrafficPercentStrategy)
rTrafficPercentStrategy
  = lens _rTrafficPercentStrategy
      (\ s a -> s{_rTrafficPercentStrategy = a})

-- | The user who created the Rollout. Readonly.
rCreatedBy :: Lens' Rollout (Maybe Text)
rCreatedBy
  = lens _rCreatedBy (\ s a -> s{_rCreatedBy = a})

-- | The name of the service associated with this Rollout.
rServiceName :: Lens' Rollout (Maybe Text)
rServiceName
  = lens _rServiceName (\ s a -> s{_rServiceName = a})

-- | Optional unique identifier of this Rollout. Only lower case letters,
-- digits and \'-\' are allowed. If not specified by client, the server
-- will generate one. The generated id will have the form of , where
-- \"date\" is the create date in ISO 8601 format. \"revision number\" is a
-- monotonically increasing positive number that is reset every day for
-- each service. An example of the generated rollout_id is \'2016-02-16r1\'
rRolloutId :: Lens' Rollout (Maybe Text)
rRolloutId
  = lens _rRolloutId (\ s a -> s{_rRolloutId = a})

-- | Creation time of the rollout. Readonly.
rCreateTime :: Lens' Rollout (Maybe UTCTime)
rCreateTime
  = lens _rCreateTime (\ s a -> s{_rCreateTime = a}) .
      mapping _DateTime

instance FromJSON Rollout where
        parseJSON
          = withObject "Rollout"
              (\ o ->
                 Rollout' <$>
                   (o .:? "status") <*> (o .:? "deleteServiceStrategy")
                     <*> (o .:? "trafficPercentStrategy")
                     <*> (o .:? "createdBy")
                     <*> (o .:? "serviceName")
                     <*> (o .:? "rolloutId")
                     <*> (o .:? "createTime"))

instance ToJSON Rollout where
        toJSON Rollout'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _rStatus,
                  ("deleteServiceStrategy" .=) <$>
                    _rDeleteServiceStrategy,
                  ("trafficPercentStrategy" .=) <$>
                    _rTrafficPercentStrategy,
                  ("createdBy" .=) <$> _rCreatedBy,
                  ("serviceName" .=) <$> _rServiceName,
                  ("rolloutId" .=) <$> _rRolloutId,
                  ("createTime" .=) <$> _rCreateTime])

-- | A condition to be met.
--
-- /See:/ 'condition' smart constructor.
data Condition = Condition'
    { _cOp     :: !(Maybe ConditionOp)
    , _cIAM    :: !(Maybe ConditionIAM)
    , _cValues :: !(Maybe [Text])
    , _cValue  :: !(Maybe Text)
    , _cSys    :: !(Maybe ConditionSys)
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
cOp :: Lens' Condition (Maybe ConditionOp)
cOp = lens _cOp (\ s a -> s{_cOp = a})

-- | Trusted attributes supplied by the IAM system.
cIAM :: Lens' Condition (Maybe ConditionIAM)
cIAM = lens _cIAM (\ s a -> s{_cIAM = a})

-- | The objects of the condition. This is mutually exclusive with \'value\'.
cValues :: Lens' Condition [Text]
cValues
  = lens _cValues (\ s a -> s{_cValues = a}) . _Default
      . _Coerce

-- | DEPRECATED. Use \'values\' instead.
cValue :: Lens' Condition (Maybe Text)
cValue = lens _cValue (\ s a -> s{_cValue = a})

-- | Trusted attributes supplied by any service that owns resources and uses
-- the IAM system for access control.
cSys :: Lens' Condition (Maybe ConditionSys)
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

-- | Enum type definition.
--
-- /See:/ 'enum' smart constructor.
data Enum' = Enum''
    { _enuSourceContext :: !(Maybe SourceContext)
    , _enuEnumvalue     :: !(Maybe [EnumValue])
    , _enuName          :: !(Maybe Text)
    , _enuOptions       :: !(Maybe [Option])
    , _enuSyntax        :: !(Maybe EnumSyntax)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data Logging = Logging'
    { _lProducerDestinations :: !(Maybe [LoggingDestination])
    , _lConsumerDestinations :: !(Maybe [LoggingDestination])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Logging'
    { _lProducerDestinations = Nothing
    , _lConsumerDestinations = Nothing
    }

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

-- | Represents a service configuration with its name and id.
--
-- /See:/ 'configRef' smart constructor.
newtype ConfigRef = ConfigRef'
    { _crName :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConfigRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crName'
configRef
    :: ConfigRef
configRef =
    ConfigRef'
    { _crName = Nothing
    }

-- | Resource name of a service config. It must have the following format:
-- \"services\/{service name}\/configs\/{config id}\".
crName :: Lens' ConfigRef (Maybe Text)
crName = lens _crName (\ s a -> s{_crName = a})

instance FromJSON ConfigRef where
        parseJSON
          = withObject "ConfigRef"
              (\ o -> ConfigRef' <$> (o .:? "name"))

instance ToJSON ConfigRef where
        toJSON ConfigRef'{..}
          = object (catMaybes [("name" .=) <$> _crName])

-- | Request message for GenerateConfigReport method.
--
-- /See:/ 'generateConfigReportRequest' smart constructor.
data GenerateConfigReportRequest = GenerateConfigReportRequest'
    { _gcrrOldConfig :: !(Maybe GenerateConfigReportRequestOldConfig)
    , _gcrrNewConfig :: !(Maybe GenerateConfigReportRequestNewConfig)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GenerateConfigReportRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrrOldConfig'
--
-- * 'gcrrNewConfig'
generateConfigReportRequest
    :: GenerateConfigReportRequest
generateConfigReportRequest =
    GenerateConfigReportRequest'
    { _gcrrOldConfig = Nothing
    , _gcrrNewConfig = Nothing
    }

-- | Service configuration against which the comparison will be done. For
-- this version of API, the supported types are
-- google.api.servicemanagement.v1.ConfigRef,
-- google.api.servicemanagement.v1.ConfigSource, and google.api.Service
gcrrOldConfig :: Lens' GenerateConfigReportRequest (Maybe GenerateConfigReportRequestOldConfig)
gcrrOldConfig
  = lens _gcrrOldConfig
      (\ s a -> s{_gcrrOldConfig = a})

-- | Service configuration for which we want to generate the report. For this
-- version of API, the supported types are
-- google.api.servicemanagement.v1.ConfigRef,
-- google.api.servicemanagement.v1.ConfigSource, and google.api.Service
gcrrNewConfig :: Lens' GenerateConfigReportRequest (Maybe GenerateConfigReportRequestNewConfig)
gcrrNewConfig
  = lens _gcrrNewConfig
      (\ s a -> s{_gcrrNewConfig = a})

instance FromJSON GenerateConfigReportRequest where
        parseJSON
          = withObject "GenerateConfigReportRequest"
              (\ o ->
                 GenerateConfigReportRequest' <$>
                   (o .:? "oldConfig") <*> (o .:? "newConfig"))

instance ToJSON GenerateConfigReportRequest where
        toJSON GenerateConfigReportRequest'{..}
          = object
              (catMaybes
                 [("oldConfig" .=) <$> _gcrrOldConfig,
                  ("newConfig" .=) <$> _gcrrNewConfig])

-- | \`HttpRule\` defines the mapping of an RPC method to one or more HTTP
-- REST APIs. The mapping determines what portions of the request message
-- are populated from the path, query parameters, or body of the HTTP
-- request. The mapping is typically specified as an \`google.api.http\`
-- annotation, see \"google\/api\/annotations.proto\" for details. The
-- mapping consists of a field specifying the path template and method
-- kind. The path template can refer to fields in the request message, as
-- in the example below which describes a REST GET operation on a resource
-- collection of messages: \`\`\`proto service Messaging { rpc
-- GetMessage(GetMessageRequest) returns (Message) { option
-- (google.api.http).get =
-- \"\/v1\/messages\/{message_id}\/{sub.subfield}\"; } } message
-- GetMessageRequest { message SubMessage { string subfield = 1; } string
-- message_id = 1; \/\/ mapped to the URL SubMessage sub = 2; \/\/
-- \`sub.subfield\` is url-mapped } message Message { string text = 1; \/\/
-- content of the resource } \`\`\` This definition enables an automatic,
-- bidrectional mapping of HTTP JSON to RPC. Example: HTTP | RPC
-- -----|----- \`GET \/v1\/messages\/123456\/foo\` |
-- \`GetMessage(message_id: \"123456\" sub: SubMessage(subfield:
-- \"foo\"))\` In general, not only fields but also field paths can be
-- referenced from a path pattern. Fields mapped to the path pattern cannot
-- be repeated and must have a primitive (non-message) type. Any fields in
-- the request message which are not bound by the path pattern
-- automatically become (optional) HTTP query parameters. Assume the
-- following definition of the request message: \`\`\`proto message
-- GetMessageRequest { message SubMessage { string subfield = 1; } string
-- message_id = 1; \/\/ mapped to the URL int64 revision = 2; \/\/ becomes
-- a parameter SubMessage sub = 3; \/\/ \`sub.subfield\` becomes a
-- parameter } \`\`\` This enables a HTTP JSON to RPC mapping as below:
-- HTTP | RPC -----|----- \`GET
-- \/v1\/messages\/123456?revision=2&sub.subfield=foo\` |
-- \`GetMessage(message_id: \"123456\" revision: 2 sub:
-- SubMessage(subfield: \"foo\"))\` Note that fields which are mapped to
-- HTTP parameters must have a primitive type or a repeated primitive type.
-- Message types are not allowed. In the case of a repeated type, the
-- parameter can be repeated in the URL, as in \`...?param=A&param=B\`. For
-- HTTP method kinds which allow a request body, the \`body\` field
-- specifies the mapping. Consider a REST update method on the message
-- resource collection: \`\`\`proto service Messaging { rpc
-- UpdateMessage(UpdateMessageRequest) returns (Message) { option
-- (google.api.http) = { put: \"\/v1\/messages\/{message_id}\" body:
-- \"message\" }; } } message UpdateMessageRequest { string message_id = 1;
-- \/\/ mapped to the URL Message message = 2; \/\/ mapped to the body }
-- \`\`\` The following HTTP JSON to RPC mapping is enabled, where the
-- representation of the JSON in the request body is determined by protos
-- JSON encoding: HTTP | RPC -----|----- \`PUT \/v1\/messages\/123456 {
-- \"text\": \"Hi!\" }\` | \`UpdateMessage(message_id: \"123456\" message {
-- text: \"Hi!\" })\` The special name \`*\` can be used in the body
-- mapping to define that every field not bound by the path template should
-- be mapped to the request body. This enables the following alternative
-- definition of the update method: \`\`\`proto service Messaging { rpc
-- UpdateMessage(Message) returns (Message) { option (google.api.http) = {
-- put: \"\/v1\/messages\/{message_id}\" body: \"*\" }; } } message Message
-- { string message_id = 1; string text = 2; } \`\`\` The following HTTP
-- JSON to RPC mapping is enabled: HTTP | RPC -----|----- \`PUT
-- \/v1\/messages\/123456 { \"text\": \"Hi!\" }\` |
-- \`UpdateMessage(message_id: \"123456\" text: \"Hi!\")\` Note that when
-- using \`*\` in the body mapping, it is not possible to have HTTP
-- parameters, as all fields not bound by the path end in the body. This
-- makes this option more rarely used in practice of defining REST APIs.
-- The common usage of \`*\` is in custom methods which don\'t use the URL
-- at all for transferring data. It is possible to define multiple HTTP
-- methods for one RPC by using the \`additional_bindings\` option.
-- Example: \`\`\`proto service Messaging { rpc
-- GetMessage(GetMessageRequest) returns (Message) { option
-- (google.api.http) = { get: \"\/v1\/messages\/{message_id}\"
-- additional_bindings { get:
-- \"\/v1\/users\/{user_id}\/messages\/{message_id}\" } }; } } message
-- GetMessageRequest { string message_id = 1; string user_id = 2; } \`\`\`
-- This enables the following two alternative HTTP JSON to RPC mappings:
-- HTTP | RPC -----|----- \`GET \/v1\/messages\/123456\` |
-- \`GetMessage(message_id: \"123456\")\` \`GET
-- \/v1\/users\/me\/messages\/123456\` | \`GetMessage(user_id: \"me\"
-- message_id: \"123456\")\` # Rules for HTTP mapping The rules for mapping
-- HTTP path, query parameters, and body fields to the request message are
-- as follows: 1. The \`body\` field specifies either \`*\` or a field
-- path, or is omitted. If omitted, it assumes there is no HTTP body. 2.
-- Leaf fields (recursive expansion of nested messages in the request) can
-- be classified into three types: (a) Matched in the URL template. (b)
-- Covered by body (if body is \`*\`, everything except (a) fields; else
-- everything under the body field) (c) All other fields. 3. URL query
-- parameters found in the HTTP request are mapped to (c) fields. 4. Any
-- body sent with an HTTP request can contain only (b) fields. The syntax
-- of the path template is as follows: Template = \"\/\" Segments [ Verb ]
-- ; Segments = Segment { \"\/\" Segment } ; Segment = \"*\" | \"**\" |
-- LITERAL | Variable ; Variable = \"{\" FieldPath [ \"=\" Segments ] \"}\"
-- ; FieldPath = IDENT { \".\" IDENT } ; Verb = \":\" LITERAL ; The syntax
-- \`*\` matches a single path segment. It follows the semantics of [RFC
-- 6570](https:\/\/tools.ietf.org\/html\/rfc6570) Section 3.2.2 Simple
-- String Expansion. The syntax \`**\` matches zero or more path segments.
-- It follows the semantics of [RFC
-- 6570](https:\/\/tools.ietf.org\/html\/rfc6570) Section 3.2.3 Reserved
-- Expansion. The syntax \`LITERAL\` matches literal text in the URL path.
-- The syntax \`Variable\` matches the entire path as specified by its
-- template; this nested template must not contain further variables. If a
-- variable matches a single path segment, its template may be omitted,
-- e.g. \`{var}\` is equivalent to \`{var=*}\`. NOTE: the field paths in
-- variables and in the \`body\` must not refer to repeated fields or map
-- fields. Use CustomHttpPattern to specify any HTTP method that is not
-- included in the \`pattern\` field, such as HEAD, or \"*\" to leave the
-- HTTP method unspecified for a given URL path rule. The wild-card rule is
-- useful for services that provide content to Web (HTML) clients.
--
-- /See:/ 'hTTPRule' smart constructor.
data HTTPRule = HTTPRule'
    { _httprMediaUpload        :: !(Maybe MediaUpload')
    , _httprSelector           :: !(Maybe Text)
    , _httprPost               :: !(Maybe Text)
    , _httprMediaDownload      :: !(Maybe MediaDownload')
    , _httprBody               :: !(Maybe Text)
    , _httprCustom             :: !(Maybe CustomHTTPPattern)
    , _httprResponseBody       :: !(Maybe Text)
    , _httprPatch              :: !(Maybe Text)
    , _httprGet                :: !(Maybe Text)
    , _httprAdditionalBindings :: !(Maybe [HTTPRule])
    , _httprDelete             :: !(Maybe Text)
    , _httprPut                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httprMediaUpload'
--
-- * 'httprSelector'
--
-- * 'httprPost'
--
-- * 'httprMediaDownload'
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
    { _httprMediaUpload = Nothing
    , _httprSelector = Nothing
    , _httprPost = Nothing
    , _httprMediaDownload = Nothing
    , _httprBody = Nothing
    , _httprCustom = Nothing
    , _httprResponseBody = Nothing
    , _httprPatch = Nothing
    , _httprGet = Nothing
    , _httprAdditionalBindings = Nothing
    , _httprDelete = Nothing
    , _httprPut = Nothing
    }

-- | Do not use this. For media support, add instead
-- [][google.bytestream.RestByteStream] as an API to your configuration.
httprMediaUpload :: Lens' HTTPRule (Maybe MediaUpload')
httprMediaUpload
  = lens _httprMediaUpload
      (\ s a -> s{_httprMediaUpload = a})

-- | Selects methods to which this rule applies. Refer to selector for syntax
-- details.
httprSelector :: Lens' HTTPRule (Maybe Text)
httprSelector
  = lens _httprSelector
      (\ s a -> s{_httprSelector = a})

-- | Used for creating a resource.
httprPost :: Lens' HTTPRule (Maybe Text)
httprPost
  = lens _httprPost (\ s a -> s{_httprPost = a})

-- | Do not use this. For media support, add instead
-- [][google.bytestream.RestByteStream] as an API to your configuration.
httprMediaDownload :: Lens' HTTPRule (Maybe MediaDownload')
httprMediaDownload
  = lens _httprMediaDownload
      (\ s a -> s{_httprMediaDownload = a})

-- | The name of the request field whose value is mapped to the HTTP body, or
-- \`*\` for mapping all fields not captured by the path pattern to the
-- HTTP body. NOTE: the referred field must not be a repeated field and
-- must be present at the top-level of response message type.
httprBody :: Lens' HTTPRule (Maybe Text)
httprBody
  = lens _httprBody (\ s a -> s{_httprBody = a})

-- | Custom pattern is used for defining custom verbs.
httprCustom :: Lens' HTTPRule (Maybe CustomHTTPPattern)
httprCustom
  = lens _httprCustom (\ s a -> s{_httprCustom = a})

-- | The name of the response field whose value is mapped to the HTTP body of
-- response. Other response fields are ignored. This field is optional.
-- When not set, the response message will be used as HTTP body of
-- response. NOTE: the referred field must be not a repeated field and must
-- be present at the top-level of response message type.
httprResponseBody :: Lens' HTTPRule (Maybe Text)
httprResponseBody
  = lens _httprResponseBody
      (\ s a -> s{_httprResponseBody = a})

-- | Used for updating a resource.
httprPatch :: Lens' HTTPRule (Maybe Text)
httprPatch
  = lens _httprPatch (\ s a -> s{_httprPatch = a})

-- | Used for listing and getting information about resources.
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

-- | Used for deleting a resource.
httprDelete :: Lens' HTTPRule (Maybe Text)
httprDelete
  = lens _httprDelete (\ s a -> s{_httprDelete = a})

-- | Used for updating a resource.
httprPut :: Lens' HTTPRule (Maybe Text)
httprPut = lens _httprPut (\ s a -> s{_httprPut = a})

instance FromJSON HTTPRule where
        parseJSON
          = withObject "HTTPRule"
              (\ o ->
                 HTTPRule' <$>
                   (o .:? "mediaUpload") <*> (o .:? "selector") <*>
                     (o .:? "post")
                     <*> (o .:? "mediaDownload")
                     <*> (o .:? "body")
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
                 [("mediaUpload" .=) <$> _httprMediaUpload,
                  ("selector" .=) <$> _httprSelector,
                  ("post" .=) <$> _httprPost,
                  ("mediaDownload" .=) <$> _httprMediaDownload,
                  ("body" .=) <$> _httprBody,
                  ("custom" .=) <$> _httprCustom,
                  ("responseBody" .=) <$> _httprResponseBody,
                  ("patch" .=) <$> _httprPatch,
                  ("get" .=) <$> _httprGet,
                  ("additionalBindings" .=) <$>
                    _httprAdditionalBindings,
                  ("delete" .=) <$> _httprDelete,
                  ("put" .=) <$> _httprPut])

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
newtype OperationResponse = OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
    OperationResponse'
    { _orAddtional = _Coerce # pOrAddtional_
    }

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

-- | Specifies what kind of log the caller must write Increment a streamz
-- counter with the specified metric and field names. Metric names should
-- start with a \'\/\', generally be lowercase-only, and end in \"_count\".
-- Field names should not contain an initial slash. The actual exported
-- metric names will have \"\/iam\/policy\" prepended. Field names
-- correspond to IAM request parameters and field values are their
-- respective values. At present the only supported field names are -
-- \"iam_principal\", corresponding to IAMContext.principal; - \"\" (empty
-- string), resulting in one aggretated counter with no field. Examples:
-- counter { metric: \"\/debug_access_count\" field: \"iam_principal\" }
-- ==> increment counter \/iam\/policy\/backend_debug_access_count
-- {iam_principal=[value of IAMContext.principal]} At this time we do not
-- support: * multiple field names (though this may be supported in the
-- future) * decrementing the counter * incrementing it by anything other
-- than 1
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

-- | Configuration for an anthentication provider, including support for
-- [JSON Web Token
-- (JWT)](https:\/\/tools.ietf.org\/html\/draft-ietf-oauth-json-web-token-32).
--
-- /See:/ 'authProvider' smart constructor.
data AuthProvider = AuthProvider'
    { _apJWKsURI :: !(Maybe Text)
    , _apId      :: !(Maybe Text)
    , _apIssuer  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AuthProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apJWKsURI'
--
-- * 'apId'
--
-- * 'apIssuer'
authProvider
    :: AuthProvider
authProvider =
    AuthProvider'
    { _apJWKsURI = Nothing
    , _apId = Nothing
    , _apIssuer = Nothing
    }

-- | URL of the provider\'s public key set to validate signature of the JWT.
-- See [OpenID
-- Discovery](https:\/\/openid.net\/specs\/openid-connect-discovery-1_0.html#ProviderMetadata).
-- Optional if the key set document: - can be retrieved from [OpenID
-- Discovery](https:\/\/openid.net\/specs\/openid-connect-discovery-1_0.html
-- of the issuer. - can be inferred from the email domain of the issuer
-- (e.g. a Google service account). Example:
-- https:\/\/www.googleapis.com\/oauth2\/v1\/certs
apJWKsURI :: Lens' AuthProvider (Maybe Text)
apJWKsURI
  = lens _apJWKsURI (\ s a -> s{_apJWKsURI = a})

-- | The unique identifier of the auth provider. It will be referred to by
-- \`AuthRequirement.provider_id\`. Example: \"bookstore_auth\".
apId :: Lens' AuthProvider (Maybe Text)
apId = lens _apId (\ s a -> s{_apId = a})

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
                   (o .:? "jwksUri") <*> (o .:? "id") <*>
                     (o .:? "issuer"))

instance ToJSON AuthProvider where
        toJSON AuthProvider'{..}
          = object
              (catMaybes
                 [("jwksUri" .=) <$> _apJWKsURI, ("id" .=) <$> _apId,
                  ("issuer" .=) <$> _apIssuer])

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

-- | A context rule provides information about the context for an individual
-- API element.
--
-- /See:/ 'contextRule' smart constructor.
data ContextRule = ContextRule'
    { _crSelector  :: !(Maybe Text)
    , _crRequested :: !(Maybe [Text])
    , _crProvided  :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContextRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crSelector'
--
-- * 'crRequested'
--
-- * 'crProvided'
contextRule
    :: ContextRule
contextRule =
    ContextRule'
    { _crSelector = Nothing
    , _crRequested = Nothing
    , _crProvided = Nothing
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

-- | A list of full type names of provided contexts.
crProvided :: Lens' ContextRule [Text]
crProvided
  = lens _crProvided (\ s a -> s{_crProvided = a}) .
      _Default
      . _Coerce

instance FromJSON ContextRule where
        parseJSON
          = withObject "ContextRule"
              (\ o ->
                 ContextRule' <$>
                   (o .:? "selector") <*> (o .:? "requested" .!= mempty)
                     <*> (o .:? "provided" .!= mempty))

instance ToJSON ContextRule where
        toJSON ContextRule'{..}
          = object
              (catMaybes
                 [("selector" .=) <$> _crSelector,
                  ("requested" .=) <$> _crRequested,
                  ("provided" .=) <$> _crProvided])
