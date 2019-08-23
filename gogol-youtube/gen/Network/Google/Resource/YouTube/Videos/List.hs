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
-- Returns a list of videos that match the API request parameters.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.videos.list@.
module Network.Google.Resource.YouTube.Videos.List
    (
    -- * REST Resource
      VideosListResource

    -- * Creating a Request
    , videosList
    , VideosList

    -- * Request Lenses
    , vlChart
    , vlPart
    , vlRegionCode
    , vlLocale
    , vlMyRating
    , vlMaxHeight
    , vlHl
    , vlOnBehalfOfContentOwner
    , vlVideoCategoryId
    , vlMaxWidth
    , vlId
    , vlPageToken
    , vlMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.videos.list@ method which the
-- 'VideosList' request conforms to.
type VideosListResource =
     "youtube" :>
       "v3" :>
         "videos" :>
           QueryParam "part" Text :>
             QueryParam "chart" VideosListChart :>
               QueryParam "regionCode" Text :>
                 QueryParam "locale" Text :>
                   QueryParam "myRating" VideosListMyRating :>
                     QueryParam "maxHeight" (Textual Word32) :>
                       QueryParam "hl" Text :>
                         QueryParam "onBehalfOfContentOwner" Text :>
                           QueryParam "videoCategoryId" Text :>
                             QueryParam "maxWidth" (Textual Word32) :>
                               QueryParam "id" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "maxResults" (Textual Word32) :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] VideoListResponse

-- | Returns a list of videos that match the API request parameters.
--
-- /See:/ 'videosList' smart constructor.
data VideosList =
  VideosList'
    { _vlChart                  :: !(Maybe VideosListChart)
    , _vlPart                   :: !Text
    , _vlRegionCode             :: !(Maybe Text)
    , _vlLocale                 :: !(Maybe Text)
    , _vlMyRating               :: !(Maybe VideosListMyRating)
    , _vlMaxHeight              :: !(Maybe (Textual Word32))
    , _vlHl                     :: !(Maybe Text)
    , _vlOnBehalfOfContentOwner :: !(Maybe Text)
    , _vlVideoCategoryId        :: !Text
    , _vlMaxWidth               :: !(Maybe (Textual Word32))
    , _vlId                     :: !(Maybe Text)
    , _vlPageToken              :: !(Maybe Text)
    , _vlMaxResults             :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VideosList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlChart'
--
-- * 'vlPart'
--
-- * 'vlRegionCode'
--
-- * 'vlLocale'
--
-- * 'vlMyRating'
--
-- * 'vlMaxHeight'
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
videosList
    :: Text -- ^ 'vlPart'
    -> VideosList
videosList pVlPart_ =
  VideosList'
    { _vlChart = Nothing
    , _vlPart = pVlPart_
    , _vlRegionCode = Nothing
    , _vlLocale = Nothing
    , _vlMyRating = Nothing
    , _vlMaxHeight = Nothing
    , _vlHl = Nothing
    , _vlOnBehalfOfContentOwner = Nothing
    , _vlVideoCategoryId = "0"
    , _vlMaxWidth = Nothing
    , _vlId = Nothing
    , _vlPageToken = Nothing
    , _vlMaxResults = 5
    }


-- | The chart parameter identifies the chart that you want to retrieve.
vlChart :: Lens' VideosList (Maybe VideosListChart)
vlChart = lens _vlChart (\ s a -> s{_vlChart = a})

-- | The part parameter specifies a comma-separated list of one or more video
-- resource properties that the API response will include. If the parameter
-- identifies a property that contains child properties, the child
-- properties will be included in the response. For example, in a video
-- resource, the snippet property contains the channelId, title,
-- description, tags, and categoryId properties. As such, if you set
-- part=snippet, the API response will contain all of those properties.
vlPart :: Lens' VideosList Text
vlPart = lens _vlPart (\ s a -> s{_vlPart = a})

-- | The regionCode parameter instructs the API to select a video chart
-- available in the specified region. This parameter can only be used in
-- conjunction with the chart parameter. The parameter value is an ISO
-- 3166-1 alpha-2 country code.
vlRegionCode :: Lens' VideosList (Maybe Text)
vlRegionCode
  = lens _vlRegionCode (\ s a -> s{_vlRegionCode = a})

-- | DEPRECATED
vlLocale :: Lens' VideosList (Maybe Text)
vlLocale = lens _vlLocale (\ s a -> s{_vlLocale = a})

-- | Set this parameter\'s value to like or dislike to instruct the API to
-- only return videos liked or disliked by the authenticated user.
vlMyRating :: Lens' VideosList (Maybe VideosListMyRating)
vlMyRating
  = lens _vlMyRating (\ s a -> s{_vlMyRating = a})

-- | The maxHeight parameter specifies a maximum height of the embedded
-- player. If maxWidth is provided, maxHeight may not be reached in order
-- to not violate the width request.
vlMaxHeight :: Lens' VideosList (Maybe Word32)
vlMaxHeight
  = lens _vlMaxHeight (\ s a -> s{_vlMaxHeight = a}) .
      mapping _Coerce

-- | The hl parameter instructs the API to retrieve localized resource
-- metadata for a specific application language that the YouTube website
-- supports. The parameter value must be a language code included in the
-- list returned by the i18nLanguages.list method. If localized resource
-- details are available in that language, the resource\'s
-- snippet.localized object will contain the localized values. However, if
-- localized details are not available, the snippet.localized object will
-- contain resource details in the resource\'s default language.
vlHl :: Lens' VideosList (Maybe Text)
vlHl = lens _vlHl (\ s a -> s{_vlHl = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
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

-- | The videoCategoryId parameter identifies the video category for which
-- the chart should be retrieved. This parameter can only be used in
-- conjunction with the chart parameter. By default, charts are not
-- restricted to a particular category.
vlVideoCategoryId :: Lens' VideosList Text
vlVideoCategoryId
  = lens _vlVideoCategoryId
      (\ s a -> s{_vlVideoCategoryId = a})

-- | The maxWidth parameter specifies a maximum width of the embedded player.
-- If maxHeight is provided, maxWidth may not be reached in order to not
-- violate the height request.
vlMaxWidth :: Lens' VideosList (Maybe Word32)
vlMaxWidth
  = lens _vlMaxWidth (\ s a -> s{_vlMaxWidth = a}) .
      mapping _Coerce

-- | The id parameter specifies a comma-separated list of the YouTube video
-- ID(s) for the resource(s) that are being retrieved. In a video resource,
-- the id property specifies the video\'s ID.
vlId :: Lens' VideosList (Maybe Text)
vlId = lens _vlId (\ s a -> s{_vlId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
-- Note: This parameter is supported for use in conjunction with the
-- myRating and chart parameters, but it is not supported for use in
-- conjunction with the id parameter.
vlPageToken :: Lens' VideosList (Maybe Text)
vlPageToken
  = lens _vlPageToken (\ s a -> s{_vlPageToken = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set. Note: This parameter is supported
-- for use in conjunction with the myRating and chart parameters, but it is
-- not supported for use in conjunction with the id parameter.
vlMaxResults :: Lens' VideosList Word32
vlMaxResults
  = lens _vlMaxResults (\ s a -> s{_vlMaxResults = a})
      . _Coerce

instance GoogleRequest VideosList where
        type Rs VideosList = VideoListResponse
        type Scopes VideosList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient VideosList'{..}
          = go (Just _vlPart) _vlChart _vlRegionCode _vlLocale
              _vlMyRating
              _vlMaxHeight
              _vlHl
              _vlOnBehalfOfContentOwner
              (Just _vlVideoCategoryId)
              _vlMaxWidth
              _vlId
              _vlPageToken
              (Just _vlMaxResults)
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy VideosListResource)
                      mempty
