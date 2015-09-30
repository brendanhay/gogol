{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module PlusDomains.Circles.List
    (
    -- * REST Resource
      CirclesListAPI

    -- * Creating a Request
    , circlesList
    , CirclesList

    -- * Request Lenses
    , cirQuotaUser
    , cirPrettyPrint
    , cirUserIp
    , cirUserId
    , cirKey
    , cirPageToken
    , cirOauthToken
    , cirMaxResults
    , cirFields
    , cirAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesList@ which the
-- 'CirclesList' request conforms to.
type CirclesListAPI =
     "people" :>
       Capture "userId" Text :>
         "circles" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               Get '[JSON] CircleFeed

-- | List all of the circles for a user.
--
-- /See:/ 'circlesList' smart constructor.
data CirclesList = CirclesList
    { _cirQuotaUser   :: !(Maybe Text)
    , _cirPrettyPrint :: !Bool
    , _cirUserIp      :: !(Maybe Text)
    , _cirUserId      :: !Text
    , _cirKey         :: !(Maybe Text)
    , _cirPageToken   :: !(Maybe Text)
    , _cirOauthToken  :: !(Maybe Text)
    , _cirMaxResults  :: !Word32
    , _cirFields      :: !(Maybe Text)
    , _cirAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirQuotaUser'
--
-- * 'cirPrettyPrint'
--
-- * 'cirUserIp'
--
-- * 'cirUserId'
--
-- * 'cirKey'
--
-- * 'cirPageToken'
--
-- * 'cirOauthToken'
--
-- * 'cirMaxResults'
--
-- * 'cirFields'
--
-- * 'cirAlt'
circlesList
    :: Text -- ^ 'userId'
    -> CirclesList
circlesList pCirUserId_ =
    CirclesList
    { _cirQuotaUser = Nothing
    , _cirPrettyPrint = True
    , _cirUserIp = Nothing
    , _cirUserId = pCirUserId_
    , _cirKey = Nothing
    , _cirPageToken = Nothing
    , _cirOauthToken = Nothing
    , _cirMaxResults = 20
    , _cirFields = Nothing
    , _cirAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cirQuotaUser :: Lens' CirclesList' (Maybe Text)
cirQuotaUser
  = lens _cirQuotaUser (\ s a -> s{_cirQuotaUser = a})

-- | Returns response with indentations and line breaks.
cirPrettyPrint :: Lens' CirclesList' Bool
cirPrettyPrint
  = lens _cirPrettyPrint
      (\ s a -> s{_cirPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cirUserIp :: Lens' CirclesList' (Maybe Text)
cirUserIp
  = lens _cirUserIp (\ s a -> s{_cirUserIp = a})

-- | The ID of the user to get circles for. The special value \"me\" can be
-- used to indicate the authenticated user.
cirUserId :: Lens' CirclesList' Text
cirUserId
  = lens _cirUserId (\ s a -> s{_cirUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cirKey :: Lens' CirclesList' (Maybe Text)
cirKey = lens _cirKey (\ s a -> s{_cirKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
cirPageToken :: Lens' CirclesList' (Maybe Text)
cirPageToken
  = lens _cirPageToken (\ s a -> s{_cirPageToken = a})

-- | OAuth 2.0 token for the current user.
cirOauthToken :: Lens' CirclesList' (Maybe Text)
cirOauthToken
  = lens _cirOauthToken
      (\ s a -> s{_cirOauthToken = a})

-- | The maximum number of circles to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
cirMaxResults :: Lens' CirclesList' Word32
cirMaxResults
  = lens _cirMaxResults
      (\ s a -> s{_cirMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
cirFields :: Lens' CirclesList' (Maybe Text)
cirFields
  = lens _cirFields (\ s a -> s{_cirFields = a})

-- | Data format for the response.
cirAlt :: Lens' CirclesList' Text
cirAlt = lens _cirAlt (\ s a -> s{_cirAlt = a})

instance GoogleRequest CirclesList' where
        type Rs CirclesList' = CircleFeed
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesList{..}
          = go _cirQuotaUser _cirPrettyPrint _cirUserIp
              _cirUserId
              _cirKey
              _cirPageToken
              _cirOauthToken
              (Just _cirMaxResults)
              _cirFields
              _cirAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CirclesListAPI) r u
