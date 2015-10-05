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
-- Module      : Network.Google.Resource.Directory.Users.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | retrieve user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersGet@.
module Network.Google.Resource.Directory.Users.Get
    (
    -- * REST Resource
      UsersGetResource

    -- * Creating a Request
    , usersGet'
    , UsersGet'

    -- * Request Lenses
    , ugQuotaUser
    , ugPrettyPrint
    , ugViewType
    , ugCustomFieldMask
    , ugUserIP
    , ugKey
    , ugProjection
    , ugOAuthToken
    , ugUserKey
    , ugFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersGet@ which the
-- 'UsersGet'' request conforms to.
type UsersGetResource =
     "users" :>
       Capture "userKey" Text :>
         QueryParam "viewType" UsersGetViewType :>
           QueryParam "customFieldMask" Text :>
             QueryParam "projection" UsersGetProjection :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] User

-- | retrieve user
--
-- /See:/ 'usersGet'' smart constructor.
data UsersGet' = UsersGet'
    { _ugQuotaUser       :: !(Maybe Text)
    , _ugPrettyPrint     :: !Bool
    , _ugViewType        :: !UsersGetViewType
    , _ugCustomFieldMask :: !(Maybe Text)
    , _ugUserIP          :: !(Maybe Text)
    , _ugKey             :: !(Maybe AuthKey)
    , _ugProjection      :: !UsersGetProjection
    , _ugOAuthToken      :: !(Maybe OAuthToken)
    , _ugUserKey         :: !Text
    , _ugFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugQuotaUser'
--
-- * 'ugPrettyPrint'
--
-- * 'ugViewType'
--
-- * 'ugCustomFieldMask'
--
-- * 'ugUserIP'
--
-- * 'ugKey'
--
-- * 'ugProjection'
--
-- * 'ugOAuthToken'
--
-- * 'ugUserKey'
--
-- * 'ugFields'
usersGet'
    :: Text -- ^ 'userKey'
    -> UsersGet'
usersGet' pUgUserKey_ =
    UsersGet'
    { _ugQuotaUser = Nothing
    , _ugPrettyPrint = True
    , _ugViewType = UGVTAdminView
    , _ugCustomFieldMask = Nothing
    , _ugUserIP = Nothing
    , _ugKey = Nothing
    , _ugProjection = UGPBasic
    , _ugOAuthToken = Nothing
    , _ugUserKey = pUgUserKey_
    , _ugFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ugQuotaUser :: Lens' UsersGet' (Maybe Text)
ugQuotaUser
  = lens _ugQuotaUser (\ s a -> s{_ugQuotaUser = a})

-- | Returns response with indentations and line breaks.
ugPrettyPrint :: Lens' UsersGet' Bool
ugPrettyPrint
  = lens _ugPrettyPrint
      (\ s a -> s{_ugPrettyPrint = a})

-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
ugViewType :: Lens' UsersGet' UsersGetViewType
ugViewType
  = lens _ugViewType (\ s a -> s{_ugViewType = a})

-- | Comma-separated list of schema names. All fields from these schemas are
-- fetched. This should only be set when projection=custom.
ugCustomFieldMask :: Lens' UsersGet' (Maybe Text)
ugCustomFieldMask
  = lens _ugCustomFieldMask
      (\ s a -> s{_ugCustomFieldMask = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ugUserIP :: Lens' UsersGet' (Maybe Text)
ugUserIP = lens _ugUserIP (\ s a -> s{_ugUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugKey :: Lens' UsersGet' (Maybe AuthKey)
ugKey = lens _ugKey (\ s a -> s{_ugKey = a})

-- | What subset of fields to fetch for this user.
ugProjection :: Lens' UsersGet' UsersGetProjection
ugProjection
  = lens _ugProjection (\ s a -> s{_ugProjection = a})

-- | OAuth 2.0 token for the current user.
ugOAuthToken :: Lens' UsersGet' (Maybe OAuthToken)
ugOAuthToken
  = lens _ugOAuthToken (\ s a -> s{_ugOAuthToken = a})

-- | Email or immutable Id of the user
ugUserKey :: Lens' UsersGet' Text
ugUserKey
  = lens _ugUserKey (\ s a -> s{_ugUserKey = a})

-- | Selector specifying which fields to include in a partial response.
ugFields :: Lens' UsersGet' (Maybe Text)
ugFields = lens _ugFields (\ s a -> s{_ugFields = a})

instance GoogleAuth UsersGet' where
        authKey = ugKey . _Just
        authToken = ugOAuthToken . _Just

instance GoogleRequest UsersGet' where
        type Rs UsersGet' = User
        request = requestWithRoute defReq directoryURL
        requestWithRoute r u UsersGet'{..}
          = go _ugUserKey (Just _ugViewType) _ugCustomFieldMask
              (Just _ugProjection)
              _ugQuotaUser
              (Just _ugPrettyPrint)
              _ugUserIP
              _ugFields
              _ugKey
              _ugOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy UsersGetResource) r
                      u
