{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Permissions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a permission from a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.delete@.
module Network.Google.API.Drive.Permissions.Delete
    (
    -- * REST Resource
      PermissionsDeleteAPI

    -- * Creating a Request
    , permissionsDelete'
    , PermissionsDelete'

    -- * Request Lenses
    , pdQuotaUser
    , pdPrettyPrint
    , pdUserIp
    , pdKey
    , pdFileId
    , pdOauthToken
    , pdPermissionId
    , pdFields
    , pdAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.permissions.delete which the
-- 'PermissionsDelete'' request conforms to.
type PermissionsDeleteAPI =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           Capture "permissionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a permission from a file.
--
-- /See:/ 'permissionsDelete'' smart constructor.
data PermissionsDelete' = PermissionsDelete'
    { _pdQuotaUser    :: !(Maybe Text)
    , _pdPrettyPrint  :: !Bool
    , _pdUserIp       :: !(Maybe Text)
    , _pdKey          :: !(Maybe Text)
    , _pdFileId       :: !Text
    , _pdOauthToken   :: !(Maybe Text)
    , _pdPermissionId :: !Text
    , _pdFields       :: !(Maybe Text)
    , _pdAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdQuotaUser'
--
-- * 'pdPrettyPrint'
--
-- * 'pdUserIp'
--
-- * 'pdKey'
--
-- * 'pdFileId'
--
-- * 'pdOauthToken'
--
-- * 'pdPermissionId'
--
-- * 'pdFields'
--
-- * 'pdAlt'
permissionsDelete'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'permissionId'
    -> PermissionsDelete'
permissionsDelete' pPdFileId_ pPdPermissionId_ =
    PermissionsDelete'
    { _pdQuotaUser = Nothing
    , _pdPrettyPrint = True
    , _pdUserIp = Nothing
    , _pdKey = Nothing
    , _pdFileId = pPdFileId_
    , _pdOauthToken = Nothing
    , _pdPermissionId = pPdPermissionId_
    , _pdFields = Nothing
    , _pdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pdQuotaUser :: Lens' PermissionsDelete' (Maybe Text)
pdQuotaUser
  = lens _pdQuotaUser (\ s a -> s{_pdQuotaUser = a})

-- | Returns response with indentations and line breaks.
pdPrettyPrint :: Lens' PermissionsDelete' Bool
pdPrettyPrint
  = lens _pdPrettyPrint
      (\ s a -> s{_pdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pdUserIp :: Lens' PermissionsDelete' (Maybe Text)
pdUserIp = lens _pdUserIp (\ s a -> s{_pdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pdKey :: Lens' PermissionsDelete' (Maybe Text)
pdKey = lens _pdKey (\ s a -> s{_pdKey = a})

-- | The ID for the file.
pdFileId :: Lens' PermissionsDelete' Text
pdFileId = lens _pdFileId (\ s a -> s{_pdFileId = a})

-- | OAuth 2.0 token for the current user.
pdOauthToken :: Lens' PermissionsDelete' (Maybe Text)
pdOauthToken
  = lens _pdOauthToken (\ s a -> s{_pdOauthToken = a})

-- | The ID for the permission.
pdPermissionId :: Lens' PermissionsDelete' Text
pdPermissionId
  = lens _pdPermissionId
      (\ s a -> s{_pdPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
pdFields :: Lens' PermissionsDelete' (Maybe Text)
pdFields = lens _pdFields (\ s a -> s{_pdFields = a})

-- | Data format for the response.
pdAlt :: Lens' PermissionsDelete' Alt
pdAlt = lens _pdAlt (\ s a -> s{_pdAlt = a})

instance GoogleRequest PermissionsDelete' where
        type Rs PermissionsDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsDelete'{..}
          = go _pdQuotaUser (Just _pdPrettyPrint) _pdUserIp
              _pdKey
              _pdFileId
              _pdOauthToken
              _pdPermissionId
              _pdFields
              (Just _pdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PermissionsDeleteAPI)
                      r
                      u
