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
-- Module      : Network.Google.Resource.Drive.Permissions.GetIdForEmail
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the permission ID for an email address.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePermissionsGetIdForEmail@.
module Network.Google.Resource.Drive.Permissions.GetIdForEmail
    (
    -- * REST Resource
      PermissionsGetIdForEmailResource

    -- * Creating a Request
    , permissionsGetIdForEmail'
    , PermissionsGetIdForEmail'

    -- * Request Lenses
    , pgifeEmail
    , pgifeQuotaUser
    , pgifePrettyPrint
    , pgifeUserIp
    , pgifeKey
    , pgifeOauthToken
    , pgifeFields
    , pgifeAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePermissionsGetIdForEmail@ which the
-- 'PermissionsGetIdForEmail'' request conforms to.
type PermissionsGetIdForEmailResource =
     "permissionIds" :>
       Capture "email" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] PermissionId

-- | Returns the permission ID for an email address.
--
-- /See:/ 'permissionsGetIdForEmail'' smart constructor.
data PermissionsGetIdForEmail' = PermissionsGetIdForEmail'
    { _pgifeEmail       :: !Text
    , _pgifeQuotaUser   :: !(Maybe Text)
    , _pgifePrettyPrint :: !Bool
    , _pgifeUserIp      :: !(Maybe Text)
    , _pgifeKey         :: !(Maybe Text)
    , _pgifeOauthToken  :: !(Maybe Text)
    , _pgifeFields      :: !(Maybe Text)
    , _pgifeAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsGetIdForEmail'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgifeEmail'
--
-- * 'pgifeQuotaUser'
--
-- * 'pgifePrettyPrint'
--
-- * 'pgifeUserIp'
--
-- * 'pgifeKey'
--
-- * 'pgifeOauthToken'
--
-- * 'pgifeFields'
--
-- * 'pgifeAlt'
permissionsGetIdForEmail'
    :: Text -- ^ 'email'
    -> PermissionsGetIdForEmail'
permissionsGetIdForEmail' pPgifeEmail_ =
    PermissionsGetIdForEmail'
    { _pgifeEmail = pPgifeEmail_
    , _pgifeQuotaUser = Nothing
    , _pgifePrettyPrint = True
    , _pgifeUserIp = Nothing
    , _pgifeKey = Nothing
    , _pgifeOauthToken = Nothing
    , _pgifeFields = Nothing
    , _pgifeAlt = JSON
    }

-- | The email address for which to return a permission ID
pgifeEmail :: Lens' PermissionsGetIdForEmail' Text
pgifeEmail
  = lens _pgifeEmail (\ s a -> s{_pgifeEmail = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgifeQuotaUser :: Lens' PermissionsGetIdForEmail' (Maybe Text)
pgifeQuotaUser
  = lens _pgifeQuotaUser
      (\ s a -> s{_pgifeQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgifePrettyPrint :: Lens' PermissionsGetIdForEmail' Bool
pgifePrettyPrint
  = lens _pgifePrettyPrint
      (\ s a -> s{_pgifePrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgifeUserIp :: Lens' PermissionsGetIdForEmail' (Maybe Text)
pgifeUserIp
  = lens _pgifeUserIp (\ s a -> s{_pgifeUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgifeKey :: Lens' PermissionsGetIdForEmail' (Maybe Text)
pgifeKey = lens _pgifeKey (\ s a -> s{_pgifeKey = a})

-- | OAuth 2.0 token for the current user.
pgifeOauthToken :: Lens' PermissionsGetIdForEmail' (Maybe Text)
pgifeOauthToken
  = lens _pgifeOauthToken
      (\ s a -> s{_pgifeOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgifeFields :: Lens' PermissionsGetIdForEmail' (Maybe Text)
pgifeFields
  = lens _pgifeFields (\ s a -> s{_pgifeFields = a})

-- | Data format for the response.
pgifeAlt :: Lens' PermissionsGetIdForEmail' Alt
pgifeAlt = lens _pgifeAlt (\ s a -> s{_pgifeAlt = a})

instance GoogleRequest PermissionsGetIdForEmail'
         where
        type Rs PermissionsGetIdForEmail' = PermissionId
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsGetIdForEmail'{..}
          = go _pgifeEmail _pgifeQuotaUser
              (Just _pgifePrettyPrint)
              _pgifeUserIp
              _pgifeKey
              _pgifeOauthToken
              _pgifeFields
              (Just _pgifeAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PermissionsGetIdForEmailResource)
                      r
                      u
