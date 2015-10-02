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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Patch
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
-- identified by their data stream ID. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @FitnessUsersDataSourcesPatch@.
module Network.Google.Resource.Fitness.Users.DataSources.Patch
    (
    -- * REST Resource
      UsersDataSourcesPatchResource

    -- * Creating a Request
    , usersDataSourcesPatch'
    , UsersDataSourcesPatch'

    -- * Request Lenses
    , udspQuotaUser
    , udspPrettyPrint
    , udspUserIP
    , udspDataSourceId
    , udspUserId
    , udspKey
    , udspDataSource
    , udspOAuthToken
    , udspFields
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersDataSourcesPatch@ which the
-- 'UsersDataSourcesPatch'' request conforms to.
type UsersDataSourcesPatchResource =
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
                         ReqBody '[JSON] DataSource :>
                           Patch '[JSON] DataSource

-- | Updates a given data source. It is an error to modify the data source\'s
-- data stream ID, data type, type, stream name or device information apart
-- from the device version. Changing these fields would require a new
-- unique data stream ID and separate data source. Data sources are
-- identified by their data stream ID. This method supports patch
-- semantics.
--
-- /See:/ 'usersDataSourcesPatch'' smart constructor.
data UsersDataSourcesPatch' = UsersDataSourcesPatch'
    { _udspQuotaUser    :: !(Maybe Text)
    , _udspPrettyPrint  :: !Bool
    , _udspUserIP       :: !(Maybe Text)
    , _udspDataSourceId :: !Text
    , _udspUserId       :: !Text
    , _udspKey          :: !(Maybe Key)
    , _udspDataSource   :: !DataSource
    , _udspOAuthToken   :: !(Maybe OAuthToken)
    , _udspFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udspQuotaUser'
--
-- * 'udspPrettyPrint'
--
-- * 'udspUserIP'
--
-- * 'udspDataSourceId'
--
-- * 'udspUserId'
--
-- * 'udspKey'
--
-- * 'udspDataSource'
--
-- * 'udspOAuthToken'
--
-- * 'udspFields'
usersDataSourcesPatch'
    :: Text -- ^ 'dataSourceId'
    -> Text -- ^ 'userId'
    -> DataSource -- ^ 'DataSource'
    -> UsersDataSourcesPatch'
usersDataSourcesPatch' pUdspDataSourceId_ pUdspUserId_ pUdspDataSource_ =
    UsersDataSourcesPatch'
    { _udspQuotaUser = Nothing
    , _udspPrettyPrint = True
    , _udspUserIP = Nothing
    , _udspDataSourceId = pUdspDataSourceId_
    , _udspUserId = pUdspUserId_
    , _udspKey = Nothing
    , _udspDataSource = pUdspDataSource_
    , _udspOAuthToken = Nothing
    , _udspFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udspQuotaUser :: Lens' UsersDataSourcesPatch' (Maybe Text)
udspQuotaUser
  = lens _udspQuotaUser
      (\ s a -> s{_udspQuotaUser = a})

-- | Returns response with indentations and line breaks.
udspPrettyPrint :: Lens' UsersDataSourcesPatch' Bool
udspPrettyPrint
  = lens _udspPrettyPrint
      (\ s a -> s{_udspPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udspUserIP :: Lens' UsersDataSourcesPatch' (Maybe Text)
udspUserIP
  = lens _udspUserIP (\ s a -> s{_udspUserIP = a})

-- | The data stream ID of the data source to update.
udspDataSourceId :: Lens' UsersDataSourcesPatch' Text
udspDataSourceId
  = lens _udspDataSourceId
      (\ s a -> s{_udspDataSourceId = a})

-- | Update the data source for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udspUserId :: Lens' UsersDataSourcesPatch' Text
udspUserId
  = lens _udspUserId (\ s a -> s{_udspUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udspKey :: Lens' UsersDataSourcesPatch' (Maybe Key)
udspKey = lens _udspKey (\ s a -> s{_udspKey = a})

-- | Multipart request metadata.
udspDataSource :: Lens' UsersDataSourcesPatch' DataSource
udspDataSource
  = lens _udspDataSource
      (\ s a -> s{_udspDataSource = a})

-- | OAuth 2.0 token for the current user.
udspOAuthToken :: Lens' UsersDataSourcesPatch' (Maybe OAuthToken)
udspOAuthToken
  = lens _udspOAuthToken
      (\ s a -> s{_udspOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
udspFields :: Lens' UsersDataSourcesPatch' (Maybe Text)
udspFields
  = lens _udspFields (\ s a -> s{_udspFields = a})

instance GoogleAuth UsersDataSourcesPatch' where
        authKey = udspKey . _Just
        authToken = udspOAuthToken . _Just

instance GoogleRequest UsersDataSourcesPatch' where
        type Rs UsersDataSourcesPatch' = DataSource
        request = requestWithRoute defReq fitnessURL
        requestWithRoute r u UsersDataSourcesPatch'{..}
          = go _udspUserId _udspDataSourceId _udspQuotaUser
              (Just _udspPrettyPrint)
              _udspUserIP
              _udspFields
              _udspKey
              _udspOAuthToken
              (Just AltJSON)
              _udspDataSource
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDataSourcesPatchResource)
                      r
                      u
