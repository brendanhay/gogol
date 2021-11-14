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
-- Module      : Network.Google.Resource.DFAReporting.UserRolePermissions.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one user role permission by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.userRolePermissions.get@.
module Network.Google.Resource.DFAReporting.UserRolePermissions.Get
    (
    -- * REST Resource
      UserRolePermissionsGetResource

    -- * Creating a Request
    , userRolePermissionsGet
    , UserRolePermissionsGet

    -- * Request Lenses
    , uXgafv
    , uUploadProtocol
    , uAccessToken
    , uUploadType
    , uProFileId
    , uId
    , uCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.userRolePermissions.get@ method which the
-- 'UserRolePermissionsGet' request conforms to.
type UserRolePermissionsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRolePermissions" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] UserRolePermission

-- | Gets one user role permission by ID.
--
-- /See:/ 'userRolePermissionsGet' smart constructor.
data UserRolePermissionsGet =
  UserRolePermissionsGet'
    { _uXgafv :: !(Maybe Xgafv)
    , _uUploadProtocol :: !(Maybe Text)
    , _uAccessToken :: !(Maybe Text)
    , _uUploadType :: !(Maybe Text)
    , _uProFileId :: !(Textual Int64)
    , _uId :: !(Textual Int64)
    , _uCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserRolePermissionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uXgafv'
--
-- * 'uUploadProtocol'
--
-- * 'uAccessToken'
--
-- * 'uUploadType'
--
-- * 'uProFileId'
--
-- * 'uId'
--
-- * 'uCallback'
userRolePermissionsGet
    :: Int64 -- ^ 'uProFileId'
    -> Int64 -- ^ 'uId'
    -> UserRolePermissionsGet
userRolePermissionsGet pUProFileId_ pUId_ =
  UserRolePermissionsGet'
    { _uXgafv = Nothing
    , _uUploadProtocol = Nothing
    , _uAccessToken = Nothing
    , _uUploadType = Nothing
    , _uProFileId = _Coerce # pUProFileId_
    , _uId = _Coerce # pUId_
    , _uCallback = Nothing
    }


-- | V1 error format.
uXgafv :: Lens' UserRolePermissionsGet (Maybe Xgafv)
uXgafv = lens _uXgafv (\ s a -> s{_uXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uUploadProtocol :: Lens' UserRolePermissionsGet (Maybe Text)
uUploadProtocol
  = lens _uUploadProtocol
      (\ s a -> s{_uUploadProtocol = a})

-- | OAuth access token.
uAccessToken :: Lens' UserRolePermissionsGet (Maybe Text)
uAccessToken
  = lens _uAccessToken (\ s a -> s{_uAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uUploadType :: Lens' UserRolePermissionsGet (Maybe Text)
uUploadType
  = lens _uUploadType (\ s a -> s{_uUploadType = a})

-- | User profile ID associated with this request.
uProFileId :: Lens' UserRolePermissionsGet Int64
uProFileId
  = lens _uProFileId (\ s a -> s{_uProFileId = a}) .
      _Coerce

-- | User role permission ID.
uId :: Lens' UserRolePermissionsGet Int64
uId = lens _uId (\ s a -> s{_uId = a}) . _Coerce

-- | JSONP
uCallback :: Lens' UserRolePermissionsGet (Maybe Text)
uCallback
  = lens _uCallback (\ s a -> s{_uCallback = a})

instance GoogleRequest UserRolePermissionsGet where
        type Rs UserRolePermissionsGet = UserRolePermission
        type Scopes UserRolePermissionsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolePermissionsGet'{..}
          = go _uProFileId _uId _uXgafv _uUploadProtocol
              _uAccessToken
              _uUploadType
              _uCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserRolePermissionsGetResource)
                      mempty
