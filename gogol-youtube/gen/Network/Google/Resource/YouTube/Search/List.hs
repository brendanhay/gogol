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
-- Module      : Network.Google.Resource.YouTube.Search.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a collection of search results that match the query parameters
-- specified in the API request. By default, a search result set identifies
-- matching video, channel, and playlist resources, but you can also
-- configure queries to only retrieve a specific type of resource.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.search.list@.
module Network.Google.Resource.YouTube.Search.List
    (
    -- * REST Resource
      SearchListResource

    -- * Creating a Request
    , searchList
    , SearchList

    -- * Request Lenses
    , slPublishedAfter
    , slVideoDefinition
    , slPart
    , slVideoDuration
    , slVideoCaption
    , slVideoLicense
    , slRegionCode
    , slForDeveloper
    , slLocation
    , slLocationRadius
    , slForContentOwner
    , slChannelId
    , slQ
    , slForMine
    , slVideoEmbeddable
    , slEventType
    , slOnBehalfOfContentOwner
    , slVideoCategoryId
    , slTopicId
    , slSafeSearch
    , slVideoSyndicated
    , slRelatedToVideoId
    , slPageToken
    , slType
    , slChannelType
    , slRelevanceLanguage
    , slOrder
    , slMaxResults
    , slPublishedBefore
    , slVideoType
    , slVideoDimension
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.search.list@ method which the
-- 'SearchList' request conforms to.
type SearchListResource =
     "youtube" :>
       "v3" :>
         "search" :>
           QueryParam "part" Text :>
             QueryParam "publishedAfter" DateTime' :>
               QueryParam "videoDefinition"
                 SearchListVideoDefinition
                 :>
                 QueryParam "videoDuration" SearchListVideoDuration :>
                   QueryParam "videoCaption" SearchListVideoCaption :>
                     QueryParam "videoLicense" SearchListVideoLicense :>
                       QueryParam "regionCode" Text :>
                         QueryParam "forDeveloper" Bool :>
                           QueryParam "location" Text :>
                             QueryParam "locationRadius" Text :>
                               QueryParam "forContentOwner" Bool :>
                                 QueryParam "channelId" Text :>
                                   QueryParam "q" Text :>
                                     QueryParam "forMine" Bool :>
                                       QueryParam "videoEmbeddable"
                                         SearchListVideoEmbeddable
                                         :>
                                         QueryParam "eventType"
                                           SearchListEventType
                                           :>
                                           QueryParam "onBehalfOfContentOwner"
                                             Text
                                             :>
                                             QueryParam "videoCategoryId" Text
                                               :>
                                               QueryParam "topicId" Text :>
                                                 QueryParam "safeSearch"
                                                   SearchListSafeSearch
                                                   :>
                                                   QueryParam "videoSyndicated"
                                                     SearchListVideoSyndicated
                                                     :>
                                                     QueryParam
                                                       "relatedToVideoId"
                                                       Text
                                                       :>
                                                       QueryParam "pageToken"
                                                         Text
                                                         :>
                                                         QueryParam "type" Text
                                                           :>
                                                           QueryParam
                                                             "channelType"
                                                             SearchListChannelType
                                                             :>
                                                             QueryParam
                                                               "relevanceLanguage"
                                                               Text
                                                               :>
                                                               QueryParam
                                                                 "order"
                                                                 SearchListOrder
                                                                 :>
                                                                 QueryParam
                                                                   "maxResults"
                                                                   (Textual
                                                                      Word32)
                                                                   :>
                                                                   QueryParam
                                                                     "publishedBefore"
                                                                     DateTime'
                                                                     :>
                                                                     QueryParam
                                                                       "videoType"
                                                                       SearchListVideoType
                                                                       :>
                                                                       QueryParam
                                                                         "videoDimension"
                                                                         SearchListVideoDimension
                                                                         :>
                                                                         QueryParam
                                                                           "alt"
                                                                           AltJSON
                                                                           :>
                                                                           Get
                                                                             '[JSON]
                                                                             SearchListResponse

-- | Returns a collection of search results that match the query parameters
-- specified in the API request. By default, a search result set identifies
-- matching video, channel, and playlist resources, but you can also
-- configure queries to only retrieve a specific type of resource.
--
-- /See:/ 'searchList' smart constructor.
data SearchList =
  SearchList'
    { _slPublishedAfter         :: !(Maybe DateTime')
    , _slVideoDefinition        :: !(Maybe SearchListVideoDefinition)
    , _slPart                   :: !Text
    , _slVideoDuration          :: !(Maybe SearchListVideoDuration)
    , _slVideoCaption           :: !(Maybe SearchListVideoCaption)
    , _slVideoLicense           :: !(Maybe SearchListVideoLicense)
    , _slRegionCode             :: !(Maybe Text)
    , _slForDeveloper           :: !(Maybe Bool)
    , _slLocation               :: !(Maybe Text)
    , _slLocationRadius         :: !(Maybe Text)
    , _slForContentOwner        :: !(Maybe Bool)
    , _slChannelId              :: !(Maybe Text)
    , _slQ                      :: !(Maybe Text)
    , _slForMine                :: !(Maybe Bool)
    , _slVideoEmbeddable        :: !(Maybe SearchListVideoEmbeddable)
    , _slEventType              :: !(Maybe SearchListEventType)
    , _slOnBehalfOfContentOwner :: !(Maybe Text)
    , _slVideoCategoryId        :: !(Maybe Text)
    , _slTopicId                :: !(Maybe Text)
    , _slSafeSearch             :: !(Maybe SearchListSafeSearch)
    , _slVideoSyndicated        :: !(Maybe SearchListVideoSyndicated)
    , _slRelatedToVideoId       :: !(Maybe Text)
    , _slPageToken              :: !(Maybe Text)
    , _slType                   :: !Text
    , _slChannelType            :: !(Maybe SearchListChannelType)
    , _slRelevanceLanguage      :: !(Maybe Text)
    , _slOrder                  :: !SearchListOrder
    , _slMaxResults             :: !(Textual Word32)
    , _slPublishedBefore        :: !(Maybe DateTime')
    , _slVideoType              :: !(Maybe SearchListVideoType)
    , _slVideoDimension         :: !(Maybe SearchListVideoDimension)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slPublishedAfter'
--
-- * 'slVideoDefinition'
--
-- * 'slPart'
--
-- * 'slVideoDuration'
--
-- * 'slVideoCaption'
--
-- * 'slVideoLicense'
--
-- * 'slRegionCode'
--
-- * 'slForDeveloper'
--
-- * 'slLocation'
--
-- * 'slLocationRadius'
--
-- * 'slForContentOwner'
--
-- * 'slChannelId'
--
-- * 'slQ'
--
-- * 'slForMine'
--
-- * 'slVideoEmbeddable'
--
-- * 'slEventType'
--
-- * 'slOnBehalfOfContentOwner'
--
-- * 'slVideoCategoryId'
--
-- * 'slTopicId'
--
-- * 'slSafeSearch'
--
-- * 'slVideoSyndicated'
--
-- * 'slRelatedToVideoId'
--
-- * 'slPageToken'
--
-- * 'slType'
--
-- * 'slChannelType'
--
-- * 'slRelevanceLanguage'
--
-- * 'slOrder'
--
-- * 'slMaxResults'
--
-- * 'slPublishedBefore'
--
-- * 'slVideoType'
--
-- * 'slVideoDimension'
searchList
    :: Text -- ^ 'slPart'
    -> SearchList
searchList pSlPart_ =
  SearchList'
    { _slPublishedAfter = Nothing
    , _slVideoDefinition = Nothing
    , _slPart = pSlPart_
    , _slVideoDuration = Nothing
    , _slVideoCaption = Nothing
    , _slVideoLicense = Nothing
    , _slRegionCode = Nothing
    , _slForDeveloper = Nothing
    , _slLocation = Nothing
    , _slLocationRadius = Nothing
    , _slForContentOwner = Nothing
    , _slChannelId = Nothing
    , _slQ = Nothing
    , _slForMine = Nothing
    , _slVideoEmbeddable = Nothing
    , _slEventType = Nothing
    , _slOnBehalfOfContentOwner = Nothing
    , _slVideoCategoryId = Nothing
    , _slTopicId = Nothing
    , _slSafeSearch = Nothing
    , _slVideoSyndicated = Nothing
    , _slRelatedToVideoId = Nothing
    , _slPageToken = Nothing
    , _slType = "video,channel,playlist"
    , _slChannelType = Nothing
    , _slRelevanceLanguage = Nothing
    , _slOrder = Relevance
    , _slMaxResults = 5
    , _slPublishedBefore = Nothing
    , _slVideoType = Nothing
    , _slVideoDimension = Nothing
    }


-- | The publishedAfter parameter indicates that the API response should only
-- contain resources created after the specified time. The value is an RFC
-- 3339 formatted date-time value (1970-01-01T00:00:00Z).
slPublishedAfter :: Lens' SearchList (Maybe UTCTime)
slPublishedAfter
  = lens _slPublishedAfter
      (\ s a -> s{_slPublishedAfter = a})
      . mapping _DateTime

-- | The videoDefinition parameter lets you restrict a search to only include
-- either high definition (HD) or standard definition (SD) videos. HD
-- videos are available for playback in at least 720p, though higher
-- resolutions, like 1080p, might also be available. If you specify a value
-- for this parameter, you must also set the type parameter\'s value to
-- video.
slVideoDefinition :: Lens' SearchList (Maybe SearchListVideoDefinition)
slVideoDefinition
  = lens _slVideoDefinition
      (\ s a -> s{_slVideoDefinition = a})

-- | The part parameter specifies a comma-separated list of one or more
-- search resource properties that the API response will include. Set the
-- parameter value to snippet.
slPart :: Lens' SearchList Text
slPart = lens _slPart (\ s a -> s{_slPart = a})

-- | The videoDuration parameter filters video search results based on their
-- duration. If you specify a value for this parameter, you must also set
-- the type parameter\'s value to video.
slVideoDuration :: Lens' SearchList (Maybe SearchListVideoDuration)
slVideoDuration
  = lens _slVideoDuration
      (\ s a -> s{_slVideoDuration = a})

-- | The videoCaption parameter indicates whether the API should filter video
-- search results based on whether they have captions. If you specify a
-- value for this parameter, you must also set the type parameter\'s value
-- to video.
slVideoCaption :: Lens' SearchList (Maybe SearchListVideoCaption)
slVideoCaption
  = lens _slVideoCaption
      (\ s a -> s{_slVideoCaption = a})

-- | The videoLicense parameter filters search results to only include videos
-- with a particular license. YouTube lets video uploaders choose to attach
-- either the Creative Commons license or the standard YouTube license to
-- each of their videos. If you specify a value for this parameter, you
-- must also set the type parameter\'s value to video.
slVideoLicense :: Lens' SearchList (Maybe SearchListVideoLicense)
slVideoLicense
  = lens _slVideoLicense
      (\ s a -> s{_slVideoLicense = a})

-- | The regionCode parameter instructs the API to return search results for
-- the specified country. The parameter value is an ISO 3166-1 alpha-2
-- country code.
slRegionCode :: Lens' SearchList (Maybe Text)
slRegionCode
  = lens _slRegionCode (\ s a -> s{_slRegionCode = a})

-- | The forDeveloper parameter restricts the search to only retrieve videos
-- uploaded via the developer\'s application or website. The API server
-- uses the request\'s authorization credentials to identify the developer.
-- Therefore, a developer can restrict results to videos uploaded through
-- the developer\'s own app or website but not to videos uploaded through
-- other apps or sites.
slForDeveloper :: Lens' SearchList (Maybe Bool)
slForDeveloper
  = lens _slForDeveloper
      (\ s a -> s{_slForDeveloper = a})

-- | The location parameter, in conjunction with the locationRadius
-- parameter, defines a circular geographic area and also restricts a
-- search to videos that specify, in their metadata, a geographic location
-- that falls within that area. The parameter value is a string that
-- specifies latitude\/longitude coordinates e.g. (37.42307,-122.08427). -
-- The location parameter value identifies the point at the center of the
-- area. - The locationRadius parameter specifies the maximum distance that
-- the location associated with a video can be from that point for the
-- video to still be included in the search results.The API returns an
-- error if your request specifies a value for the location parameter but
-- does not also specify a value for the locationRadius parameter.
slLocation :: Lens' SearchList (Maybe Text)
slLocation
  = lens _slLocation (\ s a -> s{_slLocation = a})

-- | The locationRadius parameter, in conjunction with the location
-- parameter, defines a circular geographic area. The parameter value must
-- be a floating point number followed by a measurement unit. Valid
-- measurement units are m, km, ft, and mi. For example, valid parameter
-- values include 1500m, 5km, 10000ft, and 0.75mi. The API does not support
-- locationRadius parameter values larger than 1000 kilometers. Note: See
-- the definition of the location parameter for more information.
slLocationRadius :: Lens' SearchList (Maybe Text)
slLocationRadius
  = lens _slLocationRadius
      (\ s a -> s{_slLocationRadius = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The forContentOwner parameter restricts the search to only
-- retrieve resources owned by the content owner specified by the
-- onBehalfOfContentOwner parameter. The user must be authenticated using a
-- CMS account linked to the specified content owner and
-- onBehalfOfContentOwner must be provided.
slForContentOwner :: Lens' SearchList (Maybe Bool)
slForContentOwner
  = lens _slForContentOwner
      (\ s a -> s{_slForContentOwner = a})

-- | The channelId parameter indicates that the API response should only
-- contain resources created by the channel
slChannelId :: Lens' SearchList (Maybe Text)
slChannelId
  = lens _slChannelId (\ s a -> s{_slChannelId = a})

-- | The q parameter specifies the query term to search for. Your request can
-- also use the Boolean NOT (-) and OR (|) operators to exclude videos or
-- to find videos that are associated with one of several search terms. For
-- example, to search for videos matching either \"boating\" or
-- \"sailing\", set the q parameter value to boating|sailing. Similarly, to
-- search for videos matching either \"boating\" or \"sailing\" but not
-- \"fishing\", set the q parameter value to boating|sailing -fishing. Note
-- that the pipe character must be URL-escaped when it is sent in your API
-- request. The URL-escaped value for the pipe character is %7C.
slQ :: Lens' SearchList (Maybe Text)
slQ = lens _slQ (\ s a -> s{_slQ = a})

-- | The forMine parameter restricts the search to only retrieve videos owned
-- by the authenticated user. If you set this parameter to true, then the
-- type parameter\'s value must also be set to video.
slForMine :: Lens' SearchList (Maybe Bool)
slForMine
  = lens _slForMine (\ s a -> s{_slForMine = a})

-- | The videoEmbeddable parameter lets you to restrict a search to only
-- videos that can be embedded into a webpage. If you specify a value for
-- this parameter, you must also set the type parameter\'s value to video.
slVideoEmbeddable :: Lens' SearchList (Maybe SearchListVideoEmbeddable)
slVideoEmbeddable
  = lens _slVideoEmbeddable
      (\ s a -> s{_slVideoEmbeddable = a})

-- | The eventType parameter restricts a search to broadcast events. If you
-- specify a value for this parameter, you must also set the type
-- parameter\'s value to video.
slEventType :: Lens' SearchList (Maybe SearchListEventType)
slEventType
  = lens _slEventType (\ s a -> s{_slEventType = a})

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
slOnBehalfOfContentOwner :: Lens' SearchList (Maybe Text)
slOnBehalfOfContentOwner
  = lens _slOnBehalfOfContentOwner
      (\ s a -> s{_slOnBehalfOfContentOwner = a})

-- | The videoCategoryId parameter filters video search results based on
-- their category. If you specify a value for this parameter, you must also
-- set the type parameter\'s value to video.
slVideoCategoryId :: Lens' SearchList (Maybe Text)
slVideoCategoryId
  = lens _slVideoCategoryId
      (\ s a -> s{_slVideoCategoryId = a})

-- | The topicId parameter indicates that the API response should only
-- contain resources associated with the specified topic. The value
-- identifies a Freebase topic ID.
slTopicId :: Lens' SearchList (Maybe Text)
slTopicId
  = lens _slTopicId (\ s a -> s{_slTopicId = a})

-- | The safeSearch parameter indicates whether the search results should
-- include restricted content as well as standard content.
slSafeSearch :: Lens' SearchList (Maybe SearchListSafeSearch)
slSafeSearch
  = lens _slSafeSearch (\ s a -> s{_slSafeSearch = a})

-- | The videoSyndicated parameter lets you to restrict a search to only
-- videos that can be played outside youtube.com. If you specify a value
-- for this parameter, you must also set the type parameter\'s value to
-- video.
slVideoSyndicated :: Lens' SearchList (Maybe SearchListVideoSyndicated)
slVideoSyndicated
  = lens _slVideoSyndicated
      (\ s a -> s{_slVideoSyndicated = a})

-- | The relatedToVideoId parameter retrieves a list of videos that are
-- related to the video that the parameter value identifies. The parameter
-- value must be set to a YouTube video ID and, if you are using this
-- parameter, the type parameter must be set to video.
slRelatedToVideoId :: Lens' SearchList (Maybe Text)
slRelatedToVideoId
  = lens _slRelatedToVideoId
      (\ s a -> s{_slRelatedToVideoId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
slPageToken :: Lens' SearchList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | The type parameter restricts a search query to only retrieve a
-- particular type of resource. The value is a comma-separated list of
-- resource types.
slType :: Lens' SearchList Text
slType = lens _slType (\ s a -> s{_slType = a})

-- | The channelType parameter lets you restrict a search to a particular
-- type of channel.
slChannelType :: Lens' SearchList (Maybe SearchListChannelType)
slChannelType
  = lens _slChannelType
      (\ s a -> s{_slChannelType = a})

-- | The relevanceLanguage parameter instructs the API to return search
-- results that are most relevant to the specified language. The parameter
-- value is typically an ISO 639-1 two-letter language code. However, you
-- should use the values zh-Hans for simplified Chinese and zh-Hant for
-- traditional Chinese. Please note that results in other languages will
-- still be returned if they are highly relevant to the search query term.
slRelevanceLanguage :: Lens' SearchList (Maybe Text)
slRelevanceLanguage
  = lens _slRelevanceLanguage
      (\ s a -> s{_slRelevanceLanguage = a})

-- | The order parameter specifies the method that will be used to order
-- resources in the API response.
slOrder :: Lens' SearchList SearchListOrder
slOrder = lens _slOrder (\ s a -> s{_slOrder = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
slMaxResults :: Lens' SearchList Word32
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})
      . _Coerce

-- | The publishedBefore parameter indicates that the API response should
-- only contain resources created before the specified time. The value is
-- an RFC 3339 formatted date-time value (1970-01-01T00:00:00Z).
slPublishedBefore :: Lens' SearchList (Maybe UTCTime)
slPublishedBefore
  = lens _slPublishedBefore
      (\ s a -> s{_slPublishedBefore = a})
      . mapping _DateTime

-- | The videoType parameter lets you restrict a search to a particular type
-- of videos. If you specify a value for this parameter, you must also set
-- the type parameter\'s value to video.
slVideoType :: Lens' SearchList (Maybe SearchListVideoType)
slVideoType
  = lens _slVideoType (\ s a -> s{_slVideoType = a})

-- | The videoDimension parameter lets you restrict a search to only retrieve
-- 2D or 3D videos. If you specify a value for this parameter, you must
-- also set the type parameter\'s value to video.
slVideoDimension :: Lens' SearchList (Maybe SearchListVideoDimension)
slVideoDimension
  = lens _slVideoDimension
      (\ s a -> s{_slVideoDimension = a})

instance GoogleRequest SearchList where
        type Rs SearchList = SearchListResponse
        type Scopes SearchList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient SearchList'{..}
          = go (Just _slPart) _slPublishedAfter
              _slVideoDefinition
              _slVideoDuration
              _slVideoCaption
              _slVideoLicense
              _slRegionCode
              _slForDeveloper
              _slLocation
              _slLocationRadius
              _slForContentOwner
              _slChannelId
              _slQ
              _slForMine
              _slVideoEmbeddable
              _slEventType
              _slOnBehalfOfContentOwner
              _slVideoCategoryId
              _slTopicId
              _slSafeSearch
              _slVideoSyndicated
              _slRelatedToVideoId
              _slPageToken
              (Just _slType)
              _slChannelType
              _slRelevanceLanguage
              (Just _slOrder)
              (Just _slMaxResults)
              _slPublishedBefore
              _slVideoType
              _slVideoDimension
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy SearchListResource)
                      mempty
