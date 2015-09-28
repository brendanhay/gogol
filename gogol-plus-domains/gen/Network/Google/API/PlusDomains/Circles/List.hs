{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.PlusDomains.Circles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all of the circles for a user.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.circles.list@.
module Network.Google.API.PlusDomains.Circles.List
    (
    -- * REST Resource
      CirclesListAPI

    -- * Creating a Request
    , circlesList'
    , CirclesList'

    -- * Request Lenses
    , cQuotaUser
    , cPrettyPrint
    , cUserIp
    , cUserId
    , cKey
    , cPageToken
    , cOauthToken
    , cMaxResults
    , cFields
    , cAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for plusDomains.circles.list which the
-- 'CirclesList'' request conforms to.
type CirclesListAPI =
     "people" :>
       Capture "userId" Text :>
         "circles" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Nat :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] CircleFeed

-- | List all of the circles for a user.
--
-- /See:/ 'circlesList'' smart constructor.
data CirclesList' = CirclesList'
    { _cQuotaUser   :: !(Maybe Text)
    , _cPrettyPrint :: !Bool
    , _cUserIp      :: !(Maybe Text)
    , _cUserId      :: !Text
    , _cKey         :: !(Maybe Text)
    , _cPageToken   :: !(Maybe Text)
    , _cOauthToken  :: !(Maybe Text)
    , _cMaxResults  :: !Nat
    , _cFields      :: !(Maybe Text)
    , _cAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPrettyPrint'
--
-- * 'cUserIp'
--
-- * 'cUserId'
--
-- * 'cKey'
--
-- * 'cPageToken'
--
-- * 'cOauthToken'
--
-- * 'cMaxResults'
--
-- * 'cFields'
--
-- * 'cAlt'
circlesList'
    :: Text -- ^ 'userId'
    -> CirclesList'
circlesList' pCUserId_ =
    CirclesList'
    { _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cUserIp = Nothing
    , _cUserId = pCUserId_
    , _cKey = Nothing
    , _cPageToken = Nothing
    , _cOauthToken = Nothing
    , _cMaxResults = 20
    , _cFields = Nothing
    , _cAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' CirclesList' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' CirclesList' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIp :: Lens' CirclesList' (Maybe Text)
cUserIp = lens _cUserIp (\ s a -> s{_cUserIp = a})

-- | The ID of the user to get circles for. The special value \"me\" can be
-- used to indicate the authenticated user.
cUserId :: Lens' CirclesList' Text
cUserId = lens _cUserId (\ s a -> s{_cUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' CirclesList' (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
cPageToken :: Lens' CirclesList' (Maybe Text)
cPageToken
  = lens _cPageToken (\ s a -> s{_cPageToken = a})

-- | OAuth 2.0 token for the current user.
cOauthToken :: Lens' CirclesList' (Maybe Text)
cOauthToken
  = lens _cOauthToken (\ s a -> s{_cOauthToken = a})

-- | The maximum number of circles to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
cMaxResults :: Lens' CirclesList' Natural
cMaxResults
  = lens _cMaxResults (\ s a -> s{_cMaxResults = a}) .
      _Nat

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' CirclesList' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

-- | Data format for the response.
cAlt :: Lens' CirclesList' Alt
cAlt = lens _cAlt (\ s a -> s{_cAlt = a})

instance GoogleRequest CirclesList' where
        type Rs CirclesList' = CircleFeed
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesList'{..}
          = go _cQuotaUser (Just _cPrettyPrint) _cUserIp
              _cUserId
              _cKey
              _cPageToken
              _cOauthToken
              (Just _cMaxResults)
              _cFields
              (Just _cAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CirclesListAPI) r u
