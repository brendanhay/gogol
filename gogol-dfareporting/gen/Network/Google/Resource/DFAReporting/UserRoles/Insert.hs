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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new user role.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.userRoles.insert@.
module Network.Google.Resource.DFAReporting.UserRoles.Insert
    (
    -- * REST Resource
      UserRolesInsertResource

    -- * Creating a Request
    , userRolesInsert
    , UserRolesInsert

    -- * Request Lenses
    , uriXgafv
    , uriUploadProtocol
    , uriAccessToken
    , uriUploadType
    , uriProFileId
    , uriPayload
    , uriCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.userRoles.insert@ method which the
-- 'UserRolesInsert' request conforms to.
type UserRolesInsertResource =
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
                           ReqBody '[JSON] UserRole :> Post '[JSON] UserRole

-- | Inserts a new user role.
--
-- /See:/ 'userRolesInsert' smart constructor.
data UserRolesInsert =
  UserRolesInsert'
    { _uriXgafv :: !(Maybe Xgafv)
    , _uriUploadProtocol :: !(Maybe Text)
    , _uriAccessToken :: !(Maybe Text)
    , _uriUploadType :: !(Maybe Text)
    , _uriProFileId :: !(Textual Int64)
    , _uriPayload :: !UserRole
    , _uriCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserRolesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uriXgafv'
--
-- * 'uriUploadProtocol'
--
-- * 'uriAccessToken'
--
-- * 'uriUploadType'
--
-- * 'uriProFileId'
--
-- * 'uriPayload'
--
-- * 'uriCallback'
userRolesInsert
    :: Int64 -- ^ 'uriProFileId'
    -> UserRole -- ^ 'uriPayload'
    -> UserRolesInsert
userRolesInsert pUriProFileId_ pUriPayload_ =
  UserRolesInsert'
    { _uriXgafv = Nothing
    , _uriUploadProtocol = Nothing
    , _uriAccessToken = Nothing
    , _uriUploadType = Nothing
    , _uriProFileId = _Coerce # pUriProFileId_
    , _uriPayload = pUriPayload_
    , _uriCallback = Nothing
    }


-- | V1 error format.
uriXgafv :: Lens' UserRolesInsert (Maybe Xgafv)
uriXgafv = lens _uriXgafv (\ s a -> s{_uriXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uriUploadProtocol :: Lens' UserRolesInsert (Maybe Text)
uriUploadProtocol
  = lens _uriUploadProtocol
      (\ s a -> s{_uriUploadProtocol = a})

-- | OAuth access token.
uriAccessToken :: Lens' UserRolesInsert (Maybe Text)
uriAccessToken
  = lens _uriAccessToken
      (\ s a -> s{_uriAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uriUploadType :: Lens' UserRolesInsert (Maybe Text)
uriUploadType
  = lens _uriUploadType
      (\ s a -> s{_uriUploadType = a})

-- | User profile ID associated with this request.
uriProFileId :: Lens' UserRolesInsert Int64
uriProFileId
  = lens _uriProFileId (\ s a -> s{_uriProFileId = a})
      . _Coerce

-- | Multipart request metadata.
uriPayload :: Lens' UserRolesInsert UserRole
uriPayload
  = lens _uriPayload (\ s a -> s{_uriPayload = a})

-- | JSONP
uriCallback :: Lens' UserRolesInsert (Maybe Text)
uriCallback
  = lens _uriCallback (\ s a -> s{_uriCallback = a})

instance GoogleRequest UserRolesInsert where
        type Rs UserRolesInsert = UserRole
        type Scopes UserRolesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolesInsert'{..}
          = go _uriProFileId _uriXgafv _uriUploadProtocol
              _uriAccessToken
              _uriUploadType
              _uriCallback
              (Just AltJSON)
              _uriPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserRolesInsertResource)
                      mempty
