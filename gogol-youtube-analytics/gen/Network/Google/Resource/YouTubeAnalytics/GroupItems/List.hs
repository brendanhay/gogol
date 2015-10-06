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
-- Module      : Network.Google.Resource.YouTubeAnalytics.GroupItems.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a collection of group items that match the API request
-- parameters.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @YouTubeAnalyticsGroupItemsList@.
module Network.Google.Resource.YouTubeAnalytics.GroupItems.List
    (
    -- * REST Resource
      GroupItemsListResource

    -- * Creating a Request
    , groupItemsList'
    , GroupItemsList'

    -- * Request Lenses
    , gilQuotaUser
    , gilPrettyPrint
    , gilUserIP
    , gilOnBehalfOfContentOwner
    , gilKey
    , gilGroupId
    , gilOAuthToken
    , gilFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @YouTubeAnalyticsGroupItemsList@ which the
-- 'GroupItemsList'' request conforms to.
type GroupItemsListResource =
     "groupItems" :>
       QueryParam "groupId" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] GroupItemListResponse

-- | Returns a collection of group items that match the API request
-- parameters.
--
-- /See:/ 'groupItemsList'' smart constructor.
data GroupItemsList' = GroupItemsList'
    { _gilQuotaUser              :: !(Maybe Text)
    , _gilPrettyPrint            :: !Bool
    , _gilUserIP                 :: !(Maybe Text)
    , _gilOnBehalfOfContentOwner :: !(Maybe Text)
    , _gilKey                    :: !(Maybe AuthKey)
    , _gilGroupId                :: !Text
    , _gilOAuthToken             :: !(Maybe OAuthToken)
    , _gilFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupItemsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gilQuotaUser'
--
-- * 'gilPrettyPrint'
--
-- * 'gilUserIP'
--
-- * 'gilOnBehalfOfContentOwner'
--
-- * 'gilKey'
--
-- * 'gilGroupId'
--
-- * 'gilOAuthToken'
--
-- * 'gilFields'
groupItemsList'
    :: Text -- ^ 'groupId'
    -> GroupItemsList'
groupItemsList' pGilGroupId_ =
    GroupItemsList'
    { _gilQuotaUser = Nothing
    , _gilPrettyPrint = True
    , _gilUserIP = Nothing
    , _gilOnBehalfOfContentOwner = Nothing
    , _gilKey = Nothing
    , _gilGroupId = pGilGroupId_
    , _gilOAuthToken = Nothing
    , _gilFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gilQuotaUser :: Lens' GroupItemsList' (Maybe Text)
gilQuotaUser
  = lens _gilQuotaUser (\ s a -> s{_gilQuotaUser = a})

-- | Returns response with indentations and line breaks.
gilPrettyPrint :: Lens' GroupItemsList' Bool
gilPrettyPrint
  = lens _gilPrettyPrint
      (\ s a -> s{_gilPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gilUserIP :: Lens' GroupItemsList' (Maybe Text)
gilUserIP
  = lens _gilUserIP (\ s a -> s{_gilUserIP = a})

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
gilOnBehalfOfContentOwner :: Lens' GroupItemsList' (Maybe Text)
gilOnBehalfOfContentOwner
  = lens _gilOnBehalfOfContentOwner
      (\ s a -> s{_gilOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gilKey :: Lens' GroupItemsList' (Maybe AuthKey)
gilKey = lens _gilKey (\ s a -> s{_gilKey = a})

-- | The id parameter specifies the unique ID of the group for which you want
-- to retrieve group items.
gilGroupId :: Lens' GroupItemsList' Text
gilGroupId
  = lens _gilGroupId (\ s a -> s{_gilGroupId = a})

-- | OAuth 2.0 token for the current user.
gilOAuthToken :: Lens' GroupItemsList' (Maybe OAuthToken)
gilOAuthToken
  = lens _gilOAuthToken
      (\ s a -> s{_gilOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gilFields :: Lens' GroupItemsList' (Maybe Text)
gilFields
  = lens _gilFields (\ s a -> s{_gilFields = a})

instance GoogleAuth GroupItemsList' where
        authKey = gilKey . _Just
        authToken = gilOAuthToken . _Just

instance GoogleRequest GroupItemsList' where
        type Rs GroupItemsList' = GroupItemListResponse
        request = requestWith youTubeAnalyticsRequest
        requestWith rq GroupItemsList'{..}
          = go (Just _gilGroupId) _gilOnBehalfOfContentOwner
              _gilQuotaUser
              (Just _gilPrettyPrint)
              _gilUserIP
              _gilFields
              _gilKey
              _gilOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy GroupItemsListResource)
                      rq
