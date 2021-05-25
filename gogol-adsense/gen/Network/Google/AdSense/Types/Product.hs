{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdSense.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdSense.Types.Product where

import Network.Google.AdSense.Types.Sum
import Network.Google.Prelude

-- | Response definition for the alerts list rpc.
--
-- /See:/ 'listAlertsResponse' smart constructor.
newtype ListAlertsResponse =
  ListAlertsResponse'
    { _larAlerts :: Maybe [Alert]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAlertsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larAlerts'
listAlertsResponse
    :: ListAlertsResponse
listAlertsResponse = ListAlertsResponse' {_larAlerts = Nothing}


-- | The alerts returned in this list response.
larAlerts :: Lens' ListAlertsResponse [Alert]
larAlerts
  = lens _larAlerts (\ s a -> s{_larAlerts = a}) .
      _Default
      . _Coerce

instance FromJSON ListAlertsResponse where
        parseJSON
          = withObject "ListAlertsResponse"
              (\ o ->
                 ListAlertsResponse' <$> (o .:? "alerts" .!= mempty))

instance ToJSON ListAlertsResponse where
        toJSON ListAlertsResponse'{..}
          = object (catMaybes [("alerts" .=) <$> _larAlerts])

-- | Representation of the AdSense code for a given ad client. For more
-- information, see [About the AdSense
-- code](https:\/\/support.google.com\/adsense\/answer\/9274634).
--
-- /See:/ 'adClientAdCode' smart constructor.
data AdClientAdCode =
  AdClientAdCode'
    { _acacAmpHead :: !(Maybe Text)
    , _acacAmpBody :: !(Maybe Text)
    , _acacAdCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdClientAdCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acacAmpHead'
--
-- * 'acacAmpBody'
--
-- * 'acacAdCode'
adClientAdCode
    :: AdClientAdCode
adClientAdCode =
  AdClientAdCode'
    {_acacAmpHead = Nothing, _acacAmpBody = Nothing, _acacAdCode = Nothing}


-- | Output only. The AdSense code snippet to add to the head of an AMP page.
acacAmpHead :: Lens' AdClientAdCode (Maybe Text)
acacAmpHead
  = lens _acacAmpHead (\ s a -> s{_acacAmpHead = a})

-- | Output only. The AdSense code snippet to add to the body of an AMP page.
acacAmpBody :: Lens' AdClientAdCode (Maybe Text)
acacAmpBody
  = lens _acacAmpBody (\ s a -> s{_acacAmpBody = a})

-- | Output only. The AdSense code snippet to add to the head of an HTML
-- page.
acacAdCode :: Lens' AdClientAdCode (Maybe Text)
acacAdCode
  = lens _acacAdCode (\ s a -> s{_acacAdCode = a})

instance FromJSON AdClientAdCode where
        parseJSON
          = withObject "AdClientAdCode"
              (\ o ->
                 AdClientAdCode' <$>
                   (o .:? "ampHead") <*> (o .:? "ampBody") <*>
                     (o .:? "adCode"))

instance ToJSON AdClientAdCode where
        toJSON AdClientAdCode'{..}
          = object
              (catMaybes
                 [("ampHead" .=) <$> _acacAmpHead,
                  ("ampBody" .=) <$> _acacAmpBody,
                  ("adCode" .=) <$> _acacAdCode])

--
-- /See:/ 'hTTPBodyExtensionsItem' smart constructor.
newtype HTTPBodyExtensionsItem =
  HTTPBodyExtensionsItem'
    { _httpbeiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPBodyExtensionsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httpbeiAddtional'
hTTPBodyExtensionsItem
    :: HashMap Text JSONValue -- ^ 'httpbeiAddtional'
    -> HTTPBodyExtensionsItem
hTTPBodyExtensionsItem pHttpbeiAddtional_ =
  HTTPBodyExtensionsItem' {_httpbeiAddtional = _Coerce # pHttpbeiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
httpbeiAddtional :: Lens' HTTPBodyExtensionsItem (HashMap Text JSONValue)
httpbeiAddtional
  = lens _httpbeiAddtional
      (\ s a -> s{_httpbeiAddtional = a})
      . _Coerce

instance FromJSON HTTPBodyExtensionsItem where
        parseJSON
          = withObject "HTTPBodyExtensionsItem"
              (\ o ->
                 HTTPBodyExtensionsItem' <$> (parseJSONObject o))

instance ToJSON HTTPBodyExtensionsItem where
        toJSON = toJSON . _httpbeiAddtional

-- | Response definition for the url channels list rpc.
--
-- /See:/ 'listURLChannelsResponse' smart constructor.
data ListURLChannelsResponse =
  ListURLChannelsResponse'
    { _lucrNextPageToken :: !(Maybe Text)
    , _lucrURLChannels :: !(Maybe [URLChannel])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListURLChannelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lucrNextPageToken'
--
-- * 'lucrURLChannels'
listURLChannelsResponse
    :: ListURLChannelsResponse
listURLChannelsResponse =
  ListURLChannelsResponse'
    {_lucrNextPageToken = Nothing, _lucrURLChannels = Nothing}


-- | Continuation token used to page through url channels. To retrieve the
-- next page of the results, set the next request\'s \"page_token\" value
-- to this.
lucrNextPageToken :: Lens' ListURLChannelsResponse (Maybe Text)
lucrNextPageToken
  = lens _lucrNextPageToken
      (\ s a -> s{_lucrNextPageToken = a})

-- | The url channels returned in this list response.
lucrURLChannels :: Lens' ListURLChannelsResponse [URLChannel]
lucrURLChannels
  = lens _lucrURLChannels
      (\ s a -> s{_lucrURLChannels = a})
      . _Default
      . _Coerce

instance FromJSON ListURLChannelsResponse where
        parseJSON
          = withObject "ListURLChannelsResponse"
              (\ o ->
                 ListURLChannelsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "urlChannels" .!= mempty))

instance ToJSON ListURLChannelsResponse where
        toJSON ListURLChannelsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lucrNextPageToken,
                  ("urlChannels" .=) <$> _lucrURLChannels])

-- | Representation of an unpaid or paid payment. See [Payment timelines for
-- AdSense](https:\/\/support.google.com\/adsense\/answer\/7164703) for
-- more information about payments.
--
-- /See:/ 'payment' smart constructor.
data Payment =
  Payment'
    { _pAmount :: !(Maybe Text)
    , _pDate :: !(Maybe Date)
    , _pName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Payment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAmount'
--
-- * 'pDate'
--
-- * 'pName'
payment
    :: Payment
payment = Payment' {_pAmount = Nothing, _pDate = Nothing, _pName = Nothing}


-- | Output only. The amount of unpaid or paid earnings, as a formatted
-- string, including the currency. E.g. \"¥1,235 JPY\", \"$1,234.57\",
-- \"£87.65\".
pAmount :: Lens' Payment (Maybe Text)
pAmount = lens _pAmount (\ s a -> s{_pAmount = a})

-- | Output only. For paid earnings, the date that the payment was credited.
-- For unpaid earnings, this field is empty. Payment dates are always
-- returned in the billing timezone (America\/Los_Angeles).
pDate :: Lens' Payment (Maybe Date)
pDate = lens _pDate (\ s a -> s{_pDate = a})

-- | Resource name of the payment. Format:
-- accounts\/{account}\/payments\/unpaid for unpaid (current) earnings.
-- accounts\/{account}\/payments\/yyyy-MM-dd for paid earnings.
pName :: Lens' Payment (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

instance FromJSON Payment where
        parseJSON
          = withObject "Payment"
              (\ o ->
                 Payment' <$>
                   (o .:? "amount") <*> (o .:? "date") <*>
                     (o .:? "name"))

instance ToJSON Payment where
        toJSON Payment'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _pAmount, ("date" .=) <$> _pDate,
                  ("name" .=) <$> _pName])

-- | Response definition for the custom channel list rpc.
--
-- /See:/ 'listCustomChannelsResponse' smart constructor.
data ListCustomChannelsResponse =
  ListCustomChannelsResponse'
    { _lccrNextPageToken :: !(Maybe Text)
    , _lccrCustomChannels :: !(Maybe [CustomChannel])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListCustomChannelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lccrNextPageToken'
--
-- * 'lccrCustomChannels'
listCustomChannelsResponse
    :: ListCustomChannelsResponse
listCustomChannelsResponse =
  ListCustomChannelsResponse'
    {_lccrNextPageToken = Nothing, _lccrCustomChannels = Nothing}


-- | Continuation token used to page through alerts. To retrieve the next
-- page of the results, set the next request\'s \"page_token\" value to
-- this.
lccrNextPageToken :: Lens' ListCustomChannelsResponse (Maybe Text)
lccrNextPageToken
  = lens _lccrNextPageToken
      (\ s a -> s{_lccrNextPageToken = a})

-- | The custom channels returned in this list response.
lccrCustomChannels :: Lens' ListCustomChannelsResponse [CustomChannel]
lccrCustomChannels
  = lens _lccrCustomChannels
      (\ s a -> s{_lccrCustomChannels = a})
      . _Default
      . _Coerce

instance FromJSON ListCustomChannelsResponse where
        parseJSON
          = withObject "ListCustomChannelsResponse"
              (\ o ->
                 ListCustomChannelsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "customChannels" .!= mempty))

instance ToJSON ListCustomChannelsResponse where
        toJSON ListCustomChannelsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lccrNextPageToken,
                  ("customChannels" .=) <$> _lccrCustomChannels])

-- | Response definition for the ad units linked to a custom channel list
-- rpc.
--
-- /See:/ 'listLinkedAdUnitsResponse' smart constructor.
data ListLinkedAdUnitsResponse =
  ListLinkedAdUnitsResponse'
    { _llaurNextPageToken :: !(Maybe Text)
    , _llaurAdUnits :: !(Maybe [AdUnit])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLinkedAdUnitsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llaurNextPageToken'
--
-- * 'llaurAdUnits'
listLinkedAdUnitsResponse
    :: ListLinkedAdUnitsResponse
listLinkedAdUnitsResponse =
  ListLinkedAdUnitsResponse'
    {_llaurNextPageToken = Nothing, _llaurAdUnits = Nothing}


-- | Continuation token used to page through ad units. To retrieve the next
-- page of the results, set the next request\'s \"page_token\" value to
-- this.
llaurNextPageToken :: Lens' ListLinkedAdUnitsResponse (Maybe Text)
llaurNextPageToken
  = lens _llaurNextPageToken
      (\ s a -> s{_llaurNextPageToken = a})

-- | The ad units returned in the list response.
llaurAdUnits :: Lens' ListLinkedAdUnitsResponse [AdUnit]
llaurAdUnits
  = lens _llaurAdUnits (\ s a -> s{_llaurAdUnits = a})
      . _Default
      . _Coerce

instance FromJSON ListLinkedAdUnitsResponse where
        parseJSON
          = withObject "ListLinkedAdUnitsResponse"
              (\ o ->
                 ListLinkedAdUnitsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "adUnits" .!= mempty))

instance ToJSON ListLinkedAdUnitsResponse where
        toJSON ListLinkedAdUnitsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llaurNextPageToken,
                  ("adUnits" .=) <$> _llaurAdUnits])

-- | Response definition for the account list rpc.
--
-- /See:/ 'listAccountsResponse' smart constructor.
data ListAccountsResponse =
  ListAccountsResponse'
    { _larNextPageToken :: !(Maybe Text)
    , _larAccounts :: !(Maybe [Account])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAccountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larNextPageToken'
--
-- * 'larAccounts'
listAccountsResponse
    :: ListAccountsResponse
listAccountsResponse =
  ListAccountsResponse' {_larNextPageToken = Nothing, _larAccounts = Nothing}


-- | Continuation token used to page through accounts. To retrieve the next
-- page of the results, set the next request\'s \"page_token\" value to
-- this.
larNextPageToken :: Lens' ListAccountsResponse (Maybe Text)
larNextPageToken
  = lens _larNextPageToken
      (\ s a -> s{_larNextPageToken = a})

-- | The accounts returned in this list response.
larAccounts :: Lens' ListAccountsResponse [Account]
larAccounts
  = lens _larAccounts (\ s a -> s{_larAccounts = a}) .
      _Default
      . _Coerce

instance FromJSON ListAccountsResponse where
        parseJSON
          = withObject "ListAccountsResponse"
              (\ o ->
                 ListAccountsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "accounts" .!= mempty))

instance ToJSON ListAccountsResponse where
        toJSON ListAccountsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _larNextPageToken,
                  ("accounts" .=) <$> _larAccounts])

-- | Representation of a saved report.
--
-- /See:/ 'savedReport' smart constructor.
data SavedReport =
  SavedReport'
    { _srName :: !(Maybe Text)
    , _srTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavedReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srName'
--
-- * 'srTitle'
savedReport
    :: SavedReport
savedReport = SavedReport' {_srName = Nothing, _srTitle = Nothing}


-- | Resource name of the report. Format:
-- accounts\/{account}\/reports\/{report}
srName :: Lens' SavedReport (Maybe Text)
srName = lens _srName (\ s a -> s{_srName = a})

-- | Report title as specified by publisher.
srTitle :: Lens' SavedReport (Maybe Text)
srTitle = lens _srTitle (\ s a -> s{_srTitle = a})

instance FromJSON SavedReport where
        parseJSON
          = withObject "SavedReport"
              (\ o ->
                 SavedReport' <$> (o .:? "name") <*> (o .:? "title"))

instance ToJSON SavedReport where
        toJSON SavedReport'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _srName, ("title" .=) <$> _srTitle])

-- | Representation of an ad unit. An ad unit represents a saved ad unit with
-- a specific set of ad settings that have been customized within an
-- account.
--
-- /See:/ 'adUnit' smart constructor.
data AdUnit =
  AdUnit'
    { _auState :: !(Maybe AdUnitState)
    , _auReportingDimensionId :: !(Maybe Text)
    , _auName :: !(Maybe Text)
    , _auContentAdsSettings :: !(Maybe ContentAdsSettings)
    , _auDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdUnit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auState'
--
-- * 'auReportingDimensionId'
--
-- * 'auName'
--
-- * 'auContentAdsSettings'
--
-- * 'auDisplayName'
adUnit
    :: AdUnit
adUnit =
  AdUnit'
    { _auState = Nothing
    , _auReportingDimensionId = Nothing
    , _auName = Nothing
    , _auContentAdsSettings = Nothing
    , _auDisplayName = Nothing
    }


-- | State of the ad unit.
auState :: Lens' AdUnit (Maybe AdUnitState)
auState = lens _auState (\ s a -> s{_auState = a})

-- | Output only. Unique ID of the ad unit as used in the \`AD_UNIT_ID\`
-- reporting dimension.
auReportingDimensionId :: Lens' AdUnit (Maybe Text)
auReportingDimensionId
  = lens _auReportingDimensionId
      (\ s a -> s{_auReportingDimensionId = a})

-- | Resource name of the ad unit. Format:
-- accounts\/{account}\/adclient\/{adclient}\/adunits\/{adunit}
auName :: Lens' AdUnit (Maybe Text)
auName = lens _auName (\ s a -> s{_auName = a})

-- | Settings specific to content ads (AFC).
auContentAdsSettings :: Lens' AdUnit (Maybe ContentAdsSettings)
auContentAdsSettings
  = lens _auContentAdsSettings
      (\ s a -> s{_auContentAdsSettings = a})

-- | Display name of the ad unit, as provided when the ad unit was created.
auDisplayName :: Lens' AdUnit (Maybe Text)
auDisplayName
  = lens _auDisplayName
      (\ s a -> s{_auDisplayName = a})

instance FromJSON AdUnit where
        parseJSON
          = withObject "AdUnit"
              (\ o ->
                 AdUnit' <$>
                   (o .:? "state") <*> (o .:? "reportingDimensionId")
                     <*> (o .:? "name")
                     <*> (o .:? "contentAdsSettings")
                     <*> (o .:? "displayName"))

instance ToJSON AdUnit where
        toJSON AdUnit'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _auState,
                  ("reportingDimensionId" .=) <$>
                    _auReportingDimensionId,
                  ("name" .=) <$> _auName,
                  ("contentAdsSettings" .=) <$> _auContentAdsSettings,
                  ("displayName" .=) <$> _auDisplayName])

-- | Cell representation.
--
-- /See:/ 'cell' smart constructor.
newtype Cell =
  Cell'
    { _cValue :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Cell' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cValue'
cell
    :: Cell
cell = Cell' {_cValue = Nothing}


-- | Value in the cell. The dimension cells contain strings, and the metric
-- cells contain numbers.
cValue :: Lens' Cell (Maybe Text)
cValue = lens _cValue (\ s a -> s{_cValue = a})

instance FromJSON Cell where
        parseJSON
          = withObject "Cell"
              (\ o -> Cell' <$> (o .:? "value"))

instance ToJSON Cell where
        toJSON Cell'{..}
          = object (catMaybes [("value" .=) <$> _cValue])

-- | Representation of an alert.
--
-- /See:/ 'alert' smart constructor.
data Alert =
  Alert'
    { _aSeverity :: !(Maybe AlertSeverity)
    , _aName :: !(Maybe Text)
    , _aType :: !(Maybe Text)
    , _aMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Alert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aSeverity'
--
-- * 'aName'
--
-- * 'aType'
--
-- * 'aMessage'
alert
    :: Alert
alert =
  Alert'
    { _aSeverity = Nothing
    , _aName = Nothing
    , _aType = Nothing
    , _aMessage = Nothing
    }


-- | Output only. Severity of this alert.
aSeverity :: Lens' Alert (Maybe AlertSeverity)
aSeverity
  = lens _aSeverity (\ s a -> s{_aSeverity = a})

-- | Resource name of the alert. Format: accounts\/{account}\/alerts\/{alert}
aName :: Lens' Alert (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | Output only. Type of alert. This identifies the broad type of this
-- alert, and provides a stable machine-readable identifier that will not
-- be translated. For example, \"payment-hold\".
aType :: Lens' Alert (Maybe Text)
aType = lens _aType (\ s a -> s{_aType = a})

-- | Output only. The localized alert message. This may contain HTML markup,
-- such as phrase elements or links.
aMessage :: Lens' Alert (Maybe Text)
aMessage = lens _aMessage (\ s a -> s{_aMessage = a})

instance FromJSON Alert where
        parseJSON
          = withObject "Alert"
              (\ o ->
                 Alert' <$>
                   (o .:? "severity") <*> (o .:? "name") <*>
                     (o .:? "type")
                     <*> (o .:? "message"))

instance ToJSON Alert where
        toJSON Alert'{..}
          = object
              (catMaybes
                 [("severity" .=) <$> _aSeverity,
                  ("name" .=) <$> _aName, ("type" .=) <$> _aType,
                  ("message" .=) <$> _aMessage])

-- | Response definition for the saved reports list rpc.
--
-- /See:/ 'listSavedReportsResponse' smart constructor.
data ListSavedReportsResponse =
  ListSavedReportsResponse'
    { _lsrrNextPageToken :: !(Maybe Text)
    , _lsrrSavedReports :: !(Maybe [SavedReport])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSavedReportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrNextPageToken'
--
-- * 'lsrrSavedReports'
listSavedReportsResponse
    :: ListSavedReportsResponse
listSavedReportsResponse =
  ListSavedReportsResponse'
    {_lsrrNextPageToken = Nothing, _lsrrSavedReports = Nothing}


-- | Continuation token used to page through reports. To retrieve the next
-- page of the results, set the next request\'s \"page_token\" value to
-- this.
lsrrNextPageToken :: Lens' ListSavedReportsResponse (Maybe Text)
lsrrNextPageToken
  = lens _lsrrNextPageToken
      (\ s a -> s{_lsrrNextPageToken = a})

-- | The reports returned in this list response.
lsrrSavedReports :: Lens' ListSavedReportsResponse [SavedReport]
lsrrSavedReports
  = lens _lsrrSavedReports
      (\ s a -> s{_lsrrSavedReports = a})
      . _Default
      . _Coerce

instance FromJSON ListSavedReportsResponse where
        parseJSON
          = withObject "ListSavedReportsResponse"
              (\ o ->
                 ListSavedReportsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "savedReports" .!= mempty))

instance ToJSON ListSavedReportsResponse where
        toJSON ListSavedReportsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrrNextPageToken,
                  ("savedReports" .=) <$> _lsrrSavedReports])

-- | Response definition for the child account list rpc.
--
-- /See:/ 'listChildAccountsResponse' smart constructor.
data ListChildAccountsResponse =
  ListChildAccountsResponse'
    { _lcarNextPageToken :: !(Maybe Text)
    , _lcarAccounts :: !(Maybe [Account])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListChildAccountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcarNextPageToken'
--
-- * 'lcarAccounts'
listChildAccountsResponse
    :: ListChildAccountsResponse
listChildAccountsResponse =
  ListChildAccountsResponse'
    {_lcarNextPageToken = Nothing, _lcarAccounts = Nothing}


-- | Continuation token used to page through accounts. To retrieve the next
-- page of the results, set the next request\'s \"page_token\" value to
-- this.
lcarNextPageToken :: Lens' ListChildAccountsResponse (Maybe Text)
lcarNextPageToken
  = lens _lcarNextPageToken
      (\ s a -> s{_lcarNextPageToken = a})

-- | The accounts returned in this list response.
lcarAccounts :: Lens' ListChildAccountsResponse [Account]
lcarAccounts
  = lens _lcarAccounts (\ s a -> s{_lcarAccounts = a})
      . _Default
      . _Coerce

instance FromJSON ListChildAccountsResponse where
        parseJSON
          = withObject "ListChildAccountsResponse"
              (\ o ->
                 ListChildAccountsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "accounts" .!= mempty))

instance ToJSON ListChildAccountsResponse where
        toJSON ListChildAccountsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcarNextPageToken,
                  ("accounts" .=) <$> _lcarAccounts])

-- | Representation of an account.
--
-- /See:/ 'account' smart constructor.
data Account =
  Account'
    { _accPremium :: !(Maybe Bool)
    , _accPendingTasks :: !(Maybe [Text])
    , _accName :: !(Maybe Text)
    , _accDisplayName :: !(Maybe Text)
    , _accTimeZone :: !(Maybe TimeZone)
    , _accCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accPremium'
--
-- * 'accPendingTasks'
--
-- * 'accName'
--
-- * 'accDisplayName'
--
-- * 'accTimeZone'
--
-- * 'accCreateTime'
account
    :: Account
account =
  Account'
    { _accPremium = Nothing
    , _accPendingTasks = Nothing
    , _accName = Nothing
    , _accDisplayName = Nothing
    , _accTimeZone = Nothing
    , _accCreateTime = Nothing
    }


-- | Output only. Whether this account is premium.
accPremium :: Lens' Account (Maybe Bool)
accPremium
  = lens _accPremium (\ s a -> s{_accPremium = a})

-- | Output only. Outstanding tasks that need to be completed as part of the
-- sign-up process for a new account. e.g. \"billing-profile-creation\",
-- \"phone-pin-verification\".
accPendingTasks :: Lens' Account [Text]
accPendingTasks
  = lens _accPendingTasks
      (\ s a -> s{_accPendingTasks = a})
      . _Default
      . _Coerce

-- | Resource name of the account. Format: accounts\/pub-[0-9]+
accName :: Lens' Account (Maybe Text)
accName = lens _accName (\ s a -> s{_accName = a})

-- | Output only. Display name of this account.
accDisplayName :: Lens' Account (Maybe Text)
accDisplayName
  = lens _accDisplayName
      (\ s a -> s{_accDisplayName = a})

-- | The account time zone, as used by reporting. For more information, see
-- [changing the time zone of your
-- reports](https:\/\/support.google.com\/adsense\/answer\/9830725).
accTimeZone :: Lens' Account (Maybe TimeZone)
accTimeZone
  = lens _accTimeZone (\ s a -> s{_accTimeZone = a})

-- | Output only. Creation time of the account.
accCreateTime :: Lens' Account (Maybe UTCTime)
accCreateTime
  = lens _accCreateTime
      (\ s a -> s{_accCreateTime = a})
      . mapping _DateTime

instance FromJSON Account where
        parseJSON
          = withObject "Account"
              (\ o ->
                 Account' <$>
                   (o .:? "premium") <*>
                     (o .:? "pendingTasks" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "timeZone")
                     <*> (o .:? "createTime"))

instance ToJSON Account where
        toJSON Account'{..}
          = object
              (catMaybes
                 [("premium" .=) <$> _accPremium,
                  ("pendingTasks" .=) <$> _accPendingTasks,
                  ("name" .=) <$> _accName,
                  ("displayName" .=) <$> _accDisplayName,
                  ("timeZone" .=) <$> _accTimeZone,
                  ("createTime" .=) <$> _accCreateTime])

-- | Response definition for the adunit list rpc.
--
-- /See:/ 'listAdUnitsResponse' smart constructor.
data ListAdUnitsResponse =
  ListAdUnitsResponse'
    { _laurNextPageToken :: !(Maybe Text)
    , _laurAdUnits :: !(Maybe [AdUnit])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAdUnitsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laurNextPageToken'
--
-- * 'laurAdUnits'
listAdUnitsResponse
    :: ListAdUnitsResponse
listAdUnitsResponse =
  ListAdUnitsResponse' {_laurNextPageToken = Nothing, _laurAdUnits = Nothing}


-- | Continuation token used to page through ad units. To retrieve the next
-- page of the results, set the next request\'s \"page_token\" value to
-- this.
laurNextPageToken :: Lens' ListAdUnitsResponse (Maybe Text)
laurNextPageToken
  = lens _laurNextPageToken
      (\ s a -> s{_laurNextPageToken = a})

-- | The ad units returned in the list response.
laurAdUnits :: Lens' ListAdUnitsResponse [AdUnit]
laurAdUnits
  = lens _laurAdUnits (\ s a -> s{_laurAdUnits = a}) .
      _Default
      . _Coerce

instance FromJSON ListAdUnitsResponse where
        parseJSON
          = withObject "ListAdUnitsResponse"
              (\ o ->
                 ListAdUnitsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "adUnits" .!= mempty))

instance ToJSON ListAdUnitsResponse where
        toJSON ListAdUnitsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _laurNextPageToken,
                  ("adUnits" .=) <$> _laurAdUnits])

-- | Represents a whole or partial calendar date, such as a birthday. The
-- time of day and time zone are either specified elsewhere or are
-- insignificant. The date is relative to the Gregorian Calendar. This can
-- represent one of the following: * A full date, with non-zero year,
-- month, and day values * A month and day value, with a zero year, such as
-- an anniversary * A year on its own, with zero month and day values * A
-- year and month value, with a zero day, such as a credit card expiration
-- date Related types are google.type.TimeOfDay and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'date' smart constructor.
data Date =
  Date'
    { _dDay :: !(Maybe (Textual Int32))
    , _dYear :: !(Maybe (Textual Int32))
    , _dMonth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Date' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDay'
--
-- * 'dYear'
--
-- * 'dMonth'
date
    :: Date
date = Date' {_dDay = Nothing, _dYear = Nothing, _dMonth = Nothing}


-- | Day of a month. Must be from 1 to 31 and valid for the year and month,
-- or 0 to specify a year by itself or a year and month where the day
-- isn\'t significant.
dDay :: Lens' Date (Maybe Int32)
dDay
  = lens _dDay (\ s a -> s{_dDay = a}) .
      mapping _Coerce

-- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear
  = lens _dYear (\ s a -> s{_dYear = a}) .
      mapping _Coerce

-- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a
-- month and day.
dMonth :: Lens' Date (Maybe Int32)
dMonth
  = lens _dMonth (\ s a -> s{_dMonth = a}) .
      mapping _Coerce

instance FromJSON Date where
        parseJSON
          = withObject "Date"
              (\ o ->
                 Date' <$>
                   (o .:? "day") <*> (o .:? "year") <*> (o .:? "month"))

instance ToJSON Date where
        toJSON Date'{..}
          = object
              (catMaybes
                 [("day" .=) <$> _dDay, ("year" .=) <$> _dYear,
                  ("month" .=) <$> _dMonth])

-- | Representation of an ad client. An ad client represents a user\'s
-- subscription with a specific AdSense product.
--
-- /See:/ 'adClient' smart constructor.
data AdClient =
  AdClient'
    { _acReportingDimensionId :: !(Maybe Text)
    , _acName :: !(Maybe Text)
    , _acProductCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdClient' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acReportingDimensionId'
--
-- * 'acName'
--
-- * 'acProductCode'
adClient
    :: AdClient
adClient =
  AdClient'
    { _acReportingDimensionId = Nothing
    , _acName = Nothing
    , _acProductCode = Nothing
    }


-- | Output only. Unique ID of the ad client as used in the \`AD_CLIENT_ID\`
-- reporting dimension. Present only if the ad client supports reporting.
acReportingDimensionId :: Lens' AdClient (Maybe Text)
acReportingDimensionId
  = lens _acReportingDimensionId
      (\ s a -> s{_acReportingDimensionId = a})

-- | Resource name of the ad client. Format:
-- accounts\/{account}\/adclient\/{adclient}
acName :: Lens' AdClient (Maybe Text)
acName = lens _acName (\ s a -> s{_acName = a})

-- | Output only. Product code of the ad client. For example, \"AFC\" for
-- AdSense for Content.
acProductCode :: Lens' AdClient (Maybe Text)
acProductCode
  = lens _acProductCode
      (\ s a -> s{_acProductCode = a})

instance FromJSON AdClient where
        parseJSON
          = withObject "AdClient"
              (\ o ->
                 AdClient' <$>
                   (o .:? "reportingDimensionId") <*> (o .:? "name") <*>
                     (o .:? "productCode"))

instance ToJSON AdClient where
        toJSON AdClient'{..}
          = object
              (catMaybes
                 [("reportingDimensionId" .=) <$>
                    _acReportingDimensionId,
                  ("name" .=) <$> _acName,
                  ("productCode" .=) <$> _acProductCode])

-- | Result of a generated report.
--
-- /See:/ 'reportResult' smart constructor.
data ReportResult =
  ReportResult'
    { _rrAverages :: !(Maybe Row)
    , _rrEndDate :: !(Maybe Date)
    , _rrWarnings :: !(Maybe [Text])
    , _rrRows :: !(Maybe [Row])
    , _rrTotals :: !(Maybe Row)
    , _rrStartDate :: !(Maybe Date)
    , _rrHeaders :: !(Maybe [Header])
    , _rrTotalMatchedRows :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrAverages'
--
-- * 'rrEndDate'
--
-- * 'rrWarnings'
--
-- * 'rrRows'
--
-- * 'rrTotals'
--
-- * 'rrStartDate'
--
-- * 'rrHeaders'
--
-- * 'rrTotalMatchedRows'
reportResult
    :: ReportResult
reportResult =
  ReportResult'
    { _rrAverages = Nothing
    , _rrEndDate = Nothing
    , _rrWarnings = Nothing
    , _rrRows = Nothing
    , _rrTotals = Nothing
    , _rrStartDate = Nothing
    , _rrHeaders = Nothing
    , _rrTotalMatchedRows = Nothing
    }


-- | The averages of the report. This is the same length as any other row in
-- the report; cells corresponding to dimension columns are empty.
rrAverages :: Lens' ReportResult (Maybe Row)
rrAverages
  = lens _rrAverages (\ s a -> s{_rrAverages = a})

-- | Required. End date of the range (inclusive).
rrEndDate :: Lens' ReportResult (Maybe Date)
rrEndDate
  = lens _rrEndDate (\ s a -> s{_rrEndDate = a})

-- | Any warnings associated with generation of the report. These warnings
-- are always returned in English.
rrWarnings :: Lens' ReportResult [Text]
rrWarnings
  = lens _rrWarnings (\ s a -> s{_rrWarnings = a}) .
      _Default
      . _Coerce

-- | The output rows of the report. Each row is a list of cells; one for each
-- dimension in the request, followed by one for each metric in the
-- request.
rrRows :: Lens' ReportResult [Row]
rrRows
  = lens _rrRows (\ s a -> s{_rrRows = a}) . _Default .
      _Coerce

-- | The totals of the report. This is the same length as any other row in
-- the report; cells corresponding to dimension columns are empty.
rrTotals :: Lens' ReportResult (Maybe Row)
rrTotals = lens _rrTotals (\ s a -> s{_rrTotals = a})

-- | Required. Start date of the range (inclusive).
rrStartDate :: Lens' ReportResult (Maybe Date)
rrStartDate
  = lens _rrStartDate (\ s a -> s{_rrStartDate = a})

-- | The header information; one for each dimension in the request, followed
-- by one for each metric in the request.
rrHeaders :: Lens' ReportResult [Header]
rrHeaders
  = lens _rrHeaders (\ s a -> s{_rrHeaders = a}) .
      _Default
      . _Coerce

-- | The total number of rows matched by the report request.
rrTotalMatchedRows :: Lens' ReportResult (Maybe Int64)
rrTotalMatchedRows
  = lens _rrTotalMatchedRows
      (\ s a -> s{_rrTotalMatchedRows = a})
      . mapping _Coerce

instance FromJSON ReportResult where
        parseJSON
          = withObject "ReportResult"
              (\ o ->
                 ReportResult' <$>
                   (o .:? "averages") <*> (o .:? "endDate") <*>
                     (o .:? "warnings" .!= mempty)
                     <*> (o .:? "rows" .!= mempty)
                     <*> (o .:? "totals")
                     <*> (o .:? "startDate")
                     <*> (o .:? "headers" .!= mempty)
                     <*> (o .:? "totalMatchedRows"))

instance ToJSON ReportResult where
        toJSON ReportResult'{..}
          = object
              (catMaybes
                 [("averages" .=) <$> _rrAverages,
                  ("endDate" .=) <$> _rrEndDate,
                  ("warnings" .=) <$> _rrWarnings,
                  ("rows" .=) <$> _rrRows, ("totals" .=) <$> _rrTotals,
                  ("startDate" .=) <$> _rrStartDate,
                  ("headers" .=) <$> _rrHeaders,
                  ("totalMatchedRows" .=) <$> _rrTotalMatchedRows])

-- | The header information of the columns requested in the report.
--
-- /See:/ 'header' smart constructor.
data Header =
  Header'
    { _hCurrencyCode :: !(Maybe Text)
    , _hName :: !(Maybe Text)
    , _hType :: !(Maybe HeaderType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Header' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hCurrencyCode'
--
-- * 'hName'
--
-- * 'hType'
header
    :: Header
header = Header' {_hCurrencyCode = Nothing, _hName = Nothing, _hType = Nothing}


-- | The [ISO-4217 currency code](https:\/\/en.wikipedia.org\/wiki\/ISO_4217)
-- of this column. Only present if the header type is METRIC_CURRENCY.
hCurrencyCode :: Lens' Header (Maybe Text)
hCurrencyCode
  = lens _hCurrencyCode
      (\ s a -> s{_hCurrencyCode = a})

-- | Required. Name of the header.
hName :: Lens' Header (Maybe Text)
hName = lens _hName (\ s a -> s{_hName = a})

-- | Required. Type of the header.
hType :: Lens' Header (Maybe HeaderType)
hType = lens _hType (\ s a -> s{_hType = a})

instance FromJSON Header where
        parseJSON
          = withObject "Header"
              (\ o ->
                 Header' <$>
                   (o .:? "currencyCode") <*> (o .:? "name") <*>
                     (o .:? "type"))

instance ToJSON Header where
        toJSON Header'{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _hCurrencyCode,
                  ("name" .=) <$> _hName, ("type" .=) <$> _hType])

-- | Settings specific to content ads (AFC).
--
-- /See:/ 'contentAdsSettings' smart constructor.
data ContentAdsSettings =
  ContentAdsSettings'
    { _casSize :: !(Maybe Text)
    , _casType :: !(Maybe ContentAdsSettingsType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContentAdsSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'casSize'
--
-- * 'casType'
contentAdsSettings
    :: ContentAdsSettings
contentAdsSettings =
  ContentAdsSettings' {_casSize = Nothing, _casType = Nothing}


-- | Size of the ad unit. e.g. \"728x90\", \"1x3\" (for responsive ad units).
casSize :: Lens' ContentAdsSettings (Maybe Text)
casSize = lens _casSize (\ s a -> s{_casSize = a})

-- | Type of the ad unit.
casType :: Lens' ContentAdsSettings (Maybe ContentAdsSettingsType)
casType = lens _casType (\ s a -> s{_casType = a})

instance FromJSON ContentAdsSettings where
        parseJSON
          = withObject "ContentAdsSettings"
              (\ o ->
                 ContentAdsSettings' <$>
                   (o .:? "size") <*> (o .:? "type"))

instance ToJSON ContentAdsSettings where
        toJSON ContentAdsSettings'{..}
          = object
              (catMaybes
                 [("size" .=) <$> _casSize, ("type" .=) <$> _casType])

-- | Row representation.
--
-- /See:/ 'row' smart constructor.
newtype Row =
  Row'
    { _rCells :: Maybe [Cell]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Row' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rCells'
row
    :: Row
row = Row' {_rCells = Nothing}


-- | Cells in the row.
rCells :: Lens' Row [Cell]
rCells
  = lens _rCells (\ s a -> s{_rCells = a}) . _Default .
      _Coerce

instance FromJSON Row where
        parseJSON
          = withObject "Row"
              (\ o -> Row' <$> (o .:? "cells" .!= mempty))

instance ToJSON Row where
        toJSON Row'{..}
          = object (catMaybes [("cells" .=) <$> _rCells])

-- | Representation of a custom channel.
--
-- /See:/ 'customChannel' smart constructor.
data CustomChannel =
  CustomChannel'
    { _ccReportingDimensionId :: !(Maybe Text)
    , _ccName :: !(Maybe Text)
    , _ccDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccReportingDimensionId'
--
-- * 'ccName'
--
-- * 'ccDisplayName'
customChannel
    :: CustomChannel
customChannel =
  CustomChannel'
    { _ccReportingDimensionId = Nothing
    , _ccName = Nothing
    , _ccDisplayName = Nothing
    }


-- | Output only. Unique ID of the custom channel as used in the
-- \`CUSTOM_CHANNEL_ID\` reporting dimension.
ccReportingDimensionId :: Lens' CustomChannel (Maybe Text)
ccReportingDimensionId
  = lens _ccReportingDimensionId
      (\ s a -> s{_ccReportingDimensionId = a})

-- | Resource name of the custom channel. Format:
-- accounts\/{account}\/adclients\/{adclient}\/customchannels\/{customchannel}
ccName :: Lens' CustomChannel (Maybe Text)
ccName = lens _ccName (\ s a -> s{_ccName = a})

-- | Display name of the custom channel.
ccDisplayName :: Lens' CustomChannel (Maybe Text)
ccDisplayName
  = lens _ccDisplayName
      (\ s a -> s{_ccDisplayName = a})

instance FromJSON CustomChannel where
        parseJSON
          = withObject "CustomChannel"
              (\ o ->
                 CustomChannel' <$>
                   (o .:? "reportingDimensionId") <*> (o .:? "name") <*>
                     (o .:? "displayName"))

instance ToJSON CustomChannel where
        toJSON CustomChannel'{..}
          = object
              (catMaybes
                 [("reportingDimensionId" .=) <$>
                    _ccReportingDimensionId,
                  ("name" .=) <$> _ccName,
                  ("displayName" .=) <$> _ccDisplayName])

-- | Representation of a URL channel. URL channels allow you to track the
-- performance of particular pages in your site; see [URL
-- channels](https:\/\/support.google.com\/adsense\/answer\/2923836) for
-- more information.
--
-- /See:/ 'urlChannel' smart constructor.
data URLChannel =
  URLChannel'
    { _ucReportingDimensionId :: !(Maybe Text)
    , _ucURIPattern :: !(Maybe Text)
    , _ucName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'URLChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucReportingDimensionId'
--
-- * 'ucURIPattern'
--
-- * 'ucName'
urlChannel
    :: URLChannel
urlChannel =
  URLChannel'
    { _ucReportingDimensionId = Nothing
    , _ucURIPattern = Nothing
    , _ucName = Nothing
    }


-- | Output only. Unique ID of the custom channel as used in the
-- \`URL_CHANNEL_ID\` reporting dimension.
ucReportingDimensionId :: Lens' URLChannel (Maybe Text)
ucReportingDimensionId
  = lens _ucReportingDimensionId
      (\ s a -> s{_ucReportingDimensionId = a})

-- | URI pattern of the channel. Does not include \"http:\/\/\" or
-- \"https:\/\/\". Example: www.example.com\/home
ucURIPattern :: Lens' URLChannel (Maybe Text)
ucURIPattern
  = lens _ucURIPattern (\ s a -> s{_ucURIPattern = a})

-- | Resource name of the URL channel. Format:
-- accounts\/{account}\/adclient\/{adclient}\/urlchannels\/{urlchannel}
ucName :: Lens' URLChannel (Maybe Text)
ucName = lens _ucName (\ s a -> s{_ucName = a})

instance FromJSON URLChannel where
        parseJSON
          = withObject "URLChannel"
              (\ o ->
                 URLChannel' <$>
                   (o .:? "reportingDimensionId") <*>
                     (o .:? "uriPattern")
                     <*> (o .:? "name"))

instance ToJSON URLChannel where
        toJSON URLChannel'{..}
          = object
              (catMaybes
                 [("reportingDimensionId" .=) <$>
                    _ucReportingDimensionId,
                  ("uriPattern" .=) <$> _ucURIPattern,
                  ("name" .=) <$> _ucName])

-- | Response definition for the payments list rpc.
--
-- /See:/ 'listPaymentsResponse' smart constructor.
newtype ListPaymentsResponse =
  ListPaymentsResponse'
    { _lprPayments :: Maybe [Payment]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListPaymentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprPayments'
listPaymentsResponse
    :: ListPaymentsResponse
listPaymentsResponse = ListPaymentsResponse' {_lprPayments = Nothing}


-- | The payments returned in this list response.
lprPayments :: Lens' ListPaymentsResponse [Payment]
lprPayments
  = lens _lprPayments (\ s a -> s{_lprPayments = a}) .
      _Default
      . _Coerce

instance FromJSON ListPaymentsResponse where
        parseJSON
          = withObject "ListPaymentsResponse"
              (\ o ->
                 ListPaymentsResponse' <$>
                   (o .:? "payments" .!= mempty))

instance ToJSON ListPaymentsResponse where
        toJSON ListPaymentsResponse'{..}
          = object
              (catMaybes [("payments" .=) <$> _lprPayments])

-- | Message that represents an arbitrary HTTP body. It should only be used
-- for payload formats that can\'t be represented as JSON, such as raw
-- binary or an HTML page. This message can be used both in streaming and
-- non-streaming API methods in the request as well as the response. It can
-- be used as a top-level request field, which is convenient if one wants
-- to extract parameters from either the URL or HTTP template into the
-- request fields and also want access to the raw HTTP body. Example:
-- message GetResourceRequest { \/\/ A unique request id. string request_id
-- = 1; \/\/ The raw HTTP body is bound to this field. google.api.HttpBody
-- http_body = 2; } service ResourceService { rpc
-- GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
-- UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); }
-- Example with streaming methods: service CaldavService { rpc
-- GetCalendar(stream google.api.HttpBody) returns (stream
-- google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody)
-- returns (stream google.api.HttpBody); } Use of this type only changes
-- how the request and response bodies are handled, all other features will
-- continue to work unchanged.
--
-- /See:/ 'hTTPBody' smart constructor.
data HTTPBody =
  HTTPBody'
    { _httpbExtensions :: !(Maybe [HTTPBodyExtensionsItem])
    , _httpbData :: !(Maybe Bytes)
    , _httpbContentType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPBody' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httpbExtensions'
--
-- * 'httpbData'
--
-- * 'httpbContentType'
hTTPBody
    :: HTTPBody
hTTPBody =
  HTTPBody'
    { _httpbExtensions = Nothing
    , _httpbData = Nothing
    , _httpbContentType = Nothing
    }


-- | Application specific response metadata. Must be set in the first
-- response for streaming APIs.
httpbExtensions :: Lens' HTTPBody [HTTPBodyExtensionsItem]
httpbExtensions
  = lens _httpbExtensions
      (\ s a -> s{_httpbExtensions = a})
      . _Default
      . _Coerce

-- | The HTTP request\/response body as raw binary.
httpbData :: Lens' HTTPBody (Maybe ByteString)
httpbData
  = lens _httpbData (\ s a -> s{_httpbData = a}) .
      mapping _Bytes

-- | The HTTP Content-Type header value specifying the content type of the
-- body.
httpbContentType :: Lens' HTTPBody (Maybe Text)
httpbContentType
  = lens _httpbContentType
      (\ s a -> s{_httpbContentType = a})

instance FromJSON HTTPBody where
        parseJSON
          = withObject "HTTPBody"
              (\ o ->
                 HTTPBody' <$>
                   (o .:? "extensions" .!= mempty) <*> (o .:? "data")
                     <*> (o .:? "contentType"))

instance ToJSON HTTPBody where
        toJSON HTTPBody'{..}
          = object
              (catMaybes
                 [("extensions" .=) <$> _httpbExtensions,
                  ("data" .=) <$> _httpbData,
                  ("contentType" .=) <$> _httpbContentType])

-- | Response definition for the custom channels linked to an adunit list
-- rpc.
--
-- /See:/ 'listLinkedCustomChannelsResponse' smart constructor.
data ListLinkedCustomChannelsResponse =
  ListLinkedCustomChannelsResponse'
    { _llccrNextPageToken :: !(Maybe Text)
    , _llccrCustomChannels :: !(Maybe [CustomChannel])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLinkedCustomChannelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llccrNextPageToken'
--
-- * 'llccrCustomChannels'
listLinkedCustomChannelsResponse
    :: ListLinkedCustomChannelsResponse
listLinkedCustomChannelsResponse =
  ListLinkedCustomChannelsResponse'
    {_llccrNextPageToken = Nothing, _llccrCustomChannels = Nothing}


-- | Continuation token used to page through alerts. To retrieve the next
-- page of the results, set the next request\'s \"page_token\" value to
-- this.
llccrNextPageToken :: Lens' ListLinkedCustomChannelsResponse (Maybe Text)
llccrNextPageToken
  = lens _llccrNextPageToken
      (\ s a -> s{_llccrNextPageToken = a})

-- | The custom channels returned in this list response.
llccrCustomChannels :: Lens' ListLinkedCustomChannelsResponse [CustomChannel]
llccrCustomChannels
  = lens _llccrCustomChannels
      (\ s a -> s{_llccrCustomChannels = a})
      . _Default
      . _Coerce

instance FromJSON ListLinkedCustomChannelsResponse
         where
        parseJSON
          = withObject "ListLinkedCustomChannelsResponse"
              (\ o ->
                 ListLinkedCustomChannelsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "customChannels" .!= mempty))

instance ToJSON ListLinkedCustomChannelsResponse
         where
        toJSON ListLinkedCustomChannelsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llccrNextPageToken,
                  ("customChannels" .=) <$> _llccrCustomChannels])

-- | Representation of the AdSense code for a given ad unit.
--
-- /See:/ 'adUnitAdCode' smart constructor.
newtype AdUnitAdCode =
  AdUnitAdCode'
    { _auacAdCode :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdUnitAdCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auacAdCode'
adUnitAdCode
    :: AdUnitAdCode
adUnitAdCode = AdUnitAdCode' {_auacAdCode = Nothing}


-- | Output only. The AdSense code snippet to add to the body of an HTML
-- page.
auacAdCode :: Lens' AdUnitAdCode (Maybe Text)
auacAdCode
  = lens _auacAdCode (\ s a -> s{_auacAdCode = a})

instance FromJSON AdUnitAdCode where
        parseJSON
          = withObject "AdUnitAdCode"
              (\ o -> AdUnitAdCode' <$> (o .:? "adCode"))

instance ToJSON AdUnitAdCode where
        toJSON AdUnitAdCode'{..}
          = object (catMaybes [("adCode" .=) <$> _auacAdCode])

-- | Represents a time zone from the [IANA Time Zone
-- Database](https:\/\/www.iana.org\/time-zones).
--
-- /See:/ 'timeZone' smart constructor.
data TimeZone =
  TimeZone'
    { _tzVersion :: !(Maybe Text)
    , _tzId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeZone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tzVersion'
--
-- * 'tzId'
timeZone
    :: TimeZone
timeZone = TimeZone' {_tzVersion = Nothing, _tzId = Nothing}


-- | Optional. IANA Time Zone Database version number, e.g. \"2019a\".
tzVersion :: Lens' TimeZone (Maybe Text)
tzVersion
  = lens _tzVersion (\ s a -> s{_tzVersion = a})

-- | IANA Time Zone Database time zone, e.g. \"America\/New_York\".
tzId :: Lens' TimeZone (Maybe Text)
tzId = lens _tzId (\ s a -> s{_tzId = a})

instance FromJSON TimeZone where
        parseJSON
          = withObject "TimeZone"
              (\ o ->
                 TimeZone' <$> (o .:? "version") <*> (o .:? "id"))

instance ToJSON TimeZone where
        toJSON TimeZone'{..}
          = object
              (catMaybes
                 [("version" .=) <$> _tzVersion, ("id" .=) <$> _tzId])

-- | Representation of a Site.
--
-- /See:/ 'site' smart constructor.
data Site =
  Site'
    { _sAutoAdsEnabled :: !(Maybe Bool)
    , _sState :: !(Maybe SiteState)
    , _sDomain :: !(Maybe Text)
    , _sReportingDimensionId :: !(Maybe Text)
    , _sName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Site' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sAutoAdsEnabled'
--
-- * 'sState'
--
-- * 'sDomain'
--
-- * 'sReportingDimensionId'
--
-- * 'sName'
site
    :: Site
site =
  Site'
    { _sAutoAdsEnabled = Nothing
    , _sState = Nothing
    , _sDomain = Nothing
    , _sReportingDimensionId = Nothing
    , _sName = Nothing
    }


-- | Whether auto ads is turned on for the site.
sAutoAdsEnabled :: Lens' Site (Maybe Bool)
sAutoAdsEnabled
  = lens _sAutoAdsEnabled
      (\ s a -> s{_sAutoAdsEnabled = a})

-- | Output only. State of a site.
sState :: Lens' Site (Maybe SiteState)
sState = lens _sState (\ s a -> s{_sState = a})

-- | Domain (or subdomain) of the site, e.g. \"example.com\" or
-- \"www.example.com\". This is used in the \`OWNED_SITE_DOMAIN_NAME\`
-- reporting dimension.
sDomain :: Lens' Site (Maybe Text)
sDomain = lens _sDomain (\ s a -> s{_sDomain = a})

-- | Output only. Unique ID of the site as used in the \`OWNED_SITE_ID\`
-- reporting dimension.
sReportingDimensionId :: Lens' Site (Maybe Text)
sReportingDimensionId
  = lens _sReportingDimensionId
      (\ s a -> s{_sReportingDimensionId = a})

-- | Resource name of a site. Format: accounts\/{account}\/sites\/{site}
sName :: Lens' Site (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

instance FromJSON Site where
        parseJSON
          = withObject "Site"
              (\ o ->
                 Site' <$>
                   (o .:? "autoAdsEnabled") <*> (o .:? "state") <*>
                     (o .:? "domain")
                     <*> (o .:? "reportingDimensionId")
                     <*> (o .:? "name"))

instance ToJSON Site where
        toJSON Site'{..}
          = object
              (catMaybes
                 [("autoAdsEnabled" .=) <$> _sAutoAdsEnabled,
                  ("state" .=) <$> _sState, ("domain" .=) <$> _sDomain,
                  ("reportingDimensionId" .=) <$>
                    _sReportingDimensionId,
                  ("name" .=) <$> _sName])

-- | Response definition for the ad client list rpc.
--
-- /See:/ 'listAdClientsResponse' smart constructor.
data ListAdClientsResponse =
  ListAdClientsResponse'
    { _lacrNextPageToken :: !(Maybe Text)
    , _lacrAdClients :: !(Maybe [AdClient])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAdClientsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lacrNextPageToken'
--
-- * 'lacrAdClients'
listAdClientsResponse
    :: ListAdClientsResponse
listAdClientsResponse =
  ListAdClientsResponse'
    {_lacrNextPageToken = Nothing, _lacrAdClients = Nothing}


-- | Continuation token used to page through ad clients. To retrieve the next
-- page of the results, set the next request\'s \"page_token\" value to
-- this.
lacrNextPageToken :: Lens' ListAdClientsResponse (Maybe Text)
lacrNextPageToken
  = lens _lacrNextPageToken
      (\ s a -> s{_lacrNextPageToken = a})

-- | The ad clients returned in this list response.
lacrAdClients :: Lens' ListAdClientsResponse [AdClient]
lacrAdClients
  = lens _lacrAdClients
      (\ s a -> s{_lacrAdClients = a})
      . _Default
      . _Coerce

instance FromJSON ListAdClientsResponse where
        parseJSON
          = withObject "ListAdClientsResponse"
              (\ o ->
                 ListAdClientsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "adClients" .!= mempty))

instance ToJSON ListAdClientsResponse where
        toJSON ListAdClientsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lacrNextPageToken,
                  ("adClients" .=) <$> _lacrAdClients])

-- | Response definition for the sites list rpc.
--
-- /See:/ 'listSitesResponse' smart constructor.
data ListSitesResponse =
  ListSitesResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrSites :: !(Maybe [Site])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSitesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNextPageToken'
--
-- * 'lsrSites'
listSitesResponse
    :: ListSitesResponse
listSitesResponse =
  ListSitesResponse' {_lsrNextPageToken = Nothing, _lsrSites = Nothing}


-- | Continuation token used to page through sites. To retrieve the next page
-- of the results, set the next request\'s \"page_token\" value to this.
lsrNextPageToken :: Lens' ListSitesResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | The sites returned in this list response.
lsrSites :: Lens' ListSitesResponse [Site]
lsrSites
  = lens _lsrSites (\ s a -> s{_lsrSites = a}) .
      _Default
      . _Coerce

instance FromJSON ListSitesResponse where
        parseJSON
          = withObject "ListSitesResponse"
              (\ o ->
                 ListSitesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "sites" .!= mempty))

instance ToJSON ListSitesResponse where
        toJSON ListSitesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrNextPageToken,
                  ("sites" .=) <$> _lsrSites])
