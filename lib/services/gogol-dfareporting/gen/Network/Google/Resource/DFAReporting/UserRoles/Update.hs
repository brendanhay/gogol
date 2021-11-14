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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing user role.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.userRoles.update@.
module Network.Google.Resource.DFAReporting.UserRoles.Update
    (
    -- * REST Resource
      UserRolesUpdateResource

    -- * Creating a Request
    , userRolesUpdate
    , UserRolesUpdate

    -- * Request Lenses
    , uruXgafv
    , uruUploadProtocol
    , uruAccessToken
    , uruUploadType
    , uruProFileId
    , uruPayload
    , uruCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.userRoles.update@ method which the
-- 'UserRolesUpdate' request conforms to.
type UserRolesUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRoles" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] UserRole :> Put '[JSON] UserRole

-- | Updates an existing user role.
--
-- /See:/ 'userRolesUpdate' smart constructor.
data UserRolesUpdate =
  UserRolesUpdate'
    { _uruXgafv :: !(Maybe Xgafv)
    , _uruUploadProtocol :: !(Maybe Text)
    , _uruAccessToken :: !(Maybe Text)
    , _uruUploadType :: !(Maybe Text)
    , _uruProFileId :: !(Textual Int64)
    , _uruPayload :: !UserRole
    , _uruCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserRolesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uruXgafv'
--
-- * 'uruUploadProtocol'
--
-- * 'uruAccessToken'
--
-- * 'uruUploadType'
--
-- * 'uruProFileId'
--
-- * 'uruPayload'
--
-- * 'uruCallback'
userRolesUpdate
    :: Int64 -- ^ 'uruProFileId'
    -> UserRole -- ^ 'uruPayload'
    -> UserRolesUpdate
userRolesUpdate pUruProFileId_ pUruPayload_ =
  UserRolesUpdate'
    { _uruXgafv = Nothing
    , _uruUploadProtocol = Nothing
    , _uruAccessToken = Nothing
    , _uruUploadType = Nothing
    , _uruProFileId = _Coerce # pUruProFileId_
    , _uruPayload = pUruPayload_
    , _uruCallback = Nothing
    }


-- | V1 error format.
uruXgafv :: Lens' UserRolesUpdate (Maybe Xgafv)
uruXgafv = lens _uruXgafv (\ s a -> s{_uruXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uruUploadProtocol :: Lens' UserRolesUpdate (Maybe Text)
uruUploadProtocol
  = lens _uruUploadProtocol
      (\ s a -> s{_uruUploadProtocol = a})

-- | OAuth access token.
uruAccessToken :: Lens' UserRolesUpdate (Maybe Text)
uruAccessToken
  = lens _uruAccessToken
      (\ s a -> s{_uruAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uruUploadType :: Lens' UserRolesUpdate (Maybe Text)
uruUploadType
  = lens _uruUploadType
      (\ s a -> s{_uruUploadType = a})

-- | User profile ID associated with this request.
uruProFileId :: Lens' UserRolesUpdate Int64
uruProFileId
  = lens _uruProFileId (\ s a -> s{_uruProFileId = a})
      . _Coerce

-- | Multipart request metadata.
uruPayload :: Lens' UserRolesUpdate UserRole
uruPayload
  = lens _uruPayload (\ s a -> s{_uruPayload = a})

-- | JSONP
uruCallback :: Lens' UserRolesUpdate (Maybe Text)
uruCallback
  = lens _uruCallback (\ s a -> s{_uruCallback = a})

instance GoogleRequest UserRolesUpdate where
        type Rs UserRolesUpdate = UserRole
        type Scopes UserRolesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolesUpdate'{..}
          = go _uruProFileId _uruXgafv _uruUploadProtocol
              _uruAccessToken
              _uruUploadType
              _uruCallback
              (Just AltJSON)
              _uruPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserRolesUpdateResource)
                      mempty
