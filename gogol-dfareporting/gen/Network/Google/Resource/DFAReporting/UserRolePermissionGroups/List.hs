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
-- Module      : Network.Google.Resource.DFAReporting.UserRolePermissionGroups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of all supported user role permission groups.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.userRolePermissionGroups.list@.
module Network.Google.Resource.DFAReporting.UserRolePermissionGroups.List
    (
    -- * REST Resource
      UserRolePermissionGroupsListResource

    -- * Creating a Request
    , userRolePermissionGroupsList
    , UserRolePermissionGroupsList

    -- * Request Lenses
    , urpglXgafv
    , urpglUploadProtocol
    , urpglAccessToken
    , urpglUploadType
    , urpglProFileId
    , urpglCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.userRolePermissionGroups.list@ method which the
-- 'UserRolePermissionGroupsList' request conforms to.
type UserRolePermissionGroupsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRolePermissionGroups" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] UserRolePermissionGroupsListResponse

-- | Gets a list of all supported user role permission groups.
--
-- /See:/ 'userRolePermissionGroupsList' smart constructor.
data UserRolePermissionGroupsList =
  UserRolePermissionGroupsList'
    { _urpglXgafv :: !(Maybe Xgafv)
    , _urpglUploadProtocol :: !(Maybe Text)
    , _urpglAccessToken :: !(Maybe Text)
    , _urpglUploadType :: !(Maybe Text)
    , _urpglProFileId :: !(Textual Int64)
    , _urpglCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserRolePermissionGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpglXgafv'
--
-- * 'urpglUploadProtocol'
--
-- * 'urpglAccessToken'
--
-- * 'urpglUploadType'
--
-- * 'urpglProFileId'
--
-- * 'urpglCallback'
userRolePermissionGroupsList
    :: Int64 -- ^ 'urpglProFileId'
    -> UserRolePermissionGroupsList
userRolePermissionGroupsList pUrpglProFileId_ =
  UserRolePermissionGroupsList'
    { _urpglXgafv = Nothing
    , _urpglUploadProtocol = Nothing
    , _urpglAccessToken = Nothing
    , _urpglUploadType = Nothing
    , _urpglProFileId = _Coerce # pUrpglProFileId_
    , _urpglCallback = Nothing
    }


-- | V1 error format.
urpglXgafv :: Lens' UserRolePermissionGroupsList (Maybe Xgafv)
urpglXgafv
  = lens _urpglXgafv (\ s a -> s{_urpglXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
urpglUploadProtocol :: Lens' UserRolePermissionGroupsList (Maybe Text)
urpglUploadProtocol
  = lens _urpglUploadProtocol
      (\ s a -> s{_urpglUploadProtocol = a})

-- | OAuth access token.
urpglAccessToken :: Lens' UserRolePermissionGroupsList (Maybe Text)
urpglAccessToken
  = lens _urpglAccessToken
      (\ s a -> s{_urpglAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
urpglUploadType :: Lens' UserRolePermissionGroupsList (Maybe Text)
urpglUploadType
  = lens _urpglUploadType
      (\ s a -> s{_urpglUploadType = a})

-- | User profile ID associated with this request.
urpglProFileId :: Lens' UserRolePermissionGroupsList Int64
urpglProFileId
  = lens _urpglProFileId
      (\ s a -> s{_urpglProFileId = a})
      . _Coerce

-- | JSONP
urpglCallback :: Lens' UserRolePermissionGroupsList (Maybe Text)
urpglCallback
  = lens _urpglCallback
      (\ s a -> s{_urpglCallback = a})

instance GoogleRequest UserRolePermissionGroupsList
         where
        type Rs UserRolePermissionGroupsList =
             UserRolePermissionGroupsListResponse
        type Scopes UserRolePermissionGroupsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolePermissionGroupsList'{..}
          = go _urpglProFileId _urpglXgafv _urpglUploadProtocol
              _urpglAccessToken
              _urpglUploadType
              _urpglCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserRolePermissionGroupsListResource)
                      mempty
