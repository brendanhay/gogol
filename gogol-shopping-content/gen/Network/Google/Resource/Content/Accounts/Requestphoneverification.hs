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
-- Module      : Network.Google.Resource.Content.Accounts.Requestphoneverification
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request verification code to start phone verification.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.requestphoneverification@.
module Network.Google.Resource.Content.Accounts.Requestphoneverification
    (
    -- * REST Resource
      AccountsRequestphoneverificationResource

    -- * Creating a Request
    , accountsRequestphoneverification
    , AccountsRequestphoneverification

    -- * Request Lenses
    , arXgafv
    , arMerchantId
    , arUploadProtocol
    , arAccessToken
    , arUploadType
    , arPayload
    , arAccountId
    , arCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.requestphoneverification@ method which the
-- 'AccountsRequestphoneverification' request conforms to.
type AccountsRequestphoneverificationResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "accounts" :>
             Capture "accountId" (Textual Int64) :>
               "requestphoneverification" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] RequestPhoneVerificationRequest :>
                               Post '[JSON] RequestPhoneVerificationResponse

-- | Request verification code to start phone verification.
--
-- /See:/ 'accountsRequestphoneverification' smart constructor.
data AccountsRequestphoneverification =
  AccountsRequestphoneverification'
    { _arXgafv :: !(Maybe Xgafv)
    , _arMerchantId :: !(Textual Int64)
    , _arUploadProtocol :: !(Maybe Text)
    , _arAccessToken :: !(Maybe Text)
    , _arUploadType :: !(Maybe Text)
    , _arPayload :: !RequestPhoneVerificationRequest
    , _arAccountId :: !(Textual Int64)
    , _arCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsRequestphoneverification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arXgafv'
--
-- * 'arMerchantId'
--
-- * 'arUploadProtocol'
--
-- * 'arAccessToken'
--
-- * 'arUploadType'
--
-- * 'arPayload'
--
-- * 'arAccountId'
--
-- * 'arCallback'
accountsRequestphoneverification
    :: Int64 -- ^ 'arMerchantId'
    -> RequestPhoneVerificationRequest -- ^ 'arPayload'
    -> Int64 -- ^ 'arAccountId'
    -> AccountsRequestphoneverification
accountsRequestphoneverification pArMerchantId_ pArPayload_ pArAccountId_ =
  AccountsRequestphoneverification'
    { _arXgafv = Nothing
    , _arMerchantId = _Coerce # pArMerchantId_
    , _arUploadProtocol = Nothing
    , _arAccessToken = Nothing
    , _arUploadType = Nothing
    , _arPayload = pArPayload_
    , _arAccountId = _Coerce # pArAccountId_
    , _arCallback = Nothing
    }


-- | V1 error format.
arXgafv :: Lens' AccountsRequestphoneverification (Maybe Xgafv)
arXgafv = lens _arXgafv (\ s a -> s{_arXgafv = a})

-- | Required. The ID of the managing account. If this parameter is not the
-- same as accountId, then this account must be a multi-client account and
-- accountId must be the ID of a sub-account of this account.
arMerchantId :: Lens' AccountsRequestphoneverification Int64
arMerchantId
  = lens _arMerchantId (\ s a -> s{_arMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
arUploadProtocol :: Lens' AccountsRequestphoneverification (Maybe Text)
arUploadProtocol
  = lens _arUploadProtocol
      (\ s a -> s{_arUploadProtocol = a})

-- | OAuth access token.
arAccessToken :: Lens' AccountsRequestphoneverification (Maybe Text)
arAccessToken
  = lens _arAccessToken
      (\ s a -> s{_arAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
arUploadType :: Lens' AccountsRequestphoneverification (Maybe Text)
arUploadType
  = lens _arUploadType (\ s a -> s{_arUploadType = a})

-- | Multipart request metadata.
arPayload :: Lens' AccountsRequestphoneverification RequestPhoneVerificationRequest
arPayload
  = lens _arPayload (\ s a -> s{_arPayload = a})

-- | Required. The ID of the account.
arAccountId :: Lens' AccountsRequestphoneverification Int64
arAccountId
  = lens _arAccountId (\ s a -> s{_arAccountId = a}) .
      _Coerce

-- | JSONP
arCallback :: Lens' AccountsRequestphoneverification (Maybe Text)
arCallback
  = lens _arCallback (\ s a -> s{_arCallback = a})

instance GoogleRequest
           AccountsRequestphoneverification
         where
        type Rs AccountsRequestphoneverification =
             RequestPhoneVerificationResponse
        type Scopes AccountsRequestphoneverification =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsRequestphoneverification'{..}
          = go _arMerchantId _arAccountId _arXgafv
              _arUploadProtocol
              _arAccessToken
              _arUploadType
              _arCallback
              (Just AltJSON)
              _arPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsRequestphoneverificationResource)
                      mempty
