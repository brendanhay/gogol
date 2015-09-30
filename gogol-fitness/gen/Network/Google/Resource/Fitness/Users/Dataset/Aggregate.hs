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
-- Module      : Network.Google.Resource.Fitness.Users.Dataset.Aggregate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Aggregates data of a certain type or stream into buckets divided by a
-- given type of boundary. Multiple data sets of multiple types and from
-- multiple sources can be aggreated into exactly one bucket type per
-- request.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @FitnessUsersDatasetAggregate@.
module Network.Google.Resource.Fitness.Users.Dataset.Aggregate
    (
    -- * REST Resource
      UsersDatasetAggregateResource

    -- * Creating a Request
    , usersDatasetAggregate'
    , UsersDatasetAggregate'

    -- * Request Lenses
    , udaQuotaUser
    , udaPrettyPrint
    , udaUserIp
    , udaUserId
    , udaKey
    , udaOauthToken
    , udaFields
    , udaAlt
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersDatasetAggregate@ which the
-- 'UsersDatasetAggregate'' request conforms to.
type UsersDatasetAggregateResource =
     Capture "userId" Text :>
       "dataset:aggregate" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] AggregateResponse

-- | Aggregates data of a certain type or stream into buckets divided by a
-- given type of boundary. Multiple data sets of multiple types and from
-- multiple sources can be aggreated into exactly one bucket type per
-- request.
--
-- /See:/ 'usersDatasetAggregate'' smart constructor.
data UsersDatasetAggregate' = UsersDatasetAggregate'
    { _udaQuotaUser   :: !(Maybe Text)
    , _udaPrettyPrint :: !Bool
    , _udaUserIp      :: !(Maybe Text)
    , _udaUserId      :: !Text
    , _udaKey         :: !(Maybe Text)
    , _udaOauthToken  :: !(Maybe Text)
    , _udaFields      :: !(Maybe Text)
    , _udaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDatasetAggregate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udaQuotaUser'
--
-- * 'udaPrettyPrint'
--
-- * 'udaUserIp'
--
-- * 'udaUserId'
--
-- * 'udaKey'
--
-- * 'udaOauthToken'
--
-- * 'udaFields'
--
-- * 'udaAlt'
usersDatasetAggregate'
    :: Text -- ^ 'userId'
    -> UsersDatasetAggregate'
usersDatasetAggregate' pUdaUserId_ =
    UsersDatasetAggregate'
    { _udaQuotaUser = Nothing
    , _udaPrettyPrint = True
    , _udaUserIp = Nothing
    , _udaUserId = pUdaUserId_
    , _udaKey = Nothing
    , _udaOauthToken = Nothing
    , _udaFields = Nothing
    , _udaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udaQuotaUser :: Lens' UsersDatasetAggregate' (Maybe Text)
udaQuotaUser
  = lens _udaQuotaUser (\ s a -> s{_udaQuotaUser = a})

-- | Returns response with indentations and line breaks.
udaPrettyPrint :: Lens' UsersDatasetAggregate' Bool
udaPrettyPrint
  = lens _udaPrettyPrint
      (\ s a -> s{_udaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udaUserIp :: Lens' UsersDatasetAggregate' (Maybe Text)
udaUserIp
  = lens _udaUserIp (\ s a -> s{_udaUserIp = a})

-- | Aggregate data for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udaUserId :: Lens' UsersDatasetAggregate' Text
udaUserId
  = lens _udaUserId (\ s a -> s{_udaUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udaKey :: Lens' UsersDatasetAggregate' (Maybe Text)
udaKey = lens _udaKey (\ s a -> s{_udaKey = a})

-- | OAuth 2.0 token for the current user.
udaOauthToken :: Lens' UsersDatasetAggregate' (Maybe Text)
udaOauthToken
  = lens _udaOauthToken
      (\ s a -> s{_udaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
udaFields :: Lens' UsersDatasetAggregate' (Maybe Text)
udaFields
  = lens _udaFields (\ s a -> s{_udaFields = a})

-- | Data format for the response.
udaAlt :: Lens' UsersDatasetAggregate' Alt
udaAlt = lens _udaAlt (\ s a -> s{_udaAlt = a})

instance GoogleRequest UsersDatasetAggregate' where
        type Rs UsersDatasetAggregate' = AggregateResponse
        request = requestWithRoute defReq fitnessURL
        requestWithRoute r u UsersDatasetAggregate'{..}
          = go _udaQuotaUser (Just _udaPrettyPrint) _udaUserIp
              _udaUserId
              _udaKey
              _udaOauthToken
              _udaFields
              (Just _udaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDatasetAggregateResource)
                      r
                      u
