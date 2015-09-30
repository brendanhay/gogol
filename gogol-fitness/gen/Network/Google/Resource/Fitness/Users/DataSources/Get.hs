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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a data source identified by a data stream ID.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @FitnessUsersDataSourcesGet@.
module Network.Google.Resource.Fitness.Users.DataSources.Get
    (
    -- * REST Resource
      UsersDataSourcesGetResource

    -- * Creating a Request
    , usersDataSourcesGet'
    , UsersDataSourcesGet'

    -- * Request Lenses
    , udsgQuotaUser
    , udsgPrettyPrint
    , udsgUserIp
    , udsgDataSourceId
    , udsgUserId
    , udsgKey
    , udsgOauthToken
    , udsgFields
    , udsgAlt
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersDataSourcesGet@ which the
-- 'UsersDataSourcesGet'' request conforms to.
type UsersDataSourcesGetResource =
     Capture "userId" Text :>
       "dataSources" :>
         Capture "dataSourceId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] DataSource

-- | Returns a data source identified by a data stream ID.
--
-- /See:/ 'usersDataSourcesGet'' smart constructor.
data UsersDataSourcesGet' = UsersDataSourcesGet'
    { _udsgQuotaUser    :: !(Maybe Text)
    , _udsgPrettyPrint  :: !Bool
    , _udsgUserIp       :: !(Maybe Text)
    , _udsgDataSourceId :: !Text
    , _udsgUserId       :: !Text
    , _udsgKey          :: !(Maybe Text)
    , _udsgOauthToken   :: !(Maybe Text)
    , _udsgFields       :: !(Maybe Text)
    , _udsgAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsgQuotaUser'
--
-- * 'udsgPrettyPrint'
--
-- * 'udsgUserIp'
--
-- * 'udsgDataSourceId'
--
-- * 'udsgUserId'
--
-- * 'udsgKey'
--
-- * 'udsgOauthToken'
--
-- * 'udsgFields'
--
-- * 'udsgAlt'
usersDataSourcesGet'
    :: Text -- ^ 'dataSourceId'
    -> Text -- ^ 'userId'
    -> UsersDataSourcesGet'
usersDataSourcesGet' pUdsgDataSourceId_ pUdsgUserId_ =
    UsersDataSourcesGet'
    { _udsgQuotaUser = Nothing
    , _udsgPrettyPrint = True
    , _udsgUserIp = Nothing
    , _udsgDataSourceId = pUdsgDataSourceId_
    , _udsgUserId = pUdsgUserId_
    , _udsgKey = Nothing
    , _udsgOauthToken = Nothing
    , _udsgFields = Nothing
    , _udsgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udsgQuotaUser :: Lens' UsersDataSourcesGet' (Maybe Text)
udsgQuotaUser
  = lens _udsgQuotaUser
      (\ s a -> s{_udsgQuotaUser = a})

-- | Returns response with indentations and line breaks.
udsgPrettyPrint :: Lens' UsersDataSourcesGet' Bool
udsgPrettyPrint
  = lens _udsgPrettyPrint
      (\ s a -> s{_udsgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udsgUserIp :: Lens' UsersDataSourcesGet' (Maybe Text)
udsgUserIp
  = lens _udsgUserIp (\ s a -> s{_udsgUserIp = a})

-- | The data stream ID of the data source to retrieve.
udsgDataSourceId :: Lens' UsersDataSourcesGet' Text
udsgDataSourceId
  = lens _udsgDataSourceId
      (\ s a -> s{_udsgDataSourceId = a})

-- | Retrieve a data source for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsgUserId :: Lens' UsersDataSourcesGet' Text
udsgUserId
  = lens _udsgUserId (\ s a -> s{_udsgUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udsgKey :: Lens' UsersDataSourcesGet' (Maybe Text)
udsgKey = lens _udsgKey (\ s a -> s{_udsgKey = a})

-- | OAuth 2.0 token for the current user.
udsgOauthToken :: Lens' UsersDataSourcesGet' (Maybe Text)
udsgOauthToken
  = lens _udsgOauthToken
      (\ s a -> s{_udsgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
udsgFields :: Lens' UsersDataSourcesGet' (Maybe Text)
udsgFields
  = lens _udsgFields (\ s a -> s{_udsgFields = a})

-- | Data format for the response.
udsgAlt :: Lens' UsersDataSourcesGet' Alt
udsgAlt = lens _udsgAlt (\ s a -> s{_udsgAlt = a})

instance GoogleRequest UsersDataSourcesGet' where
        type Rs UsersDataSourcesGet' = DataSource
        request = requestWithRoute defReq fitnessURL
        requestWithRoute r u UsersDataSourcesGet'{..}
          = go _udsgQuotaUser (Just _udsgPrettyPrint)
              _udsgUserIp
              _udsgDataSourceId
              _udsgUserId
              _udsgKey
              _udsgOauthToken
              _udsgFields
              (Just _udsgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDataSourcesGetResource)
                      r
                      u
