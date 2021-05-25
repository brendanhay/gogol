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
-- Module      : Network.Google.Resource.DFAReporting.UserRolePermissionGroups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one user role permission group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.userRolePermissionGroups.get@.
module Network.Google.Resource.DFAReporting.UserRolePermissionGroups.Get
    (
    -- * REST Resource
      UserRolePermissionGroupsGetResource

    -- * Creating a Request
    , userRolePermissionGroupsGet
    , UserRolePermissionGroupsGet

    -- * Request Lenses
    , urpggXgafv
    , urpggUploadProtocol
    , urpggAccessToken
    , urpggUploadType
    , urpggProFileId
    , urpggId
    , urpggCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.userRolePermissionGroups.get@ method which the
-- 'UserRolePermissionGroupsGet' request conforms to.
type UserRolePermissionGroupsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRolePermissionGroups" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] UserRolePermissionGroup

-- | Gets one user role permission group by ID.
--
-- /See:/ 'userRolePermissionGroupsGet' smart constructor.
data UserRolePermissionGroupsGet =
  UserRolePermissionGroupsGet'
    { _urpggXgafv :: !(Maybe Xgafv)
    , _urpggUploadProtocol :: !(Maybe Text)
    , _urpggAccessToken :: !(Maybe Text)
    , _urpggUploadType :: !(Maybe Text)
    , _urpggProFileId :: !(Textual Int64)
    , _urpggId :: !(Textual Int64)
    , _urpggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserRolePermissionGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpggXgafv'
--
-- * 'urpggUploadProtocol'
--
-- * 'urpggAccessToken'
--
-- * 'urpggUploadType'
--
-- * 'urpggProFileId'
--
-- * 'urpggId'
--
-- * 'urpggCallback'
userRolePermissionGroupsGet
    :: Int64 -- ^ 'urpggProFileId'
    -> Int64 -- ^ 'urpggId'
    -> UserRolePermissionGroupsGet
userRolePermissionGroupsGet pUrpggProFileId_ pUrpggId_ =
  UserRolePermissionGroupsGet'
    { _urpggXgafv = Nothing
    , _urpggUploadProtocol = Nothing
    , _urpggAccessToken = Nothing
    , _urpggUploadType = Nothing
    , _urpggProFileId = _Coerce # pUrpggProFileId_
    , _urpggId = _Coerce # pUrpggId_
    , _urpggCallback = Nothing
    }


-- | V1 error format.
urpggXgafv :: Lens' UserRolePermissionGroupsGet (Maybe Xgafv)
urpggXgafv
  = lens _urpggXgafv (\ s a -> s{_urpggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
urpggUploadProtocol :: Lens' UserRolePermissionGroupsGet (Maybe Text)
urpggUploadProtocol
  = lens _urpggUploadProtocol
      (\ s a -> s{_urpggUploadProtocol = a})

-- | OAuth access token.
urpggAccessToken :: Lens' UserRolePermissionGroupsGet (Maybe Text)
urpggAccessToken
  = lens _urpggAccessToken
      (\ s a -> s{_urpggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
urpggUploadType :: Lens' UserRolePermissionGroupsGet (Maybe Text)
urpggUploadType
  = lens _urpggUploadType
      (\ s a -> s{_urpggUploadType = a})

-- | User profile ID associated with this request.
urpggProFileId :: Lens' UserRolePermissionGroupsGet Int64
urpggProFileId
  = lens _urpggProFileId
      (\ s a -> s{_urpggProFileId = a})
      . _Coerce

-- | User role permission group ID.
urpggId :: Lens' UserRolePermissionGroupsGet Int64
urpggId
  = lens _urpggId (\ s a -> s{_urpggId = a}) . _Coerce

-- | JSONP
urpggCallback :: Lens' UserRolePermissionGroupsGet (Maybe Text)
urpggCallback
  = lens _urpggCallback
      (\ s a -> s{_urpggCallback = a})

instance GoogleRequest UserRolePermissionGroupsGet
         where
        type Rs UserRolePermissionGroupsGet =
             UserRolePermissionGroup
        type Scopes UserRolePermissionGroupsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolePermissionGroupsGet'{..}
          = go _urpggProFileId _urpggId _urpggXgafv
              _urpggUploadProtocol
              _urpggAccessToken
              _urpggUploadType
              _urpggCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserRolePermissionGroupsGetResource)
                      mempty
