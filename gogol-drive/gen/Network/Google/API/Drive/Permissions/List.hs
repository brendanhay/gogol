{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a file\'s permissions.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.list@.
module Network.Google.API.Drive.Permissions.List
    (
    -- * REST Resource
      PermissionsListAPI

    -- * Creating a Request
    , permissionsList'
    , PermissionsList'

    -- * Request Lenses
    , pQuotaUser
    , pPrettyPrint
    , pUserIp
    , pKey
    , pFileId
    , pOauthToken
    , pFields
    , pAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.permissions.list which the
-- 'PermissionsList'' request conforms to.
type PermissionsListAPI =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] PermissionList

-- | Lists a file\'s permissions.
--
-- /See:/ 'permissionsList'' smart constructor.
data PermissionsList' = PermissionsList'
    { _pQuotaUser   :: !(Maybe Text)
    , _pPrettyPrint :: !Bool
    , _pUserIp      :: !(Maybe Text)
    , _pKey         :: !(Maybe Text)
    , _pFileId      :: !Text
    , _pOauthToken  :: !(Maybe Text)
    , _pFields      :: !(Maybe Text)
    , _pAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pQuotaUser'
--
-- * 'pPrettyPrint'
--
-- * 'pUserIp'
--
-- * 'pKey'
--
-- * 'pFileId'
--
-- * 'pOauthToken'
--
-- * 'pFields'
--
-- * 'pAlt'
permissionsList'
    :: Text -- ^ 'fileId'
    -> PermissionsList'
permissionsList' pPFileId_ =
    PermissionsList'
    { _pQuotaUser = Nothing
    , _pPrettyPrint = True
    , _pUserIp = Nothing
    , _pKey = Nothing
    , _pFileId = pPFileId_
    , _pOauthToken = Nothing
    , _pFields = Nothing
    , _pAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pQuotaUser :: Lens' PermissionsList' (Maybe Text)
pQuotaUser
  = lens _pQuotaUser (\ s a -> s{_pQuotaUser = a})

-- | Returns response with indentations and line breaks.
pPrettyPrint :: Lens' PermissionsList' Bool
pPrettyPrint
  = lens _pPrettyPrint (\ s a -> s{_pPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pUserIp :: Lens' PermissionsList' (Maybe Text)
pUserIp = lens _pUserIp (\ s a -> s{_pUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pKey :: Lens' PermissionsList' (Maybe Text)
pKey = lens _pKey (\ s a -> s{_pKey = a})

-- | The ID for the file.
pFileId :: Lens' PermissionsList' Text
pFileId = lens _pFileId (\ s a -> s{_pFileId = a})

-- | OAuth 2.0 token for the current user.
pOauthToken :: Lens' PermissionsList' (Maybe Text)
pOauthToken
  = lens _pOauthToken (\ s a -> s{_pOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pFields :: Lens' PermissionsList' (Maybe Text)
pFields = lens _pFields (\ s a -> s{_pFields = a})

-- | Data format for the response.
pAlt :: Lens' PermissionsList' Alt
pAlt = lens _pAlt (\ s a -> s{_pAlt = a})

instance GoogleRequest PermissionsList' where
        type Rs PermissionsList' = PermissionList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsList'{..}
          = go _pQuotaUser (Just _pPrettyPrint) _pUserIp _pKey
              _pFileId
              _pOauthToken
              _pFields
              (Just _pAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PermissionsListAPI)
                      r
                      u
