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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one user role by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.userRoles.get@.
module Network.Google.Resource.DFAReporting.UserRoles.Get
    (
    -- * REST Resource
      UserRolesGetResource

    -- * Creating a Request
    , userRolesGet
    , UserRolesGet

    -- * Request Lenses
    , urgXgafv
    , urgUploadProtocol
    , urgAccessToken
    , urgUploadType
    , urgProFileId
    , urgId
    , urgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.userRoles.get@ method which the
-- 'UserRolesGet' request conforms to.
type UserRolesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRoles" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] UserRole

-- | Gets one user role by ID.
--
-- /See:/ 'userRolesGet' smart constructor.
data UserRolesGet =
  UserRolesGet'
    { _urgXgafv :: !(Maybe Xgafv)
    , _urgUploadProtocol :: !(Maybe Text)
    , _urgAccessToken :: !(Maybe Text)
    , _urgUploadType :: !(Maybe Text)
    , _urgProFileId :: !(Textual Int64)
    , _urgId :: !(Textual Int64)
    , _urgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserRolesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urgXgafv'
--
-- * 'urgUploadProtocol'
--
-- * 'urgAccessToken'
--
-- * 'urgUploadType'
--
-- * 'urgProFileId'
--
-- * 'urgId'
--
-- * 'urgCallback'
userRolesGet
    :: Int64 -- ^ 'urgProFileId'
    -> Int64 -- ^ 'urgId'
    -> UserRolesGet
userRolesGet pUrgProFileId_ pUrgId_ =
  UserRolesGet'
    { _urgXgafv = Nothing
    , _urgUploadProtocol = Nothing
    , _urgAccessToken = Nothing
    , _urgUploadType = Nothing
    , _urgProFileId = _Coerce # pUrgProFileId_
    , _urgId = _Coerce # pUrgId_
    , _urgCallback = Nothing
    }


-- | V1 error format.
urgXgafv :: Lens' UserRolesGet (Maybe Xgafv)
urgXgafv = lens _urgXgafv (\ s a -> s{_urgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
urgUploadProtocol :: Lens' UserRolesGet (Maybe Text)
urgUploadProtocol
  = lens _urgUploadProtocol
      (\ s a -> s{_urgUploadProtocol = a})

-- | OAuth access token.
urgAccessToken :: Lens' UserRolesGet (Maybe Text)
urgAccessToken
  = lens _urgAccessToken
      (\ s a -> s{_urgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
urgUploadType :: Lens' UserRolesGet (Maybe Text)
urgUploadType
  = lens _urgUploadType
      (\ s a -> s{_urgUploadType = a})

-- | User profile ID associated with this request.
urgProFileId :: Lens' UserRolesGet Int64
urgProFileId
  = lens _urgProFileId (\ s a -> s{_urgProFileId = a})
      . _Coerce

-- | User role ID.
urgId :: Lens' UserRolesGet Int64
urgId
  = lens _urgId (\ s a -> s{_urgId = a}) . _Coerce

-- | JSONP
urgCallback :: Lens' UserRolesGet (Maybe Text)
urgCallback
  = lens _urgCallback (\ s a -> s{_urgCallback = a})

instance GoogleRequest UserRolesGet where
        type Rs UserRolesGet = UserRole
        type Scopes UserRolesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolesGet'{..}
          = go _urgProFileId _urgId _urgXgafv
              _urgUploadProtocol
              _urgAccessToken
              _urgUploadType
              _urgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy UserRolesGetResource)
                      mempty
