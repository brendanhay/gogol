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
-- Module      : Network.Google.Resource.Content.Accounttax.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the tax settings of the account. Any fields that are not
-- provided are deleted from the resource.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounttax.update@.
module Network.Google.Resource.Content.Accounttax.Update
    (
    -- * REST Resource
      AccounttaxUpdateResource

    -- * Creating a Request
    , accounttaxUpdate
    , AccounttaxUpdate

    -- * Request Lenses
    , auXgafv
    , auMerchantId
    , auUploadProtocol
    , auAccessToken
    , auUploadType
    , auPayload
    , auAccountId
    , auCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounttax.update@ method which the
-- 'AccounttaxUpdate' request conforms to.
type AccounttaxUpdateResource =
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
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AccountTax :> Put '[JSON] AccountTax

-- | Updates the tax settings of the account. Any fields that are not
-- provided are deleted from the resource.
--
-- /See:/ 'accounttaxUpdate' smart constructor.
data AccounttaxUpdate =
  AccounttaxUpdate'
    { _auXgafv :: !(Maybe Xgafv)
    , _auMerchantId :: !(Textual Word64)
    , _auUploadProtocol :: !(Maybe Text)
    , _auAccessToken :: !(Maybe Text)
    , _auUploadType :: !(Maybe Text)
    , _auPayload :: !AccountTax
    , _auAccountId :: !(Textual Word64)
    , _auCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccounttaxUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auXgafv'
--
-- * 'auMerchantId'
--
-- * 'auUploadProtocol'
--
-- * 'auAccessToken'
--
-- * 'auUploadType'
--
-- * 'auPayload'
--
-- * 'auAccountId'
--
-- * 'auCallback'
accounttaxUpdate
    :: Word64 -- ^ 'auMerchantId'
    -> AccountTax -- ^ 'auPayload'
    -> Word64 -- ^ 'auAccountId'
    -> AccounttaxUpdate
accounttaxUpdate pAuMerchantId_ pAuPayload_ pAuAccountId_ =
  AccounttaxUpdate'
    { _auXgafv = Nothing
    , _auMerchantId = _Coerce # pAuMerchantId_
    , _auUploadProtocol = Nothing
    , _auAccessToken = Nothing
    , _auUploadType = Nothing
    , _auPayload = pAuPayload_
    , _auAccountId = _Coerce # pAuAccountId_
    , _auCallback = Nothing
    }


-- | V1 error format.
auXgafv :: Lens' AccounttaxUpdate (Maybe Xgafv)
auXgafv = lens _auXgafv (\ s a -> s{_auXgafv = a})

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- \`accountId\` must be the ID of a sub-account of this account.
auMerchantId :: Lens' AccounttaxUpdate Word64
auMerchantId
  = lens _auMerchantId (\ s a -> s{_auMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
auUploadProtocol :: Lens' AccounttaxUpdate (Maybe Text)
auUploadProtocol
  = lens _auUploadProtocol
      (\ s a -> s{_auUploadProtocol = a})

-- | OAuth access token.
auAccessToken :: Lens' AccounttaxUpdate (Maybe Text)
auAccessToken
  = lens _auAccessToken
      (\ s a -> s{_auAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
auUploadType :: Lens' AccounttaxUpdate (Maybe Text)
auUploadType
  = lens _auUploadType (\ s a -> s{_auUploadType = a})

-- | Multipart request metadata.
auPayload :: Lens' AccounttaxUpdate AccountTax
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | The ID of the account for which to get\/update account tax settings.
auAccountId :: Lens' AccounttaxUpdate Word64
auAccountId
  = lens _auAccountId (\ s a -> s{_auAccountId = a}) .
      _Coerce

-- | JSONP
auCallback :: Lens' AccounttaxUpdate (Maybe Text)
auCallback
  = lens _auCallback (\ s a -> s{_auCallback = a})

instance GoogleRequest AccounttaxUpdate where
        type Rs AccounttaxUpdate = AccountTax
        type Scopes AccounttaxUpdate =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccounttaxUpdate'{..}
          = go _auMerchantId _auAccountId _auXgafv
              _auUploadProtocol
              _auAccessToken
              _auUploadType
              _auCallback
              (Just AltJSON)
              _auPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccounttaxUpdateResource)
                      mempty
