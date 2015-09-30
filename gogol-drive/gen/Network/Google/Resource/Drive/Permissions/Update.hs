{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Drive.Permissions.Update
    (
    -- * REST Resource
      PermissionsUpdateAPI

    -- * Creating a Request
    , permissionsUpdate
    , PermissionsUpdate

    -- * Request Lenses
    , puQuotaUser
    , puPrettyPrint
    , puUserIp
    , puKey
    , puTransferOwnership
    , puFileId
    , puOauthToken
    , puPermissionId
    , puFields
    , puAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePermissionsUpdate@ which the
-- 'PermissionsUpdate' request conforms to.
type PermissionsUpdateAPI =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           Capture "permissionId" Text :>
             QueryParam "transferOwnership" Bool :>
               Put '[JSON] Permission

-- | Updates a permission.
--
-- /See:/ 'permissionsUpdate' smart constructor.
data PermissionsUpdate = PermissionsUpdate
    { _puQuotaUser         :: !(Maybe Text)
    , _puPrettyPrint       :: !Bool
    , _puUserIp            :: !(Maybe Text)
    , _puKey               :: !(Maybe Text)
    , _puTransferOwnership :: !Bool
    , _puFileId            :: !Text
    , _puOauthToken        :: !(Maybe Text)
    , _puPermissionId      :: !Text
    , _puFields            :: !(Maybe Text)
    , _puAlt               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puQuotaUser'
--
-- * 'puPrettyPrint'
--
-- * 'puUserIp'
--
-- * 'puKey'
--
-- * 'puTransferOwnership'
--
-- * 'puFileId'
--
-- * 'puOauthToken'
--
-- * 'puPermissionId'
--
-- * 'puFields'
--
-- * 'puAlt'
permissionsUpdate
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'permissionId'
    -> PermissionsUpdate
permissionsUpdate pPuFileId_ pPuPermissionId_ =
    PermissionsUpdate
    { _puQuotaUser = Nothing
    , _puPrettyPrint = True
    , _puUserIp = Nothing
    , _puKey = Nothing
    , _puTransferOwnership = False
    , _puFileId = pPuFileId_
    , _puOauthToken = Nothing
    , _puPermissionId = pPuPermissionId_
    , _puFields = Nothing
    , _puAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puQuotaUser :: Lens' PermissionsUpdate' (Maybe Text)
puQuotaUser
  = lens _puQuotaUser (\ s a -> s{_puQuotaUser = a})

-- | Returns response with indentations and line breaks.
puPrettyPrint :: Lens' PermissionsUpdate' Bool
puPrettyPrint
  = lens _puPrettyPrint
      (\ s a -> s{_puPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puUserIp :: Lens' PermissionsUpdate' (Maybe Text)
puUserIp = lens _puUserIp (\ s a -> s{_puUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puKey :: Lens' PermissionsUpdate' (Maybe Text)
puKey = lens _puKey (\ s a -> s{_puKey = a})

-- | Whether changing a role to \'owner\' downgrades the current owners to
-- writers. Does nothing if the specified role is not \'owner\'.
puTransferOwnership :: Lens' PermissionsUpdate' Bool
puTransferOwnership
  = lens _puTransferOwnership
      (\ s a -> s{_puTransferOwnership = a})

-- | The ID for the file.
puFileId :: Lens' PermissionsUpdate' Text
puFileId = lens _puFileId (\ s a -> s{_puFileId = a})

-- | OAuth 2.0 token for the current user.
puOauthToken :: Lens' PermissionsUpdate' (Maybe Text)
puOauthToken
  = lens _puOauthToken (\ s a -> s{_puOauthToken = a})

-- | The ID for the permission.
puPermissionId :: Lens' PermissionsUpdate' Text
puPermissionId
  = lens _puPermissionId
      (\ s a -> s{_puPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
puFields :: Lens' PermissionsUpdate' (Maybe Text)
puFields = lens _puFields (\ s a -> s{_puFields = a})

-- | Data format for the response.
puAlt :: Lens' PermissionsUpdate' Text
puAlt = lens _puAlt (\ s a -> s{_puAlt = a})

instance GoogleRequest PermissionsUpdate' where
        type Rs PermissionsUpdate' = Permission
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsUpdate{..}
          = go _puQuotaUser _puPrettyPrint _puUserIp _puKey
              (Just _puTransferOwnership)
              _puFileId
              _puOauthToken
              _puPermissionId
              _puFields
              _puAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PermissionsUpdateAPI)
                      r
                      u
