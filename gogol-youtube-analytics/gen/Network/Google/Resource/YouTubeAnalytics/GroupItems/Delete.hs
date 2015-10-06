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
-- Module      : Network.Google.Resource.YouTubeAnalytics.GroupItems.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes an item from a group.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @YouTubeAnalyticsGroupItemsDelete@.
module Network.Google.Resource.YouTubeAnalytics.GroupItems.Delete
    (
    -- * REST Resource
      GroupItemsDeleteResource

    -- * Creating a Request
    , groupItemsDelete'
    , GroupItemsDelete'

    -- * Request Lenses
    , gidQuotaUser
    , gidPrettyPrint
    , gidUserIP
    , gidOnBehalfOfContentOwner
    , gidKey
    , gidId
    , gidOAuthToken
    , gidFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @YouTubeAnalyticsGroupItemsDelete@ which the
-- 'GroupItemsDelete'' request conforms to.
type GroupItemsDeleteResource =
     "groupItems" :>
       QueryParam "id" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes an item from a group.
--
-- /See:/ 'groupItemsDelete'' smart constructor.
data GroupItemsDelete' = GroupItemsDelete'
    { _gidQuotaUser              :: !(Maybe Text)
    , _gidPrettyPrint            :: !Bool
    , _gidUserIP                 :: !(Maybe Text)
    , _gidOnBehalfOfContentOwner :: !(Maybe Text)
    , _gidKey                    :: !(Maybe AuthKey)
    , _gidId                     :: !Text
    , _gidOAuthToken             :: !(Maybe OAuthToken)
    , _gidFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupItemsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gidQuotaUser'
--
-- * 'gidPrettyPrint'
--
-- * 'gidUserIP'
--
-- * 'gidOnBehalfOfContentOwner'
--
-- * 'gidKey'
--
-- * 'gidId'
--
-- * 'gidOAuthToken'
--
-- * 'gidFields'
groupItemsDelete'
    :: Text -- ^ 'id'
    -> GroupItemsDelete'
groupItemsDelete' pGidId_ =
    GroupItemsDelete'
    { _gidQuotaUser = Nothing
    , _gidPrettyPrint = True
    , _gidUserIP = Nothing
    , _gidOnBehalfOfContentOwner = Nothing
    , _gidKey = Nothing
    , _gidId = pGidId_
    , _gidOAuthToken = Nothing
    , _gidFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gidQuotaUser :: Lens' GroupItemsDelete' (Maybe Text)
gidQuotaUser
  = lens _gidQuotaUser (\ s a -> s{_gidQuotaUser = a})

-- | Returns response with indentations and line breaks.
gidPrettyPrint :: Lens' GroupItemsDelete' Bool
gidPrettyPrint
  = lens _gidPrettyPrint
      (\ s a -> s{_gidPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gidUserIP :: Lens' GroupItemsDelete' (Maybe Text)
gidUserIP
  = lens _gidUserIP (\ s a -> s{_gidUserIP = a})

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
gidOnBehalfOfContentOwner :: Lens' GroupItemsDelete' (Maybe Text)
gidOnBehalfOfContentOwner
  = lens _gidOnBehalfOfContentOwner
      (\ s a -> s{_gidOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gidKey :: Lens' GroupItemsDelete' (Maybe AuthKey)
gidKey = lens _gidKey (\ s a -> s{_gidKey = a})

-- | The id parameter specifies the YouTube group item ID for the group that
-- is being deleted.
gidId :: Lens' GroupItemsDelete' Text
gidId = lens _gidId (\ s a -> s{_gidId = a})

-- | OAuth 2.0 token for the current user.
gidOAuthToken :: Lens' GroupItemsDelete' (Maybe OAuthToken)
gidOAuthToken
  = lens _gidOAuthToken
      (\ s a -> s{_gidOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gidFields :: Lens' GroupItemsDelete' (Maybe Text)
gidFields
  = lens _gidFields (\ s a -> s{_gidFields = a})

instance GoogleAuth GroupItemsDelete' where
        _AuthKey = gidKey . _Just
        _AuthToken = gidOAuthToken . _Just

instance GoogleRequest GroupItemsDelete' where
        type Rs GroupItemsDelete' = ()
        request = requestWith youTubeAnalyticsRequest
        requestWith rq GroupItemsDelete'{..}
          = go (Just _gidId) _gidOnBehalfOfContentOwner
              _gidQuotaUser
              (Just _gidPrettyPrint)
              _gidUserIP
              _gidFields
              _gidKey
              _gidOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy GroupItemsDeleteResource)
                      rq
