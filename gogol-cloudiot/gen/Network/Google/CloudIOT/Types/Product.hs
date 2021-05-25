{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudIOT.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudIOT.Types.Product where

import Network.Google.CloudIOT.Types.Sum
import Network.Google.Prelude

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

-- | Response for \`UnbindDeviceFromGateway\`.
--
-- /See:/ 'unbindDeviceFromGatewayResponse' smart constructor.
data UnbindDeviceFromGatewayResponse =
  UnbindDeviceFromGatewayResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UnbindDeviceFromGatewayResponse' with the minimum fields required to make a request.
--
unbindDeviceFromGatewayResponse
    :: UnbindDeviceFromGatewayResponse
unbindDeviceFromGatewayResponse = UnbindDeviceFromGatewayResponse'


instance FromJSON UnbindDeviceFromGatewayResponse
         where
        parseJSON
          = withObject "UnbindDeviceFromGatewayResponse"
              (\ o -> pure UnbindDeviceFromGatewayResponse')

instance ToJSON UnbindDeviceFromGatewayResponse where
        toJSON = const emptyObject

-- | The device state, as reported by the device.
--
-- /See:/ 'deviceState' smart constructor.
data DeviceState =
  DeviceState'
    { _dsUpdateTime :: !(Maybe DateTime')
    , _dsBinaryData :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeviceState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsUpdateTime'
--
-- * 'dsBinaryData'
deviceState
    :: DeviceState
deviceState = DeviceState' {_dsUpdateTime = Nothing, _dsBinaryData = Nothing}


-- | [Output only] The time at which this state version was updated in Cloud
-- IoT Core.
dsUpdateTime :: Lens' DeviceState (Maybe UTCTime)
dsUpdateTime
  = lens _dsUpdateTime (\ s a -> s{_dsUpdateTime = a})
      . mapping _DateTime

-- | The device state data.
dsBinaryData :: Lens' DeviceState (Maybe ByteString)
dsBinaryData
  = lens _dsBinaryData (\ s a -> s{_dsBinaryData = a})
      . mapping _Bytes

instance FromJSON DeviceState where
        parseJSON
          = withObject "DeviceState"
              (\ o ->
                 DeviceState' <$>
                   (o .:? "updateTime") <*> (o .:? "binaryData"))

instance ToJSON DeviceState where
        toJSON DeviceState'{..}
          = object
              (catMaybes
                 [("updateTime" .=) <$> _dsUpdateTime,
                  ("binaryData" .=) <$> _dsBinaryData])

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

-- | Response for \`ListDeviceRegistries\`.
--
-- /See:/ 'listDeviceRegistriesResponse' smart constructor.
data ListDeviceRegistriesResponse =
  ListDeviceRegistriesResponse'
    { _ldrrNextPageToken :: !(Maybe Text)
    , _ldrrDeviceRegistries :: !(Maybe [DeviceRegistry])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDeviceRegistriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrrNextPageToken'
--
-- * 'ldrrDeviceRegistries'
listDeviceRegistriesResponse
    :: ListDeviceRegistriesResponse
listDeviceRegistriesResponse =
  ListDeviceRegistriesResponse'
    {_ldrrNextPageToken = Nothing, _ldrrDeviceRegistries = Nothing}


-- | If not empty, indicates that there may be more registries that match the
-- request; this value should be passed in a new
-- \`ListDeviceRegistriesRequest\`.
ldrrNextPageToken :: Lens' ListDeviceRegistriesResponse (Maybe Text)
ldrrNextPageToken
  = lens _ldrrNextPageToken
      (\ s a -> s{_ldrrNextPageToken = a})

-- | The registries that matched the query.
ldrrDeviceRegistries :: Lens' ListDeviceRegistriesResponse [DeviceRegistry]
ldrrDeviceRegistries
  = lens _ldrrDeviceRegistries
      (\ s a -> s{_ldrrDeviceRegistries = a})
      . _Default
      . _Coerce

instance FromJSON ListDeviceRegistriesResponse where
        parseJSON
          = withObject "ListDeviceRegistriesResponse"
              (\ o ->
                 ListDeviceRegistriesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "deviceRegistries" .!= mempty))

instance ToJSON ListDeviceRegistriesResponse where
        toJSON ListDeviceRegistriesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldrrNextPageToken,
                  ("deviceRegistries" .=) <$> _ldrrDeviceRegistries])

-- | The device configuration. Eventually delivered to devices.
--
-- /See:/ 'deviceConfig' smart constructor.
data DeviceConfig =
  DeviceConfig'
    { _dcDeviceAckTime :: !(Maybe DateTime')
    , _dcCloudUpdateTime :: !(Maybe DateTime')
    , _dcBinaryData :: !(Maybe Bytes)
    , _dcVersion :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeviceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcDeviceAckTime'
--
-- * 'dcCloudUpdateTime'
--
-- * 'dcBinaryData'
--
-- * 'dcVersion'
deviceConfig
    :: DeviceConfig
deviceConfig =
  DeviceConfig'
    { _dcDeviceAckTime = Nothing
    , _dcCloudUpdateTime = Nothing
    , _dcBinaryData = Nothing
    , _dcVersion = Nothing
    }


-- | [Output only] The time at which Cloud IoT Core received the
-- acknowledgment from the device, indicating that the device has received
-- this configuration version. If this field is not present, the device has
-- not yet acknowledged that it received this version. Note that when the
-- config was sent to the device, many config versions may have been
-- available in Cloud IoT Core while the device was disconnected, and on
-- connection, only the latest version is sent to the device. Some versions
-- may never be sent to the device, and therefore are never acknowledged.
-- This timestamp is set by Cloud IoT Core.
dcDeviceAckTime :: Lens' DeviceConfig (Maybe UTCTime)
dcDeviceAckTime
  = lens _dcDeviceAckTime
      (\ s a -> s{_dcDeviceAckTime = a})
      . mapping _DateTime

-- | [Output only] The time at which this configuration version was updated
-- in Cloud IoT Core. This timestamp is set by the server.
dcCloudUpdateTime :: Lens' DeviceConfig (Maybe UTCTime)
dcCloudUpdateTime
  = lens _dcCloudUpdateTime
      (\ s a -> s{_dcCloudUpdateTime = a})
      . mapping _DateTime

-- | The device configuration data.
dcBinaryData :: Lens' DeviceConfig (Maybe ByteString)
dcBinaryData
  = lens _dcBinaryData (\ s a -> s{_dcBinaryData = a})
      . mapping _Bytes

-- | [Output only] The version of this update. The version number is assigned
-- by the server, and is always greater than 0 after device creation. The
-- version must be 0 on the \`CreateDevice\` request if a \`config\` is
-- specified; the response of \`CreateDevice\` will always have a value of
-- 1.
dcVersion :: Lens' DeviceConfig (Maybe Int64)
dcVersion
  = lens _dcVersion (\ s a -> s{_dcVersion = a}) .
      mapping _Coerce

instance FromJSON DeviceConfig where
        parseJSON
          = withObject "DeviceConfig"
              (\ o ->
                 DeviceConfig' <$>
                   (o .:? "deviceAckTime") <*> (o .:? "cloudUpdateTime")
                     <*> (o .:? "binaryData")
                     <*> (o .:? "version"))

instance ToJSON DeviceConfig where
        toJSON DeviceConfig'{..}
          = object
              (catMaybes
                 [("deviceAckTime" .=) <$> _dcDeviceAckTime,
                  ("cloudUpdateTime" .=) <$> _dcCloudUpdateTime,
                  ("binaryData" .=) <$> _dcBinaryData,
                  ("version" .=) <$> _dcVersion])

-- | Response for \`ListDeviceConfigVersions\`.
--
-- /See:/ 'listDeviceConfigVersionsResponse' smart constructor.
newtype ListDeviceConfigVersionsResponse =
  ListDeviceConfigVersionsResponse'
    { _ldcvrDeviceConfigs :: Maybe [DeviceConfig]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDeviceConfigVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldcvrDeviceConfigs'
listDeviceConfigVersionsResponse
    :: ListDeviceConfigVersionsResponse
listDeviceConfigVersionsResponse =
  ListDeviceConfigVersionsResponse' {_ldcvrDeviceConfigs = Nothing}


-- | The device configuration for the last few versions. Versions are listed
-- in decreasing order, starting from the most recent one.
ldcvrDeviceConfigs :: Lens' ListDeviceConfigVersionsResponse [DeviceConfig]
ldcvrDeviceConfigs
  = lens _ldcvrDeviceConfigs
      (\ s a -> s{_ldcvrDeviceConfigs = a})
      . _Default
      . _Coerce

instance FromJSON ListDeviceConfigVersionsResponse
         where
        parseJSON
          = withObject "ListDeviceConfigVersionsResponse"
              (\ o ->
                 ListDeviceConfigVersionsResponse' <$>
                   (o .:? "deviceConfigs" .!= mempty))

instance ToJSON ListDeviceConfigVersionsResponse
         where
        toJSON ListDeviceConfigVersionsResponse'{..}
          = object
              (catMaybes
                 [("deviceConfigs" .=) <$> _ldcvrDeviceConfigs])

-- | Gateway-related configuration and state.
--
-- /See:/ 'gatewayConfig' smart constructor.
data GatewayConfig =
  GatewayConfig'
    { _gcLastAccessedGatewayId :: !(Maybe Text)
    , _gcGatewayAuthMethod :: !(Maybe GatewayConfigGatewayAuthMethod)
    , _gcLastAccessedGatewayTime :: !(Maybe DateTime')
    , _gcGatewayType :: !(Maybe GatewayConfigGatewayType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GatewayConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcLastAccessedGatewayId'
--
-- * 'gcGatewayAuthMethod'
--
-- * 'gcLastAccessedGatewayTime'
--
-- * 'gcGatewayType'
gatewayConfig
    :: GatewayConfig
gatewayConfig =
  GatewayConfig'
    { _gcLastAccessedGatewayId = Nothing
    , _gcGatewayAuthMethod = Nothing
    , _gcLastAccessedGatewayTime = Nothing
    , _gcGatewayType = Nothing
    }


-- | [Output only] The ID of the gateway the device accessed most recently.
gcLastAccessedGatewayId :: Lens' GatewayConfig (Maybe Text)
gcLastAccessedGatewayId
  = lens _gcLastAccessedGatewayId
      (\ s a -> s{_gcLastAccessedGatewayId = a})

-- | Indicates how to authorize and\/or authenticate devices to access the
-- gateway.
gcGatewayAuthMethod :: Lens' GatewayConfig (Maybe GatewayConfigGatewayAuthMethod)
gcGatewayAuthMethod
  = lens _gcGatewayAuthMethod
      (\ s a -> s{_gcGatewayAuthMethod = a})

-- | [Output only] The most recent time at which the device accessed the
-- gateway specified in \`last_accessed_gateway\`.
gcLastAccessedGatewayTime :: Lens' GatewayConfig (Maybe UTCTime)
gcLastAccessedGatewayTime
  = lens _gcLastAccessedGatewayTime
      (\ s a -> s{_gcLastAccessedGatewayTime = a})
      . mapping _DateTime

-- | Indicates whether the device is a gateway.
gcGatewayType :: Lens' GatewayConfig (Maybe GatewayConfigGatewayType)
gcGatewayType
  = lens _gcGatewayType
      (\ s a -> s{_gcGatewayType = a})

instance FromJSON GatewayConfig where
        parseJSON
          = withObject "GatewayConfig"
              (\ o ->
                 GatewayConfig' <$>
                   (o .:? "lastAccessedGatewayId") <*>
                     (o .:? "gatewayAuthMethod")
                     <*> (o .:? "lastAccessedGatewayTime")
                     <*> (o .:? "gatewayType"))

instance ToJSON GatewayConfig where
        toJSON GatewayConfig'{..}
          = object
              (catMaybes
                 [("lastAccessedGatewayId" .=) <$>
                    _gcLastAccessedGatewayId,
                  ("gatewayAuthMethod" .=) <$> _gcGatewayAuthMethod,
                  ("lastAccessedGatewayTime" .=) <$>
                    _gcLastAccessedGatewayTime,
                  ("gatewayType" .=) <$> _gcGatewayType])

-- | Response for \`ListDeviceStates\`.
--
-- /See:/ 'listDeviceStatesResponse' smart constructor.
newtype ListDeviceStatesResponse =
  ListDeviceStatesResponse'
    { _ldsrDeviceStates :: Maybe [DeviceState]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDeviceStatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldsrDeviceStates'
listDeviceStatesResponse
    :: ListDeviceStatesResponse
listDeviceStatesResponse =
  ListDeviceStatesResponse' {_ldsrDeviceStates = Nothing}


-- | The last few device states. States are listed in descending order of
-- server update time, starting from the most recent one.
ldsrDeviceStates :: Lens' ListDeviceStatesResponse [DeviceState]
ldsrDeviceStates
  = lens _ldsrDeviceStates
      (\ s a -> s{_ldsrDeviceStates = a})
      . _Default
      . _Coerce

instance FromJSON ListDeviceStatesResponse where
        parseJSON
          = withObject "ListDeviceStatesResponse"
              (\ o ->
                 ListDeviceStatesResponse' <$>
                   (o .:? "deviceStates" .!= mempty))

instance ToJSON ListDeviceStatesResponse where
        toJSON ListDeviceStatesResponse'{..}
          = object
              (catMaybes
                 [("deviceStates" .=) <$> _ldsrDeviceStates])

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

-- | The configuration for notification of new states received from the
-- device.
--
-- /See:/ 'stateNotificationConfig' smart constructor.
newtype StateNotificationConfig =
  StateNotificationConfig'
    { _sncPubsubTopicName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StateNotificationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sncPubsubTopicName'
stateNotificationConfig
    :: StateNotificationConfig
stateNotificationConfig =
  StateNotificationConfig' {_sncPubsubTopicName = Nothing}


-- | A Cloud Pub\/Sub topic name. For example,
-- \`projects\/myProject\/topics\/deviceEvents\`.
sncPubsubTopicName :: Lens' StateNotificationConfig (Maybe Text)
sncPubsubTopicName
  = lens _sncPubsubTopicName
      (\ s a -> s{_sncPubsubTopicName = a})

instance FromJSON StateNotificationConfig where
        parseJSON
          = withObject "StateNotificationConfig"
              (\ o ->
                 StateNotificationConfig' <$>
                   (o .:? "pubsubTopicName"))

instance ToJSON StateNotificationConfig where
        toJSON StateNotificationConfig'{..}
          = object
              (catMaybes
                 [("pubsubTopicName" .=) <$> _sncPubsubTopicName])

-- | The device resource.
--
-- /See:/ 'device' smart constructor.
data Device =
  Device'
    { _dState :: !(Maybe DeviceState)
    , _dLastHeartbeatTime :: !(Maybe DateTime')
    , _dGatewayConfig :: !(Maybe GatewayConfig)
    , _dLogLevel :: !(Maybe DeviceLogLevel)
    , _dConfig :: !(Maybe DeviceConfig)
    , _dCredentials :: !(Maybe [DeviceCredential])
    , _dNumId :: !(Maybe (Textual Word64))
    , _dLastErrorStatus :: !(Maybe Status)
    , _dLastConfigSendTime :: !(Maybe DateTime')
    , _dLastConfigAckTime :: !(Maybe DateTime')
    , _dName :: !(Maybe Text)
    , _dLastErrorTime :: !(Maybe DateTime')
    , _dMetadata :: !(Maybe DeviceMetadata)
    , _dId :: !(Maybe Text)
    , _dLastStateTime :: !(Maybe DateTime')
    , _dBlocked :: !(Maybe Bool)
    , _dLastEventTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Device' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dState'
--
-- * 'dLastHeartbeatTime'
--
-- * 'dGatewayConfig'
--
-- * 'dLogLevel'
--
-- * 'dConfig'
--
-- * 'dCredentials'
--
-- * 'dNumId'
--
-- * 'dLastErrorStatus'
--
-- * 'dLastConfigSendTime'
--
-- * 'dLastConfigAckTime'
--
-- * 'dName'
--
-- * 'dLastErrorTime'
--
-- * 'dMetadata'
--
-- * 'dId'
--
-- * 'dLastStateTime'
--
-- * 'dBlocked'
--
-- * 'dLastEventTime'
device
    :: Device
device =
  Device'
    { _dState = Nothing
    , _dLastHeartbeatTime = Nothing
    , _dGatewayConfig = Nothing
    , _dLogLevel = Nothing
    , _dConfig = Nothing
    , _dCredentials = Nothing
    , _dNumId = Nothing
    , _dLastErrorStatus = Nothing
    , _dLastConfigSendTime = Nothing
    , _dLastConfigAckTime = Nothing
    , _dName = Nothing
    , _dLastErrorTime = Nothing
    , _dMetadata = Nothing
    , _dId = Nothing
    , _dLastStateTime = Nothing
    , _dBlocked = Nothing
    , _dLastEventTime = Nothing
    }


-- | [Output only] The state most recently received from the device. If no
-- state has been reported, this field is not present.
dState :: Lens' Device (Maybe DeviceState)
dState = lens _dState (\ s a -> s{_dState = a})

-- | [Output only] The last time an MQTT \`PINGREQ\` was received. This field
-- applies only to devices connecting through MQTT. MQTT clients usually
-- only send \`PINGREQ\` messages if the connection is idle, and no other
-- messages have been sent. Timestamps are periodically collected and
-- written to storage; they may be stale by a few minutes.
dLastHeartbeatTime :: Lens' Device (Maybe UTCTime)
dLastHeartbeatTime
  = lens _dLastHeartbeatTime
      (\ s a -> s{_dLastHeartbeatTime = a})
      . mapping _DateTime

-- | Gateway-related configuration and state.
dGatewayConfig :: Lens' Device (Maybe GatewayConfig)
dGatewayConfig
  = lens _dGatewayConfig
      (\ s a -> s{_dGatewayConfig = a})

-- | **Beta Feature** The logging verbosity for device activity. If
-- unspecified, DeviceRegistry.log_level will be used.
dLogLevel :: Lens' Device (Maybe DeviceLogLevel)
dLogLevel
  = lens _dLogLevel (\ s a -> s{_dLogLevel = a})

-- | The most recent device configuration, which is eventually sent from
-- Cloud IoT Core to the device. If not present on creation, the
-- configuration will be initialized with an empty payload and version
-- value of \`1\`. To update this field after creation, use the
-- \`DeviceManager.ModifyCloudToDeviceConfig\` method.
dConfig :: Lens' Device (Maybe DeviceConfig)
dConfig = lens _dConfig (\ s a -> s{_dConfig = a})

-- | The credentials used to authenticate this device. To allow credential
-- rotation without interruption, multiple device credentials can be bound
-- to this device. No more than 3 credentials can be bound to a single
-- device at a time. When new credentials are added to a device, they are
-- verified against the registry credentials. For details, see the
-- description of the \`DeviceRegistry.credentials\` field.
dCredentials :: Lens' Device [DeviceCredential]
dCredentials
  = lens _dCredentials (\ s a -> s{_dCredentials = a})
      . _Default
      . _Coerce

-- | [Output only] A server-defined unique numeric ID for the device. This is
-- a more compact way to identify devices, and it is globally unique.
dNumId :: Lens' Device (Maybe Word64)
dNumId
  = lens _dNumId (\ s a -> s{_dNumId = a}) .
      mapping _Coerce

-- | [Output only] The error message of the most recent error, such as a
-- failure to publish to Cloud Pub\/Sub. \'last_error_time\' is the
-- timestamp of this field. If no errors have occurred, this field has an
-- empty message and the status code 0 == OK. Otherwise, this field is
-- expected to have a status code other than OK.
dLastErrorStatus :: Lens' Device (Maybe Status)
dLastErrorStatus
  = lens _dLastErrorStatus
      (\ s a -> s{_dLastErrorStatus = a})

-- | [Output only] The last time a cloud-to-device config version was sent to
-- the device.
dLastConfigSendTime :: Lens' Device (Maybe UTCTime)
dLastConfigSendTime
  = lens _dLastConfigSendTime
      (\ s a -> s{_dLastConfigSendTime = a})
      . mapping _DateTime

-- | [Output only] The last time a cloud-to-device config version
-- acknowledgment was received from the device. This field is only for
-- configurations sent through MQTT.
dLastConfigAckTime :: Lens' Device (Maybe UTCTime)
dLastConfigAckTime
  = lens _dLastConfigAckTime
      (\ s a -> s{_dLastConfigAckTime = a})
      . mapping _DateTime

-- | The resource path name. For example,
-- \`projects\/p1\/locations\/us-central1\/registries\/registry0\/devices\/dev0\`
-- or
-- \`projects\/p1\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}\`.
-- When \`name\` is populated as a response from the service, it always
-- ends in the device numeric ID.
dName :: Lens' Device (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | [Output only] The time the most recent error occurred, such as a failure
-- to publish to Cloud Pub\/Sub. This field is the timestamp of
-- \'last_error_status\'.
dLastErrorTime :: Lens' Device (Maybe UTCTime)
dLastErrorTime
  = lens _dLastErrorTime
      (\ s a -> s{_dLastErrorTime = a})
      . mapping _DateTime

-- | The metadata key-value pairs assigned to the device. This metadata is
-- not interpreted or indexed by Cloud IoT Core. It can be used to add
-- contextual information for the device. Keys must conform to the regular
-- expression a-zA-Z+ and be less than 128 bytes in length. Values are
-- free-form strings. Each value must be less than or equal to 32 KB in
-- size. The total size of all keys and values must be less than 256 KB,
-- and the maximum number of key-value pairs is 500.
dMetadata :: Lens' Device (Maybe DeviceMetadata)
dMetadata
  = lens _dMetadata (\ s a -> s{_dMetadata = a})

-- | The user-defined device identifier. The device ID must be unique within
-- a device registry.
dId :: Lens' Device (Maybe Text)
dId = lens _dId (\ s a -> s{_dId = a})

-- | [Output only] The last time a state event was received. Timestamps are
-- periodically collected and written to storage; they may be stale by a
-- few minutes.
dLastStateTime :: Lens' Device (Maybe UTCTime)
dLastStateTime
  = lens _dLastStateTime
      (\ s a -> s{_dLastStateTime = a})
      . mapping _DateTime

-- | If a device is blocked, connections or requests from this device will
-- fail. Can be used to temporarily prevent the device from connecting if,
-- for example, the sensor is generating bad data and needs maintenance.
dBlocked :: Lens' Device (Maybe Bool)
dBlocked = lens _dBlocked (\ s a -> s{_dBlocked = a})

-- | [Output only] The last time a telemetry event was received. Timestamps
-- are periodically collected and written to storage; they may be stale by
-- a few minutes.
dLastEventTime :: Lens' Device (Maybe UTCTime)
dLastEventTime
  = lens _dLastEventTime
      (\ s a -> s{_dLastEventTime = a})
      . mapping _DateTime

instance FromJSON Device where
        parseJSON
          = withObject "Device"
              (\ o ->
                 Device' <$>
                   (o .:? "state") <*> (o .:? "lastHeartbeatTime") <*>
                     (o .:? "gatewayConfig")
                     <*> (o .:? "logLevel")
                     <*> (o .:? "config")
                     <*> (o .:? "credentials" .!= mempty)
                     <*> (o .:? "numId")
                     <*> (o .:? "lastErrorStatus")
                     <*> (o .:? "lastConfigSendTime")
                     <*> (o .:? "lastConfigAckTime")
                     <*> (o .:? "name")
                     <*> (o .:? "lastErrorTime")
                     <*> (o .:? "metadata")
                     <*> (o .:? "id")
                     <*> (o .:? "lastStateTime")
                     <*> (o .:? "blocked")
                     <*> (o .:? "lastEventTime"))

instance ToJSON Device where
        toJSON Device'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _dState,
                  ("lastHeartbeatTime" .=) <$> _dLastHeartbeatTime,
                  ("gatewayConfig" .=) <$> _dGatewayConfig,
                  ("logLevel" .=) <$> _dLogLevel,
                  ("config" .=) <$> _dConfig,
                  ("credentials" .=) <$> _dCredentials,
                  ("numId" .=) <$> _dNumId,
                  ("lastErrorStatus" .=) <$> _dLastErrorStatus,
                  ("lastConfigSendTime" .=) <$> _dLastConfigSendTime,
                  ("lastConfigAckTime" .=) <$> _dLastConfigAckTime,
                  ("name" .=) <$> _dName,
                  ("lastErrorTime" .=) <$> _dLastErrorTime,
                  ("metadata" .=) <$> _dMetadata, ("id" .=) <$> _dId,
                  ("lastStateTime" .=) <$> _dLastStateTime,
                  ("blocked" .=) <$> _dBlocked,
                  ("lastEventTime" .=) <$> _dLastEventTime])

-- | A server-stored device credential used for authentication.
--
-- /See:/ 'deviceCredential' smart constructor.
data DeviceCredential =
  DeviceCredential'
    { _dcPublicKey :: !(Maybe PublicKeyCredential)
    , _dcExpirationTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeviceCredential' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcPublicKey'
--
-- * 'dcExpirationTime'
deviceCredential
    :: DeviceCredential
deviceCredential =
  DeviceCredential' {_dcPublicKey = Nothing, _dcExpirationTime = Nothing}


-- | A public key used to verify the signature of JSON Web Tokens (JWTs).
-- When adding a new device credential, either via device creation or via
-- modifications, this public key credential may be required to be signed
-- by one of the registry level certificates. More specifically, if the
-- registry contains at least one certificate, any new device credential
-- must be signed by one of the registry certificates. As a result, when
-- the registry contains certificates, only X.509 certificates are accepted
-- as device credentials. However, if the registry does not contain a
-- certificate, self-signed certificates and public keys will be accepted.
-- New device credentials must be different from every registry-level
-- certificate.
dcPublicKey :: Lens' DeviceCredential (Maybe PublicKeyCredential)
dcPublicKey
  = lens _dcPublicKey (\ s a -> s{_dcPublicKey = a})

-- | [Optional] The time at which this credential becomes invalid. This
-- credential will be ignored for new client authentication requests after
-- this timestamp; however, it will not be automatically deleted.
dcExpirationTime :: Lens' DeviceCredential (Maybe UTCTime)
dcExpirationTime
  = lens _dcExpirationTime
      (\ s a -> s{_dcExpirationTime = a})
      . mapping _DateTime

instance FromJSON DeviceCredential where
        parseJSON
          = withObject "DeviceCredential"
              (\ o ->
                 DeviceCredential' <$>
                   (o .:? "publicKey") <*> (o .:? "expirationTime"))

instance ToJSON DeviceCredential where
        toJSON DeviceCredential'{..}
          = object
              (catMaybes
                 [("publicKey" .=) <$> _dcPublicKey,
                  ("expirationTime" .=) <$> _dcExpirationTime])

-- | The configuration for forwarding telemetry events.
--
-- /See:/ 'eventNotificationConfig' smart constructor.
data EventNotificationConfig =
  EventNotificationConfig'
    { _encPubsubTopicName :: !(Maybe Text)
    , _encSubfolderMatches :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventNotificationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'encPubsubTopicName'
--
-- * 'encSubfolderMatches'
eventNotificationConfig
    :: EventNotificationConfig
eventNotificationConfig =
  EventNotificationConfig'
    {_encPubsubTopicName = Nothing, _encSubfolderMatches = Nothing}


-- | A Cloud Pub\/Sub topic name. For example,
-- \`projects\/myProject\/topics\/deviceEvents\`.
encPubsubTopicName :: Lens' EventNotificationConfig (Maybe Text)
encPubsubTopicName
  = lens _encPubsubTopicName
      (\ s a -> s{_encPubsubTopicName = a})

-- | If the subfolder name matches this string exactly, this configuration
-- will be used. The string must not include the leading \'\/\' character.
-- If empty, all strings are matched. This field is used only for telemetry
-- events; subfolders are not supported for state changes.
encSubfolderMatches :: Lens' EventNotificationConfig (Maybe Text)
encSubfolderMatches
  = lens _encSubfolderMatches
      (\ s a -> s{_encSubfolderMatches = a})

instance FromJSON EventNotificationConfig where
        parseJSON
          = withObject "EventNotificationConfig"
              (\ o ->
                 EventNotificationConfig' <$>
                   (o .:? "pubsubTopicName") <*>
                     (o .:? "subfolderMatches"))

instance ToJSON EventNotificationConfig where
        toJSON EventNotificationConfig'{..}
          = object
              (catMaybes
                 [("pubsubTopicName" .=) <$> _encPubsubTopicName,
                  ("subfolderMatches" .=) <$> _encSubfolderMatches])

-- | Details of an X.509 certificate. For informational purposes only.
--
-- /See:/ 'x509CertificateDetails' smart constructor.
data X509CertificateDetails =
  X509CertificateDetails'
    { _xcdSubject :: !(Maybe Text)
    , _xcdExpiryTime :: !(Maybe DateTime')
    , _xcdStartTime :: !(Maybe DateTime')
    , _xcdSignatureAlgorithm :: !(Maybe Text)
    , _xcdIssuer :: !(Maybe Text)
    , _xcdPublicKeyType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'X509CertificateDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'xcdSubject'
--
-- * 'xcdExpiryTime'
--
-- * 'xcdStartTime'
--
-- * 'xcdSignatureAlgorithm'
--
-- * 'xcdIssuer'
--
-- * 'xcdPublicKeyType'
x509CertificateDetails
    :: X509CertificateDetails
x509CertificateDetails =
  X509CertificateDetails'
    { _xcdSubject = Nothing
    , _xcdExpiryTime = Nothing
    , _xcdStartTime = Nothing
    , _xcdSignatureAlgorithm = Nothing
    , _xcdIssuer = Nothing
    , _xcdPublicKeyType = Nothing
    }


-- | The entity the certificate and public key belong to.
xcdSubject :: Lens' X509CertificateDetails (Maybe Text)
xcdSubject
  = lens _xcdSubject (\ s a -> s{_xcdSubject = a})

-- | The time the certificate becomes invalid.
xcdExpiryTime :: Lens' X509CertificateDetails (Maybe UTCTime)
xcdExpiryTime
  = lens _xcdExpiryTime
      (\ s a -> s{_xcdExpiryTime = a})
      . mapping _DateTime

-- | The time the certificate becomes valid.
xcdStartTime :: Lens' X509CertificateDetails (Maybe UTCTime)
xcdStartTime
  = lens _xcdStartTime (\ s a -> s{_xcdStartTime = a})
      . mapping _DateTime

-- | The algorithm used to sign the certificate.
xcdSignatureAlgorithm :: Lens' X509CertificateDetails (Maybe Text)
xcdSignatureAlgorithm
  = lens _xcdSignatureAlgorithm
      (\ s a -> s{_xcdSignatureAlgorithm = a})

-- | The entity that signed the certificate.
xcdIssuer :: Lens' X509CertificateDetails (Maybe Text)
xcdIssuer
  = lens _xcdIssuer (\ s a -> s{_xcdIssuer = a})

-- | The type of public key in the certificate.
xcdPublicKeyType :: Lens' X509CertificateDetails (Maybe Text)
xcdPublicKeyType
  = lens _xcdPublicKeyType
      (\ s a -> s{_xcdPublicKeyType = a})

instance FromJSON X509CertificateDetails where
        parseJSON
          = withObject "X509CertificateDetails"
              (\ o ->
                 X509CertificateDetails' <$>
                   (o .:? "subject") <*> (o .:? "expiryTime") <*>
                     (o .:? "startTime")
                     <*> (o .:? "signatureAlgorithm")
                     <*> (o .:? "issuer")
                     <*> (o .:? "publicKeyType"))

instance ToJSON X509CertificateDetails where
        toJSON X509CertificateDetails'{..}
          = object
              (catMaybes
                 [("subject" .=) <$> _xcdSubject,
                  ("expiryTime" .=) <$> _xcdExpiryTime,
                  ("startTime" .=) <$> _xcdStartTime,
                  ("signatureAlgorithm" .=) <$> _xcdSignatureAlgorithm,
                  ("issuer" .=) <$> _xcdIssuer,
                  ("publicKeyType" .=) <$> _xcdPublicKeyType])

-- | A public key certificate format and data.
--
-- /See:/ 'publicKeyCertificate' smart constructor.
data PublicKeyCertificate =
  PublicKeyCertificate'
    { _pkcFormat :: !(Maybe PublicKeyCertificateFormat)
    , _pkcCertificate :: !(Maybe Text)
    , _pkcX509Details :: !(Maybe X509CertificateDetails)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicKeyCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pkcFormat'
--
-- * 'pkcCertificate'
--
-- * 'pkcX509Details'
publicKeyCertificate
    :: PublicKeyCertificate
publicKeyCertificate =
  PublicKeyCertificate'
    {_pkcFormat = Nothing, _pkcCertificate = Nothing, _pkcX509Details = Nothing}


-- | The certificate format.
pkcFormat :: Lens' PublicKeyCertificate (Maybe PublicKeyCertificateFormat)
pkcFormat
  = lens _pkcFormat (\ s a -> s{_pkcFormat = a})

-- | The certificate data.
pkcCertificate :: Lens' PublicKeyCertificate (Maybe Text)
pkcCertificate
  = lens _pkcCertificate
      (\ s a -> s{_pkcCertificate = a})

-- | [Output only] The certificate details. Used only for X.509 certificates.
pkcX509Details :: Lens' PublicKeyCertificate (Maybe X509CertificateDetails)
pkcX509Details
  = lens _pkcX509Details
      (\ s a -> s{_pkcX509Details = a})

instance FromJSON PublicKeyCertificate where
        parseJSON
          = withObject "PublicKeyCertificate"
              (\ o ->
                 PublicKeyCertificate' <$>
                   (o .:? "format") <*> (o .:? "certificate") <*>
                     (o .:? "x509Details"))

instance ToJSON PublicKeyCertificate where
        toJSON PublicKeyCertificate'{..}
          = object
              (catMaybes
                 [("format" .=) <$> _pkcFormat,
                  ("certificate" .=) <$> _pkcCertificate,
                  ("x509Details" .=) <$> _pkcX509Details])

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

-- | The configuration of MQTT for a device registry.
--
-- /See:/ 'mqttConfig' smart constructor.
newtype MqttConfig =
  MqttConfig'
    { _mcMqttEnabledState :: Maybe MqttConfigMqttEnabledState
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MqttConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcMqttEnabledState'
mqttConfig
    :: MqttConfig
mqttConfig = MqttConfig' {_mcMqttEnabledState = Nothing}


-- | If enabled, allows connections using the MQTT protocol. Otherwise, MQTT
-- connections to this registry will fail.
mcMqttEnabledState :: Lens' MqttConfig (Maybe MqttConfigMqttEnabledState)
mcMqttEnabledState
  = lens _mcMqttEnabledState
      (\ s a -> s{_mcMqttEnabledState = a})

instance FromJSON MqttConfig where
        parseJSON
          = withObject "MqttConfig"
              (\ o -> MqttConfig' <$> (o .:? "mqttEnabledState"))

instance ToJSON MqttConfig where
        toJSON MqttConfig'{..}
          = object
              (catMaybes
                 [("mqttEnabledState" .=) <$> _mcMqttEnabledState])

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

-- | A server-stored registry credential used to validate device credentials.
--
-- /See:/ 'registryCredential' smart constructor.
newtype RegistryCredential =
  RegistryCredential'
    { _rcPublicKeyCertificate :: Maybe PublicKeyCertificate
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegistryCredential' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcPublicKeyCertificate'
registryCredential
    :: RegistryCredential
registryCredential = RegistryCredential' {_rcPublicKeyCertificate = Nothing}


-- | A public key certificate used to verify the device credentials.
rcPublicKeyCertificate :: Lens' RegistryCredential (Maybe PublicKeyCertificate)
rcPublicKeyCertificate
  = lens _rcPublicKeyCertificate
      (\ s a -> s{_rcPublicKeyCertificate = a})

instance FromJSON RegistryCredential where
        parseJSON
          = withObject "RegistryCredential"
              (\ o ->
                 RegistryCredential' <$>
                   (o .:? "publicKeyCertificate"))

instance ToJSON RegistryCredential where
        toJSON RegistryCredential'{..}
          = object
              (catMaybes
                 [("publicKeyCertificate" .=) <$>
                    _rcPublicKeyCertificate])

-- | Request for \`SendCommandToDevice\`.
--
-- /See:/ 'sendCommandToDeviceRequest' smart constructor.
data SendCommandToDeviceRequest =
  SendCommandToDeviceRequest'
    { _sctdrBinaryData :: !(Maybe Bytes)
    , _sctdrSubfolder :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SendCommandToDeviceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sctdrBinaryData'
--
-- * 'sctdrSubfolder'
sendCommandToDeviceRequest
    :: SendCommandToDeviceRequest
sendCommandToDeviceRequest =
  SendCommandToDeviceRequest'
    {_sctdrBinaryData = Nothing, _sctdrSubfolder = Nothing}


-- | Required. The command data to send to the device.
sctdrBinaryData :: Lens' SendCommandToDeviceRequest (Maybe ByteString)
sctdrBinaryData
  = lens _sctdrBinaryData
      (\ s a -> s{_sctdrBinaryData = a})
      . mapping _Bytes

-- | Optional subfolder for the command. If empty, the command will be
-- delivered to the \/devices\/{device-id}\/commands topic, otherwise it
-- will be delivered to the \/devices\/{device-id}\/commands\/{subfolder}
-- topic. Multi-level subfolders are allowed. This field must not have more
-- than 256 characters, and must not contain any MQTT wildcards (\"+\" or
-- \"#\") or null characters.
sctdrSubfolder :: Lens' SendCommandToDeviceRequest (Maybe Text)
sctdrSubfolder
  = lens _sctdrSubfolder
      (\ s a -> s{_sctdrSubfolder = a})

instance FromJSON SendCommandToDeviceRequest where
        parseJSON
          = withObject "SendCommandToDeviceRequest"
              (\ o ->
                 SendCommandToDeviceRequest' <$>
                   (o .:? "binaryData") <*> (o .:? "subfolder"))

instance ToJSON SendCommandToDeviceRequest where
        toJSON SendCommandToDeviceRequest'{..}
          = object
              (catMaybes
                 [("binaryData" .=) <$> _sctdrBinaryData,
                  ("subfolder" .=) <$> _sctdrSubfolder])

-- | Response for \`BindDeviceToGateway\`.
--
-- /See:/ 'bindDeviceToGatewayResponse' smart constructor.
data BindDeviceToGatewayResponse =
  BindDeviceToGatewayResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BindDeviceToGatewayResponse' with the minimum fields required to make a request.
--
bindDeviceToGatewayResponse
    :: BindDeviceToGatewayResponse
bindDeviceToGatewayResponse = BindDeviceToGatewayResponse'


instance FromJSON BindDeviceToGatewayResponse where
        parseJSON
          = withObject "BindDeviceToGatewayResponse"
              (\ o -> pure BindDeviceToGatewayResponse')

instance ToJSON BindDeviceToGatewayResponse where
        toJSON = const emptyObject

-- | The configuration of the HTTP bridge for a device registry.
--
-- /See:/ 'hTTPConfig' smart constructor.
newtype HTTPConfig =
  HTTPConfig'
    { _httpcHTTPEnabledState :: Maybe HTTPConfigHTTPEnabledState
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httpcHTTPEnabledState'
hTTPConfig
    :: HTTPConfig
hTTPConfig = HTTPConfig' {_httpcHTTPEnabledState = Nothing}


-- | If enabled, allows devices to use DeviceService via the HTTP protocol.
-- Otherwise, any requests to DeviceService will fail for this registry.
httpcHTTPEnabledState :: Lens' HTTPConfig (Maybe HTTPConfigHTTPEnabledState)
httpcHTTPEnabledState
  = lens _httpcHTTPEnabledState
      (\ s a -> s{_httpcHTTPEnabledState = a})

instance FromJSON HTTPConfig where
        parseJSON
          = withObject "HTTPConfig"
              (\ o -> HTTPConfig' <$> (o .:? "httpEnabledState"))

instance ToJSON HTTPConfig where
        toJSON HTTPConfig'{..}
          = object
              (catMaybes
                 [("httpEnabledState" .=) <$> _httpcHTTPEnabledState])

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

-- | Response for \`ListDevices\`.
--
-- /See:/ 'listDevicesResponse' smart constructor.
data ListDevicesResponse =
  ListDevicesResponse'
    { _ldrNextPageToken :: !(Maybe Text)
    , _ldrDevices :: !(Maybe [Device])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDevicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrNextPageToken'
--
-- * 'ldrDevices'
listDevicesResponse
    :: ListDevicesResponse
listDevicesResponse =
  ListDevicesResponse' {_ldrNextPageToken = Nothing, _ldrDevices = Nothing}


-- | If not empty, indicates that there may be more devices that match the
-- request; this value should be passed in a new \`ListDevicesRequest\`.
ldrNextPageToken :: Lens' ListDevicesResponse (Maybe Text)
ldrNextPageToken
  = lens _ldrNextPageToken
      (\ s a -> s{_ldrNextPageToken = a})

-- | The devices that match the request.
ldrDevices :: Lens' ListDevicesResponse [Device]
ldrDevices
  = lens _ldrDevices (\ s a -> s{_ldrDevices = a}) .
      _Default
      . _Coerce

instance FromJSON ListDevicesResponse where
        parseJSON
          = withObject "ListDevicesResponse"
              (\ o ->
                 ListDevicesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "devices" .!= mempty))

instance ToJSON ListDevicesResponse where
        toJSON ListDevicesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldrNextPageToken,
                  ("devices" .=) <$> _ldrDevices])

-- | The metadata key-value pairs assigned to the device. This metadata is
-- not interpreted or indexed by Cloud IoT Core. It can be used to add
-- contextual information for the device. Keys must conform to the regular
-- expression a-zA-Z+ and be less than 128 bytes in length. Values are
-- free-form strings. Each value must be less than or equal to 32 KB in
-- size. The total size of all keys and values must be less than 256 KB,
-- and the maximum number of key-value pairs is 500.
--
-- /See:/ 'deviceMetadata' smart constructor.
newtype DeviceMetadata =
  DeviceMetadata'
    { _dmAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeviceMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmAddtional'
deviceMetadata
    :: HashMap Text Text -- ^ 'dmAddtional'
    -> DeviceMetadata
deviceMetadata pDmAddtional_ =
  DeviceMetadata' {_dmAddtional = _Coerce # pDmAddtional_}


dmAddtional :: Lens' DeviceMetadata (HashMap Text Text)
dmAddtional
  = lens _dmAddtional (\ s a -> s{_dmAddtional = a}) .
      _Coerce

instance FromJSON DeviceMetadata where
        parseJSON
          = withObject "DeviceMetadata"
              (\ o -> DeviceMetadata' <$> (parseJSONObject o))

instance ToJSON DeviceMetadata where
        toJSON = toJSON . _dmAddtional

-- | A container for a group of devices.
--
-- /See:/ 'deviceRegistry' smart constructor.
data DeviceRegistry =
  DeviceRegistry'
    { _drLogLevel :: !(Maybe DeviceRegistryLogLevel)
    , _drCredentials :: !(Maybe [RegistryCredential])
    , _drStateNotificationConfig :: !(Maybe StateNotificationConfig)
    , _drEventNotificationConfigs :: !(Maybe [EventNotificationConfig])
    , _drMqttConfig :: !(Maybe MqttConfig)
    , _drName :: !(Maybe Text)
    , _drHTTPConfig :: !(Maybe HTTPConfig)
    , _drId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeviceRegistry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drLogLevel'
--
-- * 'drCredentials'
--
-- * 'drStateNotificationConfig'
--
-- * 'drEventNotificationConfigs'
--
-- * 'drMqttConfig'
--
-- * 'drName'
--
-- * 'drHTTPConfig'
--
-- * 'drId'
deviceRegistry
    :: DeviceRegistry
deviceRegistry =
  DeviceRegistry'
    { _drLogLevel = Nothing
    , _drCredentials = Nothing
    , _drStateNotificationConfig = Nothing
    , _drEventNotificationConfigs = Nothing
    , _drMqttConfig = Nothing
    , _drName = Nothing
    , _drHTTPConfig = Nothing
    , _drId = Nothing
    }


-- | **Beta Feature** The default logging verbosity for activity from devices
-- in this registry. The verbosity level can be overridden by
-- Device.log_level.
drLogLevel :: Lens' DeviceRegistry (Maybe DeviceRegistryLogLevel)
drLogLevel
  = lens _drLogLevel (\ s a -> s{_drLogLevel = a})

-- | The credentials used to verify the device credentials. No more than 10
-- credentials can be bound to a single registry at a time. The
-- verification process occurs at the time of device creation or update. If
-- this field is empty, no verification is performed. Otherwise, the
-- credentials of a newly created device or added credentials of an updated
-- device should be signed with one of these registry credentials. Note,
-- however, that existing devices will never be affected by modifications
-- to this list of credentials: after a device has been successfully
-- created in a registry, it should be able to connect even if its registry
-- credentials are revoked, deleted, or modified.
drCredentials :: Lens' DeviceRegistry [RegistryCredential]
drCredentials
  = lens _drCredentials
      (\ s a -> s{_drCredentials = a})
      . _Default
      . _Coerce

-- | The configuration for notification of new states received from the
-- device. State updates are guaranteed to be stored in the state history,
-- but notifications to Cloud Pub\/Sub are not guaranteed. For example, if
-- permissions are misconfigured or the specified topic doesn\'t exist, no
-- notification will be published but the state will still be stored in
-- Cloud IoT Core.
drStateNotificationConfig :: Lens' DeviceRegistry (Maybe StateNotificationConfig)
drStateNotificationConfig
  = lens _drStateNotificationConfig
      (\ s a -> s{_drStateNotificationConfig = a})

-- | The configuration for notification of telemetry events received from the
-- device. All telemetry events that were successfully published by the
-- device and acknowledged by Cloud IoT Core are guaranteed to be delivered
-- to Cloud Pub\/Sub. If multiple configurations match a message, only the
-- first matching configuration is used. If you try to publish a device
-- telemetry event using MQTT without specifying a Cloud Pub\/Sub topic for
-- the device\'s registry, the connection closes automatically. If you try
-- to do so using an HTTP connection, an error is returned. Up to 10
-- configurations may be provided.
drEventNotificationConfigs :: Lens' DeviceRegistry [EventNotificationConfig]
drEventNotificationConfigs
  = lens _drEventNotificationConfigs
      (\ s a -> s{_drEventNotificationConfigs = a})
      . _Default
      . _Coerce

-- | The MQTT configuration for this device registry.
drMqttConfig :: Lens' DeviceRegistry (Maybe MqttConfig)
drMqttConfig
  = lens _drMqttConfig (\ s a -> s{_drMqttConfig = a})

-- | The resource path name. For example,
-- \`projects\/example-project\/locations\/us-central1\/registries\/my-registry\`.
drName :: Lens' DeviceRegistry (Maybe Text)
drName = lens _drName (\ s a -> s{_drName = a})

-- | The DeviceService (HTTP) configuration for this device registry.
drHTTPConfig :: Lens' DeviceRegistry (Maybe HTTPConfig)
drHTTPConfig
  = lens _drHTTPConfig (\ s a -> s{_drHTTPConfig = a})

-- | The identifier of this device registry. For example, \`myRegistry\`.
drId :: Lens' DeviceRegistry (Maybe Text)
drId = lens _drId (\ s a -> s{_drId = a})

instance FromJSON DeviceRegistry where
        parseJSON
          = withObject "DeviceRegistry"
              (\ o ->
                 DeviceRegistry' <$>
                   (o .:? "logLevel") <*>
                     (o .:? "credentials" .!= mempty)
                     <*> (o .:? "stateNotificationConfig")
                     <*> (o .:? "eventNotificationConfigs" .!= mempty)
                     <*> (o .:? "mqttConfig")
                     <*> (o .:? "name")
                     <*> (o .:? "httpConfig")
                     <*> (o .:? "id"))

instance ToJSON DeviceRegistry where
        toJSON DeviceRegistry'{..}
          = object
              (catMaybes
                 [("logLevel" .=) <$> _drLogLevel,
                  ("credentials" .=) <$> _drCredentials,
                  ("stateNotificationConfig" .=) <$>
                    _drStateNotificationConfig,
                  ("eventNotificationConfigs" .=) <$>
                    _drEventNotificationConfigs,
                  ("mqttConfig" .=) <$> _drMqttConfig,
                  ("name" .=) <$> _drName,
                  ("httpConfig" .=) <$> _drHTTPConfig,
                  ("id" .=) <$> _drId])

-- | A public key format and data.
--
-- /See:/ 'publicKeyCredential' smart constructor.
data PublicKeyCredential =
  PublicKeyCredential'
    { _pFormat :: !(Maybe PublicKeyCredentialFormat)
    , _pKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicKeyCredential' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pFormat'
--
-- * 'pKey'
publicKeyCredential
    :: PublicKeyCredential
publicKeyCredential = PublicKeyCredential' {_pFormat = Nothing, _pKey = Nothing}


-- | The format of the key.
pFormat :: Lens' PublicKeyCredential (Maybe PublicKeyCredentialFormat)
pFormat = lens _pFormat (\ s a -> s{_pFormat = a})

-- | The key data.
pKey :: Lens' PublicKeyCredential (Maybe Text)
pKey = lens _pKey (\ s a -> s{_pKey = a})

instance FromJSON PublicKeyCredential where
        parseJSON
          = withObject "PublicKeyCredential"
              (\ o ->
                 PublicKeyCredential' <$>
                   (o .:? "format") <*> (o .:? "key"))

instance ToJSON PublicKeyCredential where
        toJSON PublicKeyCredential'{..}
          = object
              (catMaybes
                 [("format" .=) <$> _pFormat, ("key" .=) <$> _pKey])

-- | Request for \`UnbindDeviceFromGateway\`.
--
-- /See:/ 'unbindDeviceFromGatewayRequest' smart constructor.
data UnbindDeviceFromGatewayRequest =
  UnbindDeviceFromGatewayRequest'
    { _udfgrDeviceId :: !(Maybe Text)
    , _udfgrGatewayId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UnbindDeviceFromGatewayRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udfgrDeviceId'
--
-- * 'udfgrGatewayId'
unbindDeviceFromGatewayRequest
    :: UnbindDeviceFromGatewayRequest
unbindDeviceFromGatewayRequest =
  UnbindDeviceFromGatewayRequest'
    {_udfgrDeviceId = Nothing, _udfgrGatewayId = Nothing}


-- | Required. The device to disassociate from the specified gateway. The
-- value of \`device_id\` can be either the device numeric ID or the
-- user-defined device identifier.
udfgrDeviceId :: Lens' UnbindDeviceFromGatewayRequest (Maybe Text)
udfgrDeviceId
  = lens _udfgrDeviceId
      (\ s a -> s{_udfgrDeviceId = a})

-- | Required. The value of \`gateway_id\` can be either the device numeric
-- ID or the user-defined device identifier.
udfgrGatewayId :: Lens' UnbindDeviceFromGatewayRequest (Maybe Text)
udfgrGatewayId
  = lens _udfgrGatewayId
      (\ s a -> s{_udfgrGatewayId = a})

instance FromJSON UnbindDeviceFromGatewayRequest
         where
        parseJSON
          = withObject "UnbindDeviceFromGatewayRequest"
              (\ o ->
                 UnbindDeviceFromGatewayRequest' <$>
                   (o .:? "deviceId") <*> (o .:? "gatewayId"))

instance ToJSON UnbindDeviceFromGatewayRequest where
        toJSON UnbindDeviceFromGatewayRequest'{..}
          = object
              (catMaybes
                 [("deviceId" .=) <$> _udfgrDeviceId,
                  ("gatewayId" .=) <$> _udfgrGatewayId])

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

-- | Response for \`SendCommandToDevice\`.
--
-- /See:/ 'sendCommandToDeviceResponse' smart constructor.
data SendCommandToDeviceResponse =
  SendCommandToDeviceResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SendCommandToDeviceResponse' with the minimum fields required to make a request.
--
sendCommandToDeviceResponse
    :: SendCommandToDeviceResponse
sendCommandToDeviceResponse = SendCommandToDeviceResponse'


instance FromJSON SendCommandToDeviceResponse where
        parseJSON
          = withObject "SendCommandToDeviceResponse"
              (\ o -> pure SendCommandToDeviceResponse')

instance ToJSON SendCommandToDeviceResponse where
        toJSON = const emptyObject

-- | Request for \`BindDeviceToGateway\`.
--
-- /See:/ 'bindDeviceToGatewayRequest' smart constructor.
data BindDeviceToGatewayRequest =
  BindDeviceToGatewayRequest'
    { _bdtgrDeviceId :: !(Maybe Text)
    , _bdtgrGatewayId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BindDeviceToGatewayRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdtgrDeviceId'
--
-- * 'bdtgrGatewayId'
bindDeviceToGatewayRequest
    :: BindDeviceToGatewayRequest
bindDeviceToGatewayRequest =
  BindDeviceToGatewayRequest'
    {_bdtgrDeviceId = Nothing, _bdtgrGatewayId = Nothing}


-- | Required. The device to associate with the specified gateway. The value
-- of \`device_id\` can be either the device numeric ID or the user-defined
-- device identifier.
bdtgrDeviceId :: Lens' BindDeviceToGatewayRequest (Maybe Text)
bdtgrDeviceId
  = lens _bdtgrDeviceId
      (\ s a -> s{_bdtgrDeviceId = a})

-- | Required. The value of \`gateway_id\` can be either the device numeric
-- ID or the user-defined device identifier.
bdtgrGatewayId :: Lens' BindDeviceToGatewayRequest (Maybe Text)
bdtgrGatewayId
  = lens _bdtgrGatewayId
      (\ s a -> s{_bdtgrGatewayId = a})

instance FromJSON BindDeviceToGatewayRequest where
        parseJSON
          = withObject "BindDeviceToGatewayRequest"
              (\ o ->
                 BindDeviceToGatewayRequest' <$>
                   (o .:? "deviceId") <*> (o .:? "gatewayId"))

instance ToJSON BindDeviceToGatewayRequest where
        toJSON BindDeviceToGatewayRequest'{..}
          = object
              (catMaybes
                 [("deviceId" .=) <$> _bdtgrDeviceId,
                  ("gatewayId" .=) <$> _bdtgrGatewayId])

-- | Request for \`ModifyCloudToDeviceConfig\`.
--
-- /See:/ 'modifyCloudToDeviceConfigRequest' smart constructor.
data ModifyCloudToDeviceConfigRequest =
  ModifyCloudToDeviceConfigRequest'
    { _mctdcrVersionToUpdate :: !(Maybe (Textual Int64))
    , _mctdcrBinaryData :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModifyCloudToDeviceConfigRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mctdcrVersionToUpdate'
--
-- * 'mctdcrBinaryData'
modifyCloudToDeviceConfigRequest
    :: ModifyCloudToDeviceConfigRequest
modifyCloudToDeviceConfigRequest =
  ModifyCloudToDeviceConfigRequest'
    {_mctdcrVersionToUpdate = Nothing, _mctdcrBinaryData = Nothing}


-- | The version number to update. If this value is zero, it will not check
-- the version number of the server and will always update the current
-- version; otherwise, this update will fail if the version number found on
-- the server does not match this version number. This is used to support
-- multiple simultaneous updates without losing data.
mctdcrVersionToUpdate :: Lens' ModifyCloudToDeviceConfigRequest (Maybe Int64)
mctdcrVersionToUpdate
  = lens _mctdcrVersionToUpdate
      (\ s a -> s{_mctdcrVersionToUpdate = a})
      . mapping _Coerce

-- | Required. The configuration data for the device.
mctdcrBinaryData :: Lens' ModifyCloudToDeviceConfigRequest (Maybe ByteString)
mctdcrBinaryData
  = lens _mctdcrBinaryData
      (\ s a -> s{_mctdcrBinaryData = a})
      . mapping _Bytes

instance FromJSON ModifyCloudToDeviceConfigRequest
         where
        parseJSON
          = withObject "ModifyCloudToDeviceConfigRequest"
              (\ o ->
                 ModifyCloudToDeviceConfigRequest' <$>
                   (o .:? "versionToUpdate") <*> (o .:? "binaryData"))

instance ToJSON ModifyCloudToDeviceConfigRequest
         where
        toJSON ModifyCloudToDeviceConfigRequest'{..}
          = object
              (catMaybes
                 [("versionToUpdate" .=) <$> _mctdcrVersionToUpdate,
                  ("binaryData" .=) <$> _mctdcrBinaryData])

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
