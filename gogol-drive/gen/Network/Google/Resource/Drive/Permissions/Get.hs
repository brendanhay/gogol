{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Permissions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a permission by ID.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePermissionsGet@.
module Drive.Permissions.Get
    (
    -- * REST Resource
      PermissionsGetAPI

    -- * Creating a Request
    , permissionsGet
    , PermissionsGet

    -- * Request Lenses
    , pggQuotaUser
    , pggPrettyPrint
    , pggUserIp
    , pggKey
    , pggFileId
    , pggOauthToken
    , pggPermissionId
    , pggFields
    , pggAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePermissionsGet@ which the
-- 'PermissionsGet' request conforms to.
type PermissionsGetAPI =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           Capture "permissionId" Text :> Get '[JSON] Permission

-- | Gets a permission by ID.
--
-- /See:/ 'permissionsGet' smart constructor.
data PermissionsGet = PermissionsGet
    { _pggQuotaUser    :: !(Maybe Text)
    , _pggPrettyPrint  :: !Bool
    , _pggUserIp       :: !(Maybe Text)
    , _pggKey          :: !(Maybe Text)
    , _pggFileId       :: !Text
    , _pggOauthToken   :: !(Maybe Text)
    , _pggPermissionId :: !Text
    , _pggFields       :: !(Maybe Text)
    , _pggAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggQuotaUser'
--
-- * 'pggPrettyPrint'
--
-- * 'pggUserIp'
--
-- * 'pggKey'
--
-- * 'pggFileId'
--
-- * 'pggOauthToken'
--
-- * 'pggPermissionId'
--
-- * 'pggFields'
--
-- * 'pggAlt'
permissionsGet
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'permissionId'
    -> PermissionsGet
permissionsGet pPggFileId_ pPggPermissionId_ =
    PermissionsGet
    { _pggQuotaUser = Nothing
    , _pggPrettyPrint = True
    , _pggUserIp = Nothing
    , _pggKey = Nothing
    , _pggFileId = pPggFileId_
    , _pggOauthToken = Nothing
    , _pggPermissionId = pPggPermissionId_
    , _pggFields = Nothing
    , _pggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pggQuotaUser :: Lens' PermissionsGet' (Maybe Text)
pggQuotaUser
  = lens _pggQuotaUser (\ s a -> s{_pggQuotaUser = a})

-- | Returns response with indentations and line breaks.
pggPrettyPrint :: Lens' PermissionsGet' Bool
pggPrettyPrint
  = lens _pggPrettyPrint
      (\ s a -> s{_pggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pggUserIp :: Lens' PermissionsGet' (Maybe Text)
pggUserIp
  = lens _pggUserIp (\ s a -> s{_pggUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pggKey :: Lens' PermissionsGet' (Maybe Text)
pggKey = lens _pggKey (\ s a -> s{_pggKey = a})

-- | The ID for the file.
pggFileId :: Lens' PermissionsGet' Text
pggFileId
  = lens _pggFileId (\ s a -> s{_pggFileId = a})

-- | OAuth 2.0 token for the current user.
pggOauthToken :: Lens' PermissionsGet' (Maybe Text)
pggOauthToken
  = lens _pggOauthToken
      (\ s a -> s{_pggOauthToken = a})

-- | The ID for the permission.
pggPermissionId :: Lens' PermissionsGet' Text
pggPermissionId
  = lens _pggPermissionId
      (\ s a -> s{_pggPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
pggFields :: Lens' PermissionsGet' (Maybe Text)
pggFields
  = lens _pggFields (\ s a -> s{_pggFields = a})

-- | Data format for the response.
pggAlt :: Lens' PermissionsGet' Text
pggAlt = lens _pggAlt (\ s a -> s{_pggAlt = a})

instance GoogleRequest PermissionsGet' where
        type Rs PermissionsGet' = Permission
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsGet{..}
          = go _pggQuotaUser _pggPrettyPrint _pggUserIp _pggKey
              _pggFileId
              _pggOauthToken
              _pggPermissionId
              _pggFields
              _pggAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PermissionsGetAPI)
                      r
                      u
