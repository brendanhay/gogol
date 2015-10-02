{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

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
-- /See:/ 'uRL' smart constructor.
data URL = URL
    { _urlStatus    :: !(Maybe Text)
    , _urlKind      :: !Text
    , _urlCreated   :: !(Maybe Text)
    , _urlAnalytics :: !(Maybe AnalyticsSummary)
    , _urlLongURL   :: !(Maybe Text)
    , _urlId        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urlStatus'
--
-- * 'urlKind'
--
-- * 'urlCreated'
--
-- * 'urlAnalytics'
--
-- * 'urlLongURL'
--
-- * 'urlId'
uRL
    :: URL
uRL =
    URL
    { _urlStatus = Nothing
    , _urlKind = "urlshortener#url"
    , _urlCreated = Nothing
    , _urlAnalytics = Nothing
    , _urlLongURL = Nothing
    , _urlId = Nothing
    }

-- | Status of the target URL. Possible values: \"OK\", \"MALWARE\",
-- \"PHISHING\", or \"REMOVED\". A URL might be marked \"REMOVED\" if it
-- was flagged as spam, for example.
urlStatus :: Lens' URL (Maybe Text)
urlStatus
  = lens _urlStatus (\ s a -> s{_urlStatus = a})

-- | The fixed string \"urlshortener#url\".
urlKind :: Lens' URL Text
urlKind = lens _urlKind (\ s a -> s{_urlKind = a})

-- | Time the short URL was created; ISO 8601 representation using the
-- yyyy-MM-dd\'T\'HH:mm:ss.SSSZZ format, e.g.
-- \"2010-10-14T19:01:24.944+00:00\".
urlCreated :: Lens' URL (Maybe Text)
urlCreated
  = lens _urlCreated (\ s a -> s{_urlCreated = a})

-- | A summary of the click analytics for the short and long URL. Might not
-- be present if not requested or currently unavailable.
urlAnalytics :: Lens' URL (Maybe AnalyticsSummary)
urlAnalytics
  = lens _urlAnalytics (\ s a -> s{_urlAnalytics = a})

-- | Long URL, e.g. \"http:\/\/www.google.com\/\". Might not be present if
-- the status is \"REMOVED\".
urlLongURL :: Lens' URL (Maybe Text)
urlLongURL
  = lens _urlLongURL (\ s a -> s{_urlLongURL = a})

-- | Short URL, e.g. \"http:\/\/goo.gl\/l6MS\".
urlId :: Lens' URL (Maybe Text)
urlId = lens _urlId (\ s a -> s{_urlId = a})

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
                 [("status" .=) <$> _urlStatus,
                  Just ("kind" .= _urlKind),
                  ("created" .=) <$> _urlCreated,
                  ("analytics" .=) <$> _urlAnalytics,
                  ("longUrl" .=) <$> _urlLongURL,
                  ("id" .=) <$> _urlId])

--
-- /See:/ 'stringCount' smart constructor.
data StringCount = StringCount
    { _scCount :: !(Maybe Int64)
    , _scId    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
scCount = lens _scCount (\ s a -> s{_scCount = a})

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
    , _asShortURLClicks :: !(Maybe Int64)
    , _asReferrers      :: !(Maybe [StringCount])
    , _asCountries      :: !(Maybe [StringCount])
    , _asLongURLClicks  :: !(Maybe Int64)
    , _asBrowsers       :: !(Maybe [StringCount])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- /See:/ 'uRLHistory' smart constructor.
data URLHistory = URLHistory
    { _uhTotalItems    :: !(Maybe Int32)
    , _uhNextPageToken :: !(Maybe Text)
    , _uhItemsPerPage  :: !(Maybe Int32)
    , _uhKind          :: !Text
    , _uhItems         :: !(Maybe [URL])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
uRLHistory
    :: URLHistory
uRLHistory =
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
