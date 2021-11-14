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
-- Module      : Network.Google.Resource.YouTube.Channels.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.channels.list@.
module Network.Google.Resource.YouTube.Channels.List
    (
    -- * REST Resource
      ChannelsListResource

    -- * Creating a Request
    , channelsList
    , ChannelsList

    -- * Request Lenses
    , cXgafv
    , cPart
    , cMine
    , cUploadProtocol
    , cForUsername
    , cAccessToken
    , cUploadType
    , cHl
    , cOnBehalfOfContentOwner
    , cCategoryId
    , cId
    , cMySubscribers
    , cPageToken
    , cManagedByMe
    , cMaxResults
    , cCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.channels.list@ method which the
-- 'ChannelsList' request conforms to.
type ChannelsListResource =
     "youtube" :>
       "v3" :>
         "channels" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "mine" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "forUsername" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "hl" Text :>
                           QueryParam "onBehalfOfContentOwner" Text :>
                             QueryParam "categoryId" Text :>
                               QueryParams "id" Text :>
                                 QueryParam "mySubscribers" Bool :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "managedByMe" Bool :>
                                       QueryParam "maxResults" (Textual Word32)
                                         :>
                                         QueryParam "callback" Text :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] ChannelListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'channelsList' smart constructor.
data ChannelsList =
  ChannelsList'
    { _cXgafv :: !(Maybe Xgafv)
    , _cPart :: ![Text]
    , _cMine :: !(Maybe Bool)
    , _cUploadProtocol :: !(Maybe Text)
    , _cForUsername :: !(Maybe Text)
    , _cAccessToken :: !(Maybe Text)
    , _cUploadType :: !(Maybe Text)
    , _cHl :: !(Maybe Text)
    , _cOnBehalfOfContentOwner :: !(Maybe Text)
    , _cCategoryId :: !(Maybe Text)
    , _cId :: !(Maybe [Text])
    , _cMySubscribers :: !(Maybe Bool)
    , _cPageToken :: !(Maybe Text)
    , _cManagedByMe :: !(Maybe Bool)
    , _cMaxResults :: !(Textual Word32)
    , _cCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChannelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cXgafv'
--
-- * 'cPart'
--
-- * 'cMine'
--
-- * 'cUploadProtocol'
--
-- * 'cForUsername'
--
-- * 'cAccessToken'
--
-- * 'cUploadType'
--
-- * 'cHl'
--
-- * 'cOnBehalfOfContentOwner'
--
-- * 'cCategoryId'
--
-- * 'cId'
--
-- * 'cMySubscribers'
--
-- * 'cPageToken'
--
-- * 'cManagedByMe'
--
-- * 'cMaxResults'
--
-- * 'cCallback'
channelsList
    :: [Text] -- ^ 'cPart'
    -> ChannelsList
channelsList pCPart_ =
  ChannelsList'
    { _cXgafv = Nothing
    , _cPart = _Coerce # pCPart_
    , _cMine = Nothing
    , _cUploadProtocol = Nothing
    , _cForUsername = Nothing
    , _cAccessToken = Nothing
    , _cUploadType = Nothing
    , _cHl = Nothing
    , _cOnBehalfOfContentOwner = Nothing
    , _cCategoryId = Nothing
    , _cId = Nothing
    , _cMySubscribers = Nothing
    , _cPageToken = Nothing
    , _cManagedByMe = Nothing
    , _cMaxResults = 5
    , _cCallback = Nothing
    }


-- | V1 error format.
cXgafv :: Lens' ChannelsList (Maybe Xgafv)
cXgafv = lens _cXgafv (\ s a -> s{_cXgafv = a})

-- | The *part* parameter specifies a comma-separated list of one or more
-- channel resource properties that the API response will include. If the
-- parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in a
-- channel resource, the contentDetails property contains other properties,
-- such as the uploads properties. As such, if you set
-- *part=contentDetails*, the API response will also contain all of those
-- nested properties.
cPart :: Lens' ChannelsList [Text]
cPart
  = lens _cPart (\ s a -> s{_cPart = a}) . _Coerce

-- | Return the ids of channels owned by the authenticated user.
cMine :: Lens' ChannelsList (Maybe Bool)
cMine = lens _cMine (\ s a -> s{_cMine = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cUploadProtocol :: Lens' ChannelsList (Maybe Text)
cUploadProtocol
  = lens _cUploadProtocol
      (\ s a -> s{_cUploadProtocol = a})

-- | Return the channel associated with a YouTube username.
cForUsername :: Lens' ChannelsList (Maybe Text)
cForUsername
  = lens _cForUsername (\ s a -> s{_cForUsername = a})

-- | OAuth access token.
cAccessToken :: Lens' ChannelsList (Maybe Text)
cAccessToken
  = lens _cAccessToken (\ s a -> s{_cAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cUploadType :: Lens' ChannelsList (Maybe Text)
cUploadType
  = lens _cUploadType (\ s a -> s{_cUploadType = a})

-- | Stands for \"host language\". Specifies the localization language of the
-- metadata to be filled into snippet.localized. The field is filled with
-- the default metadata if there is no localization in the specified
-- language. The parameter value must be a language code included in the
-- list returned by the i18nLanguages.list method (e.g. en_US, es_MX).
cHl :: Lens' ChannelsList (Maybe Text)
cHl = lens _cHl (\ s a -> s{_cHl = a})

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
cOnBehalfOfContentOwner :: Lens' ChannelsList (Maybe Text)
cOnBehalfOfContentOwner
  = lens _cOnBehalfOfContentOwner
      (\ s a -> s{_cOnBehalfOfContentOwner = a})

-- | Return the channels within the specified guide category ID.
cCategoryId :: Lens' ChannelsList (Maybe Text)
cCategoryId
  = lens _cCategoryId (\ s a -> s{_cCategoryId = a})

-- | Return the channels with the specified IDs.
cId :: Lens' ChannelsList [Text]
cId
  = lens _cId (\ s a -> s{_cId = a}) . _Default .
      _Coerce

-- | Return the channels subscribed to the authenticated user
cMySubscribers :: Lens' ChannelsList (Maybe Bool)
cMySubscribers
  = lens _cMySubscribers
      (\ s a -> s{_cMySubscribers = a})

-- | The *pageToken* parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
cPageToken :: Lens' ChannelsList (Maybe Text)
cPageToken
  = lens _cPageToken (\ s a -> s{_cPageToken = a})

-- | Return the channels managed by the authenticated user.
cManagedByMe :: Lens' ChannelsList (Maybe Bool)
cManagedByMe
  = lens _cManagedByMe (\ s a -> s{_cManagedByMe = a})

-- | The *maxResults* parameter specifies the maximum number of items that
-- should be returned in the result set.
cMaxResults :: Lens' ChannelsList Word32
cMaxResults
  = lens _cMaxResults (\ s a -> s{_cMaxResults = a}) .
      _Coerce

-- | JSONP
cCallback :: Lens' ChannelsList (Maybe Text)
cCallback
  = lens _cCallback (\ s a -> s{_cCallback = a})

instance GoogleRequest ChannelsList where
        type Rs ChannelsList = ChannelListResponse
        type Scopes ChannelsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner",
               "https://www.googleapis.com/auth/youtubepartner-channel-audit"]
        requestClient ChannelsList'{..}
          = go _cPart _cXgafv _cMine _cUploadProtocol
              _cForUsername
              _cAccessToken
              _cUploadType
              _cHl
              _cOnBehalfOfContentOwner
              _cCategoryId
              (_cId ^. _Default)
              _cMySubscribers
              _cPageToken
              _cManagedByMe
              (Just _cMaxResults)
              _cCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy ChannelsListResource)
                      mempty
