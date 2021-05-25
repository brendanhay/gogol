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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing user role. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.userRoles.patch@.
module Network.Google.Resource.DFAReporting.UserRoles.Patch
    (
    -- * REST Resource
      UserRolesPatchResource

    -- * Creating a Request
    , userRolesPatch
    , UserRolesPatch

    -- * Request Lenses
    , urpXgafv
    , urpUploadProtocol
    , urpAccessToken
    , urpUploadType
    , urpProFileId
    , urpPayload
    , urpId
    , urpCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.userRoles.patch@ method which the
-- 'UserRolesPatch' request conforms to.
type UserRolesPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRoles" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] UserRole :> Patch '[JSON] UserRole

-- | Updates an existing user role. This method supports patch semantics.
--
-- /See:/ 'userRolesPatch' smart constructor.
data UserRolesPatch =
  UserRolesPatch'
    { _urpXgafv :: !(Maybe Xgafv)
    , _urpUploadProtocol :: !(Maybe Text)
    , _urpAccessToken :: !(Maybe Text)
    , _urpUploadType :: !(Maybe Text)
    , _urpProFileId :: !(Textual Int64)
    , _urpPayload :: !UserRole
    , _urpId :: !(Textual Int64)
    , _urpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserRolesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpXgafv'
--
-- * 'urpUploadProtocol'
--
-- * 'urpAccessToken'
--
-- * 'urpUploadType'
--
-- * 'urpProFileId'
--
-- * 'urpPayload'
--
-- * 'urpId'
--
-- * 'urpCallback'
userRolesPatch
    :: Int64 -- ^ 'urpProFileId'
    -> UserRole -- ^ 'urpPayload'
    -> Int64 -- ^ 'urpId'
    -> UserRolesPatch
userRolesPatch pUrpProFileId_ pUrpPayload_ pUrpId_ =
  UserRolesPatch'
    { _urpXgafv = Nothing
    , _urpUploadProtocol = Nothing
    , _urpAccessToken = Nothing
    , _urpUploadType = Nothing
    , _urpProFileId = _Coerce # pUrpProFileId_
    , _urpPayload = pUrpPayload_
    , _urpId = _Coerce # pUrpId_
    , _urpCallback = Nothing
    }


-- | V1 error format.
urpXgafv :: Lens' UserRolesPatch (Maybe Xgafv)
urpXgafv = lens _urpXgafv (\ s a -> s{_urpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
urpUploadProtocol :: Lens' UserRolesPatch (Maybe Text)
urpUploadProtocol
  = lens _urpUploadProtocol
      (\ s a -> s{_urpUploadProtocol = a})

-- | OAuth access token.
urpAccessToken :: Lens' UserRolesPatch (Maybe Text)
urpAccessToken
  = lens _urpAccessToken
      (\ s a -> s{_urpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
urpUploadType :: Lens' UserRolesPatch (Maybe Text)
urpUploadType
  = lens _urpUploadType
      (\ s a -> s{_urpUploadType = a})

-- | User profile ID associated with this request.
urpProFileId :: Lens' UserRolesPatch Int64
urpProFileId
  = lens _urpProFileId (\ s a -> s{_urpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
urpPayload :: Lens' UserRolesPatch UserRole
urpPayload
  = lens _urpPayload (\ s a -> s{_urpPayload = a})

-- | UserRole ID.
urpId :: Lens' UserRolesPatch Int64
urpId
  = lens _urpId (\ s a -> s{_urpId = a}) . _Coerce

-- | JSONP
urpCallback :: Lens' UserRolesPatch (Maybe Text)
urpCallback
  = lens _urpCallback (\ s a -> s{_urpCallback = a})

instance GoogleRequest UserRolesPatch where
        type Rs UserRolesPatch = UserRole
        type Scopes UserRolesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolesPatch'{..}
          = go _urpProFileId (Just _urpId) _urpXgafv
              _urpUploadProtocol
              _urpAccessToken
              _urpUploadType
              _urpCallback
              (Just AltJSON)
              _urpPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy UserRolesPatchResource)
                      mempty
