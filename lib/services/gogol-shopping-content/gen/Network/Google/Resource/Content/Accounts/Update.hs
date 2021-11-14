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
-- Module      : Network.Google.Resource.Content.Accounts.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Merchant Center account. Any fields that are not provided are
-- deleted from the resource.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.update@.
module Network.Google.Resource.Content.Accounts.Update
    (
    -- * REST Resource
      AccountsUpdateResource

    -- * Creating a Request
    , accountsUpdate
    , AccountsUpdate

    -- * Request Lenses
    , auuXgafv
    , auuMerchantId
    , auuUploadProtocol
    , auuAccessToken
    , auuUploadType
    , auuPayload
    , auuAccountId
    , auuCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.update@ method which the
-- 'AccountsUpdate' request conforms to.
type AccountsUpdateResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounts" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Account :> Put '[JSON] Account

-- | Updates a Merchant Center account. Any fields that are not provided are
-- deleted from the resource.
--
-- /See:/ 'accountsUpdate' smart constructor.
data AccountsUpdate =
  AccountsUpdate'
    { _auuXgafv :: !(Maybe Xgafv)
    , _auuMerchantId :: !(Textual Word64)
    , _auuUploadProtocol :: !(Maybe Text)
    , _auuAccessToken :: !(Maybe Text)
    , _auuUploadType :: !(Maybe Text)
    , _auuPayload :: !Account
    , _auuAccountId :: !(Textual Word64)
    , _auuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auuXgafv'
--
-- * 'auuMerchantId'
--
-- * 'auuUploadProtocol'
--
-- * 'auuAccessToken'
--
-- * 'auuUploadType'
--
-- * 'auuPayload'
--
-- * 'auuAccountId'
--
-- * 'auuCallback'
accountsUpdate
    :: Word64 -- ^ 'auuMerchantId'
    -> Account -- ^ 'auuPayload'
    -> Word64 -- ^ 'auuAccountId'
    -> AccountsUpdate
accountsUpdate pAuuMerchantId_ pAuuPayload_ pAuuAccountId_ =
  AccountsUpdate'
    { _auuXgafv = Nothing
    , _auuMerchantId = _Coerce # pAuuMerchantId_
    , _auuUploadProtocol = Nothing
    , _auuAccessToken = Nothing
    , _auuUploadType = Nothing
    , _auuPayload = pAuuPayload_
    , _auuAccountId = _Coerce # pAuuAccountId_
    , _auuCallback = Nothing
    }


-- | V1 error format.
auuXgafv :: Lens' AccountsUpdate (Maybe Xgafv)
auuXgafv = lens _auuXgafv (\ s a -> s{_auuXgafv = a})

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- \`accountId\` must be the ID of a sub-account of this account.
auuMerchantId :: Lens' AccountsUpdate Word64
auuMerchantId
  = lens _auuMerchantId
      (\ s a -> s{_auuMerchantId = a})
      . _Coerce

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

-- | Multipart request metadata.
auuPayload :: Lens' AccountsUpdate Account
auuPayload
  = lens _auuPayload (\ s a -> s{_auuPayload = a})

-- | The ID of the account.
auuAccountId :: Lens' AccountsUpdate Word64
auuAccountId
  = lens _auuAccountId (\ s a -> s{_auuAccountId = a})
      . _Coerce

-- | JSONP
auuCallback :: Lens' AccountsUpdate (Maybe Text)
auuCallback
  = lens _auuCallback (\ s a -> s{_auuCallback = a})

instance GoogleRequest AccountsUpdate where
        type Rs AccountsUpdate = Account
        type Scopes AccountsUpdate =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsUpdate'{..}
          = go _auuMerchantId _auuAccountId _auuXgafv
              _auuUploadProtocol
              _auuAccessToken
              _auuUploadType
              _auuCallback
              (Just AltJSON)
              _auuPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsUpdateResource)
                      mempty
