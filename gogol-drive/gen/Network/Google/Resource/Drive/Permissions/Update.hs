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
    , puuUserIP
    , puuPayload
    , puuKey
    , puuTransferOwnership
    , puuFileId
    , puuOAuthToken
    , puuPermissionId
    , puuFields
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
             QueryParam "transferOwnership" Bool :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Permission :>
                               Put '[JSON] Permission

-- | Updates a permission.
--
-- /See:/ 'permissionsUpdate'' smart constructor.
data PermissionsUpdate' = PermissionsUpdate'
    { _puuQuotaUser         :: !(Maybe Text)
    , _puuPrettyPrint       :: !Bool
    , _puuUserIP            :: !(Maybe Text)
    , _puuPayload           :: !Permission
    , _puuKey               :: !(Maybe Key)
    , _puuTransferOwnership :: !Bool
    , _puuFileId            :: !Text
    , _puuOAuthToken        :: !(Maybe OAuthToken)
    , _puuPermissionId      :: !Text
    , _puuFields            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puuQuotaUser'
--
-- * 'puuPrettyPrint'
--
-- * 'puuUserIP'
--
-- * 'puuPayload'
--
-- * 'puuKey'
--
-- * 'puuTransferOwnership'
--
-- * 'puuFileId'
--
-- * 'puuOAuthToken'
--
-- * 'puuPermissionId'
--
-- * 'puuFields'
permissionsUpdate'
    :: Permission -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'permissionId'
    -> PermissionsUpdate'
permissionsUpdate' pPuuPayload_ pPuuFileId_ pPuuPermissionId_ =
    PermissionsUpdate'
    { _puuQuotaUser = Nothing
    , _puuPrettyPrint = True
    , _puuUserIP = Nothing
    , _puuPayload = pPuuPayload_
    , _puuKey = Nothing
    , _puuTransferOwnership = False
    , _puuFileId = pPuuFileId_
    , _puuOAuthToken = Nothing
    , _puuPermissionId = pPuuPermissionId_
    , _puuFields = Nothing
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
puuUserIP :: Lens' PermissionsUpdate' (Maybe Text)
puuUserIP
  = lens _puuUserIP (\ s a -> s{_puuUserIP = a})

-- | Multipart request metadata.
puuPayload :: Lens' PermissionsUpdate' Permission
puuPayload
  = lens _puuPayload (\ s a -> s{_puuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puuKey :: Lens' PermissionsUpdate' (Maybe Key)
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
puuOAuthToken :: Lens' PermissionsUpdate' (Maybe OAuthToken)
puuOAuthToken
  = lens _puuOAuthToken
      (\ s a -> s{_puuOAuthToken = a})

-- | The ID for the permission.
puuPermissionId :: Lens' PermissionsUpdate' Text
puuPermissionId
  = lens _puuPermissionId
      (\ s a -> s{_puuPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
puuFields :: Lens' PermissionsUpdate' (Maybe Text)
puuFields
  = lens _puuFields (\ s a -> s{_puuFields = a})

instance GoogleAuth PermissionsUpdate' where
        authKey = puuKey . _Just
        authToken = puuOAuthToken . _Just

instance GoogleRequest PermissionsUpdate' where
        type Rs PermissionsUpdate' = Permission
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsUpdate'{..}
          = go _puuFileId _puuPermissionId
              (Just _puuTransferOwnership)
              _puuQuotaUser
              (Just _puuPrettyPrint)
              _puuUserIP
              _puuFields
              _puuKey
              _puuOAuthToken
              (Just AltJSON)
              _puuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PermissionsUpdateResource)
                      r
                      u
