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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new EMM-managed user. The Users resource passed in the body of
-- the request should include an accountIdentifier and an accountType. If a
-- corresponding user already exists with the same account identifier, the
-- user will be updated with the resource. In this case only the
-- displayName field can be changed.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.insert@.
module Network.Google.Resource.AndroidEnterprise.Users.Insert
    (
    -- * REST Resource
      UsersInsertResource

    -- * Creating a Request
    , usersInsert
    , UsersInsert

    -- * Request Lenses
    , uiXgafv
    , uiUploadProtocol
    , uiEnterpriseId
    , uiAccessToken
    , uiUploadType
    , uiPayload
    , uiCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.users.insert@ method which the
-- 'UsersInsert' request conforms to.
type UsersInsertResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] User :> Post '[JSON] User

-- | Creates a new EMM-managed user. The Users resource passed in the body of
-- the request should include an accountIdentifier and an accountType. If a
-- corresponding user already exists with the same account identifier, the
-- user will be updated with the resource. In this case only the
-- displayName field can be changed.
--
-- /See:/ 'usersInsert' smart constructor.
data UsersInsert =
  UsersInsert'
    { _uiXgafv :: !(Maybe Xgafv)
    , _uiUploadProtocol :: !(Maybe Text)
    , _uiEnterpriseId :: !Text
    , _uiAccessToken :: !(Maybe Text)
    , _uiUploadType :: !(Maybe Text)
    , _uiPayload :: !User
    , _uiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiXgafv'
--
-- * 'uiUploadProtocol'
--
-- * 'uiEnterpriseId'
--
-- * 'uiAccessToken'
--
-- * 'uiUploadType'
--
-- * 'uiPayload'
--
-- * 'uiCallback'
usersInsert
    :: Text -- ^ 'uiEnterpriseId'
    -> User -- ^ 'uiPayload'
    -> UsersInsert
usersInsert pUiEnterpriseId_ pUiPayload_ =
  UsersInsert'
    { _uiXgafv = Nothing
    , _uiUploadProtocol = Nothing
    , _uiEnterpriseId = pUiEnterpriseId_
    , _uiAccessToken = Nothing
    , _uiUploadType = Nothing
    , _uiPayload = pUiPayload_
    , _uiCallback = Nothing
    }


-- | V1 error format.
uiXgafv :: Lens' UsersInsert (Maybe Xgafv)
uiXgafv = lens _uiXgafv (\ s a -> s{_uiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uiUploadProtocol :: Lens' UsersInsert (Maybe Text)
uiUploadProtocol
  = lens _uiUploadProtocol
      (\ s a -> s{_uiUploadProtocol = a})

-- | The ID of the enterprise.
uiEnterpriseId :: Lens' UsersInsert Text
uiEnterpriseId
  = lens _uiEnterpriseId
      (\ s a -> s{_uiEnterpriseId = a})

-- | OAuth access token.
uiAccessToken :: Lens' UsersInsert (Maybe Text)
uiAccessToken
  = lens _uiAccessToken
      (\ s a -> s{_uiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uiUploadType :: Lens' UsersInsert (Maybe Text)
uiUploadType
  = lens _uiUploadType (\ s a -> s{_uiUploadType = a})

-- | Multipart request metadata.
uiPayload :: Lens' UsersInsert User
uiPayload
  = lens _uiPayload (\ s a -> s{_uiPayload = a})

-- | JSONP
uiCallback :: Lens' UsersInsert (Maybe Text)
uiCallback
  = lens _uiCallback (\ s a -> s{_uiCallback = a})

instance GoogleRequest UsersInsert where
        type Rs UsersInsert = User
        type Scopes UsersInsert =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient UsersInsert'{..}
          = go _uiEnterpriseId _uiXgafv _uiUploadProtocol
              _uiAccessToken
              _uiUploadType
              _uiCallback
              (Just AltJSON)
              _uiPayload
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy UsersInsertResource)
                      mempty
