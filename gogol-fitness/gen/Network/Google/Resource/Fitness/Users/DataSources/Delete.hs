{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
module Network.Google.Resource.Fitness.Users.DataSources.Delete
    (
    -- * REST Resource
      UsersDataSourcesDeleteResource

    -- * Creating a Request
    , usersDataSourcesDelete'
    , UsersDataSourcesDelete'

    -- * Request Lenses
    , udsdQuotaUser
    , udsdPrettyPrint
    , udsdUserIP
    , udsdDataSourceId
    , udsdUserId
    , udsdKey
    , udsdOAuthToken
    , udsdFields
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersDataSourcesDelete@ which the
-- 'UsersDataSourcesDelete'' request conforms to.
type UsersDataSourcesDeleteResource =
     Capture "userId" Text :>
       "dataSources" :>
         Capture "dataSourceId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] DataSource

-- | Delete the data source if there are no datapoints associated with it
--
-- /See:/ 'usersDataSourcesDelete'' smart constructor.
data UsersDataSourcesDelete' = UsersDataSourcesDelete'
    { _udsdQuotaUser    :: !(Maybe Text)
    , _udsdPrettyPrint  :: !Bool
    , _udsdUserIP       :: !(Maybe Text)
    , _udsdDataSourceId :: !Text
    , _udsdUserId       :: !Text
    , _udsdKey          :: !(Maybe AuthKey)
    , _udsdOAuthToken   :: !(Maybe OAuthToken)
    , _udsdFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsdQuotaUser'
--
-- * 'udsdPrettyPrint'
--
-- * 'udsdUserIP'
--
-- * 'udsdDataSourceId'
--
-- * 'udsdUserId'
--
-- * 'udsdKey'
--
-- * 'udsdOAuthToken'
--
-- * 'udsdFields'
usersDataSourcesDelete'
    :: Text -- ^ 'dataSourceId'
    -> Text -- ^ 'userId'
    -> UsersDataSourcesDelete'
usersDataSourcesDelete' pUdsdDataSourceId_ pUdsdUserId_ =
    UsersDataSourcesDelete'
    { _udsdQuotaUser = Nothing
    , _udsdPrettyPrint = True
    , _udsdUserIP = Nothing
    , _udsdDataSourceId = pUdsdDataSourceId_
    , _udsdUserId = pUdsdUserId_
    , _udsdKey = Nothing
    , _udsdOAuthToken = Nothing
    , _udsdFields = Nothing
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
udsdUserIP :: Lens' UsersDataSourcesDelete' (Maybe Text)
udsdUserIP
  = lens _udsdUserIP (\ s a -> s{_udsdUserIP = a})

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
udsdKey :: Lens' UsersDataSourcesDelete' (Maybe AuthKey)
udsdKey = lens _udsdKey (\ s a -> s{_udsdKey = a})

-- | OAuth 2.0 token for the current user.
udsdOAuthToken :: Lens' UsersDataSourcesDelete' (Maybe OAuthToken)
udsdOAuthToken
  = lens _udsdOAuthToken
      (\ s a -> s{_udsdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
udsdFields :: Lens' UsersDataSourcesDelete' (Maybe Text)
udsdFields
  = lens _udsdFields (\ s a -> s{_udsdFields = a})

instance GoogleAuth UsersDataSourcesDelete' where
        authKey = udsdKey . _Just
        authToken = udsdOAuthToken . _Just

instance GoogleRequest UsersDataSourcesDelete' where
        type Rs UsersDataSourcesDelete' = DataSource
        request = requestWith fitnessRequest
        requestWith rq UsersDataSourcesDelete'{..}
          = go _udsdUserId _udsdDataSourceId _udsdQuotaUser
              (Just _udsdPrettyPrint)
              _udsdUserIP
              _udsdFields
              _udsdKey
              _udsdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersDataSourcesDeleteResource)
                      rq
