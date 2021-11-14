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
-- Module      : Network.Google.Resource.TagManager.Accounts.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Account.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.update@.
module Network.Google.Resource.TagManager.Accounts.Update
    (
    -- * REST Resource
      AccountsUpdateResource

    -- * Creating a Request
    , accountsUpdate
    , AccountsUpdate

    -- * Request Lenses
    , auXgafv
    , auUploadProtocol
    , auPath
    , auFingerprint
    , auAccessToken
    , auUploadType
    , auPayload
    , auCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.update@ method which the
-- 'AccountsUpdate' request conforms to.
type AccountsUpdateResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "fingerprint" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Account :> Put '[JSON] Account

-- | Updates a GTM Account.
--
-- /See:/ 'accountsUpdate' smart constructor.
data AccountsUpdate =
  AccountsUpdate'
    { _auXgafv :: !(Maybe Xgafv)
    , _auUploadProtocol :: !(Maybe Text)
    , _auPath :: !Text
    , _auFingerprint :: !(Maybe Text)
    , _auAccessToken :: !(Maybe Text)
    , _auUploadType :: !(Maybe Text)
    , _auPayload :: !Account
    , _auCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auXgafv'
--
-- * 'auUploadProtocol'
--
-- * 'auPath'
--
-- * 'auFingerprint'
--
-- * 'auAccessToken'
--
-- * 'auUploadType'
--
-- * 'auPayload'
--
-- * 'auCallback'
accountsUpdate
    :: Text -- ^ 'auPath'
    -> Account -- ^ 'auPayload'
    -> AccountsUpdate
accountsUpdate pAuPath_ pAuPayload_ =
  AccountsUpdate'
    { _auXgafv = Nothing
    , _auUploadProtocol = Nothing
    , _auPath = pAuPath_
    , _auFingerprint = Nothing
    , _auAccessToken = Nothing
    , _auUploadType = Nothing
    , _auPayload = pAuPayload_
    , _auCallback = Nothing
    }


-- | V1 error format.
auXgafv :: Lens' AccountsUpdate (Maybe Xgafv)
auXgafv = lens _auXgafv (\ s a -> s{_auXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
auUploadProtocol :: Lens' AccountsUpdate (Maybe Text)
auUploadProtocol
  = lens _auUploadProtocol
      (\ s a -> s{_auUploadProtocol = a})

-- | GTM Accounts\'s API relative path. Example: accounts\/{account_id}
auPath :: Lens' AccountsUpdate Text
auPath = lens _auPath (\ s a -> s{_auPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- account in storage.
auFingerprint :: Lens' AccountsUpdate (Maybe Text)
auFingerprint
  = lens _auFingerprint
      (\ s a -> s{_auFingerprint = a})

-- | OAuth access token.
auAccessToken :: Lens' AccountsUpdate (Maybe Text)
auAccessToken
  = lens _auAccessToken
      (\ s a -> s{_auAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
auUploadType :: Lens' AccountsUpdate (Maybe Text)
auUploadType
  = lens _auUploadType (\ s a -> s{_auUploadType = a})

-- | Multipart request metadata.
auPayload :: Lens' AccountsUpdate Account
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | JSONP
auCallback :: Lens' AccountsUpdate (Maybe Text)
auCallback
  = lens _auCallback (\ s a -> s{_auCallback = a})

instance GoogleRequest AccountsUpdate where
        type Rs AccountsUpdate = Account
        type Scopes AccountsUpdate =
             '["https://www.googleapis.com/auth/tagmanager.manage.accounts"]
        requestClient AccountsUpdate'{..}
          = go _auPath _auXgafv _auUploadProtocol
              _auFingerprint
              _auAccessToken
              _auUploadType
              _auCallback
              (Just AltJSON)
              _auPayload
              tagManagerService
          where go
                  = buildClient (Proxy :: Proxy AccountsUpdateResource)
                      mempty
