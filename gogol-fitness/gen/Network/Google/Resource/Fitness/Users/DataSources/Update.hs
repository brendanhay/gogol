{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Fitness.Users.DataSources.Update
    (
    -- * REST Resource
      UsersDataSourcesUpdateResource

    -- * Creating a Request
    , usersDataSourcesUpdate'
    , UsersDataSourcesUpdate'

    -- * Request Lenses
    , udsuQuotaUser
    , udsuPrettyPrint
    , udsuUserIP
    , udsuDataSourceId
    , udsuPayload
    , udsuUserId
    , udsuKey
    , udsuOAuthToken
    , udsuFields
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersDataSourcesUpdate@ which the
-- 'UsersDataSourcesUpdate'' request conforms to.
type UsersDataSourcesUpdateResource =
     Capture "userId" Text :>
       "dataSources" :>
         Capture "dataSourceId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DataSource :> Put '[JSON] DataSource

-- | Updates a given data source. It is an error to modify the data source\'s
-- data stream ID, data type, type, stream name or device information apart
-- from the device version. Changing these fields would require a new
-- unique data stream ID and separate data source. Data sources are
-- identified by their data stream ID.
--
-- /See:/ 'usersDataSourcesUpdate'' smart constructor.
data UsersDataSourcesUpdate' = UsersDataSourcesUpdate'
    { _udsuQuotaUser    :: !(Maybe Text)
    , _udsuPrettyPrint  :: !Bool
    , _udsuUserIP       :: !(Maybe Text)
    , _udsuDataSourceId :: !Text
    , _udsuPayload      :: !DataSource
    , _udsuUserId       :: !Text
    , _udsuKey          :: !(Maybe Key)
    , _udsuOAuthToken   :: !(Maybe OAuthToken)
    , _udsuFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsuQuotaUser'
--
-- * 'udsuPrettyPrint'
--
-- * 'udsuUserIP'
--
-- * 'udsuDataSourceId'
--
-- * 'udsuPayload'
--
-- * 'udsuUserId'
--
-- * 'udsuKey'
--
-- * 'udsuOAuthToken'
--
-- * 'udsuFields'
usersDataSourcesUpdate'
    :: Text -- ^ 'dataSourceId'
    -> DataSource -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> UsersDataSourcesUpdate'
usersDataSourcesUpdate' pUdsuDataSourceId_ pUdsuPayload_ pUdsuUserId_ =
    UsersDataSourcesUpdate'
    { _udsuQuotaUser = Nothing
    , _udsuPrettyPrint = True
    , _udsuUserIP = Nothing
    , _udsuDataSourceId = pUdsuDataSourceId_
    , _udsuPayload = pUdsuPayload_
    , _udsuUserId = pUdsuUserId_
    , _udsuKey = Nothing
    , _udsuOAuthToken = Nothing
    , _udsuFields = Nothing
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
udsuUserIP :: Lens' UsersDataSourcesUpdate' (Maybe Text)
udsuUserIP
  = lens _udsuUserIP (\ s a -> s{_udsuUserIP = a})

-- | The data stream ID of the data source to update.
udsuDataSourceId :: Lens' UsersDataSourcesUpdate' Text
udsuDataSourceId
  = lens _udsuDataSourceId
      (\ s a -> s{_udsuDataSourceId = a})

-- | Multipart request metadata.
udsuPayload :: Lens' UsersDataSourcesUpdate' DataSource
udsuPayload
  = lens _udsuPayload (\ s a -> s{_udsuPayload = a})

-- | Update the data source for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsuUserId :: Lens' UsersDataSourcesUpdate' Text
udsuUserId
  = lens _udsuUserId (\ s a -> s{_udsuUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udsuKey :: Lens' UsersDataSourcesUpdate' (Maybe Key)
udsuKey = lens _udsuKey (\ s a -> s{_udsuKey = a})

-- | OAuth 2.0 token for the current user.
udsuOAuthToken :: Lens' UsersDataSourcesUpdate' (Maybe OAuthToken)
udsuOAuthToken
  = lens _udsuOAuthToken
      (\ s a -> s{_udsuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
udsuFields :: Lens' UsersDataSourcesUpdate' (Maybe Text)
udsuFields
  = lens _udsuFields (\ s a -> s{_udsuFields = a})

instance GoogleAuth UsersDataSourcesUpdate' where
        authKey = udsuKey . _Just
        authToken = udsuOAuthToken . _Just

instance GoogleRequest UsersDataSourcesUpdate' where
        type Rs UsersDataSourcesUpdate' = DataSource
        request = requestWithRoute defReq fitnessURL
        requestWithRoute r u UsersDataSourcesUpdate'{..}
          = go _udsuUserId _udsuDataSourceId _udsuQuotaUser
              (Just _udsuPrettyPrint)
              _udsuUserIP
              _udsuFields
              _udsuKey
              _udsuOAuthToken
              (Just AltJSON)
              _udsuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDataSourcesUpdateResource)
                      r
                      u
