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
-- Module      : Network.Google.Resource.Content.Accounts.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Merchant Center sub-account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.delete@.
module Network.Google.Resource.Content.Accounts.Delete
    (
    -- * REST Resource
      AccountsDeleteResource

    -- * Creating a Request
    , accountsDelete
    , AccountsDelete

    -- * Request Lenses
    , adXgafv
    , adMerchantId
    , adUploadProtocol
    , adForce
    , adAccessToken
    , adUploadType
    , adAccountId
    , adCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.delete@ method which the
-- 'AccountsDelete' request conforms to.
type AccountsDeleteResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounts" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "force" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a Merchant Center sub-account.
--
-- /See:/ 'accountsDelete' smart constructor.
data AccountsDelete =
  AccountsDelete'
    { _adXgafv :: !(Maybe Xgafv)
    , _adMerchantId :: !(Textual Word64)
    , _adUploadProtocol :: !(Maybe Text)
    , _adForce :: !Bool
    , _adAccessToken :: !(Maybe Text)
    , _adUploadType :: !(Maybe Text)
    , _adAccountId :: !(Textual Word64)
    , _adCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adXgafv'
--
-- * 'adMerchantId'
--
-- * 'adUploadProtocol'
--
-- * 'adForce'
--
-- * 'adAccessToken'
--
-- * 'adUploadType'
--
-- * 'adAccountId'
--
-- * 'adCallback'
accountsDelete
    :: Word64 -- ^ 'adMerchantId'
    -> Word64 -- ^ 'adAccountId'
    -> AccountsDelete
accountsDelete pAdMerchantId_ pAdAccountId_ =
  AccountsDelete'
    { _adXgafv = Nothing
    , _adMerchantId = _Coerce # pAdMerchantId_
    , _adUploadProtocol = Nothing
    , _adForce = False
    , _adAccessToken = Nothing
    , _adUploadType = Nothing
    , _adAccountId = _Coerce # pAdAccountId_
    , _adCallback = Nothing
    }


-- | V1 error format.
adXgafv :: Lens' AccountsDelete (Maybe Xgafv)
adXgafv = lens _adXgafv (\ s a -> s{_adXgafv = a})

-- | The ID of the managing account. This must be a multi-client account, and
-- accountId must be the ID of a sub-account of this account.
adMerchantId :: Lens' AccountsDelete Word64
adMerchantId
  = lens _adMerchantId (\ s a -> s{_adMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
adUploadProtocol :: Lens' AccountsDelete (Maybe Text)
adUploadProtocol
  = lens _adUploadProtocol
      (\ s a -> s{_adUploadProtocol = a})

-- | Flag to delete sub-accounts with products. The default value is false.
adForce :: Lens' AccountsDelete Bool
adForce = lens _adForce (\ s a -> s{_adForce = a})

-- | OAuth access token.
adAccessToken :: Lens' AccountsDelete (Maybe Text)
adAccessToken
  = lens _adAccessToken
      (\ s a -> s{_adAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
adUploadType :: Lens' AccountsDelete (Maybe Text)
adUploadType
  = lens _adUploadType (\ s a -> s{_adUploadType = a})

-- | The ID of the account.
adAccountId :: Lens' AccountsDelete Word64
adAccountId
  = lens _adAccountId (\ s a -> s{_adAccountId = a}) .
      _Coerce

-- | JSONP
adCallback :: Lens' AccountsDelete (Maybe Text)
adCallback
  = lens _adCallback (\ s a -> s{_adCallback = a})

instance GoogleRequest AccountsDelete where
        type Rs AccountsDelete = ()
        type Scopes AccountsDelete =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsDelete'{..}
          = go _adMerchantId _adAccountId _adXgafv
              _adUploadProtocol
              (Just _adForce)
              _adAccessToken
              _adUploadType
              _adCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsDeleteResource)
                      mempty
