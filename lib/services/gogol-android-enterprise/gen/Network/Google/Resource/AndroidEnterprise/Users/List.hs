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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up a user by primary email address. This is only supported for
-- Google-managed users. Lookup of the id is not needed for EMM-managed
-- users because the id is already returned in the result of the
-- Users.insert call.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.list@.
module Network.Google.Resource.AndroidEnterprise.Users.List
    (
    -- * REST Resource
      UsersListResource

    -- * Creating a Request
    , usersList
    , UsersList

    -- * Request Lenses
    , ulEmail
    , ulXgafv
    , ulUploadProtocol
    , ulEnterpriseId
    , ulAccessToken
    , ulUploadType
    , ulCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.users.list@ method which the
-- 'UsersList' request conforms to.
type UsersListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               QueryParam "email" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] UsersListResponse

-- | Looks up a user by primary email address. This is only supported for
-- Google-managed users. Lookup of the id is not needed for EMM-managed
-- users because the id is already returned in the result of the
-- Users.insert call.
--
-- /See:/ 'usersList' smart constructor.
data UsersList =
  UsersList'
    { _ulEmail :: !Text
    , _ulXgafv :: !(Maybe Xgafv)
    , _ulUploadProtocol :: !(Maybe Text)
    , _ulEnterpriseId :: !Text
    , _ulAccessToken :: !(Maybe Text)
    , _ulUploadType :: !(Maybe Text)
    , _ulCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulEmail'
--
-- * 'ulXgafv'
--
-- * 'ulUploadProtocol'
--
-- * 'ulEnterpriseId'
--
-- * 'ulAccessToken'
--
-- * 'ulUploadType'
--
-- * 'ulCallback'
usersList
    :: Text -- ^ 'ulEmail'
    -> Text -- ^ 'ulEnterpriseId'
    -> UsersList
usersList pUlEmail_ pUlEnterpriseId_ =
  UsersList'
    { _ulEmail = pUlEmail_
    , _ulXgafv = Nothing
    , _ulUploadProtocol = Nothing
    , _ulEnterpriseId = pUlEnterpriseId_
    , _ulAccessToken = Nothing
    , _ulUploadType = Nothing
    , _ulCallback = Nothing
    }


-- | Required. The exact primary email address of the user to look up.
ulEmail :: Lens' UsersList Text
ulEmail = lens _ulEmail (\ s a -> s{_ulEmail = a})

-- | V1 error format.
ulXgafv :: Lens' UsersList (Maybe Xgafv)
ulXgafv = lens _ulXgafv (\ s a -> s{_ulXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ulUploadProtocol :: Lens' UsersList (Maybe Text)
ulUploadProtocol
  = lens _ulUploadProtocol
      (\ s a -> s{_ulUploadProtocol = a})

-- | The ID of the enterprise.
ulEnterpriseId :: Lens' UsersList Text
ulEnterpriseId
  = lens _ulEnterpriseId
      (\ s a -> s{_ulEnterpriseId = a})

-- | OAuth access token.
ulAccessToken :: Lens' UsersList (Maybe Text)
ulAccessToken
  = lens _ulAccessToken
      (\ s a -> s{_ulAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ulUploadType :: Lens' UsersList (Maybe Text)
ulUploadType
  = lens _ulUploadType (\ s a -> s{_ulUploadType = a})

-- | JSONP
ulCallback :: Lens' UsersList (Maybe Text)
ulCallback
  = lens _ulCallback (\ s a -> s{_ulCallback = a})

instance GoogleRequest UsersList where
        type Rs UsersList = UsersListResponse
        type Scopes UsersList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient UsersList'{..}
          = go _ulEnterpriseId (Just _ulEmail) _ulXgafv
              _ulUploadProtocol
              _ulAccessToken
              _ulUploadType
              _ulCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy UsersListResource)
                      mempty
