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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.GenerateAuthenticationToken
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates an authentication token which the device policy client can use
-- to provision the given EMM-managed user account on a device. The
-- generated token is single-use and expires after a few minutes. You can
-- provision a maximum of 10 devices per user. This call only works with
-- EMM-managed accounts.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.generateAuthenticationToken@.
module Network.Google.Resource.AndroidEnterprise.Users.GenerateAuthenticationToken
    (
    -- * REST Resource
      UsersGenerateAuthenticationTokenResource

    -- * Creating a Request
    , usersGenerateAuthenticationToken
    , UsersGenerateAuthenticationToken

    -- * Request Lenses
    , ugatXgafv
    , ugatUploadProtocol
    , ugatEnterpriseId
    , ugatAccessToken
    , ugatUploadType
    , ugatUserId
    , ugatCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.users.generateAuthenticationToken@ method which the
-- 'UsersGenerateAuthenticationToken' request conforms to.
type UsersGenerateAuthenticationTokenResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "authenticationToken" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Post '[JSON] AuthenticationToken

-- | Generates an authentication token which the device policy client can use
-- to provision the given EMM-managed user account on a device. The
-- generated token is single-use and expires after a few minutes. You can
-- provision a maximum of 10 devices per user. This call only works with
-- EMM-managed accounts.
--
-- /See:/ 'usersGenerateAuthenticationToken' smart constructor.
data UsersGenerateAuthenticationToken =
  UsersGenerateAuthenticationToken'
    { _ugatXgafv :: !(Maybe Xgafv)
    , _ugatUploadProtocol :: !(Maybe Text)
    , _ugatEnterpriseId :: !Text
    , _ugatAccessToken :: !(Maybe Text)
    , _ugatUploadType :: !(Maybe Text)
    , _ugatUserId :: !Text
    , _ugatCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersGenerateAuthenticationToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugatXgafv'
--
-- * 'ugatUploadProtocol'
--
-- * 'ugatEnterpriseId'
--
-- * 'ugatAccessToken'
--
-- * 'ugatUploadType'
--
-- * 'ugatUserId'
--
-- * 'ugatCallback'
usersGenerateAuthenticationToken
    :: Text -- ^ 'ugatEnterpriseId'
    -> Text -- ^ 'ugatUserId'
    -> UsersGenerateAuthenticationToken
usersGenerateAuthenticationToken pUgatEnterpriseId_ pUgatUserId_ =
  UsersGenerateAuthenticationToken'
    { _ugatXgafv = Nothing
    , _ugatUploadProtocol = Nothing
    , _ugatEnterpriseId = pUgatEnterpriseId_
    , _ugatAccessToken = Nothing
    , _ugatUploadType = Nothing
    , _ugatUserId = pUgatUserId_
    , _ugatCallback = Nothing
    }


-- | V1 error format.
ugatXgafv :: Lens' UsersGenerateAuthenticationToken (Maybe Xgafv)
ugatXgafv
  = lens _ugatXgafv (\ s a -> s{_ugatXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ugatUploadProtocol :: Lens' UsersGenerateAuthenticationToken (Maybe Text)
ugatUploadProtocol
  = lens _ugatUploadProtocol
      (\ s a -> s{_ugatUploadProtocol = a})

-- | The ID of the enterprise.
ugatEnterpriseId :: Lens' UsersGenerateAuthenticationToken Text
ugatEnterpriseId
  = lens _ugatEnterpriseId
      (\ s a -> s{_ugatEnterpriseId = a})

-- | OAuth access token.
ugatAccessToken :: Lens' UsersGenerateAuthenticationToken (Maybe Text)
ugatAccessToken
  = lens _ugatAccessToken
      (\ s a -> s{_ugatAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ugatUploadType :: Lens' UsersGenerateAuthenticationToken (Maybe Text)
ugatUploadType
  = lens _ugatUploadType
      (\ s a -> s{_ugatUploadType = a})

-- | The ID of the user.
ugatUserId :: Lens' UsersGenerateAuthenticationToken Text
ugatUserId
  = lens _ugatUserId (\ s a -> s{_ugatUserId = a})

-- | JSONP
ugatCallback :: Lens' UsersGenerateAuthenticationToken (Maybe Text)
ugatCallback
  = lens _ugatCallback (\ s a -> s{_ugatCallback = a})

instance GoogleRequest
           UsersGenerateAuthenticationToken
         where
        type Rs UsersGenerateAuthenticationToken =
             AuthenticationToken
        type Scopes UsersGenerateAuthenticationToken =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient UsersGenerateAuthenticationToken'{..}
          = go _ugatEnterpriseId _ugatUserId _ugatXgafv
              _ugatUploadProtocol
              _ugatAccessToken
              _ugatUploadType
              _ugatCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersGenerateAuthenticationTokenResource)
                      mempty
