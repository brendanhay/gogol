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
-- Module      : Network.Google.Resource.PlayCustomApp.Accounts.CustomApps.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new custom app.
--
-- /See:/ <https://developers.google.com/android/work/play/custom-app-api/ Google Play Custom App Publishing API Reference> for @playcustomapp.accounts.customApps.create@.
module Network.Google.Resource.PlayCustomApp.Accounts.CustomApps.Create
    (
    -- * REST Resource
      AccountsCustomAppsCreateResource

    -- * Creating a Request
    , accountsCustomAppsCreate
    , AccountsCustomAppsCreate

    -- * Request Lenses
    , acacXgafv
    , acacUploadProtocol
    , acacAccessToken
    , acacUploadType
    , acacPayload
    , acacAccount
    , acacCallback
    ) where

import Network.Google.PlayCustomApp.Types
import Network.Google.Prelude

-- | A resource alias for @playcustomapp.accounts.customApps.create@ method which the
-- 'AccountsCustomAppsCreate' request conforms to.
type AccountsCustomAppsCreateResource =
     "playcustomapp" :>
       "v1" :>
         "accounts" :>
           Capture "account" (Textual Int64) :>
             "customApps" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] CustomApp :> Post '[JSON] CustomApp
       :<|>
       "upload" :>
         "playcustomapp" :>
           "v1" :>
             "accounts" :>
               Capture "account" (Textual Int64) :>
                 "customApps" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               QueryParam "uploadType" Multipart :>
                                 MultipartRelated '[JSON] CustomApp :>
                                   Post '[JSON] CustomApp

-- | Creates a new custom app.
--
-- /See:/ 'accountsCustomAppsCreate' smart constructor.
data AccountsCustomAppsCreate =
  AccountsCustomAppsCreate'
    { _acacXgafv :: !(Maybe Xgafv)
    , _acacUploadProtocol :: !(Maybe Text)
    , _acacAccessToken :: !(Maybe Text)
    , _acacUploadType :: !(Maybe Text)
    , _acacPayload :: !CustomApp
    , _acacAccount :: !(Textual Int64)
    , _acacCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsCustomAppsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acacXgafv'
--
-- * 'acacUploadProtocol'
--
-- * 'acacAccessToken'
--
-- * 'acacUploadType'
--
-- * 'acacPayload'
--
-- * 'acacAccount'
--
-- * 'acacCallback'
accountsCustomAppsCreate
    :: CustomApp -- ^ 'acacPayload'
    -> Int64 -- ^ 'acacAccount'
    -> AccountsCustomAppsCreate
accountsCustomAppsCreate pAcacPayload_ pAcacAccount_ =
  AccountsCustomAppsCreate'
    { _acacXgafv = Nothing
    , _acacUploadProtocol = Nothing
    , _acacAccessToken = Nothing
    , _acacUploadType = Nothing
    , _acacPayload = pAcacPayload_
    , _acacAccount = _Coerce # pAcacAccount_
    , _acacCallback = Nothing
    }


-- | V1 error format.
acacXgafv :: Lens' AccountsCustomAppsCreate (Maybe Xgafv)
acacXgafv
  = lens _acacXgafv (\ s a -> s{_acacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acacUploadProtocol :: Lens' AccountsCustomAppsCreate (Maybe Text)
acacUploadProtocol
  = lens _acacUploadProtocol
      (\ s a -> s{_acacUploadProtocol = a})

-- | OAuth access token.
acacAccessToken :: Lens' AccountsCustomAppsCreate (Maybe Text)
acacAccessToken
  = lens _acacAccessToken
      (\ s a -> s{_acacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acacUploadType :: Lens' AccountsCustomAppsCreate (Maybe Text)
acacUploadType
  = lens _acacUploadType
      (\ s a -> s{_acacUploadType = a})

-- | Multipart request metadata.
acacPayload :: Lens' AccountsCustomAppsCreate CustomApp
acacPayload
  = lens _acacPayload (\ s a -> s{_acacPayload = a})

-- | Developer account ID.
acacAccount :: Lens' AccountsCustomAppsCreate Int64
acacAccount
  = lens _acacAccount (\ s a -> s{_acacAccount = a}) .
      _Coerce

-- | JSONP
acacCallback :: Lens' AccountsCustomAppsCreate (Maybe Text)
acacCallback
  = lens _acacCallback (\ s a -> s{_acacCallback = a})

instance GoogleRequest AccountsCustomAppsCreate where
        type Rs AccountsCustomAppsCreate = CustomApp
        type Scopes AccountsCustomAppsCreate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient AccountsCustomAppsCreate'{..}
          = go _acacAccount _acacXgafv _acacUploadProtocol
              _acacAccessToken
              _acacUploadType
              _acacCallback
              (Just AltJSON)
              _acacPayload
              playCustomAppService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy AccountsCustomAppsCreateResource)
                      mempty

instance GoogleRequest
           (MediaUpload AccountsCustomAppsCreate)
         where
        type Rs (MediaUpload AccountsCustomAppsCreate) =
             CustomApp
        type Scopes (MediaUpload AccountsCustomAppsCreate) =
             Scopes AccountsCustomAppsCreate
        requestClient
          (MediaUpload AccountsCustomAppsCreate'{..} body)
          = go _acacAccount _acacXgafv _acacUploadProtocol
              _acacAccessToken
              _acacUploadType
              _acacCallback
              (Just AltJSON)
              (Just Multipart)
              _acacPayload
              body
              playCustomAppService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy AccountsCustomAppsCreateResource)
                      mempty
