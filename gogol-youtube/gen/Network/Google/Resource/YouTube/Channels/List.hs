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
-- | Returns a collection of zero or more channel resources that match the
-- request criteria.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeChannelsList@.
module Network.Google.Resource.YouTube.Channels.List
    (
    -- * REST Resource
      ChannelsListResource

    -- * Creating a Request
    , channelsList'
    , ChannelsList'

    -- * Request Lenses
    , clQuotaUser
    , clPart
    , clPrettyPrint
    , clMine
    , clForUsername
    , clUserIP
    , clHl
    , clOnBehalfOfContentOwner
    , clKey
    , clCategoryId
    , clId
    , clMySubscribers
    , clPageToken
    , clOAuthToken
    , clManagedByMe
    , clMaxResults
    , clFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeChannelsList@ method which the
-- 'ChannelsList'' request conforms to.
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
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "userIp" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" AuthKey :>
                                       Header "Authorization" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] ChannelListResponse

-- | Returns a collection of zero or more channel resources that match the
-- request criteria.
--
-- /See:/ 'channelsList'' smart constructor.
data ChannelsList' = ChannelsList'
    { _clQuotaUser              :: !(Maybe Text)
    , _clPart                   :: !Text
    , _clPrettyPrint            :: !Bool
    , _clMine                   :: !(Maybe Bool)
    , _clForUsername            :: !(Maybe Text)
    , _clUserIP                 :: !(Maybe Text)
    , _clHl                     :: !(Maybe Text)
    , _clOnBehalfOfContentOwner :: !(Maybe Text)
    , _clKey                    :: !(Maybe AuthKey)
    , _clCategoryId             :: !(Maybe Text)
    , _clId                     :: !(Maybe Text)
    , _clMySubscribers          :: !(Maybe Bool)
    , _clPageToken              :: !(Maybe Text)
    , _clOAuthToken             :: !(Maybe OAuthToken)
    , _clManagedByMe            :: !(Maybe Bool)
    , _clMaxResults             :: !Word32
    , _clFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPart'
--
-- * 'clPrettyPrint'
--
-- * 'clMine'
--
-- * 'clForUsername'
--
-- * 'clUserIP'
--
-- * 'clHl'
--
-- * 'clOnBehalfOfContentOwner'
--
-- * 'clKey'
--
-- * 'clCategoryId'
--
-- * 'clId'
--
-- * 'clMySubscribers'
--
-- * 'clPageToken'
--
-- * 'clOAuthToken'
--
-- * 'clManagedByMe'
--
-- * 'clMaxResults'
--
-- * 'clFields'
channelsList'
    :: Text -- ^ 'part'
    -> ChannelsList'
channelsList' pClPart_ =
    ChannelsList'
    { _clQuotaUser = Nothing
    , _clPart = pClPart_
    , _clPrettyPrint = True
    , _clMine = Nothing
    , _clForUsername = Nothing
    , _clUserIP = Nothing
    , _clHl = Nothing
    , _clOnBehalfOfContentOwner = Nothing
    , _clKey = Nothing
    , _clCategoryId = Nothing
    , _clId = Nothing
    , _clMySubscribers = Nothing
    , _clPageToken = Nothing
    , _clOAuthToken = Nothing
    , _clManagedByMe = Nothing
    , _clMaxResults = 5
    , _clFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' ChannelsList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- channel resource properties that the API response will include. If the
-- parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in a
-- channel resource, the contentDetails property contains other properties,
-- such as the uploads properties. As such, if you set part=contentDetails,
-- the API response will also contain all of those nested properties.
clPart :: Lens' ChannelsList' Text
clPart = lens _clPart (\ s a -> s{_clPart = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' ChannelsList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | Set this parameter\'s value to true to instruct the API to only return
-- channels owned by the authenticated user.
clMine :: Lens' ChannelsList' (Maybe Bool)
clMine = lens _clMine (\ s a -> s{_clMine = a})

-- | The forUsername parameter specifies a YouTube username, thereby
-- requesting the channel associated with that username.
clForUsername :: Lens' ChannelsList' (Maybe Text)
clForUsername
  = lens _clForUsername
      (\ s a -> s{_clForUsername = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIP :: Lens' ChannelsList' (Maybe Text)
clUserIP = lens _clUserIP (\ s a -> s{_clUserIP = a})

-- | The hl parameter should be used for filter out the properties that are
-- not in the given language. Used for the brandingSettings part.
clHl :: Lens' ChannelsList' (Maybe Text)
clHl = lens _clHl (\ s a -> s{_clHl = a})

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
clOnBehalfOfContentOwner :: Lens' ChannelsList' (Maybe Text)
clOnBehalfOfContentOwner
  = lens _clOnBehalfOfContentOwner
      (\ s a -> s{_clOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' ChannelsList' (Maybe AuthKey)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | The categoryId parameter specifies a YouTube guide category, thereby
-- requesting YouTube channels associated with that category.
clCategoryId :: Lens' ChannelsList' (Maybe Text)
clCategoryId
  = lens _clCategoryId (\ s a -> s{_clCategoryId = a})

-- | The id parameter specifies a comma-separated list of the YouTube channel
-- ID(s) for the resource(s) that are being retrieved. In a channel
-- resource, the id property specifies the channel\'s YouTube channel ID.
clId :: Lens' ChannelsList' (Maybe Text)
clId = lens _clId (\ s a -> s{_clId = a})

-- | Use the subscriptions.list method and its mySubscribers parameter to
-- retrieve a list of subscribers to the authenticated user\'s channel.
clMySubscribers :: Lens' ChannelsList' (Maybe Bool)
clMySubscribers
  = lens _clMySubscribers
      (\ s a -> s{_clMySubscribers = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
clPageToken :: Lens' ChannelsList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | OAuth 2.0 token for the current user.
clOAuthToken :: Lens' ChannelsList' (Maybe OAuthToken)
clOAuthToken
  = lens _clOAuthToken (\ s a -> s{_clOAuthToken = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. Set this parameter\'s value to true to instruct the API to
-- only return channels managed by the content owner that the
-- onBehalfOfContentOwner parameter specifies. The user must be
-- authenticated as a CMS account linked to the specified content owner and
-- onBehalfOfContentOwner must be provided.
clManagedByMe :: Lens' ChannelsList' (Maybe Bool)
clManagedByMe
  = lens _clManagedByMe
      (\ s a -> s{_clManagedByMe = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
clMaxResults :: Lens' ChannelsList' Word32
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' ChannelsList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

instance GoogleAuth ChannelsList' where
        _AuthKey = clKey . _Just
        _AuthToken = clOAuthToken . _Just

instance GoogleRequest ChannelsList' where
        type Rs ChannelsList' = ChannelListResponse
        request = requestWith youTubeRequest
        requestWith rq ChannelsList'{..}
          = go (Just _clPart) _clMine _clForUsername _clHl
              _clOnBehalfOfContentOwner
              _clCategoryId
              _clId
              _clMySubscribers
              _clPageToken
              _clManagedByMe
              (Just _clMaxResults)
              _clQuotaUser
              (Just _clPrettyPrint)
              _clUserIP
              _clFields
              _clKey
              _clOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ChannelsListResource)
                      rq
