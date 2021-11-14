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
-- Module      : Network.Google.Resource.DFAReporting.Accounts.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing account.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.accounts.update@.
module Network.Google.Resource.DFAReporting.Accounts.Update
    (
    -- * REST Resource
      AccountsUpdateResource

    -- * Creating a Request
    , accountsUpdate
    , AccountsUpdate

    -- * Request Lenses
    , auuXgafv
    , auuUploadProtocol
    , auuAccessToken
    , auuUploadType
    , auuProFileId
    , auuPayload
    , auuCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.accounts.update@ method which the
-- 'AccountsUpdate' request conforms to.
type AccountsUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accounts" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Account :> Put '[JSON] Account

-- | Updates an existing account.
--
-- /See:/ 'accountsUpdate' smart constructor.
data AccountsUpdate =
  AccountsUpdate'
    { _auuXgafv :: !(Maybe Xgafv)
    , _auuUploadProtocol :: !(Maybe Text)
    , _auuAccessToken :: !(Maybe Text)
    , _auuUploadType :: !(Maybe Text)
    , _auuProFileId :: !(Textual Int64)
    , _auuPayload :: !Account
    , _auuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auuXgafv'
--
-- * 'auuUploadProtocol'
--
-- * 'auuAccessToken'
--
-- * 'auuUploadType'
--
-- * 'auuProFileId'
--
-- * 'auuPayload'
--
-- * 'auuCallback'
accountsUpdate
    :: Int64 -- ^ 'auuProFileId'
    -> Account -- ^ 'auuPayload'
    -> AccountsUpdate
accountsUpdate pAuuProFileId_ pAuuPayload_ =
  AccountsUpdate'
    { _auuXgafv = Nothing
    , _auuUploadProtocol = Nothing
    , _auuAccessToken = Nothing
    , _auuUploadType = Nothing
    , _auuProFileId = _Coerce # pAuuProFileId_
    , _auuPayload = pAuuPayload_
    , _auuCallback = Nothing
    }


-- | V1 error format.
auuXgafv :: Lens' AccountsUpdate (Maybe Xgafv)
auuXgafv = lens _auuXgafv (\ s a -> s{_auuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
auuUploadProtocol :: Lens' AccountsUpdate (Maybe Text)
auuUploadProtocol
  = lens _auuUploadProtocol
      (\ s a -> s{_auuUploadProtocol = a})

-- | OAuth access token.
auuAccessToken :: Lens' AccountsUpdate (Maybe Text)
auuAccessToken
  = lens _auuAccessToken
      (\ s a -> s{_auuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
auuUploadType :: Lens' AccountsUpdate (Maybe Text)
auuUploadType
  = lens _auuUploadType
      (\ s a -> s{_auuUploadType = a})

-- | User profile ID associated with this request.
auuProFileId :: Lens' AccountsUpdate Int64
auuProFileId
  = lens _auuProFileId (\ s a -> s{_auuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
auuPayload :: Lens' AccountsUpdate Account
auuPayload
  = lens _auuPayload (\ s a -> s{_auuPayload = a})

-- | JSONP
auuCallback :: Lens' AccountsUpdate (Maybe Text)
auuCallback
  = lens _auuCallback (\ s a -> s{_auuCallback = a})

instance GoogleRequest AccountsUpdate where
        type Rs AccountsUpdate = Account
        type Scopes AccountsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountsUpdate'{..}
          = go _auuProFileId _auuXgafv _auuUploadProtocol
              _auuAccessToken
              _auuUploadType
              _auuCallback
              (Just AltJSON)
              _auuPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AccountsUpdateResource)
                      mempty
