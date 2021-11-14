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
-- Module      : Network.Google.Resource.Content.Accounts.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Merchant Center sub-account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.insert@.
module Network.Google.Resource.Content.Accounts.Insert
    (
    -- * REST Resource
      AccountsInsertResource

    -- * Creating a Request
    , accountsInsert
    , AccountsInsert

    -- * Request Lenses
    , aXgafv
    , aMerchantId
    , aUploadProtocol
    , aAccessToken
    , aUploadType
    , aPayload
    , aCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.insert@ method which the
-- 'AccountsInsert' request conforms to.
type AccountsInsertResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounts" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Account :> Post '[JSON] Account

-- | Creates a Merchant Center sub-account.
--
-- /See:/ 'accountsInsert' smart constructor.
data AccountsInsert =
  AccountsInsert'
    { _aXgafv :: !(Maybe Xgafv)
    , _aMerchantId :: !(Textual Word64)
    , _aUploadProtocol :: !(Maybe Text)
    , _aAccessToken :: !(Maybe Text)
    , _aUploadType :: !(Maybe Text)
    , _aPayload :: !Account
    , _aCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aXgafv'
--
-- * 'aMerchantId'
--
-- * 'aUploadProtocol'
--
-- * 'aAccessToken'
--
-- * 'aUploadType'
--
-- * 'aPayload'
--
-- * 'aCallback'
accountsInsert
    :: Word64 -- ^ 'aMerchantId'
    -> Account -- ^ 'aPayload'
    -> AccountsInsert
accountsInsert pAMerchantId_ pAPayload_ =
  AccountsInsert'
    { _aXgafv = Nothing
    , _aMerchantId = _Coerce # pAMerchantId_
    , _aUploadProtocol = Nothing
    , _aAccessToken = Nothing
    , _aUploadType = Nothing
    , _aPayload = pAPayload_
    , _aCallback = Nothing
    }


-- | V1 error format.
aXgafv :: Lens' AccountsInsert (Maybe Xgafv)
aXgafv = lens _aXgafv (\ s a -> s{_aXgafv = a})

-- | The ID of the managing account. This must be a multi-client account.
aMerchantId :: Lens' AccountsInsert Word64
aMerchantId
  = lens _aMerchantId (\ s a -> s{_aMerchantId = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aUploadProtocol :: Lens' AccountsInsert (Maybe Text)
aUploadProtocol
  = lens _aUploadProtocol
      (\ s a -> s{_aUploadProtocol = a})

-- | OAuth access token.
aAccessToken :: Lens' AccountsInsert (Maybe Text)
aAccessToken
  = lens _aAccessToken (\ s a -> s{_aAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aUploadType :: Lens' AccountsInsert (Maybe Text)
aUploadType
  = lens _aUploadType (\ s a -> s{_aUploadType = a})

-- | Multipart request metadata.
aPayload :: Lens' AccountsInsert Account
aPayload = lens _aPayload (\ s a -> s{_aPayload = a})

-- | JSONP
aCallback :: Lens' AccountsInsert (Maybe Text)
aCallback
  = lens _aCallback (\ s a -> s{_aCallback = a})

instance GoogleRequest AccountsInsert where
        type Rs AccountsInsert = Account
        type Scopes AccountsInsert =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsInsert'{..}
          = go _aMerchantId _aXgafv _aUploadProtocol
              _aAccessToken
              _aUploadType
              _aCallback
              (Just AltJSON)
              _aPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsInsertResource)
                      mempty
