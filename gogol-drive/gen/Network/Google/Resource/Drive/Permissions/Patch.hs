{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Permissions.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a permission using patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePermissionsPatch@.
module Drive.Permissions.Patch
    (
    -- * REST Resource
      PermissionsPatchAPI

    -- * Creating a Request
    , permissionsPatch
    , PermissionsPatch

    -- * Request Lenses
    , ppQuotaUser
    , ppPrettyPrint
    , ppUserIp
    , ppKey
    , ppTransferOwnership
    , ppFileId
    , ppOauthToken
    , ppPermissionId
    , ppFields
    , ppAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePermissionsPatch@ which the
-- 'PermissionsPatch' request conforms to.
type PermissionsPatchAPI =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           Capture "permissionId" Text :>
             QueryParam "transferOwnership" Bool :>
               Patch '[JSON] Permission

-- | Updates a permission using patch semantics.
--
-- /See:/ 'permissionsPatch' smart constructor.
data PermissionsPatch = PermissionsPatch
    { _ppQuotaUser         :: !(Maybe Text)
    , _ppPrettyPrint       :: !Bool
    , _ppUserIp            :: !(Maybe Text)
    , _ppKey               :: !(Maybe Text)
    , _ppTransferOwnership :: !Bool
    , _ppFileId            :: !Text
    , _ppOauthToken        :: !(Maybe Text)
    , _ppPermissionId      :: !Text
    , _ppFields            :: !(Maybe Text)
    , _ppAlt               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppQuotaUser'
--
-- * 'ppPrettyPrint'
--
-- * 'ppUserIp'
--
-- * 'ppKey'
--
-- * 'ppTransferOwnership'
--
-- * 'ppFileId'
--
-- * 'ppOauthToken'
--
-- * 'ppPermissionId'
--
-- * 'ppFields'
--
-- * 'ppAlt'
permissionsPatch
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'permissionId'
    -> PermissionsPatch
permissionsPatch pPpFileId_ pPpPermissionId_ =
    PermissionsPatch
    { _ppQuotaUser = Nothing
    , _ppPrettyPrint = True
    , _ppUserIp = Nothing
    , _ppKey = Nothing
    , _ppTransferOwnership = False
    , _ppFileId = pPpFileId_
    , _ppOauthToken = Nothing
    , _ppPermissionId = pPpPermissionId_
    , _ppFields = Nothing
    , _ppAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ppQuotaUser :: Lens' PermissionsPatch' (Maybe Text)
ppQuotaUser
  = lens _ppQuotaUser (\ s a -> s{_ppQuotaUser = a})

-- | Returns response with indentations and line breaks.
ppPrettyPrint :: Lens' PermissionsPatch' Bool
ppPrettyPrint
  = lens _ppPrettyPrint
      (\ s a -> s{_ppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ppUserIp :: Lens' PermissionsPatch' (Maybe Text)
ppUserIp = lens _ppUserIp (\ s a -> s{_ppUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ppKey :: Lens' PermissionsPatch' (Maybe Text)
ppKey = lens _ppKey (\ s a -> s{_ppKey = a})

-- | Whether changing a role to \'owner\' downgrades the current owners to
-- writers. Does nothing if the specified role is not \'owner\'.
ppTransferOwnership :: Lens' PermissionsPatch' Bool
ppTransferOwnership
  = lens _ppTransferOwnership
      (\ s a -> s{_ppTransferOwnership = a})

-- | The ID for the file.
ppFileId :: Lens' PermissionsPatch' Text
ppFileId = lens _ppFileId (\ s a -> s{_ppFileId = a})

-- | OAuth 2.0 token for the current user.
ppOauthToken :: Lens' PermissionsPatch' (Maybe Text)
ppOauthToken
  = lens _ppOauthToken (\ s a -> s{_ppOauthToken = a})

-- | The ID for the permission.
ppPermissionId :: Lens' PermissionsPatch' Text
ppPermissionId
  = lens _ppPermissionId
      (\ s a -> s{_ppPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
ppFields :: Lens' PermissionsPatch' (Maybe Text)
ppFields = lens _ppFields (\ s a -> s{_ppFields = a})

-- | Data format for the response.
ppAlt :: Lens' PermissionsPatch' Text
ppAlt = lens _ppAlt (\ s a -> s{_ppAlt = a})

instance GoogleRequest PermissionsPatch' where
        type Rs PermissionsPatch' = Permission
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsPatch{..}
          = go _ppQuotaUser _ppPrettyPrint _ppUserIp _ppKey
              (Just _ppTransferOwnership)
              _ppFileId
              _ppOauthToken
              _ppPermissionId
              _ppFields
              _ppAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PermissionsPatchAPI)
                      r
                      u
