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
-- Module      : Network.Google.Resource.DFAReporting.UserRolePermissions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of user role permissions, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.userRolePermissions.list@.
module Network.Google.Resource.DFAReporting.UserRolePermissions.List
    (
    -- * REST Resource
      UserRolePermissionsListResource

    -- * Creating a Request
    , userRolePermissionsList
    , UserRolePermissionsList

    -- * Request Lenses
    , urplXgafv
    , urplUploadProtocol
    , urplAccessToken
    , urplUploadType
    , urplIds
    , urplProFileId
    , urplCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.userRolePermissions.list@ method which the
-- 'UserRolePermissionsList' request conforms to.
type UserRolePermissionsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRolePermissions" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParams "ids" (Textual Int64) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] UserRolePermissionsListResponse

-- | Gets a list of user role permissions, possibly filtered.
--
-- /See:/ 'userRolePermissionsList' smart constructor.
data UserRolePermissionsList =
  UserRolePermissionsList'
    { _urplXgafv :: !(Maybe Xgafv)
    , _urplUploadProtocol :: !(Maybe Text)
    , _urplAccessToken :: !(Maybe Text)
    , _urplUploadType :: !(Maybe Text)
    , _urplIds :: !(Maybe [Textual Int64])
    , _urplProFileId :: !(Textual Int64)
    , _urplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserRolePermissionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urplXgafv'
--
-- * 'urplUploadProtocol'
--
-- * 'urplAccessToken'
--
-- * 'urplUploadType'
--
-- * 'urplIds'
--
-- * 'urplProFileId'
--
-- * 'urplCallback'
userRolePermissionsList
    :: Int64 -- ^ 'urplProFileId'
    -> UserRolePermissionsList
userRolePermissionsList pUrplProFileId_ =
  UserRolePermissionsList'
    { _urplXgafv = Nothing
    , _urplUploadProtocol = Nothing
    , _urplAccessToken = Nothing
    , _urplUploadType = Nothing
    , _urplIds = Nothing
    , _urplProFileId = _Coerce # pUrplProFileId_
    , _urplCallback = Nothing
    }


-- | V1 error format.
urplXgafv :: Lens' UserRolePermissionsList (Maybe Xgafv)
urplXgafv
  = lens _urplXgafv (\ s a -> s{_urplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
urplUploadProtocol :: Lens' UserRolePermissionsList (Maybe Text)
urplUploadProtocol
  = lens _urplUploadProtocol
      (\ s a -> s{_urplUploadProtocol = a})

-- | OAuth access token.
urplAccessToken :: Lens' UserRolePermissionsList (Maybe Text)
urplAccessToken
  = lens _urplAccessToken
      (\ s a -> s{_urplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
urplUploadType :: Lens' UserRolePermissionsList (Maybe Text)
urplUploadType
  = lens _urplUploadType
      (\ s a -> s{_urplUploadType = a})

-- | Select only user role permissions with these IDs.
urplIds :: Lens' UserRolePermissionsList [Int64]
urplIds
  = lens _urplIds (\ s a -> s{_urplIds = a}) . _Default
      . _Coerce

-- | User profile ID associated with this request.
urplProFileId :: Lens' UserRolePermissionsList Int64
urplProFileId
  = lens _urplProFileId
      (\ s a -> s{_urplProFileId = a})
      . _Coerce

-- | JSONP
urplCallback :: Lens' UserRolePermissionsList (Maybe Text)
urplCallback
  = lens _urplCallback (\ s a -> s{_urplCallback = a})

instance GoogleRequest UserRolePermissionsList where
        type Rs UserRolePermissionsList =
             UserRolePermissionsListResponse
        type Scopes UserRolePermissionsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolePermissionsList'{..}
          = go _urplProFileId _urplXgafv _urplUploadProtocol
              _urplAccessToken
              _urplUploadType
              (_urplIds ^. _Default)
              _urplCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserRolePermissionsListResource)
                      mempty
