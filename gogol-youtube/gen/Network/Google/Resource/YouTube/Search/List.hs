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
-- Retrieves a list of search resources
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.search.list@.
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
    , slXgafv
    , slPart
    , slVideoDuration
    , slVideoCaption
    , slUploadProtocol
    , slVideoLicense
    , slRegionCode
    , slForDeveloper
    , slLocation
    , slLocationRadius
    , slAccessToken
    , slUploadType
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
    , slCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.search.list@ method which the
-- 'SearchList' request conforms to.
type SearchListResource =
     "youtube" :>
       "v3" :>
         "search" :>
           QueryParams "part" Text :>
             QueryParam "publishedAfter" DateTime' :>
               QueryParam "videoDefinition"
                 SearchListVideoDefinition
                 :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "videoDuration" SearchListVideoDuration :>
                     QueryParam "videoCaption" SearchListVideoCaption :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "videoLicense" SearchListVideoLicense :>
                           QueryParam "regionCode" Text :>
                             QueryParam "forDeveloper" Bool :>
                               QueryParam "location" Text :>
                                 QueryParam "locationRadius" Text :>
                                   QueryParam "access_token" Text :>
                                     QueryParam "uploadType" Text :>
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
                                                   QueryParam
                                                     "onBehalfOfContentOwner"
                                                     Text
                                                     :>
                                                     QueryParam
                                                       "videoCategoryId"
                                                       Text
                                                       :>
                                                       QueryParam "topicId" Text
                                                         :>
                                                         QueryParam "safeSearch"
                                                           SearchListSafeSearch
                                                           :>
                                                           QueryParam
                                                             "videoSyndicated"
                                                             SearchListVideoSyndicated
                                                             :>
                                                             QueryParam
                                                               "relatedToVideoId"
                                                               Text
                                                               :>
                                                               QueryParam
                                                                 "pageToken"
                                                                 Text
                                                                 :>
                                                                 QueryParams
                                                                   "type"
                                                                   Text
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
                                                                                   "callback"
                                                                                   Text
                                                                                   :>
                                                                                   QueryParam
                                                                                     "alt"
                                                                                     AltJSON
                                                                                     :>
                                                                                     Get
                                                                                       '[JSON]
                                                                                       SearchListResponse

-- | Retrieves a list of search resources
--
-- /See:/ 'searchList' smart constructor.
data SearchList =
  SearchList'
    { _slPublishedAfter :: !(Maybe DateTime')
    , _slVideoDefinition :: !(Maybe SearchListVideoDefinition)
    , _slXgafv :: !(Maybe Xgafv)
    , _slPart :: ![Text]
    , _slVideoDuration :: !(Maybe SearchListVideoDuration)
    , _slVideoCaption :: !(Maybe SearchListVideoCaption)
    , _slUploadProtocol :: !(Maybe Text)
    , _slVideoLicense :: !(Maybe SearchListVideoLicense)
    , _slRegionCode :: !(Maybe Text)
    , _slForDeveloper :: !(Maybe Bool)
    , _slLocation :: !(Maybe Text)
    , _slLocationRadius :: !(Maybe Text)
    , _slAccessToken :: !(Maybe Text)
    , _slUploadType :: !(Maybe Text)
    , _slForContentOwner :: !(Maybe Bool)
    , _slChannelId :: !(Maybe Text)
    , _slQ :: !(Maybe Text)
    , _slForMine :: !(Maybe Bool)
    , _slVideoEmbeddable :: !(Maybe SearchListVideoEmbeddable)
    , _slEventType :: !(Maybe SearchListEventType)
    , _slOnBehalfOfContentOwner :: !(Maybe Text)
    , _slVideoCategoryId :: !(Maybe Text)
    , _slTopicId :: !(Maybe Text)
    , _slSafeSearch :: !SearchListSafeSearch
    , _slVideoSyndicated :: !(Maybe SearchListVideoSyndicated)
    , _slRelatedToVideoId :: !(Maybe Text)
    , _slPageToken :: !(Maybe Text)
    , _slType :: !(Maybe [Text])
    , _slChannelType :: !(Maybe SearchListChannelType)
    , _slRelevanceLanguage :: !(Maybe Text)
    , _slOrder :: !SearchListOrder
    , _slMaxResults :: !(Textual Word32)
    , _slPublishedBefore :: !(Maybe DateTime')
    , _slVideoType :: !(Maybe SearchListVideoType)
    , _slVideoDimension :: !(Maybe SearchListVideoDimension)
    , _slCallback :: !(Maybe Text)
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
-- * 'slXgafv'
--
-- * 'slPart'
--
-- * 'slVideoDuration'
--
-- * 'slVideoCaption'
--
-- * 'slUploadProtocol'
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
-- * 'slAccessToken'
--
-- * 'slUploadType'
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
--
-- * 'slCallback'
searchList
    :: [Text] -- ^ 'slPart'
    -> SearchList
searchList pSlPart_ =
  SearchList'
    { _slPublishedAfter = Nothing
    , _slVideoDefinition = Nothing
    , _slXgafv = Nothing
    , _slPart = _Coerce # pSlPart_
    , _slVideoDuration = Nothing
    , _slVideoCaption = Nothing
    , _slUploadProtocol = Nothing
    , _slVideoLicense = Nothing
    , _slRegionCode = Nothing
    , _slForDeveloper = Nothing
    , _slLocation = Nothing
    , _slLocationRadius = Nothing
    , _slAccessToken = Nothing
    , _slUploadType = Nothing
    , _slForContentOwner = Nothing
    , _slChannelId = Nothing
    , _slQ = Nothing
    , _slForMine = Nothing
    , _slVideoEmbeddable = Nothing
    , _slEventType = Nothing
    , _slOnBehalfOfContentOwner = Nothing
    , _slVideoCategoryId = Nothing
    , _slTopicId = Nothing
    , _slSafeSearch = SLSSModerate
    , _slVideoSyndicated = Nothing
    , _slRelatedToVideoId = Nothing
    , _slPageToken = Nothing
    , _slType = Nothing
    , _slChannelType = Nothing
    , _slRelevanceLanguage = Nothing
    , _slOrder = Relevance
    , _slMaxResults = 5
    , _slPublishedBefore = Nothing
    , _slVideoType = Nothing
    , _slVideoDimension = Nothing
    , _slCallback = Nothing
    }


-- | Filter on resources published after this date.
slPublishedAfter :: Lens' SearchList (Maybe UTCTime)
slPublishedAfter
  = lens _slPublishedAfter
      (\ s a -> s{_slPublishedAfter = a})
      . mapping _DateTime

-- | Filter on the definition of the videos.
slVideoDefinition :: Lens' SearchList (Maybe SearchListVideoDefinition)
slVideoDefinition
  = lens _slVideoDefinition
      (\ s a -> s{_slVideoDefinition = a})

-- | V1 error format.
slXgafv :: Lens' SearchList (Maybe Xgafv)
slXgafv = lens _slXgafv (\ s a -> s{_slXgafv = a})

-- | The *part* parameter specifies a comma-separated list of one or more
-- search resource properties that the API response will include. Set the
-- parameter value to snippet.
slPart :: Lens' SearchList [Text]
slPart
  = lens _slPart (\ s a -> s{_slPart = a}) . _Coerce

-- | Filter on the duration of the videos.
slVideoDuration :: Lens' SearchList (Maybe SearchListVideoDuration)
slVideoDuration
  = lens _slVideoDuration
      (\ s a -> s{_slVideoDuration = a})

-- | Filter on the presence of captions on the videos.
slVideoCaption :: Lens' SearchList (Maybe SearchListVideoCaption)
slVideoCaption
  = lens _slVideoCaption
      (\ s a -> s{_slVideoCaption = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
slUploadProtocol :: Lens' SearchList (Maybe Text)
slUploadProtocol
  = lens _slUploadProtocol
      (\ s a -> s{_slUploadProtocol = a})

-- | Filter on the license of the videos.
slVideoLicense :: Lens' SearchList (Maybe SearchListVideoLicense)
slVideoLicense
  = lens _slVideoLicense
      (\ s a -> s{_slVideoLicense = a})

-- | Display the content as seen by viewers in this country.
slRegionCode :: Lens' SearchList (Maybe Text)
slRegionCode
  = lens _slRegionCode (\ s a -> s{_slRegionCode = a})

-- | Restrict the search to only retrieve videos uploaded using the project
-- id of the authenticated user.
slForDeveloper :: Lens' SearchList (Maybe Bool)
slForDeveloper
  = lens _slForDeveloper
      (\ s a -> s{_slForDeveloper = a})

-- | Filter on location of the video
slLocation :: Lens' SearchList (Maybe Text)
slLocation
  = lens _slLocation (\ s a -> s{_slLocation = a})

-- | Filter on distance from the location (specified above).
slLocationRadius :: Lens' SearchList (Maybe Text)
slLocationRadius
  = lens _slLocationRadius
      (\ s a -> s{_slLocationRadius = a})

-- | OAuth access token.
slAccessToken :: Lens' SearchList (Maybe Text)
slAccessToken
  = lens _slAccessToken
      (\ s a -> s{_slAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
slUploadType :: Lens' SearchList (Maybe Text)
slUploadType
  = lens _slUploadType (\ s a -> s{_slUploadType = a})

-- | Search owned by a content owner.
slForContentOwner :: Lens' SearchList (Maybe Bool)
slForContentOwner
  = lens _slForContentOwner
      (\ s a -> s{_slForContentOwner = a})

-- | Filter on resources belonging to this channelId.
slChannelId :: Lens' SearchList (Maybe Text)
slChannelId
  = lens _slChannelId (\ s a -> s{_slChannelId = a})

-- | Textual search terms to match.
slQ :: Lens' SearchList (Maybe Text)
slQ = lens _slQ (\ s a -> s{_slQ = a})

-- | Search for the private videos of the authenticated user.
slForMine :: Lens' SearchList (Maybe Bool)
slForMine
  = lens _slForMine (\ s a -> s{_slForMine = a})

-- | Filter on embeddable videos.
slVideoEmbeddable :: Lens' SearchList (Maybe SearchListVideoEmbeddable)
slVideoEmbeddable
  = lens _slVideoEmbeddable
      (\ s a -> s{_slVideoEmbeddable = a})

-- | Filter on the livestream status of the videos.
slEventType :: Lens' SearchList (Maybe SearchListEventType)
slEventType
  = lens _slEventType (\ s a -> s{_slEventType = a})

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
slOnBehalfOfContentOwner :: Lens' SearchList (Maybe Text)
slOnBehalfOfContentOwner
  = lens _slOnBehalfOfContentOwner
      (\ s a -> s{_slOnBehalfOfContentOwner = a})

-- | Filter on videos in a specific category.
slVideoCategoryId :: Lens' SearchList (Maybe Text)
slVideoCategoryId
  = lens _slVideoCategoryId
      (\ s a -> s{_slVideoCategoryId = a})

-- | Restrict results to a particular topic.
slTopicId :: Lens' SearchList (Maybe Text)
slTopicId
  = lens _slTopicId (\ s a -> s{_slTopicId = a})

-- | Indicates whether the search results should include restricted content
-- as well as standard content.
slSafeSearch :: Lens' SearchList SearchListSafeSearch
slSafeSearch
  = lens _slSafeSearch (\ s a -> s{_slSafeSearch = a})

-- | Filter on syndicated videos.
slVideoSyndicated :: Lens' SearchList (Maybe SearchListVideoSyndicated)
slVideoSyndicated
  = lens _slVideoSyndicated
      (\ s a -> s{_slVideoSyndicated = a})

-- | Search related to a resource.
slRelatedToVideoId :: Lens' SearchList (Maybe Text)
slRelatedToVideoId
  = lens _slRelatedToVideoId
      (\ s a -> s{_slRelatedToVideoId = a})

-- | The *pageToken* parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
slPageToken :: Lens' SearchList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | Restrict results to a particular set of resource types from One
-- Platform.
slType :: Lens' SearchList [Text]
slType
  = lens _slType (\ s a -> s{_slType = a}) . _Default .
      _Coerce

-- | Add a filter on the channel search.
slChannelType :: Lens' SearchList (Maybe SearchListChannelType)
slChannelType
  = lens _slChannelType
      (\ s a -> s{_slChannelType = a})

-- | Return results relevant to this language.
slRelevanceLanguage :: Lens' SearchList (Maybe Text)
slRelevanceLanguage
  = lens _slRelevanceLanguage
      (\ s a -> s{_slRelevanceLanguage = a})

-- | Sort order of the results.
slOrder :: Lens' SearchList SearchListOrder
slOrder = lens _slOrder (\ s a -> s{_slOrder = a})

-- | The *maxResults* parameter specifies the maximum number of items that
-- should be returned in the result set.
slMaxResults :: Lens' SearchList Word32
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})
      . _Coerce

-- | Filter on resources published before this date.
slPublishedBefore :: Lens' SearchList (Maybe UTCTime)
slPublishedBefore
  = lens _slPublishedBefore
      (\ s a -> s{_slPublishedBefore = a})
      . mapping _DateTime

-- | Filter on videos of a specific type.
slVideoType :: Lens' SearchList (Maybe SearchListVideoType)
slVideoType
  = lens _slVideoType (\ s a -> s{_slVideoType = a})

-- | Filter on 3d videos.
slVideoDimension :: Lens' SearchList (Maybe SearchListVideoDimension)
slVideoDimension
  = lens _slVideoDimension
      (\ s a -> s{_slVideoDimension = a})

-- | JSONP
slCallback :: Lens' SearchList (Maybe Text)
slCallback
  = lens _slCallback (\ s a -> s{_slCallback = a})

instance GoogleRequest SearchList where
        type Rs SearchList = SearchListResponse
        type Scopes SearchList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient SearchList'{..}
          = go _slPart _slPublishedAfter _slVideoDefinition
              _slXgafv
              _slVideoDuration
              _slVideoCaption
              _slUploadProtocol
              _slVideoLicense
              _slRegionCode
              _slForDeveloper
              _slLocation
              _slLocationRadius
              _slAccessToken
              _slUploadType
              _slForContentOwner
              _slChannelId
              _slQ
              _slForMine
              _slVideoEmbeddable
              _slEventType
              _slOnBehalfOfContentOwner
              _slVideoCategoryId
              _slTopicId
              (Just _slSafeSearch)
              _slVideoSyndicated
              _slRelatedToVideoId
              _slPageToken
              (_slType ^. _Default)
              _slChannelType
              _slRelevanceLanguage
              (Just _slOrder)
              (Just _slMaxResults)
              _slPublishedBefore
              _slVideoType
              _slVideoDimension
              _slCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy SearchListResource)
                      mempty
