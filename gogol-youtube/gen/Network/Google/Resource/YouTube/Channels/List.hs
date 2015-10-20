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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a collection of zero or more channel resources that match the
-- request criteria.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.channels.list@.
module Network.Google.Resource.YouTube.Channels.List
    (
    -- * REST Resource
      ChannelsListResource

    -- * Creating a Request
    , channelsList
    , ChannelsList

    -- * Request Lenses
    , cPart
    , cMine
    , cForUsername
    , cHl
    , cOnBehalfOfContentOwner
    , cCategoryId
    , cId
    , cMySubscribers
    , cPageToken
    , cManagedByMe
    , cMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.channels.list@ method which the
-- 'ChannelsList' request conforms to.
type ChannelsListResource =
     "channels" :>
       QueryParam "part" Text :>
         QueryParam "mine" Bool :>
           QueryParam "forUsername" Text :>
             QueryParam "hl" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "categoryId" Text :>
                   QueryParam "id" Text :>
                     QueryParam "mySubscribers" Bool :>
                       QueryParam "pageToken" Text :>
                         QueryParam "managedByMe" Bool :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ChannelListResponse

-- | Returns a collection of zero or more channel resources that match the
-- request criteria.
--
-- /See:/ 'channelsList' smart constructor.
data ChannelsList = ChannelsList
    { _cPart                   :: !Text
    , _cMine                   :: !(Maybe Bool)
    , _cForUsername            :: !(Maybe Text)
    , _cHl                     :: !(Maybe Text)
    , _cOnBehalfOfContentOwner :: !(Maybe Text)
    , _cCategoryId             :: !(Maybe Text)
    , _cId                     :: !(Maybe Text)
    , _cMySubscribers          :: !(Maybe Bool)
    , _cPageToken              :: !(Maybe Text)
    , _cManagedByMe            :: !(Maybe Bool)
    , _cMaxResults             :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cPart'
--
-- * 'cMine'
--
-- * 'cForUsername'
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
channelsList
    :: Text -- ^ 'cPart'
    -> ChannelsList
channelsList pCPart_ =
    ChannelsList
    { _cPart = pCPart_
    , _cMine = Nothing
    , _cForUsername = Nothing
    , _cHl = Nothing
    , _cOnBehalfOfContentOwner = Nothing
    , _cCategoryId = Nothing
    , _cId = Nothing
    , _cMySubscribers = Nothing
    , _cPageToken = Nothing
    , _cManagedByMe = Nothing
    , _cMaxResults = 5
    }

-- | The part parameter specifies a comma-separated list of one or more
-- channel resource properties that the API response will include. If the
-- parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in a
-- channel resource, the contentDetails property contains other properties,
-- such as the uploads properties. As such, if you set part=contentDetails,
-- the API response will also contain all of those nested properties.
cPart :: Lens' ChannelsList Text
cPart = lens _cPart (\ s a -> s{_cPart = a})

-- | Set this parameter\'s value to true to instruct the API to only return
-- channels owned by the authenticated user.
cMine :: Lens' ChannelsList (Maybe Bool)
cMine = lens _cMine (\ s a -> s{_cMine = a})

-- | The forUsername parameter specifies a YouTube username, thereby
-- requesting the channel associated with that username.
cForUsername :: Lens' ChannelsList (Maybe Text)
cForUsername
  = lens _cForUsername (\ s a -> s{_cForUsername = a})

-- | The hl parameter should be used for filter out the properties that are
-- not in the given language. Used for the brandingSettings part.
cHl :: Lens' ChannelsList (Maybe Text)
cHl = lens _cHl (\ s a -> s{_cHl = a})

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
cOnBehalfOfContentOwner :: Lens' ChannelsList (Maybe Text)
cOnBehalfOfContentOwner
  = lens _cOnBehalfOfContentOwner
      (\ s a -> s{_cOnBehalfOfContentOwner = a})

-- | The categoryId parameter specifies a YouTube guide category, thereby
-- requesting YouTube channels associated with that category.
cCategoryId :: Lens' ChannelsList (Maybe Text)
cCategoryId
  = lens _cCategoryId (\ s a -> s{_cCategoryId = a})

-- | The id parameter specifies a comma-separated list of the YouTube channel
-- ID(s) for the resource(s) that are being retrieved. In a channel
-- resource, the id property specifies the channel\'s YouTube channel ID.
cId :: Lens' ChannelsList (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | Use the subscriptions.list method and its mySubscribers parameter to
-- retrieve a list of subscribers to the authenticated user\'s channel.
cMySubscribers :: Lens' ChannelsList (Maybe Bool)
cMySubscribers
  = lens _cMySubscribers
      (\ s a -> s{_cMySubscribers = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
cPageToken :: Lens' ChannelsList (Maybe Text)
cPageToken
  = lens _cPageToken (\ s a -> s{_cPageToken = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. Set this parameter\'s value to true to instruct the API to
-- only return channels managed by the content owner that the
-- onBehalfOfContentOwner parameter specifies. The user must be
-- authenticated as a CMS account linked to the specified content owner and
-- onBehalfOfContentOwner must be provided.
cManagedByMe :: Lens' ChannelsList (Maybe Bool)
cManagedByMe
  = lens _cManagedByMe (\ s a -> s{_cManagedByMe = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
cMaxResults :: Lens' ChannelsList Word32
cMaxResults
  = lens _cMaxResults (\ s a -> s{_cMaxResults = a})

instance GoogleRequest ChannelsList where
        type Rs ChannelsList = ChannelListResponse
        requestClient ChannelsList{..}
          = go (Just _cPart) _cMine _cForUsername _cHl
              _cOnBehalfOfContentOwner
              _cCategoryId
              _cId
              _cMySubscribers
              _cPageToken
              _cManagedByMe
              (Just _cMaxResults)
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy ChannelsListResource)
                      mempty
