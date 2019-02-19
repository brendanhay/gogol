{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ServiceUsage.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ServiceUsage.Types.Product where

import           Network.Google.Prelude
import           Network.Google.ServiceUsage.Types.Sum

-- | Define a parameter\'s name and location. The parameter may be passed as
-- either an HTTP header or a URL query parameter, and if both are passed
-- the behavior is implementation-dependent.
--
-- /See:/ 'systemParameter' smart constructor.
data SystemParameter =
  SystemParameter'
    { _spHTTPHeader        :: !(Maybe Text)
    , _spURLQueryParameter :: !(Maybe Text)
    , _spName              :: !(Maybe Text)
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
    { _mrdName        :: !(Maybe Text)
    , _mrdDisplayName :: !(Maybe Text)
    , _mrdLabels      :: !(Maybe [LabelDescriptor])
    , _mrdType        :: !(Maybe Text)
    , _mrdDescription :: !(Maybe Text)
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

-- | \`Service\` is the root object of Google service configuration schema.
-- It describes basic information about a service, such as the name and the
-- title, and delegates other aspects to sub-sections. Each sub-section is
-- either a proto message or a repeated proto message that configures a
-- specific aspect, such as auth. See each proto message definition for
-- details. Example: type: google.api.Service config_version: 3 name:
-- calendar.googleapis.com title: Google Calendar API apis: - name:
-- google.calendar.v3.Calendar authentication: providers: - id:
-- google_calendar_auth jwks_uri:
-- https:\/\/www.googleapis.com\/oauth2\/v1\/certs issuer:
-- https:\/\/securetoken.google.com rules: - selector: \"*\" requirements:
-- provider_id: google_calendar_auth
--
-- /See:/ 'googleAPIService' smart constructor.
data GoogleAPIService =
  GoogleAPIService'
    { _gasControl            :: !(Maybe Control)
    , _gasMetrics            :: !(Maybe [MetricDescriptor])
    , _gasContext            :: !(Maybe Context)
    , _gasAuthentication     :: !(Maybe Authentication)
    , _gasAPIs               :: !(Maybe [API])
    , _gasTypes              :: !(Maybe [Type])
    , _gasSystemTypes        :: !(Maybe [Type])
    , _gasExperimental       :: !(Maybe Experimental)
    , _gasMonitoredResources :: !(Maybe [MonitoredResourceDescriptor])
    , _gasBackend            :: !(Maybe Backend)
    , _gasMonitoring         :: !(Maybe Monitoring)
    , _gasName               :: !(Maybe Text)
    , _gasSystemParameters   :: !(Maybe SystemParameters)
    , _gasLogs               :: !(Maybe [LogDescriptor])
    , _gasDocumentation      :: !(Maybe Documentation)
    , _gasId                 :: !(Maybe Text)
    , _gasUsage              :: !(Maybe Usage)
    , _gasEndpoints          :: !(Maybe [Endpoint])
    , _gasEnums              :: !(Maybe [Enum'])
    , _gasConfigVersion      :: !(Maybe (Textual Word32))
    , _gasHTTP               :: !(Maybe HTTP)
    , _gasTitle              :: !(Maybe Text)
    , _gasProducerProjectId  :: !(Maybe Text)
    , _gasSourceInfo         :: !(Maybe SourceInfo)
    , _gasBilling            :: !(Maybe Billing)
    , _gasCustomError        :: !(Maybe CustomError)
    , _gasLogging            :: !(Maybe Logging)
    , _gasQuota              :: !(Maybe Quota)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleAPIService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasControl'
--
-- * 'gasMetrics'
--
-- * 'gasContext'
--
-- * 'gasAuthentication'
--
-- * 'gasAPIs'
--
-- * 'gasTypes'
--
-- * 'gasSystemTypes'
--
-- * 'gasExperimental'
--
-- * 'gasMonitoredResources'
--
-- * 'gasBackend'
--
-- * 'gasMonitoring'
--
-- * 'gasName'
--
-- * 'gasSystemParameters'
--
-- * 'gasLogs'
--
-- * 'gasDocumentation'
--
-- * 'gasId'
--
-- * 'gasUsage'
--
-- * 'gasEndpoints'
--
-- * 'gasEnums'
--
-- * 'gasConfigVersion'
--
-- * 'gasHTTP'
--
-- * 'gasTitle'
--
-- * 'gasProducerProjectId'
--
-- * 'gasSourceInfo'
--
-- * 'gasBilling'
--
-- * 'gasCustomError'
--
-- * 'gasLogging'
--
-- * 'gasQuota'
googleAPIService
    :: GoogleAPIService
googleAPIService =
  GoogleAPIService'
    { _gasControl = Nothing
    , _gasMetrics = Nothing
    , _gasContext = Nothing
    , _gasAuthentication = Nothing
    , _gasAPIs = Nothing
    , _gasTypes = Nothing
    , _gasSystemTypes = Nothing
    , _gasExperimental = Nothing
    , _gasMonitoredResources = Nothing
    , _gasBackend = Nothing
    , _gasMonitoring = Nothing
    , _gasName = Nothing
    , _gasSystemParameters = Nothing
    , _gasLogs = Nothing
    , _gasDocumentation = Nothing
    , _gasId = Nothing
    , _gasUsage = Nothing
    , _gasEndpoints = Nothing
    , _gasEnums = Nothing
    , _gasConfigVersion = Nothing
    , _gasHTTP = Nothing
    , _gasTitle = Nothing
    , _gasProducerProjectId = Nothing
    , _gasSourceInfo = Nothing
    , _gasBilling = Nothing
    , _gasCustomError = Nothing
    , _gasLogging = Nothing
    , _gasQuota = Nothing
    }

-- | Configuration for the service control plane.
gasControl :: Lens' GoogleAPIService (Maybe Control)
gasControl
  = lens _gasControl (\ s a -> s{_gasControl = a})

-- | Defines the metrics used by this service.
gasMetrics :: Lens' GoogleAPIService [MetricDescriptor]
gasMetrics
  = lens _gasMetrics (\ s a -> s{_gasMetrics = a}) .
      _Default
      . _Coerce

-- | Context configuration.
gasContext :: Lens' GoogleAPIService (Maybe Context)
gasContext
  = lens _gasContext (\ s a -> s{_gasContext = a})

-- | Auth configuration.
gasAuthentication :: Lens' GoogleAPIService (Maybe Authentication)
gasAuthentication
  = lens _gasAuthentication
      (\ s a -> s{_gasAuthentication = a})

-- | A list of API interfaces exported by this service. Only the \`name\`
-- field of the google.protobuf.Api needs to be provided by the
-- configuration author, as the remaining fields will be derived from the
-- IDL during the normalization process. It is an error to specify an API
-- interface here which cannot be resolved against the associated IDL
-- files.
gasAPIs :: Lens' GoogleAPIService [API]
gasAPIs
  = lens _gasAPIs (\ s a -> s{_gasAPIs = a}) . _Default
      . _Coerce

-- | A list of all proto message types included in this API service. Types
-- referenced directly or indirectly by the \`apis\` are automatically
-- included. Messages which are not referenced but shall be included, such
-- as types used by the \`google.protobuf.Any\` type, should be listed here
-- by name. Example: types: - name: google.protobuf.Int32
gasTypes :: Lens' GoogleAPIService [Type]
gasTypes
  = lens _gasTypes (\ s a -> s{_gasTypes = a}) .
      _Default
      . _Coerce

-- | A list of all proto message types included in this API service. It
-- serves similar purpose as [google.api.Service.types], except that these
-- types are not needed by user-defined APIs. Therefore, they will not show
-- up in the generated discovery doc. This field should only be used to
-- define system APIs in ESF.
gasSystemTypes :: Lens' GoogleAPIService [Type]
gasSystemTypes
  = lens _gasSystemTypes
      (\ s a -> s{_gasSystemTypes = a})
      . _Default
      . _Coerce

-- | Experimental configuration.
gasExperimental :: Lens' GoogleAPIService (Maybe Experimental)
gasExperimental
  = lens _gasExperimental
      (\ s a -> s{_gasExperimental = a})

-- | Defines the monitored resources used by this service. This is required
-- by the Service.monitoring and Service.logging configurations.
gasMonitoredResources :: Lens' GoogleAPIService [MonitoredResourceDescriptor]
gasMonitoredResources
  = lens _gasMonitoredResources
      (\ s a -> s{_gasMonitoredResources = a})
      . _Default
      . _Coerce

-- | API backend configuration.
gasBackend :: Lens' GoogleAPIService (Maybe Backend)
gasBackend
  = lens _gasBackend (\ s a -> s{_gasBackend = a})

-- | Monitoring configuration.
gasMonitoring :: Lens' GoogleAPIService (Maybe Monitoring)
gasMonitoring
  = lens _gasMonitoring
      (\ s a -> s{_gasMonitoring = a})

-- | The service name, which is a DNS-like logical identifier for the
-- service, such as \`calendar.googleapis.com\`. The service name typically
-- goes through DNS verification to make sure the owner of the service also
-- owns the DNS name.
gasName :: Lens' GoogleAPIService (Maybe Text)
gasName = lens _gasName (\ s a -> s{_gasName = a})

-- | System parameter configuration.
gasSystemParameters :: Lens' GoogleAPIService (Maybe SystemParameters)
gasSystemParameters
  = lens _gasSystemParameters
      (\ s a -> s{_gasSystemParameters = a})

-- | Defines the logs used by this service.
gasLogs :: Lens' GoogleAPIService [LogDescriptor]
gasLogs
  = lens _gasLogs (\ s a -> s{_gasLogs = a}) . _Default
      . _Coerce

-- | Additional API documentation.
gasDocumentation :: Lens' GoogleAPIService (Maybe Documentation)
gasDocumentation
  = lens _gasDocumentation
      (\ s a -> s{_gasDocumentation = a})

-- | A unique ID for a specific instance of this message, typically assigned
-- by the client for tracking purpose. If empty, the server may choose to
-- generate one instead. Must be no longer than 60 characters.
gasId :: Lens' GoogleAPIService (Maybe Text)
gasId = lens _gasId (\ s a -> s{_gasId = a})

-- | Configuration controlling usage of this service.
gasUsage :: Lens' GoogleAPIService (Maybe Usage)
gasUsage = lens _gasUsage (\ s a -> s{_gasUsage = a})

-- | Configuration for network endpoints. If this is empty, then an endpoint
-- with the same name as the service is automatically generated to service
-- all defined APIs.
gasEndpoints :: Lens' GoogleAPIService [Endpoint]
gasEndpoints
  = lens _gasEndpoints (\ s a -> s{_gasEndpoints = a})
      . _Default
      . _Coerce

-- | A list of all enum types included in this API service. Enums referenced
-- directly or indirectly by the \`apis\` are automatically included. Enums
-- which are not referenced but shall be included should be listed here by
-- name. Example: enums: - name: google.someapi.v1.SomeEnum
gasEnums :: Lens' GoogleAPIService [Enum']
gasEnums
  = lens _gasEnums (\ s a -> s{_gasEnums = a}) .
      _Default
      . _Coerce

-- | The semantic version of the service configuration. The config version
-- affects the interpretation of the service configuration. For example,
-- certain features are enabled by default for certain config versions. The
-- latest config version is \`3\`.
gasConfigVersion :: Lens' GoogleAPIService (Maybe Word32)
gasConfigVersion
  = lens _gasConfigVersion
      (\ s a -> s{_gasConfigVersion = a})
      . mapping _Coerce

-- | HTTP configuration.
gasHTTP :: Lens' GoogleAPIService (Maybe HTTP)
gasHTTP = lens _gasHTTP (\ s a -> s{_gasHTTP = a})

-- | The product title for this service.
gasTitle :: Lens' GoogleAPIService (Maybe Text)
gasTitle = lens _gasTitle (\ s a -> s{_gasTitle = a})

-- | The Google project that owns this service.
gasProducerProjectId :: Lens' GoogleAPIService (Maybe Text)
gasProducerProjectId
  = lens _gasProducerProjectId
      (\ s a -> s{_gasProducerProjectId = a})

-- | Output only. The source information for this configuration if available.
gasSourceInfo :: Lens' GoogleAPIService (Maybe SourceInfo)
gasSourceInfo
  = lens _gasSourceInfo
      (\ s a -> s{_gasSourceInfo = a})

-- | Billing configuration.
gasBilling :: Lens' GoogleAPIService (Maybe Billing)
gasBilling
  = lens _gasBilling (\ s a -> s{_gasBilling = a})

-- | Custom error configuration.
gasCustomError :: Lens' GoogleAPIService (Maybe CustomError)
gasCustomError
  = lens _gasCustomError
      (\ s a -> s{_gasCustomError = a})

-- | Logging configuration.
gasLogging :: Lens' GoogleAPIService (Maybe Logging)
gasLogging
  = lens _gasLogging (\ s a -> s{_gasLogging = a})

-- | Quota configuration.
gasQuota :: Lens' GoogleAPIService (Maybe Quota)
gasQuota = lens _gasQuota (\ s a -> s{_gasQuota = a})

instance FromJSON GoogleAPIService where
        parseJSON
          = withObject "GoogleAPIService"
              (\ o ->
                 GoogleAPIService' <$>
                   (o .:? "control") <*> (o .:? "metrics" .!= mempty)
                     <*> (o .:? "context")
                     <*> (o .:? "authentication")
                     <*> (o .:? "apis" .!= mempty)
                     <*> (o .:? "types" .!= mempty)
                     <*> (o .:? "systemTypes" .!= mempty)
                     <*> (o .:? "experimental")
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

instance ToJSON GoogleAPIService where
        toJSON GoogleAPIService'{..}
          = object
              (catMaybes
                 [("control" .=) <$> _gasControl,
                  ("metrics" .=) <$> _gasMetrics,
                  ("context" .=) <$> _gasContext,
                  ("authentication" .=) <$> _gasAuthentication,
                  ("apis" .=) <$> _gasAPIs, ("types" .=) <$> _gasTypes,
                  ("systemTypes" .=) <$> _gasSystemTypes,
                  ("experimental" .=) <$> _gasExperimental,
                  ("monitoredResources" .=) <$> _gasMonitoredResources,
                  ("backend" .=) <$> _gasBackend,
                  ("monitoring" .=) <$> _gasMonitoring,
                  ("name" .=) <$> _gasName,
                  ("systemParameters" .=) <$> _gasSystemParameters,
                  ("logs" .=) <$> _gasLogs,
                  ("documentation" .=) <$> _gasDocumentation,
                  ("id" .=) <$> _gasId, ("usage" .=) <$> _gasUsage,
                  ("endpoints" .=) <$> _gasEndpoints,
                  ("enums" .=) <$> _gasEnums,
                  ("configVersion" .=) <$> _gasConfigVersion,
                  ("http" .=) <$> _gasHTTP, ("title" .=) <$> _gasTitle,
                  ("producerProjectId" .=) <$> _gasProducerProjectId,
                  ("sourceInfo" .=) <$> _gasSourceInfo,
                  ("billing" .=) <$> _gasBilling,
                  ("customError" .=) <$> _gasCustomError,
                  ("logging" .=) <$> _gasLogging,
                  ("quota" .=) <$> _gasQuota])

-- | A documentation rule provides information about individual API elements.
--
-- /See:/ 'documentationRule' smart constructor.
data DocumentationRule =
  DocumentationRule'
    { _drSelector               :: !(Maybe Text)
    , _drDeprecationDescription :: !(Maybe Text)
    , _drDescription            :: !(Maybe Text)
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
-- package \`google.rpc\` that can be used for common error conditions. #
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
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
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

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationSchema' smart constructor.
newtype OperationSchema =
  OperationSchema'
    { _osAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OperationSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osAddtional'
operationSchema
    :: HashMap Text JSONValue -- ^ 'osAddtional'
    -> OperationSchema
operationSchema pOsAddtional_ =
  OperationSchema' {_osAddtional = _Coerce # pOsAddtional_}

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

-- | Configuration of a specific billing destination (Currently only support
-- bill against consumer project).
--
-- /See:/ 'billingDestination' smart constructor.
data BillingDestination =
  BillingDestination'
    { _bdMetrics           :: !(Maybe [Text])
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

-- | User-defined authentication requirements, including support for [JSON
-- Web Token
-- (JWT)](https:\/\/tools.ietf.org\/html\/draft-ietf-oauth-json-web-token-32).
--
-- /See:/ 'authRequirement' smart constructor.
data AuthRequirement =
  AuthRequirement'
    { _arProviderId :: !(Maybe Text)
    , _arAudiences  :: !(Maybe Text)
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

-- | Response message for the \`ListServices\` method.
--
-- /See:/ 'listServicesResponse' smart constructor.
data ListServicesResponse =
  ListServicesResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrServices      :: !(Maybe [GoogleAPIServiceusageV1Service])
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

-- | Token that can be passed to \`ListServices\` to resume a paginated
-- query.
lsrNextPageToken :: Lens' ListServicesResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | The available services for the requested project.
lsrServices :: Lens' ListServicesResponse [GoogleAPIServiceusageV1Service]
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
-- defined in package \`google.rpc.context\`. This also provides mechanism
-- to whitelist any protobuf message extension that can be sent in grpc
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
    , _ldLogs              :: !(Maybe [Text])
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
    { _mdMetricKind  :: !(Maybe MetricDescriptorMetricKind)
    , _mdName        :: !(Maybe Text)
    , _mdMetadata    :: !(Maybe MetricDescriptorMetadata)
    , _mdDisplayName :: !(Maybe Text)
    , _mdLabels      :: !(Maybe [LabelDescriptor])
    , _mdType        :: !(Maybe Text)
    , _mdValueType   :: !(Maybe MetricDescriptorValueType)
    , _mdDescription :: !(Maybe Text)
    , _mdUnit        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MetricDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
metricDescriptor
    :: MetricDescriptor
metricDescriptor =
  MetricDescriptor'
    { _mdMetricKind = Nothing
    , _mdName = Nothing
    , _mdMetadata = Nothing
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
-- (2**40) **Grammar** The grammar also includes these connectors: * \`\/\`
-- division (as an infix operator, e.g. \`1\/s\`). * \`.\` multiplication
-- (as an infix operator, e.g. \`GBy.d\`) The grammar for a unit is as
-- follows: Expression = Component { \".\" Component } { \"\/\" Component }
-- ; Component = ( [ PREFIX ] UNIT | \"%\" ) [ Annotation ] | Annotation |
-- \"1\" ; Annotation = \"{\" NAME \"}\" ; Notes: * \`Annotation\` is just
-- a comment if it follows a \`UNIT\` and is equivalent to \`1\` if it is
-- used alone. For examples, \`{requests}\/s == 1\/s\`,
-- \`By{transmitted}\/s == By\/s\`. * \`NAME\` is a sequence of non-blank
-- printable ASCII characters not containing \'{\' or \'}\'. * \`1\`
-- represents dimensionless value 1, such as in \`1\/s\`. * \`%\`
-- represents dimensionless value 1\/100, and annotates values giving a
-- percentage.
mdUnit :: Lens' MetricDescriptor (Maybe Text)
mdUnit = lens _mdUnit (\ s a -> s{_mdUnit = a})

instance FromJSON MetricDescriptor where
        parseJSON
          = withObject "MetricDescriptor"
              (\ o ->
                 MetricDescriptor' <$>
                   (o .:? "metricKind") <*> (o .:? "name") <*>
                     (o .:? "metadata")
                     <*> (o .:? "displayName")
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
                  ("metadata" .=) <$> _mdMetadata,
                  ("displayName" .=) <$> _mdDisplayName,
                  ("labels" .=) <$> _mdLabels, ("type" .=) <$> _mdType,
                  ("valueType" .=) <$> _mdValueType,
                  ("description" .=) <$> _mdDescription,
                  ("unit" .=) <$> _mdUnit])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations    :: !(Maybe [Operation])
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
    { _brJwtAudience       :: !(Maybe Text)
    , _brSelector          :: !(Maybe Text)
    , _brMinDeadline       :: !(Maybe (Textual Double))
    , _brAddress           :: !(Maybe Text)
    , _brOperationDeadline :: !(Maybe (Textual Double))
    , _brDeadline          :: !(Maybe (Textual Double))
    , _brPathTranslation   :: !(Maybe BackendRulePathTranslation)
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
-- * 'brMinDeadline'
--
-- * 'brAddress'
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
    , _brMinDeadline = Nothing
    , _brAddress = Nothing
    , _brOperationDeadline = Nothing
    , _brDeadline = Nothing
    , _brPathTranslation = Nothing
    }

-- | The JWT audience is used when generating a JWT id token for the backend.
brJwtAudience :: Lens' BackendRule (Maybe Text)
brJwtAudience
  = lens _brJwtAudience
      (\ s a -> s{_brJwtAudience = a})

-- | Selects the methods to which this rule applies. Refer to selector for
-- syntax details.
brSelector :: Lens' BackendRule (Maybe Text)
brSelector
  = lens _brSelector (\ s a -> s{_brSelector = a})

-- | Minimum deadline in seconds needed for this method. Calls having
-- deadline value lower than this will be rejected.
brMinDeadline :: Lens' BackendRule (Maybe Double)
brMinDeadline
  = lens _brMinDeadline
      (\ s a -> s{_brMinDeadline = a})
      . mapping _Coerce

-- | The address of the API backend.
brAddress :: Lens' BackendRule (Maybe Text)
brAddress
  = lens _brAddress (\ s a -> s{_brAddress = a})

-- | The number of seconds to wait for the completion of a long running
-- operation. The default is no deadline.
brOperationDeadline :: Lens' BackendRule (Maybe Double)
brOperationDeadline
  = lens _brOperationDeadline
      (\ s a -> s{_brOperationDeadline = a})
      . mapping _Coerce

-- | The number of seconds to wait for a response from a request. The default
-- deadline for gRPC is infinite (no deadline) and HTTP requests is 5
-- seconds.
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
                     (o .:? "minDeadline")
                     <*> (o .:? "address")
                     <*> (o .:? "operationDeadline")
                     <*> (o .:? "deadline")
                     <*> (o .:? "pathTranslation"))

instance ToJSON BackendRule where
        toJSON BackendRule'{..}
          = object
              (catMaybes
                 [("jwtAudience" .=) <$> _brJwtAudience,
                  ("selector" .=) <$> _brSelector,
                  ("minDeadline" .=) <$> _brMinDeadline,
                  ("address" .=) <$> _brAddress,
                  ("operationDeadline" .=) <$> _brOperationDeadline,
                  ("deadline" .=) <$> _brDeadline,
                  ("pathTranslation" .=) <$> _brPathTranslation])

-- | Request message for the \`BatchEnableServices\` method.
--
-- /See:/ 'batchEnableServicesRequest' smart constructor.
newtype BatchEnableServicesRequest =
  BatchEnableServicesRequest'
    { _besrServiceIds :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchEnableServicesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'besrServiceIds'
batchEnableServicesRequest
    :: BatchEnableServicesRequest
batchEnableServicesRequest =
  BatchEnableServicesRequest' {_besrServiceIds = Nothing}

-- | The identifiers of the services to enable on the project. A valid
-- identifier would be: serviceusage.googleapis.com Enabling services
-- requires that each service is public or is shared with the user enabling
-- the service. Two or more services must be specified. To enable a single
-- service, use the \`EnableService\` method instead. A single request can
-- enable a maximum of 20 services at a time. If more than 20 services are
-- specified, the request will fail, and no state changes will occur.
besrServiceIds :: Lens' BatchEnableServicesRequest [Text]
besrServiceIds
  = lens _besrServiceIds
      (\ s a -> s{_besrServiceIds = a})
      . _Default
      . _Coerce

instance FromJSON BatchEnableServicesRequest where
        parseJSON
          = withObject "BatchEnableServicesRequest"
              (\ o ->
                 BatchEnableServicesRequest' <$>
                   (o .:? "serviceIds" .!= mempty))

instance ToJSON BatchEnableServicesRequest where
        toJSON BatchEnableServicesRequest'{..}
          = object
              (catMaybes [("serviceIds" .=) <$> _besrServiceIds])

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
    { _mrSelector    :: !(Maybe Text)
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

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationSchema)
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

-- | Request message for the \`EnableService\` method.
--
-- /See:/ 'enableServiceRequest' smart constructor.
data EnableServiceRequest =
  EnableServiceRequest'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnableServiceRequest' with the minimum fields required to make a request.
--
enableServiceRequest
    :: EnableServiceRequest
enableServiceRequest = EnableServiceRequest'

instance FromJSON EnableServiceRequest where
        parseJSON
          = withObject "EnableServiceRequest"
              (\ o -> pure EnableServiceRequest')

instance ToJSON EnableServiceRequest where
        toJSON = const emptyObject

-- | A custom error rule.
--
-- /See:/ 'customErrorRule' smart constructor.
data CustomErrorRule =
  CustomErrorRule'
    { _cerIsErrorType :: !(Maybe Bool)
    , _cerSelector    :: !(Maybe Text)
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

-- | Response message for the \`BatchEnableServices\` method. This response
-- message is assigned to the \`response\` field of the returned Operation
-- when that operation is done.
--
-- /See:/ 'batchEnableServicesResponse' smart constructor.
data BatchEnableServicesResponse =
  BatchEnableServicesResponse'
    { _besrFailures :: !(Maybe [EnableFailure])
    , _besrServices :: !(Maybe [GoogleAPIServiceusageV1Service])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchEnableServicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'besrFailures'
--
-- * 'besrServices'
batchEnableServicesResponse
    :: BatchEnableServicesResponse
batchEnableServicesResponse =
  BatchEnableServicesResponse'
    {_besrFailures = Nothing, _besrServices = Nothing}

-- | If allow_partial_success is true, and one or more services could not be
-- enabled, this field contains the details about each failure.
besrFailures :: Lens' BatchEnableServicesResponse [EnableFailure]
besrFailures
  = lens _besrFailures (\ s a -> s{_besrFailures = a})
      . _Default
      . _Coerce

-- | The new state of the services after enabling.
besrServices :: Lens' BatchEnableServicesResponse [GoogleAPIServiceusageV1Service]
besrServices
  = lens _besrServices (\ s a -> s{_besrServices = a})
      . _Default
      . _Coerce

instance FromJSON BatchEnableServicesResponse where
        parseJSON
          = withObject "BatchEnableServicesResponse"
              (\ o ->
                 BatchEnableServicesResponse' <$>
                   (o .:? "failures" .!= mempty) <*>
                     (o .:? "services" .!= mempty))

instance ToJSON BatchEnableServicesResponse where
        toJSON BatchEnableServicesResponse'{..}
          = object
              (catMaybes
                 [("failures" .=) <$> _besrFailures,
                  ("services" .=) <$> _besrServices])

-- | Enum value definition.
--
-- /See:/ 'enumValue' smart constructor.
data EnumValue =
  EnumValue'
    { _evName    :: !(Maybe Text)
    , _evOptions :: !(Maybe [Option])
    , _evNumber  :: !(Maybe (Textual Int32))
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

-- | \`Authentication\` defines the authentication configuration for an API.
-- Example for an API targeted for external use: name:
-- calendar.googleapis.com authentication: providers: - id:
-- google_calendar_auth jwks_uri:
-- https:\/\/www.googleapis.com\/oauth2\/v1\/certs issuer:
-- https:\/\/securetoken.google.com rules: - selector: \"*\" requirements:
-- provider_id: google_calendar_auth
--
-- /See:/ 'authentication' smart constructor.
data Authentication =
  Authentication'
    { _aRules     :: !(Maybe [AuthenticationRule])
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
    { _urSelector               :: !(Maybe Text)
    , _urAllowUnregisteredCalls :: !(Maybe Bool)
    , _urSkipServiceControl     :: !(Maybe Bool)
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
    , _pContent  :: !(Maybe Text)
    , _pName     :: !(Maybe Text)
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
    { _arRequirements           :: !(Maybe [AuthRequirement])
    , _arSelector               :: !(Maybe Text)
    , _arAllowWithoutCredential :: !(Maybe Bool)
    , _arOAuth                  :: !(Maybe OAuthRequirements)
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

-- | If true, the service accepts API keys without any other credential.
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

-- | Configuration of authorization. This section determines the
-- authorization provider, if unspecified, then no authorization check will
-- be done. Example: experimental: authorization: provider:
-- firebaserules.googleapis.com
--
-- /See:/ 'authorizationConfig' smart constructor.
newtype AuthorizationConfig =
  AuthorizationConfig'
    { _acProvider :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AuthorizationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acProvider'
authorizationConfig
    :: AuthorizationConfig
authorizationConfig = AuthorizationConfig' {_acProvider = Nothing}

-- | The name of the authorization provider, such as
-- firebaserules.googleapis.com.
acProvider :: Lens' AuthorizationConfig (Maybe Text)
acProvider
  = lens _acProvider (\ s a -> s{_acProvider = a})

instance FromJSON AuthorizationConfig where
        parseJSON
          = withObject "AuthorizationConfig"
              (\ o -> AuthorizationConfig' <$> (o .:? "provider"))

instance ToJSON AuthorizationConfig where
        toJSON AuthorizationConfig'{..}
          = object
              (catMaybes [("provider" .=) <$> _acProvider])

-- | Provides error messages for the failing services.
--
-- /See:/ 'enableFailure' smart constructor.
data EnableFailure =
  EnableFailure'
    { _efServiceId    :: !(Maybe Text)
    , _efErrorMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnableFailure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'efServiceId'
--
-- * 'efErrorMessage'
enableFailure
    :: EnableFailure
enableFailure =
  EnableFailure' {_efServiceId = Nothing, _efErrorMessage = Nothing}

-- | The service id of a service that could not be enabled.
efServiceId :: Lens' EnableFailure (Maybe Text)
efServiceId
  = lens _efServiceId (\ s a -> s{_efServiceId = a})

-- | An error message describing why the service could not be enabled.
efErrorMessage :: Lens' EnableFailure (Maybe Text)
efErrorMessage
  = lens _efErrorMessage
      (\ s a -> s{_efErrorMessage = a})

instance FromJSON EnableFailure where
        parseJSON
          = withObject "EnableFailure"
              (\ o ->
                 EnableFailure' <$>
                   (o .:? "serviceId") <*> (o .:? "errorMessage"))

instance ToJSON EnableFailure where
        toJSON EnableFailure'{..}
          = object
              (catMaybes
                 [("serviceId" .=) <$> _efServiceId,
                  ("errorMessage" .=) <$> _efErrorMessage])

-- | Experimental service configuration. These configuration options can only
-- be used by whitelisted users.
--
-- /See:/ 'experimental' smart constructor.
newtype Experimental =
  Experimental'
    { _eAuthorization :: Maybe AuthorizationConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Experimental' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eAuthorization'
experimental
    :: Experimental
experimental = Experimental' {_eAuthorization = Nothing}

-- | Authorization configuration.
eAuthorization :: Lens' Experimental (Maybe AuthorizationConfig)
eAuthorization
  = lens _eAuthorization
      (\ s a -> s{_eAuthorization = a})

instance FromJSON Experimental where
        parseJSON
          = withObject "Experimental"
              (\ o -> Experimental' <$> (o .:? "authorization"))

instance ToJSON Experimental where
        toJSON Experimental'{..}
          = object
              (catMaybes
                 [("authorization" .=) <$> _eAuthorization])

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
-- There can be multiple producer destinations. A monitored resouce type
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
-- There can be multiple consumer destinations. A monitored resouce type
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
    { _ldName        :: !(Maybe Text)
    , _ldDisplayName :: !(Maybe Text)
    , _ldLabels      :: !(Maybe [LabelDescriptor])
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
    { _metRequestStreaming  :: !(Maybe Bool)
    , _metResponseTypeURL   :: !(Maybe Text)
    , _metName              :: !(Maybe Text)
    , _metResponseStreaming :: !(Maybe Bool)
    , _metRequestTypeURL    :: !(Maybe Text)
    , _metOptions           :: !(Maybe [Option])
    , _metSyntax            :: !(Maybe MethodSyntax)
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

-- | Response message for the \`EnableService\` method. This response message
-- is assigned to the \`response\` field of the returned Operation when
-- that operation is done.
--
-- /See:/ 'enableServiceResponse' smart constructor.
newtype EnableServiceResponse =
  EnableServiceResponse'
    { _esrService :: Maybe GoogleAPIServiceusageV1Service
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnableServiceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esrService'
enableServiceResponse
    :: EnableServiceResponse
enableServiceResponse = EnableServiceResponse' {_esrService = Nothing}

-- | The new state of the service after enabling.
esrService :: Lens' EnableServiceResponse (Maybe GoogleAPIServiceusageV1Service)
esrService
  = lens _esrService (\ s a -> s{_esrService = a})

instance FromJSON EnableServiceResponse where
        parseJSON
          = withObject "EnableServiceResponse"
              (\ o -> EnableServiceResponse' <$> (o .:? "service"))

instance ToJSON EnableServiceResponse where
        toJSON EnableServiceResponse'{..}
          = object (catMaybes [("service" .=) <$> _esrService])

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
data Documentation =
  Documentation'
    { _dSummary              :: !(Maybe Text)
    , _dDocumentationRootURL :: !(Maybe Text)
    , _dRules                :: !(Maybe [DocumentationRule])
    , _dPages                :: !(Maybe [Page])
    , _dOverview             :: !(Maybe Text)
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

-- | Response message for the \`DisableService\` method. This response
-- message is assigned to the \`response\` field of the returned Operation
-- when that operation is done.
--
-- /See:/ 'disableServiceResponse' smart constructor.
newtype DisableServiceResponse =
  DisableServiceResponse'
    { _dsrService :: Maybe GoogleAPIServiceusageV1Service
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DisableServiceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrService'
disableServiceResponse
    :: DisableServiceResponse
disableServiceResponse = DisableServiceResponse' {_dsrService = Nothing}

-- | The new state of the service after disabling.
dsrService :: Lens' DisableServiceResponse (Maybe GoogleAPIServiceusageV1Service)
dsrService
  = lens _dsrService (\ s a -> s{_dsrService = a})

instance FromJSON DisableServiceResponse where
        parseJSON
          = withObject "DisableServiceResponse"
              (\ o ->
                 DisableServiceResponse' <$> (o .:? "service"))

instance ToJSON DisableServiceResponse where
        toJSON DisableServiceResponse'{..}
          = object (catMaybes [("service" .=) <$> _dsrService])

-- | Additional annotations that can be used to guide the usage of a metric.
--
-- /See:/ 'metricDescriptorMetadata' smart constructor.
data MetricDescriptorMetadata =
  MetricDescriptorMetadata'
    { _mdmSamplePeriod :: !(Maybe GDuration)
    , _mdmIngestDelay  :: !(Maybe GDuration)
    , _mdmLaunchStage  :: !(Maybe MetricDescriptorMetadataLaunchStage)
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

-- | The launch stage of the metric definition.
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

-- | Define a system parameter rule mapping system parameter definitions to
-- methods.
--
-- /See:/ 'systemParameterRule' smart constructor.
data SystemParameterRule =
  SystemParameterRule'
    { _sprSelector   :: !(Maybe Text)
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
    { _lKey         :: !(Maybe Text)
    , _lValueType   :: !(Maybe LabelDescriptorValueType)
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

-- | Configuration controlling usage of a service.
--
-- /See:/ 'usage' smart constructor.
data Usage =
  Usage'
    { _uRequirements                :: !(Maybe [Text])
    , _uRules                       :: !(Maybe [UsageRule])
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

-- | Defines the HTTP configuration for an API service. It contains a list of
-- HttpRule, each specifying the mapping of an RPC method to one or more
-- HTTP REST API methods.
--
-- /See:/ 'hTTP' smart constructor.
data HTTP =
  HTTP'
    { _hRules                        :: !(Maybe [HTTPRule])
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

-- | When set to true, URL path parmeters will be fully URI-decoded except in
-- cases of single segment matches in reserved expansion, where \"%2F\"
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

-- | Request message for the \`DisableService\` method.
--
-- /See:/ 'disableServiceRequest' smart constructor.
newtype DisableServiceRequest =
  DisableServiceRequest'
    { _dsrDisableDependentServices :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DisableServiceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrDisableDependentServices'
disableServiceRequest
    :: DisableServiceRequest
disableServiceRequest =
  DisableServiceRequest' {_dsrDisableDependentServices = Nothing}

-- | Indicates if services that are enabled and which depend on this service
-- should also be disabled. If not set, an error will be generated if any
-- enabled services depend on the service to be disabled. When set, the
-- service, and any enabled services that depend on it, will be disabled
-- together.
dsrDisableDependentServices :: Lens' DisableServiceRequest (Maybe Bool)
dsrDisableDependentServices
  = lens _dsrDisableDependentServices
      (\ s a -> s{_dsrDisableDependentServices = a})

instance FromJSON DisableServiceRequest where
        parseJSON
          = withObject "DisableServiceRequest"
              (\ o ->
                 DisableServiceRequest' <$>
                   (o .:? "disableDependentServices"))

instance ToJSON DisableServiceRequest where
        toJSON DisableServiceRequest'{..}
          = object
              (catMaybes
                 [("disableDependentServices" .=) <$>
                    _dsrDisableDependentServices])

-- | A protocol buffer message type.
--
-- /See:/ 'type'' smart constructor.
data Type =
  Type'
    { _tSourceContext :: !(Maybe SourceContext)
    , _tOneofs        :: !(Maybe [Text])
    , _tName          :: !(Maybe Text)
    , _tOptions       :: !(Maybe [Option])
    , _tFields        :: !(Maybe [Field])
    , _tSyntax        :: !(Maybe TypeSyntax)
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
    , _aMixins        :: !(Maybe [Mixin])
    , _aMethods       :: !(Maybe [Method])
    , _aName          :: !(Maybe Text)
    , _aVersion       :: !(Maybe Text)
    , _aOptions       :: !(Maybe [Option])
    , _aSyntax        :: !(Maybe APISyntax)
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
    { _mdMetrics           :: !(Maybe [Text])
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

-- | The operation metadata returned for the batchend services operation.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omResourceNames :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omResourceNames'
operationMetadata
    :: OperationMetadata
operationMetadata = OperationMetadata' {_omResourceNames = Nothing}

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
                   (o .:? "resourceNames" .!= mempty))

instance ToJSON OperationMetadata where
        toJSON OperationMetadata'{..}
          = object
              (catMaybes
                 [("resourceNames" .=) <$> _omResourceNames])

-- | \`Endpoint\` describes a network endpoint that serves a set of APIs. A
-- service may expose any number of endpoints, and all endpoints share the
-- same service configuration, such as quota configuration and monitoring
-- configuration. Example service configuration: name:
-- library-example.googleapis.com endpoints: # Below entry makes
-- \'google.example.library.v1.Library\' # API be served from endpoint
-- address library-example.googleapis.com. # It also allows HTTP OPTIONS
-- calls to be passed to the backend, for # it to decide whether the
-- subsequent cross-origin request is # allowed to proceed. - name:
-- library-example.googleapis.com allow_cors: true
--
-- /See:/ 'endpoint' smart constructor.
data Endpoint =
  Endpoint'
    { _eAliases   :: !(Maybe [Text])
    , _eAllowCORS :: !(Maybe Bool)
    , _eName      :: !(Maybe Text)
    , _eFeatures  :: !(Maybe [Text])
    , _eTarget    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Endpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eAliases'
--
-- * 'eAllowCORS'
--
-- * 'eName'
--
-- * 'eFeatures'
--
-- * 'eTarget'
endpoint
    :: Endpoint
endpoint =
  Endpoint'
    { _eAliases = Nothing
    , _eAllowCORS = Nothing
    , _eName = Nothing
    , _eFeatures = Nothing
    , _eTarget = Nothing
    }

-- | DEPRECATED: This field is no longer supported. Instead of using aliases,
-- please specify multiple google.api.Endpoint for each of the intended
-- aliases. Additional names that this endpoint will be hosted on.
eAliases :: Lens' Endpoint [Text]
eAliases
  = lens _eAliases (\ s a -> s{_eAliases = a}) .
      _Default
      . _Coerce

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
                   (o .:? "aliases" .!= mempty) <*> (o .:? "allowCors")
                     <*> (o .:? "name")
                     <*> (o .:? "features" .!= mempty)
                     <*> (o .:? "target"))

instance ToJSON Endpoint where
        toJSON Endpoint'{..}
          = object
              (catMaybes
                 [("aliases" .=) <$> _eAliases,
                  ("allowCors" .=) <$> _eAllowCORS,
                  ("name" .=) <$> _eName,
                  ("features" .=) <$> _eFeatures,
                  ("target" .=) <$> _eTarget])

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
    { _qlValues       :: !(Maybe QuotaLimitValues)
    , _qlFreeTier     :: !(Maybe (Textual Int64))
    , _qlMetric       :: !(Maybe Text)
    , _qlName         :: !(Maybe Text)
    , _qlDisplayName  :: !(Maybe Text)
    , _qlDuration     :: !(Maybe Text)
    , _qlDefaultLimit :: !(Maybe (Textual Int64))
    , _qlDescription  :: !(Maybe Text)
    , _qlUnit         :: !(Maybe Text)
    , _qlMaxLimit     :: !(Maybe (Textual Int64))
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

-- | Duration of this limit in textual notation. Example: \"100s\", \"24h\",
-- \"1d\". For duration longer than a day, only multiple of days is
-- supported. We support only \"100s\" and \"1d\" for now. Additional
-- support will be added in the future. \"0\" indicates indefinite
-- duration. Used by group-based quotas only.
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

-- | A protocol buffer option, which can be attached to a message, field,
-- enumeration, etc.
--
-- /See:/ 'option' smart constructor.
data Option =
  Option'
    { _optValue :: !(Maybe OptionValue)
    , _optName  :: !(Maybe Text)
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
-- shows how to configure monitored resources and metrics for billing:
-- monitored_resources: - type: library.googleapis.com\/branch labels: -
-- key: \/city description: The city where the library branch is located
-- in. - key: \/name description: The name of the branch. metrics: - name:
-- library.googleapis.com\/book\/borrowed_count metric_kind: DELTA
-- value_type: INT64 billing: consumer_destinations: - monitored_resource:
-- library.googleapis.com\/branch metrics: -
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

-- | A service that is available for use by the consumer.
--
-- /See:/ 'googleAPIServiceusageV1Service' smart constructor.
data GoogleAPIServiceusageV1Service =
  GoogleAPIServiceusageV1Service'
    { _gasvsParent :: !(Maybe Text)
    , _gasvsState  :: !(Maybe GoogleAPIServiceusageV1ServiceState)
    , _gasvsConfig :: !(Maybe GoogleAPIServiceusageV1ServiceConfig)
    , _gasvsName   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleAPIServiceusageV1Service' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasvsParent'
--
-- * 'gasvsState'
--
-- * 'gasvsConfig'
--
-- * 'gasvsName'
googleAPIServiceusageV1Service
    :: GoogleAPIServiceusageV1Service
googleAPIServiceusageV1Service =
  GoogleAPIServiceusageV1Service'
    { _gasvsParent = Nothing
    , _gasvsState = Nothing
    , _gasvsConfig = Nothing
    , _gasvsName = Nothing
    }

-- | The resource name of the consumer. A valid name would be: -
-- projects\/123
gasvsParent :: Lens' GoogleAPIServiceusageV1Service (Maybe Text)
gasvsParent
  = lens _gasvsParent (\ s a -> s{_gasvsParent = a})

-- | Whether or not the service has been enabled for use by the consumer.
gasvsState :: Lens' GoogleAPIServiceusageV1Service (Maybe GoogleAPIServiceusageV1ServiceState)
gasvsState
  = lens _gasvsState (\ s a -> s{_gasvsState = a})

-- | The service configuration of the available service. Some fields may be
-- filtered out of the configuration in responses to the \`ListServices\`
-- method. These fields are present only in responses to the \`GetService\`
-- method.
gasvsConfig :: Lens' GoogleAPIServiceusageV1Service (Maybe GoogleAPIServiceusageV1ServiceConfig)
gasvsConfig
  = lens _gasvsConfig (\ s a -> s{_gasvsConfig = a})

-- | The resource name of the consumer and service. A valid name would be: -
-- projects\/123\/services\/serviceusage.googleapis.com
gasvsName :: Lens' GoogleAPIServiceusageV1Service (Maybe Text)
gasvsName
  = lens _gasvsName (\ s a -> s{_gasvsName = a})

instance FromJSON GoogleAPIServiceusageV1Service
         where
        parseJSON
          = withObject "GoogleAPIServiceusageV1Service"
              (\ o ->
                 GoogleAPIServiceusageV1Service' <$>
                   (o .:? "parent") <*> (o .:? "state") <*>
                     (o .:? "config")
                     <*> (o .:? "name"))

instance ToJSON GoogleAPIServiceusageV1Service where
        toJSON GoogleAPIServiceusageV1Service'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _gasvsParent,
                  ("state" .=) <$> _gasvsState,
                  ("config" .=) <$> _gasvsConfig,
                  ("name" .=) <$> _gasvsName])

-- | Enum type definition.
--
-- /See:/ 'enum' smart constructor.
data Enum' =
  Enum''
    { _enuSourceContext :: !(Maybe SourceContext)
    , _enuEnumvalue     :: !(Maybe [EnumValue])
    , _enuName          :: !(Maybe Text)
    , _enuOptions       :: !(Maybe [Option])
    , _enuSyntax        :: !(Maybe EnumSyntax)
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
-- usage. The quota configuration works this way: - The service
-- configuration defines a set of metrics. - For API calls, the
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
    { _qLimits      :: !(Maybe [QuotaLimit])
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
    { _httprSelector           :: !(Maybe Text)
    , _httprPost               :: !(Maybe Text)
    , _httprBody               :: !(Maybe Text)
    , _httprCustom             :: !(Maybe CustomHTTPPattern)
    , _httprResponseBody       :: !(Maybe Text)
    , _httprPatch              :: !(Maybe Text)
    , _httprGet                :: !(Maybe Text)
    , _httprAdditionalBindings :: !(Maybe [HTTPRule])
    , _httprDelete             :: !(Maybe Text)
    , _httprPut                :: !(Maybe Text)
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

-- | The operation metadata returned for the batchend services operation.
--
-- /See:/ 'googleAPIServiceusageV1OperationMetadata' smart constructor.
newtype GoogleAPIServiceusageV1OperationMetadata =
  GoogleAPIServiceusageV1OperationMetadata'
    { _gasvomResourceNames :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleAPIServiceusageV1OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasvomResourceNames'
googleAPIServiceusageV1OperationMetadata
    :: GoogleAPIServiceusageV1OperationMetadata
googleAPIServiceusageV1OperationMetadata =
  GoogleAPIServiceusageV1OperationMetadata' {_gasvomResourceNames = Nothing}

-- | The full name of the resources that this operation is directly
-- associated with.
gasvomResourceNames :: Lens' GoogleAPIServiceusageV1OperationMetadata [Text]
gasvomResourceNames
  = lens _gasvomResourceNames
      (\ s a -> s{_gasvomResourceNames = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleAPIServiceusageV1OperationMetadata
         where
        parseJSON
          = withObject
              "GoogleAPIServiceusageV1OperationMetadata"
              (\ o ->
                 GoogleAPIServiceusageV1OperationMetadata' <$>
                   (o .:? "resourceNames" .!= mempty))

instance ToJSON
           GoogleAPIServiceusageV1OperationMetadata
         where
        toJSON GoogleAPIServiceusageV1OperationMetadata'{..}
          = object
              (catMaybes
                 [("resourceNames" .=) <$> _gasvomResourceNames])

-- | Configuration for an anthentication provider, including support for
-- [JSON Web Token
-- (JWT)](https:\/\/tools.ietf.org\/html\/draft-ietf-oauth-json-web-token-32).
--
-- /See:/ 'authProvider' smart constructor.
data AuthProvider =
  AuthProvider'
    { _apJWKsURI          :: !(Maybe Text)
    , _apAudiences        :: !(Maybe Text)
    , _apId               :: !(Maybe Text)
    , _apAuthorizationURL :: !(Maybe Text)
    , _apIssuer           :: !(Maybe Text)
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
    , _apId = Nothing
    , _apAuthorizationURL = Nothing
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
apAudiences :: Lens' AuthProvider (Maybe Text)
apAudiences
  = lens _apAudiences (\ s a -> s{_apAudiences = a})

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
                     (o .:? "id")
                     <*> (o .:? "authorizationUrl")
                     <*> (o .:? "issuer"))

instance ToJSON AuthProvider where
        toJSON AuthProvider'{..}
          = object
              (catMaybes
                 [("jwksUri" .=) <$> _apJWKsURI,
                  ("audiences" .=) <$> _apAudiences,
                  ("id" .=) <$> _apId,
                  ("authorizationUrl" .=) <$> _apAuthorizationURL,
                  ("issuer" .=) <$> _apIssuer])

-- | A context rule provides information about the context for an individual
-- API element.
--
-- /See:/ 'contextRule' smart constructor.
data ContextRule =
  ContextRule'
    { _crSelector                  :: !(Maybe Text)
    , _crRequested                 :: !(Maybe [Text])
    , _crAllowedRequestExtensions  :: !(Maybe [Text])
    , _crProvided                  :: !(Maybe [Text])
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

-- | The configuration of the service.
--
-- /See:/ 'googleAPIServiceusageV1ServiceConfig' smart constructor.
data GoogleAPIServiceusageV1ServiceConfig =
  GoogleAPIServiceusageV1ServiceConfig'
    { _gasvscAuthentication :: !(Maybe Authentication)
    , _gasvscAPIs           :: !(Maybe [API])
    , _gasvscName           :: !(Maybe Text)
    , _gasvscDocumentation  :: !(Maybe Documentation)
    , _gasvscUsage          :: !(Maybe Usage)
    , _gasvscEndpoints      :: !(Maybe [Endpoint])
    , _gasvscTitle          :: !(Maybe Text)
    , _gasvscQuota          :: !(Maybe Quota)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleAPIServiceusageV1ServiceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasvscAuthentication'
--
-- * 'gasvscAPIs'
--
-- * 'gasvscName'
--
-- * 'gasvscDocumentation'
--
-- * 'gasvscUsage'
--
-- * 'gasvscEndpoints'
--
-- * 'gasvscTitle'
--
-- * 'gasvscQuota'
googleAPIServiceusageV1ServiceConfig
    :: GoogleAPIServiceusageV1ServiceConfig
googleAPIServiceusageV1ServiceConfig =
  GoogleAPIServiceusageV1ServiceConfig'
    { _gasvscAuthentication = Nothing
    , _gasvscAPIs = Nothing
    , _gasvscName = Nothing
    , _gasvscDocumentation = Nothing
    , _gasvscUsage = Nothing
    , _gasvscEndpoints = Nothing
    , _gasvscTitle = Nothing
    , _gasvscQuota = Nothing
    }

-- | Auth configuration. Contains only the OAuth rules.
gasvscAuthentication :: Lens' GoogleAPIServiceusageV1ServiceConfig (Maybe Authentication)
gasvscAuthentication
  = lens _gasvscAuthentication
      (\ s a -> s{_gasvscAuthentication = a})

-- | A list of API interfaces exported by this service. Contains only the
-- names, versions, and method names of the interfaces.
gasvscAPIs :: Lens' GoogleAPIServiceusageV1ServiceConfig [API]
gasvscAPIs
  = lens _gasvscAPIs (\ s a -> s{_gasvscAPIs = a}) .
      _Default
      . _Coerce

-- | The DNS address at which this service is available. An example DNS
-- address would be: \`calendar.googleapis.com\`.
gasvscName :: Lens' GoogleAPIServiceusageV1ServiceConfig (Maybe Text)
gasvscName
  = lens _gasvscName (\ s a -> s{_gasvscName = a})

-- | Additional API documentation. Contains only the summary and the
-- documentation URL.
gasvscDocumentation :: Lens' GoogleAPIServiceusageV1ServiceConfig (Maybe Documentation)
gasvscDocumentation
  = lens _gasvscDocumentation
      (\ s a -> s{_gasvscDocumentation = a})

-- | Configuration controlling usage of this service.
gasvscUsage :: Lens' GoogleAPIServiceusageV1ServiceConfig (Maybe Usage)
gasvscUsage
  = lens _gasvscUsage (\ s a -> s{_gasvscUsage = a})

-- | Configuration for network endpoints. Contains only the names and aliases
-- of the endpoints.
gasvscEndpoints :: Lens' GoogleAPIServiceusageV1ServiceConfig [Endpoint]
gasvscEndpoints
  = lens _gasvscEndpoints
      (\ s a -> s{_gasvscEndpoints = a})
      . _Default
      . _Coerce

-- | The product title for this service.
gasvscTitle :: Lens' GoogleAPIServiceusageV1ServiceConfig (Maybe Text)
gasvscTitle
  = lens _gasvscTitle (\ s a -> s{_gasvscTitle = a})

-- | Quota configuration.
gasvscQuota :: Lens' GoogleAPIServiceusageV1ServiceConfig (Maybe Quota)
gasvscQuota
  = lens _gasvscQuota (\ s a -> s{_gasvscQuota = a})

instance FromJSON
           GoogleAPIServiceusageV1ServiceConfig
         where
        parseJSON
          = withObject "GoogleAPIServiceusageV1ServiceConfig"
              (\ o ->
                 GoogleAPIServiceusageV1ServiceConfig' <$>
                   (o .:? "authentication") <*>
                     (o .:? "apis" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "documentation")
                     <*> (o .:? "usage")
                     <*> (o .:? "endpoints" .!= mempty)
                     <*> (o .:? "title")
                     <*> (o .:? "quota"))

instance ToJSON GoogleAPIServiceusageV1ServiceConfig
         where
        toJSON GoogleAPIServiceusageV1ServiceConfig'{..}
          = object
              (catMaybes
                 [("authentication" .=) <$> _gasvscAuthentication,
                  ("apis" .=) <$> _gasvscAPIs,
                  ("name" .=) <$> _gasvscName,
                  ("documentation" .=) <$> _gasvscDocumentation,
                  ("usage" .=) <$> _gasvscUsage,
                  ("endpoints" .=) <$> _gasvscEndpoints,
                  ("title" .=) <$> _gasvscTitle,
                  ("quota" .=) <$> _gasvscQuota])
