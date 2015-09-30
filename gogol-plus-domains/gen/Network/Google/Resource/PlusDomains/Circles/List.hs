{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PlusDomains.Circles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all of the circles for a user.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesList@.
module Network.Google.Resource.PlusDomains.Circles.List
    (
    -- * REST Resource
      CirclesListResource

    -- * Creating a Request
    , circlesList'
    , CirclesList'

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clUserIp
    , clUserId
    , clKey
    , clPageToken
    , clOauthToken
    , clMaxResults
    , clFields
    , clAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesList@ which the
-- 'CirclesList'' request conforms to.
type CirclesListResource =
     "people" :>
       Capture "userId" Text :>
         "circles" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] CircleFeed

-- | List all of the circles for a user.
--
-- /See:/ 'circlesList'' smart constructor.
data CirclesList' = CirclesList'
    { _clQuotaUser   :: !(Maybe Text)
    , _clPrettyPrint :: !Bool
    , _clUserIp      :: !(Maybe Text)
    , _clUserId      :: !Text
    , _clKey         :: !(Maybe Text)
    , _clPageToken   :: !(Maybe Text)
    , _clOauthToken  :: !(Maybe Text)
    , _clMaxResults  :: !Word32
    , _clFields      :: !(Maybe Text)
    , _clAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clUserIp'
--
-- * 'clUserId'
--
-- * 'clKey'
--
-- * 'clPageToken'
--
-- * 'clOauthToken'
--
-- * 'clMaxResults'
--
-- * 'clFields'
--
-- * 'clAlt'
circlesList'
    :: Text -- ^ 'userId'
    -> CirclesList'
circlesList' pClUserId_ =
    CirclesList'
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clUserIp = Nothing
    , _clUserId = pClUserId_
    , _clKey = Nothing
    , _clPageToken = Nothing
    , _clOauthToken = Nothing
    , _clMaxResults = 20
    , _clFields = Nothing
    , _clAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' CirclesList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' CirclesList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIp :: Lens' CirclesList' (Maybe Text)
clUserIp = lens _clUserIp (\ s a -> s{_clUserIp = a})

-- | The ID of the user to get circles for. The special value \"me\" can be
-- used to indicate the authenticated user.
clUserId :: Lens' CirclesList' Text
clUserId = lens _clUserId (\ s a -> s{_clUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CirclesList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
clPageToken :: Lens' CirclesList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' CirclesList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | The maximum number of circles to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
clMaxResults :: Lens' CirclesList' Word32
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CirclesList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Data format for the response.
clAlt :: Lens' CirclesList' Alt
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest CirclesList' where
        type Rs CirclesList' = CircleFeed
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesList'{..}
          = go _clQuotaUser (Just _clPrettyPrint) _clUserIp
              _clUserId
              _clKey
              _clPageToken
              _clOauthToken
              (Just _clMaxResults)
              _clFields
              (Just _clAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CirclesListResource)
                      r
                      u
