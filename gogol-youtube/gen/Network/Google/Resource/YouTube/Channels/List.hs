{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Channels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a collection of zero or more channel resources that match the
-- request criteria.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeChannelsList@.
module YouTube.Channels.List
    (
    -- * REST Resource
      ChannelsListAPI

    -- * Creating a Request
    , channelsList
    , ChannelsList

    -- * Request Lenses
    , chaQuotaUser
    , chaPart
    , chaPrettyPrint
    , chaMine
    , chaForUsername
    , chaUserIp
    , chaHl
    , chaOnBehalfOfContentOwner
    , chaKey
    , chaCategoryId
    , chaId
    , chaMySubscribers
    , chaPageToken
    , chaOauthToken
    , chaManagedByMe
    , chaMaxResults
    , chaFields
    , chaAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeChannelsList@ which the
-- 'ChannelsList' request conforms to.
type ChannelsListAPI =
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
                             Get '[JSON] ChannelListResponse

-- | Returns a collection of zero or more channel resources that match the
-- request criteria.
--
-- /See:/ 'channelsList' smart constructor.
data ChannelsList = ChannelsList
    { _chaQuotaUser              :: !(Maybe Text)
    , _chaPart                   :: !Text
    , _chaPrettyPrint            :: !Bool
    , _chaMine                   :: !(Maybe Bool)
    , _chaForUsername            :: !(Maybe Text)
    , _chaUserIp                 :: !(Maybe Text)
    , _chaHl                     :: !(Maybe Text)
    , _chaOnBehalfOfContentOwner :: !(Maybe Text)
    , _chaKey                    :: !(Maybe Text)
    , _chaCategoryId             :: !(Maybe Text)
    , _chaId                     :: !(Maybe Text)
    , _chaMySubscribers          :: !(Maybe Bool)
    , _chaPageToken              :: !(Maybe Text)
    , _chaOauthToken             :: !(Maybe Text)
    , _chaManagedByMe            :: !(Maybe Bool)
    , _chaMaxResults             :: !Word32
    , _chaFields                 :: !(Maybe Text)
    , _chaAlt                    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaQuotaUser'
--
-- * 'chaPart'
--
-- * 'chaPrettyPrint'
--
-- * 'chaMine'
--
-- * 'chaForUsername'
--
-- * 'chaUserIp'
--
-- * 'chaHl'
--
-- * 'chaOnBehalfOfContentOwner'
--
-- * 'chaKey'
--
-- * 'chaCategoryId'
--
-- * 'chaId'
--
-- * 'chaMySubscribers'
--
-- * 'chaPageToken'
--
-- * 'chaOauthToken'
--
-- * 'chaManagedByMe'
--
-- * 'chaMaxResults'
--
-- * 'chaFields'
--
-- * 'chaAlt'
channelsList
    :: Text -- ^ 'part'
    -> ChannelsList
channelsList pChaPart_ =
    ChannelsList
    { _chaQuotaUser = Nothing
    , _chaPart = pChaPart_
    , _chaPrettyPrint = True
    , _chaMine = Nothing
    , _chaForUsername = Nothing
    , _chaUserIp = Nothing
    , _chaHl = Nothing
    , _chaOnBehalfOfContentOwner = Nothing
    , _chaKey = Nothing
    , _chaCategoryId = Nothing
    , _chaId = Nothing
    , _chaMySubscribers = Nothing
    , _chaPageToken = Nothing
    , _chaOauthToken = Nothing
    , _chaManagedByMe = Nothing
    , _chaMaxResults = 5
    , _chaFields = Nothing
    , _chaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
chaQuotaUser :: Lens' ChannelsList' (Maybe Text)
chaQuotaUser
  = lens _chaQuotaUser (\ s a -> s{_chaQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- channel resource properties that the API response will include. If the
-- parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in a
-- channel resource, the contentDetails property contains other properties,
-- such as the uploads properties. As such, if you set part=contentDetails,
-- the API response will also contain all of those nested properties.
chaPart :: Lens' ChannelsList' Text
chaPart = lens _chaPart (\ s a -> s{_chaPart = a})

-- | Returns response with indentations and line breaks.
chaPrettyPrint :: Lens' ChannelsList' Bool
chaPrettyPrint
  = lens _chaPrettyPrint
      (\ s a -> s{_chaPrettyPrint = a})

-- | Set this parameter\'s value to true to instruct the API to only return
-- channels owned by the authenticated user.
chaMine :: Lens' ChannelsList' (Maybe Bool)
chaMine = lens _chaMine (\ s a -> s{_chaMine = a})

-- | The forUsername parameter specifies a YouTube username, thereby
-- requesting the channel associated with that username.
chaForUsername :: Lens' ChannelsList' (Maybe Text)
chaForUsername
  = lens _chaForUsername
      (\ s a -> s{_chaForUsername = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
chaUserIp :: Lens' ChannelsList' (Maybe Text)
chaUserIp
  = lens _chaUserIp (\ s a -> s{_chaUserIp = a})

-- | The hl parameter should be used for filter out the properties that are
-- not in the given language. Used for the brandingSettings part.
chaHl :: Lens' ChannelsList' (Maybe Text)
chaHl = lens _chaHl (\ s a -> s{_chaHl = a})

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
chaOnBehalfOfContentOwner :: Lens' ChannelsList' (Maybe Text)
chaOnBehalfOfContentOwner
  = lens _chaOnBehalfOfContentOwner
      (\ s a -> s{_chaOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
chaKey :: Lens' ChannelsList' (Maybe Text)
chaKey = lens _chaKey (\ s a -> s{_chaKey = a})

-- | The categoryId parameter specifies a YouTube guide category, thereby
-- requesting YouTube channels associated with that category.
chaCategoryId :: Lens' ChannelsList' (Maybe Text)
chaCategoryId
  = lens _chaCategoryId
      (\ s a -> s{_chaCategoryId = a})

-- | The id parameter specifies a comma-separated list of the YouTube channel
-- ID(s) for the resource(s) that are being retrieved. In a channel
-- resource, the id property specifies the channel\'s YouTube channel ID.
chaId :: Lens' ChannelsList' (Maybe Text)
chaId = lens _chaId (\ s a -> s{_chaId = a})

-- | Use the subscriptions.list method and its mySubscribers parameter to
-- retrieve a list of subscribers to the authenticated user\'s channel.
chaMySubscribers :: Lens' ChannelsList' (Maybe Bool)
chaMySubscribers
  = lens _chaMySubscribers
      (\ s a -> s{_chaMySubscribers = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
chaPageToken :: Lens' ChannelsList' (Maybe Text)
chaPageToken
  = lens _chaPageToken (\ s a -> s{_chaPageToken = a})

-- | OAuth 2.0 token for the current user.
chaOauthToken :: Lens' ChannelsList' (Maybe Text)
chaOauthToken
  = lens _chaOauthToken
      (\ s a -> s{_chaOauthToken = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. Set this parameter\'s value to true to instruct the API to
-- only return channels managed by the content owner that the
-- onBehalfOfContentOwner parameter specifies. The user must be
-- authenticated as a CMS account linked to the specified content owner and
-- onBehalfOfContentOwner must be provided.
chaManagedByMe :: Lens' ChannelsList' (Maybe Bool)
chaManagedByMe
  = lens _chaManagedByMe
      (\ s a -> s{_chaManagedByMe = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
chaMaxResults :: Lens' ChannelsList' Word32
chaMaxResults
  = lens _chaMaxResults
      (\ s a -> s{_chaMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
chaFields :: Lens' ChannelsList' (Maybe Text)
chaFields
  = lens _chaFields (\ s a -> s{_chaFields = a})

-- | Data format for the response.
chaAlt :: Lens' ChannelsList' Text
chaAlt = lens _chaAlt (\ s a -> s{_chaAlt = a})

instance GoogleRequest ChannelsList' where
        type Rs ChannelsList' = ChannelListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u ChannelsList{..}
          = go _chaQuotaUser (Just _chaPart) _chaPrettyPrint
              _chaMine
              _chaForUsername
              _chaUserIp
              _chaHl
              _chaOnBehalfOfContentOwner
              _chaKey
              _chaCategoryId
              _chaId
              _chaMySubscribers
              _chaPageToken
              _chaOauthToken
              _chaManagedByMe
              (Just _chaMaxResults)
              _chaFields
              _chaAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ChannelsListAPI) r
                      u
