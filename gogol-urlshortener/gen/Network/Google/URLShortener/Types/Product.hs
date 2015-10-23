{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.URLShortener.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.URLShortener.Types.Product where

import           Network.Google.Prelude
import           Network.Google.URLShortener.Types.Sum

--
-- /See:/ 'url' smart constructor.
data URL = URL
    { _uStatus    :: !(Maybe Text)
    , _uKind      :: !Text
    , _uCreated   :: !(Maybe Text)
    , _uAnalytics :: !(Maybe AnalyticsSummary)
    , _uLongURL   :: !(Maybe Text)
    , _uId        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uStatus'
--
-- * 'uKind'
--
-- * 'uCreated'
--
-- * 'uAnalytics'
--
-- * 'uLongURL'
--
-- * 'uId'
url
    :: URL
url =
    URL
    { _uStatus = Nothing
    , _uKind = "urlshortener#url"
    , _uCreated = Nothing
    , _uAnalytics = Nothing
    , _uLongURL = Nothing
    , _uId = Nothing
    }

-- | Status of the target URL. Possible values: \"OK\", \"MALWARE\",
-- \"PHISHING\", or \"REMOVED\". A URL might be marked \"REMOVED\" if it
-- was flagged as spam, for example.
uStatus :: Lens' URL (Maybe Text)
uStatus = lens _uStatus (\ s a -> s{_uStatus = a})

-- | The fixed string \"urlshortener#url\".
uKind :: Lens' URL Text
uKind = lens _uKind (\ s a -> s{_uKind = a})

-- | Time the short URL was created; ISO 8601 representation using the
-- yyyy-MM-dd\'T\'HH:mm:ss.SSSZZ format, e.g.
-- \"2010-10-14T19:01:24.944+00:00\".
uCreated :: Lens' URL (Maybe Text)
uCreated = lens _uCreated (\ s a -> s{_uCreated = a})

-- | A summary of the click analytics for the short and long URL. Might not
-- be present if not requested or currently unavailable.
uAnalytics :: Lens' URL (Maybe AnalyticsSummary)
uAnalytics
  = lens _uAnalytics (\ s a -> s{_uAnalytics = a})

-- | Long URL, e.g. \"http:\/\/www.google.com\/\". Might not be present if
-- the status is \"REMOVED\".
uLongURL :: Lens' URL (Maybe Text)
uLongURL = lens _uLongURL (\ s a -> s{_uLongURL = a})

-- | Short URL, e.g. \"http:\/\/goo.gl\/l6MS\".
uId :: Lens' URL (Maybe Text)
uId = lens _uId (\ s a -> s{_uId = a})

instance FromJSON URL where
        parseJSON
          = withObject "URL"
              (\ o ->
                 URL <$>
                   (o .:? "status") <*>
                     (o .:? "kind" .!= "urlshortener#url")
                     <*> (o .:? "created")
                     <*> (o .:? "analytics")
                     <*> (o .:? "longUrl")
                     <*> (o .:? "id"))

instance ToJSON URL where
        toJSON URL{..}
          = object
              (catMaybes
                 [("status" .=) <$> _uStatus, Just ("kind" .= _uKind),
                  ("created" .=) <$> _uCreated,
                  ("analytics" .=) <$> _uAnalytics,
                  ("longUrl" .=) <$> _uLongURL, ("id" .=) <$> _uId])

--
-- /See:/ 'stringCount' smart constructor.
data StringCount = StringCount
    { _scCount :: !(Maybe (JSONText Int64))
    , _scId    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StringCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scCount'
--
-- * 'scId'
stringCount
    :: StringCount
stringCount =
    StringCount
    { _scCount = Nothing
    , _scId = Nothing
    }

-- | Number of clicks for this top entry, e.g. for this particular country or
-- browser.
scCount :: Lens' StringCount (Maybe Int64)
scCount
  = lens _scCount (\ s a -> s{_scCount = a}) .
      mapping _Coerce

-- | Label assigned to this top entry, e.g. \"US\" or \"Chrome\".
scId :: Lens' StringCount (Maybe Text)
scId = lens _scId (\ s a -> s{_scId = a})

instance FromJSON StringCount where
        parseJSON
          = withObject "StringCount"
              (\ o ->
                 StringCount <$> (o .:? "count") <*> (o .:? "id"))

instance ToJSON StringCount where
        toJSON StringCount{..}
          = object
              (catMaybes
                 [("count" .=) <$> _scCount, ("id" .=) <$> _scId])

--
-- /See:/ 'analyticsSnapshot' smart constructor.
data AnalyticsSnapshot = AnalyticsSnapshot
    { _asPlatforms      :: !(Maybe [StringCount])
    , _asShortURLClicks :: !(Maybe (JSONText Int64))
    , _asReferrers      :: !(Maybe [StringCount])
    , _asCountries      :: !(Maybe [StringCount])
    , _asLongURLClicks  :: !(Maybe (JSONText Int64))
    , _asBrowsers       :: !(Maybe [StringCount])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyticsSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asPlatforms'
--
-- * 'asShortURLClicks'
--
-- * 'asReferrers'
--
-- * 'asCountries'
--
-- * 'asLongURLClicks'
--
-- * 'asBrowsers'
analyticsSnapshot
    :: AnalyticsSnapshot
analyticsSnapshot =
    AnalyticsSnapshot
    { _asPlatforms = Nothing
    , _asShortURLClicks = Nothing
    , _asReferrers = Nothing
    , _asCountries = Nothing
    , _asLongURLClicks = Nothing
    , _asBrowsers = Nothing
    }

-- | Top platforms or OSes, e.g. \"Windows\"; sorted by (descending) click
-- counts. Only present if this data is available.
asPlatforms :: Lens' AnalyticsSnapshot [StringCount]
asPlatforms
  = lens _asPlatforms (\ s a -> s{_asPlatforms = a}) .
      _Default
      . _Coerce

-- | Number of clicks on this short URL.
asShortURLClicks :: Lens' AnalyticsSnapshot (Maybe Int64)
asShortURLClicks
  = lens _asShortURLClicks
      (\ s a -> s{_asShortURLClicks = a})
      . mapping _Coerce

-- | Top referring hosts, e.g. \"www.google.com\"; sorted by (descending)
-- click counts. Only present if this data is available.
asReferrers :: Lens' AnalyticsSnapshot [StringCount]
asReferrers
  = lens _asReferrers (\ s a -> s{_asReferrers = a}) .
      _Default
      . _Coerce

-- | Top countries (expressed as country codes), e.g. \"US\" or \"DE\";
-- sorted by (descending) click counts. Only present if this data is
-- available.
asCountries :: Lens' AnalyticsSnapshot [StringCount]
asCountries
  = lens _asCountries (\ s a -> s{_asCountries = a}) .
      _Default
      . _Coerce

-- | Number of clicks on all goo.gl short URLs pointing to this long URL.
asLongURLClicks :: Lens' AnalyticsSnapshot (Maybe Int64)
asLongURLClicks
  = lens _asLongURLClicks
      (\ s a -> s{_asLongURLClicks = a})
      . mapping _Coerce

-- | Top browsers, e.g. \"Chrome\"; sorted by (descending) click counts. Only
-- present if this data is available.
asBrowsers :: Lens' AnalyticsSnapshot [StringCount]
asBrowsers
  = lens _asBrowsers (\ s a -> s{_asBrowsers = a}) .
      _Default
      . _Coerce

instance FromJSON AnalyticsSnapshot where
        parseJSON
          = withObject "AnalyticsSnapshot"
              (\ o ->
                 AnalyticsSnapshot <$>
                   (o .:? "platforms" .!= mempty) <*>
                     (o .:? "shortUrlClicks")
                     <*> (o .:? "referrers" .!= mempty)
                     <*> (o .:? "countries" .!= mempty)
                     <*> (o .:? "longUrlClicks")
                     <*> (o .:? "browsers" .!= mempty))

instance ToJSON AnalyticsSnapshot where
        toJSON AnalyticsSnapshot{..}
          = object
              (catMaybes
                 [("platforms" .=) <$> _asPlatforms,
                  ("shortUrlClicks" .=) <$> _asShortURLClicks,
                  ("referrers" .=) <$> _asReferrers,
                  ("countries" .=) <$> _asCountries,
                  ("longUrlClicks" .=) <$> _asLongURLClicks,
                  ("browsers" .=) <$> _asBrowsers])

--
-- /See:/ 'analyticsSummary' smart constructor.
data AnalyticsSummary = AnalyticsSummary
    { _asWeek     :: !(Maybe AnalyticsSnapshot)
    , _asAllTime  :: !(Maybe AnalyticsSnapshot)
    , _asDay      :: !(Maybe AnalyticsSnapshot)
    , _asTwoHours :: !(Maybe AnalyticsSnapshot)
    , _asMonth    :: !(Maybe AnalyticsSnapshot)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyticsSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asWeek'
--
-- * 'asAllTime'
--
-- * 'asDay'
--
-- * 'asTwoHours'
--
-- * 'asMonth'
analyticsSummary
    :: AnalyticsSummary
analyticsSummary =
    AnalyticsSummary
    { _asWeek = Nothing
    , _asAllTime = Nothing
    , _asDay = Nothing
    , _asTwoHours = Nothing
    , _asMonth = Nothing
    }

-- | Click analytics over the last week.
asWeek :: Lens' AnalyticsSummary (Maybe AnalyticsSnapshot)
asWeek = lens _asWeek (\ s a -> s{_asWeek = a})

-- | Click analytics over all time.
asAllTime :: Lens' AnalyticsSummary (Maybe AnalyticsSnapshot)
asAllTime
  = lens _asAllTime (\ s a -> s{_asAllTime = a})

-- | Click analytics over the last day.
asDay :: Lens' AnalyticsSummary (Maybe AnalyticsSnapshot)
asDay = lens _asDay (\ s a -> s{_asDay = a})

-- | Click analytics over the last two hours.
asTwoHours :: Lens' AnalyticsSummary (Maybe AnalyticsSnapshot)
asTwoHours
  = lens _asTwoHours (\ s a -> s{_asTwoHours = a})

-- | Click analytics over the last month.
asMonth :: Lens' AnalyticsSummary (Maybe AnalyticsSnapshot)
asMonth = lens _asMonth (\ s a -> s{_asMonth = a})

instance FromJSON AnalyticsSummary where
        parseJSON
          = withObject "AnalyticsSummary"
              (\ o ->
                 AnalyticsSummary <$>
                   (o .:? "week") <*> (o .:? "allTime") <*>
                     (o .:? "day")
                     <*> (o .:? "twoHours")
                     <*> (o .:? "month"))

instance ToJSON AnalyticsSummary where
        toJSON AnalyticsSummary{..}
          = object
              (catMaybes
                 [("week" .=) <$> _asWeek,
                  ("allTime" .=) <$> _asAllTime, ("day" .=) <$> _asDay,
                  ("twoHours" .=) <$> _asTwoHours,
                  ("month" .=) <$> _asMonth])

--
-- /See:/ 'urlHistory' smart constructor.
data URLHistory = URLHistory
    { _uhTotalItems    :: !(Maybe (JSONText Int32))
    , _uhNextPageToken :: !(Maybe Text)
    , _uhItemsPerPage  :: !(Maybe (JSONText Int32))
    , _uhKind          :: !Text
    , _uhItems         :: !(Maybe [URL])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uhTotalItems'
--
-- * 'uhNextPageToken'
--
-- * 'uhItemsPerPage'
--
-- * 'uhKind'
--
-- * 'uhItems'
urlHistory
    :: URLHistory
urlHistory =
    URLHistory
    { _uhTotalItems = Nothing
    , _uhNextPageToken = Nothing
    , _uhItemsPerPage = Nothing
    , _uhKind = "urlshortener#urlHistory"
    , _uhItems = Nothing
    }

-- | Total number of short URLs associated with this user (may be
-- approximate).
uhTotalItems :: Lens' URLHistory (Maybe Int32)
uhTotalItems
  = lens _uhTotalItems (\ s a -> s{_uhTotalItems = a})
      . mapping _Coerce

-- | A token to provide to get the next page of results.
uhNextPageToken :: Lens' URLHistory (Maybe Text)
uhNextPageToken
  = lens _uhNextPageToken
      (\ s a -> s{_uhNextPageToken = a})

-- | Number of items returned with each full \"page\" of results. Note that
-- the last page could have fewer items than the \"itemsPerPage\" value.
uhItemsPerPage :: Lens' URLHistory (Maybe Int32)
uhItemsPerPage
  = lens _uhItemsPerPage
      (\ s a -> s{_uhItemsPerPage = a})
      . mapping _Coerce

-- | The fixed string \"urlshortener#urlHistory\".
uhKind :: Lens' URLHistory Text
uhKind = lens _uhKind (\ s a -> s{_uhKind = a})

-- | A list of URL resources.
uhItems :: Lens' URLHistory [URL]
uhItems
  = lens _uhItems (\ s a -> s{_uhItems = a}) . _Default
      . _Coerce

instance FromJSON URLHistory where
        parseJSON
          = withObject "URLHistory"
              (\ o ->
                 URLHistory <$>
                   (o .:? "totalItems") <*> (o .:? "nextPageToken") <*>
                     (o .:? "itemsPerPage")
                     <*> (o .:? "kind" .!= "urlshortener#urlHistory")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON URLHistory where
        toJSON URLHistory{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _uhTotalItems,
                  ("nextPageToken" .=) <$> _uhNextPageToken,
                  ("itemsPerPage" .=) <$> _uhItemsPerPage,
                  Just ("kind" .= _uhKind), ("items" .=) <$> _uhItems])
