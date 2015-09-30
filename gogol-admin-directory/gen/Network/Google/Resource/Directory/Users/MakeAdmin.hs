{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Users.MakeAdmin
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | change admin status of a user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersMakeAdmin@.
module Directory.Users.MakeAdmin
    (
    -- * REST Resource
      UsersMakeAdminAPI

    -- * Creating a Request
    , usersMakeAdmin
    , UsersMakeAdmin

    -- * Request Lenses
    , umaQuotaUser
    , umaPrettyPrint
    , umaUserIp
    , umaKey
    , umaOauthToken
    , umaUserKey
    , umaFields
    , umaAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersMakeAdmin@ which the
-- 'UsersMakeAdmin' request conforms to.
type UsersMakeAdminAPI =
     "users" :>
       Capture "userKey" Text :>
         "makeAdmin" :> Post '[JSON] ()

-- | change admin status of a user
--
-- /See:/ 'usersMakeAdmin' smart constructor.
data UsersMakeAdmin = UsersMakeAdmin
    { _umaQuotaUser   :: !(Maybe Text)
    , _umaPrettyPrint :: !Bool
    , _umaUserIp      :: !(Maybe Text)
    , _umaKey         :: !(Maybe Text)
    , _umaOauthToken  :: !(Maybe Text)
    , _umaUserKey     :: !Text
    , _umaFields      :: !(Maybe Text)
    , _umaAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMakeAdmin'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umaQuotaUser'
--
-- * 'umaPrettyPrint'
--
-- * 'umaUserIp'
--
-- * 'umaKey'
--
-- * 'umaOauthToken'
--
-- * 'umaUserKey'
--
-- * 'umaFields'
--
-- * 'umaAlt'
usersMakeAdmin
    :: Text -- ^ 'userKey'
    -> UsersMakeAdmin
usersMakeAdmin pUmaUserKey_ =
    UsersMakeAdmin
    { _umaQuotaUser = Nothing
    , _umaPrettyPrint = True
    , _umaUserIp = Nothing
    , _umaKey = Nothing
    , _umaOauthToken = Nothing
    , _umaUserKey = pUmaUserKey_
    , _umaFields = Nothing
    , _umaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umaQuotaUser :: Lens' UsersMakeAdmin' (Maybe Text)
umaQuotaUser
  = lens _umaQuotaUser (\ s a -> s{_umaQuotaUser = a})

-- | Returns response with indentations and line breaks.
umaPrettyPrint :: Lens' UsersMakeAdmin' Bool
umaPrettyPrint
  = lens _umaPrettyPrint
      (\ s a -> s{_umaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umaUserIp :: Lens' UsersMakeAdmin' (Maybe Text)
umaUserIp
  = lens _umaUserIp (\ s a -> s{_umaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umaKey :: Lens' UsersMakeAdmin' (Maybe Text)
umaKey = lens _umaKey (\ s a -> s{_umaKey = a})

-- | OAuth 2.0 token for the current user.
umaOauthToken :: Lens' UsersMakeAdmin' (Maybe Text)
umaOauthToken
  = lens _umaOauthToken
      (\ s a -> s{_umaOauthToken = a})

-- | Email or immutable Id of the user as admin
umaUserKey :: Lens' UsersMakeAdmin' Text
umaUserKey
  = lens _umaUserKey (\ s a -> s{_umaUserKey = a})

-- | Selector specifying which fields to include in a partial response.
umaFields :: Lens' UsersMakeAdmin' (Maybe Text)
umaFields
  = lens _umaFields (\ s a -> s{_umaFields = a})

-- | Data format for the response.
umaAlt :: Lens' UsersMakeAdmin' Text
umaAlt = lens _umaAlt (\ s a -> s{_umaAlt = a})

instance GoogleRequest UsersMakeAdmin' where
        type Rs UsersMakeAdmin' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersMakeAdmin{..}
          = go _umaQuotaUser _umaPrettyPrint _umaUserIp _umaKey
              _umaOauthToken
              _umaUserKey
              _umaFields
              _umaAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UsersMakeAdminAPI)
                      r
                      u
