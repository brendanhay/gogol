{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete the data source if there are no datapoints associated with it
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @FitnessUsersDataSourcesDelete@.
module Fitness.Users.DataSources.Delete
    (
    -- * REST Resource
      UsersDataSourcesDeleteAPI

    -- * Creating a Request
    , usersDataSourcesDelete
    , UsersDataSourcesDelete

    -- * Request Lenses
    , udsdQuotaUser
    , udsdPrettyPrint
    , udsdUserIp
    , udsdDataSourceId
    , udsdUserId
    , udsdKey
    , udsdOauthToken
    , udsdFields
    , udsdAlt
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersDataSourcesDelete@ which the
-- 'UsersDataSourcesDelete' request conforms to.
type UsersDataSourcesDeleteAPI =
     Capture "userId" Text :>
       "dataSources" :>
         Capture "dataSourceId" Text :>
           Delete '[JSON] DataSource

-- | Delete the data source if there are no datapoints associated with it
--
-- /See:/ 'usersDataSourcesDelete' smart constructor.
data UsersDataSourcesDelete = UsersDataSourcesDelete
    { _udsdQuotaUser    :: !(Maybe Text)
    , _udsdPrettyPrint  :: !Bool
    , _udsdUserIp       :: !(Maybe Text)
    , _udsdDataSourceId :: !Text
    , _udsdUserId       :: !Text
    , _udsdKey          :: !(Maybe Text)
    , _udsdOauthToken   :: !(Maybe Text)
    , _udsdFields       :: !(Maybe Text)
    , _udsdAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsdQuotaUser'
--
-- * 'udsdPrettyPrint'
--
-- * 'udsdUserIp'
--
-- * 'udsdDataSourceId'
--
-- * 'udsdUserId'
--
-- * 'udsdKey'
--
-- * 'udsdOauthToken'
--
-- * 'udsdFields'
--
-- * 'udsdAlt'
usersDataSourcesDelete
    :: Text -- ^ 'dataSourceId'
    -> Text -- ^ 'userId'
    -> UsersDataSourcesDelete
usersDataSourcesDelete pUdsdDataSourceId_ pUdsdUserId_ =
    UsersDataSourcesDelete
    { _udsdQuotaUser = Nothing
    , _udsdPrettyPrint = True
    , _udsdUserIp = Nothing
    , _udsdDataSourceId = pUdsdDataSourceId_
    , _udsdUserId = pUdsdUserId_
    , _udsdKey = Nothing
    , _udsdOauthToken = Nothing
    , _udsdFields = Nothing
    , _udsdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udsdQuotaUser :: Lens' UsersDataSourcesDelete' (Maybe Text)
udsdQuotaUser
  = lens _udsdQuotaUser
      (\ s a -> s{_udsdQuotaUser = a})

-- | Returns response with indentations and line breaks.
udsdPrettyPrint :: Lens' UsersDataSourcesDelete' Bool
udsdPrettyPrint
  = lens _udsdPrettyPrint
      (\ s a -> s{_udsdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udsdUserIp :: Lens' UsersDataSourcesDelete' (Maybe Text)
udsdUserIp
  = lens _udsdUserIp (\ s a -> s{_udsdUserIp = a})

-- | The data stream ID of the data source to delete.
udsdDataSourceId :: Lens' UsersDataSourcesDelete' Text
udsdDataSourceId
  = lens _udsdDataSourceId
      (\ s a -> s{_udsdDataSourceId = a})

-- | Retrieve a data source for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsdUserId :: Lens' UsersDataSourcesDelete' Text
udsdUserId
  = lens _udsdUserId (\ s a -> s{_udsdUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udsdKey :: Lens' UsersDataSourcesDelete' (Maybe Text)
udsdKey = lens _udsdKey (\ s a -> s{_udsdKey = a})

-- | OAuth 2.0 token for the current user.
udsdOauthToken :: Lens' UsersDataSourcesDelete' (Maybe Text)
udsdOauthToken
  = lens _udsdOauthToken
      (\ s a -> s{_udsdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
udsdFields :: Lens' UsersDataSourcesDelete' (Maybe Text)
udsdFields
  = lens _udsdFields (\ s a -> s{_udsdFields = a})

-- | Data format for the response.
udsdAlt :: Lens' UsersDataSourcesDelete' Text
udsdAlt = lens _udsdAlt (\ s a -> s{_udsdAlt = a})

instance GoogleRequest UsersDataSourcesDelete' where
        type Rs UsersDataSourcesDelete' = DataSource
        request = requestWithRoute defReq fitnessURL
        requestWithRoute r u UsersDataSourcesDelete{..}
          = go _udsdQuotaUser _udsdPrettyPrint _udsdUserIp
              _udsdDataSourceId
              _udsdUserId
              _udsdKey
              _udsdOauthToken
              _udsdFields
              _udsdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDataSourcesDeleteAPI)
                      r
                      u
