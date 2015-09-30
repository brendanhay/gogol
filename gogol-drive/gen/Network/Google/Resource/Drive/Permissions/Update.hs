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
-- Module      : Network.Google.Resource.Drive.Permissions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a permission.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePermissionsUpdate@.
module Network.Google.Resource.Drive.Permissions.Update
    (
    -- * REST Resource
      PermissionsUpdateResource

    -- * Creating a Request
    , permissionsUpdate'
    , PermissionsUpdate'

    -- * Request Lenses
    , puuQuotaUser
    , puuPrettyPrint
    , puuUserIp
    , puuKey
    , puuTransferOwnership
    , puuFileId
    , puuOauthToken
    , puuPermissionId
    , puuFields
    , puuAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePermissionsUpdate@ which the
-- 'PermissionsUpdate'' request conforms to.
type PermissionsUpdateResource =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           Capture "permissionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "transferOwnership" Bool :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Put '[JSON] Permission

-- | Updates a permission.
--
-- /See:/ 'permissionsUpdate'' smart constructor.
data PermissionsUpdate' = PermissionsUpdate'
    { _puuQuotaUser         :: !(Maybe Text)
    , _puuPrettyPrint       :: !Bool
    , _puuUserIp            :: !(Maybe Text)
    , _puuKey               :: !(Maybe Text)
    , _puuTransferOwnership :: !Bool
    , _puuFileId            :: !Text
    , _puuOauthToken        :: !(Maybe Text)
    , _puuPermissionId      :: !Text
    , _puuFields            :: !(Maybe Text)
    , _puuAlt               :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puuQuotaUser'
--
-- * 'puuPrettyPrint'
--
-- * 'puuUserIp'
--
-- * 'puuKey'
--
-- * 'puuTransferOwnership'
--
-- * 'puuFileId'
--
-- * 'puuOauthToken'
--
-- * 'puuPermissionId'
--
-- * 'puuFields'
--
-- * 'puuAlt'
permissionsUpdate'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'permissionId'
    -> PermissionsUpdate'
permissionsUpdate' pPuuFileId_ pPuuPermissionId_ =
    PermissionsUpdate'
    { _puuQuotaUser = Nothing
    , _puuPrettyPrint = True
    , _puuUserIp = Nothing
    , _puuKey = Nothing
    , _puuTransferOwnership = False
    , _puuFileId = pPuuFileId_
    , _puuOauthToken = Nothing
    , _puuPermissionId = pPuuPermissionId_
    , _puuFields = Nothing
    , _puuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puuQuotaUser :: Lens' PermissionsUpdate' (Maybe Text)
puuQuotaUser
  = lens _puuQuotaUser (\ s a -> s{_puuQuotaUser = a})

-- | Returns response with indentations and line breaks.
puuPrettyPrint :: Lens' PermissionsUpdate' Bool
puuPrettyPrint
  = lens _puuPrettyPrint
      (\ s a -> s{_puuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puuUserIp :: Lens' PermissionsUpdate' (Maybe Text)
puuUserIp
  = lens _puuUserIp (\ s a -> s{_puuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puuKey :: Lens' PermissionsUpdate' (Maybe Text)
puuKey = lens _puuKey (\ s a -> s{_puuKey = a})

-- | Whether changing a role to \'owner\' downgrades the current owners to
-- writers. Does nothing if the specified role is not \'owner\'.
puuTransferOwnership :: Lens' PermissionsUpdate' Bool
puuTransferOwnership
  = lens _puuTransferOwnership
      (\ s a -> s{_puuTransferOwnership = a})

-- | The ID for the file.
puuFileId :: Lens' PermissionsUpdate' Text
puuFileId
  = lens _puuFileId (\ s a -> s{_puuFileId = a})

-- | OAuth 2.0 token for the current user.
puuOauthToken :: Lens' PermissionsUpdate' (Maybe Text)
puuOauthToken
  = lens _puuOauthToken
      (\ s a -> s{_puuOauthToken = a})

-- | The ID for the permission.
puuPermissionId :: Lens' PermissionsUpdate' Text
puuPermissionId
  = lens _puuPermissionId
      (\ s a -> s{_puuPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
puuFields :: Lens' PermissionsUpdate' (Maybe Text)
puuFields
  = lens _puuFields (\ s a -> s{_puuFields = a})

-- | Data format for the response.
puuAlt :: Lens' PermissionsUpdate' Alt
puuAlt = lens _puuAlt (\ s a -> s{_puuAlt = a})

instance GoogleRequest PermissionsUpdate' where
        type Rs PermissionsUpdate' = Permission
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsUpdate'{..}
          = go _puuQuotaUser (Just _puuPrettyPrint) _puuUserIp
              _puuKey
              (Just _puuTransferOwnership)
              _puuFileId
              _puuOauthToken
              _puuPermissionId
              _puuFields
              (Just _puuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PermissionsUpdateResource)
                      r
                      u
