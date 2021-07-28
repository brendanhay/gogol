{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AlertCenter.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AlertCenter.Types.Product where

import Network.Google.AlertCenter.Types.Sum
import Network.Google.Prelude

-- | Detector defined by administrators.
--
-- /See:/ 'userDefinedDetectorInfo' smart constructor.
data UserDefinedDetectorInfo =
  UserDefinedDetectorInfo'
    { _uddiResourceName :: !(Maybe Text)
    , _uddiDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserDefinedDetectorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uddiResourceName'
--
-- * 'uddiDisplayName'
userDefinedDetectorInfo
    :: UserDefinedDetectorInfo
userDefinedDetectorInfo =
  UserDefinedDetectorInfo'
    {_uddiResourceName = Nothing, _uddiDisplayName = Nothing}


-- | Resource name that uniquely identifies the detector.
uddiResourceName :: Lens' UserDefinedDetectorInfo (Maybe Text)
uddiResourceName
  = lens _uddiResourceName
      (\ s a -> s{_uddiResourceName = a})

-- | Display name of the detector.
uddiDisplayName :: Lens' UserDefinedDetectorInfo (Maybe Text)
uddiDisplayName
  = lens _uddiDisplayName
      (\ s a -> s{_uddiDisplayName = a})

instance FromJSON UserDefinedDetectorInfo where
        parseJSON
          = withObject "UserDefinedDetectorInfo"
              (\ o ->
                 UserDefinedDetectorInfo' <$>
                   (o .:? "resourceName") <*> (o .:? "displayName"))

instance ToJSON UserDefinedDetectorInfo where
        toJSON UserDefinedDetectorInfo'{..}
          = object
              (catMaybes
                 [("resourceName" .=) <$> _uddiResourceName,
                  ("displayName" .=) <$> _uddiDisplayName])

-- | Response message for an alert listing request.
--
-- /See:/ 'listAlertsResponse' smart constructor.
data ListAlertsResponse =
  ListAlertsResponse'
    { _larNextPageToken :: !(Maybe Text)
    , _larAlerts :: !(Maybe [Alert])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAlertsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larNextPageToken'
--
-- * 'larAlerts'
listAlertsResponse
    :: ListAlertsResponse
listAlertsResponse =
  ListAlertsResponse' {_larNextPageToken = Nothing, _larAlerts = Nothing}


-- | The token for the next page. If not empty, indicates that there may be
-- more alerts that match the listing request; this value can be used in a
-- subsequent ListAlertsRequest to get alerts continuing from last result
-- of the current list call.
larNextPageToken :: Lens' ListAlertsResponse (Maybe Text)
larNextPageToken
  = lens _larNextPageToken
      (\ s a -> s{_larNextPageToken = a})

-- | The list of alerts.
larAlerts :: Lens' ListAlertsResponse [Alert]
larAlerts
  = lens _larAlerts (\ s a -> s{_larAlerts = a}) .
      _Default
      . _Coerce

instance FromJSON ListAlertsResponse where
        parseJSON
          = withObject "ListAlertsResponse"
              (\ o ->
                 ListAlertsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "alerts" .!= mempty))

instance ToJSON ListAlertsResponse where
        toJSON ListAlertsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _larNextPageToken,
                  ("alerts" .=) <$> _larAlerts])

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

-- | A representation of a single data row in a CSV file.
--
-- /See:/ 'csvRow' smart constructor.
newtype CSVRow =
  CSVRow'
    { _crEntries :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CSVRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crEntries'
csvRow
    :: CSVRow
csvRow = CSVRow' {_crEntries = Nothing}


-- | The data entries in a CSV file row, as a string array rather than a
-- single comma-separated string.
crEntries :: Lens' CSVRow [Text]
crEntries
  = lens _crEntries (\ s a -> s{_crEntries = a}) .
      _Default
      . _Coerce

instance FromJSON CSVRow where
        parseJSON
          = withObject "CSVRow"
              (\ o -> CSVRow' <$> (o .:? "entries" .!= mempty))

instance ToJSON CSVRow where
        toJSON CSVRow'{..}
          = object (catMaybes [("entries" .=) <$> _crEntries])

-- | A customer feedback about an alert.
--
-- /See:/ 'alertFeedback' smart constructor.
data AlertFeedback =
  AlertFeedback'
    { _afFeedbackId :: !(Maybe Text)
    , _afEmail :: !(Maybe Text)
    , _afAlertId :: !(Maybe Text)
    , _afCustomerId :: !(Maybe Text)
    , _afType :: !(Maybe AlertFeedbackType)
    , _afCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AlertFeedback' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afFeedbackId'
--
-- * 'afEmail'
--
-- * 'afAlertId'
--
-- * 'afCustomerId'
--
-- * 'afType'
--
-- * 'afCreateTime'
alertFeedback
    :: AlertFeedback
alertFeedback =
  AlertFeedback'
    { _afFeedbackId = Nothing
    , _afEmail = Nothing
    , _afAlertId = Nothing
    , _afCustomerId = Nothing
    , _afType = Nothing
    , _afCreateTime = Nothing
    }


-- | Output only. The unique identifier for the feedback.
afFeedbackId :: Lens' AlertFeedback (Maybe Text)
afFeedbackId
  = lens _afFeedbackId (\ s a -> s{_afFeedbackId = a})

-- | Output only. The email of the user that provided the feedback.
afEmail :: Lens' AlertFeedback (Maybe Text)
afEmail = lens _afEmail (\ s a -> s{_afEmail = a})

-- | Output only. The alert identifier.
afAlertId :: Lens' AlertFeedback (Maybe Text)
afAlertId
  = lens _afAlertId (\ s a -> s{_afAlertId = a})

-- | Output only. The unique identifier of the Google account of the
-- customer.
afCustomerId :: Lens' AlertFeedback (Maybe Text)
afCustomerId
  = lens _afCustomerId (\ s a -> s{_afCustomerId = a})

-- | Required. The type of the feedback.
afType :: Lens' AlertFeedback (Maybe AlertFeedbackType)
afType = lens _afType (\ s a -> s{_afType = a})

-- | Output only. The time this feedback was created.
afCreateTime :: Lens' AlertFeedback (Maybe UTCTime)
afCreateTime
  = lens _afCreateTime (\ s a -> s{_afCreateTime = a})
      . mapping _DateTime

instance FromJSON AlertFeedback where
        parseJSON
          = withObject "AlertFeedback"
              (\ o ->
                 AlertFeedback' <$>
                   (o .:? "feedbackId") <*> (o .:? "email") <*>
                     (o .:? "alertId")
                     <*> (o .:? "customerId")
                     <*> (o .:? "type")
                     <*> (o .:? "createTime"))

instance ToJSON AlertFeedback where
        toJSON AlertFeedback'{..}
          = object
              (catMaybes
                 [("feedbackId" .=) <$> _afFeedbackId,
                  ("email" .=) <$> _afEmail,
                  ("alertId" .=) <$> _afAlertId,
                  ("customerId" .=) <$> _afCustomerId,
                  ("type" .=) <$> _afType,
                  ("createTime" .=) <$> _afCreateTime])

-- | Alerts that get triggered on violations of Data Loss Prevention (DLP)
-- rules.
--
-- /See:/ 'dlpRuleViolation' smart constructor.
newtype DlpRuleViolation =
  DlpRuleViolation'
    { _drvRuleViolationInfo :: Maybe RuleViolationInfo
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DlpRuleViolation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drvRuleViolationInfo'
dlpRuleViolation
    :: DlpRuleViolation
dlpRuleViolation = DlpRuleViolation' {_drvRuleViolationInfo = Nothing}


-- | Details about the violated DLP rule. Admins can use the predefined
-- detectors provided by Google Cloud DLP https:\/\/cloud.google.com\/dlp\/
-- when setting up a DLP rule. Matched Cloud DLP detectors in this
-- violation if any will be captured in the MatchInfo.predefined_detector.
drvRuleViolationInfo :: Lens' DlpRuleViolation (Maybe RuleViolationInfo)
drvRuleViolationInfo
  = lens _drvRuleViolationInfo
      (\ s a -> s{_drvRuleViolationInfo = a})

instance FromJSON DlpRuleViolation where
        parseJSON
          = withObject "DlpRuleViolation"
              (\ o ->
                 DlpRuleViolation' <$> (o .:? "ruleViolationInfo"))

instance ToJSON DlpRuleViolation where
        toJSON DlpRuleViolation'{..}
          = object
              (catMaybes
                 [("ruleViolationInfo" .=) <$> _drvRuleViolationInfo])

-- | An outage incident reported by Google for a Google Workspace (formerly G
-- Suite) application.
--
-- /See:/ 'appsOutage' smart constructor.
data AppsOutage =
  AppsOutage'
    { _aoStatus :: !(Maybe AppsOutageStatus)
    , _aoDashboardURI :: !(Maybe Text)
    , _aoProducts :: !(Maybe [Text])
    , _aoResolutionTime :: !(Maybe DateTime')
    , _aoNextUpdateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsOutage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoStatus'
--
-- * 'aoDashboardURI'
--
-- * 'aoProducts'
--
-- * 'aoResolutionTime'
--
-- * 'aoNextUpdateTime'
appsOutage
    :: AppsOutage
appsOutage =
  AppsOutage'
    { _aoStatus = Nothing
    , _aoDashboardURI = Nothing
    , _aoProducts = Nothing
    , _aoResolutionTime = Nothing
    , _aoNextUpdateTime = Nothing
    }


-- | Current outage status.
aoStatus :: Lens' AppsOutage (Maybe AppsOutageStatus)
aoStatus = lens _aoStatus (\ s a -> s{_aoStatus = a})

-- | Link to the outage event in Google Workspace Status Dashboard
aoDashboardURI :: Lens' AppsOutage (Maybe Text)
aoDashboardURI
  = lens _aoDashboardURI
      (\ s a -> s{_aoDashboardURI = a})

-- | List of products impacted by the outage.
aoProducts :: Lens' AppsOutage [Text]
aoProducts
  = lens _aoProducts (\ s a -> s{_aoProducts = a}) .
      _Default
      . _Coerce

-- | Timestamp of the outage expected or confirmed resolution. (Used only
-- when known).
aoResolutionTime :: Lens' AppsOutage (Maybe UTCTime)
aoResolutionTime
  = lens _aoResolutionTime
      (\ s a -> s{_aoResolutionTime = a})
      . mapping _DateTime

-- | Timestamp by which the next update shall be provided.
aoNextUpdateTime :: Lens' AppsOutage (Maybe UTCTime)
aoNextUpdateTime
  = lens _aoNextUpdateTime
      (\ s a -> s{_aoNextUpdateTime = a})
      . mapping _DateTime

instance FromJSON AppsOutage where
        parseJSON
          = withObject "AppsOutage"
              (\ o ->
                 AppsOutage' <$>
                   (o .:? "status") <*> (o .:? "dashboardUri") <*>
                     (o .:? "products" .!= mempty)
                     <*> (o .:? "resolutionTime")
                     <*> (o .:? "nextUpdateTime"))

instance ToJSON AppsOutage where
        toJSON AppsOutage'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _aoStatus,
                  ("dashboardUri" .=) <$> _aoDashboardURI,
                  ("products" .=) <$> _aoProducts,
                  ("resolutionTime" .=) <$> _aoResolutionTime,
                  ("nextUpdateTime" .=) <$> _aoNextUpdateTime])

-- | A mobile device compromised alert. Derived from audit logs.
--
-- /See:/ 'deviceCompromised' smart constructor.
data DeviceCompromised =
  DeviceCompromised'
    { _dcEmail :: !(Maybe Text)
    , _dcEvents :: !(Maybe [DeviceCompromisedSecurityDetail])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeviceCompromised' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcEmail'
--
-- * 'dcEvents'
deviceCompromised
    :: DeviceCompromised
deviceCompromised = DeviceCompromised' {_dcEmail = Nothing, _dcEvents = Nothing}


-- | The email of the user this alert was created for.
dcEmail :: Lens' DeviceCompromised (Maybe Text)
dcEmail = lens _dcEmail (\ s a -> s{_dcEmail = a})

-- | Required. The list of security events.
dcEvents :: Lens' DeviceCompromised [DeviceCompromisedSecurityDetail]
dcEvents
  = lens _dcEvents (\ s a -> s{_dcEvents = a}) .
      _Default
      . _Coerce

instance FromJSON DeviceCompromised where
        parseJSON
          = withObject "DeviceCompromised"
              (\ o ->
                 DeviceCompromised' <$>
                   (o .:? "email") <*> (o .:? "events" .!= mempty))

instance ToJSON DeviceCompromised where
        toJSON DeviceCompromised'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _dcEmail,
                  ("events" .=) <$> _dcEvents])

-- | A state-sponsored attack alert. Derived from audit logs.
--
-- /See:/ 'stateSponsoredAttack' smart constructor.
newtype StateSponsoredAttack =
  StateSponsoredAttack'
    { _ssaEmail :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StateSponsoredAttack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssaEmail'
stateSponsoredAttack
    :: StateSponsoredAttack
stateSponsoredAttack = StateSponsoredAttack' {_ssaEmail = Nothing}


-- | The email of the user this incident was created for.
ssaEmail :: Lens' StateSponsoredAttack (Maybe Text)
ssaEmail = lens _ssaEmail (\ s a -> s{_ssaEmail = a})

instance FromJSON StateSponsoredAttack where
        parseJSON
          = withObject "StateSponsoredAttack"
              (\ o -> StateSponsoredAttack' <$> (o .:? "email"))

instance ToJSON StateSponsoredAttack where
        toJSON StateSponsoredAttack'{..}
          = object (catMaybes [("email" .=) <$> _ssaEmail])

-- | A request to perform batch undelete on alerts.
--
-- /See:/ 'batchUndeleteAlertsRequest' smart constructor.
data BatchUndeleteAlertsRequest =
  BatchUndeleteAlertsRequest'
    { _buarAlertId :: !(Maybe [Text])
    , _buarCustomerId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUndeleteAlertsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buarAlertId'
--
-- * 'buarCustomerId'
batchUndeleteAlertsRequest
    :: BatchUndeleteAlertsRequest
batchUndeleteAlertsRequest =
  BatchUndeleteAlertsRequest'
    {_buarAlertId = Nothing, _buarCustomerId = Nothing}


-- | Required. list of alert IDs.
buarAlertId :: Lens' BatchUndeleteAlertsRequest [Text]
buarAlertId
  = lens _buarAlertId (\ s a -> s{_buarAlertId = a}) .
      _Default
      . _Coerce

-- | Optional. The unique identifier of the Google Workspace organization
-- account of the customer the alerts are associated with.
buarCustomerId :: Lens' BatchUndeleteAlertsRequest (Maybe Text)
buarCustomerId
  = lens _buarCustomerId
      (\ s a -> s{_buarCustomerId = a})

instance FromJSON BatchUndeleteAlertsRequest where
        parseJSON
          = withObject "BatchUndeleteAlertsRequest"
              (\ o ->
                 BatchUndeleteAlertsRequest' <$>
                   (o .:? "alertId" .!= mempty) <*>
                     (o .:? "customerId"))

instance ToJSON BatchUndeleteAlertsRequest where
        toJSON BatchUndeleteAlertsRequest'{..}
          = object
              (catMaybes
                 [("alertId" .=) <$> _buarAlertId,
                  ("customerId" .=) <$> _buarCustomerId])

-- | Alert for setting the domain or IP that malicious email comes from as
-- whitelisted domain or IP in Gmail advanced settings.
--
-- /See:/ 'badWhiteList' smart constructor.
data BadWhiteList =
  BadWhiteList'
    { _bwlSourceIP :: !(Maybe Text)
    , _bwlDomainId :: !(Maybe DomainId)
    , _bwlMessages :: !(Maybe [GmailMessageInfo])
    , _bwlMaliciousEntity :: !(Maybe MaliciousEntity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BadWhiteList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bwlSourceIP'
--
-- * 'bwlDomainId'
--
-- * 'bwlMessages'
--
-- * 'bwlMaliciousEntity'
badWhiteList
    :: BadWhiteList
badWhiteList =
  BadWhiteList'
    { _bwlSourceIP = Nothing
    , _bwlDomainId = Nothing
    , _bwlMessages = Nothing
    , _bwlMaliciousEntity = Nothing
    }


-- | The source IP address of the malicious email, for example,
-- \`127.0.0.1\`.
bwlSourceIP :: Lens' BadWhiteList (Maybe Text)
bwlSourceIP
  = lens _bwlSourceIP (\ s a -> s{_bwlSourceIP = a})

-- | The domain ID.
bwlDomainId :: Lens' BadWhiteList (Maybe DomainId)
bwlDomainId
  = lens _bwlDomainId (\ s a -> s{_bwlDomainId = a})

-- | The list of messages contained by this alert.
bwlMessages :: Lens' BadWhiteList [GmailMessageInfo]
bwlMessages
  = lens _bwlMessages (\ s a -> s{_bwlMessages = a}) .
      _Default
      . _Coerce

-- | The entity whose actions triggered a Gmail phishing alert.
bwlMaliciousEntity :: Lens' BadWhiteList (Maybe MaliciousEntity)
bwlMaliciousEntity
  = lens _bwlMaliciousEntity
      (\ s a -> s{_bwlMaliciousEntity = a})

instance FromJSON BadWhiteList where
        parseJSON
          = withObject "BadWhiteList"
              (\ o ->
                 BadWhiteList' <$>
                   (o .:? "sourceIp") <*> (o .:? "domainId") <*>
                     (o .:? "messages" .!= mempty)
                     <*> (o .:? "maliciousEntity"))

instance ToJSON BadWhiteList where
        toJSON BadWhiteList'{..}
          = object
              (catMaybes
                 [("sourceIp" .=) <$> _bwlSourceIP,
                  ("domainId" .=) <$> _bwlDomainId,
                  ("messages" .=) <$> _bwlMessages,
                  ("maliciousEntity" .=) <$> _bwlMaliciousEntity])

-- | Detector provided by Google.
--
-- /See:/ 'predefinedDetectorInfo' smart constructor.
newtype PredefinedDetectorInfo =
  PredefinedDetectorInfo'
    { _pdiDetectorName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PredefinedDetectorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdiDetectorName'
predefinedDetectorInfo
    :: PredefinedDetectorInfo
predefinedDetectorInfo = PredefinedDetectorInfo' {_pdiDetectorName = Nothing}


-- | Name that uniquely identifies the detector.
pdiDetectorName :: Lens' PredefinedDetectorInfo (Maybe Text)
pdiDetectorName
  = lens _pdiDetectorName
      (\ s a -> s{_pdiDetectorName = a})

instance FromJSON PredefinedDetectorInfo where
        parseJSON
          = withObject "PredefinedDetectorInfo"
              (\ o ->
                 PredefinedDetectorInfo' <$> (o .:? "detectorName"))

instance ToJSON PredefinedDetectorInfo where
        toJSON PredefinedDetectorInfo'{..}
          = object
              (catMaybes
                 [("detectorName" .=) <$> _pdiDetectorName])

-- | Detailed information of a single MDM suspicious activity event.
--
-- /See:/ 'suspiciousActivitySecurityDetail' smart constructor.
data SuspiciousActivitySecurityDetail =
  SuspiciousActivitySecurityDetail'
    { _sasdDeviceProperty :: !(Maybe Text)
    , _sasdResourceId :: !(Maybe Text)
    , _sasdIosVendorId :: !(Maybe Text)
    , _sasdOldValue :: !(Maybe Text)
    , _sasdNewValue :: !(Maybe Text)
    , _sasdDeviceModel :: !(Maybe Text)
    , _sasdDeviceId :: !(Maybe Text)
    , _sasdDeviceType :: !(Maybe Text)
    , _sasdSerialNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuspiciousActivitySecurityDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sasdDeviceProperty'
--
-- * 'sasdResourceId'
--
-- * 'sasdIosVendorId'
--
-- * 'sasdOldValue'
--
-- * 'sasdNewValue'
--
-- * 'sasdDeviceModel'
--
-- * 'sasdDeviceId'
--
-- * 'sasdDeviceType'
--
-- * 'sasdSerialNumber'
suspiciousActivitySecurityDetail
    :: SuspiciousActivitySecurityDetail
suspiciousActivitySecurityDetail =
  SuspiciousActivitySecurityDetail'
    { _sasdDeviceProperty = Nothing
    , _sasdResourceId = Nothing
    , _sasdIosVendorId = Nothing
    , _sasdOldValue = Nothing
    , _sasdNewValue = Nothing
    , _sasdDeviceModel = Nothing
    , _sasdDeviceId = Nothing
    , _sasdDeviceType = Nothing
    , _sasdSerialNumber = Nothing
    }


-- | The device property which was changed.
sasdDeviceProperty :: Lens' SuspiciousActivitySecurityDetail (Maybe Text)
sasdDeviceProperty
  = lens _sasdDeviceProperty
      (\ s a -> s{_sasdDeviceProperty = a})

-- | The device resource ID.
sasdResourceId :: Lens' SuspiciousActivitySecurityDetail (Maybe Text)
sasdResourceId
  = lens _sasdResourceId
      (\ s a -> s{_sasdResourceId = a})

-- | Required for iOS, empty for others.
sasdIosVendorId :: Lens' SuspiciousActivitySecurityDetail (Maybe Text)
sasdIosVendorId
  = lens _sasdIosVendorId
      (\ s a -> s{_sasdIosVendorId = a})

-- | The old value of the device property before the change.
sasdOldValue :: Lens' SuspiciousActivitySecurityDetail (Maybe Text)
sasdOldValue
  = lens _sasdOldValue (\ s a -> s{_sasdOldValue = a})

-- | The new value of the device property after the change.
sasdNewValue :: Lens' SuspiciousActivitySecurityDetail (Maybe Text)
sasdNewValue
  = lens _sasdNewValue (\ s a -> s{_sasdNewValue = a})

-- | The model of the device.
sasdDeviceModel :: Lens' SuspiciousActivitySecurityDetail (Maybe Text)
sasdDeviceModel
  = lens _sasdDeviceModel
      (\ s a -> s{_sasdDeviceModel = a})

-- | Required. The device ID.
sasdDeviceId :: Lens' SuspiciousActivitySecurityDetail (Maybe Text)
sasdDeviceId
  = lens _sasdDeviceId (\ s a -> s{_sasdDeviceId = a})

-- | The type of the device.
sasdDeviceType :: Lens' SuspiciousActivitySecurityDetail (Maybe Text)
sasdDeviceType
  = lens _sasdDeviceType
      (\ s a -> s{_sasdDeviceType = a})

-- | The serial number of the device.
sasdSerialNumber :: Lens' SuspiciousActivitySecurityDetail (Maybe Text)
sasdSerialNumber
  = lens _sasdSerialNumber
      (\ s a -> s{_sasdSerialNumber = a})

instance FromJSON SuspiciousActivitySecurityDetail
         where
        parseJSON
          = withObject "SuspiciousActivitySecurityDetail"
              (\ o ->
                 SuspiciousActivitySecurityDetail' <$>
                   (o .:? "deviceProperty") <*> (o .:? "resourceId") <*>
                     (o .:? "iosVendorId")
                     <*> (o .:? "oldValue")
                     <*> (o .:? "newValue")
                     <*> (o .:? "deviceModel")
                     <*> (o .:? "deviceId")
                     <*> (o .:? "deviceType")
                     <*> (o .:? "serialNumber"))

instance ToJSON SuspiciousActivitySecurityDetail
         where
        toJSON SuspiciousActivitySecurityDetail'{..}
          = object
              (catMaybes
                 [("deviceProperty" .=) <$> _sasdDeviceProperty,
                  ("resourceId" .=) <$> _sasdResourceId,
                  ("iosVendorId" .=) <$> _sasdIosVendorId,
                  ("oldValue" .=) <$> _sasdOldValue,
                  ("newValue" .=) <$> _sasdNewValue,
                  ("deviceModel" .=) <$> _sasdDeviceModel,
                  ("deviceId" .=) <$> _sasdDeviceId,
                  ("deviceType" .=) <$> _sasdDeviceType,
                  ("serialNumber" .=) <$> _sasdSerialNumber])

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

-- | A request to undelete a specific alert that was marked for deletion.
--
-- /See:/ 'undeleteAlertRequest' smart constructor.
newtype UndeleteAlertRequest =
  UndeleteAlertRequest'
    { _uarCustomerId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UndeleteAlertRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uarCustomerId'
undeleteAlertRequest
    :: UndeleteAlertRequest
undeleteAlertRequest = UndeleteAlertRequest' {_uarCustomerId = Nothing}


-- | Optional. The unique identifier of the Google Workspace organization
-- account of the customer the alert is associated with. Inferred from the
-- caller identity if not provided.
uarCustomerId :: Lens' UndeleteAlertRequest (Maybe Text)
uarCustomerId
  = lens _uarCustomerId
      (\ s a -> s{_uarCustomerId = a})

instance FromJSON UndeleteAlertRequest where
        parseJSON
          = withObject "UndeleteAlertRequest"
              (\ o ->
                 UndeleteAlertRequest' <$> (o .:? "customerId"))

instance ToJSON UndeleteAlertRequest where
        toJSON UndeleteAlertRequest'{..}
          = object
              (catMaybes [("customerId" .=) <$> _uarCustomerId])

-- | Customer-level settings.
--
-- /See:/ 'settings' smart constructor.
newtype Settings =
  Settings'
    { _sNotifications :: Maybe [Notification]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sNotifications'
settings
    :: Settings
settings = Settings' {_sNotifications = Nothing}


-- | The list of notifications.
sNotifications :: Lens' Settings [Notification]
sNotifications
  = lens _sNotifications
      (\ s a -> s{_sNotifications = a})
      . _Default
      . _Coerce

instance FromJSON Settings where
        parseJSON
          = withObject "Settings"
              (\ o ->
                 Settings' <$> (o .:? "notifications" .!= mempty))

instance ToJSON Settings where
        toJSON Settings'{..}
          = object
              (catMaybes
                 [("notifications" .=) <$> _sNotifications])

-- | Settings for callback notifications. For more details see [Google
-- Workspace Alert
-- Notification](https:\/\/developers.google.com\/admin-sdk\/alertcenter\/guides\/notifications).
--
-- /See:/ 'notification' smart constructor.
newtype Notification =
  Notification'
    { _nCloudPubsubTopic :: Maybe CloudPubsubTopic
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Notification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nCloudPubsubTopic'
notification
    :: Notification
notification = Notification' {_nCloudPubsubTopic = Nothing}


-- | A Google Cloud Pub\/sub topic destination.
nCloudPubsubTopic :: Lens' Notification (Maybe CloudPubsubTopic)
nCloudPubsubTopic
  = lens _nCloudPubsubTopic
      (\ s a -> s{_nCloudPubsubTopic = a})

instance FromJSON Notification where
        parseJSON
          = withObject "Notification"
              (\ o -> Notification' <$> (o .:? "cloudPubsubTopic"))

instance ToJSON Notification where
        toJSON Notification'{..}
          = object
              (catMaybes
                 [("cloudPubsubTopic" .=) <$> _nCloudPubsubTopic])

-- | Alerts from Reporting Rules configured by Admin.
--
-- /See:/ 'reportingRule' smart constructor.
data ReportingRule =
  ReportingRule'
    { _rrAlertDetails :: !(Maybe Bytes)
    , _rrName :: !(Maybe Text)
    , _rrQuery :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportingRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrAlertDetails'
--
-- * 'rrName'
--
-- * 'rrQuery'
reportingRule
    :: ReportingRule
reportingRule =
  ReportingRule'
    {_rrAlertDetails = Nothing, _rrName = Nothing, _rrQuery = Nothing}


-- | Any other associated alert details, for example, AlertConfiguration.
rrAlertDetails :: Lens' ReportingRule (Maybe ByteString)
rrAlertDetails
  = lens _rrAlertDetails
      (\ s a -> s{_rrAlertDetails = a})
      . mapping _Bytes

-- | Rule name
rrName :: Lens' ReportingRule (Maybe Text)
rrName = lens _rrName (\ s a -> s{_rrName = a})

-- | Alert Rule query Sample Query query { condition { filter {
-- expected_application_id: 777491262838 expected_event_name:
-- \"indexable_content_change\" filter_op: IN } } conjunction_operator: OR
-- }
rrQuery :: Lens' ReportingRule (Maybe ByteString)
rrQuery
  = lens _rrQuery (\ s a -> s{_rrQuery = a}) .
      mapping _Bytes

instance FromJSON ReportingRule where
        parseJSON
          = withObject "ReportingRule"
              (\ o ->
                 ReportingRule' <$>
                   (o .:? "alertDetails") <*> (o .:? "name") <*>
                     (o .:? "query"))

instance ToJSON ReportingRule where
        toJSON ReportingRule'{..}
          = object
              (catMaybes
                 [("alertDetails" .=) <$> _rrAlertDetails,
                  ("name" .=) <$> _rrName, ("query" .=) <$> _rrQuery])

-- | Response to batch undelete operation on alerts.
--
-- /See:/ 'batchUndeleteAlertsResponse' smart constructor.
data BatchUndeleteAlertsResponse =
  BatchUndeleteAlertsResponse'
    { _buarSuccessAlertIds :: !(Maybe [Text])
    , _buarFailedAlertStatus :: !(Maybe BatchUndeleteAlertsResponseFailedAlertStatus)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUndeleteAlertsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buarSuccessAlertIds'
--
-- * 'buarFailedAlertStatus'
batchUndeleteAlertsResponse
    :: BatchUndeleteAlertsResponse
batchUndeleteAlertsResponse =
  BatchUndeleteAlertsResponse'
    {_buarSuccessAlertIds = Nothing, _buarFailedAlertStatus = Nothing}


-- | The successful list of alert IDs.
buarSuccessAlertIds :: Lens' BatchUndeleteAlertsResponse [Text]
buarSuccessAlertIds
  = lens _buarSuccessAlertIds
      (\ s a -> s{_buarSuccessAlertIds = a})
      . _Default
      . _Coerce

-- | The status details for each failed alert_id.
buarFailedAlertStatus :: Lens' BatchUndeleteAlertsResponse (Maybe BatchUndeleteAlertsResponseFailedAlertStatus)
buarFailedAlertStatus
  = lens _buarFailedAlertStatus
      (\ s a -> s{_buarFailedAlertStatus = a})

instance FromJSON BatchUndeleteAlertsResponse where
        parseJSON
          = withObject "BatchUndeleteAlertsResponse"
              (\ o ->
                 BatchUndeleteAlertsResponse' <$>
                   (o .:? "successAlertIds" .!= mempty) <*>
                     (o .:? "failedAlertStatus"))

instance ToJSON BatchUndeleteAlertsResponse where
        toJSON BatchUndeleteAlertsResponse'{..}
          = object
              (catMaybes
                 [("successAlertIds" .=) <$> _buarSuccessAlertIds,
                  ("failedAlertStatus" .=) <$> _buarFailedAlertStatus])

-- | Alerts from Google Workspace Security Center rules service configured by
-- an admin.
--
-- /See:/ 'activityRule' smart constructor.
data ActivityRule =
  ActivityRule'
    { _arSupersededAlerts :: !(Maybe [Text])
    , _arActionNames :: !(Maybe [Text])
    , _arSupersedingAlert :: !(Maybe Text)
    , _arTriggerSource :: !(Maybe Text)
    , _arWindowSize :: !(Maybe GDuration)
    , _arUpdateTime :: !(Maybe DateTime')
    , _arName :: !(Maybe Text)
    , _arThreshold :: !(Maybe Text)
    , _arQuery :: !(Maybe Text)
    , _arDisplayName :: !(Maybe Text)
    , _arDescription :: !(Maybe Text)
    , _arCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivityRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arSupersededAlerts'
--
-- * 'arActionNames'
--
-- * 'arSupersedingAlert'
--
-- * 'arTriggerSource'
--
-- * 'arWindowSize'
--
-- * 'arUpdateTime'
--
-- * 'arName'
--
-- * 'arThreshold'
--
-- * 'arQuery'
--
-- * 'arDisplayName'
--
-- * 'arDescription'
--
-- * 'arCreateTime'
activityRule
    :: ActivityRule
activityRule =
  ActivityRule'
    { _arSupersededAlerts = Nothing
    , _arActionNames = Nothing
    , _arSupersedingAlert = Nothing
    , _arTriggerSource = Nothing
    , _arWindowSize = Nothing
    , _arUpdateTime = Nothing
    , _arName = Nothing
    , _arThreshold = Nothing
    , _arQuery = Nothing
    , _arDisplayName = Nothing
    , _arDescription = Nothing
    , _arCreateTime = Nothing
    }


-- | List of alert IDs superseded by this alert. It is used to indicate that
-- this alert is essentially extension of superseded alerts and we found
-- the relationship after creating these alerts.
arSupersededAlerts :: Lens' ActivityRule [Text]
arSupersededAlerts
  = lens _arSupersededAlerts
      (\ s a -> s{_arSupersededAlerts = a})
      . _Default
      . _Coerce

-- | List of action names associated with the rule threshold.
arActionNames :: Lens' ActivityRule [Text]
arActionNames
  = lens _arActionNames
      (\ s a -> s{_arActionNames = a})
      . _Default
      . _Coerce

-- | Alert ID superseding this alert. It is used to indicate that superseding
-- alert is essentially extension of this alert and we found the
-- relationship after creating both alerts.
arSupersedingAlert :: Lens' ActivityRule (Maybe Text)
arSupersedingAlert
  = lens _arSupersedingAlert
      (\ s a -> s{_arSupersedingAlert = a})

-- | The trigger sources for this rule. * GMAIL_EVENTS * DEVICE_EVENTS *
-- USER_EVENTS
arTriggerSource :: Lens' ActivityRule (Maybe Text)
arTriggerSource
  = lens _arTriggerSource
      (\ s a -> s{_arTriggerSource = a})

-- | Rule window size. Possible values are 1 hour or 24 hours.
arWindowSize :: Lens' ActivityRule (Maybe Scientific)
arWindowSize
  = lens _arWindowSize (\ s a -> s{_arWindowSize = a})
      . mapping _GDuration

-- | The timestamp of the last update to the rule.
arUpdateTime :: Lens' ActivityRule (Maybe UTCTime)
arUpdateTime
  = lens _arUpdateTime (\ s a -> s{_arUpdateTime = a})
      . mapping _DateTime

-- | Rule name.
arName :: Lens' ActivityRule (Maybe Text)
arName = lens _arName (\ s a -> s{_arName = a})

-- | Alert threshold is for example “COUNT > 5”.
arThreshold :: Lens' ActivityRule (Maybe Text)
arThreshold
  = lens _arThreshold (\ s a -> s{_arThreshold = a})

-- | Query that is used to get the data from the associated source.
arQuery :: Lens' ActivityRule (Maybe Text)
arQuery = lens _arQuery (\ s a -> s{_arQuery = a})

-- | Alert display name.
arDisplayName :: Lens' ActivityRule (Maybe Text)
arDisplayName
  = lens _arDisplayName
      (\ s a -> s{_arDisplayName = a})

-- | Description of the rule.
arDescription :: Lens' ActivityRule (Maybe Text)
arDescription
  = lens _arDescription
      (\ s a -> s{_arDescription = a})

-- | Rule create timestamp.
arCreateTime :: Lens' ActivityRule (Maybe UTCTime)
arCreateTime
  = lens _arCreateTime (\ s a -> s{_arCreateTime = a})
      . mapping _DateTime

instance FromJSON ActivityRule where
        parseJSON
          = withObject "ActivityRule"
              (\ o ->
                 ActivityRule' <$>
                   (o .:? "supersededAlerts" .!= mempty) <*>
                     (o .:? "actionNames" .!= mempty)
                     <*> (o .:? "supersedingAlert")
                     <*> (o .:? "triggerSource")
                     <*> (o .:? "windowSize")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "threshold")
                     <*> (o .:? "query")
                     <*> (o .:? "displayName")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON ActivityRule where
        toJSON ActivityRule'{..}
          = object
              (catMaybes
                 [("supersededAlerts" .=) <$> _arSupersededAlerts,
                  ("actionNames" .=) <$> _arActionNames,
                  ("supersedingAlert" .=) <$> _arSupersedingAlert,
                  ("triggerSource" .=) <$> _arTriggerSource,
                  ("windowSize" .=) <$> _arWindowSize,
                  ("updateTime" .=) <$> _arUpdateTime,
                  ("name" .=) <$> _arName,
                  ("threshold" .=) <$> _arThreshold,
                  ("query" .=) <$> _arQuery,
                  ("displayName" .=) <$> _arDisplayName,
                  ("description" .=) <$> _arDescription,
                  ("createTime" .=) <$> _arCreateTime])

-- | Alerts for user account warning events.
--
-- /See:/ 'accountWarning' smart constructor.
data AccountWarning =
  AccountWarning'
    { _awEmail :: !(Maybe Text)
    , _awLoginDetails :: !(Maybe LoginDetails)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awEmail'
--
-- * 'awLoginDetails'
accountWarning
    :: AccountWarning
accountWarning = AccountWarning' {_awEmail = Nothing, _awLoginDetails = Nothing}


-- | Required. The email of the user that this event belongs to.
awEmail :: Lens' AccountWarning (Maybe Text)
awEmail = lens _awEmail (\ s a -> s{_awEmail = a})

-- | Optional. Details of the login action associated with the warning event.
-- This is only available for: * Suspicious login * Suspicious login (less
-- secure app) * Suspicious programmatic login * User suspended (suspicious
-- activity)
awLoginDetails :: Lens' AccountWarning (Maybe LoginDetails)
awLoginDetails
  = lens _awLoginDetails
      (\ s a -> s{_awLoginDetails = a})

instance FromJSON AccountWarning where
        parseJSON
          = withObject "AccountWarning"
              (\ o ->
                 AccountWarning' <$>
                   (o .:? "email") <*> (o .:? "loginDetails"))

instance ToJSON AccountWarning where
        toJSON AccountWarning'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _awEmail,
                  ("loginDetails" .=) <$> _awLoginDetails])

-- | Proto for all phishing alerts with common payload. Supported types are
-- any of the following: * User reported phishing * User reported spam
-- spike * Suspicious message reported * Phishing reclassification *
-- Malware reclassification * Gmail potential employee spoofing
--
-- /See:/ 'mailPhishing' smart constructor.
data MailPhishing =
  MailPhishing'
    { _mpSystemActionType :: !(Maybe MailPhishingSystemActionType)
    , _mpIsInternal :: !(Maybe Bool)
    , _mpDomainId :: !(Maybe DomainId)
    , _mpMessages :: !(Maybe [GmailMessageInfo])
    , _mpMaliciousEntity :: !(Maybe MaliciousEntity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MailPhishing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpSystemActionType'
--
-- * 'mpIsInternal'
--
-- * 'mpDomainId'
--
-- * 'mpMessages'
--
-- * 'mpMaliciousEntity'
mailPhishing
    :: MailPhishing
mailPhishing =
  MailPhishing'
    { _mpSystemActionType = Nothing
    , _mpIsInternal = Nothing
    , _mpDomainId = Nothing
    , _mpMessages = Nothing
    , _mpMaliciousEntity = Nothing
    }


-- | System actions on the messages.
mpSystemActionType :: Lens' MailPhishing (Maybe MailPhishingSystemActionType)
mpSystemActionType
  = lens _mpSystemActionType
      (\ s a -> s{_mpSystemActionType = a})

-- | If \`true\`, the email originated from within the organization.
mpIsInternal :: Lens' MailPhishing (Maybe Bool)
mpIsInternal
  = lens _mpIsInternal (\ s a -> s{_mpIsInternal = a})

-- | The domain ID.
mpDomainId :: Lens' MailPhishing (Maybe DomainId)
mpDomainId
  = lens _mpDomainId (\ s a -> s{_mpDomainId = a})

-- | The list of messages contained by this alert.
mpMessages :: Lens' MailPhishing [GmailMessageInfo]
mpMessages
  = lens _mpMessages (\ s a -> s{_mpMessages = a}) .
      _Default
      . _Coerce

-- | The entity whose actions triggered a Gmail phishing alert.
mpMaliciousEntity :: Lens' MailPhishing (Maybe MaliciousEntity)
mpMaliciousEntity
  = lens _mpMaliciousEntity
      (\ s a -> s{_mpMaliciousEntity = a})

instance FromJSON MailPhishing where
        parseJSON
          = withObject "MailPhishing"
              (\ o ->
                 MailPhishing' <$>
                   (o .:? "systemActionType") <*> (o .:? "isInternal")
                     <*> (o .:? "domainId")
                     <*> (o .:? "messages" .!= mempty)
                     <*> (o .:? "maliciousEntity"))

instance ToJSON MailPhishing where
        toJSON MailPhishing'{..}
          = object
              (catMaybes
                 [("systemActionType" .=) <$> _mpSystemActionType,
                  ("isInternal" .=) <$> _mpIsInternal,
                  ("domainId" .=) <$> _mpDomainId,
                  ("messages" .=) <$> _mpMessages,
                  ("maliciousEntity" .=) <$> _mpMaliciousEntity])

-- | An alert metadata.
--
-- /See:/ 'alertMetadata' smart constructor.
data AlertMetadata =
  AlertMetadata'
    { _amStatus :: !(Maybe Text)
    , _amEtag :: !(Maybe Text)
    , _amSeverity :: !(Maybe Text)
    , _amAlertId :: !(Maybe Text)
    , _amAssignee :: !(Maybe Text)
    , _amCustomerId :: !(Maybe Text)
    , _amUpdateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AlertMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amStatus'
--
-- * 'amEtag'
--
-- * 'amSeverity'
--
-- * 'amAlertId'
--
-- * 'amAssignee'
--
-- * 'amCustomerId'
--
-- * 'amUpdateTime'
alertMetadata
    :: AlertMetadata
alertMetadata =
  AlertMetadata'
    { _amStatus = Nothing
    , _amEtag = Nothing
    , _amSeverity = Nothing
    , _amAlertId = Nothing
    , _amAssignee = Nothing
    , _amCustomerId = Nothing
    , _amUpdateTime = Nothing
    }


-- | The current status of the alert. The supported values are the following:
-- * NOT_STARTED * IN_PROGRESS * CLOSED
amStatus :: Lens' AlertMetadata (Maybe Text)
amStatus = lens _amStatus (\ s a -> s{_amStatus = a})

-- | Optional. \`etag\` is used for optimistic concurrency control as a way
-- to help prevent simultaneous updates of an alert metadata from
-- overwriting each other. It is strongly suggested that systems make use
-- of the \`etag\` in the read-modify-write cycle to perform metatdata
-- updates in order to avoid race conditions: An \`etag\` is returned in
-- the response which contains alert metadata, and systems are expected to
-- put that etag in the request to update alert metadata to ensure that
-- their change will be applied to the same version of the alert metadata.
-- If no \`etag\` is provided in the call to update alert metadata, then
-- the existing alert metadata is overwritten blindly.
amEtag :: Lens' AlertMetadata (Maybe Text)
amEtag = lens _amEtag (\ s a -> s{_amEtag = a})

-- | The severity value of the alert. Alert Center will set this field at
-- alert creation time, default\'s to an empty string when it could not be
-- determined. The supported values for update actions on this field are
-- the following: * HIGH * MEDIUM * LOW
amSeverity :: Lens' AlertMetadata (Maybe Text)
amSeverity
  = lens _amSeverity (\ s a -> s{_amSeverity = a})

-- | Output only. The alert identifier.
amAlertId :: Lens' AlertMetadata (Maybe Text)
amAlertId
  = lens _amAlertId (\ s a -> s{_amAlertId = a})

-- | The email address of the user assigned to the alert.
amAssignee :: Lens' AlertMetadata (Maybe Text)
amAssignee
  = lens _amAssignee (\ s a -> s{_amAssignee = a})

-- | Output only. The unique identifier of the Google account of the
-- customer.
amCustomerId :: Lens' AlertMetadata (Maybe Text)
amCustomerId
  = lens _amCustomerId (\ s a -> s{_amCustomerId = a})

-- | Output only. The time this metadata was last updated.
amUpdateTime :: Lens' AlertMetadata (Maybe UTCTime)
amUpdateTime
  = lens _amUpdateTime (\ s a -> s{_amUpdateTime = a})
      . mapping _DateTime

instance FromJSON AlertMetadata where
        parseJSON
          = withObject "AlertMetadata"
              (\ o ->
                 AlertMetadata' <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "severity")
                     <*> (o .:? "alertId")
                     <*> (o .:? "assignee")
                     <*> (o .:? "customerId")
                     <*> (o .:? "updateTime"))

instance ToJSON AlertMetadata where
        toJSON AlertMetadata'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _amStatus,
                  ("etag" .=) <$> _amEtag,
                  ("severity" .=) <$> _amSeverity,
                  ("alertId" .=) <$> _amAlertId,
                  ("assignee" .=) <$> _amAssignee,
                  ("customerId" .=) <$> _amCustomerId,
                  ("updateTime" .=) <$> _amUpdateTime])

-- | Details of a message in phishing spike alert.
--
-- /See:/ 'gmailMessageInfo' smart constructor.
data GmailMessageInfo =
  GmailMessageInfo'
    { _gmiMD5HashSubject :: !(Maybe Text)
    , _gmiSubjectText :: !(Maybe Text)
    , _gmiDate :: !(Maybe DateTime')
    , _gmiMD5HashMessageBody :: !(Maybe Text)
    , _gmiAttachmentsSha256Hash :: !(Maybe [Text])
    , _gmiRecipient :: !(Maybe Text)
    , _gmiMessageBodySnippet :: !(Maybe Text)
    , _gmiMessageId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GmailMessageInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmiMD5HashSubject'
--
-- * 'gmiSubjectText'
--
-- * 'gmiDate'
--
-- * 'gmiMD5HashMessageBody'
--
-- * 'gmiAttachmentsSha256Hash'
--
-- * 'gmiRecipient'
--
-- * 'gmiMessageBodySnippet'
--
-- * 'gmiMessageId'
gmailMessageInfo
    :: GmailMessageInfo
gmailMessageInfo =
  GmailMessageInfo'
    { _gmiMD5HashSubject = Nothing
    , _gmiSubjectText = Nothing
    , _gmiDate = Nothing
    , _gmiMD5HashMessageBody = Nothing
    , _gmiAttachmentsSha256Hash = Nothing
    , _gmiRecipient = Nothing
    , _gmiMessageBodySnippet = Nothing
    , _gmiMessageId = Nothing
    }


-- | The MD5 Hash of email\'s subject (only available for reported emails).
gmiMD5HashSubject :: Lens' GmailMessageInfo (Maybe Text)
gmiMD5HashSubject
  = lens _gmiMD5HashSubject
      (\ s a -> s{_gmiMD5HashSubject = a})

-- | The email subject text (only available for reported emails).
gmiSubjectText :: Lens' GmailMessageInfo (Maybe Text)
gmiSubjectText
  = lens _gmiSubjectText
      (\ s a -> s{_gmiSubjectText = a})

-- | The date of the event related to this email.
gmiDate :: Lens' GmailMessageInfo (Maybe UTCTime)
gmiDate
  = lens _gmiDate (\ s a -> s{_gmiDate = a}) .
      mapping _DateTime

-- | The hash of the message body text.
gmiMD5HashMessageBody :: Lens' GmailMessageInfo (Maybe Text)
gmiMD5HashMessageBody
  = lens _gmiMD5HashMessageBody
      (\ s a -> s{_gmiMD5HashMessageBody = a})

-- | The \`SHA256\` hash of email\'s attachment and all MIME parts.
gmiAttachmentsSha256Hash :: Lens' GmailMessageInfo [Text]
gmiAttachmentsSha256Hash
  = lens _gmiAttachmentsSha256Hash
      (\ s a -> s{_gmiAttachmentsSha256Hash = a})
      . _Default
      . _Coerce

-- | The recipient of this email.
gmiRecipient :: Lens' GmailMessageInfo (Maybe Text)
gmiRecipient
  = lens _gmiRecipient (\ s a -> s{_gmiRecipient = a})

-- | The snippet of the message body text (only available for reported
-- emails).
gmiMessageBodySnippet :: Lens' GmailMessageInfo (Maybe Text)
gmiMessageBodySnippet
  = lens _gmiMessageBodySnippet
      (\ s a -> s{_gmiMessageBodySnippet = a})

-- | The message ID.
gmiMessageId :: Lens' GmailMessageInfo (Maybe Text)
gmiMessageId
  = lens _gmiMessageId (\ s a -> s{_gmiMessageId = a})

instance FromJSON GmailMessageInfo where
        parseJSON
          = withObject "GmailMessageInfo"
              (\ o ->
                 GmailMessageInfo' <$>
                   (o .:? "md5HashSubject") <*> (o .:? "subjectText")
                     <*> (o .:? "date")
                     <*> (o .:? "md5HashMessageBody")
                     <*> (o .:? "attachmentsSha256Hash" .!= mempty)
                     <*> (o .:? "recipient")
                     <*> (o .:? "messageBodySnippet")
                     <*> (o .:? "messageId"))

instance ToJSON GmailMessageInfo where
        toJSON GmailMessageInfo'{..}
          = object
              (catMaybes
                 [("md5HashSubject" .=) <$> _gmiMD5HashSubject,
                  ("subjectText" .=) <$> _gmiSubjectText,
                  ("date" .=) <$> _gmiDate,
                  ("md5HashMessageBody" .=) <$> _gmiMD5HashMessageBody,
                  ("attachmentsSha256Hash" .=) <$>
                    _gmiAttachmentsSha256Hash,
                  ("recipient" .=) <$> _gmiRecipient,
                  ("messageBodySnippet" .=) <$> _gmiMessageBodySnippet,
                  ("messageId" .=) <$> _gmiMessageId])

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

-- | Optional. The data associated with this alert, for example
-- google.apps.alertcenter.type.DeviceCompromised.
--
-- /See:/ 'alertData' smart constructor.
newtype AlertData =
  AlertData'
    { _adAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AlertData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adAddtional'
alertData
    :: HashMap Text JSONValue -- ^ 'adAddtional'
    -> AlertData
alertData pAdAddtional_ = AlertData' {_adAddtional = _Coerce # pAdAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
adAddtional :: Lens' AlertData (HashMap Text JSONValue)
adAddtional
  = lens _adAddtional (\ s a -> s{_adAddtional = a}) .
      _Coerce

instance FromJSON AlertData where
        parseJSON
          = withObject "AlertData"
              (\ o -> AlertData' <$> (parseJSONObject o))

instance ToJSON AlertData where
        toJSON = toJSON . _adAddtional

-- | Alert for a spike in user reported phishing. *Warning*: This type has
-- been deprecated. Use
-- [MailPhishing](\/admin-sdk\/alertcenter\/reference\/rest\/v1beta1\/MailPhishing)
-- instead.
--
-- /See:/ 'phishingSpike' smart constructor.
data PhishingSpike =
  PhishingSpike'
    { _psIsInternal :: !(Maybe Bool)
    , _psDomainId :: !(Maybe DomainId)
    , _psMessages :: !(Maybe [GmailMessageInfo])
    , _psMaliciousEntity :: !(Maybe MaliciousEntity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PhishingSpike' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psIsInternal'
--
-- * 'psDomainId'
--
-- * 'psMessages'
--
-- * 'psMaliciousEntity'
phishingSpike
    :: PhishingSpike
phishingSpike =
  PhishingSpike'
    { _psIsInternal = Nothing
    , _psDomainId = Nothing
    , _psMessages = Nothing
    , _psMaliciousEntity = Nothing
    }


-- | If \`true\`, the email originated from within the organization.
psIsInternal :: Lens' PhishingSpike (Maybe Bool)
psIsInternal
  = lens _psIsInternal (\ s a -> s{_psIsInternal = a})

-- | The domain ID.
psDomainId :: Lens' PhishingSpike (Maybe DomainId)
psDomainId
  = lens _psDomainId (\ s a -> s{_psDomainId = a})

-- | The list of messages contained by this alert.
psMessages :: Lens' PhishingSpike [GmailMessageInfo]
psMessages
  = lens _psMessages (\ s a -> s{_psMessages = a}) .
      _Default
      . _Coerce

-- | The entity whose actions triggered a Gmail phishing alert.
psMaliciousEntity :: Lens' PhishingSpike (Maybe MaliciousEntity)
psMaliciousEntity
  = lens _psMaliciousEntity
      (\ s a -> s{_psMaliciousEntity = a})

instance FromJSON PhishingSpike where
        parseJSON
          = withObject "PhishingSpike"
              (\ o ->
                 PhishingSpike' <$>
                   (o .:? "isInternal") <*> (o .:? "domainId") <*>
                     (o .:? "messages" .!= mempty)
                     <*> (o .:? "maliciousEntity"))

instance ToJSON PhishingSpike where
        toJSON PhishingSpike'{..}
          = object
              (catMaybes
                 [("isInternal" .=) <$> _psIsInternal,
                  ("domainId" .=) <$> _psDomainId,
                  ("messages" .=) <$> _psMessages,
                  ("maliciousEntity" .=) <$> _psMaliciousEntity])

-- | A representation of a CSV file attachment, as a list of column headers
-- and a list of data rows.
--
-- /See:/ 'csv' smart constructor.
data CSV =
  CSV'
    { _cDataRows :: !(Maybe [CSVRow])
    , _cHeaders :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CSV' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cDataRows'
--
-- * 'cHeaders'
csv
    :: CSV
csv = CSV' {_cDataRows = Nothing, _cHeaders = Nothing}


-- | The list of data rows in a CSV file, as string arrays rather than as a
-- single comma-separated string.
cDataRows :: Lens' CSV [CSVRow]
cDataRows
  = lens _cDataRows (\ s a -> s{_cDataRows = a}) .
      _Default
      . _Coerce

-- | The list of headers for data columns in a CSV file.
cHeaders :: Lens' CSV [Text]
cHeaders
  = lens _cHeaders (\ s a -> s{_cHeaders = a}) .
      _Default
      . _Coerce

instance FromJSON CSV where
        parseJSON
          = withObject "CSV"
              (\ o ->
                 CSV' <$>
                   (o .:? "dataRows" .!= mempty) <*>
                     (o .:? "headers" .!= mempty))

instance ToJSON CSV where
        toJSON CSV'{..}
          = object
              (catMaybes
                 [("dataRows" .=) <$> _cDataRows,
                  ("headers" .=) <$> _cHeaders])

-- | An alert affecting a customer.
--
-- /See:/ 'alert' smart constructor.
data Alert =
  Alert'
    { _aEtag :: !(Maybe Text)
    , _aStartTime :: !(Maybe DateTime')
    , _aData :: !(Maybe AlertData)
    , _aAlertId :: !(Maybe Text)
    , _aSecurityInvestigationToolLink :: !(Maybe Text)
    , _aCustomerId :: !(Maybe Text)
    , _aUpdateTime :: !(Maybe DateTime')
    , _aEndTime :: !(Maybe DateTime')
    , _aMetadata :: !(Maybe AlertMetadata)
    , _aSource :: !(Maybe Text)
    , _aDeleted :: !(Maybe Bool)
    , _aType :: !(Maybe Text)
    , _aCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Alert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEtag'
--
-- * 'aStartTime'
--
-- * 'aData'
--
-- * 'aAlertId'
--
-- * 'aSecurityInvestigationToolLink'
--
-- * 'aCustomerId'
--
-- * 'aUpdateTime'
--
-- * 'aEndTime'
--
-- * 'aMetadata'
--
-- * 'aSource'
--
-- * 'aDeleted'
--
-- * 'aType'
--
-- * 'aCreateTime'
alert
    :: Alert
alert =
  Alert'
    { _aEtag = Nothing
    , _aStartTime = Nothing
    , _aData = Nothing
    , _aAlertId = Nothing
    , _aSecurityInvestigationToolLink = Nothing
    , _aCustomerId = Nothing
    , _aUpdateTime = Nothing
    , _aEndTime = Nothing
    , _aMetadata = Nothing
    , _aSource = Nothing
    , _aDeleted = Nothing
    , _aType = Nothing
    , _aCreateTime = Nothing
    }


-- | Optional. \`etag\` is used for optimistic concurrency control as a way
-- to help prevent simultaneous updates of an alert from overwriting each
-- other. It is strongly suggested that systems make use of the \`etag\` in
-- the read-modify-write cycle to perform alert updates in order to avoid
-- race conditions: An \`etag\` is returned in the response which contains
-- alerts, and systems are expected to put that etag in the request to
-- update alert to ensure that their change will be applied to the same
-- version of the alert. If no \`etag\` is provided in the call to update
-- alert, then the existing alert is overwritten blindly.
aEtag :: Lens' Alert (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | Required. The time the event that caused this alert was started or
-- detected.
aStartTime :: Lens' Alert (Maybe UTCTime)
aStartTime
  = lens _aStartTime (\ s a -> s{_aStartTime = a}) .
      mapping _DateTime

-- | Optional. The data associated with this alert, for example
-- google.apps.alertcenter.type.DeviceCompromised.
aData :: Lens' Alert (Maybe AlertData)
aData = lens _aData (\ s a -> s{_aData = a})

-- | Output only. The unique identifier for the alert.
aAlertId :: Lens' Alert (Maybe Text)
aAlertId = lens _aAlertId (\ s a -> s{_aAlertId = a})

-- | Output only. An optional [Security Investigation
-- Tool](https:\/\/support.google.com\/a\/answer\/7575955) query for this
-- alert.
aSecurityInvestigationToolLink :: Lens' Alert (Maybe Text)
aSecurityInvestigationToolLink
  = lens _aSecurityInvestigationToolLink
      (\ s a -> s{_aSecurityInvestigationToolLink = a})

-- | Output only. The unique identifier of the Google account of the
-- customer.
aCustomerId :: Lens' Alert (Maybe Text)
aCustomerId
  = lens _aCustomerId (\ s a -> s{_aCustomerId = a})

-- | Output only. The time this alert was last updated.
aUpdateTime :: Lens' Alert (Maybe UTCTime)
aUpdateTime
  = lens _aUpdateTime (\ s a -> s{_aUpdateTime = a}) .
      mapping _DateTime

-- | Optional. The time the event that caused this alert ceased being active.
-- If provided, the end time must not be earlier than the start time. If
-- not provided, it indicates an ongoing alert.
aEndTime :: Lens' Alert (Maybe UTCTime)
aEndTime
  = lens _aEndTime (\ s a -> s{_aEndTime = a}) .
      mapping _DateTime

-- | Output only. The metadata associated with this alert.
aMetadata :: Lens' Alert (Maybe AlertMetadata)
aMetadata
  = lens _aMetadata (\ s a -> s{_aMetadata = a})

-- | Required. A unique identifier for the system that reported the alert.
-- This is output only after alert is created. Supported sources are any of
-- the following: * Google Operations * Mobile device management * Gmail
-- phishing * Data Loss Prevention * Domain wide takeout * State sponsored
-- attack * Google identity
aSource :: Lens' Alert (Maybe Text)
aSource = lens _aSource (\ s a -> s{_aSource = a})

-- | Output only. \`True\` if this alert is marked for deletion.
aDeleted :: Lens' Alert (Maybe Bool)
aDeleted = lens _aDeleted (\ s a -> s{_aDeleted = a})

-- | Required. The type of the alert. This is output only after alert is
-- created. For a list of available alert types see [Google Workspace Alert
-- types](https:\/\/developers.google.com\/admin-sdk\/alertcenter\/reference\/alert-types).
aType :: Lens' Alert (Maybe Text)
aType = lens _aType (\ s a -> s{_aType = a})

-- | Output only. The time this alert was created.
aCreateTime :: Lens' Alert (Maybe UTCTime)
aCreateTime
  = lens _aCreateTime (\ s a -> s{_aCreateTime = a}) .
      mapping _DateTime

instance FromJSON Alert where
        parseJSON
          = withObject "Alert"
              (\ o ->
                 Alert' <$>
                   (o .:? "etag") <*> (o .:? "startTime") <*>
                     (o .:? "data")
                     <*> (o .:? "alertId")
                     <*> (o .:? "securityInvestigationToolLink")
                     <*> (o .:? "customerId")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "endTime")
                     <*> (o .:? "metadata")
                     <*> (o .:? "source")
                     <*> (o .:? "deleted")
                     <*> (o .:? "type")
                     <*> (o .:? "createTime"))

instance ToJSON Alert where
        toJSON Alert'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aEtag,
                  ("startTime" .=) <$> _aStartTime,
                  ("data" .=) <$> _aData, ("alertId" .=) <$> _aAlertId,
                  ("securityInvestigationToolLink" .=) <$>
                    _aSecurityInvestigationToolLink,
                  ("customerId" .=) <$> _aCustomerId,
                  ("updateTime" .=) <$> _aUpdateTime,
                  ("endTime" .=) <$> _aEndTime,
                  ("metadata" .=) <$> _aMetadata,
                  ("source" .=) <$> _aSource,
                  ("deleted" .=) <$> _aDeleted, ("type" .=) <$> _aType,
                  ("createTime" .=) <$> _aCreateTime])

-- | Attachment with application-specific information about an alert.
--
-- /See:/ 'attachment' smart constructor.
newtype Attachment =
  Attachment'
    { _aCSV :: Maybe CSV
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Attachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aCSV'
attachment
    :: Attachment
attachment = Attachment' {_aCSV = Nothing}


-- | A CSV file attachment.
aCSV :: Lens' Attachment (Maybe CSV)
aCSV = lens _aCSV (\ s a -> s{_aCSV = a})

instance FromJSON Attachment where
        parseJSON
          = withObject "Attachment"
              (\ o -> Attachment' <$> (o .:? "csv"))

instance ToJSON Attachment where
        toJSON Attachment'{..}
          = object (catMaybes [("csv" .=) <$> _aCSV])

-- | A request to perform batch delete on alerts.
--
-- /See:/ 'batchDeleteAlertsRequest' smart constructor.
data BatchDeleteAlertsRequest =
  BatchDeleteAlertsRequest'
    { _bdarAlertId :: !(Maybe [Text])
    , _bdarCustomerId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDeleteAlertsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdarAlertId'
--
-- * 'bdarCustomerId'
batchDeleteAlertsRequest
    :: BatchDeleteAlertsRequest
batchDeleteAlertsRequest =
  BatchDeleteAlertsRequest' {_bdarAlertId = Nothing, _bdarCustomerId = Nothing}


-- | Required. list of alert IDs.
bdarAlertId :: Lens' BatchDeleteAlertsRequest [Text]
bdarAlertId
  = lens _bdarAlertId (\ s a -> s{_bdarAlertId = a}) .
      _Default
      . _Coerce

-- | Optional. The unique identifier of the Google Workspace organization
-- account of the customer the alerts are associated with.
bdarCustomerId :: Lens' BatchDeleteAlertsRequest (Maybe Text)
bdarCustomerId
  = lens _bdarCustomerId
      (\ s a -> s{_bdarCustomerId = a})

instance FromJSON BatchDeleteAlertsRequest where
        parseJSON
          = withObject "BatchDeleteAlertsRequest"
              (\ o ->
                 BatchDeleteAlertsRequest' <$>
                   (o .:? "alertId" .!= mempty) <*>
                     (o .:? "customerId"))

instance ToJSON BatchDeleteAlertsRequest where
        toJSON BatchDeleteAlertsRequest'{..}
          = object
              (catMaybes
                 [("alertId" .=) <$> _bdarAlertId,
                  ("customerId" .=) <$> _bdarCustomerId])

-- | A user.
--
-- /See:/ 'user' smart constructor.
data User =
  User'
    { _uEmailAddress :: !(Maybe Text)
    , _uDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uEmailAddress'
--
-- * 'uDisplayName'
user
    :: User
user = User' {_uEmailAddress = Nothing, _uDisplayName = Nothing}


-- | Email address of the user.
uEmailAddress :: Lens' User (Maybe Text)
uEmailAddress
  = lens _uEmailAddress
      (\ s a -> s{_uEmailAddress = a})

-- | Display name of the user.
uDisplayName :: Lens' User (Maybe Text)
uDisplayName
  = lens _uDisplayName (\ s a -> s{_uDisplayName = a})

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ o ->
                 User' <$>
                   (o .:? "emailAddress") <*> (o .:? "displayName"))

instance ToJSON User where
        toJSON User'{..}
          = object
              (catMaybes
                 [("emailAddress" .=) <$> _uEmailAddress,
                  ("displayName" .=) <$> _uDisplayName])

-- | Alerts from UserChanges bucket Rules for predefined rules which contain
-- the below rules. Suspended user made active New user Added User
-- suspended (by admin) User granted admin privileges User admin privileges
-- revoked User deleted Users password changed
--
-- /See:/ 'userChanges' smart constructor.
newtype UserChanges =
  UserChanges'
    { _ucName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucName'
userChanges
    :: UserChanges
userChanges = UserChanges' {_ucName = Nothing}


-- | Rule name
ucName :: Lens' UserChanges (Maybe Text)
ucName = lens _ucName (\ s a -> s{_ucName = a})

instance FromJSON UserChanges where
        parseJSON
          = withObject "UserChanges"
              (\ o -> UserChanges' <$> (o .:? "name"))

instance ToJSON UserChanges where
        toJSON UserChanges'{..}
          = object (catMaybes [("name" .=) <$> _ucName])

-- | Proto that contains resource information.
--
-- /See:/ 'resourceInfo' smart constructor.
data ResourceInfo =
  ResourceInfo'
    { _riDocumentId :: !(Maybe Text)
    , _riResourceTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riDocumentId'
--
-- * 'riResourceTitle'
resourceInfo
    :: ResourceInfo
resourceInfo =
  ResourceInfo' {_riDocumentId = Nothing, _riResourceTitle = Nothing}


-- | Drive file ID.
riDocumentId :: Lens' ResourceInfo (Maybe Text)
riDocumentId
  = lens _riDocumentId (\ s a -> s{_riDocumentId = a})

-- | Title of the resource, for example email subject, or document title.
riResourceTitle :: Lens' ResourceInfo (Maybe Text)
riResourceTitle
  = lens _riResourceTitle
      (\ s a -> s{_riResourceTitle = a})

instance FromJSON ResourceInfo where
        parseJSON
          = withObject "ResourceInfo"
              (\ o ->
                 ResourceInfo' <$>
                   (o .:? "documentId") <*> (o .:? "resourceTitle"))

instance ToJSON ResourceInfo where
        toJSON ResourceInfo'{..}
          = object
              (catMaybes
                 [("documentId" .=) <$> _riDocumentId,
                  ("resourceTitle" .=) <$> _riResourceTitle])

-- | Requests for one application that needs default SQL setup.
--
-- /See:/ 'requestInfo' smart constructor.
data RequestInfo =
  RequestInfo'
    { _riNumberOfRequests :: !(Maybe (Textual Int64))
    , _riAppDeveloperEmail :: !(Maybe [Text])
    , _riAppKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RequestInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riNumberOfRequests'
--
-- * 'riAppDeveloperEmail'
--
-- * 'riAppKey'
requestInfo
    :: RequestInfo
requestInfo =
  RequestInfo'
    { _riNumberOfRequests = Nothing
    , _riAppDeveloperEmail = Nothing
    , _riAppKey = Nothing
    }


-- | Required. Number of requests sent for this application to set up default
-- SQL instance.
riNumberOfRequests :: Lens' RequestInfo (Maybe Int64)
riNumberOfRequests
  = lens _riNumberOfRequests
      (\ s a -> s{_riNumberOfRequests = a})
      . mapping _Coerce

-- | List of app developers who triggered notifications for above
-- application.
riAppDeveloperEmail :: Lens' RequestInfo [Text]
riAppDeveloperEmail
  = lens _riAppDeveloperEmail
      (\ s a -> s{_riAppDeveloperEmail = a})
      . _Default
      . _Coerce

-- | Required. The application that requires the SQL setup.
riAppKey :: Lens' RequestInfo (Maybe Text)
riAppKey = lens _riAppKey (\ s a -> s{_riAppKey = a})

instance FromJSON RequestInfo where
        parseJSON
          = withObject "RequestInfo"
              (\ o ->
                 RequestInfo' <$>
                   (o .:? "numberOfRequests") <*>
                     (o .:? "appDeveloperEmail" .!= mempty)
                     <*> (o .:? "appKey"))

instance ToJSON RequestInfo where
        toJSON RequestInfo'{..}
          = object
              (catMaybes
                 [("numberOfRequests" .=) <$> _riNumberOfRequests,
                  ("appDeveloperEmail" .=) <$> _riAppDeveloperEmail,
                  ("appKey" .=) <$> _riAppKey])

-- | An incident reported by Google Operations for a Google Workspace
-- application.
--
-- /See:/ 'googleOperations' smart constructor.
data GoogleOperations =
  GoogleOperations'
    { _goAttachmentData :: !(Maybe Attachment)
    , _goAffectedUserEmails :: !(Maybe [Text])
    , _goHeader :: !(Maybe Text)
    , _goTitle :: !(Maybe Text)
    , _goDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleOperations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goAttachmentData'
--
-- * 'goAffectedUserEmails'
--
-- * 'goHeader'
--
-- * 'goTitle'
--
-- * 'goDescription'
googleOperations
    :: GoogleOperations
googleOperations =
  GoogleOperations'
    { _goAttachmentData = Nothing
    , _goAffectedUserEmails = Nothing
    , _goHeader = Nothing
    , _goTitle = Nothing
    , _goDescription = Nothing
    }


-- | Optional. Application-specific data for an incident, provided when the
-- Google Workspace application which reported the incident cannot be
-- completely restored to a valid state.
goAttachmentData :: Lens' GoogleOperations (Maybe Attachment)
goAttachmentData
  = lens _goAttachmentData
      (\ s a -> s{_goAttachmentData = a})

-- | The list of emails which correspond to the users directly affected by
-- the incident.
goAffectedUserEmails :: Lens' GoogleOperations [Text]
goAffectedUserEmails
  = lens _goAffectedUserEmails
      (\ s a -> s{_goAffectedUserEmails = a})
      . _Default
      . _Coerce

-- | A header to display above the incident message. Typically used to attach
-- a localized notice on the timeline for followup comms translations.
goHeader :: Lens' GoogleOperations (Maybe Text)
goHeader = lens _goHeader (\ s a -> s{_goHeader = a})

-- | A one-line incident description.
goTitle :: Lens' GoogleOperations (Maybe Text)
goTitle = lens _goTitle (\ s a -> s{_goTitle = a})

-- | A detailed, freeform incident description.
goDescription :: Lens' GoogleOperations (Maybe Text)
goDescription
  = lens _goDescription
      (\ s a -> s{_goDescription = a})

instance FromJSON GoogleOperations where
        parseJSON
          = withObject "GoogleOperations"
              (\ o ->
                 GoogleOperations' <$>
                   (o .:? "attachmentData") <*>
                     (o .:? "affectedUserEmails" .!= mempty)
                     <*> (o .:? "header")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON GoogleOperations where
        toJSON GoogleOperations'{..}
          = object
              (catMaybes
                 [("attachmentData" .=) <$> _goAttachmentData,
                  ("affectedUserEmails" .=) <$> _goAffectedUserEmails,
                  ("header" .=) <$> _goHeader,
                  ("title" .=) <$> _goTitle,
                  ("description" .=) <$> _goDescription])

-- | A mobile suspicious activity alert. Derived from audit logs.
--
-- /See:/ 'suspiciousActivity' smart constructor.
data SuspiciousActivity =
  SuspiciousActivity'
    { _saEmail :: !(Maybe Text)
    , _saEvents :: !(Maybe [SuspiciousActivitySecurityDetail])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuspiciousActivity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saEmail'
--
-- * 'saEvents'
suspiciousActivity
    :: SuspiciousActivity
suspiciousActivity =
  SuspiciousActivity' {_saEmail = Nothing, _saEvents = Nothing}


-- | The email of the user this alert was created for.
saEmail :: Lens' SuspiciousActivity (Maybe Text)
saEmail = lens _saEmail (\ s a -> s{_saEmail = a})

-- | Required. The list of security events.
saEvents :: Lens' SuspiciousActivity [SuspiciousActivitySecurityDetail]
saEvents
  = lens _saEvents (\ s a -> s{_saEvents = a}) .
      _Default
      . _Coerce

instance FromJSON SuspiciousActivity where
        parseJSON
          = withObject "SuspiciousActivity"
              (\ o ->
                 SuspiciousActivity' <$>
                   (o .:? "email") <*> (o .:? "events" .!= mempty))

instance ToJSON SuspiciousActivity where
        toJSON SuspiciousActivity'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _saEmail,
                  ("events" .=) <$> _saEvents])

-- | The status details for each failed alert_id.
--
-- /See:/ 'batchDeleteAlertsResponseFailedAlertStatus' smart constructor.
newtype BatchDeleteAlertsResponseFailedAlertStatus =
  BatchDeleteAlertsResponseFailedAlertStatus'
    { _bdarfasAddtional :: HashMap Text Status
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDeleteAlertsResponseFailedAlertStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdarfasAddtional'
batchDeleteAlertsResponseFailedAlertStatus
    :: HashMap Text Status -- ^ 'bdarfasAddtional'
    -> BatchDeleteAlertsResponseFailedAlertStatus
batchDeleteAlertsResponseFailedAlertStatus pBdarfasAddtional_ =
  BatchDeleteAlertsResponseFailedAlertStatus'
    {_bdarfasAddtional = _Coerce # pBdarfasAddtional_}


bdarfasAddtional :: Lens' BatchDeleteAlertsResponseFailedAlertStatus (HashMap Text Status)
bdarfasAddtional
  = lens _bdarfasAddtional
      (\ s a -> s{_bdarfasAddtional = a})
      . _Coerce

instance FromJSON
           BatchDeleteAlertsResponseFailedAlertStatus
         where
        parseJSON
          = withObject
              "BatchDeleteAlertsResponseFailedAlertStatus"
              (\ o ->
                 BatchDeleteAlertsResponseFailedAlertStatus' <$>
                   (parseJSONObject o))

instance ToJSON
           BatchDeleteAlertsResponseFailedAlertStatus
         where
        toJSON = toJSON . _bdarfasAddtional

-- | Alerts from App Maker to notify admins to set up default SQL instance.
--
-- /See:/ 'appMakerSQLSetupNotification' smart constructor.
newtype AppMakerSQLSetupNotification =
  AppMakerSQLSetupNotification'
    { _amsqlsnRequestInfo :: Maybe [RequestInfo]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppMakerSQLSetupNotification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amsqlsnRequestInfo'
appMakerSQLSetupNotification
    :: AppMakerSQLSetupNotification
appMakerSQLSetupNotification =
  AppMakerSQLSetupNotification' {_amsqlsnRequestInfo = Nothing}


-- | List of applications with requests for default SQL set up.
amsqlsnRequestInfo :: Lens' AppMakerSQLSetupNotification [RequestInfo]
amsqlsnRequestInfo
  = lens _amsqlsnRequestInfo
      (\ s a -> s{_amsqlsnRequestInfo = a})
      . _Default
      . _Coerce

instance FromJSON AppMakerSQLSetupNotification where
        parseJSON
          = withObject "AppMakerSQLSetupNotification"
              (\ o ->
                 AppMakerSQLSetupNotification' <$>
                   (o .:? "requestInfo" .!= mempty))

instance ToJSON AppMakerSQLSetupNotification where
        toJSON AppMakerSQLSetupNotification'{..}
          = object
              (catMaybes
                 [("requestInfo" .=) <$> _amsqlsnRequestInfo])

-- | A takeout operation for the entire domain was initiated by an admin.
-- Derived from audit logs.
--
-- /See:/ 'domainWideTakeoutInitiated' smart constructor.
data DomainWideTakeoutInitiated =
  DomainWideTakeoutInitiated'
    { _dwtiEmail :: !(Maybe Text)
    , _dwtiTakeoutRequestId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainWideTakeoutInitiated' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwtiEmail'
--
-- * 'dwtiTakeoutRequestId'
domainWideTakeoutInitiated
    :: DomainWideTakeoutInitiated
domainWideTakeoutInitiated =
  DomainWideTakeoutInitiated'
    {_dwtiEmail = Nothing, _dwtiTakeoutRequestId = Nothing}


-- | The email of the admin who initiated the takeout.
dwtiEmail :: Lens' DomainWideTakeoutInitiated (Maybe Text)
dwtiEmail
  = lens _dwtiEmail (\ s a -> s{_dwtiEmail = a})

-- | The takeout request ID.
dwtiTakeoutRequestId :: Lens' DomainWideTakeoutInitiated (Maybe Text)
dwtiTakeoutRequestId
  = lens _dwtiTakeoutRequestId
      (\ s a -> s{_dwtiTakeoutRequestId = a})

instance FromJSON DomainWideTakeoutInitiated where
        parseJSON
          = withObject "DomainWideTakeoutInitiated"
              (\ o ->
                 DomainWideTakeoutInitiated' <$>
                   (o .:? "email") <*> (o .:? "takeoutRequestId"))

instance ToJSON DomainWideTakeoutInitiated where
        toJSON DomainWideTakeoutInitiated'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _dwtiEmail,
                  ("takeoutRequestId" .=) <$> _dwtiTakeoutRequestId])

-- | Proto that contains match information from the condition part of the
-- rule.
--
-- /See:/ 'matchInfo' smart constructor.
data MatchInfo =
  MatchInfo'
    { _miPredefinedDetector :: !(Maybe PredefinedDetectorInfo)
    , _miUserDefinedDetector :: !(Maybe UserDefinedDetectorInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MatchInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miPredefinedDetector'
--
-- * 'miUserDefinedDetector'
matchInfo
    :: MatchInfo
matchInfo =
  MatchInfo' {_miPredefinedDetector = Nothing, _miUserDefinedDetector = Nothing}


-- | For matched detector predefined by Google.
miPredefinedDetector :: Lens' MatchInfo (Maybe PredefinedDetectorInfo)
miPredefinedDetector
  = lens _miPredefinedDetector
      (\ s a -> s{_miPredefinedDetector = a})

-- | For matched detector defined by administrators.
miUserDefinedDetector :: Lens' MatchInfo (Maybe UserDefinedDetectorInfo)
miUserDefinedDetector
  = lens _miUserDefinedDetector
      (\ s a -> s{_miUserDefinedDetector = a})

instance FromJSON MatchInfo where
        parseJSON
          = withObject "MatchInfo"
              (\ o ->
                 MatchInfo' <$>
                   (o .:? "predefinedDetector") <*>
                     (o .:? "userDefinedDetector"))

instance ToJSON MatchInfo where
        toJSON MatchInfo'{..}
          = object
              (catMaybes
                 [("predefinedDetector" .=) <$> _miPredefinedDetector,
                  ("userDefinedDetector" .=) <$>
                    _miUserDefinedDetector])

-- | Domain ID of Gmail phishing alerts.
--
-- /See:/ 'domainId' smart constructor.
newtype DomainId =
  DomainId'
    { _diCustomerPrimaryDomain :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diCustomerPrimaryDomain'
domainId
    :: DomainId
domainId = DomainId' {_diCustomerPrimaryDomain = Nothing}


-- | The primary domain for the customer.
diCustomerPrimaryDomain :: Lens' DomainId (Maybe Text)
diCustomerPrimaryDomain
  = lens _diCustomerPrimaryDomain
      (\ s a -> s{_diCustomerPrimaryDomain = a})

instance FromJSON DomainId where
        parseJSON
          = withObject "DomainId"
              (\ o ->
                 DomainId' <$> (o .:? "customerPrimaryDomain"))

instance ToJSON DomainId where
        toJSON DomainId'{..}
          = object
              (catMaybes
                 [("customerPrimaryDomain" .=) <$>
                    _diCustomerPrimaryDomain])

-- | Detailed information of a single MDM device compromised event.
--
-- /See:/ 'deviceCompromisedSecurityDetail' smart constructor.
data DeviceCompromisedSecurityDetail =
  DeviceCompromisedSecurityDetail'
    { _dcsdResourceId :: !(Maybe Text)
    , _dcsdDeviceCompromisedState :: !(Maybe Text)
    , _dcsdIosVendorId :: !(Maybe Text)
    , _dcsdDeviceModel :: !(Maybe Text)
    , _dcsdDeviceId :: !(Maybe Text)
    , _dcsdDeviceType :: !(Maybe Text)
    , _dcsdSerialNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeviceCompromisedSecurityDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsdResourceId'
--
-- * 'dcsdDeviceCompromisedState'
--
-- * 'dcsdIosVendorId'
--
-- * 'dcsdDeviceModel'
--
-- * 'dcsdDeviceId'
--
-- * 'dcsdDeviceType'
--
-- * 'dcsdSerialNumber'
deviceCompromisedSecurityDetail
    :: DeviceCompromisedSecurityDetail
deviceCompromisedSecurityDetail =
  DeviceCompromisedSecurityDetail'
    { _dcsdResourceId = Nothing
    , _dcsdDeviceCompromisedState = Nothing
    , _dcsdIosVendorId = Nothing
    , _dcsdDeviceModel = Nothing
    , _dcsdDeviceId = Nothing
    , _dcsdDeviceType = Nothing
    , _dcsdSerialNumber = Nothing
    }


-- | The device resource ID.
dcsdResourceId :: Lens' DeviceCompromisedSecurityDetail (Maybe Text)
dcsdResourceId
  = lens _dcsdResourceId
      (\ s a -> s{_dcsdResourceId = a})

-- | The device compromised state. Possible values are \"\`Compromised\`\" or
-- \"\`Not Compromised\`\".
dcsdDeviceCompromisedState :: Lens' DeviceCompromisedSecurityDetail (Maybe Text)
dcsdDeviceCompromisedState
  = lens _dcsdDeviceCompromisedState
      (\ s a -> s{_dcsdDeviceCompromisedState = a})

-- | Required for iOS, empty for others.
dcsdIosVendorId :: Lens' DeviceCompromisedSecurityDetail (Maybe Text)
dcsdIosVendorId
  = lens _dcsdIosVendorId
      (\ s a -> s{_dcsdIosVendorId = a})

-- | The model of the device.
dcsdDeviceModel :: Lens' DeviceCompromisedSecurityDetail (Maybe Text)
dcsdDeviceModel
  = lens _dcsdDeviceModel
      (\ s a -> s{_dcsdDeviceModel = a})

-- | Required. The device ID.
dcsdDeviceId :: Lens' DeviceCompromisedSecurityDetail (Maybe Text)
dcsdDeviceId
  = lens _dcsdDeviceId (\ s a -> s{_dcsdDeviceId = a})

-- | The type of the device.
dcsdDeviceType :: Lens' DeviceCompromisedSecurityDetail (Maybe Text)
dcsdDeviceType
  = lens _dcsdDeviceType
      (\ s a -> s{_dcsdDeviceType = a})

-- | The serial number of the device.
dcsdSerialNumber :: Lens' DeviceCompromisedSecurityDetail (Maybe Text)
dcsdSerialNumber
  = lens _dcsdSerialNumber
      (\ s a -> s{_dcsdSerialNumber = a})

instance FromJSON DeviceCompromisedSecurityDetail
         where
        parseJSON
          = withObject "DeviceCompromisedSecurityDetail"
              (\ o ->
                 DeviceCompromisedSecurityDetail' <$>
                   (o .:? "resourceId") <*>
                     (o .:? "deviceCompromisedState")
                     <*> (o .:? "iosVendorId")
                     <*> (o .:? "deviceModel")
                     <*> (o .:? "deviceId")
                     <*> (o .:? "deviceType")
                     <*> (o .:? "serialNumber"))

instance ToJSON DeviceCompromisedSecurityDetail where
        toJSON DeviceCompromisedSecurityDetail'{..}
          = object
              (catMaybes
                 [("resourceId" .=) <$> _dcsdResourceId,
                  ("deviceCompromisedState" .=) <$>
                    _dcsdDeviceCompromisedState,
                  ("iosVendorId" .=) <$> _dcsdIosVendorId,
                  ("deviceModel" .=) <$> _dcsdDeviceModel,
                  ("deviceId" .=) <$> _dcsdDeviceId,
                  ("deviceType" .=) <$> _dcsdDeviceType,
                  ("serialNumber" .=) <$> _dcsdSerialNumber])

-- | Proto that contains rule information.
--
-- /See:/ 'ruleInfo' smart constructor.
data RuleInfo =
  RuleInfo'
    { _riResourceName :: !(Maybe Text)
    , _riDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RuleInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riResourceName'
--
-- * 'riDisplayName'
ruleInfo
    :: RuleInfo
ruleInfo = RuleInfo' {_riResourceName = Nothing, _riDisplayName = Nothing}


-- | Resource name that uniquely identifies the rule.
riResourceName :: Lens' RuleInfo (Maybe Text)
riResourceName
  = lens _riResourceName
      (\ s a -> s{_riResourceName = a})

-- | User provided name of the rule.
riDisplayName :: Lens' RuleInfo (Maybe Text)
riDisplayName
  = lens _riDisplayName
      (\ s a -> s{_riDisplayName = a})

instance FromJSON RuleInfo where
        parseJSON
          = withObject "RuleInfo"
              (\ o ->
                 RuleInfo' <$>
                   (o .:? "resourceName") <*> (o .:? "displayName"))

instance ToJSON RuleInfo where
        toJSON RuleInfo'{..}
          = object
              (catMaybes
                 [("resourceName" .=) <$> _riResourceName,
                  ("displayName" .=) <$> _riDisplayName])

-- | Metadata related to the action.
--
-- /See:/ 'actionInfo' smart constructor.
data ActionInfo =
  ActionInfo'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActionInfo' with the minimum fields required to make a request.
--
actionInfo
    :: ActionInfo
actionInfo = ActionInfo'


instance FromJSON ActionInfo where
        parseJSON
          = withObject "ActionInfo" (\ o -> pure ActionInfo')

instance ToJSON ActionInfo where
        toJSON = const emptyObject

-- | Response to batch delete operation on alerts.
--
-- /See:/ 'batchDeleteAlertsResponse' smart constructor.
data BatchDeleteAlertsResponse =
  BatchDeleteAlertsResponse'
    { _bdarSuccessAlertIds :: !(Maybe [Text])
    , _bdarFailedAlertStatus :: !(Maybe BatchDeleteAlertsResponseFailedAlertStatus)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDeleteAlertsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdarSuccessAlertIds'
--
-- * 'bdarFailedAlertStatus'
batchDeleteAlertsResponse
    :: BatchDeleteAlertsResponse
batchDeleteAlertsResponse =
  BatchDeleteAlertsResponse'
    {_bdarSuccessAlertIds = Nothing, _bdarFailedAlertStatus = Nothing}


-- | The successful list of alert IDs.
bdarSuccessAlertIds :: Lens' BatchDeleteAlertsResponse [Text]
bdarSuccessAlertIds
  = lens _bdarSuccessAlertIds
      (\ s a -> s{_bdarSuccessAlertIds = a})
      . _Default
      . _Coerce

-- | The status details for each failed alert_id.
bdarFailedAlertStatus :: Lens' BatchDeleteAlertsResponse (Maybe BatchDeleteAlertsResponseFailedAlertStatus)
bdarFailedAlertStatus
  = lens _bdarFailedAlertStatus
      (\ s a -> s{_bdarFailedAlertStatus = a})

instance FromJSON BatchDeleteAlertsResponse where
        parseJSON
          = withObject "BatchDeleteAlertsResponse"
              (\ o ->
                 BatchDeleteAlertsResponse' <$>
                   (o .:? "successAlertIds" .!= mempty) <*>
                     (o .:? "failedAlertStatus"))

instance ToJSON BatchDeleteAlertsResponse where
        toJSON BatchDeleteAlertsResponse'{..}
          = object
              (catMaybes
                 [("successAlertIds" .=) <$> _bdarSuccessAlertIds,
                  ("failedAlertStatus" .=) <$> _bdarFailedAlertStatus])

-- | A reference to a Cloud Pubsub topic. To register for notifications, the
-- owner of the topic must grant
-- \`alerts-api-push-notifications\'system.gserviceaccount.com\` the
-- \`projects.topics.publish\` permission.
--
-- /See:/ 'cloudPubsubTopic' smart constructor.
data CloudPubsubTopic =
  CloudPubsubTopic'
    { _cptTopicName :: !(Maybe Text)
    , _cptPayloadFormat :: !(Maybe CloudPubsubTopicPayloadFormat)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudPubsubTopic' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cptTopicName'
--
-- * 'cptPayloadFormat'
cloudPubsubTopic
    :: CloudPubsubTopic
cloudPubsubTopic =
  CloudPubsubTopic' {_cptTopicName = Nothing, _cptPayloadFormat = Nothing}


-- | The \`name\` field of a Cloud Pubsub [Topic]
-- (https:\/\/cloud.google.com\/pubsub\/docs\/reference\/rest\/v1\/projects.topics#Topic).
cptTopicName :: Lens' CloudPubsubTopic (Maybe Text)
cptTopicName
  = lens _cptTopicName (\ s a -> s{_cptTopicName = a})

-- | Optional. The format of the payload that would be sent. If not specified
-- the format will be JSON.
cptPayloadFormat :: Lens' CloudPubsubTopic (Maybe CloudPubsubTopicPayloadFormat)
cptPayloadFormat
  = lens _cptPayloadFormat
      (\ s a -> s{_cptPayloadFormat = a})

instance FromJSON CloudPubsubTopic where
        parseJSON
          = withObject "CloudPubsubTopic"
              (\ o ->
                 CloudPubsubTopic' <$>
                   (o .:? "topicName") <*> (o .:? "payloadFormat"))

instance ToJSON CloudPubsubTopic where
        toJSON CloudPubsubTopic'{..}
          = object
              (catMaybes
                 [("topicName" .=) <$> _cptTopicName,
                  ("payloadFormat" .=) <$> _cptPayloadFormat])

-- | Response message for an alert feedback listing request.
--
-- /See:/ 'listAlertFeedbackResponse' smart constructor.
newtype ListAlertFeedbackResponse =
  ListAlertFeedbackResponse'
    { _lafrFeedback :: Maybe [AlertFeedback]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAlertFeedbackResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lafrFeedback'
listAlertFeedbackResponse
    :: ListAlertFeedbackResponse
listAlertFeedbackResponse = ListAlertFeedbackResponse' {_lafrFeedback = Nothing}


-- | The list of alert feedback. Feedback entries for each alert are ordered
-- by creation time descending.
lafrFeedback :: Lens' ListAlertFeedbackResponse [AlertFeedback]
lafrFeedback
  = lens _lafrFeedback (\ s a -> s{_lafrFeedback = a})
      . _Default
      . _Coerce

instance FromJSON ListAlertFeedbackResponse where
        parseJSON
          = withObject "ListAlertFeedbackResponse"
              (\ o ->
                 ListAlertFeedbackResponse' <$>
                   (o .:? "feedback" .!= mempty))

instance ToJSON ListAlertFeedbackResponse where
        toJSON ListAlertFeedbackResponse'{..}
          = object
              (catMaybes [("feedback" .=) <$> _lafrFeedback])

-- | Alerts from AppSettingsChanged bucket Rules configured by Admin which
-- contain the below rules. Calendar settings changed Drive settings
-- changed Email settings changed Mobile settings changed
--
-- /See:/ 'appSettingsChanged' smart constructor.
data AppSettingsChanged =
  AppSettingsChanged'
    { _ascAlertDetails :: !(Maybe Bytes)
    , _ascName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppSettingsChanged' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ascAlertDetails'
--
-- * 'ascName'
appSettingsChanged
    :: AppSettingsChanged
appSettingsChanged =
  AppSettingsChanged' {_ascAlertDetails = Nothing, _ascName = Nothing}


-- | Any other associated alert details, for example, AlertConfiguration.
ascAlertDetails :: Lens' AppSettingsChanged (Maybe ByteString)
ascAlertDetails
  = lens _ascAlertDetails
      (\ s a -> s{_ascAlertDetails = a})
      . mapping _Bytes

-- | Rule name
ascName :: Lens' AppSettingsChanged (Maybe Text)
ascName = lens _ascName (\ s a -> s{_ascName = a})

instance FromJSON AppSettingsChanged where
        parseJSON
          = withObject "AppSettingsChanged"
              (\ o ->
                 AppSettingsChanged' <$>
                   (o .:? "alertDetails") <*> (o .:? "name"))

instance ToJSON AppSettingsChanged where
        toJSON AppSettingsChanged'{..}
          = object
              (catMaybes
                 [("alertDetails" .=) <$> _ascAlertDetails,
                  ("name" .=) <$> _ascName])

-- | Common alert information about violated rules that are configured by
-- Google Workspace administrators.
--
-- /See:/ 'ruleViolationInfo' smart constructor.
data RuleViolationInfo =
  RuleViolationInfo'
    { _rviTriggeredActionTypes :: !(Maybe [RuleViolationInfoTriggeredActionTypesItem])
    , _rviSuppressedActionTypes :: !(Maybe [RuleViolationInfoSuppressedActionTypesItem])
    , _rviTriggeringUserEmail :: !(Maybe Text)
    , _rviResourceInfo :: !(Maybe ResourceInfo)
    , _rviMatchInfo :: !(Maybe [MatchInfo])
    , _rviDataSource :: !(Maybe RuleViolationInfoDataSource)
    , _rviTrigger :: !(Maybe RuleViolationInfoTrigger)
    , _rviRecipients :: !(Maybe [Text])
    , _rviRuleInfo :: !(Maybe RuleInfo)
    , _rviTriggeredActionInfo :: !(Maybe [ActionInfo])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RuleViolationInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rviTriggeredActionTypes'
--
-- * 'rviSuppressedActionTypes'
--
-- * 'rviTriggeringUserEmail'
--
-- * 'rviResourceInfo'
--
-- * 'rviMatchInfo'
--
-- * 'rviDataSource'
--
-- * 'rviTrigger'
--
-- * 'rviRecipients'
--
-- * 'rviRuleInfo'
--
-- * 'rviTriggeredActionInfo'
ruleViolationInfo
    :: RuleViolationInfo
ruleViolationInfo =
  RuleViolationInfo'
    { _rviTriggeredActionTypes = Nothing
    , _rviSuppressedActionTypes = Nothing
    , _rviTriggeringUserEmail = Nothing
    , _rviResourceInfo = Nothing
    , _rviMatchInfo = Nothing
    , _rviDataSource = Nothing
    , _rviTrigger = Nothing
    , _rviRecipients = Nothing
    , _rviRuleInfo = Nothing
    , _rviTriggeredActionInfo = Nothing
    }


-- | Actions applied as a consequence of the rule being triggered.
rviTriggeredActionTypes :: Lens' RuleViolationInfo [RuleViolationInfoTriggeredActionTypesItem]
rviTriggeredActionTypes
  = lens _rviTriggeredActionTypes
      (\ s a -> s{_rviTriggeredActionTypes = a})
      . _Default
      . _Coerce

-- | Actions suppressed due to other actions with higher priority.
rviSuppressedActionTypes :: Lens' RuleViolationInfo [RuleViolationInfoSuppressedActionTypesItem]
rviSuppressedActionTypes
  = lens _rviSuppressedActionTypes
      (\ s a -> s{_rviSuppressedActionTypes = a})
      . _Default
      . _Coerce

-- | Email of the user who caused the violation. Value could be empty if not
-- applicable, for example, a violation found by drive continuous scan.
rviTriggeringUserEmail :: Lens' RuleViolationInfo (Maybe Text)
rviTriggeringUserEmail
  = lens _rviTriggeringUserEmail
      (\ s a -> s{_rviTriggeringUserEmail = a})

-- | Details of the resource which violated the rule.
rviResourceInfo :: Lens' RuleViolationInfo (Maybe ResourceInfo)
rviResourceInfo
  = lens _rviResourceInfo
      (\ s a -> s{_rviResourceInfo = a})

-- | List of matches that were found in the resource content.
rviMatchInfo :: Lens' RuleViolationInfo [MatchInfo]
rviMatchInfo
  = lens _rviMatchInfo (\ s a -> s{_rviMatchInfo = a})
      . _Default
      . _Coerce

-- | Source of the data.
rviDataSource :: Lens' RuleViolationInfo (Maybe RuleViolationInfoDataSource)
rviDataSource
  = lens _rviDataSource
      (\ s a -> s{_rviDataSource = a})

-- | Trigger of the rule.
rviTrigger :: Lens' RuleViolationInfo (Maybe RuleViolationInfoTrigger)
rviTrigger
  = lens _rviTrigger (\ s a -> s{_rviTrigger = a})

-- | Resource recipients. For Drive, they are grantees that the Drive file
-- was shared with at the time of rule triggering. Valid values include
-- user emails, group emails, domains, or \'anyone\' if the file was
-- publicly accessible. If the file was private the recipients list will be
-- empty. For Gmail, they are emails of the users or groups that the Gmail
-- message was sent to.
rviRecipients :: Lens' RuleViolationInfo [Text]
rviRecipients
  = lens _rviRecipients
      (\ s a -> s{_rviRecipients = a})
      . _Default
      . _Coerce

-- | Details of the violated rule.
rviRuleInfo :: Lens' RuleViolationInfo (Maybe RuleInfo)
rviRuleInfo
  = lens _rviRuleInfo (\ s a -> s{_rviRuleInfo = a})

-- | Metadata related to the triggered actions.
rviTriggeredActionInfo :: Lens' RuleViolationInfo [ActionInfo]
rviTriggeredActionInfo
  = lens _rviTriggeredActionInfo
      (\ s a -> s{_rviTriggeredActionInfo = a})
      . _Default
      . _Coerce

instance FromJSON RuleViolationInfo where
        parseJSON
          = withObject "RuleViolationInfo"
              (\ o ->
                 RuleViolationInfo' <$>
                   (o .:? "triggeredActionTypes" .!= mempty) <*>
                     (o .:? "suppressedActionTypes" .!= mempty)
                     <*> (o .:? "triggeringUserEmail")
                     <*> (o .:? "resourceInfo")
                     <*> (o .:? "matchInfo" .!= mempty)
                     <*> (o .:? "dataSource")
                     <*> (o .:? "trigger")
                     <*> (o .:? "recipients" .!= mempty)
                     <*> (o .:? "ruleInfo")
                     <*> (o .:? "triggeredActionInfo" .!= mempty))

instance ToJSON RuleViolationInfo where
        toJSON RuleViolationInfo'{..}
          = object
              (catMaybes
                 [("triggeredActionTypes" .=) <$>
                    _rviTriggeredActionTypes,
                  ("suppressedActionTypes" .=) <$>
                    _rviSuppressedActionTypes,
                  ("triggeringUserEmail" .=) <$>
                    _rviTriggeringUserEmail,
                  ("resourceInfo" .=) <$> _rviResourceInfo,
                  ("matchInfo" .=) <$> _rviMatchInfo,
                  ("dataSource" .=) <$> _rviDataSource,
                  ("trigger" .=) <$> _rviTrigger,
                  ("recipients" .=) <$> _rviRecipients,
                  ("ruleInfo" .=) <$> _rviRuleInfo,
                  ("triggeredActionInfo" .=) <$>
                    _rviTriggeredActionInfo])

-- | The details of the login action.
--
-- /See:/ 'loginDetails' smart constructor.
data LoginDetails =
  LoginDetails'
    { _ldIPAddress :: !(Maybe Text)
    , _ldLoginTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LoginDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldIPAddress'
--
-- * 'ldLoginTime'
loginDetails
    :: LoginDetails
loginDetails = LoginDetails' {_ldIPAddress = Nothing, _ldLoginTime = Nothing}


-- | Optional. The human-readable IP address (for example, \`11.22.33.44\`)
-- that is associated with the warning event.
ldIPAddress :: Lens' LoginDetails (Maybe Text)
ldIPAddress
  = lens _ldIPAddress (\ s a -> s{_ldIPAddress = a})

-- | Optional. The successful login time that is associated with the warning
-- event. This isn\'t present for blocked login attempts.
ldLoginTime :: Lens' LoginDetails (Maybe UTCTime)
ldLoginTime
  = lens _ldLoginTime (\ s a -> s{_ldLoginTime = a}) .
      mapping _DateTime

instance FromJSON LoginDetails where
        parseJSON
          = withObject "LoginDetails"
              (\ o ->
                 LoginDetails' <$>
                   (o .:? "ipAddress") <*> (o .:? "loginTime"))

instance ToJSON LoginDetails where
        toJSON LoginDetails'{..}
          = object
              (catMaybes
                 [("ipAddress" .=) <$> _ldIPAddress,
                  ("loginTime" .=) <$> _ldLoginTime])

-- | Entity whose actions triggered a Gmail phishing alert.
--
-- /See:/ 'maliciousEntity' smart constructor.
data MaliciousEntity =
  MaliciousEntity'
    { _meFromHeader :: !(Maybe Text)
    , _meDisplayName :: !(Maybe Text)
    , _meEntity :: !(Maybe User)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MaliciousEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'meFromHeader'
--
-- * 'meDisplayName'
--
-- * 'meEntity'
maliciousEntity
    :: MaliciousEntity
maliciousEntity =
  MaliciousEntity'
    {_meFromHeader = Nothing, _meDisplayName = Nothing, _meEntity = Nothing}


-- | The sender email address.
meFromHeader :: Lens' MaliciousEntity (Maybe Text)
meFromHeader
  = lens _meFromHeader (\ s a -> s{_meFromHeader = a})

-- | The header from display name.
meDisplayName :: Lens' MaliciousEntity (Maybe Text)
meDisplayName
  = lens _meDisplayName
      (\ s a -> s{_meDisplayName = a})

-- | The actor who triggered a gmail phishing alert.
meEntity :: Lens' MaliciousEntity (Maybe User)
meEntity = lens _meEntity (\ s a -> s{_meEntity = a})

instance FromJSON MaliciousEntity where
        parseJSON
          = withObject "MaliciousEntity"
              (\ o ->
                 MaliciousEntity' <$>
                   (o .:? "fromHeader") <*> (o .:? "displayName") <*>
                     (o .:? "entity"))

instance ToJSON MaliciousEntity where
        toJSON MaliciousEntity'{..}
          = object
              (catMaybes
                 [("fromHeader" .=) <$> _meFromHeader,
                  ("displayName" .=) <$> _meDisplayName,
                  ("entity" .=) <$> _meEntity])

-- | The status details for each failed alert_id.
--
-- /See:/ 'batchUndeleteAlertsResponseFailedAlertStatus' smart constructor.
newtype BatchUndeleteAlertsResponseFailedAlertStatus =
  BatchUndeleteAlertsResponseFailedAlertStatus'
    { _buarfasAddtional :: HashMap Text Status
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUndeleteAlertsResponseFailedAlertStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buarfasAddtional'
batchUndeleteAlertsResponseFailedAlertStatus
    :: HashMap Text Status -- ^ 'buarfasAddtional'
    -> BatchUndeleteAlertsResponseFailedAlertStatus
batchUndeleteAlertsResponseFailedAlertStatus pBuarfasAddtional_ =
  BatchUndeleteAlertsResponseFailedAlertStatus'
    {_buarfasAddtional = _Coerce # pBuarfasAddtional_}


buarfasAddtional :: Lens' BatchUndeleteAlertsResponseFailedAlertStatus (HashMap Text Status)
buarfasAddtional
  = lens _buarfasAddtional
      (\ s a -> s{_buarfasAddtional = a})
      . _Coerce

instance FromJSON
           BatchUndeleteAlertsResponseFailedAlertStatus
         where
        parseJSON
          = withObject
              "BatchUndeleteAlertsResponseFailedAlertStatus"
              (\ o ->
                 BatchUndeleteAlertsResponseFailedAlertStatus' <$>
                   (parseJSONObject o))

instance ToJSON
           BatchUndeleteAlertsResponseFailedAlertStatus
         where
        toJSON = toJSON . _buarfasAddtional
