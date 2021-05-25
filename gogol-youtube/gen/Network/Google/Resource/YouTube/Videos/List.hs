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
-- Module      : Network.Google.Resource.YouTube.Videos.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videos.list@.
module Network.Google.Resource.YouTube.Videos.List
    (
    -- * REST Resource
      VideosListResource

    -- * Creating a Request
    , videosList
    , VideosList

    -- * Request Lenses
    , vlChart
    , vlXgafv
    , vlPart
    , vlUploadProtocol
    , vlRegionCode
    , vlLocale
    , vlAccessToken
    , vlMyRating
    , vlMaxHeight
    , vlUploadType
    , vlHl
    , vlOnBehalfOfContentOwner
    , vlVideoCategoryId
    , vlMaxWidth
    , vlId
    , vlPageToken
    , vlMaxResults
    , vlCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.videos.list@ method which the
-- 'VideosList' request conforms to.
type VideosListResource =
     "youtube" :>
       "v3" :>
         "videos" :>
           QueryParams "part" Text :>
             QueryParam "chart" VideosListChart :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "regionCode" Text :>
                     QueryParam "locale" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "myRating" VideosListMyRating :>
                           QueryParam "maxHeight" (Textual Int32) :>
                             QueryParam "uploadType" Text :>
                               QueryParam "hl" Text :>
                                 QueryParam "onBehalfOfContentOwner" Text :>
                                   QueryParam "videoCategoryId" Text :>
                                     QueryParam "maxWidth" (Textual Int32) :>
                                       QueryParams "id" Text :>
                                         QueryParam "pageToken" Text :>
                                           QueryParam "maxResults"
                                             (Textual Word32)
                                             :>
                                             QueryParam "callback" Text :>
                                               QueryParam "alt" AltJSON :>
                                                 Get '[JSON] VideoListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'videosList' smart constructor.
data VideosList =
  VideosList'
    { _vlChart :: !(Maybe VideosListChart)
    , _vlXgafv :: !(Maybe Xgafv)
    , _vlPart :: ![Text]
    , _vlUploadProtocol :: !(Maybe Text)
    , _vlRegionCode :: !(Maybe Text)
    , _vlLocale :: !(Maybe Text)
    , _vlAccessToken :: !(Maybe Text)
    , _vlMyRating :: !(Maybe VideosListMyRating)
    , _vlMaxHeight :: !(Maybe (Textual Int32))
    , _vlUploadType :: !(Maybe Text)
    , _vlHl :: !(Maybe Text)
    , _vlOnBehalfOfContentOwner :: !(Maybe Text)
    , _vlVideoCategoryId :: !Text
    , _vlMaxWidth :: !(Maybe (Textual Int32))
    , _vlId :: !(Maybe [Text])
    , _vlPageToken :: !(Maybe Text)
    , _vlMaxResults :: !(Textual Word32)
    , _vlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VideosList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlChart'
--
-- * 'vlXgafv'
--
-- * 'vlPart'
--
-- * 'vlUploadProtocol'
--
-- * 'vlRegionCode'
--
-- * 'vlLocale'
--
-- * 'vlAccessToken'
--
-- * 'vlMyRating'
--
-- * 'vlMaxHeight'
--
-- * 'vlUploadType'
--
-- * 'vlHl'
--
-- * 'vlOnBehalfOfContentOwner'
--
-- * 'vlVideoCategoryId'
--
-- * 'vlMaxWidth'
--
-- * 'vlId'
--
-- * 'vlPageToken'
--
-- * 'vlMaxResults'
--
-- * 'vlCallback'
videosList
    :: [Text] -- ^ 'vlPart'
    -> VideosList
videosList pVlPart_ =
  VideosList'
    { _vlChart = Nothing
    , _vlXgafv = Nothing
    , _vlPart = _Coerce # pVlPart_
    , _vlUploadProtocol = Nothing
    , _vlRegionCode = Nothing
    , _vlLocale = Nothing
    , _vlAccessToken = Nothing
    , _vlMyRating = Nothing
    , _vlMaxHeight = Nothing
    , _vlUploadType = Nothing
    , _vlHl = Nothing
    , _vlOnBehalfOfContentOwner = Nothing
    , _vlVideoCategoryId = "0"
    , _vlMaxWidth = Nothing
    , _vlId = Nothing
    , _vlPageToken = Nothing
    , _vlMaxResults = 5
    , _vlCallback = Nothing
    }


-- | Return the videos that are in the specified chart.
vlChart :: Lens' VideosList (Maybe VideosListChart)
vlChart = lens _vlChart (\ s a -> s{_vlChart = a})

-- | V1 error format.
vlXgafv :: Lens' VideosList (Maybe Xgafv)
vlXgafv = lens _vlXgafv (\ s a -> s{_vlXgafv = a})

-- | The *part* parameter specifies a comma-separated list of one or more
-- video resource properties that the API response will include. If the
-- parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in a
-- video resource, the snippet property contains the channelId, title,
-- description, tags, and categoryId properties. As such, if you set
-- *part=snippet*, the API response will contain all of those properties.
vlPart :: Lens' VideosList [Text]
vlPart
  = lens _vlPart (\ s a -> s{_vlPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vlUploadProtocol :: Lens' VideosList (Maybe Text)
vlUploadProtocol
  = lens _vlUploadProtocol
      (\ s a -> s{_vlUploadProtocol = a})

-- | Use a chart that is specific to the specified region
vlRegionCode :: Lens' VideosList (Maybe Text)
vlRegionCode
  = lens _vlRegionCode (\ s a -> s{_vlRegionCode = a})

vlLocale :: Lens' VideosList (Maybe Text)
vlLocale = lens _vlLocale (\ s a -> s{_vlLocale = a})

-- | OAuth access token.
vlAccessToken :: Lens' VideosList (Maybe Text)
vlAccessToken
  = lens _vlAccessToken
      (\ s a -> s{_vlAccessToken = a})

-- | Return videos liked\/disliked by the authenticated user. Does not
-- support RateType.RATED_TYPE_NONE.
vlMyRating :: Lens' VideosList (Maybe VideosListMyRating)
vlMyRating
  = lens _vlMyRating (\ s a -> s{_vlMyRating = a})

vlMaxHeight :: Lens' VideosList (Maybe Int32)
vlMaxHeight
  = lens _vlMaxHeight (\ s a -> s{_vlMaxHeight = a}) .
      mapping _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vlUploadType :: Lens' VideosList (Maybe Text)
vlUploadType
  = lens _vlUploadType (\ s a -> s{_vlUploadType = a})

-- | Stands for \"host language\". Specifies the localization language of the
-- metadata to be filled into snippet.localized. The field is filled with
-- the default metadata if there is no localization in the specified
-- language. The parameter value must be a language code included in the
-- list returned by the i18nLanguages.list method (e.g. en_US, es_MX).
vlHl :: Lens' VideosList (Maybe Text)
vlHl = lens _vlHl (\ s a -> s{_vlHl = a})

-- | *Note:* This parameter is intended exclusively for YouTube content
-- partners. The *onBehalfOfContentOwner* parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
vlOnBehalfOfContentOwner :: Lens' VideosList (Maybe Text)
vlOnBehalfOfContentOwner
  = lens _vlOnBehalfOfContentOwner
      (\ s a -> s{_vlOnBehalfOfContentOwner = a})

-- | Use chart that is specific to the specified video category
vlVideoCategoryId :: Lens' VideosList Text
vlVideoCategoryId
  = lens _vlVideoCategoryId
      (\ s a -> s{_vlVideoCategoryId = a})

-- | Return the player with maximum height specified in
vlMaxWidth :: Lens' VideosList (Maybe Int32)
vlMaxWidth
  = lens _vlMaxWidth (\ s a -> s{_vlMaxWidth = a}) .
      mapping _Coerce

-- | Return videos with the given ids.
vlId :: Lens' VideosList [Text]
vlId
  = lens _vlId (\ s a -> s{_vlId = a}) . _Default .
      _Coerce

-- | The *pageToken* parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
-- *Note:* This parameter is supported for use in conjunction with the
-- myRating and chart parameters, but it is not supported for use in
-- conjunction with the id parameter.
vlPageToken :: Lens' VideosList (Maybe Text)
vlPageToken
  = lens _vlPageToken (\ s a -> s{_vlPageToken = a})

-- | The *maxResults* parameter specifies the maximum number of items that
-- should be returned in the result set. *Note:* This parameter is
-- supported for use in conjunction with the myRating and chart parameters,
-- but it is not supported for use in conjunction with the id parameter.
vlMaxResults :: Lens' VideosList Word32
vlMaxResults
  = lens _vlMaxResults (\ s a -> s{_vlMaxResults = a})
      . _Coerce

-- | JSONP
vlCallback :: Lens' VideosList (Maybe Text)
vlCallback
  = lens _vlCallback (\ s a -> s{_vlCallback = a})

instance GoogleRequest VideosList where
        type Rs VideosList = VideoListResponse
        type Scopes VideosList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient VideosList'{..}
          = go _vlPart _vlChart _vlXgafv _vlUploadProtocol
              _vlRegionCode
              _vlLocale
              _vlAccessToken
              _vlMyRating
              _vlMaxHeight
              _vlUploadType
              _vlHl
              _vlOnBehalfOfContentOwner
              (Just _vlVideoCategoryId)
              _vlMaxWidth
              (_vlId ^. _Default)
              _vlPageToken
              (Just _vlMaxResults)
              _vlCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy VideosListResource)
                      mempty
