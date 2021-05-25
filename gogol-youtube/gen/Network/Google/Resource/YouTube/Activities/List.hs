{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Activities.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.activities.list@.
module Network.Google.Resource.YouTube.Activities.List
    (
    -- * REST Resource
      ActivitiesListResource

    -- * Creating a Request
    , activitiesList
    , ActivitiesList

    -- * Request Lenses
    , alPublishedAfter
    , alXgafv
    , alPart
    , alHome
    , alMine
    , alUploadProtocol
    , alRegionCode
    , alAccessToken
    , alUploadType
    , alChannelId
    , alPageToken
    , alMaxResults
    , alPublishedBefore
    , alCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.activities.list@ method which the
-- 'ActivitiesList' request conforms to.
type ActivitiesListResource =
     "youtube" :>
       "v3" :>
         "activities" :>
           QueryParams "part" Text :>
             QueryParam "publishedAfter" DateTime' :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "home" Bool :>
                   QueryParam "mine" Bool :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "regionCode" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "channelId" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "maxResults" (Textual Word32) :>
                                   QueryParam "publishedBefore" DateTime' :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ActivityListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'activitiesList' smart constructor.
data ActivitiesList =
  ActivitiesList'
    { _alPublishedAfter :: !(Maybe DateTime')
    , _alXgafv :: !(Maybe Xgafv)
    , _alPart :: ![Text]
    , _alHome :: !(Maybe Bool)
    , _alMine :: !(Maybe Bool)
    , _alUploadProtocol :: !(Maybe Text)
    , _alRegionCode :: !(Maybe Text)
    , _alAccessToken :: !(Maybe Text)
    , _alUploadType :: !(Maybe Text)
    , _alChannelId :: !(Maybe Text)
    , _alPageToken :: !(Maybe Text)
    , _alMaxResults :: !(Textual Word32)
    , _alPublishedBefore :: !(Maybe DateTime')
    , _alCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivitiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alPublishedAfter'
--
-- * 'alXgafv'
--
-- * 'alPart'
--
-- * 'alHome'
--
-- * 'alMine'
--
-- * 'alUploadProtocol'
--
-- * 'alRegionCode'
--
-- * 'alAccessToken'
--
-- * 'alUploadType'
--
-- * 'alChannelId'
--
-- * 'alPageToken'
--
-- * 'alMaxResults'
--
-- * 'alPublishedBefore'
--
-- * 'alCallback'
activitiesList
    :: [Text] -- ^ 'alPart'
    -> ActivitiesList
activitiesList pAlPart_ =
  ActivitiesList'
    { _alPublishedAfter = Nothing
    , _alXgafv = Nothing
    , _alPart = _Coerce # pAlPart_
    , _alHome = Nothing
    , _alMine = Nothing
    , _alUploadProtocol = Nothing
    , _alRegionCode = Nothing
    , _alAccessToken = Nothing
    , _alUploadType = Nothing
    , _alChannelId = Nothing
    , _alPageToken = Nothing
    , _alMaxResults = 5
    , _alPublishedBefore = Nothing
    , _alCallback = Nothing
    }


alPublishedAfter :: Lens' ActivitiesList (Maybe UTCTime)
alPublishedAfter
  = lens _alPublishedAfter
      (\ s a -> s{_alPublishedAfter = a})
      . mapping _DateTime

-- | V1 error format.
alXgafv :: Lens' ActivitiesList (Maybe Xgafv)
alXgafv = lens _alXgafv (\ s a -> s{_alXgafv = a})

-- | The *part* parameter specifies a comma-separated list of one or more
-- activity resource properties that the API response will include. If the
-- parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in an
-- activity resource, the snippet property contains other properties that
-- identify the type of activity, a display title for the activity, and so
-- forth. If you set *part=snippet*, the API response will also contain all
-- of those nested properties.
alPart :: Lens' ActivitiesList [Text]
alPart
  = lens _alPart (\ s a -> s{_alPart = a}) . _Coerce

alHome :: Lens' ActivitiesList (Maybe Bool)
alHome = lens _alHome (\ s a -> s{_alHome = a})

alMine :: Lens' ActivitiesList (Maybe Bool)
alMine = lens _alMine (\ s a -> s{_alMine = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alUploadProtocol :: Lens' ActivitiesList (Maybe Text)
alUploadProtocol
  = lens _alUploadProtocol
      (\ s a -> s{_alUploadProtocol = a})

alRegionCode :: Lens' ActivitiesList (Maybe Text)
alRegionCode
  = lens _alRegionCode (\ s a -> s{_alRegionCode = a})

-- | OAuth access token.
alAccessToken :: Lens' ActivitiesList (Maybe Text)
alAccessToken
  = lens _alAccessToken
      (\ s a -> s{_alAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alUploadType :: Lens' ActivitiesList (Maybe Text)
alUploadType
  = lens _alUploadType (\ s a -> s{_alUploadType = a})

alChannelId :: Lens' ActivitiesList (Maybe Text)
alChannelId
  = lens _alChannelId (\ s a -> s{_alChannelId = a})

-- | The *pageToken* parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
alPageToken :: Lens' ActivitiesList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | The *maxResults* parameter specifies the maximum number of items that
-- should be returned in the result set.
alMaxResults :: Lens' ActivitiesList Word32
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})
      . _Coerce

alPublishedBefore :: Lens' ActivitiesList (Maybe UTCTime)
alPublishedBefore
  = lens _alPublishedBefore
      (\ s a -> s{_alPublishedBefore = a})
      . mapping _DateTime

-- | JSONP
alCallback :: Lens' ActivitiesList (Maybe Text)
alCallback
  = lens _alCallback (\ s a -> s{_alCallback = a})

instance GoogleRequest ActivitiesList where
        type Rs ActivitiesList = ActivityListResponse
        type Scopes ActivitiesList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly"]
        requestClient ActivitiesList'{..}
          = go _alPart _alPublishedAfter _alXgafv _alHome
              _alMine
              _alUploadProtocol
              _alRegionCode
              _alAccessToken
              _alUploadType
              _alChannelId
              _alPageToken
              (Just _alMaxResults)
              _alPublishedBefore
              _alCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy ActivitiesListResource)
                      mempty
