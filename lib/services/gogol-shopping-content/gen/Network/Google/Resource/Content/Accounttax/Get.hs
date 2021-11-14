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
-- Module      : Network.Google.Resource.Content.Accounttax.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the tax settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounttax.get@.
module Network.Google.Resource.Content.Accounttax.Get
    (
    -- * REST Resource
      AccounttaxGetResource

    -- * Creating a Request
    , accounttaxGet
    , AccounttaxGet

    -- * Request Lenses
    , aggXgafv
    , aggMerchantId
    , aggUploadProtocol
    , aggAccessToken
    , aggUploadType
    , aggAccountId
    , aggCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounttax.get@ method which the
-- 'AccounttaxGet' request conforms to.
type AccounttaxGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounttax" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] AccountTax

-- | Retrieves the tax settings of the account.
--
-- /See:/ 'accounttaxGet' smart constructor.
data AccounttaxGet =
  AccounttaxGet'
    { _aggXgafv :: !(Maybe Xgafv)
    , _aggMerchantId :: !(Textual Word64)
    , _aggUploadProtocol :: !(Maybe Text)
    , _aggAccessToken :: !(Maybe Text)
    , _aggUploadType :: !(Maybe Text)
    , _aggAccountId :: !(Textual Word64)
    , _aggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccounttaxGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aggXgafv'
--
-- * 'aggMerchantId'
--
-- * 'aggUploadProtocol'
--
-- * 'aggAccessToken'
--
-- * 'aggUploadType'
--
-- * 'aggAccountId'
--
-- * 'aggCallback'
accounttaxGet
    :: Word64 -- ^ 'aggMerchantId'
    -> Word64 -- ^ 'aggAccountId'
    -> AccounttaxGet
accounttaxGet pAggMerchantId_ pAggAccountId_ =
  AccounttaxGet'
    { _aggXgafv = Nothing
    , _aggMerchantId = _Coerce # pAggMerchantId_
    , _aggUploadProtocol = Nothing
    , _aggAccessToken = Nothing
    , _aggUploadType = Nothing
    , _aggAccountId = _Coerce # pAggAccountId_
    , _aggCallback = Nothing
    }


-- | V1 error format.
aggXgafv :: Lens' AccounttaxGet (Maybe Xgafv)
aggXgafv = lens _aggXgafv (\ s a -> s{_aggXgafv = a})

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- \`accountId\` must be the ID of a sub-account of this account.
aggMerchantId :: Lens' AccounttaxGet Word64
aggMerchantId
  = lens _aggMerchantId
      (\ s a -> s{_aggMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aggUploadProtocol :: Lens' AccounttaxGet (Maybe Text)
aggUploadProtocol
  = lens _aggUploadProtocol
      (\ s a -> s{_aggUploadProtocol = a})

-- | OAuth access token.
aggAccessToken :: Lens' AccounttaxGet (Maybe Text)
aggAccessToken
  = lens _aggAccessToken
      (\ s a -> s{_aggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aggUploadType :: Lens' AccounttaxGet (Maybe Text)
aggUploadType
  = lens _aggUploadType
      (\ s a -> s{_aggUploadType = a})

-- | The ID of the account for which to get\/update account tax settings.
aggAccountId :: Lens' AccounttaxGet Word64
aggAccountId
  = lens _aggAccountId (\ s a -> s{_aggAccountId = a})
      . _Coerce

-- | JSONP
aggCallback :: Lens' AccounttaxGet (Maybe Text)
aggCallback
  = lens _aggCallback (\ s a -> s{_aggCallback = a})

instance GoogleRequest AccounttaxGet where
        type Rs AccounttaxGet = AccountTax
        type Scopes AccounttaxGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccounttaxGet'{..}
          = go _aggMerchantId _aggAccountId _aggXgafv
              _aggUploadProtocol
              _aggAccessToken
              _aggUploadType
              _aggCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccounttaxGetResource)
                      mempty
