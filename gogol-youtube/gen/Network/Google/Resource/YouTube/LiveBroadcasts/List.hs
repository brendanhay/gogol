{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.LiveBroadcasts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of YouTube broadcasts that match the API request
-- parameters.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeLiveBroadcastsList@.
module Network.Google.Resource.YouTube.LiveBroadcasts.List
    (
    -- * REST Resource
      LiveBroadcastsListResource

    -- * Creating a Request
    , liveBroadcastsList'
    , LiveBroadcastsList'

    -- * Request Lenses
    , lblQuotaUser
    , lblPart
    , lblPrettyPrint
    , lblMine
    , lblUserIP
    , lblBroadcastStatus
    , lblOnBehalfOfContentOwner
    , lblKey
    , lblOnBehalfOfContentOwnerChannel
    , lblId
    , lblPageToken
    , lblOAuthToken
    , lblMaxResults
    , lblFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeLiveBroadcastsList@ which the
-- 'LiveBroadcastsList'' request conforms to.
type LiveBroadcastsListResource =
     "liveBroadcasts" :>
       QueryParam "part" Text :>
         QueryParam "mine" Bool :>
           QueryParam "broadcastStatus"
             LiveBroadcastsListBroadcastStatus
             :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "onBehalfOfContentOwnerChannel" Text :>
                 QueryParam "id" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" Word32 :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] LiveBroadcastListResponse

-- | Returns a list of YouTube broadcasts that match the API request
-- parameters.
--
-- /See:/ 'liveBroadcastsList'' smart constructor.
data LiveBroadcastsList' = LiveBroadcastsList'
    { _lblQuotaUser                     :: !(Maybe Text)
    , _lblPart                          :: !Text
    , _lblPrettyPrint                   :: !Bool
    , _lblMine                          :: !(Maybe Bool)
    , _lblUserIP                        :: !(Maybe Text)
    , _lblBroadcastStatus               :: !(Maybe LiveBroadcastsListBroadcastStatus)
    , _lblOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lblKey                           :: !(Maybe Key)
    , _lblOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lblId                            :: !(Maybe Text)
    , _lblPageToken                     :: !(Maybe Text)
    , _lblOAuthToken                    :: !(Maybe OAuthToken)
    , _lblMaxResults                    :: !Word32
    , _lblFields                        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lblQuotaUser'
--
-- * 'lblPart'
--
-- * 'lblPrettyPrint'
--
-- * 'lblMine'
--
-- * 'lblUserIP'
--
-- * 'lblBroadcastStatus'
--
-- * 'lblOnBehalfOfContentOwner'
--
-- * 'lblKey'
--
-- * 'lblOnBehalfOfContentOwnerChannel'
--
-- * 'lblId'
--
-- * 'lblPageToken'
--
-- * 'lblOAuthToken'
--
-- * 'lblMaxResults'
--
-- * 'lblFields'
liveBroadcastsList'
    :: Text -- ^ 'part'
    -> LiveBroadcastsList'
liveBroadcastsList' pLblPart_ =
    LiveBroadcastsList'
    { _lblQuotaUser = Nothing
    , _lblPart = pLblPart_
    , _lblPrettyPrint = True
    , _lblMine = Nothing
    , _lblUserIP = Nothing
    , _lblBroadcastStatus = Nothing
    , _lblOnBehalfOfContentOwner = Nothing
    , _lblKey = Nothing
    , _lblOnBehalfOfContentOwnerChannel = Nothing
    , _lblId = Nothing
    , _lblPageToken = Nothing
    , _lblOAuthToken = Nothing
    , _lblMaxResults = 5
    , _lblFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lblQuotaUser :: Lens' LiveBroadcastsList' (Maybe Text)
lblQuotaUser
  = lens _lblQuotaUser (\ s a -> s{_lblQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- liveBroadcast resource properties that the API response will include.
-- The part names that you can include in the parameter value are id,
-- snippet, contentDetails, and status.
lblPart :: Lens' LiveBroadcastsList' Text
lblPart = lens _lblPart (\ s a -> s{_lblPart = a})

-- | Returns response with indentations and line breaks.
lblPrettyPrint :: Lens' LiveBroadcastsList' Bool
lblPrettyPrint
  = lens _lblPrettyPrint
      (\ s a -> s{_lblPrettyPrint = a})

-- | The mine parameter can be used to instruct the API to only return
-- broadcasts owned by the authenticated user. Set the parameter value to
-- true to only retrieve your own broadcasts.
lblMine :: Lens' LiveBroadcastsList' (Maybe Bool)
lblMine = lens _lblMine (\ s a -> s{_lblMine = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lblUserIP :: Lens' LiveBroadcastsList' (Maybe Text)
lblUserIP
  = lens _lblUserIP (\ s a -> s{_lblUserIP = a})

-- | The broadcastStatus parameter filters the API response to only include
-- broadcasts with the specified status.
lblBroadcastStatus :: Lens' LiveBroadcastsList' (Maybe LiveBroadcastsListBroadcastStatus)
lblBroadcastStatus
  = lens _lblBroadcastStatus
      (\ s a -> s{_lblBroadcastStatus = a})

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
lblOnBehalfOfContentOwner :: Lens' LiveBroadcastsList' (Maybe Text)
lblOnBehalfOfContentOwner
  = lens _lblOnBehalfOfContentOwner
      (\ s a -> s{_lblOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lblKey :: Lens' LiveBroadcastsList' (Maybe Key)
lblKey = lens _lblKey (\ s a -> s{_lblKey = a})

-- | This parameter can only be used in a properly authorized request. Note:
-- This parameter is intended exclusively for YouTube content partners. The
-- onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
-- of the channel to which a video is being added. This parameter is
-- required when a request specifies a value for the onBehalfOfContentOwner
-- parameter, and it can only be used in conjunction with that parameter.
-- In addition, the request must be authorized using a CMS account that is
-- linked to the content owner that the onBehalfOfContentOwner parameter
-- specifies. Finally, the channel that the onBehalfOfContentOwnerChannel
-- parameter value specifies must be linked to the content owner that the
-- onBehalfOfContentOwner parameter specifies. This parameter is intended
-- for YouTube content partners that own and manage many different YouTube
-- channels. It allows content owners to authenticate once and perform
-- actions on behalf of the channel specified in the parameter value,
-- without having to provide authentication credentials for each separate
-- channel.
lblOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsList' (Maybe Text)
lblOnBehalfOfContentOwnerChannel
  = lens _lblOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lblOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies a comma-separated list of YouTube broadcast
-- IDs that identify the broadcasts being retrieved. In a liveBroadcast
-- resource, the id property specifies the broadcast\'s ID.
lblId :: Lens' LiveBroadcastsList' (Maybe Text)
lblId = lens _lblId (\ s a -> s{_lblId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
lblPageToken :: Lens' LiveBroadcastsList' (Maybe Text)
lblPageToken
  = lens _lblPageToken (\ s a -> s{_lblPageToken = a})

-- | OAuth 2.0 token for the current user.
lblOAuthToken :: Lens' LiveBroadcastsList' (Maybe OAuthToken)
lblOAuthToken
  = lens _lblOAuthToken
      (\ s a -> s{_lblOAuthToken = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
lblMaxResults :: Lens' LiveBroadcastsList' Word32
lblMaxResults
  = lens _lblMaxResults
      (\ s a -> s{_lblMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
lblFields :: Lens' LiveBroadcastsList' (Maybe Text)
lblFields
  = lens _lblFields (\ s a -> s{_lblFields = a})

instance GoogleAuth LiveBroadcastsList' where
        authKey = lblKey . _Just
        authToken = lblOAuthToken . _Just

instance GoogleRequest LiveBroadcastsList' where
        type Rs LiveBroadcastsList' =
             LiveBroadcastListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u LiveBroadcastsList'{..}
          = go (Just _lblPart) _lblMine _lblBroadcastStatus
              _lblOnBehalfOfContentOwner
              _lblOnBehalfOfContentOwnerChannel
              _lblId
              _lblPageToken
              (Just _lblMaxResults)
              _lblQuotaUser
              (Just _lblPrettyPrint)
              _lblUserIP
              _lblFields
              _lblKey
              _lblOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LiveBroadcastsListResource)
                      r
                      u
