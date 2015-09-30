{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Permissions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a permission from a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePermissionsDelete@.
module Drive.Permissions.Delete
    (
    -- * REST Resource
      PermissionsDeleteAPI

    -- * Creating a Request
    , permissionsDelete
    , PermissionsDelete

    -- * Request Lenses
    , pddQuotaUser
    , pddPrettyPrint
    , pddUserIp
    , pddKey
    , pddFileId
    , pddOauthToken
    , pddPermissionId
    , pddFields
    , pddAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePermissionsDelete@ which the
-- 'PermissionsDelete' request conforms to.
type PermissionsDeleteAPI =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           Capture "permissionId" Text :> Delete '[JSON] ()

-- | Deletes a permission from a file.
--
-- /See:/ 'permissionsDelete' smart constructor.
data PermissionsDelete = PermissionsDelete
    { _pddQuotaUser    :: !(Maybe Text)
    , _pddPrettyPrint  :: !Bool
    , _pddUserIp       :: !(Maybe Text)
    , _pddKey          :: !(Maybe Text)
    , _pddFileId       :: !Text
    , _pddOauthToken   :: !(Maybe Text)
    , _pddPermissionId :: !Text
    , _pddFields       :: !(Maybe Text)
    , _pddAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddQuotaUser'
--
-- * 'pddPrettyPrint'
--
-- * 'pddUserIp'
--
-- * 'pddKey'
--
-- * 'pddFileId'
--
-- * 'pddOauthToken'
--
-- * 'pddPermissionId'
--
-- * 'pddFields'
--
-- * 'pddAlt'
permissionsDelete
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'permissionId'
    -> PermissionsDelete
permissionsDelete pPddFileId_ pPddPermissionId_ =
    PermissionsDelete
    { _pddQuotaUser = Nothing
    , _pddPrettyPrint = True
    , _pddUserIp = Nothing
    , _pddKey = Nothing
    , _pddFileId = pPddFileId_
    , _pddOauthToken = Nothing
    , _pddPermissionId = pPddPermissionId_
    , _pddFields = Nothing
    , _pddAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pddQuotaUser :: Lens' PermissionsDelete' (Maybe Text)
pddQuotaUser
  = lens _pddQuotaUser (\ s a -> s{_pddQuotaUser = a})

-- | Returns response with indentations and line breaks.
pddPrettyPrint :: Lens' PermissionsDelete' Bool
pddPrettyPrint
  = lens _pddPrettyPrint
      (\ s a -> s{_pddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pddUserIp :: Lens' PermissionsDelete' (Maybe Text)
pddUserIp
  = lens _pddUserIp (\ s a -> s{_pddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pddKey :: Lens' PermissionsDelete' (Maybe Text)
pddKey = lens _pddKey (\ s a -> s{_pddKey = a})

-- | The ID for the file.
pddFileId :: Lens' PermissionsDelete' Text
pddFileId
  = lens _pddFileId (\ s a -> s{_pddFileId = a})

-- | OAuth 2.0 token for the current user.
pddOauthToken :: Lens' PermissionsDelete' (Maybe Text)
pddOauthToken
  = lens _pddOauthToken
      (\ s a -> s{_pddOauthToken = a})

-- | The ID for the permission.
pddPermissionId :: Lens' PermissionsDelete' Text
pddPermissionId
  = lens _pddPermissionId
      (\ s a -> s{_pddPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
pddFields :: Lens' PermissionsDelete' (Maybe Text)
pddFields
  = lens _pddFields (\ s a -> s{_pddFields = a})

-- | Data format for the response.
pddAlt :: Lens' PermissionsDelete' Text
pddAlt = lens _pddAlt (\ s a -> s{_pddAlt = a})

instance GoogleRequest PermissionsDelete' where
        type Rs PermissionsDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsDelete{..}
          = go _pddQuotaUser _pddPrettyPrint _pddUserIp _pddKey
              _pddFileId
              _pddOauthToken
              _pddPermissionId
              _pddFields
              _pddAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PermissionsDeleteAPI)
                      r
                      u
