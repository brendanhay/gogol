{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Search.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a collection of search results that match the query parameters
-- specified in the API request. By default, a search result set identifies
-- matching video, channel, and playlist resources, but you can also
-- configure queries to only retrieve a specific type of resource.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeSearchList@.
module YouTube.Search.List
    (
    -- * REST Resource
      SearchListAPI

    -- * Creating a Request
    , searchList
    , SearchList

    -- * Request Lenses
    , sPublishedAfter
    , sVideoDefinition
    , sQuotaUser
    , sPart
    , sVideoDuration
    , sPrettyPrint
    , sVideoCaption
    , sVideoLicense
    , sRegionCode
    , sForDeveloper
    , sLocation
    , sLocationRadius
    , sUserIp
    , sForContentOwner
    , sChannelId
    , sQ
    , sForMine
    , sVideoEmbeddable
    , sEventType
    , sOnBehalfOfContentOwner
    , sVideoCategoryId
    , sTopicId
    , sKey
    , sSafeSearch
    , sVideoSyndicated
    , sRelatedToVideoId
    , sPageToken
    , sType
    , sOauthToken
    , sChannelType
    , sRelevanceLanguage
    , sOrder
    , sMaxResults
    , sPublishedBefore
    , sVideoType
    , sVideoDimension
    , sFields
    , sAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeSearchList@ which the
-- 'SearchList' request conforms to.
type SearchListAPI =
     "search" :>
       QueryParam "publishedAfter" UTCTime :>
         QueryParam "videoDefinition" Text :>
           QueryParam "part" Text :>
             QueryParam "videoDuration" Text :>
               QueryParam "videoCaption" Text :>
                 QueryParam "videoLicense" Text :>
                   QueryParam "regionCode" Text :>
                     QueryParam "forDeveloper" Bool :>
                       QueryParam "location" Text :>
                         QueryParam "locationRadius" Text :>
                           QueryParam "forContentOwner" Bool :>
                             QueryParam "channelId" Text :>
                               QueryParam "q" Text :>
                                 QueryParam "forMine" Bool :>
                                   QueryParam "videoEmbeddable" Text :>
                                     QueryParam "eventType" Text :>
                                       QueryParam "onBehalfOfContentOwner" Text
                                         :>
                                         QueryParam "videoCategoryId" Text :>
                                           QueryParam "topicId" Text :>
                                             QueryParam "safeSearch" Text :>
                                               QueryParam "videoSyndicated" Text
                                                 :>
                                                 QueryParam "relatedToVideoId"
                                                   Text
                                                   :>
                                                   QueryParam "pageToken" Text
                                                     :>
                                                     QueryParam "type" Text :>
                                                       QueryParam "channelType"
                                                         Text
                                                         :>
                                                         QueryParam
                                                           "relevanceLanguage"
                                                           Text
                                                           :>
                                                           QueryParam "order"
                                                             Text
                                                             :>
                                                             QueryParam
                                                               "maxResults"
                                                               Word32
                                                               :>
                                                               QueryParam
                                                                 "publishedBefore"
                                                                 UTCTime
                                                                 :>
                                                                 QueryParam
                                                                   "videoType"
                                                                   Text
                                                                   :>
                                                                   QueryParam
                                                                     "videoDimension"
                                                                     Text
                                                                     :>
                                                                     Get '[JSON]
                                                                       SearchListResponse

-- | Returns a collection of search results that match the query parameters
-- specified in the API request. By default, a search result set identifies
-- matching video, channel, and playlist resources, but you can also
-- configure queries to only retrieve a specific type of resource.
--
-- /See:/ 'searchList' smart constructor.
data SearchList = SearchList
    { _sPublishedAfter         :: !(Maybe UTCTime)
    , _sVideoDefinition        :: !(Maybe Text)
    , _sQuotaUser              :: !(Maybe Text)
    , _sPart                   :: !Text
    , _sVideoDuration          :: !(Maybe Text)
    , _sPrettyPrint            :: !Bool
    , _sVideoCaption           :: !(Maybe Text)
    , _sVideoLicense           :: !(Maybe Text)
    , _sRegionCode             :: !(Maybe Text)
    , _sForDeveloper           :: !(Maybe Bool)
    , _sLocation               :: !(Maybe Text)
    , _sLocationRadius         :: !(Maybe Text)
    , _sUserIp                 :: !(Maybe Text)
    , _sForContentOwner        :: !(Maybe Bool)
    , _sChannelId              :: !(Maybe Text)
    , _sQ                      :: !(Maybe Text)
    , _sForMine                :: !(Maybe Bool)
    , _sVideoEmbeddable        :: !(Maybe Text)
    , _sEventType              :: !(Maybe Text)
    , _sOnBehalfOfContentOwner :: !(Maybe Text)
    , _sVideoCategoryId        :: !(Maybe Text)
    , _sTopicId                :: !(Maybe Text)
    , _sKey                    :: !(Maybe Text)
    , _sSafeSearch             :: !(Maybe Text)
    , _sVideoSyndicated        :: !(Maybe Text)
    , _sRelatedToVideoId       :: !(Maybe Text)
    , _sPageToken              :: !(Maybe Text)
    , _sType                   :: !Text
    , _sOauthToken             :: !(Maybe Text)
    , _sChannelType            :: !(Maybe Text)
    , _sRelevanceLanguage      :: !(Maybe Text)
    , _sOrder                  :: !Text
    , _sMaxResults             :: !Word32
    , _sPublishedBefore        :: !(Maybe UTCTime)
    , _sVideoType              :: !(Maybe Text)
    , _sVideoDimension         :: !(Maybe Text)
    , _sFields                 :: !(Maybe Text)
    , _sAlt                    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sPublishedAfter'
--
-- * 'sVideoDefinition'
--
-- * 'sQuotaUser'
--
-- * 'sPart'
--
-- * 'sVideoDuration'
--
-- * 'sPrettyPrint'
--
-- * 'sVideoCaption'
--
-- * 'sVideoLicense'
--
-- * 'sRegionCode'
--
-- * 'sForDeveloper'
--
-- * 'sLocation'
--
-- * 'sLocationRadius'
--
-- * 'sUserIp'
--
-- * 'sForContentOwner'
--
-- * 'sChannelId'
--
-- * 'sQ'
--
-- * 'sForMine'
--
-- * 'sVideoEmbeddable'
--
-- * 'sEventType'
--
-- * 'sOnBehalfOfContentOwner'
--
-- * 'sVideoCategoryId'
--
-- * 'sTopicId'
--
-- * 'sKey'
--
-- * 'sSafeSearch'
--
-- * 'sVideoSyndicated'
--
-- * 'sRelatedToVideoId'
--
-- * 'sPageToken'
--
-- * 'sType'
--
-- * 'sOauthToken'
--
-- * 'sChannelType'
--
-- * 'sRelevanceLanguage'
--
-- * 'sOrder'
--
-- * 'sMaxResults'
--
-- * 'sPublishedBefore'
--
-- * 'sVideoType'
--
-- * 'sVideoDimension'
--
-- * 'sFields'
--
-- * 'sAlt'
searchList
    :: Text -- ^ 'part'
    -> SearchList
searchList pSPart_ =
    SearchList
    { _sPublishedAfter = Nothing
    , _sVideoDefinition = Nothing
    , _sQuotaUser = Nothing
    , _sPart = pSPart_
    , _sVideoDuration = Nothing
    , _sPrettyPrint = True
    , _sVideoCaption = Nothing
    , _sVideoLicense = Nothing
    , _sRegionCode = Nothing
    , _sForDeveloper = Nothing
    , _sLocation = Nothing
    , _sLocationRadius = Nothing
    , _sUserIp = Nothing
    , _sForContentOwner = Nothing
    , _sChannelId = Nothing
    , _sQ = Nothing
    , _sForMine = Nothing
    , _sVideoEmbeddable = Nothing
    , _sEventType = Nothing
    , _sOnBehalfOfContentOwner = Nothing
    , _sVideoCategoryId = Nothing
    , _sTopicId = Nothing
    , _sKey = Nothing
    , _sSafeSearch = Nothing
    , _sVideoSyndicated = Nothing
    , _sRelatedToVideoId = Nothing
    , _sPageToken = Nothing
    , _sType = "video,channel,playlist"
    , _sOauthToken = Nothing
    , _sChannelType = Nothing
    , _sRelevanceLanguage = Nothing
    , _sOrder = "SEARCH_SORT_RELEVANCE"
    , _sMaxResults = 5
    , _sPublishedBefore = Nothing
    , _sVideoType = Nothing
    , _sVideoDimension = Nothing
    , _sFields = Nothing
    , _sAlt = "json"
    }

-- | The publishedAfter parameter indicates that the API response should only
-- contain resources created after the specified time. The value is an RFC
-- 3339 formatted date-time value (1970-01-01T00:00:00Z).
sPublishedAfter :: Lens' SearchList' (Maybe UTCTime)
sPublishedAfter
  = lens _sPublishedAfter
      (\ s a -> s{_sPublishedAfter = a})

-- | The videoDefinition parameter lets you restrict a search to only include
-- either high definition (HD) or standard definition (SD) videos. HD
-- videos are available for playback in at least 720p, though higher
-- resolutions, like 1080p, might also be available. If you specify a value
-- for this parameter, you must also set the type parameter\'s value to
-- video.
sVideoDefinition :: Lens' SearchList' (Maybe Text)
sVideoDefinition
  = lens _sVideoDefinition
      (\ s a -> s{_sVideoDefinition = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' SearchList' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- search resource properties that the API response will include. Set the
-- parameter value to snippet.
sPart :: Lens' SearchList' Text
sPart = lens _sPart (\ s a -> s{_sPart = a})

-- | The videoDuration parameter filters video search results based on their
-- duration. If you specify a value for this parameter, you must also set
-- the type parameter\'s value to video.
sVideoDuration :: Lens' SearchList' (Maybe Text)
sVideoDuration
  = lens _sVideoDuration
      (\ s a -> s{_sVideoDuration = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' SearchList' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | The videoCaption parameter indicates whether the API should filter video
-- search results based on whether they have captions. If you specify a
-- value for this parameter, you must also set the type parameter\'s value
-- to video.
sVideoCaption :: Lens' SearchList' (Maybe Text)
sVideoCaption
  = lens _sVideoCaption
      (\ s a -> s{_sVideoCaption = a})

-- | The videoLicense parameter filters search results to only include videos
-- with a particular license. YouTube lets video uploaders choose to attach
-- either the Creative Commons license or the standard YouTube license to
-- each of their videos. If you specify a value for this parameter, you
-- must also set the type parameter\'s value to video.
sVideoLicense :: Lens' SearchList' (Maybe Text)
sVideoLicense
  = lens _sVideoLicense
      (\ s a -> s{_sVideoLicense = a})

-- | The regionCode parameter instructs the API to return search results for
-- the specified country. The parameter value is an ISO 3166-1 alpha-2
-- country code.
sRegionCode :: Lens' SearchList' (Maybe Text)
sRegionCode
  = lens _sRegionCode (\ s a -> s{_sRegionCode = a})

-- | The forDeveloper parameter restricts the search to only retrieve videos
-- uploaded via the developer\'s application or website. The API server
-- uses the request\'s authorization credentials to identify the developer.
-- Therefore, a developer can restrict results to videos uploaded through
-- the developer\'s own app or website but not to videos uploaded through
-- other apps or sites.
sForDeveloper :: Lens' SearchList' (Maybe Bool)
sForDeveloper
  = lens _sForDeveloper
      (\ s a -> s{_sForDeveloper = a})

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
sLocation :: Lens' SearchList' (Maybe Text)
sLocation
  = lens _sLocation (\ s a -> s{_sLocation = a})

-- | The locationRadius parameter, in conjunction with the location
-- parameter, defines a circular geographic area. The parameter value must
-- be a floating point number followed by a measurement unit. Valid
-- measurement units are m, km, ft, and mi. For example, valid parameter
-- values include 1500m, 5km, 10000ft, and 0.75mi. The API does not support
-- locationRadius parameter values larger than 1000 kilometers. Note: See
-- the definition of the location parameter for more information.
sLocationRadius :: Lens' SearchList' (Maybe Text)
sLocationRadius
  = lens _sLocationRadius
      (\ s a -> s{_sLocationRadius = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIp :: Lens' SearchList' (Maybe Text)
sUserIp = lens _sUserIp (\ s a -> s{_sUserIp = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The forContentOwner parameter restricts the search to only
-- retrieve resources owned by the content owner specified by the
-- onBehalfOfContentOwner parameter. The user must be authenticated using a
-- CMS account linked to the specified content owner and
-- onBehalfOfContentOwner must be provided.
sForContentOwner :: Lens' SearchList' (Maybe Bool)
sForContentOwner
  = lens _sForContentOwner
      (\ s a -> s{_sForContentOwner = a})

-- | The channelId parameter indicates that the API response should only
-- contain resources created by the channel
sChannelId :: Lens' SearchList' (Maybe Text)
sChannelId
  = lens _sChannelId (\ s a -> s{_sChannelId = a})

-- | The q parameter specifies the query term to search for. Your request can
-- also use the Boolean NOT (-) and OR (|) operators to exclude videos or
-- to find videos that are associated with one of several search terms. For
-- example, to search for videos matching either \"boating\" or
-- \"sailing\", set the q parameter value to boating|sailing. Similarly, to
-- search for videos matching either \"boating\" or \"sailing\" but not
-- \"fishing\", set the q parameter value to boating|sailing -fishing. Note
-- that the pipe character must be URL-escaped when it is sent in your API
-- request. The URL-escaped value for the pipe character is %7C.
sQ :: Lens' SearchList' (Maybe Text)
sQ = lens _sQ (\ s a -> s{_sQ = a})

-- | The forMine parameter restricts the search to only retrieve videos owned
-- by the authenticated user. If you set this parameter to true, then the
-- type parameter\'s value must also be set to video.
sForMine :: Lens' SearchList' (Maybe Bool)
sForMine = lens _sForMine (\ s a -> s{_sForMine = a})

-- | The videoEmbeddable parameter lets you to restrict a search to only
-- videos that can be embedded into a webpage. If you specify a value for
-- this parameter, you must also set the type parameter\'s value to video.
sVideoEmbeddable :: Lens' SearchList' (Maybe Text)
sVideoEmbeddable
  = lens _sVideoEmbeddable
      (\ s a -> s{_sVideoEmbeddable = a})

-- | The eventType parameter restricts a search to broadcast events. If you
-- specify a value for this parameter, you must also set the type
-- parameter\'s value to video.
sEventType :: Lens' SearchList' (Maybe Text)
sEventType
  = lens _sEventType (\ s a -> s{_sEventType = a})

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
sOnBehalfOfContentOwner :: Lens' SearchList' (Maybe Text)
sOnBehalfOfContentOwner
  = lens _sOnBehalfOfContentOwner
      (\ s a -> s{_sOnBehalfOfContentOwner = a})

-- | The videoCategoryId parameter filters video search results based on
-- their category. If you specify a value for this parameter, you must also
-- set the type parameter\'s value to video.
sVideoCategoryId :: Lens' SearchList' (Maybe Text)
sVideoCategoryId
  = lens _sVideoCategoryId
      (\ s a -> s{_sVideoCategoryId = a})

-- | The topicId parameter indicates that the API response should only
-- contain resources associated with the specified topic. The value
-- identifies a Freebase topic ID.
sTopicId :: Lens' SearchList' (Maybe Text)
sTopicId = lens _sTopicId (\ s a -> s{_sTopicId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' SearchList' (Maybe Text)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | The safeSearch parameter indicates whether the search results should
-- include restricted content as well as standard content.
sSafeSearch :: Lens' SearchList' (Maybe Text)
sSafeSearch
  = lens _sSafeSearch (\ s a -> s{_sSafeSearch = a})

-- | The videoSyndicated parameter lets you to restrict a search to only
-- videos that can be played outside youtube.com. If you specify a value
-- for this parameter, you must also set the type parameter\'s value to
-- video.
sVideoSyndicated :: Lens' SearchList' (Maybe Text)
sVideoSyndicated
  = lens _sVideoSyndicated
      (\ s a -> s{_sVideoSyndicated = a})

-- | The relatedToVideoId parameter retrieves a list of videos that are
-- related to the video that the parameter value identifies. The parameter
-- value must be set to a YouTube video ID and, if you are using this
-- parameter, the type parameter must be set to video.
sRelatedToVideoId :: Lens' SearchList' (Maybe Text)
sRelatedToVideoId
  = lens _sRelatedToVideoId
      (\ s a -> s{_sRelatedToVideoId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
sPageToken :: Lens' SearchList' (Maybe Text)
sPageToken
  = lens _sPageToken (\ s a -> s{_sPageToken = a})

-- | The type parameter restricts a search query to only retrieve a
-- particular type of resource. The value is a comma-separated list of
-- resource types.
sType :: Lens' SearchList' Text
sType = lens _sType (\ s a -> s{_sType = a})

-- | OAuth 2.0 token for the current user.
sOauthToken :: Lens' SearchList' (Maybe Text)
sOauthToken
  = lens _sOauthToken (\ s a -> s{_sOauthToken = a})

-- | The channelType parameter lets you restrict a search to a particular
-- type of channel.
sChannelType :: Lens' SearchList' (Maybe Text)
sChannelType
  = lens _sChannelType (\ s a -> s{_sChannelType = a})

-- | The relevanceLanguage parameter instructs the API to return search
-- results that are most relevant to the specified language. The parameter
-- value is typically an ISO 639-1 two-letter language code. However, you
-- should use the values zh-Hans for simplified Chinese and zh-Hant for
-- traditional Chinese. Please note that results in other languages will
-- still be returned if they are highly relevant to the search query term.
sRelevanceLanguage :: Lens' SearchList' (Maybe Text)
sRelevanceLanguage
  = lens _sRelevanceLanguage
      (\ s a -> s{_sRelevanceLanguage = a})

-- | The order parameter specifies the method that will be used to order
-- resources in the API response.
sOrder :: Lens' SearchList' Text
sOrder = lens _sOrder (\ s a -> s{_sOrder = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
sMaxResults :: Lens' SearchList' Word32
sMaxResults
  = lens _sMaxResults (\ s a -> s{_sMaxResults = a})

-- | The publishedBefore parameter indicates that the API response should
-- only contain resources created before the specified time. The value is
-- an RFC 3339 formatted date-time value (1970-01-01T00:00:00Z).
sPublishedBefore :: Lens' SearchList' (Maybe UTCTime)
sPublishedBefore
  = lens _sPublishedBefore
      (\ s a -> s{_sPublishedBefore = a})

-- | The videoType parameter lets you restrict a search to a particular type
-- of videos. If you specify a value for this parameter, you must also set
-- the type parameter\'s value to video.
sVideoType :: Lens' SearchList' (Maybe Text)
sVideoType
  = lens _sVideoType (\ s a -> s{_sVideoType = a})

-- | The videoDimension parameter lets you restrict a search to only retrieve
-- 2D or 3D videos. If you specify a value for this parameter, you must
-- also set the type parameter\'s value to video.
sVideoDimension :: Lens' SearchList' (Maybe Text)
sVideoDimension
  = lens _sVideoDimension
      (\ s a -> s{_sVideoDimension = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' SearchList' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

-- | Data format for the response.
sAlt :: Lens' SearchList' Text
sAlt = lens _sAlt (\ s a -> s{_sAlt = a})

instance GoogleRequest SearchList' where
        type Rs SearchList' = SearchListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u SearchList{..}
          = go _sPublishedAfter _sVideoDefinition _sQuotaUser
              (Just _sPart)
              _sVideoDuration
              _sPrettyPrint
              _sVideoCaption
              _sVideoLicense
              _sRegionCode
              _sForDeveloper
              _sLocation
              _sLocationRadius
              _sUserIp
              _sForContentOwner
              _sChannelId
              _sQ
              _sForMine
              _sVideoEmbeddable
              _sEventType
              _sOnBehalfOfContentOwner
              _sVideoCategoryId
              _sTopicId
              _sKey
              _sSafeSearch
              _sVideoSyndicated
              _sRelatedToVideoId
              _sPageToken
              (Just _sType)
              _sOauthToken
              _sChannelType
              _sRelevanceLanguage
              (Just _sOrder)
              (Just _sMaxResults)
              _sPublishedBefore
              _sVideoType
              _sVideoDimension
              _sFields
              _sAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SearchListAPI) r u
