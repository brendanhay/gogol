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
-- Module      : Network.Google.Resource.DFAReporting.Accounts.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.accounts.patch@.
module Network.Google.Resource.DFAReporting.Accounts.Patch
    (
    -- * REST Resource
      AccountsPatchResource

    -- * Creating a Request
    , accountsPatch
    , AccountsPatch

    -- * Request Lenses
    , appXgafv
    , appUploadProtocol
    , appAccessToken
    , appUploadType
    , appProFileId
    , appPayload
    , appId
    , appCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.accounts.patch@ method which the
-- 'AccountsPatch' request conforms to.
type AccountsPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accounts" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Account :> Patch '[JSON] Account

-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ 'accountsPatch' smart constructor.
data AccountsPatch =
  AccountsPatch'
    { _appXgafv :: !(Maybe Xgafv)
    , _appUploadProtocol :: !(Maybe Text)
    , _appAccessToken :: !(Maybe Text)
    , _appUploadType :: !(Maybe Text)
    , _appProFileId :: !(Textual Int64)
    , _appPayload :: !Account
    , _appId :: !(Textual Int64)
    , _appCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'appXgafv'
--
-- * 'appUploadProtocol'
--
-- * 'appAccessToken'
--
-- * 'appUploadType'
--
-- * 'appProFileId'
--
-- * 'appPayload'
--
-- * 'appId'
--
-- * 'appCallback'
accountsPatch
    :: Int64 -- ^ 'appProFileId'
    -> Account -- ^ 'appPayload'
    -> Int64 -- ^ 'appId'
    -> AccountsPatch
accountsPatch pAppProFileId_ pAppPayload_ pAppId_ =
  AccountsPatch'
    { _appXgafv = Nothing
    , _appUploadProtocol = Nothing
    , _appAccessToken = Nothing
    , _appUploadType = Nothing
    , _appProFileId = _Coerce # pAppProFileId_
    , _appPayload = pAppPayload_
    , _appId = _Coerce # pAppId_
    , _appCallback = Nothing
    }


-- | V1 error format.
appXgafv :: Lens' AccountsPatch (Maybe Xgafv)
appXgafv = lens _appXgafv (\ s a -> s{_appXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
appUploadProtocol :: Lens' AccountsPatch (Maybe Text)
appUploadProtocol
  = lens _appUploadProtocol
      (\ s a -> s{_appUploadProtocol = a})

-- | OAuth access token.
appAccessToken :: Lens' AccountsPatch (Maybe Text)
appAccessToken
  = lens _appAccessToken
      (\ s a -> s{_appAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
appUploadType :: Lens' AccountsPatch (Maybe Text)
appUploadType
  = lens _appUploadType
      (\ s a -> s{_appUploadType = a})

-- | User profile ID associated with this request.
appProFileId :: Lens' AccountsPatch Int64
appProFileId
  = lens _appProFileId (\ s a -> s{_appProFileId = a})
      . _Coerce

-- | Multipart request metadata.
appPayload :: Lens' AccountsPatch Account
appPayload
  = lens _appPayload (\ s a -> s{_appPayload = a})

-- | Account ID.
appId :: Lens' AccountsPatch Int64
appId
  = lens _appId (\ s a -> s{_appId = a}) . _Coerce

-- | JSONP
appCallback :: Lens' AccountsPatch (Maybe Text)
appCallback
  = lens _appCallback (\ s a -> s{_appCallback = a})

instance GoogleRequest AccountsPatch where
        type Rs AccountsPatch = Account
        type Scopes AccountsPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountsPatch'{..}
          = go _appProFileId (Just _appId) _appXgafv
              _appUploadProtocol
              _appAccessToken
              _appUploadType
              _appCallback
              (Just AltJSON)
              _appPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AccountsPatchResource)
                      mempty
