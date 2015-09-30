{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a given data source. It is an error to modify the data source\'s
-- data stream ID, data type, type, stream name or device information apart
-- from the device version. Changing these fields would require a new
-- unique data stream ID and separate data source. Data sources are
-- identified by their data stream ID.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @FitnessUsersDataSourcesUpdate@.
module Fitness.Users.DataSources.Update
    (
    -- * REST Resource
      UsersDataSourcesUpdateAPI

    -- * Creating a Request
    , usersDataSourcesUpdate
    , UsersDataSourcesUpdate

    -- * Request Lenses
    , udsuQuotaUser
    , udsuPrettyPrint
    , udsuUserIp
    , udsuDataSourceId
    , udsuUserId
    , udsuKey
    , udsuOauthToken
    , udsuFields
    , udsuAlt
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersDataSourcesUpdate@ which the
-- 'UsersDataSourcesUpdate' request conforms to.
type UsersDataSourcesUpdateAPI =
     Capture "userId" Text :>
       "dataSources" :>
         Capture "dataSourceId" Text :> Put '[JSON] DataSource

-- | Updates a given data source. It is an error to modify the data source\'s
-- data stream ID, data type, type, stream name or device information apart
-- from the device version. Changing these fields would require a new
-- unique data stream ID and separate data source. Data sources are
-- identified by their data stream ID.
--
-- /See:/ 'usersDataSourcesUpdate' smart constructor.
data UsersDataSourcesUpdate = UsersDataSourcesUpdate
    { _udsuQuotaUser    :: !(Maybe Text)
    , _udsuPrettyPrint  :: !Bool
    , _udsuUserIp       :: !(Maybe Text)
    , _udsuDataSourceId :: !Text
    , _udsuUserId       :: !Text
    , _udsuKey          :: !(Maybe Text)
    , _udsuOauthToken   :: !(Maybe Text)
    , _udsuFields       :: !(Maybe Text)
    , _udsuAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsuQuotaUser'
--
-- * 'udsuPrettyPrint'
--
-- * 'udsuUserIp'
--
-- * 'udsuDataSourceId'
--
-- * 'udsuUserId'
--
-- * 'udsuKey'
--
-- * 'udsuOauthToken'
--
-- * 'udsuFields'
--
-- * 'udsuAlt'
usersDataSourcesUpdate
    :: Text -- ^ 'dataSourceId'
    -> Text -- ^ 'userId'
    -> UsersDataSourcesUpdate
usersDataSourcesUpdate pUdsuDataSourceId_ pUdsuUserId_ =
    UsersDataSourcesUpdate
    { _udsuQuotaUser = Nothing
    , _udsuPrettyPrint = True
    , _udsuUserIp = Nothing
    , _udsuDataSourceId = pUdsuDataSourceId_
    , _udsuUserId = pUdsuUserId_
    , _udsuKey = Nothing
    , _udsuOauthToken = Nothing
    , _udsuFields = Nothing
    , _udsuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udsuQuotaUser :: Lens' UsersDataSourcesUpdate' (Maybe Text)
udsuQuotaUser
  = lens _udsuQuotaUser
      (\ s a -> s{_udsuQuotaUser = a})

-- | Returns response with indentations and line breaks.
udsuPrettyPrint :: Lens' UsersDataSourcesUpdate' Bool
udsuPrettyPrint
  = lens _udsuPrettyPrint
      (\ s a -> s{_udsuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udsuUserIp :: Lens' UsersDataSourcesUpdate' (Maybe Text)
udsuUserIp
  = lens _udsuUserIp (\ s a -> s{_udsuUserIp = a})

-- | The data stream ID of the data source to update.
udsuDataSourceId :: Lens' UsersDataSourcesUpdate' Text
udsuDataSourceId
  = lens _udsuDataSourceId
      (\ s a -> s{_udsuDataSourceId = a})

-- | Update the data source for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsuUserId :: Lens' UsersDataSourcesUpdate' Text
udsuUserId
  = lens _udsuUserId (\ s a -> s{_udsuUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udsuKey :: Lens' UsersDataSourcesUpdate' (Maybe Text)
udsuKey = lens _udsuKey (\ s a -> s{_udsuKey = a})

-- | OAuth 2.0 token for the current user.
udsuOauthToken :: Lens' UsersDataSourcesUpdate' (Maybe Text)
udsuOauthToken
  = lens _udsuOauthToken
      (\ s a -> s{_udsuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
udsuFields :: Lens' UsersDataSourcesUpdate' (Maybe Text)
udsuFields
  = lens _udsuFields (\ s a -> s{_udsuFields = a})

-- | Data format for the response.
udsuAlt :: Lens' UsersDataSourcesUpdate' Text
udsuAlt = lens _udsuAlt (\ s a -> s{_udsuAlt = a})

instance GoogleRequest UsersDataSourcesUpdate' where
        type Rs UsersDataSourcesUpdate' = DataSource
        request = requestWithRoute defReq fitnessURL
        requestWithRoute r u UsersDataSourcesUpdate{..}
          = go _udsuQuotaUser _udsuPrettyPrint _udsuUserIp
              _udsuDataSourceId
              _udsuUserId
              _udsuKey
              _udsuOauthToken
              _udsuFields
              _udsuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDataSourcesUpdateAPI)
                      r
                      u
