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

import           Network.Google.AlertCenter.Types.Sum
import           Network.Google.Prelude

-- | Response message for an alert listing request.
--
-- /See:/ 'listAlertsResponse' smart constructor.
data ListAlertsResponse = ListAlertsResponse'
    { _larNextPageToken :: !(Maybe Text)
    , _larAlerts        :: !(Maybe [Alert])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ListAlertsResponse'
    { _larNextPageToken = Nothing
    , _larAlerts = Nothing
    }

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

-- | A representation of a single data row in a CSV file.
--
-- /See:/ 'csvRow' smart constructor.
newtype CSVRow = CSVRow'
    { _crEntries :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CSVRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crEntries'
csvRow
    :: CSVRow
csvRow =
    CSVRow'
    { _crEntries = Nothing
    }

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
data AlertFeedback = AlertFeedback'
    { _afFeedbackId :: !(Maybe Text)
    , _afEmail      :: !(Maybe Text)
    , _afAlertId    :: !(Maybe Text)
    , _afCustomerId :: !(Maybe Text)
    , _afType       :: !(Maybe AlertFeedbackType)
    , _afCreateTime :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | A mobile device compromised alert. Derived from audit logs.
--
-- /See:/ 'deviceCompromised' smart constructor.
data DeviceCompromised = DeviceCompromised'
    { _dcEmail  :: !(Maybe Text)
    , _dcEvents :: !(Maybe [DeviceCompromisedSecurityDetail])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeviceCompromised' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcEmail'
--
-- * 'dcEvents'
deviceCompromised
    :: DeviceCompromised
deviceCompromised =
    DeviceCompromised'
    { _dcEmail = Nothing
    , _dcEvents = Nothing
    }

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
newtype StateSponsoredAttack = StateSponsoredAttack'
    { _ssaEmail :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StateSponsoredAttack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssaEmail'
stateSponsoredAttack
    :: StateSponsoredAttack
stateSponsoredAttack =
    StateSponsoredAttack'
    { _ssaEmail = Nothing
    }

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

-- | Alert for setting the domain or IP that malicious email comes from as
-- whitelisted domain or IP in Gmail advanced settings.
--
-- /See:/ 'badWhiteList' smart constructor.
data BadWhiteList = BadWhiteList'
    { _bwlSourceIP        :: !(Maybe Text)
    , _bwlDomainId        :: !(Maybe DomainId)
    , _bwlMessages        :: !(Maybe [GmailMessageInfo])
    , _bwlMaliciousEntity :: !(Maybe MaliciousEntity)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Detailed information of a single MDM suspicious activity event.
--
-- /See:/ 'suspiciousActivitySecurityDetail' smart constructor.
data SuspiciousActivitySecurityDetail = SuspiciousActivitySecurityDetail'
    { _sasdDeviceProperty :: !(Maybe Text)
    , _sasdResourceId     :: !(Maybe Text)
    , _sasdIosVendorId    :: !(Maybe Text)
    , _sasdOldValue       :: !(Maybe Text)
    , _sasdNewValue       :: !(Maybe Text)
    , _sasdDeviceModel    :: !(Maybe Text)
    , _sasdDeviceId       :: !(Maybe Text)
    , _sasdDeviceType     :: !(Maybe Text)
    , _sasdSerialNumber   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | A request to undelete a specific alert that was marked for deletion.
--
-- /See:/ 'undeleteAlertRequest' smart constructor.
newtype UndeleteAlertRequest = UndeleteAlertRequest'
    { _uarCustomerId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UndeleteAlertRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uarCustomerId'
undeleteAlertRequest
    :: UndeleteAlertRequest
undeleteAlertRequest =
    UndeleteAlertRequest'
    { _uarCustomerId = Nothing
    }

-- | Optional. The unique identifier of the G Suite organization account of
-- the customer the alert is associated with. Inferred from the caller
-- identity if not provided.
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
newtype Settings = Settings'
    { _sNotifications :: Maybe [Notification]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sNotifications'
settings
    :: Settings
settings =
    Settings'
    { _sNotifications = Nothing
    }

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

-- | Settings for callback notifications. For more details see [G Suite Alert
-- Notification](\/admin-sdk\/alertcenter\/guides\/notifications).
--
-- /See:/ 'notification' smart constructor.
newtype Notification = Notification'
    { _nCloudPubsubTopic :: Maybe CloudPubsubTopic
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Notification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nCloudPubsubTopic'
notification
    :: Notification
notification =
    Notification'
    { _nCloudPubsubTopic = Nothing
    }

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

-- | Alerts for user account warning events.
--
-- /See:/ 'accountWarning' smart constructor.
data AccountWarning = AccountWarning'
    { _awEmail        :: !(Maybe Text)
    , _awLoginDetails :: !(Maybe LoginDetails)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountWarning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awEmail'
--
-- * 'awLoginDetails'
accountWarning
    :: AccountWarning
accountWarning =
    AccountWarning'
    { _awEmail = Nothing
    , _awLoginDetails = Nothing
    }

-- | Required. The email of the user that this event belongs to.
awEmail :: Lens' AccountWarning (Maybe Text)
awEmail = lens _awEmail (\ s a -> s{_awEmail = a})

-- | Optional. Details of the login action associated with the warning event.
-- This is only available for: * Suspicious login * Suspicious login (less
-- secure app) * User suspended (suspicious activity)
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
-- Malware reclassification
--
-- /See:/ 'mailPhishing' smart constructor.
data MailPhishing = MailPhishing'
    { _mpIsInternal      :: !(Maybe Bool)
    , _mpDomainId        :: !(Maybe DomainId)
    , _mpMessages        :: !(Maybe [GmailMessageInfo])
    , _mpMaliciousEntity :: !(Maybe MaliciousEntity)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MailPhishing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    { _mpIsInternal = Nothing
    , _mpDomainId = Nothing
    , _mpMessages = Nothing
    , _mpMaliciousEntity = Nothing
    }

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
                   (o .:? "isInternal") <*> (o .:? "domainId") <*>
                     (o .:? "messages" .!= mempty)
                     <*> (o .:? "maliciousEntity"))

instance ToJSON MailPhishing where
        toJSON MailPhishing'{..}
          = object
              (catMaybes
                 [("isInternal" .=) <$> _mpIsInternal,
                  ("domainId" .=) <$> _mpDomainId,
                  ("messages" .=) <$> _mpMessages,
                  ("maliciousEntity" .=) <$> _mpMaliciousEntity])

-- | Details of a message in phishing spike alert.
--
-- /See:/ 'gmailMessageInfo' smart constructor.
data GmailMessageInfo = GmailMessageInfo'
    { _gmiMD5HashSubject        :: !(Maybe Text)
    , _gmiSubjectText           :: !(Maybe Text)
    , _gmiDate                  :: !(Maybe DateTime')
    , _gmiMD5HashMessageBody    :: !(Maybe Text)
    , _gmiAttachmentsSha256Hash :: !(Maybe [Text])
    , _gmiRecipient             :: !(Maybe Text)
    , _gmiMessageBodySnippet    :: !(Maybe Text)
    , _gmiMessageId             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | The date the malicious email was sent.
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

-- | Optional. The data associated with this alert, for example
-- google.apps.alertcenter.type.DeviceCompromised.
--
-- /See:/ 'alertData' smart constructor.
newtype AlertData = AlertData'
    { _adAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AlertData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adAddtional'
alertData
    :: HashMap Text JSONValue -- ^ 'adAddtional'
    -> AlertData
alertData pAdAddtional_ =
    AlertData'
    { _adAddtional = _Coerce # pAdAddtional_
    }

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

-- | Alert for a spike in user reported phishing.
-- __Warning__: This type has been deprecated. Use
-- [MailPhishing](\/admin-sdk\/alertcenter\/reference\/rest\/v1beta1\/MailPhishing)
-- instead.
--
-- /See:/ 'phishingSpike' smart constructor.
data PhishingSpike = PhishingSpike'
    { _psIsInternal      :: !(Maybe Bool)
    , _psDomainId        :: !(Maybe DomainId)
    , _psMessages        :: !(Maybe [GmailMessageInfo])
    , _psMaliciousEntity :: !(Maybe MaliciousEntity)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data CSV = CSV'
    { _cDataRows :: !(Maybe [CSVRow])
    , _cHeaders  :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CSV' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cDataRows'
--
-- * 'cHeaders'
csv
    :: CSV
csv =
    CSV'
    { _cDataRows = Nothing
    , _cHeaders = Nothing
    }

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

-- | An alert affecting a customer. All fields are read-only once created.
--
-- /See:/ 'alert' smart constructor.
data Alert = Alert'
    { _aStartTime                     :: !(Maybe DateTime')
    , _aData                          :: !(Maybe AlertData)
    , _aAlertId                       :: !(Maybe Text)
    , _aSecurityInvestigationToolLink :: !(Maybe Text)
    , _aCustomerId                    :: !(Maybe Text)
    , _aEndTime                       :: !(Maybe DateTime')
    , _aSource                        :: !(Maybe Text)
    , _aDeleted                       :: !(Maybe Bool)
    , _aType                          :: !(Maybe Text)
    , _aCreateTime                    :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Alert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
-- * 'aEndTime'
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
    { _aStartTime = Nothing
    , _aData = Nothing
    , _aAlertId = Nothing
    , _aSecurityInvestigationToolLink = Nothing
    , _aCustomerId = Nothing
    , _aEndTime = Nothing
    , _aSource = Nothing
    , _aDeleted = Nothing
    , _aType = Nothing
    , _aCreateTime = Nothing
    }

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

-- | Optional. The time the event that caused this alert ceased being active.
-- If provided, the end time must not be earlier than the start time. If
-- not provided, the end time defaults to the start time.
aEndTime :: Lens' Alert (Maybe UTCTime)
aEndTime
  = lens _aEndTime (\ s a -> s{_aEndTime = a}) .
      mapping _DateTime

-- | Required. A unique identifier for the system that reported the alert.
-- Supported sources are any of the following: * Google Operations * Mobile
-- device management * Gmail phishing * Domain wide takeout * Government
-- attack warning * Google identity
aSource :: Lens' Alert (Maybe Text)
aSource = lens _aSource (\ s a -> s{_aSource = a})

-- | Output only. \`True\` if this alert is marked for deletion.
aDeleted :: Lens' Alert (Maybe Bool)
aDeleted = lens _aDeleted (\ s a -> s{_aDeleted = a})

-- | Required. The type of the alert. For a list of available alert types see
-- [G Suite Alert types](\/admin-sdk\/alertcenter\/reference\/alert-types).
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
                   (o .:? "startTime") <*> (o .:? "data") <*>
                     (o .:? "alertId")
                     <*> (o .:? "securityInvestigationToolLink")
                     <*> (o .:? "customerId")
                     <*> (o .:? "endTime")
                     <*> (o .:? "source")
                     <*> (o .:? "deleted")
                     <*> (o .:? "type")
                     <*> (o .:? "createTime"))

instance ToJSON Alert where
        toJSON Alert'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _aStartTime,
                  ("data" .=) <$> _aData, ("alertId" .=) <$> _aAlertId,
                  ("securityInvestigationToolLink" .=) <$>
                    _aSecurityInvestigationToolLink,
                  ("customerId" .=) <$> _aCustomerId,
                  ("endTime" .=) <$> _aEndTime,
                  ("source" .=) <$> _aSource,
                  ("deleted" .=) <$> _aDeleted, ("type" .=) <$> _aType,
                  ("createTime" .=) <$> _aCreateTime])

-- | Attachment with application-specific information about an alert.
--
-- /See:/ 'attachment' smart constructor.
newtype Attachment = Attachment'
    { _aCSV :: Maybe CSV
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Attachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aCSV'
attachment
    :: Attachment
attachment =
    Attachment'
    { _aCSV = Nothing
    }

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

-- | An incident reported by Google Operations for a G Suite application.
--
-- /See:/ 'googleOperations' smart constructor.
data GoogleOperations = GoogleOperations'
    { _goAttachmentData     :: !(Maybe Attachment)
    , _goAffectedUserEmails :: !(Maybe [Text])
    , _goTitle              :: !(Maybe Text)
    , _goDescription        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleOperations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goAttachmentData'
--
-- * 'goAffectedUserEmails'
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
    , _goTitle = Nothing
    , _goDescription = Nothing
    }

-- | Optional. Application-specific data for an incident, provided when the G
-- Suite application which reported the incident cannot be completely
-- restored to a valid state.
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
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON GoogleOperations where
        toJSON GoogleOperations'{..}
          = object
              (catMaybes
                 [("attachmentData" .=) <$> _goAttachmentData,
                  ("affectedUserEmails" .=) <$> _goAffectedUserEmails,
                  ("title" .=) <$> _goTitle,
                  ("description" .=) <$> _goDescription])

-- | A mobile suspicious activity alert. Derived from audit logs.
--
-- /See:/ 'suspiciousActivity' smart constructor.
data SuspiciousActivity = SuspiciousActivity'
    { _saEmail  :: !(Maybe Text)
    , _saEvents :: !(Maybe [SuspiciousActivitySecurityDetail])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SuspiciousActivity'
    { _saEmail = Nothing
    , _saEvents = Nothing
    }

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

-- | A takeout operation for the entire domain was initiated by an admin.
-- Derived from audit logs.
--
-- /See:/ 'domainWideTakeoutInitiated' smart constructor.
data DomainWideTakeoutInitiated = DomainWideTakeoutInitiated'
    { _dwtiEmail            :: !(Maybe Text)
    , _dwtiTakeoutRequestId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _dwtiEmail = Nothing
    , _dwtiTakeoutRequestId = Nothing
    }

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

-- | Domain ID of Gmail phishing alerts.
--
-- /See:/ 'domainId' smart constructor.
newtype DomainId = DomainId'
    { _diCustomerPrimaryDomain :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DomainId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diCustomerPrimaryDomain'
domainId
    :: DomainId
domainId =
    DomainId'
    { _diCustomerPrimaryDomain = Nothing
    }

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
data DeviceCompromisedSecurityDetail = DeviceCompromisedSecurityDetail'
    { _dcsdResourceId             :: !(Maybe Text)
    , _dcsdDeviceCompromisedState :: !(Maybe Text)
    , _dcsdIosVendorId            :: !(Maybe Text)
    , _dcsdDeviceModel            :: !(Maybe Text)
    , _dcsdDeviceId               :: !(Maybe Text)
    , _dcsdDeviceType             :: !(Maybe Text)
    , _dcsdSerialNumber           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | A reference to a Cloud Pubsub topic. To register for notifications, the
-- owner of the topic must grant
-- \`alerts-api-push-notifications\'system.gserviceaccount.com\` the
-- \`projects.topics.publish\` permission.
--
-- /See:/ 'cloudPubsubTopic' smart constructor.
data CloudPubsubTopic = CloudPubsubTopic'
    { _cptTopicName     :: !(Maybe Text)
    , _cptPayloadFormat :: !(Maybe CloudPubsubTopicPayloadFormat)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    CloudPubsubTopic'
    { _cptTopicName = Nothing
    , _cptPayloadFormat = Nothing
    }

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
newtype ListAlertFeedbackResponse = ListAlertFeedbackResponse'
    { _lafrFeedback :: Maybe [AlertFeedback]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListAlertFeedbackResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lafrFeedback'
listAlertFeedbackResponse
    :: ListAlertFeedbackResponse
listAlertFeedbackResponse =
    ListAlertFeedbackResponse'
    { _lafrFeedback = Nothing
    }

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

-- | The details of the login action.
--
-- /See:/ 'loginDetails' smart constructor.
data LoginDetails = LoginDetails'
    { _ldIPAddress :: !(Maybe Text)
    , _ldLoginTime :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LoginDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldIPAddress'
--
-- * 'ldLoginTime'
loginDetails
    :: LoginDetails
loginDetails =
    LoginDetails'
    { _ldIPAddress = Nothing
    , _ldLoginTime = Nothing
    }

-- | Optional. The human-readable IP address (for example, \`11.22.33.44\`)
-- that is associated with the warning event.
ldIPAddress :: Lens' LoginDetails (Maybe Text)
ldIPAddress
  = lens _ldIPAddress (\ s a -> s{_ldIPAddress = a})

-- | Optional. The successful login time that is associated with the warning
-- event. This will not be present for blocked login attempts.
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
newtype MaliciousEntity = MaliciousEntity'
    { _meFromHeader :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MaliciousEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'meFromHeader'
maliciousEntity
    :: MaliciousEntity
maliciousEntity =
    MaliciousEntity'
    { _meFromHeader = Nothing
    }

-- | The sender email address.
meFromHeader :: Lens' MaliciousEntity (Maybe Text)
meFromHeader
  = lens _meFromHeader (\ s a -> s{_meFromHeader = a})

instance FromJSON MaliciousEntity where
        parseJSON
          = withObject "MaliciousEntity"
              (\ o -> MaliciousEntity' <$> (o .:? "fromHeader"))

instance ToJSON MaliciousEntity where
        toJSON MaliciousEntity'{..}
          = object
              (catMaybes [("fromHeader" .=) <$> _meFromHeader])
