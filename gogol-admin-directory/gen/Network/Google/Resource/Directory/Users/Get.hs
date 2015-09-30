{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Directory.Users.Get
    (
    -- * REST Resource
      UsersGetAPI

    -- * Creating a Request
    , usersGet
    , UsersGet

    -- * Request Lenses
    , ugQuotaUser
    , ugPrettyPrint
    , ugViewType
    , ugCustomFieldMask
    , ugUserIp
    , ugKey
    , ugProjection
    , ugOauthToken
    , ugUserKey
    , ugFields
    , ugAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersGet@ which the
-- 'UsersGet' request conforms to.
type UsersGetAPI =
     "users" :>
       Capture "userKey" Text :>
         QueryParam "viewType" Text :>
           QueryParam "customFieldMask" Text :>
             QueryParam "projection" Text :> Get '[JSON] User

-- | retrieve user
--
-- /See:/ 'usersGet' smart constructor.
data UsersGet = UsersGet
    { _ugQuotaUser       :: !(Maybe Text)
    , _ugPrettyPrint     :: !Bool
    , _ugViewType        :: !Text
    , _ugCustomFieldMask :: !(Maybe Text)
    , _ugUserIp          :: !(Maybe Text)
    , _ugKey             :: !(Maybe Text)
    , _ugProjection      :: !Text
    , _ugOauthToken      :: !(Maybe Text)
    , _ugUserKey         :: !Text
    , _ugFields          :: !(Maybe Text)
    , _ugAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'ugUserIp'
--
-- * 'ugKey'
--
-- * 'ugProjection'
--
-- * 'ugOauthToken'
--
-- * 'ugUserKey'
--
-- * 'ugFields'
--
-- * 'ugAlt'
usersGet
    :: Text -- ^ 'userKey'
    -> UsersGet
usersGet pUgUserKey_ =
    UsersGet
    { _ugQuotaUser = Nothing
    , _ugPrettyPrint = True
    , _ugViewType = "admin_view"
    , _ugCustomFieldMask = Nothing
    , _ugUserIp = Nothing
    , _ugKey = Nothing
    , _ugProjection = "basic"
    , _ugOauthToken = Nothing
    , _ugUserKey = pUgUserKey_
    , _ugFields = Nothing
    , _ugAlt = "json"
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
ugViewType :: Lens' UsersGet' Text
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
ugUserIp :: Lens' UsersGet' (Maybe Text)
ugUserIp = lens _ugUserIp (\ s a -> s{_ugUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugKey :: Lens' UsersGet' (Maybe Text)
ugKey = lens _ugKey (\ s a -> s{_ugKey = a})

-- | What subset of fields to fetch for this user.
ugProjection :: Lens' UsersGet' Text
ugProjection
  = lens _ugProjection (\ s a -> s{_ugProjection = a})

-- | OAuth 2.0 token for the current user.
ugOauthToken :: Lens' UsersGet' (Maybe Text)
ugOauthToken
  = lens _ugOauthToken (\ s a -> s{_ugOauthToken = a})

-- | Email or immutable Id of the user
ugUserKey :: Lens' UsersGet' Text
ugUserKey
  = lens _ugUserKey (\ s a -> s{_ugUserKey = a})

-- | Selector specifying which fields to include in a partial response.
ugFields :: Lens' UsersGet' (Maybe Text)
ugFields = lens _ugFields (\ s a -> s{_ugFields = a})

-- | Data format for the response.
ugAlt :: Lens' UsersGet' Text
ugAlt = lens _ugAlt (\ s a -> s{_ugAlt = a})

instance GoogleRequest UsersGet' where
        type Rs UsersGet' = User
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersGet{..}
          = go _ugQuotaUser _ugPrettyPrint (Just _ugViewType)
              _ugCustomFieldMask
              _ugUserIp
              _ugKey
              (Just _ugProjection)
              _ugOauthToken
              _ugUserKey
              _ugFields
              _ugAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UsersGetAPI) r u
