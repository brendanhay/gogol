{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Drive.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a file\'s permissions.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePermissionsList@.
module Network.Google.Resource.Drive.Permissions.List
    (
    -- * REST Resource
      PermissionsListResource

    -- * Creating a Request
    , permissionsList'
    , PermissionsList'

    -- * Request Lenses
    , pllQuotaUser
    , pllPrettyPrint
    , pllUserIP
    , pllKey
    , pllFileId
    , pllOAuthToken
    , pllFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePermissionsList@ method which the
-- 'PermissionsList'' request conforms to.
type PermissionsListResource =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] PermissionList

-- | Lists a file\'s permissions.
--
-- /See:/ 'permissionsList'' smart constructor.
data PermissionsList' = PermissionsList'
    { _pllQuotaUser   :: !(Maybe Text)
    , _pllPrettyPrint :: !Bool
    , _pllUserIP      :: !(Maybe Text)
    , _pllKey         :: !(Maybe AuthKey)
    , _pllFileId      :: !Text
    , _pllOAuthToken  :: !(Maybe OAuthToken)
    , _pllFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllQuotaUser'
--
-- * 'pllPrettyPrint'
--
-- * 'pllUserIP'
--
-- * 'pllKey'
--
-- * 'pllFileId'
--
-- * 'pllOAuthToken'
--
-- * 'pllFields'
permissionsList'
    :: Text -- ^ 'fileId'
    -> PermissionsList'
permissionsList' pPllFileId_ =
    PermissionsList'
    { _pllQuotaUser = Nothing
    , _pllPrettyPrint = True
    , _pllUserIP = Nothing
    , _pllKey = Nothing
    , _pllFileId = pPllFileId_
    , _pllOAuthToken = Nothing
    , _pllFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pllQuotaUser :: Lens' PermissionsList' (Maybe Text)
pllQuotaUser
  = lens _pllQuotaUser (\ s a -> s{_pllQuotaUser = a})

-- | Returns response with indentations and line breaks.
pllPrettyPrint :: Lens' PermissionsList' Bool
pllPrettyPrint
  = lens _pllPrettyPrint
      (\ s a -> s{_pllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pllUserIP :: Lens' PermissionsList' (Maybe Text)
pllUserIP
  = lens _pllUserIP (\ s a -> s{_pllUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pllKey :: Lens' PermissionsList' (Maybe AuthKey)
pllKey = lens _pllKey (\ s a -> s{_pllKey = a})

-- | The ID for the file.
pllFileId :: Lens' PermissionsList' Text
pllFileId
  = lens _pllFileId (\ s a -> s{_pllFileId = a})

-- | OAuth 2.0 token for the current user.
pllOAuthToken :: Lens' PermissionsList' (Maybe OAuthToken)
pllOAuthToken
  = lens _pllOAuthToken
      (\ s a -> s{_pllOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pllFields :: Lens' PermissionsList' (Maybe Text)
pllFields
  = lens _pllFields (\ s a -> s{_pllFields = a})

instance GoogleAuth PermissionsList' where
        _AuthKey = pllKey . _Just
        _AuthToken = pllOAuthToken . _Just

instance GoogleRequest PermissionsList' where
        type Rs PermissionsList' = PermissionList
        request = requestWith driveRequest
        requestWith rq PermissionsList'{..}
          = go _pllFileId _pllQuotaUser (Just _pllPrettyPrint)
              _pllUserIP
              _pllFields
              _pllKey
              _pllOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy PermissionsListResource)
                      rq
