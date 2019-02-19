{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidManagement.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidManagement.Types.Product where

import           Network.Google.AndroidManagement.Types.Sum
import           Network.Google.Prelude

-- | The Status type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by gRPC (https:\/\/github.com\/grpc). The error model is
-- designed to be: Simple to use and understand for most users Flexible
-- enough to meet unexpected needsOverviewThe Status message contains three
-- pieces of data: error code, error message, and error details. The error
-- code should be an enum value of google.rpc.Code, but it may accept
-- additional error codes if needed. The error message should be a
-- developer-facing English message that helps developers understand and
-- resolve the error. If a localized user-facing error message is needed,
-- put the localized message in the error details or localize it in the
-- client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package google.rpc that can be used for common error conditions.Language
-- mappingThe Status message is the logical representation of the error
-- model, but it is not necessarily the actual wire format. When the Status
-- message is exposed in different client libraries and different wire
-- protocols, it can be mapped differently. For example, it will likely be
-- mapped to some exceptions in Java, but more likely mapped to some error
-- codes in C.Other usesThe error model and the Status message can be used
-- in a variety of environments, either with or without APIs, to provide a
-- consistent developer experience across different environments.Example
-- uses of this error model include: Partial errors. If a service needs to
-- return partial errors to the client, it may embed the Status in the
-- normal response to indicate the partial errors. Workflow errors. A
-- typical workflow has multiple steps. Each step may have a Status message
-- for error reporting. Batch operations. If a client uses batch request
-- and batch response, the Status message should be used directly inside
-- batch response, one for each error sub-response. Asynchronous
-- operations. If an API call embeds asynchronous operation results in its
-- response, the status of those operations should be represented directly
-- using the Status message. Logging. If some API errors are stored in
-- logs, the message Status could be used directly after any stripping
-- needed for security\/privacy reasons.
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

-- | Response to a request to list policies for a given enterprise.
--
-- /See:/ 'listPoliciesResponse' smart constructor.
data ListPoliciesResponse =
  ListPoliciesResponse'
    { _lprNextPageToken :: !(Maybe Text)
    , _lprPolicies      :: !(Maybe [Policy])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprNextPageToken'
--
-- * 'lprPolicies'
listPoliciesResponse
    :: ListPoliciesResponse
listPoliciesResponse =
  ListPoliciesResponse' {_lprNextPageToken = Nothing, _lprPolicies = Nothing}

-- | If there are more results, a token to retrieve next page of results.
lprNextPageToken :: Lens' ListPoliciesResponse (Maybe Text)
lprNextPageToken
  = lens _lprNextPageToken
      (\ s a -> s{_lprNextPageToken = a})

-- | The list of policies.
lprPolicies :: Lens' ListPoliciesResponse [Policy]
lprPolicies
  = lens _lprPolicies (\ s a -> s{_lprPolicies = a}) .
      _Default
      . _Coerce

instance FromJSON ListPoliciesResponse where
        parseJSON
          = withObject "ListPoliciesResponse"
              (\ o ->
                 ListPoliciesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "policies" .!= mempty))

instance ToJSON ListPoliciesResponse where
        toJSON ListPoliciesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lprNextPageToken,
                  ("policies" .=) <$> _lprPolicies])

-- | Information about device memory and storage.
--
-- /See:/ 'memoryInfo' smart constructor.
data MemoryInfo =
  MemoryInfo'
    { _miTotalInternalStorage :: !(Maybe (Textual Int64))
    , _miTotalRam             :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MemoryInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miTotalInternalStorage'
--
-- * 'miTotalRam'
memoryInfo
    :: MemoryInfo
memoryInfo =
  MemoryInfo' {_miTotalInternalStorage = Nothing, _miTotalRam = Nothing}

-- | Total internal storage on device in bytes.
miTotalInternalStorage :: Lens' MemoryInfo (Maybe Int64)
miTotalInternalStorage
  = lens _miTotalInternalStorage
      (\ s a -> s{_miTotalInternalStorage = a})
      . mapping _Coerce

-- | Total RAM on device in bytes.
miTotalRam :: Lens' MemoryInfo (Maybe Int64)
miTotalRam
  = lens _miTotalRam (\ s a -> s{_miTotalRam = a}) .
      mapping _Coerce

instance FromJSON MemoryInfo where
        parseJSON
          = withObject "MemoryInfo"
              (\ o ->
                 MemoryInfo' <$>
                   (o .:? "totalInternalStorage") <*>
                     (o .:? "totalRam"))

instance ToJSON MemoryInfo where
        toJSON MemoryInfo'{..}
          = object
              (catMaybes
                 [("totalInternalStorage" .=) <$>
                    _miTotalInternalStorage,
                  ("totalRam" .=) <$> _miTotalRam])

-- | A list of package names.
--
-- /See:/ 'packageNameList' smart constructor.
newtype PackageNameList =
  PackageNameList'
    { _pnlPackageNames :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PackageNameList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnlPackageNames'
packageNameList
    :: PackageNameList
packageNameList = PackageNameList' {_pnlPackageNames = Nothing}

-- | A list of package names.
pnlPackageNames :: Lens' PackageNameList [Text]
pnlPackageNames
  = lens _pnlPackageNames
      (\ s a -> s{_pnlPackageNames = a})
      . _Default
      . _Coerce

instance FromJSON PackageNameList where
        parseJSON
          = withObject "PackageNameList"
              (\ o ->
                 PackageNameList' <$>
                   (o .:? "packageNames" .!= mempty))

instance ToJSON PackageNameList where
        toJSON PackageNameList'{..}
          = object
              (catMaybes
                 [("packageNames" .=) <$> _pnlPackageNames])

-- | A command.
--
-- /See:/ 'command' smart constructor.
data Command =
  Command'
    { _cResetPasswordFlags :: !(Maybe [Text])
    , _cNewPassword        :: !(Maybe Text)
    , _cUserName           :: !(Maybe Text)
    , _cErrorCode          :: !(Maybe CommandErrorCode)
    , _cType               :: !(Maybe CommandType)
    , _cDuration           :: !(Maybe GDuration)
    , _cCreateTime         :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Command' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cResetPasswordFlags'
--
-- * 'cNewPassword'
--
-- * 'cUserName'
--
-- * 'cErrorCode'
--
-- * 'cType'
--
-- * 'cDuration'
--
-- * 'cCreateTime'
command
    :: Command
command =
  Command'
    { _cResetPasswordFlags = Nothing
    , _cNewPassword = Nothing
    , _cUserName = Nothing
    , _cErrorCode = Nothing
    , _cType = Nothing
    , _cDuration = Nothing
    , _cCreateTime = Nothing
    }

-- | For commands of type RESET_PASSWORD, optionally specifies flags.
cResetPasswordFlags :: Lens' Command [Text]
cResetPasswordFlags
  = lens _cResetPasswordFlags
      (\ s a -> s{_cResetPasswordFlags = a})
      . _Default
      . _Coerce

-- | For commands of type RESET_PASSWORD, optionally specifies the new
-- password.
cNewPassword :: Lens' Command (Maybe Text)
cNewPassword
  = lens _cNewPassword (\ s a -> s{_cNewPassword = a})

-- | The resource name of the user that owns the device in the form
-- enterprises\/{enterpriseId}\/users\/{userId}. This is automatically
-- generated by the server based on the device the command is sent to.
cUserName :: Lens' Command (Maybe Text)
cUserName
  = lens _cUserName (\ s a -> s{_cUserName = a})

-- | If the command failed, an error code explaining the failure. This is not
-- set when the command is cancelled by the caller.
cErrorCode :: Lens' Command (Maybe CommandErrorCode)
cErrorCode
  = lens _cErrorCode (\ s a -> s{_cErrorCode = a})

-- | The type of the command.
cType :: Lens' Command (Maybe CommandType)
cType = lens _cType (\ s a -> s{_cType = a})

-- | The duration for which the command is valid. The command will expire if
-- not executed by the device during this time. The default duration if
-- unspecified is ten minutes. There is no maximum duration.
cDuration :: Lens' Command (Maybe Scientific)
cDuration
  = lens _cDuration (\ s a -> s{_cDuration = a}) .
      mapping _GDuration

-- | The timestamp at which the command was created. The timestamp is
-- automatically generated by the server.
cCreateTime :: Lens' Command (Maybe UTCTime)
cCreateTime
  = lens _cCreateTime (\ s a -> s{_cCreateTime = a}) .
      mapping _DateTime

instance FromJSON Command where
        parseJSON
          = withObject "Command"
              (\ o ->
                 Command' <$>
                   (o .:? "resetPasswordFlags" .!= mempty) <*>
                     (o .:? "newPassword")
                     <*> (o .:? "userName")
                     <*> (o .:? "errorCode")
                     <*> (o .:? "type")
                     <*> (o .:? "duration")
                     <*> (o .:? "createTime"))

instance ToJSON Command where
        toJSON Command'{..}
          = object
              (catMaybes
                 [("resetPasswordFlags" .=) <$> _cResetPasswordFlags,
                  ("newPassword" .=) <$> _cNewPassword,
                  ("userName" .=) <$> _cUserName,
                  ("errorCode" .=) <$> _cErrorCode,
                  ("type" .=) <$> _cType,
                  ("duration" .=) <$> _cDuration,
                  ("createTime" .=) <$> _cCreateTime])

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

-- | Device display information.
--
-- /See:/ 'display' smart constructor.
data Display =
  Display'
    { _dHeight      :: !(Maybe (Textual Int32))
    , _dState       :: !(Maybe DisplayState)
    , _dWidth       :: !(Maybe (Textual Int32))
    , _dName        :: !(Maybe Text)
    , _dRefreshRate :: !(Maybe (Textual Int32))
    , _dDisplayId   :: !(Maybe (Textual Int32))
    , _dDensity     :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Display' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dHeight'
--
-- * 'dState'
--
-- * 'dWidth'
--
-- * 'dName'
--
-- * 'dRefreshRate'
--
-- * 'dDisplayId'
--
-- * 'dDensity'
display
    :: Display
display =
  Display'
    { _dHeight = Nothing
    , _dState = Nothing
    , _dWidth = Nothing
    , _dName = Nothing
    , _dRefreshRate = Nothing
    , _dDisplayId = Nothing
    , _dDensity = Nothing
    }

-- | Display height in pixels.
dHeight :: Lens' Display (Maybe Int32)
dHeight
  = lens _dHeight (\ s a -> s{_dHeight = a}) .
      mapping _Coerce

-- | State of the display.
dState :: Lens' Display (Maybe DisplayState)
dState = lens _dState (\ s a -> s{_dState = a})

-- | Display width in pixels.
dWidth :: Lens' Display (Maybe Int32)
dWidth
  = lens _dWidth (\ s a -> s{_dWidth = a}) .
      mapping _Coerce

-- | Name of the display.
dName :: Lens' Display (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | Refresh rate of the display in frames per second.
dRefreshRate :: Lens' Display (Maybe Int32)
dRefreshRate
  = lens _dRefreshRate (\ s a -> s{_dRefreshRate = a})
      . mapping _Coerce

-- | Unique display id.
dDisplayId :: Lens' Display (Maybe Int32)
dDisplayId
  = lens _dDisplayId (\ s a -> s{_dDisplayId = a}) .
      mapping _Coerce

-- | Display density expressed as dots-per-inch.
dDensity :: Lens' Display (Maybe Int32)
dDensity
  = lens _dDensity (\ s a -> s{_dDensity = a}) .
      mapping _Coerce

instance FromJSON Display where
        parseJSON
          = withObject "Display"
              (\ o ->
                 Display' <$>
                   (o .:? "height") <*> (o .:? "state") <*>
                     (o .:? "width")
                     <*> (o .:? "name")
                     <*> (o .:? "refreshRate")
                     <*> (o .:? "displayId")
                     <*> (o .:? "density"))

instance ToJSON Display where
        toJSON Display'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _dHeight,
                  ("state" .=) <$> _dState, ("width" .=) <$> _dWidth,
                  ("name" .=) <$> _dName,
                  ("refreshRate" .=) <$> _dRefreshRate,
                  ("displayId" .=) <$> _dDisplayId,
                  ("density" .=) <$> _dDensity])

-- | Configuration for an always-on VPN connection.
--
-- /See:/ 'alwaysOnVPNPackage' smart constructor.
data AlwaysOnVPNPackage =
  AlwaysOnVPNPackage'
    { _aovpLockdownEnabled :: !(Maybe Bool)
    , _aovpPackageName     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AlwaysOnVPNPackage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aovpLockdownEnabled'
--
-- * 'aovpPackageName'
alwaysOnVPNPackage
    :: AlwaysOnVPNPackage
alwaysOnVPNPackage =
  AlwaysOnVPNPackage'
    {_aovpLockdownEnabled = Nothing, _aovpPackageName = Nothing}

-- | Disallows networking when the VPN is not connected.
aovpLockdownEnabled :: Lens' AlwaysOnVPNPackage (Maybe Bool)
aovpLockdownEnabled
  = lens _aovpLockdownEnabled
      (\ s a -> s{_aovpLockdownEnabled = a})

-- | The package name of the VPN app.
aovpPackageName :: Lens' AlwaysOnVPNPackage (Maybe Text)
aovpPackageName
  = lens _aovpPackageName
      (\ s a -> s{_aovpPackageName = a})

instance FromJSON AlwaysOnVPNPackage where
        parseJSON
          = withObject "AlwaysOnVPNPackage"
              (\ o ->
                 AlwaysOnVPNPackage' <$>
                   (o .:? "lockdownEnabled") <*> (o .:? "packageName"))

instance ToJSON AlwaysOnVPNPackage where
        toJSON AlwaysOnVPNPackage'{..}
          = object
              (catMaybes
                 [("lockdownEnabled" .=) <$> _aovpLockdownEnabled,
                  ("packageName" .=) <$> _aovpPackageName])

-- | Network configuration for the device. See configure networks for more
-- information.
--
-- /See:/ 'policyOpenNetworkConfiguration' smart constructor.
newtype PolicyOpenNetworkConfiguration =
  PolicyOpenNetworkConfiguration'
    { _poncAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PolicyOpenNetworkConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poncAddtional'
policyOpenNetworkConfiguration
    :: HashMap Text JSONValue -- ^ 'poncAddtional'
    -> PolicyOpenNetworkConfiguration
policyOpenNetworkConfiguration pPoncAddtional_ =
  PolicyOpenNetworkConfiguration' {_poncAddtional = _Coerce # pPoncAddtional_}

-- | Properties of the object.
poncAddtional :: Lens' PolicyOpenNetworkConfiguration (HashMap Text JSONValue)
poncAddtional
  = lens _poncAddtional
      (\ s a -> s{_poncAddtional = a})
      . _Coerce

instance FromJSON PolicyOpenNetworkConfiguration
         where
        parseJSON
          = withObject "PolicyOpenNetworkConfiguration"
              (\ o ->
                 PolicyOpenNetworkConfiguration' <$>
                   (parseJSONObject o))

instance ToJSON PolicyOpenNetworkConfiguration where
        toJSON = toJSON . _poncAddtional

-- | An action to launch an app.
--
-- /See:/ 'launchAppAction' smart constructor.
newtype LaunchAppAction =
  LaunchAppAction'
    { _laaPackageName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LaunchAppAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laaPackageName'
launchAppAction
    :: LaunchAppAction
launchAppAction = LaunchAppAction' {_laaPackageName = Nothing}

-- | Package name of app to be launched
laaPackageName :: Lens' LaunchAppAction (Maybe Text)
laaPackageName
  = lens _laaPackageName
      (\ s a -> s{_laaPackageName = a})

instance FromJSON LaunchAppAction where
        parseJSON
          = withObject "LaunchAppAction"
              (\ o -> LaunchAppAction' <$> (o .:? "packageName"))

instance ToJSON LaunchAppAction where
        toJSON LaunchAppAction'{..}
          = object
              (catMaybes [("packageName" .=) <$> _laaPackageName])

-- | Hardware status. Temperatures may be compared to the temperature
-- thresholds available in hardwareInfo to determine hardware health.
--
-- /See:/ 'hardwareStatus' smart constructor.
data HardwareStatus =
  HardwareStatus'
    { _hsCPUTemperatures     :: !(Maybe [Textual Double])
    , _hsBatteryTemperatures :: !(Maybe [Textual Double])
    , _hsGpuTemperatures     :: !(Maybe [Textual Double])
    , _hsFanSpeeds           :: !(Maybe [Textual Double])
    , _hsSkinTemperatures    :: !(Maybe [Textual Double])
    , _hsCPUUsages           :: !(Maybe [Textual Double])
    , _hsCreateTime          :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'HardwareStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hsCPUTemperatures'
--
-- * 'hsBatteryTemperatures'
--
-- * 'hsGpuTemperatures'
--
-- * 'hsFanSpeeds'
--
-- * 'hsSkinTemperatures'
--
-- * 'hsCPUUsages'
--
-- * 'hsCreateTime'
hardwareStatus
    :: HardwareStatus
hardwareStatus =
  HardwareStatus'
    { _hsCPUTemperatures = Nothing
    , _hsBatteryTemperatures = Nothing
    , _hsGpuTemperatures = Nothing
    , _hsFanSpeeds = Nothing
    , _hsSkinTemperatures = Nothing
    , _hsCPUUsages = Nothing
    , _hsCreateTime = Nothing
    }

-- | Current CPU temperatures in Celsius for each CPU on the device.
hsCPUTemperatures :: Lens' HardwareStatus [Double]
hsCPUTemperatures
  = lens _hsCPUTemperatures
      (\ s a -> s{_hsCPUTemperatures = a})
      . _Default
      . _Coerce

-- | Current battery temperatures in Celsius for each battery on the device.
hsBatteryTemperatures :: Lens' HardwareStatus [Double]
hsBatteryTemperatures
  = lens _hsBatteryTemperatures
      (\ s a -> s{_hsBatteryTemperatures = a})
      . _Default
      . _Coerce

-- | Current GPU temperatures in Celsius for each GPU on the device.
hsGpuTemperatures :: Lens' HardwareStatus [Double]
hsGpuTemperatures
  = lens _hsGpuTemperatures
      (\ s a -> s{_hsGpuTemperatures = a})
      . _Default
      . _Coerce

-- | Fan speeds in RPM for each fan on the device. Empty array means that
-- there are no fans or fan speed is not supported on the system.
hsFanSpeeds :: Lens' HardwareStatus [Double]
hsFanSpeeds
  = lens _hsFanSpeeds (\ s a -> s{_hsFanSpeeds = a}) .
      _Default
      . _Coerce

-- | Current device skin temperatures in Celsius.
hsSkinTemperatures :: Lens' HardwareStatus [Double]
hsSkinTemperatures
  = lens _hsSkinTemperatures
      (\ s a -> s{_hsSkinTemperatures = a})
      . _Default
      . _Coerce

-- | CPU usages in percentage for each core available on the device. Usage is
-- 0 for each unplugged core. Empty array implies that CPU usage is not
-- supported in the system.
hsCPUUsages :: Lens' HardwareStatus [Double]
hsCPUUsages
  = lens _hsCPUUsages (\ s a -> s{_hsCPUUsages = a}) .
      _Default
      . _Coerce

-- | The time the measurements were taken.
hsCreateTime :: Lens' HardwareStatus (Maybe UTCTime)
hsCreateTime
  = lens _hsCreateTime (\ s a -> s{_hsCreateTime = a})
      . mapping _DateTime

instance FromJSON HardwareStatus where
        parseJSON
          = withObject "HardwareStatus"
              (\ o ->
                 HardwareStatus' <$>
                   (o .:? "cpuTemperatures" .!= mempty) <*>
                     (o .:? "batteryTemperatures" .!= mempty)
                     <*> (o .:? "gpuTemperatures" .!= mempty)
                     <*> (o .:? "fanSpeeds" .!= mempty)
                     <*> (o .:? "skinTemperatures" .!= mempty)
                     <*> (o .:? "cpuUsages" .!= mempty)
                     <*> (o .:? "createTime"))

instance ToJSON HardwareStatus where
        toJSON HardwareStatus'{..}
          = object
              (catMaybes
                 [("cpuTemperatures" .=) <$> _hsCPUTemperatures,
                  ("batteryTemperatures" .=) <$>
                    _hsBatteryTemperatures,
                  ("gpuTemperatures" .=) <$> _hsGpuTemperatures,
                  ("fanSpeeds" .=) <$> _hsFanSpeeds,
                  ("skinTemperatures" .=) <$> _hsSkinTemperatures,
                  ("cpuUsages" .=) <$> _hsCPUUsages,
                  ("createTime" .=) <$> _hsCreateTime])

-- | Information about an app.
--
-- /See:/ 'application' smart constructor.
data Application =
  Application'
    { _aManagedProperties :: !(Maybe [ManagedProperty])
    , _aName              :: !(Maybe Text)
    , _aPermissions       :: !(Maybe [ApplicationPermission])
    , _aTitle             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Application' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aManagedProperties'
--
-- * 'aName'
--
-- * 'aPermissions'
--
-- * 'aTitle'
application
    :: Application
application =
  Application'
    { _aManagedProperties = Nothing
    , _aName = Nothing
    , _aPermissions = Nothing
    , _aTitle = Nothing
    }

-- | The set of managed properties available to be pre-configured for the
-- app.
aManagedProperties :: Lens' Application [ManagedProperty]
aManagedProperties
  = lens _aManagedProperties
      (\ s a -> s{_aManagedProperties = a})
      . _Default
      . _Coerce

-- | The name of the app in the form
-- enterprises\/{enterpriseId}\/applications\/{package_name}.
aName :: Lens' Application (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | The permissions required by the app.
aPermissions :: Lens' Application [ApplicationPermission]
aPermissions
  = lens _aPermissions (\ s a -> s{_aPermissions = a})
      . _Default
      . _Coerce

-- | The title of the app. Localized.
aTitle :: Lens' Application (Maybe Text)
aTitle = lens _aTitle (\ s a -> s{_aTitle = a})

instance FromJSON Application where
        parseJSON
          = withObject "Application"
              (\ o ->
                 Application' <$>
                   (o .:? "managedProperties" .!= mempty) <*>
                     (o .:? "name")
                     <*> (o .:? "permissions" .!= mempty)
                     <*> (o .:? "title"))

instance ToJSON Application where
        toJSON Application'{..}
          = object
              (catMaybes
                 [("managedProperties" .=) <$> _aManagedProperties,
                  ("name" .=) <$> _aName,
                  ("permissions" .=) <$> _aPermissions,
                  ("title" .=) <$> _aTitle])

-- | Managed property.
--
-- /See:/ 'managedProperty' smart constructor.
data ManagedProperty =
  ManagedProperty'
    { _mpEntries          :: !(Maybe [ManagedPropertyEntry])
    , _mpNestedProperties :: !(Maybe [ManagedProperty])
    , _mpKey              :: !(Maybe Text)
    , _mpDefaultValue     :: !(Maybe JSONValue)
    , _mpTitle            :: !(Maybe Text)
    , _mpType             :: !(Maybe ManagedPropertyType)
    , _mpDescription      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpEntries'
--
-- * 'mpNestedProperties'
--
-- * 'mpKey'
--
-- * 'mpDefaultValue'
--
-- * 'mpTitle'
--
-- * 'mpType'
--
-- * 'mpDescription'
managedProperty
    :: ManagedProperty
managedProperty =
  ManagedProperty'
    { _mpEntries = Nothing
    , _mpNestedProperties = Nothing
    , _mpKey = Nothing
    , _mpDefaultValue = Nothing
    , _mpTitle = Nothing
    , _mpType = Nothing
    , _mpDescription = Nothing
    }

-- | For CHOICE or MULTISELECT properties, the list of possible entries.
mpEntries :: Lens' ManagedProperty [ManagedPropertyEntry]
mpEntries
  = lens _mpEntries (\ s a -> s{_mpEntries = a}) .
      _Default
      . _Coerce

-- | For BUNDLE_ARRAY properties, the list of nested properties. A
-- BUNDLE_ARRAY property is at most two levels deep.
mpNestedProperties :: Lens' ManagedProperty [ManagedProperty]
mpNestedProperties
  = lens _mpNestedProperties
      (\ s a -> s{_mpNestedProperties = a})
      . _Default
      . _Coerce

-- | The unique key that the app uses to identify the property, e.g.
-- \"com.google.android.gm.fieldname\".
mpKey :: Lens' ManagedProperty (Maybe Text)
mpKey = lens _mpKey (\ s a -> s{_mpKey = a})

-- | The default value of the property. BUNDLE_ARRAY properties don\'t have a
-- default value.
mpDefaultValue :: Lens' ManagedProperty (Maybe JSONValue)
mpDefaultValue
  = lens _mpDefaultValue
      (\ s a -> s{_mpDefaultValue = a})

-- | The name of the property. Localized.
mpTitle :: Lens' ManagedProperty (Maybe Text)
mpTitle = lens _mpTitle (\ s a -> s{_mpTitle = a})

-- | The type of the property.
mpType :: Lens' ManagedProperty (Maybe ManagedPropertyType)
mpType = lens _mpType (\ s a -> s{_mpType = a})

-- | A longer description of the property, providing more detail of what it
-- affects. Localized.
mpDescription :: Lens' ManagedProperty (Maybe Text)
mpDescription
  = lens _mpDescription
      (\ s a -> s{_mpDescription = a})

instance FromJSON ManagedProperty where
        parseJSON
          = withObject "ManagedProperty"
              (\ o ->
                 ManagedProperty' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "nestedProperties" .!= mempty)
                     <*> (o .:? "key")
                     <*> (o .:? "defaultValue")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON ManagedProperty where
        toJSON ManagedProperty'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _mpEntries,
                  ("nestedProperties" .=) <$> _mpNestedProperties,
                  ("key" .=) <$> _mpKey,
                  ("defaultValue" .=) <$> _mpDefaultValue,
                  ("title" .=) <$> _mpTitle, ("type" .=) <$> _mpType,
                  ("description" .=) <$> _mpDescription])

-- | Configuration info for an HTTP proxy. For a direct proxy, set the host,
-- port, and excluded_hosts fields. For a PAC script proxy, set the pac_uri
-- field.
--
-- /See:/ 'proxyInfo' smart constructor.
data ProxyInfo =
  ProxyInfo'
    { _piPacURI        :: !(Maybe Text)
    , _piHost          :: !(Maybe Text)
    , _piExcludedHosts :: !(Maybe [Text])
    , _piPort          :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProxyInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piPacURI'
--
-- * 'piHost'
--
-- * 'piExcludedHosts'
--
-- * 'piPort'
proxyInfo
    :: ProxyInfo
proxyInfo =
  ProxyInfo'
    { _piPacURI = Nothing
    , _piHost = Nothing
    , _piExcludedHosts = Nothing
    , _piPort = Nothing
    }

-- | The URI of the PAC script used to configure the proxy.
piPacURI :: Lens' ProxyInfo (Maybe Text)
piPacURI = lens _piPacURI (\ s a -> s{_piPacURI = a})

-- | The host of the direct proxy.
piHost :: Lens' ProxyInfo (Maybe Text)
piHost = lens _piHost (\ s a -> s{_piHost = a})

-- | For a direct proxy, the hosts for which the proxy is bypassed. The host
-- names may contain wildcards such as *.example.com.
piExcludedHosts :: Lens' ProxyInfo [Text]
piExcludedHosts
  = lens _piExcludedHosts
      (\ s a -> s{_piExcludedHosts = a})
      . _Default
      . _Coerce

-- | The port of the direct proxy.
piPort :: Lens' ProxyInfo (Maybe Int32)
piPort
  = lens _piPort (\ s a -> s{_piPort = a}) .
      mapping _Coerce

instance FromJSON ProxyInfo where
        parseJSON
          = withObject "ProxyInfo"
              (\ o ->
                 ProxyInfo' <$>
                   (o .:? "pacUri") <*> (o .:? "host") <*>
                     (o .:? "excludedHosts" .!= mempty)
                     <*> (o .:? "port"))

instance ToJSON ProxyInfo where
        toJSON ProxyInfo'{..}
          = object
              (catMaybes
                 [("pacUri" .=) <$> _piPacURI,
                  ("host" .=) <$> _piHost,
                  ("excludedHosts" .=) <$> _piExcludedHosts,
                  ("port" .=) <$> _piPort])

-- | A default activity for handling intents that match a particular intent
-- filter.
--
-- /See:/ 'persistentPreferredActivity' smart constructor.
data PersistentPreferredActivity =
  PersistentPreferredActivity'
    { _ppaActions          :: !(Maybe [Text])
    , _ppaCategories       :: !(Maybe [Text])
    , _ppaReceiverActivity :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PersistentPreferredActivity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppaActions'
--
-- * 'ppaCategories'
--
-- * 'ppaReceiverActivity'
persistentPreferredActivity
    :: PersistentPreferredActivity
persistentPreferredActivity =
  PersistentPreferredActivity'
    { _ppaActions = Nothing
    , _ppaCategories = Nothing
    , _ppaReceiverActivity = Nothing
    }

-- | The intent actions to match in the filter. If any actions are included
-- in the filter, then an intent\'s action must be one of those values for
-- it to match. If no actions are included, the intent action is ignored.
ppaActions :: Lens' PersistentPreferredActivity [Text]
ppaActions
  = lens _ppaActions (\ s a -> s{_ppaActions = a}) .
      _Default
      . _Coerce

-- | The intent categories to match in the filter. An intent includes the
-- categories that it requires, all of which must be included in the filter
-- in order to match. In other words, adding a category to the filter has
-- no impact on matching unless that category is specified in the intent.
ppaCategories :: Lens' PersistentPreferredActivity [Text]
ppaCategories
  = lens _ppaCategories
      (\ s a -> s{_ppaCategories = a})
      . _Default
      . _Coerce

-- | The activity that should be the default intent handler. This should be
-- an Android component name, e.g.
-- com.android.enterprise.app\/.MainActivity. Alternatively, the value may
-- be the package name of an app, which causes Android Device Policy to
-- choose an appropriate activity from the app to handle the intent.
ppaReceiverActivity :: Lens' PersistentPreferredActivity (Maybe Text)
ppaReceiverActivity
  = lens _ppaReceiverActivity
      (\ s a -> s{_ppaReceiverActivity = a})

instance FromJSON PersistentPreferredActivity where
        parseJSON
          = withObject "PersistentPreferredActivity"
              (\ o ->
                 PersistentPreferredActivity' <$>
                   (o .:? "actions" .!= mempty) <*>
                     (o .:? "categories" .!= mempty)
                     <*> (o .:? "receiverActivity"))

instance ToJSON PersistentPreferredActivity where
        toJSON PersistentPreferredActivity'{..}
          = object
              (catMaybes
                 [("actions" .=) <$> _ppaActions,
                  ("categories" .=) <$> _ppaCategories,
                  ("receiverActivity" .=) <$> _ppaReceiverActivity])

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

-- | If the value is false, it means the operation is still in progress. If
-- true, the operation is completed, and either error or response is
-- available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as Delete, the response is
-- google.protobuf.Empty. If the original method is standard
-- Get\/Create\/Update, the response should be the resource. For other
-- methods, the response should have the type XxxResponse, where Xxx is the
-- original method name. For example, if the original method name is
-- TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- name should have the format of operations\/some\/unique\/name.
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
-- JSON representation for Empty is empty JSON object {}.
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

-- | Data hosted at an external location. The data is to be downloaded by
-- Android Device Policy and verified against the hash.
--
-- /See:/ 'externalData' smart constructor.
data ExternalData =
  ExternalData'
    { _edURL        :: !(Maybe Text)
    , _edSha256Hash :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExternalData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edURL'
--
-- * 'edSha256Hash'
externalData
    :: ExternalData
externalData = ExternalData' {_edURL = Nothing, _edSha256Hash = Nothing}

-- | The absolute URL to the data, which must use either the http or https
-- scheme. Android Device Policy doesn\'t provide any credentials in the
-- GET request, so the URL must be publicly accessible. Including a long,
-- random component in the URL may be used to prevent attackers from
-- discovering the URL.
edURL :: Lens' ExternalData (Maybe Text)
edURL = lens _edURL (\ s a -> s{_edURL = a})

-- | The base-64 encoded SHA-256 hash of the content hosted at url. If the
-- content doesn\'t match this hash, Android Device Policy won\'t use the
-- data.
edSha256Hash :: Lens' ExternalData (Maybe Text)
edSha256Hash
  = lens _edSha256Hash (\ s a -> s{_edSha256Hash = a})

instance FromJSON ExternalData where
        parseJSON
          = withObject "ExternalData"
              (\ o ->
                 ExternalData' <$>
                   (o .:? "url") <*> (o .:? "sha256Hash"))

instance ToJSON ExternalData where
        toJSON ExternalData'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _edURL,
                  ("sha256Hash" .=) <$> _edSha256Hash])

-- | A compliance rule condition which is satisfied if the Android Framework
-- API level on the device doesn\'t meet a minimum requirement. There can
-- only be one rule with this type of condition per policy.
--
-- /See:/ 'apiLevelCondition' smart constructor.
newtype APILevelCondition =
  APILevelCondition'
    { _alcMinAPILevel :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'APILevelCondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alcMinAPILevel'
apiLevelCondition
    :: APILevelCondition
apiLevelCondition = APILevelCondition' {_alcMinAPILevel = Nothing}

-- | The minimum desired Android Framework API level. If the device doesn\'t
-- meet the minimum requirement, this condition is satisfied. Must be
-- greater than zero.
alcMinAPILevel :: Lens' APILevelCondition (Maybe Int32)
alcMinAPILevel
  = lens _alcMinAPILevel
      (\ s a -> s{_alcMinAPILevel = a})
      . mapping _Coerce

instance FromJSON APILevelCondition where
        parseJSON
          = withObject "APILevelCondition"
              (\ o -> APILevelCondition' <$> (o .:? "minApiLevel"))

instance ToJSON APILevelCondition where
        toJSON APILevelCondition'{..}
          = object
              (catMaybes [("minApiLevel" .=) <$> _alcMinAPILevel])

-- | Information about security related device settings on device.
--
-- /See:/ 'deviceSettings' smart constructor.
data DeviceSettings =
  DeviceSettings'
    { _dsIsEncrypted                :: !(Maybe Bool)
    , _dsAdbEnabled                 :: !(Maybe Bool)
    , _dsIsDeviceSecure             :: !(Maybe Bool)
    , _dsVerifyAppsEnabled          :: !(Maybe Bool)
    , _dsDevelopmentSettingsEnabled :: !(Maybe Bool)
    , _dsEncryptionStatus           :: !(Maybe DeviceSettingsEncryptionStatus)
    , _dsUnknownSourcesEnabled      :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeviceSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsIsEncrypted'
--
-- * 'dsAdbEnabled'
--
-- * 'dsIsDeviceSecure'
--
-- * 'dsVerifyAppsEnabled'
--
-- * 'dsDevelopmentSettingsEnabled'
--
-- * 'dsEncryptionStatus'
--
-- * 'dsUnknownSourcesEnabled'
deviceSettings
    :: DeviceSettings
deviceSettings =
  DeviceSettings'
    { _dsIsEncrypted = Nothing
    , _dsAdbEnabled = Nothing
    , _dsIsDeviceSecure = Nothing
    , _dsVerifyAppsEnabled = Nothing
    , _dsDevelopmentSettingsEnabled = Nothing
    , _dsEncryptionStatus = Nothing
    , _dsUnknownSourcesEnabled = Nothing
    }

-- | Whether the storage encryption is enabled.
dsIsEncrypted :: Lens' DeviceSettings (Maybe Bool)
dsIsEncrypted
  = lens _dsIsEncrypted
      (\ s a -> s{_dsIsEncrypted = a})

-- | Whether ADB
-- (https:\/\/developer.android.com\/studio\/command-line\/adb.html) is
-- enabled on the device.
dsAdbEnabled :: Lens' DeviceSettings (Maybe Bool)
dsAdbEnabled
  = lens _dsAdbEnabled (\ s a -> s{_dsAdbEnabled = a})

-- | Whether the device is secured with PIN\/password.
dsIsDeviceSecure :: Lens' DeviceSettings (Maybe Bool)
dsIsDeviceSecure
  = lens _dsIsDeviceSecure
      (\ s a -> s{_dsIsDeviceSecure = a})

-- | Whether Verify Apps (Google Play Protect
-- (https:\/\/support.google.com\/googleplay\/answer\/2812853)) is enabled
-- on the device.
dsVerifyAppsEnabled :: Lens' DeviceSettings (Maybe Bool)
dsVerifyAppsEnabled
  = lens _dsVerifyAppsEnabled
      (\ s a -> s{_dsVerifyAppsEnabled = a})

-- | Whether developer mode is enabled on the device.
dsDevelopmentSettingsEnabled :: Lens' DeviceSettings (Maybe Bool)
dsDevelopmentSettingsEnabled
  = lens _dsDevelopmentSettingsEnabled
      (\ s a -> s{_dsDevelopmentSettingsEnabled = a})

-- | Encryption status from DevicePolicyManager.
dsEncryptionStatus :: Lens' DeviceSettings (Maybe DeviceSettingsEncryptionStatus)
dsEncryptionStatus
  = lens _dsEncryptionStatus
      (\ s a -> s{_dsEncryptionStatus = a})

-- | Whether installing apps from unknown sources is enabled.
dsUnknownSourcesEnabled :: Lens' DeviceSettings (Maybe Bool)
dsUnknownSourcesEnabled
  = lens _dsUnknownSourcesEnabled
      (\ s a -> s{_dsUnknownSourcesEnabled = a})

instance FromJSON DeviceSettings where
        parseJSON
          = withObject "DeviceSettings"
              (\ o ->
                 DeviceSettings' <$>
                   (o .:? "isEncrypted") <*> (o .:? "adbEnabled") <*>
                     (o .:? "isDeviceSecure")
                     <*> (o .:? "verifyAppsEnabled")
                     <*> (o .:? "developmentSettingsEnabled")
                     <*> (o .:? "encryptionStatus")
                     <*> (o .:? "unknownSourcesEnabled"))

instance ToJSON DeviceSettings where
        toJSON DeviceSettings'{..}
          = object
              (catMaybes
                 [("isEncrypted" .=) <$> _dsIsEncrypted,
                  ("adbEnabled" .=) <$> _dsAdbEnabled,
                  ("isDeviceSecure" .=) <$> _dsIsDeviceSecure,
                  ("verifyAppsEnabled" .=) <$> _dsVerifyAppsEnabled,
                  ("developmentSettingsEnabled" .=) <$>
                    _dsDevelopmentSettingsEnabled,
                  ("encryptionStatus" .=) <$> _dsEncryptionStatus,
                  ("unknownSourcesEnabled" .=) <$>
                    _dsUnknownSourcesEnabled])

-- | Optional, a map containing configuration variables defined for the
-- configuration.
--
-- /See:/ 'managedConfigurationTemplateConfigurationVariables' smart constructor.
newtype ManagedConfigurationTemplateConfigurationVariables =
  ManagedConfigurationTemplateConfigurationVariables'
    { _mctcvAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedConfigurationTemplateConfigurationVariables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mctcvAddtional'
managedConfigurationTemplateConfigurationVariables
    :: HashMap Text Text -- ^ 'mctcvAddtional'
    -> ManagedConfigurationTemplateConfigurationVariables
managedConfigurationTemplateConfigurationVariables pMctcvAddtional_ =
  ManagedConfigurationTemplateConfigurationVariables'
    {_mctcvAddtional = _Coerce # pMctcvAddtional_}

mctcvAddtional :: Lens' ManagedConfigurationTemplateConfigurationVariables (HashMap Text Text)
mctcvAddtional
  = lens _mctcvAddtional
      (\ s a -> s{_mctcvAddtional = a})
      . _Coerce

instance FromJSON
           ManagedConfigurationTemplateConfigurationVariables
         where
        parseJSON
          = withObject
              "ManagedConfigurationTemplateConfigurationVariables"
              (\ o ->
                 ManagedConfigurationTemplateConfigurationVariables'
                   <$> (parseJSONObject o))

instance ToJSON
           ManagedConfigurationTemplateConfigurationVariables
         where
        toJSON = toJSON . _mctcvAddtional

-- | Information about device hardware. The fields related to temperature
-- thresholds are only available if hardwareStatusEnabled is true in the
-- device\'s policy.
--
-- /See:/ 'hardwareInfo' smart constructor.
data HardwareInfo =
  HardwareInfo'
    { _hiCPUThrottlingTemperatures     :: !(Maybe [Textual Double])
    , _hiManufacturer                  :: !(Maybe Text)
    , _hiBrand                         :: !(Maybe Text)
    , _hiCPUShutdownTemperatures       :: !(Maybe [Textual Double])
    , _hiBatteryThrottlingTemperatures :: !(Maybe [Textual Double])
    , _hiModel                         :: !(Maybe Text)
    , _hiBatteryShutdownTemperatures   :: !(Maybe [Textual Double])
    , _hiSkinThrottlingTemperatures    :: !(Maybe [Textual Double])
    , _hiGpuShutdownTemperatures       :: !(Maybe [Textual Double])
    , _hiGpuThrottlingTemperatures     :: !(Maybe [Textual Double])
    , _hiSkinShutdownTemperatures      :: !(Maybe [Textual Double])
    , _hiSerialNumber                  :: !(Maybe Text)
    , _hiDeviceBasebandVersion         :: !(Maybe Text)
    , _hiHardware                      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'HardwareInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hiCPUThrottlingTemperatures'
--
-- * 'hiManufacturer'
--
-- * 'hiBrand'
--
-- * 'hiCPUShutdownTemperatures'
--
-- * 'hiBatteryThrottlingTemperatures'
--
-- * 'hiModel'
--
-- * 'hiBatteryShutdownTemperatures'
--
-- * 'hiSkinThrottlingTemperatures'
--
-- * 'hiGpuShutdownTemperatures'
--
-- * 'hiGpuThrottlingTemperatures'
--
-- * 'hiSkinShutdownTemperatures'
--
-- * 'hiSerialNumber'
--
-- * 'hiDeviceBasebandVersion'
--
-- * 'hiHardware'
hardwareInfo
    :: HardwareInfo
hardwareInfo =
  HardwareInfo'
    { _hiCPUThrottlingTemperatures = Nothing
    , _hiManufacturer = Nothing
    , _hiBrand = Nothing
    , _hiCPUShutdownTemperatures = Nothing
    , _hiBatteryThrottlingTemperatures = Nothing
    , _hiModel = Nothing
    , _hiBatteryShutdownTemperatures = Nothing
    , _hiSkinThrottlingTemperatures = Nothing
    , _hiGpuShutdownTemperatures = Nothing
    , _hiGpuThrottlingTemperatures = Nothing
    , _hiSkinShutdownTemperatures = Nothing
    , _hiSerialNumber = Nothing
    , _hiDeviceBasebandVersion = Nothing
    , _hiHardware = Nothing
    }

-- | CPU throttling temperature thresholds in Celsius for each CPU on the
-- device.
hiCPUThrottlingTemperatures :: Lens' HardwareInfo [Double]
hiCPUThrottlingTemperatures
  = lens _hiCPUThrottlingTemperatures
      (\ s a -> s{_hiCPUThrottlingTemperatures = a})
      . _Default
      . _Coerce

-- | Manufacturer. For example, Motorola.
hiManufacturer :: Lens' HardwareInfo (Maybe Text)
hiManufacturer
  = lens _hiManufacturer
      (\ s a -> s{_hiManufacturer = a})

-- | Brand of the device. For example, Google.
hiBrand :: Lens' HardwareInfo (Maybe Text)
hiBrand = lens _hiBrand (\ s a -> s{_hiBrand = a})

-- | CPU shutdown temperature thresholds in Celsius for each CPU on the
-- device.
hiCPUShutdownTemperatures :: Lens' HardwareInfo [Double]
hiCPUShutdownTemperatures
  = lens _hiCPUShutdownTemperatures
      (\ s a -> s{_hiCPUShutdownTemperatures = a})
      . _Default
      . _Coerce

-- | Battery throttling temperature thresholds in Celsius for each battery on
-- the device.
hiBatteryThrottlingTemperatures :: Lens' HardwareInfo [Double]
hiBatteryThrottlingTemperatures
  = lens _hiBatteryThrottlingTemperatures
      (\ s a -> s{_hiBatteryThrottlingTemperatures = a})
      . _Default
      . _Coerce

-- | The model of the device. For example, Asus Nexus 7.
hiModel :: Lens' HardwareInfo (Maybe Text)
hiModel = lens _hiModel (\ s a -> s{_hiModel = a})

-- | Battery shutdown temperature thresholds in Celsius for each battery on
-- the device.
hiBatteryShutdownTemperatures :: Lens' HardwareInfo [Double]
hiBatteryShutdownTemperatures
  = lens _hiBatteryShutdownTemperatures
      (\ s a -> s{_hiBatteryShutdownTemperatures = a})
      . _Default
      . _Coerce

-- | Device skin throttling temperature thresholds in Celsius.
hiSkinThrottlingTemperatures :: Lens' HardwareInfo [Double]
hiSkinThrottlingTemperatures
  = lens _hiSkinThrottlingTemperatures
      (\ s a -> s{_hiSkinThrottlingTemperatures = a})
      . _Default
      . _Coerce

-- | GPU shutdown temperature thresholds in Celsius for each GPU on the
-- device.
hiGpuShutdownTemperatures :: Lens' HardwareInfo [Double]
hiGpuShutdownTemperatures
  = lens _hiGpuShutdownTemperatures
      (\ s a -> s{_hiGpuShutdownTemperatures = a})
      . _Default
      . _Coerce

-- | GPU throttling temperature thresholds in Celsius for each GPU on the
-- device.
hiGpuThrottlingTemperatures :: Lens' HardwareInfo [Double]
hiGpuThrottlingTemperatures
  = lens _hiGpuThrottlingTemperatures
      (\ s a -> s{_hiGpuThrottlingTemperatures = a})
      . _Default
      . _Coerce

-- | Device skin shutdown temperature thresholds in Celsius.
hiSkinShutdownTemperatures :: Lens' HardwareInfo [Double]
hiSkinShutdownTemperatures
  = lens _hiSkinShutdownTemperatures
      (\ s a -> s{_hiSkinShutdownTemperatures = a})
      . _Default
      . _Coerce

-- | The device serial number.
hiSerialNumber :: Lens' HardwareInfo (Maybe Text)
hiSerialNumber
  = lens _hiSerialNumber
      (\ s a -> s{_hiSerialNumber = a})

-- | Baseband version. For example, MDM9625_104662.22.05.34p.
hiDeviceBasebandVersion :: Lens' HardwareInfo (Maybe Text)
hiDeviceBasebandVersion
  = lens _hiDeviceBasebandVersion
      (\ s a -> s{_hiDeviceBasebandVersion = a})

-- | Name of the hardware. For example, Angler.
hiHardware :: Lens' HardwareInfo (Maybe Text)
hiHardware
  = lens _hiHardware (\ s a -> s{_hiHardware = a})

instance FromJSON HardwareInfo where
        parseJSON
          = withObject "HardwareInfo"
              (\ o ->
                 HardwareInfo' <$>
                   (o .:? "cpuThrottlingTemperatures" .!= mempty) <*>
                     (o .:? "manufacturer")
                     <*> (o .:? "brand")
                     <*> (o .:? "cpuShutdownTemperatures" .!= mempty)
                     <*>
                     (o .:? "batteryThrottlingTemperatures" .!= mempty)
                     <*> (o .:? "model")
                     <*> (o .:? "batteryShutdownTemperatures" .!= mempty)
                     <*> (o .:? "skinThrottlingTemperatures" .!= mempty)
                     <*> (o .:? "gpuShutdownTemperatures" .!= mempty)
                     <*> (o .:? "gpuThrottlingTemperatures" .!= mempty)
                     <*> (o .:? "skinShutdownTemperatures" .!= mempty)
                     <*> (o .:? "serialNumber")
                     <*> (o .:? "deviceBasebandVersion")
                     <*> (o .:? "hardware"))

instance ToJSON HardwareInfo where
        toJSON HardwareInfo'{..}
          = object
              (catMaybes
                 [("cpuThrottlingTemperatures" .=) <$>
                    _hiCPUThrottlingTemperatures,
                  ("manufacturer" .=) <$> _hiManufacturer,
                  ("brand" .=) <$> _hiBrand,
                  ("cpuShutdownTemperatures" .=) <$>
                    _hiCPUShutdownTemperatures,
                  ("batteryThrottlingTemperatures" .=) <$>
                    _hiBatteryThrottlingTemperatures,
                  ("model" .=) <$> _hiModel,
                  ("batteryShutdownTemperatures" .=) <$>
                    _hiBatteryShutdownTemperatures,
                  ("skinThrottlingTemperatures" .=) <$>
                    _hiSkinThrottlingTemperatures,
                  ("gpuShutdownTemperatures" .=) <$>
                    _hiGpuShutdownTemperatures,
                  ("gpuThrottlingTemperatures" .=) <$>
                    _hiGpuThrottlingTemperatures,
                  ("skinShutdownTemperatures" .=) <$>
                    _hiSkinShutdownTemperatures,
                  ("serialNumber" .=) <$> _hiSerialNumber,
                  ("deviceBasebandVersion" .=) <$>
                    _hiDeviceBasebandVersion,
                  ("hardware" .=) <$> _hiHardware])

-- | A device owned by an enterprise. Unless otherwise noted, all fields are
-- read-only and can\'t be modified by enterprises.devices.patch.
--
-- /See:/ 'device' smart constructor.
data Device =
  Device'
    { _devMemoryInfo                     :: !(Maybe MemoryInfo)
    , _devPolicyCompliant                :: !(Maybe Bool)
    , _devApplicationReports             :: !(Maybe [ApplicationReport])
    , _devPolicyName                     :: !(Maybe Text)
    , _devState                          :: !(Maybe DeviceState)
    , _devAppliedPolicyName              :: !(Maybe Text)
    , _devLastStatusReportTime           :: !(Maybe DateTime')
    , _devDeviceSettings                 :: !(Maybe DeviceSettings)
    , _devEnrollmentTokenName            :: !(Maybe Text)
    , _devManagementMode                 :: !(Maybe DeviceManagementMode)
    , _devHardwareInfo                   :: !(Maybe HardwareInfo)
    , _devPowerManagementEvents          :: !(Maybe [PowerManagementEvent])
    , _devUserName                       :: !(Maybe Text)
    , _devMemoryEvents                   :: !(Maybe [MemoryEvent])
    , _devAPILevel                       :: !(Maybe (Textual Int32))
    , _devUser                           :: !(Maybe User)
    , _devDisabledReason                 :: !(Maybe UserFacingMessage)
    , _devLastPolicyComplianceReportTime :: !(Maybe DateTime')
    , _devEnrollmentTokenData            :: !(Maybe Text)
    , _devName                           :: !(Maybe Text)
    , _devAppliedPolicyVersion           :: !(Maybe (Textual Int64))
    , _devHardwareStatusSamples          :: !(Maybe [HardwareStatus])
    , _devAppliedState                   :: !(Maybe DeviceAppliedState)
    , _devPreviousDeviceNames            :: !(Maybe [Text])
    , _devLastPolicySyncTime             :: !(Maybe DateTime')
    , _devNetworkInfo                    :: !(Maybe NetworkInfo)
    , _devNonComplianceDetails           :: !(Maybe [NonComplianceDetail])
    , _devSoftwareInfo                   :: !(Maybe SoftwareInfo)
    , _devEnrollmentTime                 :: !(Maybe DateTime')
    , _devDisplays                       :: !(Maybe [Display])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Device' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'devMemoryInfo'
--
-- * 'devPolicyCompliant'
--
-- * 'devApplicationReports'
--
-- * 'devPolicyName'
--
-- * 'devState'
--
-- * 'devAppliedPolicyName'
--
-- * 'devLastStatusReportTime'
--
-- * 'devDeviceSettings'
--
-- * 'devEnrollmentTokenName'
--
-- * 'devManagementMode'
--
-- * 'devHardwareInfo'
--
-- * 'devPowerManagementEvents'
--
-- * 'devUserName'
--
-- * 'devMemoryEvents'
--
-- * 'devAPILevel'
--
-- * 'devUser'
--
-- * 'devDisabledReason'
--
-- * 'devLastPolicyComplianceReportTime'
--
-- * 'devEnrollmentTokenData'
--
-- * 'devName'
--
-- * 'devAppliedPolicyVersion'
--
-- * 'devHardwareStatusSamples'
--
-- * 'devAppliedState'
--
-- * 'devPreviousDeviceNames'
--
-- * 'devLastPolicySyncTime'
--
-- * 'devNetworkInfo'
--
-- * 'devNonComplianceDetails'
--
-- * 'devSoftwareInfo'
--
-- * 'devEnrollmentTime'
--
-- * 'devDisplays'
device
    :: Device
device =
  Device'
    { _devMemoryInfo = Nothing
    , _devPolicyCompliant = Nothing
    , _devApplicationReports = Nothing
    , _devPolicyName = Nothing
    , _devState = Nothing
    , _devAppliedPolicyName = Nothing
    , _devLastStatusReportTime = Nothing
    , _devDeviceSettings = Nothing
    , _devEnrollmentTokenName = Nothing
    , _devManagementMode = Nothing
    , _devHardwareInfo = Nothing
    , _devPowerManagementEvents = Nothing
    , _devUserName = Nothing
    , _devMemoryEvents = Nothing
    , _devAPILevel = Nothing
    , _devUser = Nothing
    , _devDisabledReason = Nothing
    , _devLastPolicyComplianceReportTime = Nothing
    , _devEnrollmentTokenData = Nothing
    , _devName = Nothing
    , _devAppliedPolicyVersion = Nothing
    , _devHardwareStatusSamples = Nothing
    , _devAppliedState = Nothing
    , _devPreviousDeviceNames = Nothing
    , _devLastPolicySyncTime = Nothing
    , _devNetworkInfo = Nothing
    , _devNonComplianceDetails = Nothing
    , _devSoftwareInfo = Nothing
    , _devEnrollmentTime = Nothing
    , _devDisplays = Nothing
    }

-- | Memory information. This information is only available if
-- memoryInfoEnabled is true in the device\'s policy.
devMemoryInfo :: Lens' Device (Maybe MemoryInfo)
devMemoryInfo
  = lens _devMemoryInfo
      (\ s a -> s{_devMemoryInfo = a})

-- | Whether the device is compliant with its policy.
devPolicyCompliant :: Lens' Device (Maybe Bool)
devPolicyCompliant
  = lens _devPolicyCompliant
      (\ s a -> s{_devPolicyCompliant = a})

-- | Reports for apps installed on the device. This information is only
-- available when application_reports_enabled is true in the device\'s
-- policy.
devApplicationReports :: Lens' Device [ApplicationReport]
devApplicationReports
  = lens _devApplicationReports
      (\ s a -> s{_devApplicationReports = a})
      . _Default
      . _Coerce

-- | The name of the policy applied to the device, in the form
-- enterprises\/{enterpriseId}\/policies\/{policyId}. If not specified, the
-- policy_name for the device\'s user is applied. This field can be
-- modified by a patch request. You can specify only the policyId when
-- calling enterprises.devices.patch, as long as the policyId doesn’t
-- contain any slashes. The rest of the policy name is inferred.
devPolicyName :: Lens' Device (Maybe Text)
devPolicyName
  = lens _devPolicyName
      (\ s a -> s{_devPolicyName = a})

-- | The state to be applied to the device. This field can be modified by a
-- patch request. Note that when calling enterprises.devices.patch, ACTIVE
-- and DISABLED are the only allowable values. To enter the device into a
-- DELETED state, call enterprises.devices.delete.
devState :: Lens' Device (Maybe DeviceState)
devState = lens _devState (\ s a -> s{_devState = a})

-- | The name of the policy currently applied to the device.
devAppliedPolicyName :: Lens' Device (Maybe Text)
devAppliedPolicyName
  = lens _devAppliedPolicyName
      (\ s a -> s{_devAppliedPolicyName = a})

-- | The last time the device sent a status report.
devLastStatusReportTime :: Lens' Device (Maybe UTCTime)
devLastStatusReportTime
  = lens _devLastStatusReportTime
      (\ s a -> s{_devLastStatusReportTime = a})
      . mapping _DateTime

-- | Device settings information. This information is only available if
-- deviceSettingsEnabled is true in the device\'s policy.
devDeviceSettings :: Lens' Device (Maybe DeviceSettings)
devDeviceSettings
  = lens _devDeviceSettings
      (\ s a -> s{_devDeviceSettings = a})

-- | If the device was enrolled with an enrollment token, this field contains
-- the name of the token.
devEnrollmentTokenName :: Lens' Device (Maybe Text)
devEnrollmentTokenName
  = lens _devEnrollmentTokenName
      (\ s a -> s{_devEnrollmentTokenName = a})

-- | The type of management mode Android Device Policy takes on the device.
-- This influences which policy settings are supported.
devManagementMode :: Lens' Device (Maybe DeviceManagementMode)
devManagementMode
  = lens _devManagementMode
      (\ s a -> s{_devManagementMode = a})

-- | Detailed information about the device hardware.
devHardwareInfo :: Lens' Device (Maybe HardwareInfo)
devHardwareInfo
  = lens _devHardwareInfo
      (\ s a -> s{_devHardwareInfo = a})

-- | Power management events on the device in chronological order. This
-- information is only available if powerManagementEventsEnabled is true in
-- the device\'s policy.
devPowerManagementEvents :: Lens' Device [PowerManagementEvent]
devPowerManagementEvents
  = lens _devPowerManagementEvents
      (\ s a -> s{_devPowerManagementEvents = a})
      . _Default
      . _Coerce

-- | The resource name of the user that owns this device in the form
-- enterprises\/{enterpriseId}\/users\/{userId}.
devUserName :: Lens' Device (Maybe Text)
devUserName
  = lens _devUserName (\ s a -> s{_devUserName = a})

-- | Events related to memory and storage measurements in chronological
-- order. This information is only available if memoryInfoEnabled is true
-- in the device\'s policy.
devMemoryEvents :: Lens' Device [MemoryEvent]
devMemoryEvents
  = lens _devMemoryEvents
      (\ s a -> s{_devMemoryEvents = a})
      . _Default
      . _Coerce

-- | The API level of the Android platform version running on the device.
devAPILevel :: Lens' Device (Maybe Int32)
devAPILevel
  = lens _devAPILevel (\ s a -> s{_devAPILevel = a}) .
      mapping _Coerce

-- | The user who owns the device.
devUser :: Lens' Device (Maybe User)
devUser = lens _devUser (\ s a -> s{_devUser = a})

-- | If the device state is DISABLED, an optional message that is displayed
-- on the device indicating the reason the device is disabled. This field
-- can be modified by a patch request.
devDisabledReason :: Lens' Device (Maybe UserFacingMessage)
devDisabledReason
  = lens _devDisabledReason
      (\ s a -> s{_devDisabledReason = a})

-- | Deprecated.
devLastPolicyComplianceReportTime :: Lens' Device (Maybe UTCTime)
devLastPolicyComplianceReportTime
  = lens _devLastPolicyComplianceReportTime
      (\ s a -> s{_devLastPolicyComplianceReportTime = a})
      . mapping _DateTime

-- | If the device was enrolled with an enrollment token with additional data
-- provided, this field contains that data.
devEnrollmentTokenData :: Lens' Device (Maybe Text)
devEnrollmentTokenData
  = lens _devEnrollmentTokenData
      (\ s a -> s{_devEnrollmentTokenData = a})

-- | The name of the device in the form
-- enterprises\/{enterpriseId}\/devices\/{deviceId}.
devName :: Lens' Device (Maybe Text)
devName = lens _devName (\ s a -> s{_devName = a})

-- | The version of the policy currently applied to the device.
devAppliedPolicyVersion :: Lens' Device (Maybe Int64)
devAppliedPolicyVersion
  = lens _devAppliedPolicyVersion
      (\ s a -> s{_devAppliedPolicyVersion = a})
      . mapping _Coerce

-- | Hardware status samples in chronological order. This information is only
-- available if hardwareStatusEnabled is true in the device\'s policy.
devHardwareStatusSamples :: Lens' Device [HardwareStatus]
devHardwareStatusSamples
  = lens _devHardwareStatusSamples
      (\ s a -> s{_devHardwareStatusSamples = a})
      . _Default
      . _Coerce

-- | The state currently applied to the device.
devAppliedState :: Lens' Device (Maybe DeviceAppliedState)
devAppliedState
  = lens _devAppliedState
      (\ s a -> s{_devAppliedState = a})

-- | If the same physical device has been enrolled multiple times, this field
-- contains its previous device names. The serial number is used as the
-- unique identifier to determine if the same physical device has enrolled
-- previously. The names are in chronological order.
devPreviousDeviceNames :: Lens' Device [Text]
devPreviousDeviceNames
  = lens _devPreviousDeviceNames
      (\ s a -> s{_devPreviousDeviceNames = a})
      . _Default
      . _Coerce

-- | The last time the device fetched its policy.
devLastPolicySyncTime :: Lens' Device (Maybe UTCTime)
devLastPolicySyncTime
  = lens _devLastPolicySyncTime
      (\ s a -> s{_devLastPolicySyncTime = a})
      . mapping _DateTime

-- | Device network information. This information is only available if
-- networkInfoEnabled is true in the device\'s policy.
devNetworkInfo :: Lens' Device (Maybe NetworkInfo)
devNetworkInfo
  = lens _devNetworkInfo
      (\ s a -> s{_devNetworkInfo = a})

-- | Details about policy settings that the device is not compliant with.
devNonComplianceDetails :: Lens' Device [NonComplianceDetail]
devNonComplianceDetails
  = lens _devNonComplianceDetails
      (\ s a -> s{_devNonComplianceDetails = a})
      . _Default
      . _Coerce

-- | Detailed information about the device software. This information is only
-- available if softwareInfoEnabled is true in the device\'s policy.
devSoftwareInfo :: Lens' Device (Maybe SoftwareInfo)
devSoftwareInfo
  = lens _devSoftwareInfo
      (\ s a -> s{_devSoftwareInfo = a})

-- | The time of device enrollment.
devEnrollmentTime :: Lens' Device (Maybe UTCTime)
devEnrollmentTime
  = lens _devEnrollmentTime
      (\ s a -> s{_devEnrollmentTime = a})
      . mapping _DateTime

-- | Detailed information about displays on the device. This information is
-- only available if displayInfoEnabled is true in the device\'s policy.
devDisplays :: Lens' Device [Display]
devDisplays
  = lens _devDisplays (\ s a -> s{_devDisplays = a}) .
      _Default
      . _Coerce

instance FromJSON Device where
        parseJSON
          = withObject "Device"
              (\ o ->
                 Device' <$>
                   (o .:? "memoryInfo") <*> (o .:? "policyCompliant")
                     <*> (o .:? "applicationReports" .!= mempty)
                     <*> (o .:? "policyName")
                     <*> (o .:? "state")
                     <*> (o .:? "appliedPolicyName")
                     <*> (o .:? "lastStatusReportTime")
                     <*> (o .:? "deviceSettings")
                     <*> (o .:? "enrollmentTokenName")
                     <*> (o .:? "managementMode")
                     <*> (o .:? "hardwareInfo")
                     <*> (o .:? "powerManagementEvents" .!= mempty)
                     <*> (o .:? "userName")
                     <*> (o .:? "memoryEvents" .!= mempty)
                     <*> (o .:? "apiLevel")
                     <*> (o .:? "user")
                     <*> (o .:? "disabledReason")
                     <*> (o .:? "lastPolicyComplianceReportTime")
                     <*> (o .:? "enrollmentTokenData")
                     <*> (o .:? "name")
                     <*> (o .:? "appliedPolicyVersion")
                     <*> (o .:? "hardwareStatusSamples" .!= mempty)
                     <*> (o .:? "appliedState")
                     <*> (o .:? "previousDeviceNames" .!= mempty)
                     <*> (o .:? "lastPolicySyncTime")
                     <*> (o .:? "networkInfo")
                     <*> (o .:? "nonComplianceDetails" .!= mempty)
                     <*> (o .:? "softwareInfo")
                     <*> (o .:? "enrollmentTime")
                     <*> (o .:? "displays" .!= mempty))

instance ToJSON Device where
        toJSON Device'{..}
          = object
              (catMaybes
                 [("memoryInfo" .=) <$> _devMemoryInfo,
                  ("policyCompliant" .=) <$> _devPolicyCompliant,
                  ("applicationReports" .=) <$> _devApplicationReports,
                  ("policyName" .=) <$> _devPolicyName,
                  ("state" .=) <$> _devState,
                  ("appliedPolicyName" .=) <$> _devAppliedPolicyName,
                  ("lastStatusReportTime" .=) <$>
                    _devLastStatusReportTime,
                  ("deviceSettings" .=) <$> _devDeviceSettings,
                  ("enrollmentTokenName" .=) <$>
                    _devEnrollmentTokenName,
                  ("managementMode" .=) <$> _devManagementMode,
                  ("hardwareInfo" .=) <$> _devHardwareInfo,
                  ("powerManagementEvents" .=) <$>
                    _devPowerManagementEvents,
                  ("userName" .=) <$> _devUserName,
                  ("memoryEvents" .=) <$> _devMemoryEvents,
                  ("apiLevel" .=) <$> _devAPILevel,
                  ("user" .=) <$> _devUser,
                  ("disabledReason" .=) <$> _devDisabledReason,
                  ("lastPolicyComplianceReportTime" .=) <$>
                    _devLastPolicyComplianceReportTime,
                  ("enrollmentTokenData" .=) <$>
                    _devEnrollmentTokenData,
                  ("name" .=) <$> _devName,
                  ("appliedPolicyVersion" .=) <$>
                    _devAppliedPolicyVersion,
                  ("hardwareStatusSamples" .=) <$>
                    _devHardwareStatusSamples,
                  ("appliedState" .=) <$> _devAppliedState,
                  ("previousDeviceNames" .=) <$>
                    _devPreviousDeviceNames,
                  ("lastPolicySyncTime" .=) <$> _devLastPolicySyncTime,
                  ("networkInfo" .=) <$> _devNetworkInfo,
                  ("nonComplianceDetails" .=) <$>
                    _devNonComplianceDetails,
                  ("softwareInfo" .=) <$> _devSoftwareInfo,
                  ("enrollmentTime" .=) <$> _devEnrollmentTime,
                  ("displays" .=) <$> _devDisplays])

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

-- | An entry of a managed property.
--
-- /See:/ 'managedPropertyEntry' smart constructor.
data ManagedPropertyEntry =
  ManagedPropertyEntry'
    { _mpeValue :: !(Maybe Text)
    , _mpeName  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedPropertyEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpeValue'
--
-- * 'mpeName'
managedPropertyEntry
    :: ManagedPropertyEntry
managedPropertyEntry =
  ManagedPropertyEntry' {_mpeValue = Nothing, _mpeName = Nothing}

-- | The machine-readable value of the entry, which should be used in the
-- configuration. Not localized.
mpeValue :: Lens' ManagedPropertyEntry (Maybe Text)
mpeValue = lens _mpeValue (\ s a -> s{_mpeValue = a})

-- | The human-readable name of the value. Localized.
mpeName :: Lens' ManagedPropertyEntry (Maybe Text)
mpeName = lens _mpeName (\ s a -> s{_mpeName = a})

instance FromJSON ManagedPropertyEntry where
        parseJSON
          = withObject "ManagedPropertyEntry"
              (\ o ->
                 ManagedPropertyEntry' <$>
                   (o .:? "value") <*> (o .:? "name"))

instance ToJSON ManagedPropertyEntry where
        toJSON ManagedPropertyEntry'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _mpeValue,
                  ("name" .=) <$> _mpeName])

-- | A rule for automatically choosing a private key and certificate to
-- authenticate the device to a server.
--
-- /See:/ 'choosePrivateKeyRule' smart constructor.
data ChoosePrivateKeyRule =
  ChoosePrivateKeyRule'
    { _cpkrPrivateKeyAlias :: !(Maybe Text)
    , _cpkrURLPattern      :: !(Maybe Text)
    , _cpkrPackageNames    :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ChoosePrivateKeyRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpkrPrivateKeyAlias'
--
-- * 'cpkrURLPattern'
--
-- * 'cpkrPackageNames'
choosePrivateKeyRule
    :: ChoosePrivateKeyRule
choosePrivateKeyRule =
  ChoosePrivateKeyRule'
    { _cpkrPrivateKeyAlias = Nothing
    , _cpkrURLPattern = Nothing
    , _cpkrPackageNames = Nothing
    }

-- | The alias of the private key to be used.
cpkrPrivateKeyAlias :: Lens' ChoosePrivateKeyRule (Maybe Text)
cpkrPrivateKeyAlias
  = lens _cpkrPrivateKeyAlias
      (\ s a -> s{_cpkrPrivateKeyAlias = a})

-- | The URL pattern to match against the URL of the outgoing request. The
-- pattern may contain asterisk (*) wildcards. Any URL is matched if
-- unspecified.
cpkrURLPattern :: Lens' ChoosePrivateKeyRule (Maybe Text)
cpkrURLPattern
  = lens _cpkrURLPattern
      (\ s a -> s{_cpkrURLPattern = a})

-- | The package names for which outgoing requests are subject to this rule.
-- If no package names are specified, then the rule applies to all
-- packages. For each package name listed, the rule applies to that package
-- and all other packages that shared the same Android UID. The SHA256 hash
-- of the signing key signatures of each package_name will be verified
-- against those provided by Play
cpkrPackageNames :: Lens' ChoosePrivateKeyRule [Text]
cpkrPackageNames
  = lens _cpkrPackageNames
      (\ s a -> s{_cpkrPackageNames = a})
      . _Default
      . _Coerce

instance FromJSON ChoosePrivateKeyRule where
        parseJSON
          = withObject "ChoosePrivateKeyRule"
              (\ o ->
                 ChoosePrivateKeyRule' <$>
                   (o .:? "privateKeyAlias") <*> (o .:? "urlPattern")
                     <*> (o .:? "packageNames" .!= mempty))

instance ToJSON ChoosePrivateKeyRule where
        toJSON ChoosePrivateKeyRule'{..}
          = object
              (catMaybes
                 [("privateKeyAlias" .=) <$> _cpkrPrivateKeyAlias,
                  ("urlPattern" .=) <$> _cpkrURLPattern,
                  ("packageNames" .=) <$> _cpkrPackageNames])

-- | A map containing pairs, where locale is a well-formed BCP 47 language
-- (https:\/\/www.w3.org\/International\/articles\/language-tags\/) code,
-- such as en-US, es-ES, or fr.
--
-- /See:/ 'userFacingMessageLocalizedMessages' smart constructor.
newtype UserFacingMessageLocalizedMessages =
  UserFacingMessageLocalizedMessages'
    { _ufmlmAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserFacingMessageLocalizedMessages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ufmlmAddtional'
userFacingMessageLocalizedMessages
    :: HashMap Text Text -- ^ 'ufmlmAddtional'
    -> UserFacingMessageLocalizedMessages
userFacingMessageLocalizedMessages pUfmlmAddtional_ =
  UserFacingMessageLocalizedMessages'
    {_ufmlmAddtional = _Coerce # pUfmlmAddtional_}

ufmlmAddtional :: Lens' UserFacingMessageLocalizedMessages (HashMap Text Text)
ufmlmAddtional
  = lens _ufmlmAddtional
      (\ s a -> s{_ufmlmAddtional = a})
      . _Coerce

instance FromJSON UserFacingMessageLocalizedMessages
         where
        parseJSON
          = withObject "UserFacingMessageLocalizedMessages"
              (\ o ->
                 UserFacingMessageLocalizedMessages' <$>
                   (parseJSONObject o))

instance ToJSON UserFacingMessageLocalizedMessages
         where
        toJSON = toJSON . _ufmlmAddtional

-- | A user belonging to an enterprise.
--
-- /See:/ 'user' smart constructor.
newtype User =
  User'
    { _uAccountIdentifier :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uAccountIdentifier'
user
    :: User
user = User' {_uAccountIdentifier = Nothing}

-- | A unique identifier you create for this user, such as user342 or
-- asset#44418. This field must be set when the user is created and can\'t
-- be updated. This field must not contain personally identifiable
-- information (PII). This identifier must be 1024 characters or less;
-- otherwise, the update policy request will fail.
uAccountIdentifier :: Lens' User (Maybe Text)
uAccountIdentifier
  = lens _uAccountIdentifier
      (\ s a -> s{_uAccountIdentifier = a})

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ o -> User' <$> (o .:? "accountIdentifier"))

instance ToJSON User where
        toJSON User'{..}
          = object
              (catMaybes
                 [("accountIdentifier" .=) <$> _uAccountIdentifier])

-- | Configuration for managing system updates
--
-- /See:/ 'systemUpdate' smart constructor.
data SystemUpdate =
  SystemUpdate'
    { _suEndMinutes   :: !(Maybe (Textual Int32))
    , _suStartMinutes :: !(Maybe (Textual Int32))
    , _suType         :: !(Maybe SystemUpdateType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SystemUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suEndMinutes'
--
-- * 'suStartMinutes'
--
-- * 'suType'
systemUpdate
    :: SystemUpdate
systemUpdate =
  SystemUpdate'
    {_suEndMinutes = Nothing, _suStartMinutes = Nothing, _suType = Nothing}

-- | If the type is WINDOWED, the end of the maintenance window, measured as
-- the number of minutes after midnight in device\'s local time. This value
-- must be between 0 and 1439, inclusive. If this value is less than
-- start_minutes, then the maintenance window spans midnight. If the
-- maintenance window specified is smaller than 30 minutes, the actual
-- window is extended to 30 minutes beyond the start time.
suEndMinutes :: Lens' SystemUpdate (Maybe Int32)
suEndMinutes
  = lens _suEndMinutes (\ s a -> s{_suEndMinutes = a})
      . mapping _Coerce

-- | If the type is WINDOWED, the start of the maintenance window, measured
-- as the number of minutes after midnight in the device\'s local time.
-- This value must be between 0 and 1439, inclusive.
suStartMinutes :: Lens' SystemUpdate (Maybe Int32)
suStartMinutes
  = lens _suStartMinutes
      (\ s a -> s{_suStartMinutes = a})
      . mapping _Coerce

-- | The type of system update to configure.
suType :: Lens' SystemUpdate (Maybe SystemUpdateType)
suType = lens _suType (\ s a -> s{_suType = a})

instance FromJSON SystemUpdate where
        parseJSON
          = withObject "SystemUpdate"
              (\ o ->
                 SystemUpdate' <$>
                   (o .:? "endMinutes") <*> (o .:? "startMinutes") <*>
                     (o .:? "type"))

instance ToJSON SystemUpdate where
        toJSON SystemUpdate'{..}
          = object
              (catMaybes
                 [("endMinutes" .=) <$> _suEndMinutes,
                  ("startMinutes" .=) <$> _suStartMinutes,
                  ("type" .=) <$> _suType])

-- | Information reported about an installed app.
--
-- /See:/ 'applicationReport' smart constructor.
data ApplicationReport =
  ApplicationReport'
    { _arVersionCode                :: !(Maybe (Textual Int32))
    , _arSigningKeyCertFingerprints :: !(Maybe [Text])
    , _arState                      :: !(Maybe ApplicationReportState)
    , _arVersionName                :: !(Maybe Text)
    , _arPackageName                :: !(Maybe Text)
    , _arPackageSha256Hash          :: !(Maybe Text)
    , _arApplicationSource          :: !(Maybe ApplicationReportApplicationSource)
    , _arEvents                     :: !(Maybe [ApplicationEvent])
    , _arDisplayName                :: !(Maybe Text)
    , _arInstallerPackageName       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApplicationReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arVersionCode'
--
-- * 'arSigningKeyCertFingerprints'
--
-- * 'arState'
--
-- * 'arVersionName'
--
-- * 'arPackageName'
--
-- * 'arPackageSha256Hash'
--
-- * 'arApplicationSource'
--
-- * 'arEvents'
--
-- * 'arDisplayName'
--
-- * 'arInstallerPackageName'
applicationReport
    :: ApplicationReport
applicationReport =
  ApplicationReport'
    { _arVersionCode = Nothing
    , _arSigningKeyCertFingerprints = Nothing
    , _arState = Nothing
    , _arVersionName = Nothing
    , _arPackageName = Nothing
    , _arPackageSha256Hash = Nothing
    , _arApplicationSource = Nothing
    , _arEvents = Nothing
    , _arDisplayName = Nothing
    , _arInstallerPackageName = Nothing
    }

-- | The app version code, which can be used to determine whether one version
-- is more recent than another.
arVersionCode :: Lens' ApplicationReport (Maybe Int32)
arVersionCode
  = lens _arVersionCode
      (\ s a -> s{_arVersionCode = a})
      . mapping _Coerce

-- | The SHA-1 hash of each android.content.pm.Signature
-- (https:\/\/developer.android.com\/reference\/android\/content\/pm\/Signature.html)
-- associated with the app package. Each byte of each hash value is
-- represented as a two-digit hexadecimal number.
arSigningKeyCertFingerprints :: Lens' ApplicationReport [Text]
arSigningKeyCertFingerprints
  = lens _arSigningKeyCertFingerprints
      (\ s a -> s{_arSigningKeyCertFingerprints = a})
      . _Default
      . _Coerce

-- | Application state.
arState :: Lens' ApplicationReport (Maybe ApplicationReportState)
arState = lens _arState (\ s a -> s{_arState = a})

-- | The app version as displayed to the user.
arVersionName :: Lens' ApplicationReport (Maybe Text)
arVersionName
  = lens _arVersionName
      (\ s a -> s{_arVersionName = a})

-- | Package name of the app.
arPackageName :: Lens' ApplicationReport (Maybe Text)
arPackageName
  = lens _arPackageName
      (\ s a -> s{_arPackageName = a})

-- | The SHA-256 hash of the app\'s APK file, which can be used to verify the
-- app hasn\'t been modified. Each byte of the hash value is represented as
-- a two-digit hexadecimal number.
arPackageSha256Hash :: Lens' ApplicationReport (Maybe Text)
arPackageSha256Hash
  = lens _arPackageSha256Hash
      (\ s a -> s{_arPackageSha256Hash = a})

-- | The source of the package.
arApplicationSource :: Lens' ApplicationReport (Maybe ApplicationReportApplicationSource)
arApplicationSource
  = lens _arApplicationSource
      (\ s a -> s{_arApplicationSource = a})

-- | List of app events. The most recent 20 events are stored in the list.
arEvents :: Lens' ApplicationReport [ApplicationEvent]
arEvents
  = lens _arEvents (\ s a -> s{_arEvents = a}) .
      _Default
      . _Coerce

-- | The display name of the app.
arDisplayName :: Lens' ApplicationReport (Maybe Text)
arDisplayName
  = lens _arDisplayName
      (\ s a -> s{_arDisplayName = a})

-- | The package name of the app that installed this app.
arInstallerPackageName :: Lens' ApplicationReport (Maybe Text)
arInstallerPackageName
  = lens _arInstallerPackageName
      (\ s a -> s{_arInstallerPackageName = a})

instance FromJSON ApplicationReport where
        parseJSON
          = withObject "ApplicationReport"
              (\ o ->
                 ApplicationReport' <$>
                   (o .:? "versionCode") <*>
                     (o .:? "signingKeyCertFingerprints" .!= mempty)
                     <*> (o .:? "state")
                     <*> (o .:? "versionName")
                     <*> (o .:? "packageName")
                     <*> (o .:? "packageSha256Hash")
                     <*> (o .:? "applicationSource")
                     <*> (o .:? "events" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "installerPackageName"))

instance ToJSON ApplicationReport where
        toJSON ApplicationReport'{..}
          = object
              (catMaybes
                 [("versionCode" .=) <$> _arVersionCode,
                  ("signingKeyCertFingerprints" .=) <$>
                    _arSigningKeyCertFingerprints,
                  ("state" .=) <$> _arState,
                  ("versionName" .=) <$> _arVersionName,
                  ("packageName" .=) <$> _arPackageName,
                  ("packageSha256Hash" .=) <$> _arPackageSha256Hash,
                  ("applicationSource" .=) <$> _arApplicationSource,
                  ("events" .=) <$> _arEvents,
                  ("displayName" .=) <$> _arDisplayName,
                  ("installerPackageName" .=) <$>
                    _arInstallerPackageName])

-- | An enrollment token.
--
-- /See:/ 'enrollmentToken' smart constructor.
data EnrollmentToken =
  EnrollmentToken'
    { _etPolicyName          :: !(Maybe Text)
    , _etValue               :: !(Maybe Text)
    , _etQrCode              :: !(Maybe Text)
    , _etAdditionalData      :: !(Maybe Text)
    , _etUser                :: !(Maybe User)
    , _etName                :: !(Maybe Text)
    , _etOneTimeOnly         :: !(Maybe Bool)
    , _etExpirationTimestamp :: !(Maybe DateTime')
    , _etDuration            :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnrollmentToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etPolicyName'
--
-- * 'etValue'
--
-- * 'etQrCode'
--
-- * 'etAdditionalData'
--
-- * 'etUser'
--
-- * 'etName'
--
-- * 'etOneTimeOnly'
--
-- * 'etExpirationTimestamp'
--
-- * 'etDuration'
enrollmentToken
    :: EnrollmentToken
enrollmentToken =
  EnrollmentToken'
    { _etPolicyName = Nothing
    , _etValue = Nothing
    , _etQrCode = Nothing
    , _etAdditionalData = Nothing
    , _etUser = Nothing
    , _etName = Nothing
    , _etOneTimeOnly = Nothing
    , _etExpirationTimestamp = Nothing
    , _etDuration = Nothing
    }

-- | The name of the policy initially applied to the enrolled device, in the
-- form enterprises\/{enterpriseId}\/policies\/{policyId}. If not
-- specified, the policy_name for the device’s user is applied. If
-- user_name is also not specified,
-- enterprises\/{enterpriseId}\/policies\/default is applied by default.
-- When updating this field, you can specify only the policyId as long as
-- the policyId doesn’t contain any slashes. The rest of the policy name
-- will be inferred.
etPolicyName :: Lens' EnrollmentToken (Maybe Text)
etPolicyName
  = lens _etPolicyName (\ s a -> s{_etPolicyName = a})

-- | The token value that\'s passed to the device and authorizes the device
-- to enroll. This is a read-only field generated by the server.
etValue :: Lens' EnrollmentToken (Maybe Text)
etValue = lens _etValue (\ s a -> s{_etValue = a})

-- | A JSON string whose UTF-8 representation can be used to generate a QR
-- code to enroll a device with this enrollment token. To enroll a device
-- using NFC, the NFC record must contain a serialized java.util.Properties
-- representation of the properties in the JSON.
etQrCode :: Lens' EnrollmentToken (Maybe Text)
etQrCode = lens _etQrCode (\ s a -> s{_etQrCode = a})

-- | Optional, arbitrary data associated with the enrollment token. This
-- could contain, for example, the ID of an org unit the device is assigned
-- to after enrollment. After a device enrolls with the token, this data
-- will be exposed in the enrollment_token_data field of the Device
-- resource. The data must be 1024 characters or less; otherwise, the
-- creation request will fail.
etAdditionalData :: Lens' EnrollmentToken (Maybe Text)
etAdditionalData
  = lens _etAdditionalData
      (\ s a -> s{_etAdditionalData = a})

-- | The user associated with this enrollment token. If it\'s specified when
-- the enrollment token is created and the user does not exist, the user
-- will be created. This field must not contain personally identifiable
-- information. Only the account_identifier field needs to be set.
etUser :: Lens' EnrollmentToken (Maybe User)
etUser = lens _etUser (\ s a -> s{_etUser = a})

-- | The name of the enrollment token, which is generated by the server
-- during creation, in the form
-- enterprises\/{enterpriseId}\/enrollmentTokens\/{enrollmentTokenId}.
etName :: Lens' EnrollmentToken (Maybe Text)
etName = lens _etName (\ s a -> s{_etName = a})

-- | Whether the enrollment token is for one time use only. If the flag is
-- set to true, only one device can use it for registration.
etOneTimeOnly :: Lens' EnrollmentToken (Maybe Bool)
etOneTimeOnly
  = lens _etOneTimeOnly
      (\ s a -> s{_etOneTimeOnly = a})

-- | The expiration time of the token. This is a read-only field generated by
-- the server.
etExpirationTimestamp :: Lens' EnrollmentToken (Maybe UTCTime)
etExpirationTimestamp
  = lens _etExpirationTimestamp
      (\ s a -> s{_etExpirationTimestamp = a})
      . mapping _DateTime

-- | The length of time the enrollment token is valid, ranging from 1 minute
-- to 30 days. If not specified, the default duration is 1 hour.
etDuration :: Lens' EnrollmentToken (Maybe Scientific)
etDuration
  = lens _etDuration (\ s a -> s{_etDuration = a}) .
      mapping _GDuration

instance FromJSON EnrollmentToken where
        parseJSON
          = withObject "EnrollmentToken"
              (\ o ->
                 EnrollmentToken' <$>
                   (o .:? "policyName") <*> (o .:? "value") <*>
                     (o .:? "qrCode")
                     <*> (o .:? "additionalData")
                     <*> (o .:? "user")
                     <*> (o .:? "name")
                     <*> (o .:? "oneTimeOnly")
                     <*> (o .:? "expirationTimestamp")
                     <*> (o .:? "duration"))

instance ToJSON EnrollmentToken where
        toJSON EnrollmentToken'{..}
          = object
              (catMaybes
                 [("policyName" .=) <$> _etPolicyName,
                  ("value" .=) <$> _etValue,
                  ("qrCode" .=) <$> _etQrCode,
                  ("additionalData" .=) <$> _etAdditionalData,
                  ("user" .=) <$> _etUser, ("name" .=) <$> _etName,
                  ("oneTimeOnly" .=) <$> _etOneTimeOnly,
                  ("expirationTimestamp" .=) <$>
                    _etExpirationTimestamp,
                  ("duration" .=) <$> _etDuration])

-- | Managed configuration applied to the app. The format for the
-- configuration is dictated by the ManagedProperty values supported by the
-- app. Each field name in the managed configuration must match the key
-- field of the ManagedProperty. The field value must be compatible with
-- the type of the ManagedProperty:
-- > +--------------+------------------+
-- > | /type/       | /JSON value/     |
-- > +--------------+------------------+
-- > | BOOL         | true or false    |
-- > +--------------+------------------+
-- > | STRING       | string           |
-- > +--------------+------------------+
-- > | INTEGER      | number           |
-- > +--------------+------------------+
-- > | CHOICE       | string           |
-- > +--------------+------------------+
-- > | MULTISELECT  | array of strings |
-- > +--------------+------------------+
-- > | HIDDEN       | string           |
-- > +--------------+------------------+
-- > | BUNDLE_ARRAY | array of objects |
-- > +--------------+------------------+
--
-- /See:/ 'applicationPolicyManagedConfiguration' smart constructor.
newtype ApplicationPolicyManagedConfiguration =
  ApplicationPolicyManagedConfiguration'
    { _apmcAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApplicationPolicyManagedConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apmcAddtional'
applicationPolicyManagedConfiguration
    :: HashMap Text JSONValue -- ^ 'apmcAddtional'
    -> ApplicationPolicyManagedConfiguration
applicationPolicyManagedConfiguration pApmcAddtional_ =
  ApplicationPolicyManagedConfiguration'
    {_apmcAddtional = _Coerce # pApmcAddtional_}

-- | Properties of the object.
apmcAddtional :: Lens' ApplicationPolicyManagedConfiguration (HashMap Text JSONValue)
apmcAddtional
  = lens _apmcAddtional
      (\ s a -> s{_apmcAddtional = a})
      . _Coerce

instance FromJSON
           ApplicationPolicyManagedConfiguration
         where
        parseJSON
          = withObject "ApplicationPolicyManagedConfiguration"
              (\ o ->
                 ApplicationPolicyManagedConfiguration' <$>
                   (parseJSONObject o))

instance ToJSON ApplicationPolicyManagedConfiguration
         where
        toJSON = toJSON . _apmcAddtional

-- | Settings controlling the behavior of status reports.
--
-- /See:/ 'statusReportingSettings' smart constructor.
data StatusReportingSettings =
  StatusReportingSettings'
    { _srsSoftwareInfoEnabled          :: !(Maybe Bool)
    , _srsHardwareStatusEnabled        :: !(Maybe Bool)
    , _srsPowerManagementEventsEnabled :: !(Maybe Bool)
    , _srsDisplayInfoEnabled           :: !(Maybe Bool)
    , _srsApplicationReportsEnabled    :: !(Maybe Bool)
    , _srsMemoryInfoEnabled            :: !(Maybe Bool)
    , _srsNetworkInfoEnabled           :: !(Maybe Bool)
    , _srsDeviceSettingsEnabled        :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StatusReportingSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsSoftwareInfoEnabled'
--
-- * 'srsHardwareStatusEnabled'
--
-- * 'srsPowerManagementEventsEnabled'
--
-- * 'srsDisplayInfoEnabled'
--
-- * 'srsApplicationReportsEnabled'
--
-- * 'srsMemoryInfoEnabled'
--
-- * 'srsNetworkInfoEnabled'
--
-- * 'srsDeviceSettingsEnabled'
statusReportingSettings
    :: StatusReportingSettings
statusReportingSettings =
  StatusReportingSettings'
    { _srsSoftwareInfoEnabled = Nothing
    , _srsHardwareStatusEnabled = Nothing
    , _srsPowerManagementEventsEnabled = Nothing
    , _srsDisplayInfoEnabled = Nothing
    , _srsApplicationReportsEnabled = Nothing
    , _srsMemoryInfoEnabled = Nothing
    , _srsNetworkInfoEnabled = Nothing
    , _srsDeviceSettingsEnabled = Nothing
    }

-- | Whether software info reporting is enabled.
srsSoftwareInfoEnabled :: Lens' StatusReportingSettings (Maybe Bool)
srsSoftwareInfoEnabled
  = lens _srsSoftwareInfoEnabled
      (\ s a -> s{_srsSoftwareInfoEnabled = a})

-- | Whether hardware status reporting is enabled.
srsHardwareStatusEnabled :: Lens' StatusReportingSettings (Maybe Bool)
srsHardwareStatusEnabled
  = lens _srsHardwareStatusEnabled
      (\ s a -> s{_srsHardwareStatusEnabled = a})

-- | Whether power management event reporting is enabled.
srsPowerManagementEventsEnabled :: Lens' StatusReportingSettings (Maybe Bool)
srsPowerManagementEventsEnabled
  = lens _srsPowerManagementEventsEnabled
      (\ s a -> s{_srsPowerManagementEventsEnabled = a})

-- | Whether displays reporting is enabled.
srsDisplayInfoEnabled :: Lens' StatusReportingSettings (Maybe Bool)
srsDisplayInfoEnabled
  = lens _srsDisplayInfoEnabled
      (\ s a -> s{_srsDisplayInfoEnabled = a})

-- | Whether app reports are enabled.
srsApplicationReportsEnabled :: Lens' StatusReportingSettings (Maybe Bool)
srsApplicationReportsEnabled
  = lens _srsApplicationReportsEnabled
      (\ s a -> s{_srsApplicationReportsEnabled = a})

-- | Whether memory reporting is enabled.
srsMemoryInfoEnabled :: Lens' StatusReportingSettings (Maybe Bool)
srsMemoryInfoEnabled
  = lens _srsMemoryInfoEnabled
      (\ s a -> s{_srsMemoryInfoEnabled = a})

-- | Whether network info reporting is enabled.
srsNetworkInfoEnabled :: Lens' StatusReportingSettings (Maybe Bool)
srsNetworkInfoEnabled
  = lens _srsNetworkInfoEnabled
      (\ s a -> s{_srsNetworkInfoEnabled = a})

-- | Whether device settings reporting is enabled.
srsDeviceSettingsEnabled :: Lens' StatusReportingSettings (Maybe Bool)
srsDeviceSettingsEnabled
  = lens _srsDeviceSettingsEnabled
      (\ s a -> s{_srsDeviceSettingsEnabled = a})

instance FromJSON StatusReportingSettings where
        parseJSON
          = withObject "StatusReportingSettings"
              (\ o ->
                 StatusReportingSettings' <$>
                   (o .:? "softwareInfoEnabled") <*>
                     (o .:? "hardwareStatusEnabled")
                     <*> (o .:? "powerManagementEventsEnabled")
                     <*> (o .:? "displayInfoEnabled")
                     <*> (o .:? "applicationReportsEnabled")
                     <*> (o .:? "memoryInfoEnabled")
                     <*> (o .:? "networkInfoEnabled")
                     <*> (o .:? "deviceSettingsEnabled"))

instance ToJSON StatusReportingSettings where
        toJSON StatusReportingSettings'{..}
          = object
              (catMaybes
                 [("softwareInfoEnabled" .=) <$>
                    _srsSoftwareInfoEnabled,
                  ("hardwareStatusEnabled" .=) <$>
                    _srsHardwareStatusEnabled,
                  ("powerManagementEventsEnabled" .=) <$>
                    _srsPowerManagementEventsEnabled,
                  ("displayInfoEnabled" .=) <$> _srsDisplayInfoEnabled,
                  ("applicationReportsEnabled" .=) <$>
                    _srsApplicationReportsEnabled,
                  ("memoryInfoEnabled" .=) <$> _srsMemoryInfoEnabled,
                  ("networkInfoEnabled" .=) <$> _srsNetworkInfoEnabled,
                  ("deviceSettingsEnabled" .=) <$>
                    _srsDeviceSettingsEnabled])

-- | Policy for an individual app.
--
-- /See:/ 'applicationPolicy' smart constructor.
data ApplicationPolicy =
  ApplicationPolicy'
    { _apDelegatedScopes              :: !(Maybe [Text])
    , _apPackageName                  :: !(Maybe Text)
    , _apManagedConfiguration         :: !(Maybe ApplicationPolicyManagedConfiguration)
    , _apDefaultPermissionPolicy      :: !(Maybe ApplicationPolicyDefaultPermissionPolicy)
    , _apDisabled                     :: !(Maybe Bool)
    , _apLockTaskAllowed              :: !(Maybe Bool)
    , _apPermissionGrants             :: !(Maybe [PermissionGrant])
    , _apManagedConfigurationTemplate :: !(Maybe ManagedConfigurationTemplate)
    , _apMinimumVersionCode           :: !(Maybe (Textual Int32))
    , _apInstallType                  :: !(Maybe ApplicationPolicyInstallType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApplicationPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apDelegatedScopes'
--
-- * 'apPackageName'
--
-- * 'apManagedConfiguration'
--
-- * 'apDefaultPermissionPolicy'
--
-- * 'apDisabled'
--
-- * 'apLockTaskAllowed'
--
-- * 'apPermissionGrants'
--
-- * 'apManagedConfigurationTemplate'
--
-- * 'apMinimumVersionCode'
--
-- * 'apInstallType'
applicationPolicy
    :: ApplicationPolicy
applicationPolicy =
  ApplicationPolicy'
    { _apDelegatedScopes = Nothing
    , _apPackageName = Nothing
    , _apManagedConfiguration = Nothing
    , _apDefaultPermissionPolicy = Nothing
    , _apDisabled = Nothing
    , _apLockTaskAllowed = Nothing
    , _apPermissionGrants = Nothing
    , _apManagedConfigurationTemplate = Nothing
    , _apMinimumVersionCode = Nothing
    , _apInstallType = Nothing
    }

-- | The scopes delegated to the app from Android Device Policy.
apDelegatedScopes :: Lens' ApplicationPolicy [Text]
apDelegatedScopes
  = lens _apDelegatedScopes
      (\ s a -> s{_apDelegatedScopes = a})
      . _Default
      . _Coerce

-- | The package name of the app. For example, com.google.android.youtube for
-- the YouTube app.
apPackageName :: Lens' ApplicationPolicy (Maybe Text)
apPackageName
  = lens _apPackageName
      (\ s a -> s{_apPackageName = a})

-- | Managed configuration applied to the app. The format for the
-- configuration is dictated by the ManagedProperty values supported by the
-- app. Each field name in the managed configuration must match the key
-- field of the ManagedProperty. The field value must be compatible with
-- the type of the ManagedProperty:
-- > +--------------+------------------+
-- > | /type/       | /JSON value/     |
-- > +--------------+------------------+
-- > | BOOL         | true or false    |
-- > +--------------+------------------+
-- > | STRING       | string           |
-- > +--------------+------------------+
-- > | INTEGER      | number           |
-- > +--------------+------------------+
-- > | CHOICE       | string           |
-- > +--------------+------------------+
-- > | MULTISELECT  | array of strings |
-- > +--------------+------------------+
-- > | HIDDEN       | string           |
-- > +--------------+------------------+
-- > | BUNDLE_ARRAY | array of objects |
-- > +--------------+------------------+
apManagedConfiguration :: Lens' ApplicationPolicy (Maybe ApplicationPolicyManagedConfiguration)
apManagedConfiguration
  = lens _apManagedConfiguration
      (\ s a -> s{_apManagedConfiguration = a})

-- | The default policy for all permissions requested by the app. If
-- specified, this overrides the policy-level default_permission_policy
-- which applies to all apps. It does not override the permission_grants
-- which applies to all apps.
apDefaultPermissionPolicy :: Lens' ApplicationPolicy (Maybe ApplicationPolicyDefaultPermissionPolicy)
apDefaultPermissionPolicy
  = lens _apDefaultPermissionPolicy
      (\ s a -> s{_apDefaultPermissionPolicy = a})

-- | Whether the app is disabled. When disabled, the app data is still
-- preserved.
apDisabled :: Lens' ApplicationPolicy (Maybe Bool)
apDisabled
  = lens _apDisabled (\ s a -> s{_apDisabled = a})

-- | Whether the app is allowed to lock itself in full-screen mode.
apLockTaskAllowed :: Lens' ApplicationPolicy (Maybe Bool)
apLockTaskAllowed
  = lens _apLockTaskAllowed
      (\ s a -> s{_apLockTaskAllowed = a})

-- | Explicit permission grants or denials for the app. These values override
-- the default_permission_policy and permission_grants which apply to all
-- apps.
apPermissionGrants :: Lens' ApplicationPolicy [PermissionGrant]
apPermissionGrants
  = lens _apPermissionGrants
      (\ s a -> s{_apPermissionGrants = a})
      . _Default
      . _Coerce

-- | The managed configurations template for the app, saved from the managed
-- configurations iframe. This field is ignored if managed_configuration is
-- set.
apManagedConfigurationTemplate :: Lens' ApplicationPolicy (Maybe ManagedConfigurationTemplate)
apManagedConfigurationTemplate
  = lens _apManagedConfigurationTemplate
      (\ s a -> s{_apManagedConfigurationTemplate = a})

-- | The minimum version of the app that runs on the device. If set, the
-- device attempts to update the app to at least this version code. If the
-- app is not up-to-date, the device will contain a NonComplianceDetail
-- with non_compliance_reason set to APP_NOT_UPDATED. The app must already
-- be published to Google Play with a version code greater than or equal to
-- this value. At most 20 apps may specify a minimum version code per
-- policy.
apMinimumVersionCode :: Lens' ApplicationPolicy (Maybe Int32)
apMinimumVersionCode
  = lens _apMinimumVersionCode
      (\ s a -> s{_apMinimumVersionCode = a})
      . mapping _Coerce

-- | The type of installation to perform.
apInstallType :: Lens' ApplicationPolicy (Maybe ApplicationPolicyInstallType)
apInstallType
  = lens _apInstallType
      (\ s a -> s{_apInstallType = a})

instance FromJSON ApplicationPolicy where
        parseJSON
          = withObject "ApplicationPolicy"
              (\ o ->
                 ApplicationPolicy' <$>
                   (o .:? "delegatedScopes" .!= mempty) <*>
                     (o .:? "packageName")
                     <*> (o .:? "managedConfiguration")
                     <*> (o .:? "defaultPermissionPolicy")
                     <*> (o .:? "disabled")
                     <*> (o .:? "lockTaskAllowed")
                     <*> (o .:? "permissionGrants" .!= mempty)
                     <*> (o .:? "managedConfigurationTemplate")
                     <*> (o .:? "minimumVersionCode")
                     <*> (o .:? "installType"))

instance ToJSON ApplicationPolicy where
        toJSON ApplicationPolicy'{..}
          = object
              (catMaybes
                 [("delegatedScopes" .=) <$> _apDelegatedScopes,
                  ("packageName" .=) <$> _apPackageName,
                  ("managedConfiguration" .=) <$>
                    _apManagedConfiguration,
                  ("defaultPermissionPolicy" .=) <$>
                    _apDefaultPermissionPolicy,
                  ("disabled" .=) <$> _apDisabled,
                  ("lockTaskAllowed" .=) <$> _apLockTaskAllowed,
                  ("permissionGrants" .=) <$> _apPermissionGrants,
                  ("managedConfigurationTemplate" .=) <$>
                    _apManagedConfigurationTemplate,
                  ("minimumVersionCode" .=) <$> _apMinimumVersionCode,
                  ("installType" .=) <$> _apInstallType])

-- | Response to a request to list devices for a given enterprise.
--
-- /See:/ 'listDevicesResponse' smart constructor.
data ListDevicesResponse =
  ListDevicesResponse'
    { _ldrNextPageToken :: !(Maybe Text)
    , _ldrDevices       :: !(Maybe [Device])
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

-- | If there are more results, a token to retrieve next page of results.
ldrNextPageToken :: Lens' ListDevicesResponse (Maybe Text)
ldrNextPageToken
  = lens _ldrNextPageToken
      (\ s a -> s{_ldrNextPageToken = a})

-- | The list of devices.
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

-- | The managed configurations template for the app, saved from the managed
-- configurations iframe.
--
-- /See:/ 'managedConfigurationTemplate' smart constructor.
data ManagedConfigurationTemplate =
  ManagedConfigurationTemplate'
    { _mctTemplateId             :: !(Maybe Text)
    , _mctConfigurationVariables :: !(Maybe ManagedConfigurationTemplateConfigurationVariables)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedConfigurationTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mctTemplateId'
--
-- * 'mctConfigurationVariables'
managedConfigurationTemplate
    :: ManagedConfigurationTemplate
managedConfigurationTemplate =
  ManagedConfigurationTemplate'
    {_mctTemplateId = Nothing, _mctConfigurationVariables = Nothing}

-- | The ID of the managed configurations template.
mctTemplateId :: Lens' ManagedConfigurationTemplate (Maybe Text)
mctTemplateId
  = lens _mctTemplateId
      (\ s a -> s{_mctTemplateId = a})

-- | Optional, a map containing configuration variables defined for the
-- configuration.
mctConfigurationVariables :: Lens' ManagedConfigurationTemplate (Maybe ManagedConfigurationTemplateConfigurationVariables)
mctConfigurationVariables
  = lens _mctConfigurationVariables
      (\ s a -> s{_mctConfigurationVariables = a})

instance FromJSON ManagedConfigurationTemplate where
        parseJSON
          = withObject "ManagedConfigurationTemplate"
              (\ o ->
                 ManagedConfigurationTemplate' <$>
                   (o .:? "templateId") <*>
                     (o .:? "configurationVariables"))

instance ToJSON ManagedConfigurationTemplate where
        toJSON ManagedConfigurationTemplate'{..}
          = object
              (catMaybes
                 [("templateId" .=) <$> _mctTemplateId,
                  ("configurationVariables" .=) <$>
                    _mctConfigurationVariables])

-- | The configuration applied to an enterprise.
--
-- /See:/ 'enterprise' smart constructor.
data Enterprise =
  Enterprise'
    { _eAppAutoApprovalEnabled   :: !(Maybe Bool)
    , _eEnabledNotificationTypes :: !(Maybe [Text])
    , _eSigninDetails            :: !(Maybe [SigninDetail])
    , _eName                     :: !(Maybe Text)
    , _ePubsubTopic              :: !(Maybe Text)
    , _eEnterpriseDisplayName    :: !(Maybe Text)
    , _eLogo                     :: !(Maybe ExternalData)
    , _eTermsAndConditions       :: !(Maybe [TermsAndConditions])
    , _ePrimaryColor             :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Enterprise' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eAppAutoApprovalEnabled'
--
-- * 'eEnabledNotificationTypes'
--
-- * 'eSigninDetails'
--
-- * 'eName'
--
-- * 'ePubsubTopic'
--
-- * 'eEnterpriseDisplayName'
--
-- * 'eLogo'
--
-- * 'eTermsAndConditions'
--
-- * 'ePrimaryColor'
enterprise
    :: Enterprise
enterprise =
  Enterprise'
    { _eAppAutoApprovalEnabled = Nothing
    , _eEnabledNotificationTypes = Nothing
    , _eSigninDetails = Nothing
    , _eName = Nothing
    , _ePubsubTopic = Nothing
    , _eEnterpriseDisplayName = Nothing
    , _eLogo = Nothing
    , _eTermsAndConditions = Nothing
    , _ePrimaryColor = Nothing
    }

-- | Deprecated and unused.
eAppAutoApprovalEnabled :: Lens' Enterprise (Maybe Bool)
eAppAutoApprovalEnabled
  = lens _eAppAutoApprovalEnabled
      (\ s a -> s{_eAppAutoApprovalEnabled = a})

-- | The types of Google Pub\/Sub notifications enabled for the enterprise.
eEnabledNotificationTypes :: Lens' Enterprise [Text]
eEnabledNotificationTypes
  = lens _eEnabledNotificationTypes
      (\ s a -> s{_eEnabledNotificationTypes = a})
      . _Default
      . _Coerce

-- | Sign-in details of the enterprise. Maximum of 1 SigninDetail is
-- supported.
eSigninDetails :: Lens' Enterprise [SigninDetail]
eSigninDetails
  = lens _eSigninDetails
      (\ s a -> s{_eSigninDetails = a})
      . _Default
      . _Coerce

-- | The name of the enterprise which is generated by the server during
-- creation, in the form enterprises\/{enterpriseId}.
eName :: Lens' Enterprise (Maybe Text)
eName = lens _eName (\ s a -> s{_eName = a})

-- | The topic that Cloud Pub\/Sub notifications are published to, in the
-- form projects\/{project}\/topics\/{topic}. This field is only required
-- if Pub\/Sub notifications are enabled.
ePubsubTopic :: Lens' Enterprise (Maybe Text)
ePubsubTopic
  = lens _ePubsubTopic (\ s a -> s{_ePubsubTopic = a})

-- | The name of the enterprise displayed to users.
eEnterpriseDisplayName :: Lens' Enterprise (Maybe Text)
eEnterpriseDisplayName
  = lens _eEnterpriseDisplayName
      (\ s a -> s{_eEnterpriseDisplayName = a})

-- | An image displayed as a logo during device provisioning. Supported types
-- are: image\/bmp, image\/gif, image\/x-ico, image\/jpeg, image\/png,
-- image\/webp, image\/vnd.wap.wbmp, image\/x-adobe-dng.
eLogo :: Lens' Enterprise (Maybe ExternalData)
eLogo = lens _eLogo (\ s a -> s{_eLogo = a})

-- | Terms and conditions that must be accepted when provisioning a device
-- for this enterprise. A page of terms is generated for each value in this
-- list.
eTermsAndConditions :: Lens' Enterprise [TermsAndConditions]
eTermsAndConditions
  = lens _eTermsAndConditions
      (\ s a -> s{_eTermsAndConditions = a})
      . _Default
      . _Coerce

-- | A color in RGB format that indicates the predominant color to display in
-- the device management app UI. The color components are stored as
-- follows: (red \<\< 16) | (green \<\< 8) | blue, where the value of each
-- component is between 0 and 255, inclusive.
ePrimaryColor :: Lens' Enterprise (Maybe Int32)
ePrimaryColor
  = lens _ePrimaryColor
      (\ s a -> s{_ePrimaryColor = a})
      . mapping _Coerce

instance FromJSON Enterprise where
        parseJSON
          = withObject "Enterprise"
              (\ o ->
                 Enterprise' <$>
                   (o .:? "appAutoApprovalEnabled") <*>
                     (o .:? "enabledNotificationTypes" .!= mempty)
                     <*> (o .:? "signinDetails" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "pubsubTopic")
                     <*> (o .:? "enterpriseDisplayName")
                     <*> (o .:? "logo")
                     <*> (o .:? "termsAndConditions" .!= mempty)
                     <*> (o .:? "primaryColor"))

instance ToJSON Enterprise where
        toJSON Enterprise'{..}
          = object
              (catMaybes
                 [("appAutoApprovalEnabled" .=) <$>
                    _eAppAutoApprovalEnabled,
                  ("enabledNotificationTypes" .=) <$>
                    _eEnabledNotificationTypes,
                  ("signinDetails" .=) <$> _eSigninDetails,
                  ("name" .=) <$> _eName,
                  ("pubsubTopic" .=) <$> _ePubsubTopic,
                  ("enterpriseDisplayName" .=) <$>
                    _eEnterpriseDisplayName,
                  ("logo" .=) <$> _eLogo,
                  ("termsAndConditions" .=) <$> _eTermsAndConditions,
                  ("primaryColor" .=) <$> _ePrimaryColor])

-- | An event related to memory and storage measurements.
--
-- /See:/ 'memoryEvent' smart constructor.
data MemoryEvent =
  MemoryEvent'
    { _meByteCount  :: !(Maybe (Textual Int64))
    , _meEventType  :: !(Maybe MemoryEventEventType)
    , _meCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MemoryEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'meByteCount'
--
-- * 'meEventType'
--
-- * 'meCreateTime'
memoryEvent
    :: MemoryEvent
memoryEvent =
  MemoryEvent'
    {_meByteCount = Nothing, _meEventType = Nothing, _meCreateTime = Nothing}

-- | The number of free bytes in the medium, or for
-- EXTERNAL_STORAGE_DETECTED, the total capacity in bytes of the storage
-- medium.
meByteCount :: Lens' MemoryEvent (Maybe Int64)
meByteCount
  = lens _meByteCount (\ s a -> s{_meByteCount = a}) .
      mapping _Coerce

-- | Event type.
meEventType :: Lens' MemoryEvent (Maybe MemoryEventEventType)
meEventType
  = lens _meEventType (\ s a -> s{_meEventType = a})

-- | The creation time of the event.
meCreateTime :: Lens' MemoryEvent (Maybe UTCTime)
meCreateTime
  = lens _meCreateTime (\ s a -> s{_meCreateTime = a})
      . mapping _DateTime

instance FromJSON MemoryEvent where
        parseJSON
          = withObject "MemoryEvent"
              (\ o ->
                 MemoryEvent' <$>
                   (o .:? "byteCount") <*> (o .:? "eventType") <*>
                     (o .:? "createTime"))

instance ToJSON MemoryEvent where
        toJSON MemoryEvent'{..}
          = object
              (catMaybes
                 [("byteCount" .=) <$> _meByteCount,
                  ("eventType" .=) <$> _meEventType,
                  ("createTime" .=) <$> _meCreateTime])

-- | Configuration for an Android permission and its grant state.
--
-- /See:/ 'permissionGrant' smart constructor.
data PermissionGrant =
  PermissionGrant'
    { _pgPolicy     :: !(Maybe PermissionGrantPolicy)
    , _pgPermission :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PermissionGrant' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgPolicy'
--
-- * 'pgPermission'
permissionGrant
    :: PermissionGrant
permissionGrant =
  PermissionGrant' {_pgPolicy = Nothing, _pgPermission = Nothing}

-- | The policy for granting the permission.
pgPolicy :: Lens' PermissionGrant (Maybe PermissionGrantPolicy)
pgPolicy = lens _pgPolicy (\ s a -> s{_pgPolicy = a})

-- | The Android permission or group, e.g. android.permission.READ_CALENDAR
-- or android.permission_group.CALENDAR.
pgPermission :: Lens' PermissionGrant (Maybe Text)
pgPermission
  = lens _pgPermission (\ s a -> s{_pgPermission = a})

instance FromJSON PermissionGrant where
        parseJSON
          = withObject "PermissionGrant"
              (\ o ->
                 PermissionGrant' <$>
                   (o .:? "policy") <*> (o .:? "permission"))

instance ToJSON PermissionGrant where
        toJSON PermissionGrant'{..}
          = object
              (catMaybes
                 [("policy" .=) <$> _pgPolicy,
                  ("permission" .=) <$> _pgPermission])

-- | A resource containing sign in details for an enterprise.
--
-- /See:/ 'signinDetail' smart constructor.
data SigninDetail =
  SigninDetail'
    { _sdSigninURL             :: !(Maybe Text)
    , _sdQrCode                :: !(Maybe Text)
    , _sdSigninEnrollmentToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SigninDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdSigninURL'
--
-- * 'sdQrCode'
--
-- * 'sdSigninEnrollmentToken'
signinDetail
    :: SigninDetail
signinDetail =
  SigninDetail'
    { _sdSigninURL = Nothing
    , _sdQrCode = Nothing
    , _sdSigninEnrollmentToken = Nothing
    }

-- | Sign-in URL for authentication when device is provisioned with a sign-in
-- enrollment token. The sign-in endpoint should finish authentication flow
-- with a URL in the form of
-- https:\/\/enterprise.google.com\/android\/enroll?et= for a successful
-- login, or https:\/\/enterprise.google.com\/android\/enroll\/invalid for
-- a failed login.
sdSigninURL :: Lens' SigninDetail (Maybe Text)
sdSigninURL
  = lens _sdSigninURL (\ s a -> s{_sdSigninURL = a})

-- | A JSON string whose UTF-8 representation can be used to generate a QR
-- code to enroll a device with this enrollment token. To enroll a device
-- using NFC, the NFC record must contain a serialized java.util.Properties
-- representation of the properties in the JSON. This is a read-only field
-- generated by the server.
sdQrCode :: Lens' SigninDetail (Maybe Text)
sdQrCode = lens _sdQrCode (\ s a -> s{_sdQrCode = a})

-- | An enterprise wide enrollment token used to trigger custom sign-in flow.
-- This is a read-only field generated by the server.
sdSigninEnrollmentToken :: Lens' SigninDetail (Maybe Text)
sdSigninEnrollmentToken
  = lens _sdSigninEnrollmentToken
      (\ s a -> s{_sdSigninEnrollmentToken = a})

instance FromJSON SigninDetail where
        parseJSON
          = withObject "SigninDetail"
              (\ o ->
                 SigninDetail' <$>
                   (o .:? "signinUrl") <*> (o .:? "qrCode") <*>
                     (o .:? "signinEnrollmentToken"))

instance ToJSON SigninDetail where
        toJSON SigninDetail'{..}
          = object
              (catMaybes
                 [("signinUrl" .=) <$> _sdSigninURL,
                  ("qrCode" .=) <$> _sdQrCode,
                  ("signinEnrollmentToken" .=) <$>
                    _sdSigninEnrollmentToken])

-- | An enterprise signup URL.
--
-- /See:/ 'signupURL' smart constructor.
data SignupURL =
  SignupURL'
    { _suURL  :: !(Maybe Text)
    , _suName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SignupURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suURL'
--
-- * 'suName'
signupURL
    :: SignupURL
signupURL = SignupURL' {_suURL = Nothing, _suName = Nothing}

-- | A URL where an enterprise admin can register their enterprise. The page
-- can\'t be rendered in an iframe.
suURL :: Lens' SignupURL (Maybe Text)
suURL = lens _suURL (\ s a -> s{_suURL = a})

-- | The name of the resource. Use this value in the signupUrl field when
-- calling enterprises.create to complete the enterprise signup flow.
suName :: Lens' SignupURL (Maybe Text)
suName = lens _suName (\ s a -> s{_suName = a})

instance FromJSON SignupURL where
        parseJSON
          = withObject "SignupURL"
              (\ o ->
                 SignupURL' <$> (o .:? "url") <*> (o .:? "name"))

instance ToJSON SignupURL where
        toJSON SignupURL'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _suURL, ("name" .=) <$> _suName])

-- | Device network info.
--
-- /See:/ 'networkInfo' smart constructor.
data NetworkInfo =
  NetworkInfo'
    { _niNetworkOperatorName :: !(Maybe Text)
    , _niMeid                :: !(Maybe Text)
    , _niImei                :: !(Maybe Text)
    , _niWifiMACAddress      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NetworkInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niNetworkOperatorName'
--
-- * 'niMeid'
--
-- * 'niImei'
--
-- * 'niWifiMACAddress'
networkInfo
    :: NetworkInfo
networkInfo =
  NetworkInfo'
    { _niNetworkOperatorName = Nothing
    , _niMeid = Nothing
    , _niImei = Nothing
    , _niWifiMACAddress = Nothing
    }

-- | Alphabetic name of current registered operator. For example, Vodafone.
niNetworkOperatorName :: Lens' NetworkInfo (Maybe Text)
niNetworkOperatorName
  = lens _niNetworkOperatorName
      (\ s a -> s{_niNetworkOperatorName = a})

-- | MEID number of the CDMA device. For example, A00000292788E1.
niMeid :: Lens' NetworkInfo (Maybe Text)
niMeid = lens _niMeid (\ s a -> s{_niMeid = a})

-- | IMEI number of the GSM device. For example, A1000031212.
niImei :: Lens' NetworkInfo (Maybe Text)
niImei = lens _niImei (\ s a -> s{_niImei = a})

-- | Wi-Fi MAC address of the device. For example, 7c:11:11:11:11:11.
niWifiMACAddress :: Lens' NetworkInfo (Maybe Text)
niWifiMACAddress
  = lens _niWifiMACAddress
      (\ s a -> s{_niWifiMACAddress = a})

instance FromJSON NetworkInfo where
        parseJSON
          = withObject "NetworkInfo"
              (\ o ->
                 NetworkInfo' <$>
                   (o .:? "networkOperatorName") <*> (o .:? "meid") <*>
                     (o .:? "imei")
                     <*> (o .:? "wifiMacAddress"))

instance ToJSON NetworkInfo where
        toJSON NetworkInfo'{..}
          = object
              (catMaybes
                 [("networkOperatorName" .=) <$>
                    _niNetworkOperatorName,
                  ("meid" .=) <$> _niMeid, ("imei" .=) <$> _niImei,
                  ("wifiMacAddress" .=) <$> _niWifiMACAddress])

-- | A power management event.
--
-- /See:/ 'powerManagementEvent' smart constructor.
data PowerManagementEvent =
  PowerManagementEvent'
    { _pmeBatteryLevel :: !(Maybe (Textual Double))
    , _pmeEventType    :: !(Maybe PowerManagementEventEventType)
    , _pmeCreateTime   :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PowerManagementEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmeBatteryLevel'
--
-- * 'pmeEventType'
--
-- * 'pmeCreateTime'
powerManagementEvent
    :: PowerManagementEvent
powerManagementEvent =
  PowerManagementEvent'
    { _pmeBatteryLevel = Nothing
    , _pmeEventType = Nothing
    , _pmeCreateTime = Nothing
    }

-- | For BATTERY_LEVEL_COLLECTED events, the battery level as a percentage.
pmeBatteryLevel :: Lens' PowerManagementEvent (Maybe Double)
pmeBatteryLevel
  = lens _pmeBatteryLevel
      (\ s a -> s{_pmeBatteryLevel = a})
      . mapping _Coerce

-- | Event type.
pmeEventType :: Lens' PowerManagementEvent (Maybe PowerManagementEventEventType)
pmeEventType
  = lens _pmeEventType (\ s a -> s{_pmeEventType = a})

-- | The creation time of the event.
pmeCreateTime :: Lens' PowerManagementEvent (Maybe UTCTime)
pmeCreateTime
  = lens _pmeCreateTime
      (\ s a -> s{_pmeCreateTime = a})
      . mapping _DateTime

instance FromJSON PowerManagementEvent where
        parseJSON
          = withObject "PowerManagementEvent"
              (\ o ->
                 PowerManagementEvent' <$>
                   (o .:? "batteryLevel") <*> (o .:? "eventType") <*>
                     (o .:? "createTime"))

instance ToJSON PowerManagementEvent where
        toJSON PowerManagementEvent'{..}
          = object
              (catMaybes
                 [("batteryLevel" .=) <$> _pmeBatteryLevel,
                  ("eventType" .=) <$> _pmeEventType,
                  ("createTime" .=) <$> _pmeCreateTime])

-- | A policy resources represents a group settings that govern the behavior
-- of a managed device and the apps installed on it.
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pBluetoothConfigDisabled            :: !(Maybe Bool)
    , _pUnmuteMicrophoneDisabled           :: !(Maybe Bool)
    , _pMountPhysicalMediaDisabled         :: !(Maybe Bool)
    , _pFrpAdminEmails                     :: !(Maybe [Text])
    , _pAppAutoUpdatePolicy                :: !(Maybe PolicyAppAutoUpdatePolicy)
    , _pEncryptionPolicy                   :: !(Maybe PolicyEncryptionPolicy)
    , _pAndroidDevicePolicyTracks          :: !(Maybe [Text])
    , _pSafeBootDisabled                   :: !(Maybe Bool)
    , _pAlwaysOnVPNPackage                 :: !(Maybe AlwaysOnVPNPackage)
    , _pChoosePrivateKeyRules              :: !(Maybe [ChoosePrivateKeyRule])
    , _pCredentialsConfigDisabled          :: !(Maybe Bool)
    , _pRecommendedGlobalProxy             :: !(Maybe ProxyInfo)
    , _pKeyguardDisabled                   :: !(Maybe Bool)
    , _pSkipFirstUseHintsEnabled           :: !(Maybe Bool)
    , _pAdjustVolumeDisabled               :: !(Maybe Bool)
    , _pDefaultPermissionPolicy            :: !(Maybe PolicyDefaultPermissionPolicy)
    , _pUninstallAppsDisabled              :: !(Maybe Bool)
    , _pSetUserIconDisabled                :: !(Maybe Bool)
    , _pPermittedInputMethods              :: !(Maybe PackageNameList)
    , _pScreenCaptureDisabled              :: !(Maybe Bool)
    , _pAddUserDisabled                    :: !(Maybe Bool)
    , _pShareLocationDisabled              :: !(Maybe Bool)
    , _pAutoTimeRequired                   :: !(Maybe Bool)
    , _pInstallAppsDisabled                :: !(Maybe Bool)
    , _pCreateWindowsDisabled              :: !(Maybe Bool)
    , _pNetworkResetDisabled               :: !(Maybe Bool)
    , _pBluetoothContactSharingDisabled    :: !(Maybe Bool)
    , _pPermissionGrants                   :: !(Maybe [PermissionGrant])
    , _pShortSupportMessage                :: !(Maybe UserFacingMessage)
    , _pStayOnPluggedModes                 :: !(Maybe [Text])
    , _pDataRoamingDisabled                :: !(Maybe Bool)
    , _pDebuggingFeaturesAllowed           :: !(Maybe Bool)
    , _pKioskCustomLauncherEnabled         :: !(Maybe Bool)
    , _pWifiConfigsLockdownEnabled         :: !(Maybe Bool)
    , _pUsbMassStorageEnabled              :: !(Maybe Bool)
    , _pNetworkEscapeHatchEnabled          :: !(Maybe Bool)
    , _pSystemUpdate                       :: !(Maybe SystemUpdate)
    , _pInstallUnknownSourcesAllowed       :: !(Maybe Bool)
    , _pName                               :: !(Maybe Text)
    , _pPrivateKeySelectionEnabled         :: !(Maybe Bool)
    , _pOutgoingCallsDisabled              :: !(Maybe Bool)
    , _pStatusReportingSettings            :: !(Maybe StatusReportingSettings)
    , _pRemoveUserDisabled                 :: !(Maybe Bool)
    , _pMobileNetworksConfigDisabled       :: !(Maybe Bool)
    , _pVersion                            :: !(Maybe (Textual Int64))
    , _pEnsureVerifyAppsEnabled            :: !(Maybe Bool)
    , _pSetWallpaperDisabled               :: !(Maybe Bool)
    , _pVPNConfigDisabled                  :: !(Maybe Bool)
    , _pSetupActions                       :: !(Maybe [SetupAction])
    , _pOpenNetworkConfiguration           :: !(Maybe PolicyOpenNetworkConfiguration)
    , _pModifyAccountsDisabled             :: !(Maybe Bool)
    , _pBlockApplicationsEnabled           :: !(Maybe Bool)
    , _pKeyguardDisabledFeatures           :: !(Maybe [Text])
    , _pFunDisabled                        :: !(Maybe Bool)
    , _pSmsDisabled                        :: !(Maybe Bool)
    , _pMaximumTimeToLock                  :: !(Maybe (Textual Int64))
    , _pOutgoingBeamDisabled               :: !(Maybe Bool)
    , _pStatusBarDisabled                  :: !(Maybe Bool)
    , _pCellBroadcastsConfigDisabled       :: !(Maybe Bool)
    , _pDeviceOwnerLockScreenInfo          :: !(Maybe UserFacingMessage)
    , _pPlayStoreMode                      :: !(Maybe PolicyPlayStoreMode)
    , _pComplianceRules                    :: !(Maybe [ComplianceRule])
    , _pTetheringConfigDisabled            :: !(Maybe Bool)
    , _pAccountTypesWithManagementDisabled :: !(Maybe [Text])
    , _pWifiConfigDisabled                 :: !(Maybe Bool)
    , _pPersistentPreferredActivities      :: !(Maybe [PersistentPreferredActivity])
    , _pPasswordRequirements               :: !(Maybe PasswordRequirements)
    , _pLongSupportMessage                 :: !(Maybe UserFacingMessage)
    , _pLocationMode                       :: !(Maybe PolicyLocationMode)
    , _pBluetoothDisabled                  :: !(Maybe Bool)
    , _pUsbFileTransferDisabled            :: !(Maybe Bool)
    , _pCameraDisabled                     :: !(Maybe Bool)
    , _pApplications                       :: !(Maybe [ApplicationPolicy])
    , _pPasswordPolicies                   :: !(Maybe [PasswordRequirements])
    , _pFactoryResetDisabled               :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pBluetoothConfigDisabled'
--
-- * 'pUnmuteMicrophoneDisabled'
--
-- * 'pMountPhysicalMediaDisabled'
--
-- * 'pFrpAdminEmails'
--
-- * 'pAppAutoUpdatePolicy'
--
-- * 'pEncryptionPolicy'
--
-- * 'pAndroidDevicePolicyTracks'
--
-- * 'pSafeBootDisabled'
--
-- * 'pAlwaysOnVPNPackage'
--
-- * 'pChoosePrivateKeyRules'
--
-- * 'pCredentialsConfigDisabled'
--
-- * 'pRecommendedGlobalProxy'
--
-- * 'pKeyguardDisabled'
--
-- * 'pSkipFirstUseHintsEnabled'
--
-- * 'pAdjustVolumeDisabled'
--
-- * 'pDefaultPermissionPolicy'
--
-- * 'pUninstallAppsDisabled'
--
-- * 'pSetUserIconDisabled'
--
-- * 'pPermittedInputMethods'
--
-- * 'pScreenCaptureDisabled'
--
-- * 'pAddUserDisabled'
--
-- * 'pShareLocationDisabled'
--
-- * 'pAutoTimeRequired'
--
-- * 'pInstallAppsDisabled'
--
-- * 'pCreateWindowsDisabled'
--
-- * 'pNetworkResetDisabled'
--
-- * 'pBluetoothContactSharingDisabled'
--
-- * 'pPermissionGrants'
--
-- * 'pShortSupportMessage'
--
-- * 'pStayOnPluggedModes'
--
-- * 'pDataRoamingDisabled'
--
-- * 'pDebuggingFeaturesAllowed'
--
-- * 'pKioskCustomLauncherEnabled'
--
-- * 'pWifiConfigsLockdownEnabled'
--
-- * 'pUsbMassStorageEnabled'
--
-- * 'pNetworkEscapeHatchEnabled'
--
-- * 'pSystemUpdate'
--
-- * 'pInstallUnknownSourcesAllowed'
--
-- * 'pName'
--
-- * 'pPrivateKeySelectionEnabled'
--
-- * 'pOutgoingCallsDisabled'
--
-- * 'pStatusReportingSettings'
--
-- * 'pRemoveUserDisabled'
--
-- * 'pMobileNetworksConfigDisabled'
--
-- * 'pVersion'
--
-- * 'pEnsureVerifyAppsEnabled'
--
-- * 'pSetWallpaperDisabled'
--
-- * 'pVPNConfigDisabled'
--
-- * 'pSetupActions'
--
-- * 'pOpenNetworkConfiguration'
--
-- * 'pModifyAccountsDisabled'
--
-- * 'pBlockApplicationsEnabled'
--
-- * 'pKeyguardDisabledFeatures'
--
-- * 'pFunDisabled'
--
-- * 'pSmsDisabled'
--
-- * 'pMaximumTimeToLock'
--
-- * 'pOutgoingBeamDisabled'
--
-- * 'pStatusBarDisabled'
--
-- * 'pCellBroadcastsConfigDisabled'
--
-- * 'pDeviceOwnerLockScreenInfo'
--
-- * 'pPlayStoreMode'
--
-- * 'pComplianceRules'
--
-- * 'pTetheringConfigDisabled'
--
-- * 'pAccountTypesWithManagementDisabled'
--
-- * 'pWifiConfigDisabled'
--
-- * 'pPersistentPreferredActivities'
--
-- * 'pPasswordRequirements'
--
-- * 'pLongSupportMessage'
--
-- * 'pLocationMode'
--
-- * 'pBluetoothDisabled'
--
-- * 'pUsbFileTransferDisabled'
--
-- * 'pCameraDisabled'
--
-- * 'pApplications'
--
-- * 'pPasswordPolicies'
--
-- * 'pFactoryResetDisabled'
policy
    :: Policy
policy =
  Policy'
    { _pBluetoothConfigDisabled = Nothing
    , _pUnmuteMicrophoneDisabled = Nothing
    , _pMountPhysicalMediaDisabled = Nothing
    , _pFrpAdminEmails = Nothing
    , _pAppAutoUpdatePolicy = Nothing
    , _pEncryptionPolicy = Nothing
    , _pAndroidDevicePolicyTracks = Nothing
    , _pSafeBootDisabled = Nothing
    , _pAlwaysOnVPNPackage = Nothing
    , _pChoosePrivateKeyRules = Nothing
    , _pCredentialsConfigDisabled = Nothing
    , _pRecommendedGlobalProxy = Nothing
    , _pKeyguardDisabled = Nothing
    , _pSkipFirstUseHintsEnabled = Nothing
    , _pAdjustVolumeDisabled = Nothing
    , _pDefaultPermissionPolicy = Nothing
    , _pUninstallAppsDisabled = Nothing
    , _pSetUserIconDisabled = Nothing
    , _pPermittedInputMethods = Nothing
    , _pScreenCaptureDisabled = Nothing
    , _pAddUserDisabled = Nothing
    , _pShareLocationDisabled = Nothing
    , _pAutoTimeRequired = Nothing
    , _pInstallAppsDisabled = Nothing
    , _pCreateWindowsDisabled = Nothing
    , _pNetworkResetDisabled = Nothing
    , _pBluetoothContactSharingDisabled = Nothing
    , _pPermissionGrants = Nothing
    , _pShortSupportMessage = Nothing
    , _pStayOnPluggedModes = Nothing
    , _pDataRoamingDisabled = Nothing
    , _pDebuggingFeaturesAllowed = Nothing
    , _pKioskCustomLauncherEnabled = Nothing
    , _pWifiConfigsLockdownEnabled = Nothing
    , _pUsbMassStorageEnabled = Nothing
    , _pNetworkEscapeHatchEnabled = Nothing
    , _pSystemUpdate = Nothing
    , _pInstallUnknownSourcesAllowed = Nothing
    , _pName = Nothing
    , _pPrivateKeySelectionEnabled = Nothing
    , _pOutgoingCallsDisabled = Nothing
    , _pStatusReportingSettings = Nothing
    , _pRemoveUserDisabled = Nothing
    , _pMobileNetworksConfigDisabled = Nothing
    , _pVersion = Nothing
    , _pEnsureVerifyAppsEnabled = Nothing
    , _pSetWallpaperDisabled = Nothing
    , _pVPNConfigDisabled = Nothing
    , _pSetupActions = Nothing
    , _pOpenNetworkConfiguration = Nothing
    , _pModifyAccountsDisabled = Nothing
    , _pBlockApplicationsEnabled = Nothing
    , _pKeyguardDisabledFeatures = Nothing
    , _pFunDisabled = Nothing
    , _pSmsDisabled = Nothing
    , _pMaximumTimeToLock = Nothing
    , _pOutgoingBeamDisabled = Nothing
    , _pStatusBarDisabled = Nothing
    , _pCellBroadcastsConfigDisabled = Nothing
    , _pDeviceOwnerLockScreenInfo = Nothing
    , _pPlayStoreMode = Nothing
    , _pComplianceRules = Nothing
    , _pTetheringConfigDisabled = Nothing
    , _pAccountTypesWithManagementDisabled = Nothing
    , _pWifiConfigDisabled = Nothing
    , _pPersistentPreferredActivities = Nothing
    , _pPasswordRequirements = Nothing
    , _pLongSupportMessage = Nothing
    , _pLocationMode = Nothing
    , _pBluetoothDisabled = Nothing
    , _pUsbFileTransferDisabled = Nothing
    , _pCameraDisabled = Nothing
    , _pApplications = Nothing
    , _pPasswordPolicies = Nothing
    , _pFactoryResetDisabled = Nothing
    }

-- | Whether configuring bluetooth is disabled.
pBluetoothConfigDisabled :: Lens' Policy (Maybe Bool)
pBluetoothConfigDisabled
  = lens _pBluetoothConfigDisabled
      (\ s a -> s{_pBluetoothConfigDisabled = a})

-- | Whether the microphone is muted and adjusting microphone volume is
-- disabled.
pUnmuteMicrophoneDisabled :: Lens' Policy (Maybe Bool)
pUnmuteMicrophoneDisabled
  = lens _pUnmuteMicrophoneDisabled
      (\ s a -> s{_pUnmuteMicrophoneDisabled = a})

-- | Whether the user mounting physical external media is disabled.
pMountPhysicalMediaDisabled :: Lens' Policy (Maybe Bool)
pMountPhysicalMediaDisabled
  = lens _pMountPhysicalMediaDisabled
      (\ s a -> s{_pMountPhysicalMediaDisabled = a})

-- | Email addresses of device administrators for factory reset protection.
-- When the device is factory reset, it will require one of these admins to
-- log in with the Google account email and password to unlock the device.
-- If no admins are specified, the device won\'t provide factory reset
-- protection.
pFrpAdminEmails :: Lens' Policy [Text]
pFrpAdminEmails
  = lens _pFrpAdminEmails
      (\ s a -> s{_pFrpAdminEmails = a})
      . _Default
      . _Coerce

-- | The app auto update policy, which controls when automatic app updates
-- can be applied.
pAppAutoUpdatePolicy :: Lens' Policy (Maybe PolicyAppAutoUpdatePolicy)
pAppAutoUpdatePolicy
  = lens _pAppAutoUpdatePolicy
      (\ s a -> s{_pAppAutoUpdatePolicy = a})

-- | Whether encryption is enabled
pEncryptionPolicy :: Lens' Policy (Maybe PolicyEncryptionPolicy)
pEncryptionPolicy
  = lens _pEncryptionPolicy
      (\ s a -> s{_pEncryptionPolicy = a})

-- | The app tracks for Android Device Policy the device can access. The
-- device receives the latest version among all accessible tracks. If no
-- tracks are specified, then the device only uses the production track.
pAndroidDevicePolicyTracks :: Lens' Policy [Text]
pAndroidDevicePolicyTracks
  = lens _pAndroidDevicePolicyTracks
      (\ s a -> s{_pAndroidDevicePolicyTracks = a})
      . _Default
      . _Coerce

-- | Whether rebooting the device into safe boot is disabled.
pSafeBootDisabled :: Lens' Policy (Maybe Bool)
pSafeBootDisabled
  = lens _pSafeBootDisabled
      (\ s a -> s{_pSafeBootDisabled = a})

-- | Configuration for an always-on VPN connection. Use with
-- vpn_config_disabled to prevent modification of this setting.
pAlwaysOnVPNPackage :: Lens' Policy (Maybe AlwaysOnVPNPackage)
pAlwaysOnVPNPackage
  = lens _pAlwaysOnVPNPackage
      (\ s a -> s{_pAlwaysOnVPNPackage = a})

-- | Rules for automatically choosing a private key and certificate to
-- authenticate the device to a server. The rules are ordered by increasing
-- precedence, so if an outgoing request matches more than one rule, the
-- last rule defines which private key to use.
pChoosePrivateKeyRules :: Lens' Policy [ChoosePrivateKeyRule]
pChoosePrivateKeyRules
  = lens _pChoosePrivateKeyRules
      (\ s a -> s{_pChoosePrivateKeyRules = a})
      . _Default
      . _Coerce

-- | Whether configuring user credentials is disabled.
pCredentialsConfigDisabled :: Lens' Policy (Maybe Bool)
pCredentialsConfigDisabled
  = lens _pCredentialsConfigDisabled
      (\ s a -> s{_pCredentialsConfigDisabled = a})

-- | The network-independent global HTTP proxy. Typically proxies should be
-- configured per-network in open_network_configuration. However for
-- unusual configurations like general internal filtering a global HTTP
-- proxy may be useful. If the proxy is not accessible, network access may
-- break. The global proxy is only a recommendation and some apps may
-- ignore it.
pRecommendedGlobalProxy :: Lens' Policy (Maybe ProxyInfo)
pRecommendedGlobalProxy
  = lens _pRecommendedGlobalProxy
      (\ s a -> s{_pRecommendedGlobalProxy = a})

-- | Whether the keyguard is disabled.
pKeyguardDisabled :: Lens' Policy (Maybe Bool)
pKeyguardDisabled
  = lens _pKeyguardDisabled
      (\ s a -> s{_pKeyguardDisabled = a})

-- | Flag to skip hints on the first use. Enterprise admin can enable the
-- system recommendation for apps to skip their user tutorial and other
-- introductory hints on first start-up.
pSkipFirstUseHintsEnabled :: Lens' Policy (Maybe Bool)
pSkipFirstUseHintsEnabled
  = lens _pSkipFirstUseHintsEnabled
      (\ s a -> s{_pSkipFirstUseHintsEnabled = a})

-- | Whether adjusting the master volume is disabled.
pAdjustVolumeDisabled :: Lens' Policy (Maybe Bool)
pAdjustVolumeDisabled
  = lens _pAdjustVolumeDisabled
      (\ s a -> s{_pAdjustVolumeDisabled = a})

-- | The default permission policy for runtime permission requests.
pDefaultPermissionPolicy :: Lens' Policy (Maybe PolicyDefaultPermissionPolicy)
pDefaultPermissionPolicy
  = lens _pDefaultPermissionPolicy
      (\ s a -> s{_pDefaultPermissionPolicy = a})

-- | Whether user uninstallation of applications is disabled.
pUninstallAppsDisabled :: Lens' Policy (Maybe Bool)
pUninstallAppsDisabled
  = lens _pUninstallAppsDisabled
      (\ s a -> s{_pUninstallAppsDisabled = a})

-- | Whether changing the user icon is disabled.
pSetUserIconDisabled :: Lens' Policy (Maybe Bool)
pSetUserIconDisabled
  = lens _pSetUserIconDisabled
      (\ s a -> s{_pSetUserIconDisabled = a})

-- | If present, only the input methods provided by packages in this list are
-- permitted. If this field is present, but the list is empty, then only
-- system input methods are permitted.
pPermittedInputMethods :: Lens' Policy (Maybe PackageNameList)
pPermittedInputMethods
  = lens _pPermittedInputMethods
      (\ s a -> s{_pPermittedInputMethods = a})

-- | Whether screen capture is disabled.
pScreenCaptureDisabled :: Lens' Policy (Maybe Bool)
pScreenCaptureDisabled
  = lens _pScreenCaptureDisabled
      (\ s a -> s{_pScreenCaptureDisabled = a})

-- | Whether adding new users and profiles is disabled.
pAddUserDisabled :: Lens' Policy (Maybe Bool)
pAddUserDisabled
  = lens _pAddUserDisabled
      (\ s a -> s{_pAddUserDisabled = a})

-- | Whether location sharing is disabled.
pShareLocationDisabled :: Lens' Policy (Maybe Bool)
pShareLocationDisabled
  = lens _pShareLocationDisabled
      (\ s a -> s{_pShareLocationDisabled = a})

-- | Whether auto time is required, which prevents the user from manually
-- setting the date and time.
pAutoTimeRequired :: Lens' Policy (Maybe Bool)
pAutoTimeRequired
  = lens _pAutoTimeRequired
      (\ s a -> s{_pAutoTimeRequired = a})

-- | Whether user installation of apps is disabled.
pInstallAppsDisabled :: Lens' Policy (Maybe Bool)
pInstallAppsDisabled
  = lens _pInstallAppsDisabled
      (\ s a -> s{_pInstallAppsDisabled = a})

-- | Whether creating windows besides app windows is disabled.
pCreateWindowsDisabled :: Lens' Policy (Maybe Bool)
pCreateWindowsDisabled
  = lens _pCreateWindowsDisabled
      (\ s a -> s{_pCreateWindowsDisabled = a})

-- | Whether resetting network settings is disabled.
pNetworkResetDisabled :: Lens' Policy (Maybe Bool)
pNetworkResetDisabled
  = lens _pNetworkResetDisabled
      (\ s a -> s{_pNetworkResetDisabled = a})

-- | Whether bluetooth contact sharing is disabled.
pBluetoothContactSharingDisabled :: Lens' Policy (Maybe Bool)
pBluetoothContactSharingDisabled
  = lens _pBluetoothContactSharingDisabled
      (\ s a -> s{_pBluetoothContactSharingDisabled = a})

-- | Explicit permission or group grants or denials for all apps. These
-- values override the default_permission_policy.
pPermissionGrants :: Lens' Policy [PermissionGrant]
pPermissionGrants
  = lens _pPermissionGrants
      (\ s a -> s{_pPermissionGrants = a})
      . _Default
      . _Coerce

-- | A message displayed to the user in the settings screen wherever
-- functionality has been disabled by the admin.
pShortSupportMessage :: Lens' Policy (Maybe UserFacingMessage)
pShortSupportMessage
  = lens _pShortSupportMessage
      (\ s a -> s{_pShortSupportMessage = a})

-- | The battery plugged in modes for which the device stays on. When using
-- this setting, it is recommended to clear maximum_time_to_lock so that
-- the device doesn\'t lock itself while it stays on.
pStayOnPluggedModes :: Lens' Policy [Text]
pStayOnPluggedModes
  = lens _pStayOnPluggedModes
      (\ s a -> s{_pStayOnPluggedModes = a})
      . _Default
      . _Coerce

-- | Whether roaming data services are disabled.
pDataRoamingDisabled :: Lens' Policy (Maybe Bool)
pDataRoamingDisabled
  = lens _pDataRoamingDisabled
      (\ s a -> s{_pDataRoamingDisabled = a})

-- | Whether the user is allowed to enable debugging features.
pDebuggingFeaturesAllowed :: Lens' Policy (Maybe Bool)
pDebuggingFeaturesAllowed
  = lens _pDebuggingFeaturesAllowed
      (\ s a -> s{_pDebuggingFeaturesAllowed = a})

-- | Whether the kiosk custom launcher is enabled. This replaces the home
-- screen with a launcher that locks down the device to the apps installed
-- via the applications setting. The apps appear on a single page in
-- alphabetical order. It is recommended to also use status_bar_disabled to
-- block access to device settings.
pKioskCustomLauncherEnabled :: Lens' Policy (Maybe Bool)
pKioskCustomLauncherEnabled
  = lens _pKioskCustomLauncherEnabled
      (\ s a -> s{_pKioskCustomLauncherEnabled = a})

-- | DEPRECATED - Use wifi_config_disabled.
pWifiConfigsLockdownEnabled :: Lens' Policy (Maybe Bool)
pWifiConfigsLockdownEnabled
  = lens _pWifiConfigsLockdownEnabled
      (\ s a -> s{_pWifiConfigsLockdownEnabled = a})

-- | Whether USB storage is enabled. Deprecated.
pUsbMassStorageEnabled :: Lens' Policy (Maybe Bool)
pUsbMassStorageEnabled
  = lens _pUsbMassStorageEnabled
      (\ s a -> s{_pUsbMassStorageEnabled = a})

-- | Whether the network escape hatch is enabled. If a network connection
-- can\'t be made at boot time, the escape hatch prompts the user to
-- temporarily connect to a network in order to refresh the device policy.
-- After applying policy, the temporary network will be forgotten and the
-- device will continue booting. This prevents being unable to connect to a
-- network if there is no suitable network in the last policy and the
-- device boots into an app in lock task mode, or the user is otherwise
-- unable to reach device settings.
pNetworkEscapeHatchEnabled :: Lens' Policy (Maybe Bool)
pNetworkEscapeHatchEnabled
  = lens _pNetworkEscapeHatchEnabled
      (\ s a -> s{_pNetworkEscapeHatchEnabled = a})

-- | The system update policy, which controls how OS updates are applied. If
-- the update type is WINDOWED, the update window will automatically apply
-- to Play app updates as well.
pSystemUpdate :: Lens' Policy (Maybe SystemUpdate)
pSystemUpdate
  = lens _pSystemUpdate
      (\ s a -> s{_pSystemUpdate = a})

-- | Whether the user is allowed to enable the \"Unknown Sources\" setting,
-- which allows installation of apps from unknown sources.
pInstallUnknownSourcesAllowed :: Lens' Policy (Maybe Bool)
pInstallUnknownSourcesAllowed
  = lens _pInstallUnknownSourcesAllowed
      (\ s a -> s{_pInstallUnknownSourcesAllowed = a})

-- | The name of the policy in the form
-- enterprises\/{enterpriseId}\/policies\/{policyId}.
pName :: Lens' Policy (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | Allows showing UI on a device for a user to choose a private key alias
-- if there are no matching rules in ChoosePrivateKeyRules. For devices
-- below Android P, setting this may leave enterprise keys vulnerable.
pPrivateKeySelectionEnabled :: Lens' Policy (Maybe Bool)
pPrivateKeySelectionEnabled
  = lens _pPrivateKeySelectionEnabled
      (\ s a -> s{_pPrivateKeySelectionEnabled = a})

-- | Whether outgoing calls are disabled.
pOutgoingCallsDisabled :: Lens' Policy (Maybe Bool)
pOutgoingCallsDisabled
  = lens _pOutgoingCallsDisabled
      (\ s a -> s{_pOutgoingCallsDisabled = a})

-- | Status reporting settings
pStatusReportingSettings :: Lens' Policy (Maybe StatusReportingSettings)
pStatusReportingSettings
  = lens _pStatusReportingSettings
      (\ s a -> s{_pStatusReportingSettings = a})

-- | Whether removing other users is disabled.
pRemoveUserDisabled :: Lens' Policy (Maybe Bool)
pRemoveUserDisabled
  = lens _pRemoveUserDisabled
      (\ s a -> s{_pRemoveUserDisabled = a})

-- | Whether configuring mobile networks is disabled.
pMobileNetworksConfigDisabled :: Lens' Policy (Maybe Bool)
pMobileNetworksConfigDisabled
  = lens _pMobileNetworksConfigDisabled
      (\ s a -> s{_pMobileNetworksConfigDisabled = a})

-- | The version of the policy. This is a read-only field. The version is
-- incremented each time the policy is updated.
pVersion :: Lens' Policy (Maybe Int64)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Whether app verification is force-enabled.
pEnsureVerifyAppsEnabled :: Lens' Policy (Maybe Bool)
pEnsureVerifyAppsEnabled
  = lens _pEnsureVerifyAppsEnabled
      (\ s a -> s{_pEnsureVerifyAppsEnabled = a})

-- | Whether changing the wallpaper is disabled.
pSetWallpaperDisabled :: Lens' Policy (Maybe Bool)
pSetWallpaperDisabled
  = lens _pSetWallpaperDisabled
      (\ s a -> s{_pSetWallpaperDisabled = a})

-- | Whether configuring VPN is disabled.
pVPNConfigDisabled :: Lens' Policy (Maybe Bool)
pVPNConfigDisabled
  = lens _pVPNConfigDisabled
      (\ s a -> s{_pVPNConfigDisabled = a})

-- | Actions to take during the setup process.
pSetupActions :: Lens' Policy [SetupAction]
pSetupActions
  = lens _pSetupActions
      (\ s a -> s{_pSetupActions = a})
      . _Default
      . _Coerce

-- | Network configuration for the device. See configure networks for more
-- information.
pOpenNetworkConfiguration :: Lens' Policy (Maybe PolicyOpenNetworkConfiguration)
pOpenNetworkConfiguration
  = lens _pOpenNetworkConfiguration
      (\ s a -> s{_pOpenNetworkConfiguration = a})

-- | Whether adding or removing accounts is disabled.
pModifyAccountsDisabled :: Lens' Policy (Maybe Bool)
pModifyAccountsDisabled
  = lens _pModifyAccountsDisabled
      (\ s a -> s{_pModifyAccountsDisabled = a})

-- | Whether applications other than the ones configured in applications are
-- blocked from being installed. When set, applications that were installed
-- under a previous policy but no longer appear in the policy are
-- automatically uninstalled.
pBlockApplicationsEnabled :: Lens' Policy (Maybe Bool)
pBlockApplicationsEnabled
  = lens _pBlockApplicationsEnabled
      (\ s a -> s{_pBlockApplicationsEnabled = a})

-- | Disabled keyguard customizations, such as widgets.
pKeyguardDisabledFeatures :: Lens' Policy [Text]
pKeyguardDisabledFeatures
  = lens _pKeyguardDisabledFeatures
      (\ s a -> s{_pKeyguardDisabledFeatures = a})
      . _Default
      . _Coerce

-- | Whether the user is allowed to have fun. Controls whether the Easter egg
-- game in Settings is disabled.
pFunDisabled :: Lens' Policy (Maybe Bool)
pFunDisabled
  = lens _pFunDisabled (\ s a -> s{_pFunDisabled = a})

-- | Whether sending and receiving SMS messages is disabled.
pSmsDisabled :: Lens' Policy (Maybe Bool)
pSmsDisabled
  = lens _pSmsDisabled (\ s a -> s{_pSmsDisabled = a})

-- | Maximum time in milliseconds for user activity until the device locks. A
-- value of 0 means there is no restriction.
pMaximumTimeToLock :: Lens' Policy (Maybe Int64)
pMaximumTimeToLock
  = lens _pMaximumTimeToLock
      (\ s a -> s{_pMaximumTimeToLock = a})
      . mapping _Coerce

-- | Whether using NFC to beam data from apps is disabled.
pOutgoingBeamDisabled :: Lens' Policy (Maybe Bool)
pOutgoingBeamDisabled
  = lens _pOutgoingBeamDisabled
      (\ s a -> s{_pOutgoingBeamDisabled = a})

-- | Whether the status bar is disabled. This disables notifications, quick
-- settings, and other screen overlays that allow escape from full-screen
-- mode.
pStatusBarDisabled :: Lens' Policy (Maybe Bool)
pStatusBarDisabled
  = lens _pStatusBarDisabled
      (\ s a -> s{_pStatusBarDisabled = a})

-- | Whether configuring cell broadcast is disabled.
pCellBroadcastsConfigDisabled :: Lens' Policy (Maybe Bool)
pCellBroadcastsConfigDisabled
  = lens _pCellBroadcastsConfigDisabled
      (\ s a -> s{_pCellBroadcastsConfigDisabled = a})

-- | The device owner information to be shown on the lock screen.
pDeviceOwnerLockScreenInfo :: Lens' Policy (Maybe UserFacingMessage)
pDeviceOwnerLockScreenInfo
  = lens _pDeviceOwnerLockScreenInfo
      (\ s a -> s{_pDeviceOwnerLockScreenInfo = a})

-- | This mode controls which apps are available to the user in the Play
-- Store and the behavior on the device when apps are removed from the
-- policy.
pPlayStoreMode :: Lens' Policy (Maybe PolicyPlayStoreMode)
pPlayStoreMode
  = lens _pPlayStoreMode
      (\ s a -> s{_pPlayStoreMode = a})

-- | Rules declaring which mitigating actions to take when a device is not
-- compliant with its policy. When the conditions for multiple rules are
-- satisfied, all of the mitigating actions for the rules are taken. There
-- is a maximum limit of 100 rules.
pComplianceRules :: Lens' Policy [ComplianceRule]
pComplianceRules
  = lens _pComplianceRules
      (\ s a -> s{_pComplianceRules = a})
      . _Default
      . _Coerce

-- | Whether configuring tethering and portable hotspots is disabled.
pTetheringConfigDisabled :: Lens' Policy (Maybe Bool)
pTetheringConfigDisabled
  = lens _pTetheringConfigDisabled
      (\ s a -> s{_pTetheringConfigDisabled = a})

-- | Account types that can\'t be managed by the user.
pAccountTypesWithManagementDisabled :: Lens' Policy [Text]
pAccountTypesWithManagementDisabled
  = lens _pAccountTypesWithManagementDisabled
      (\ s a ->
         s{_pAccountTypesWithManagementDisabled = a})
      . _Default
      . _Coerce

-- | Whether configuring Wi-Fi access points is disabled.
pWifiConfigDisabled :: Lens' Policy (Maybe Bool)
pWifiConfigDisabled
  = lens _pWifiConfigDisabled
      (\ s a -> s{_pWifiConfigDisabled = a})

-- | Default intent handler activities.
pPersistentPreferredActivities :: Lens' Policy [PersistentPreferredActivity]
pPersistentPreferredActivities
  = lens _pPersistentPreferredActivities
      (\ s a -> s{_pPersistentPreferredActivities = a})
      . _Default
      . _Coerce

-- | Password requirements. DEPRECATED - Use password_policies
pPasswordRequirements :: Lens' Policy (Maybe PasswordRequirements)
pPasswordRequirements
  = lens _pPasswordRequirements
      (\ s a -> s{_pPasswordRequirements = a})

-- | A message displayed to the user in the device administators settings
-- screen.
pLongSupportMessage :: Lens' Policy (Maybe UserFacingMessage)
pLongSupportMessage
  = lens _pLongSupportMessage
      (\ s a -> s{_pLongSupportMessage = a})

-- | The degree of location detection enabled. The user may change the value
-- unless the user is otherwise blocked from accessing device settings.
pLocationMode :: Lens' Policy (Maybe PolicyLocationMode)
pLocationMode
  = lens _pLocationMode
      (\ s a -> s{_pLocationMode = a})

-- | Whether bluetooth is disabled. Prefer this setting over
-- bluetooth_config_disabled because bluetooth_config_disabled can be
-- bypassed by the user.
pBluetoothDisabled :: Lens' Policy (Maybe Bool)
pBluetoothDisabled
  = lens _pBluetoothDisabled
      (\ s a -> s{_pBluetoothDisabled = a})

-- | Whether transferring files over USB is disabled.
pUsbFileTransferDisabled :: Lens' Policy (Maybe Bool)
pUsbFileTransferDisabled
  = lens _pUsbFileTransferDisabled
      (\ s a -> s{_pUsbFileTransferDisabled = a})

-- | Whether all cameras on the device are disabled.
pCameraDisabled :: Lens' Policy (Maybe Bool)
pCameraDisabled
  = lens _pCameraDisabled
      (\ s a -> s{_pCameraDisabled = a})

-- | Policy applied to apps.
pApplications :: Lens' Policy [ApplicationPolicy]
pApplications
  = lens _pApplications
      (\ s a -> s{_pApplications = a})
      . _Default
      . _Coerce

-- | Password requirement policies. Different policies can be set for work
-- profile or fully managed devices by setting the password_scope field in
-- the policy.
pPasswordPolicies :: Lens' Policy [PasswordRequirements]
pPasswordPolicies
  = lens _pPasswordPolicies
      (\ s a -> s{_pPasswordPolicies = a})
      . _Default
      . _Coerce

-- | Whether factory resetting from settings is disabled.
pFactoryResetDisabled :: Lens' Policy (Maybe Bool)
pFactoryResetDisabled
  = lens _pFactoryResetDisabled
      (\ s a -> s{_pFactoryResetDisabled = a})

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "bluetoothConfigDisabled") <*>
                     (o .:? "unmuteMicrophoneDisabled")
                     <*> (o .:? "mountPhysicalMediaDisabled")
                     <*> (o .:? "frpAdminEmails" .!= mempty)
                     <*> (o .:? "appAutoUpdatePolicy")
                     <*> (o .:? "encryptionPolicy")
                     <*> (o .:? "androidDevicePolicyTracks" .!= mempty)
                     <*> (o .:? "safeBootDisabled")
                     <*> (o .:? "alwaysOnVpnPackage")
                     <*> (o .:? "choosePrivateKeyRules" .!= mempty)
                     <*> (o .:? "credentialsConfigDisabled")
                     <*> (o .:? "recommendedGlobalProxy")
                     <*> (o .:? "keyguardDisabled")
                     <*> (o .:? "skipFirstUseHintsEnabled")
                     <*> (o .:? "adjustVolumeDisabled")
                     <*> (o .:? "defaultPermissionPolicy")
                     <*> (o .:? "uninstallAppsDisabled")
                     <*> (o .:? "setUserIconDisabled")
                     <*> (o .:? "permittedInputMethods")
                     <*> (o .:? "screenCaptureDisabled")
                     <*> (o .:? "addUserDisabled")
                     <*> (o .:? "shareLocationDisabled")
                     <*> (o .:? "autoTimeRequired")
                     <*> (o .:? "installAppsDisabled")
                     <*> (o .:? "createWindowsDisabled")
                     <*> (o .:? "networkResetDisabled")
                     <*> (o .:? "bluetoothContactSharingDisabled")
                     <*> (o .:? "permissionGrants" .!= mempty)
                     <*> (o .:? "shortSupportMessage")
                     <*> (o .:? "stayOnPluggedModes" .!= mempty)
                     <*> (o .:? "dataRoamingDisabled")
                     <*> (o .:? "debuggingFeaturesAllowed")
                     <*> (o .:? "kioskCustomLauncherEnabled")
                     <*> (o .:? "wifiConfigsLockdownEnabled")
                     <*> (o .:? "usbMassStorageEnabled")
                     <*> (o .:? "networkEscapeHatchEnabled")
                     <*> (o .:? "systemUpdate")
                     <*> (o .:? "installUnknownSourcesAllowed")
                     <*> (o .:? "name")
                     <*> (o .:? "privateKeySelectionEnabled")
                     <*> (o .:? "outgoingCallsDisabled")
                     <*> (o .:? "statusReportingSettings")
                     <*> (o .:? "removeUserDisabled")
                     <*> (o .:? "mobileNetworksConfigDisabled")
                     <*> (o .:? "version")
                     <*> (o .:? "ensureVerifyAppsEnabled")
                     <*> (o .:? "setWallpaperDisabled")
                     <*> (o .:? "vpnConfigDisabled")
                     <*> (o .:? "setupActions" .!= mempty)
                     <*> (o .:? "openNetworkConfiguration")
                     <*> (o .:? "modifyAccountsDisabled")
                     <*> (o .:? "blockApplicationsEnabled")
                     <*> (o .:? "keyguardDisabledFeatures" .!= mempty)
                     <*> (o .:? "funDisabled")
                     <*> (o .:? "smsDisabled")
                     <*> (o .:? "maximumTimeToLock")
                     <*> (o .:? "outgoingBeamDisabled")
                     <*> (o .:? "statusBarDisabled")
                     <*> (o .:? "cellBroadcastsConfigDisabled")
                     <*> (o .:? "deviceOwnerLockScreenInfo")
                     <*> (o .:? "playStoreMode")
                     <*> (o .:? "complianceRules" .!= mempty)
                     <*> (o .:? "tetheringConfigDisabled")
                     <*>
                     (o .:? "accountTypesWithManagementDisabled" .!=
                        mempty)
                     <*> (o .:? "wifiConfigDisabled")
                     <*>
                     (o .:? "persistentPreferredActivities" .!= mempty)
                     <*> (o .:? "passwordRequirements")
                     <*> (o .:? "longSupportMessage")
                     <*> (o .:? "locationMode")
                     <*> (o .:? "bluetoothDisabled")
                     <*> (o .:? "usbFileTransferDisabled")
                     <*> (o .:? "cameraDisabled")
                     <*> (o .:? "applications" .!= mempty)
                     <*> (o .:? "passwordPolicies" .!= mempty)
                     <*> (o .:? "factoryResetDisabled"))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("bluetoothConfigDisabled" .=) <$>
                    _pBluetoothConfigDisabled,
                  ("unmuteMicrophoneDisabled" .=) <$>
                    _pUnmuteMicrophoneDisabled,
                  ("mountPhysicalMediaDisabled" .=) <$>
                    _pMountPhysicalMediaDisabled,
                  ("frpAdminEmails" .=) <$> _pFrpAdminEmails,
                  ("appAutoUpdatePolicy" .=) <$> _pAppAutoUpdatePolicy,
                  ("encryptionPolicy" .=) <$> _pEncryptionPolicy,
                  ("androidDevicePolicyTracks" .=) <$>
                    _pAndroidDevicePolicyTracks,
                  ("safeBootDisabled" .=) <$> _pSafeBootDisabled,
                  ("alwaysOnVpnPackage" .=) <$> _pAlwaysOnVPNPackage,
                  ("choosePrivateKeyRules" .=) <$>
                    _pChoosePrivateKeyRules,
                  ("credentialsConfigDisabled" .=) <$>
                    _pCredentialsConfigDisabled,
                  ("recommendedGlobalProxy" .=) <$>
                    _pRecommendedGlobalProxy,
                  ("keyguardDisabled" .=) <$> _pKeyguardDisabled,
                  ("skipFirstUseHintsEnabled" .=) <$>
                    _pSkipFirstUseHintsEnabled,
                  ("adjustVolumeDisabled" .=) <$>
                    _pAdjustVolumeDisabled,
                  ("defaultPermissionPolicy" .=) <$>
                    _pDefaultPermissionPolicy,
                  ("uninstallAppsDisabled" .=) <$>
                    _pUninstallAppsDisabled,
                  ("setUserIconDisabled" .=) <$> _pSetUserIconDisabled,
                  ("permittedInputMethods" .=) <$>
                    _pPermittedInputMethods,
                  ("screenCaptureDisabled" .=) <$>
                    _pScreenCaptureDisabled,
                  ("addUserDisabled" .=) <$> _pAddUserDisabled,
                  ("shareLocationDisabled" .=) <$>
                    _pShareLocationDisabled,
                  ("autoTimeRequired" .=) <$> _pAutoTimeRequired,
                  ("installAppsDisabled" .=) <$> _pInstallAppsDisabled,
                  ("createWindowsDisabled" .=) <$>
                    _pCreateWindowsDisabled,
                  ("networkResetDisabled" .=) <$>
                    _pNetworkResetDisabled,
                  ("bluetoothContactSharingDisabled" .=) <$>
                    _pBluetoothContactSharingDisabled,
                  ("permissionGrants" .=) <$> _pPermissionGrants,
                  ("shortSupportMessage" .=) <$> _pShortSupportMessage,
                  ("stayOnPluggedModes" .=) <$> _pStayOnPluggedModes,
                  ("dataRoamingDisabled" .=) <$> _pDataRoamingDisabled,
                  ("debuggingFeaturesAllowed" .=) <$>
                    _pDebuggingFeaturesAllowed,
                  ("kioskCustomLauncherEnabled" .=) <$>
                    _pKioskCustomLauncherEnabled,
                  ("wifiConfigsLockdownEnabled" .=) <$>
                    _pWifiConfigsLockdownEnabled,
                  ("usbMassStorageEnabled" .=) <$>
                    _pUsbMassStorageEnabled,
                  ("networkEscapeHatchEnabled" .=) <$>
                    _pNetworkEscapeHatchEnabled,
                  ("systemUpdate" .=) <$> _pSystemUpdate,
                  ("installUnknownSourcesAllowed" .=) <$>
                    _pInstallUnknownSourcesAllowed,
                  ("name" .=) <$> _pName,
                  ("privateKeySelectionEnabled" .=) <$>
                    _pPrivateKeySelectionEnabled,
                  ("outgoingCallsDisabled" .=) <$>
                    _pOutgoingCallsDisabled,
                  ("statusReportingSettings" .=) <$>
                    _pStatusReportingSettings,
                  ("removeUserDisabled" .=) <$> _pRemoveUserDisabled,
                  ("mobileNetworksConfigDisabled" .=) <$>
                    _pMobileNetworksConfigDisabled,
                  ("version" .=) <$> _pVersion,
                  ("ensureVerifyAppsEnabled" .=) <$>
                    _pEnsureVerifyAppsEnabled,
                  ("setWallpaperDisabled" .=) <$>
                    _pSetWallpaperDisabled,
                  ("vpnConfigDisabled" .=) <$> _pVPNConfigDisabled,
                  ("setupActions" .=) <$> _pSetupActions,
                  ("openNetworkConfiguration" .=) <$>
                    _pOpenNetworkConfiguration,
                  ("modifyAccountsDisabled" .=) <$>
                    _pModifyAccountsDisabled,
                  ("blockApplicationsEnabled" .=) <$>
                    _pBlockApplicationsEnabled,
                  ("keyguardDisabledFeatures" .=) <$>
                    _pKeyguardDisabledFeatures,
                  ("funDisabled" .=) <$> _pFunDisabled,
                  ("smsDisabled" .=) <$> _pSmsDisabled,
                  ("maximumTimeToLock" .=) <$> _pMaximumTimeToLock,
                  ("outgoingBeamDisabled" .=) <$>
                    _pOutgoingBeamDisabled,
                  ("statusBarDisabled" .=) <$> _pStatusBarDisabled,
                  ("cellBroadcastsConfigDisabled" .=) <$>
                    _pCellBroadcastsConfigDisabled,
                  ("deviceOwnerLockScreenInfo" .=) <$>
                    _pDeviceOwnerLockScreenInfo,
                  ("playStoreMode" .=) <$> _pPlayStoreMode,
                  ("complianceRules" .=) <$> _pComplianceRules,
                  ("tetheringConfigDisabled" .=) <$>
                    _pTetheringConfigDisabled,
                  ("accountTypesWithManagementDisabled" .=) <$>
                    _pAccountTypesWithManagementDisabled,
                  ("wifiConfigDisabled" .=) <$> _pWifiConfigDisabled,
                  ("persistentPreferredActivities" .=) <$>
                    _pPersistentPreferredActivities,
                  ("passwordRequirements" .=) <$>
                    _pPasswordRequirements,
                  ("longSupportMessage" .=) <$> _pLongSupportMessage,
                  ("locationMode" .=) <$> _pLocationMode,
                  ("bluetoothDisabled" .=) <$> _pBluetoothDisabled,
                  ("usbFileTransferDisabled" .=) <$>
                    _pUsbFileTransferDisabled,
                  ("cameraDisabled" .=) <$> _pCameraDisabled,
                  ("applications" .=) <$> _pApplications,
                  ("passwordPolicies" .=) <$> _pPasswordPolicies,
                  ("factoryResetDisabled" .=) <$>
                    _pFactoryResetDisabled])

-- | A compliance rule condition which is satisfied if there exists any
-- matching NonComplianceDetail for the device. A NonComplianceDetail
-- matches a NonComplianceDetailCondition if all the fields which are set
-- within the NonComplianceDetailCondition match the corresponding
-- NonComplianceDetail fields.
--
-- /See:/ 'nonComplianceDetailCondition' smart constructor.
data NonComplianceDetailCondition =
  NonComplianceDetailCondition'
    { _ncdcPackageName         :: !(Maybe Text)
    , _ncdcNonComplianceReason :: !(Maybe NonComplianceDetailConditionNonComplianceReason)
    , _ncdcSettingName         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NonComplianceDetailCondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncdcPackageName'
--
-- * 'ncdcNonComplianceReason'
--
-- * 'ncdcSettingName'
nonComplianceDetailCondition
    :: NonComplianceDetailCondition
nonComplianceDetailCondition =
  NonComplianceDetailCondition'
    { _ncdcPackageName = Nothing
    , _ncdcNonComplianceReason = Nothing
    , _ncdcSettingName = Nothing
    }

-- | The package name of the app that\'s out of compliance. If not set, then
-- this condition matches any package name.
ncdcPackageName :: Lens' NonComplianceDetailCondition (Maybe Text)
ncdcPackageName
  = lens _ncdcPackageName
      (\ s a -> s{_ncdcPackageName = a})

-- | The reason the device is not in compliance with the setting. If not set,
-- then this condition matches any reason.
ncdcNonComplianceReason :: Lens' NonComplianceDetailCondition (Maybe NonComplianceDetailConditionNonComplianceReason)
ncdcNonComplianceReason
  = lens _ncdcNonComplianceReason
      (\ s a -> s{_ncdcNonComplianceReason = a})

-- | The name of the policy setting. This is the JSON field name of a
-- top-level Policy field. If not set, then this condition matches any
-- setting name.
ncdcSettingName :: Lens' NonComplianceDetailCondition (Maybe Text)
ncdcSettingName
  = lens _ncdcSettingName
      (\ s a -> s{_ncdcSettingName = a})

instance FromJSON NonComplianceDetailCondition where
        parseJSON
          = withObject "NonComplianceDetailCondition"
              (\ o ->
                 NonComplianceDetailCondition' <$>
                   (o .:? "packageName") <*>
                     (o .:? "nonComplianceReason")
                     <*> (o .:? "settingName"))

instance ToJSON NonComplianceDetailCondition where
        toJSON NonComplianceDetailCondition'{..}
          = object
              (catMaybes
                 [("packageName" .=) <$> _ncdcPackageName,
                  ("nonComplianceReason" .=) <$>
                    _ncdcNonComplianceReason,
                  ("settingName" .=) <$> _ncdcSettingName])

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

-- | A web token used to access the managed Google Play iframe.
--
-- /See:/ 'webToken' smart constructor.
data WebToken =
  WebToken'
    { _wtParentFrameURL :: !(Maybe Text)
    , _wtValue          :: !(Maybe Text)
    , _wtName           :: !(Maybe Text)
    , _wtPermissions    :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'WebToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wtParentFrameURL'
--
-- * 'wtValue'
--
-- * 'wtName'
--
-- * 'wtPermissions'
webToken
    :: WebToken
webToken =
  WebToken'
    { _wtParentFrameURL = Nothing
    , _wtValue = Nothing
    , _wtName = Nothing
    , _wtPermissions = Nothing
    }

-- | The URL of the parent frame hosting the iframe with the embedded UI. To
-- prevent XSS, the iframe may not be hosted at other URLs. The URL must
-- use the https scheme.
wtParentFrameURL :: Lens' WebToken (Maybe Text)
wtParentFrameURL
  = lens _wtParentFrameURL
      (\ s a -> s{_wtParentFrameURL = a})

-- | The token value which is used in the hosting page to generate the iframe
-- with the embedded UI. This is a read-only field generated by the server.
wtValue :: Lens' WebToken (Maybe Text)
wtValue = lens _wtValue (\ s a -> s{_wtValue = a})

-- | The name of the web token, which is generated by the server during
-- creation in the form
-- enterprises\/{enterpriseId}\/webTokens\/{webTokenId}.
wtName :: Lens' WebToken (Maybe Text)
wtName = lens _wtName (\ s a -> s{_wtName = a})

-- | Permissions available to an admin in the embedded UI. An admin must have
-- all of these permissions in order to view the UI.
wtPermissions :: Lens' WebToken [Text]
wtPermissions
  = lens _wtPermissions
      (\ s a -> s{_wtPermissions = a})
      . _Default
      . _Coerce

instance FromJSON WebToken where
        parseJSON
          = withObject "WebToken"
              (\ o ->
                 WebToken' <$>
                   (o .:? "parentFrameUrl") <*> (o .:? "value") <*>
                     (o .:? "name")
                     <*> (o .:? "permissions" .!= mempty))

instance ToJSON WebToken where
        toJSON WebToken'{..}
          = object
              (catMaybes
                 [("parentFrameUrl" .=) <$> _wtParentFrameURL,
                  ("value" .=) <$> _wtValue, ("name" .=) <$> _wtName,
                  ("permissions" .=) <$> _wtPermissions])

-- | A rule declaring which mitigating actions to take when a device is not
-- compliant with its policy. For every rule, there is always an implicit
-- mitigating action to set policy_compliant to false for the Device
-- resource, and display a message on the device indicating that the device
-- is not compliant with its policy. Other mitigating actions may
-- optionally be taken as well, depending on the field values in the rule.
--
-- /See:/ 'complianceRule' smart constructor.
data ComplianceRule =
  ComplianceRule'
    { _crAPILevelCondition            :: !(Maybe APILevelCondition)
    , _crDisableApps                  :: !(Maybe Bool)
    , _crPackageNamesToDisable        :: !(Maybe [Text])
    , _crNonComplianceDetailCondition :: !(Maybe NonComplianceDetailCondition)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ComplianceRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crAPILevelCondition'
--
-- * 'crDisableApps'
--
-- * 'crPackageNamesToDisable'
--
-- * 'crNonComplianceDetailCondition'
complianceRule
    :: ComplianceRule
complianceRule =
  ComplianceRule'
    { _crAPILevelCondition = Nothing
    , _crDisableApps = Nothing
    , _crPackageNamesToDisable = Nothing
    , _crNonComplianceDetailCondition = Nothing
    }

-- | A condition which is satisfied if the Android Framework API level on the
-- device doesn\'t meet a minimum requirement.
crAPILevelCondition :: Lens' ComplianceRule (Maybe APILevelCondition)
crAPILevelCondition
  = lens _crAPILevelCondition
      (\ s a -> s{_crAPILevelCondition = a})

-- | If set to true, the rule includes a mitigating action to disable apps so
-- that the device is effectively disabled, but app data is preserved. If
-- the device is running an app in locked task mode, the app will be closed
-- and a UI showing the reason for non-compliance will be displayed.
crDisableApps :: Lens' ComplianceRule (Maybe Bool)
crDisableApps
  = lens _crDisableApps
      (\ s a -> s{_crDisableApps = a})

-- | If set, the rule includes a mitigating action to disable apps specified
-- in the list, but app data is preserved.
crPackageNamesToDisable :: Lens' ComplianceRule [Text]
crPackageNamesToDisable
  = lens _crPackageNamesToDisable
      (\ s a -> s{_crPackageNamesToDisable = a})
      . _Default
      . _Coerce

-- | A condition which is satisfied if there exists any matching
-- NonComplianceDetail for the device.
crNonComplianceDetailCondition :: Lens' ComplianceRule (Maybe NonComplianceDetailCondition)
crNonComplianceDetailCondition
  = lens _crNonComplianceDetailCondition
      (\ s a -> s{_crNonComplianceDetailCondition = a})

instance FromJSON ComplianceRule where
        parseJSON
          = withObject "ComplianceRule"
              (\ o ->
                 ComplianceRule' <$>
                   (o .:? "apiLevelCondition") <*> (o .:? "disableApps")
                     <*> (o .:? "packageNamesToDisable" .!= mempty)
                     <*> (o .:? "nonComplianceDetailCondition"))

instance ToJSON ComplianceRule where
        toJSON ComplianceRule'{..}
          = object
              (catMaybes
                 [("apiLevelCondition" .=) <$> _crAPILevelCondition,
                  ("disableApps" .=) <$> _crDisableApps,
                  ("packageNamesToDisable" .=) <$>
                    _crPackageNamesToDisable,
                  ("nonComplianceDetailCondition" .=) <$>
                    _crNonComplianceDetailCondition])

-- | Requirements for the password used to unlock a device.
--
-- /See:/ 'passwordRequirements' smart constructor.
data PasswordRequirements =
  PasswordRequirements'
    { _prPasswordMinimumSymbols        :: !(Maybe (Textual Int32))
    , _prMaximumFailedPasswordsForWipe :: !(Maybe (Textual Int32))
    , _prPasswordExpirationTimeout     :: !(Maybe GDuration)
    , _prPasswordMinimumNonLetter      :: !(Maybe (Textual Int32))
    , _prPasswordHistoryLength         :: !(Maybe (Textual Int32))
    , _prPasswordMinimumLetters        :: !(Maybe (Textual Int32))
    , _prPasswordMinimumUpperCase      :: !(Maybe (Textual Int32))
    , _prPasswordMinimumNumeric        :: !(Maybe (Textual Int32))
    , _prPasswordQuality               :: !(Maybe PasswordRequirementsPasswordQuality)
    , _prPasswordMinimumLength         :: !(Maybe (Textual Int32))
    , _prPasswordScope                 :: !(Maybe PasswordRequirementsPasswordScope)
    , _prPasswordMinimumLowerCase      :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PasswordRequirements' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prPasswordMinimumSymbols'
--
-- * 'prMaximumFailedPasswordsForWipe'
--
-- * 'prPasswordExpirationTimeout'
--
-- * 'prPasswordMinimumNonLetter'
--
-- * 'prPasswordHistoryLength'
--
-- * 'prPasswordMinimumLetters'
--
-- * 'prPasswordMinimumUpperCase'
--
-- * 'prPasswordMinimumNumeric'
--
-- * 'prPasswordQuality'
--
-- * 'prPasswordMinimumLength'
--
-- * 'prPasswordScope'
--
-- * 'prPasswordMinimumLowerCase'
passwordRequirements
    :: PasswordRequirements
passwordRequirements =
  PasswordRequirements'
    { _prPasswordMinimumSymbols = Nothing
    , _prMaximumFailedPasswordsForWipe = Nothing
    , _prPasswordExpirationTimeout = Nothing
    , _prPasswordMinimumNonLetter = Nothing
    , _prPasswordHistoryLength = Nothing
    , _prPasswordMinimumLetters = Nothing
    , _prPasswordMinimumUpperCase = Nothing
    , _prPasswordMinimumNumeric = Nothing
    , _prPasswordQuality = Nothing
    , _prPasswordMinimumLength = Nothing
    , _prPasswordScope = Nothing
    , _prPasswordMinimumLowerCase = Nothing
    }

-- | Minimum number of symbols required in the password. Only enforced when
-- password_quality is COMPLEX.
prPasswordMinimumSymbols :: Lens' PasswordRequirements (Maybe Int32)
prPasswordMinimumSymbols
  = lens _prPasswordMinimumSymbols
      (\ s a -> s{_prPasswordMinimumSymbols = a})
      . mapping _Coerce

-- | Number of incorrect device-unlock passwords that can be entered before a
-- device is wiped. A value of 0 means there is no restriction.
prMaximumFailedPasswordsForWipe :: Lens' PasswordRequirements (Maybe Int32)
prMaximumFailedPasswordsForWipe
  = lens _prMaximumFailedPasswordsForWipe
      (\ s a -> s{_prMaximumFailedPasswordsForWipe = a})
      . mapping _Coerce

-- | Password expiration timeout.
prPasswordExpirationTimeout :: Lens' PasswordRequirements (Maybe Scientific)
prPasswordExpirationTimeout
  = lens _prPasswordExpirationTimeout
      (\ s a -> s{_prPasswordExpirationTimeout = a})
      . mapping _GDuration

-- | Minimum number of non-letter characters (numerical digits or symbols)
-- required in the password. Only enforced when password_quality is
-- COMPLEX.
prPasswordMinimumNonLetter :: Lens' PasswordRequirements (Maybe Int32)
prPasswordMinimumNonLetter
  = lens _prPasswordMinimumNonLetter
      (\ s a -> s{_prPasswordMinimumNonLetter = a})
      . mapping _Coerce

-- | The length of the password history. After setting this field, the user
-- won\'t be able to enter a new password that is the same as any password
-- in the history. A value of 0 means there is no restriction.
prPasswordHistoryLength :: Lens' PasswordRequirements (Maybe Int32)
prPasswordHistoryLength
  = lens _prPasswordHistoryLength
      (\ s a -> s{_prPasswordHistoryLength = a})
      . mapping _Coerce

-- | Minimum number of letters required in the password. Only enforced when
-- password_quality is COMPLEX.
prPasswordMinimumLetters :: Lens' PasswordRequirements (Maybe Int32)
prPasswordMinimumLetters
  = lens _prPasswordMinimumLetters
      (\ s a -> s{_prPasswordMinimumLetters = a})
      . mapping _Coerce

-- | Minimum number of upper case letters required in the password. Only
-- enforced when password_quality is COMPLEX.
prPasswordMinimumUpperCase :: Lens' PasswordRequirements (Maybe Int32)
prPasswordMinimumUpperCase
  = lens _prPasswordMinimumUpperCase
      (\ s a -> s{_prPasswordMinimumUpperCase = a})
      . mapping _Coerce

-- | Minimum number of numerical digits required in the password. Only
-- enforced when password_quality is COMPLEX.
prPasswordMinimumNumeric :: Lens' PasswordRequirements (Maybe Int32)
prPasswordMinimumNumeric
  = lens _prPasswordMinimumNumeric
      (\ s a -> s{_prPasswordMinimumNumeric = a})
      . mapping _Coerce

-- | The required password quality.
prPasswordQuality :: Lens' PasswordRequirements (Maybe PasswordRequirementsPasswordQuality)
prPasswordQuality
  = lens _prPasswordQuality
      (\ s a -> s{_prPasswordQuality = a})

-- | The minimum allowed password length. A value of 0 means there is no
-- restriction. Only enforced when password_quality is NUMERIC,
-- NUMERIC_COMPLEX, ALPHABETIC, ALPHANUMERIC, or COMPLEX.
prPasswordMinimumLength :: Lens' PasswordRequirements (Maybe Int32)
prPasswordMinimumLength
  = lens _prPasswordMinimumLength
      (\ s a -> s{_prPasswordMinimumLength = a})
      . mapping _Coerce

-- | The scope that the password requirement applies to.
prPasswordScope :: Lens' PasswordRequirements (Maybe PasswordRequirementsPasswordScope)
prPasswordScope
  = lens _prPasswordScope
      (\ s a -> s{_prPasswordScope = a})

-- | Minimum number of lower case letters required in the password. Only
-- enforced when password_quality is COMPLEX.
prPasswordMinimumLowerCase :: Lens' PasswordRequirements (Maybe Int32)
prPasswordMinimumLowerCase
  = lens _prPasswordMinimumLowerCase
      (\ s a -> s{_prPasswordMinimumLowerCase = a})
      . mapping _Coerce

instance FromJSON PasswordRequirements where
        parseJSON
          = withObject "PasswordRequirements"
              (\ o ->
                 PasswordRequirements' <$>
                   (o .:? "passwordMinimumSymbols") <*>
                     (o .:? "maximumFailedPasswordsForWipe")
                     <*> (o .:? "passwordExpirationTimeout")
                     <*> (o .:? "passwordMinimumNonLetter")
                     <*> (o .:? "passwordHistoryLength")
                     <*> (o .:? "passwordMinimumLetters")
                     <*> (o .:? "passwordMinimumUpperCase")
                     <*> (o .:? "passwordMinimumNumeric")
                     <*> (o .:? "passwordQuality")
                     <*> (o .:? "passwordMinimumLength")
                     <*> (o .:? "passwordScope")
                     <*> (o .:? "passwordMinimumLowerCase"))

instance ToJSON PasswordRequirements where
        toJSON PasswordRequirements'{..}
          = object
              (catMaybes
                 [("passwordMinimumSymbols" .=) <$>
                    _prPasswordMinimumSymbols,
                  ("maximumFailedPasswordsForWipe" .=) <$>
                    _prMaximumFailedPasswordsForWipe,
                  ("passwordExpirationTimeout" .=) <$>
                    _prPasswordExpirationTimeout,
                  ("passwordMinimumNonLetter" .=) <$>
                    _prPasswordMinimumNonLetter,
                  ("passwordHistoryLength" .=) <$>
                    _prPasswordHistoryLength,
                  ("passwordMinimumLetters" .=) <$>
                    _prPasswordMinimumLetters,
                  ("passwordMinimumUpperCase" .=) <$>
                    _prPasswordMinimumUpperCase,
                  ("passwordMinimumNumeric" .=) <$>
                    _prPasswordMinimumNumeric,
                  ("passwordQuality" .=) <$> _prPasswordQuality,
                  ("passwordMinimumLength" .=) <$>
                    _prPasswordMinimumLength,
                  ("passwordScope" .=) <$> _prPasswordScope,
                  ("passwordMinimumLowerCase" .=) <$>
                    _prPasswordMinimumLowerCase])

-- | Provides detail about non-compliance with a policy setting.
--
-- /See:/ 'nonComplianceDetail' smart constructor.
data NonComplianceDetail =
  NonComplianceDetail'
    { _ncdFieldPath                 :: !(Maybe Text)
    , _ncdPackageName               :: !(Maybe Text)
    , _ncdInstallationFailureReason :: !(Maybe NonComplianceDetailInstallationFailureReason)
    , _ncdNonComplianceReason       :: !(Maybe NonComplianceDetailNonComplianceReason)
    , _ncdSettingName               :: !(Maybe Text)
    , _ncdCurrentValue              :: !(Maybe JSONValue)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NonComplianceDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncdFieldPath'
--
-- * 'ncdPackageName'
--
-- * 'ncdInstallationFailureReason'
--
-- * 'ncdNonComplianceReason'
--
-- * 'ncdSettingName'
--
-- * 'ncdCurrentValue'
nonComplianceDetail
    :: NonComplianceDetail
nonComplianceDetail =
  NonComplianceDetail'
    { _ncdFieldPath = Nothing
    , _ncdPackageName = Nothing
    , _ncdInstallationFailureReason = Nothing
    , _ncdNonComplianceReason = Nothing
    , _ncdSettingName = Nothing
    , _ncdCurrentValue = Nothing
    }

-- | For settings with nested fields, if a particular nested field is out of
-- compliance, this specifies the full path to the offending field. The
-- path is formatted in the same way the policy JSON field would be
-- referenced in JavaScript, that is: 1) For object-typed fields, the field
-- name is followed by a dot then by a subfield name. 2) For array-typed
-- fields, the field name is followed by the array index enclosed in
-- brackets. For example, to indicate a problem with the url field in the
-- externalData field in the 3rd application, the path would be
-- applications[2].externalData.url
ncdFieldPath :: Lens' NonComplianceDetail (Maybe Text)
ncdFieldPath
  = lens _ncdFieldPath (\ s a -> s{_ncdFieldPath = a})

-- | The package name indicating which app is out of compliance, if
-- applicable.
ncdPackageName :: Lens' NonComplianceDetail (Maybe Text)
ncdPackageName
  = lens _ncdPackageName
      (\ s a -> s{_ncdPackageName = a})

-- | If package_name is set and the non-compliance reason is
-- APP_NOT_INSTALLED or APP_NOT_UPDATED, the detailed reason the app can\'t
-- be installed or updated.
ncdInstallationFailureReason :: Lens' NonComplianceDetail (Maybe NonComplianceDetailInstallationFailureReason)
ncdInstallationFailureReason
  = lens _ncdInstallationFailureReason
      (\ s a -> s{_ncdInstallationFailureReason = a})

-- | The reason the device is not in compliance with the setting.
ncdNonComplianceReason :: Lens' NonComplianceDetail (Maybe NonComplianceDetailNonComplianceReason)
ncdNonComplianceReason
  = lens _ncdNonComplianceReason
      (\ s a -> s{_ncdNonComplianceReason = a})

-- | The name of the policy setting. This is the JSON field name of a
-- top-level Policy field.
ncdSettingName :: Lens' NonComplianceDetail (Maybe Text)
ncdSettingName
  = lens _ncdSettingName
      (\ s a -> s{_ncdSettingName = a})

-- | If the policy setting could not be applied, the current value of the
-- setting on the device.
ncdCurrentValue :: Lens' NonComplianceDetail (Maybe JSONValue)
ncdCurrentValue
  = lens _ncdCurrentValue
      (\ s a -> s{_ncdCurrentValue = a})

instance FromJSON NonComplianceDetail where
        parseJSON
          = withObject "NonComplianceDetail"
              (\ o ->
                 NonComplianceDetail' <$>
                   (o .:? "fieldPath") <*> (o .:? "packageName") <*>
                     (o .:? "installationFailureReason")
                     <*> (o .:? "nonComplianceReason")
                     <*> (o .:? "settingName")
                     <*> (o .:? "currentValue"))

instance ToJSON NonComplianceDetail where
        toJSON NonComplianceDetail'{..}
          = object
              (catMaybes
                 [("fieldPath" .=) <$> _ncdFieldPath,
                  ("packageName" .=) <$> _ncdPackageName,
                  ("installationFailureReason" .=) <$>
                    _ncdInstallationFailureReason,
                  ("nonComplianceReason" .=) <$>
                    _ncdNonComplianceReason,
                  ("settingName" .=) <$> _ncdSettingName,
                  ("currentValue" .=) <$> _ncdCurrentValue])

-- | An app-related event.
--
-- /See:/ 'applicationEvent' smart constructor.
data ApplicationEvent =
  ApplicationEvent'
    { _aeEventType  :: !(Maybe ApplicationEventEventType)
    , _aeCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApplicationEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeEventType'
--
-- * 'aeCreateTime'
applicationEvent
    :: ApplicationEvent
applicationEvent =
  ApplicationEvent' {_aeEventType = Nothing, _aeCreateTime = Nothing}

-- | App event type.
aeEventType :: Lens' ApplicationEvent (Maybe ApplicationEventEventType)
aeEventType
  = lens _aeEventType (\ s a -> s{_aeEventType = a})

-- | The creation time of the event.
aeCreateTime :: Lens' ApplicationEvent (Maybe UTCTime)
aeCreateTime
  = lens _aeCreateTime (\ s a -> s{_aeCreateTime = a})
      . mapping _DateTime

instance FromJSON ApplicationEvent where
        parseJSON
          = withObject "ApplicationEvent"
              (\ o ->
                 ApplicationEvent' <$>
                   (o .:? "eventType") <*> (o .:? "createTime"))

instance ToJSON ApplicationEvent where
        toJSON ApplicationEvent'{..}
          = object
              (catMaybes
                 [("eventType" .=) <$> _aeEventType,
                  ("createTime" .=) <$> _aeCreateTime])

-- | A terms and conditions page to be accepted during provisioning.
--
-- /See:/ 'termsAndConditions' smart constructor.
data TermsAndConditions =
  TermsAndConditions'
    { _tacContent :: !(Maybe UserFacingMessage)
    , _tacHeader  :: !(Maybe UserFacingMessage)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TermsAndConditions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tacContent'
--
-- * 'tacHeader'
termsAndConditions
    :: TermsAndConditions
termsAndConditions =
  TermsAndConditions' {_tacContent = Nothing, _tacHeader = Nothing}

-- | A well-formatted HTML string. It will be parsed on the client with
-- android.text.Html#fromHtml.
tacContent :: Lens' TermsAndConditions (Maybe UserFacingMessage)
tacContent
  = lens _tacContent (\ s a -> s{_tacContent = a})

-- | A short header which appears above the HTML content.
tacHeader :: Lens' TermsAndConditions (Maybe UserFacingMessage)
tacHeader
  = lens _tacHeader (\ s a -> s{_tacHeader = a})

instance FromJSON TermsAndConditions where
        parseJSON
          = withObject "TermsAndConditions"
              (\ o ->
                 TermsAndConditions' <$>
                   (o .:? "content") <*> (o .:? "header"))

instance ToJSON TermsAndConditions where
        toJSON TermsAndConditions'{..}
          = object
              (catMaybes
                 [("content" .=) <$> _tacContent,
                  ("header" .=) <$> _tacHeader])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as Delete, the response is
-- google.protobuf.Empty. If the original method is standard
-- Get\/Create\/Update, the response should be the resource. For other
-- methods, the response should have the type XxxResponse, where Xxx is the
-- original method name. For example, if the original method name is
-- TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
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

-- | Provides a user-facing message with locale info. The maximum message
-- length is 4096 characters.
--
-- /See:/ 'userFacingMessage' smart constructor.
data UserFacingMessage =
  UserFacingMessage'
    { _ufmLocalizedMessages :: !(Maybe UserFacingMessageLocalizedMessages)
    , _ufmDefaultMessage    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserFacingMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ufmLocalizedMessages'
--
-- * 'ufmDefaultMessage'
userFacingMessage
    :: UserFacingMessage
userFacingMessage =
  UserFacingMessage'
    {_ufmLocalizedMessages = Nothing, _ufmDefaultMessage = Nothing}

-- | A map containing pairs, where locale is a well-formed BCP 47 language
-- (https:\/\/www.w3.org\/International\/articles\/language-tags\/) code,
-- such as en-US, es-ES, or fr.
ufmLocalizedMessages :: Lens' UserFacingMessage (Maybe UserFacingMessageLocalizedMessages)
ufmLocalizedMessages
  = lens _ufmLocalizedMessages
      (\ s a -> s{_ufmLocalizedMessages = a})

-- | The default message displayed if no localized message is specified or
-- the user\'s locale doesn\'t match with any of the localized messages. A
-- default message must be provided if any localized messages are provided.
ufmDefaultMessage :: Lens' UserFacingMessage (Maybe Text)
ufmDefaultMessage
  = lens _ufmDefaultMessage
      (\ s a -> s{_ufmDefaultMessage = a})

instance FromJSON UserFacingMessage where
        parseJSON
          = withObject "UserFacingMessage"
              (\ o ->
                 UserFacingMessage' <$>
                   (o .:? "localizedMessages") <*>
                     (o .:? "defaultMessage"))

instance ToJSON UserFacingMessage where
        toJSON UserFacingMessage'{..}
          = object
              (catMaybes
                 [("localizedMessages" .=) <$> _ufmLocalizedMessages,
                  ("defaultMessage" .=) <$> _ufmDefaultMessage])

-- | Information about device software.
--
-- /See:/ 'softwareInfo' smart constructor.
data SoftwareInfo =
  SoftwareInfo'
    { _siSecurityPatchLevel             :: !(Maybe Text)
    , _siAndroidDevicePolicyVersionName :: !(Maybe Text)
    , _siDeviceKernelVersion            :: !(Maybe Text)
    , _siAndroidDevicePolicyVersionCode :: !(Maybe (Textual Int32))
    , _siDeviceBuildSignature           :: !(Maybe Text)
    , _siBootLoaderVersion              :: !(Maybe Text)
    , _siAndroidBuildTime               :: !(Maybe DateTime')
    , _siPrimaryLanguageCode            :: !(Maybe Text)
    , _siAndroidBuildNumber             :: !(Maybe Text)
    , _siAndroidVersion                 :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SoftwareInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siSecurityPatchLevel'
--
-- * 'siAndroidDevicePolicyVersionName'
--
-- * 'siDeviceKernelVersion'
--
-- * 'siAndroidDevicePolicyVersionCode'
--
-- * 'siDeviceBuildSignature'
--
-- * 'siBootLoaderVersion'
--
-- * 'siAndroidBuildTime'
--
-- * 'siPrimaryLanguageCode'
--
-- * 'siAndroidBuildNumber'
--
-- * 'siAndroidVersion'
softwareInfo
    :: SoftwareInfo
softwareInfo =
  SoftwareInfo'
    { _siSecurityPatchLevel = Nothing
    , _siAndroidDevicePolicyVersionName = Nothing
    , _siDeviceKernelVersion = Nothing
    , _siAndroidDevicePolicyVersionCode = Nothing
    , _siDeviceBuildSignature = Nothing
    , _siBootLoaderVersion = Nothing
    , _siAndroidBuildTime = Nothing
    , _siPrimaryLanguageCode = Nothing
    , _siAndroidBuildNumber = Nothing
    , _siAndroidVersion = Nothing
    }

-- | Security patch level, e.g. 2016-05-01.
siSecurityPatchLevel :: Lens' SoftwareInfo (Maybe Text)
siSecurityPatchLevel
  = lens _siSecurityPatchLevel
      (\ s a -> s{_siSecurityPatchLevel = a})

-- | The Android Device Policy app version as displayed to the user.
siAndroidDevicePolicyVersionName :: Lens' SoftwareInfo (Maybe Text)
siAndroidDevicePolicyVersionName
  = lens _siAndroidDevicePolicyVersionName
      (\ s a -> s{_siAndroidDevicePolicyVersionName = a})

-- | Kernel version, for example, 2.6.32.9-g103d848.
siDeviceKernelVersion :: Lens' SoftwareInfo (Maybe Text)
siDeviceKernelVersion
  = lens _siDeviceKernelVersion
      (\ s a -> s{_siDeviceKernelVersion = a})

-- | The Android Device Policy app version code.
siAndroidDevicePolicyVersionCode :: Lens' SoftwareInfo (Maybe Int32)
siAndroidDevicePolicyVersionCode
  = lens _siAndroidDevicePolicyVersionCode
      (\ s a -> s{_siAndroidDevicePolicyVersionCode = a})
      . mapping _Coerce

-- | SHA-256 hash of android.content.pm.Signature
-- (https:\/\/developer.android.com\/reference\/android\/content\/pm\/Signature.html)
-- associated with the system package, which can be used to verify that the
-- system build hasn\'t been modified.
siDeviceBuildSignature :: Lens' SoftwareInfo (Maybe Text)
siDeviceBuildSignature
  = lens _siDeviceBuildSignature
      (\ s a -> s{_siDeviceBuildSignature = a})

-- | The system bootloader version number, e.g. 0.6.7.
siBootLoaderVersion :: Lens' SoftwareInfo (Maybe Text)
siBootLoaderVersion
  = lens _siBootLoaderVersion
      (\ s a -> s{_siBootLoaderVersion = a})

-- | Build time.
siAndroidBuildTime :: Lens' SoftwareInfo (Maybe UTCTime)
siAndroidBuildTime
  = lens _siAndroidBuildTime
      (\ s a -> s{_siAndroidBuildTime = a})
      . mapping _DateTime

-- | An IETF BCP 47 language code for the primary locale on the device.
siPrimaryLanguageCode :: Lens' SoftwareInfo (Maybe Text)
siPrimaryLanguageCode
  = lens _siPrimaryLanguageCode
      (\ s a -> s{_siPrimaryLanguageCode = a})

-- | Android build ID string meant for displaying to the user. For example,
-- shamu-userdebug 6.0.1 MOB30I 2756745 dev-keys.
siAndroidBuildNumber :: Lens' SoftwareInfo (Maybe Text)
siAndroidBuildNumber
  = lens _siAndroidBuildNumber
      (\ s a -> s{_siAndroidBuildNumber = a})

-- | The user-visible Android version string. For example, 6.0.1.
siAndroidVersion :: Lens' SoftwareInfo (Maybe Text)
siAndroidVersion
  = lens _siAndroidVersion
      (\ s a -> s{_siAndroidVersion = a})

instance FromJSON SoftwareInfo where
        parseJSON
          = withObject "SoftwareInfo"
              (\ o ->
                 SoftwareInfo' <$>
                   (o .:? "securityPatchLevel") <*>
                     (o .:? "androidDevicePolicyVersionName")
                     <*> (o .:? "deviceKernelVersion")
                     <*> (o .:? "androidDevicePolicyVersionCode")
                     <*> (o .:? "deviceBuildSignature")
                     <*> (o .:? "bootloaderVersion")
                     <*> (o .:? "androidBuildTime")
                     <*> (o .:? "primaryLanguageCode")
                     <*> (o .:? "androidBuildNumber")
                     <*> (o .:? "androidVersion"))

instance ToJSON SoftwareInfo where
        toJSON SoftwareInfo'{..}
          = object
              (catMaybes
                 [("securityPatchLevel" .=) <$> _siSecurityPatchLevel,
                  ("androidDevicePolicyVersionName" .=) <$>
                    _siAndroidDevicePolicyVersionName,
                  ("deviceKernelVersion" .=) <$>
                    _siDeviceKernelVersion,
                  ("androidDevicePolicyVersionCode" .=) <$>
                    _siAndroidDevicePolicyVersionCode,
                  ("deviceBuildSignature" .=) <$>
                    _siDeviceBuildSignature,
                  ("bootloaderVersion" .=) <$> _siBootLoaderVersion,
                  ("androidBuildTime" .=) <$> _siAndroidBuildTime,
                  ("primaryLanguageCode" .=) <$>
                    _siPrimaryLanguageCode,
                  ("androidBuildNumber" .=) <$> _siAndroidBuildNumber,
                  ("androidVersion" .=) <$> _siAndroidVersion])

-- | A permission required by the app.
--
-- /See:/ 'applicationPermission' smart constructor.
data ApplicationPermission =
  ApplicationPermission'
    { _apName         :: !(Maybe Text)
    , _apDescription  :: !(Maybe Text)
    , _apPermissionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApplicationPermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apName'
--
-- * 'apDescription'
--
-- * 'apPermissionId'
applicationPermission
    :: ApplicationPermission
applicationPermission =
  ApplicationPermission'
    {_apName = Nothing, _apDescription = Nothing, _apPermissionId = Nothing}

-- | The name of the permission. Localized.
apName :: Lens' ApplicationPermission (Maybe Text)
apName = lens _apName (\ s a -> s{_apName = a})

-- | A longer description of the permission, providing more detail on what it
-- affects. Localized.
apDescription :: Lens' ApplicationPermission (Maybe Text)
apDescription
  = lens _apDescription
      (\ s a -> s{_apDescription = a})

-- | An opaque string uniquely identifying the permission. Not localized.
apPermissionId :: Lens' ApplicationPermission (Maybe Text)
apPermissionId
  = lens _apPermissionId
      (\ s a -> s{_apPermissionId = a})

instance FromJSON ApplicationPermission where
        parseJSON
          = withObject "ApplicationPermission"
              (\ o ->
                 ApplicationPermission' <$>
                   (o .:? "name") <*> (o .:? "description") <*>
                     (o .:? "permissionId"))

instance ToJSON ApplicationPermission where
        toJSON ApplicationPermission'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _apName,
                  ("description" .=) <$> _apDescription,
                  ("permissionId" .=) <$> _apPermissionId])

-- | An action executed during setup.
--
-- /See:/ 'setupAction' smart constructor.
data SetupAction =
  SetupAction'
    { _saLaunchApp   :: !(Maybe LaunchAppAction)
    , _saTitle       :: !(Maybe UserFacingMessage)
    , _saDescription :: !(Maybe UserFacingMessage)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetupAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saLaunchApp'
--
-- * 'saTitle'
--
-- * 'saDescription'
setupAction
    :: SetupAction
setupAction =
  SetupAction'
    {_saLaunchApp = Nothing, _saTitle = Nothing, _saDescription = Nothing}

-- | An action to launch an app.
saLaunchApp :: Lens' SetupAction (Maybe LaunchAppAction)
saLaunchApp
  = lens _saLaunchApp (\ s a -> s{_saLaunchApp = a})

-- | Title of this action.
saTitle :: Lens' SetupAction (Maybe UserFacingMessage)
saTitle = lens _saTitle (\ s a -> s{_saTitle = a})

-- | Description of this action.
saDescription :: Lens' SetupAction (Maybe UserFacingMessage)
saDescription
  = lens _saDescription
      (\ s a -> s{_saDescription = a})

instance FromJSON SetupAction where
        parseJSON
          = withObject "SetupAction"
              (\ o ->
                 SetupAction' <$>
                   (o .:? "launchApp") <*> (o .:? "title") <*>
                     (o .:? "description"))

instance ToJSON SetupAction where
        toJSON SetupAction'{..}
          = object
              (catMaybes
                 [("launchApp" .=) <$> _saLaunchApp,
                  ("title" .=) <$> _saTitle,
                  ("description" .=) <$> _saDescription])
