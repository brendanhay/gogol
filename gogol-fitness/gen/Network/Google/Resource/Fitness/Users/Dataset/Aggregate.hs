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
    , udaAggregateRequest
    , udaUserIP
    , udaUserId
    , udaKey
    , udaOAuthToken
    , udaFields
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
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AggregateRequest :>
                         Post '[JSON] AggregateResponse

-- | Aggregates data of a certain type or stream into buckets divided by a
-- given type of boundary. Multiple data sets of multiple types and from
-- multiple sources can be aggreated into exactly one bucket type per
-- request.
--
-- /See:/ 'usersDatasetAggregate'' smart constructor.
data UsersDatasetAggregate' = UsersDatasetAggregate'
    { _udaQuotaUser        :: !(Maybe Text)
    , _udaPrettyPrint      :: !Bool
    , _udaAggregateRequest :: !AggregateRequest
    , _udaUserIP           :: !(Maybe Text)
    , _udaUserId           :: !Text
    , _udaKey              :: !(Maybe Key)
    , _udaOAuthToken       :: !(Maybe OAuthToken)
    , _udaFields           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDatasetAggregate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udaQuotaUser'
--
-- * 'udaPrettyPrint'
--
-- * 'udaAggregateRequest'
--
-- * 'udaUserIP'
--
-- * 'udaUserId'
--
-- * 'udaKey'
--
-- * 'udaOAuthToken'
--
-- * 'udaFields'
usersDatasetAggregate'
    :: AggregateRequest -- ^ 'AggregateRequest'
    -> Text -- ^ 'userId'
    -> UsersDatasetAggregate'
usersDatasetAggregate' pUdaAggregateRequest_ pUdaUserId_ =
    UsersDatasetAggregate'
    { _udaQuotaUser = Nothing
    , _udaPrettyPrint = True
    , _udaAggregateRequest = pUdaAggregateRequest_
    , _udaUserIP = Nothing
    , _udaUserId = pUdaUserId_
    , _udaKey = Nothing
    , _udaOAuthToken = Nothing
    , _udaFields = Nothing
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

-- | Multipart request metadata.
udaAggregateRequest :: Lens' UsersDatasetAggregate' AggregateRequest
udaAggregateRequest
  = lens _udaAggregateRequest
      (\ s a -> s{_udaAggregateRequest = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udaUserIP :: Lens' UsersDatasetAggregate' (Maybe Text)
udaUserIP
  = lens _udaUserIP (\ s a -> s{_udaUserIP = a})

-- | Aggregate data for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udaUserId :: Lens' UsersDatasetAggregate' Text
udaUserId
  = lens _udaUserId (\ s a -> s{_udaUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udaKey :: Lens' UsersDatasetAggregate' (Maybe Key)
udaKey = lens _udaKey (\ s a -> s{_udaKey = a})

-- | OAuth 2.0 token for the current user.
udaOAuthToken :: Lens' UsersDatasetAggregate' (Maybe OAuthToken)
udaOAuthToken
  = lens _udaOAuthToken
      (\ s a -> s{_udaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
udaFields :: Lens' UsersDatasetAggregate' (Maybe Text)
udaFields
  = lens _udaFields (\ s a -> s{_udaFields = a})

instance GoogleAuth UsersDatasetAggregate' where
        authKey = udaKey . _Just
        authToken = udaOAuthToken . _Just

instance GoogleRequest UsersDatasetAggregate' where
        type Rs UsersDatasetAggregate' = AggregateResponse
        request = requestWithRoute defReq fitnessURL
        requestWithRoute r u UsersDatasetAggregate'{..}
          = go _udaQuotaUser (Just _udaPrettyPrint) _udaUserIP
              _udaUserId
              _udaKey
              _udaOAuthToken
              _udaFields
              (Just AltJSON)
              _udaAggregateRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDatasetAggregateResource)
                      r
                      u
