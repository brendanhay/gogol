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
-- Module      : Network.Google.Resource.Content.Accounts.Claimwebsite
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Claims the website of a Merchant Center sub-account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.claimwebsite@.
module Network.Google.Resource.Content.Accounts.Claimwebsite
    (
    -- * REST Resource
      AccountsClaimwebsiteResource

    -- * Creating a Request
    , accountsClaimwebsite
    , AccountsClaimwebsite

    -- * Request Lenses
    , a1Xgafv
    , a1MerchantId
    , a1UploadProtocol
    , a1AccessToken
    , a1UploadType
    , a1AccountId
    , a1Overwrite
    , a1Callback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.claimwebsite@ method which the
-- 'AccountsClaimwebsite' request conforms to.
type AccountsClaimwebsiteResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounts" :>
             Capture "accountId" (Textual Word64) :>
               "claimwebsite" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "overwrite" Bool :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Post '[JSON] AccountsClaimWebsiteResponse

-- | Claims the website of a Merchant Center sub-account.
--
-- /See:/ 'accountsClaimwebsite' smart constructor.
data AccountsClaimwebsite =
  AccountsClaimwebsite'
    { _a1Xgafv :: !(Maybe Xgafv)
    , _a1MerchantId :: !(Textual Word64)
    , _a1UploadProtocol :: !(Maybe Text)
    , _a1AccessToken :: !(Maybe Text)
    , _a1UploadType :: !(Maybe Text)
    , _a1AccountId :: !(Textual Word64)
    , _a1Overwrite :: !(Maybe Bool)
    , _a1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsClaimwebsite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'a1Xgafv'
--
-- * 'a1MerchantId'
--
-- * 'a1UploadProtocol'
--
-- * 'a1AccessToken'
--
-- * 'a1UploadType'
--
-- * 'a1AccountId'
--
-- * 'a1Overwrite'
--
-- * 'a1Callback'
accountsClaimwebsite
    :: Word64 -- ^ 'a1MerchantId'
    -> Word64 -- ^ 'a1AccountId'
    -> AccountsClaimwebsite
accountsClaimwebsite pA1MerchantId_ pA1AccountId_ =
  AccountsClaimwebsite'
    { _a1Xgafv = Nothing
    , _a1MerchantId = _Coerce # pA1MerchantId_
    , _a1UploadProtocol = Nothing
    , _a1AccessToken = Nothing
    , _a1UploadType = Nothing
    , _a1AccountId = _Coerce # pA1AccountId_
    , _a1Overwrite = Nothing
    , _a1Callback = Nothing
    }


-- | V1 error format.
a1Xgafv :: Lens' AccountsClaimwebsite (Maybe Xgafv)
a1Xgafv = lens _a1Xgafv (\ s a -> s{_a1Xgafv = a})

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- \`accountId\` must be the ID of a sub-account of this account.
a1MerchantId :: Lens' AccountsClaimwebsite Word64
a1MerchantId
  = lens _a1MerchantId (\ s a -> s{_a1MerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
a1UploadProtocol :: Lens' AccountsClaimwebsite (Maybe Text)
a1UploadProtocol
  = lens _a1UploadProtocol
      (\ s a -> s{_a1UploadProtocol = a})

-- | OAuth access token.
a1AccessToken :: Lens' AccountsClaimwebsite (Maybe Text)
a1AccessToken
  = lens _a1AccessToken
      (\ s a -> s{_a1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
a1UploadType :: Lens' AccountsClaimwebsite (Maybe Text)
a1UploadType
  = lens _a1UploadType (\ s a -> s{_a1UploadType = a})

-- | The ID of the account whose website is claimed.
a1AccountId :: Lens' AccountsClaimwebsite Word64
a1AccountId
  = lens _a1AccountId (\ s a -> s{_a1AccountId = a}) .
      _Coerce

-- | Only available to selected merchants. When set to \`True\`, this flag
-- removes any existing claim on the requested website by another account
-- and replaces it with a claim from this account.
a1Overwrite :: Lens' AccountsClaimwebsite (Maybe Bool)
a1Overwrite
  = lens _a1Overwrite (\ s a -> s{_a1Overwrite = a})

-- | JSONP
a1Callback :: Lens' AccountsClaimwebsite (Maybe Text)
a1Callback
  = lens _a1Callback (\ s a -> s{_a1Callback = a})

instance GoogleRequest AccountsClaimwebsite where
        type Rs AccountsClaimwebsite =
             AccountsClaimWebsiteResponse
        type Scopes AccountsClaimwebsite =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsClaimwebsite'{..}
          = go _a1MerchantId _a1AccountId _a1Xgafv
              _a1UploadProtocol
              _a1AccessToken
              _a1UploadType
              _a1Overwrite
              _a1Callback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsClaimwebsiteResource)
                      mempty
