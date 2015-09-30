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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all data sources that are visible to the developer, using the
-- OAuth scopes provided. The list is not exhaustive: the user may have
-- private data sources that are only visible to other developers or calls
-- using other scopes.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @FitnessUsersDataSourcesList@.
module Network.Google.Resource.Fitness.Users.DataSources.List
    (
    -- * REST Resource
      UsersDataSourcesListResource

    -- * Creating a Request
    , usersDataSourcesList'
    , UsersDataSourcesList'

    -- * Request Lenses
    , udslQuotaUser
    , udslPrettyPrint
    , udslDataTypeName
    , udslUserIp
    , udslUserId
    , udslKey
    , udslOauthToken
    , udslFields
    , udslAlt
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersDataSourcesList@ which the
-- 'UsersDataSourcesList'' request conforms to.
type UsersDataSourcesListResource =
     Capture "userId" Text :>
       "dataSources" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParams "dataTypeName" Text :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] ListDataSourcesResponse

-- | Lists all data sources that are visible to the developer, using the
-- OAuth scopes provided. The list is not exhaustive: the user may have
-- private data sources that are only visible to other developers or calls
-- using other scopes.
--
-- /See:/ 'usersDataSourcesList'' smart constructor.
data UsersDataSourcesList' = UsersDataSourcesList'
    { _udslQuotaUser    :: !(Maybe Text)
    , _udslPrettyPrint  :: !Bool
    , _udslDataTypeName :: !(Maybe Text)
    , _udslUserIp       :: !(Maybe Text)
    , _udslUserId       :: !Text
    , _udslKey          :: !(Maybe Text)
    , _udslOauthToken   :: !(Maybe Text)
    , _udslFields       :: !(Maybe Text)
    , _udslAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udslQuotaUser'
--
-- * 'udslPrettyPrint'
--
-- * 'udslDataTypeName'
--
-- * 'udslUserIp'
--
-- * 'udslUserId'
--
-- * 'udslKey'
--
-- * 'udslOauthToken'
--
-- * 'udslFields'
--
-- * 'udslAlt'
usersDataSourcesList'
    :: Text -- ^ 'userId'
    -> UsersDataSourcesList'
usersDataSourcesList' pUdslUserId_ =
    UsersDataSourcesList'
    { _udslQuotaUser = Nothing
    , _udslPrettyPrint = True
    , _udslDataTypeName = Nothing
    , _udslUserIp = Nothing
    , _udslUserId = pUdslUserId_
    , _udslKey = Nothing
    , _udslOauthToken = Nothing
    , _udslFields = Nothing
    , _udslAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udslQuotaUser :: Lens' UsersDataSourcesList' (Maybe Text)
udslQuotaUser
  = lens _udslQuotaUser
      (\ s a -> s{_udslQuotaUser = a})

-- | Returns response with indentations and line breaks.
udslPrettyPrint :: Lens' UsersDataSourcesList' Bool
udslPrettyPrint
  = lens _udslPrettyPrint
      (\ s a -> s{_udslPrettyPrint = a})

-- | The names of data types to include in the list. If not specified, all
-- data sources will be returned.
udslDataTypeName :: Lens' UsersDataSourcesList' (Maybe Text)
udslDataTypeName
  = lens _udslDataTypeName
      (\ s a -> s{_udslDataTypeName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udslUserIp :: Lens' UsersDataSourcesList' (Maybe Text)
udslUserIp
  = lens _udslUserIp (\ s a -> s{_udslUserIp = a})

-- | List data sources for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udslUserId :: Lens' UsersDataSourcesList' Text
udslUserId
  = lens _udslUserId (\ s a -> s{_udslUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udslKey :: Lens' UsersDataSourcesList' (Maybe Text)
udslKey = lens _udslKey (\ s a -> s{_udslKey = a})

-- | OAuth 2.0 token for the current user.
udslOauthToken :: Lens' UsersDataSourcesList' (Maybe Text)
udslOauthToken
  = lens _udslOauthToken
      (\ s a -> s{_udslOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
udslFields :: Lens' UsersDataSourcesList' (Maybe Text)
udslFields
  = lens _udslFields (\ s a -> s{_udslFields = a})

-- | Data format for the response.
udslAlt :: Lens' UsersDataSourcesList' Alt
udslAlt = lens _udslAlt (\ s a -> s{_udslAlt = a})

instance GoogleRequest UsersDataSourcesList' where
        type Rs UsersDataSourcesList' =
             ListDataSourcesResponse
        request = requestWithRoute defReq fitnessURL
        requestWithRoute r u UsersDataSourcesList'{..}
          = go _udslQuotaUser (Just _udslPrettyPrint)
              _udslDataTypeName
              _udslUserIp
              _udslUserId
              _udslKey
              _udslOauthToken
              _udslFields
              (Just _udslAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDataSourcesListResource)
                      r
                      u
