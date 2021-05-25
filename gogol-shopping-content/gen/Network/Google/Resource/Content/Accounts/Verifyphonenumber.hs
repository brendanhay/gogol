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
-- Module      : Network.Google.Resource.Content.Accounts.Verifyphonenumber
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates verification code to verify phone number for the account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.verifyphonenumber@.
module Network.Google.Resource.Content.Accounts.Verifyphonenumber
    (
    -- * REST Resource
      AccountsVerifyphonenumberResource

    -- * Creating a Request
    , accountsVerifyphonenumber
    , AccountsVerifyphonenumber

    -- * Request Lenses
    , avXgafv
    , avMerchantId
    , avUploadProtocol
    , avAccessToken
    , avUploadType
    , avPayload
    , avAccountId
    , avCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.verifyphonenumber@ method which the
-- 'AccountsVerifyphonenumber' request conforms to.
type AccountsVerifyphonenumberResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "accounts" :>
             Capture "accountId" (Textual Int64) :>
               "verifyphonenumber" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] VerifyPhoneNumberRequest :>
                               Post '[JSON] VerifyPhoneNumberResponse

-- | Validates verification code to verify phone number for the account.
--
-- /See:/ 'accountsVerifyphonenumber' smart constructor.
data AccountsVerifyphonenumber =
  AccountsVerifyphonenumber'
    { _avXgafv :: !(Maybe Xgafv)
    , _avMerchantId :: !(Textual Int64)
    , _avUploadProtocol :: !(Maybe Text)
    , _avAccessToken :: !(Maybe Text)
    , _avUploadType :: !(Maybe Text)
    , _avPayload :: !VerifyPhoneNumberRequest
    , _avAccountId :: !(Textual Int64)
    , _avCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsVerifyphonenumber' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avXgafv'
--
-- * 'avMerchantId'
--
-- * 'avUploadProtocol'
--
-- * 'avAccessToken'
--
-- * 'avUploadType'
--
-- * 'avPayload'
--
-- * 'avAccountId'
--
-- * 'avCallback'
accountsVerifyphonenumber
    :: Int64 -- ^ 'avMerchantId'
    -> VerifyPhoneNumberRequest -- ^ 'avPayload'
    -> Int64 -- ^ 'avAccountId'
    -> AccountsVerifyphonenumber
accountsVerifyphonenumber pAvMerchantId_ pAvPayload_ pAvAccountId_ =
  AccountsVerifyphonenumber'
    { _avXgafv = Nothing
    , _avMerchantId = _Coerce # pAvMerchantId_
    , _avUploadProtocol = Nothing
    , _avAccessToken = Nothing
    , _avUploadType = Nothing
    , _avPayload = pAvPayload_
    , _avAccountId = _Coerce # pAvAccountId_
    , _avCallback = Nothing
    }


-- | V1 error format.
avXgafv :: Lens' AccountsVerifyphonenumber (Maybe Xgafv)
avXgafv = lens _avXgafv (\ s a -> s{_avXgafv = a})

-- | Required. The ID of the managing account. If this parameter is not the
-- same as accountId, then this account must be a multi-client account and
-- accountId must be the ID of a sub-account of this account.
avMerchantId :: Lens' AccountsVerifyphonenumber Int64
avMerchantId
  = lens _avMerchantId (\ s a -> s{_avMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
avUploadProtocol :: Lens' AccountsVerifyphonenumber (Maybe Text)
avUploadProtocol
  = lens _avUploadProtocol
      (\ s a -> s{_avUploadProtocol = a})

-- | OAuth access token.
avAccessToken :: Lens' AccountsVerifyphonenumber (Maybe Text)
avAccessToken
  = lens _avAccessToken
      (\ s a -> s{_avAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
avUploadType :: Lens' AccountsVerifyphonenumber (Maybe Text)
avUploadType
  = lens _avUploadType (\ s a -> s{_avUploadType = a})

-- | Multipart request metadata.
avPayload :: Lens' AccountsVerifyphonenumber VerifyPhoneNumberRequest
avPayload
  = lens _avPayload (\ s a -> s{_avPayload = a})

-- | Required. The ID of the account.
avAccountId :: Lens' AccountsVerifyphonenumber Int64
avAccountId
  = lens _avAccountId (\ s a -> s{_avAccountId = a}) .
      _Coerce

-- | JSONP
avCallback :: Lens' AccountsVerifyphonenumber (Maybe Text)
avCallback
  = lens _avCallback (\ s a -> s{_avCallback = a})

instance GoogleRequest AccountsVerifyphonenumber
         where
        type Rs AccountsVerifyphonenumber =
             VerifyPhoneNumberResponse
        type Scopes AccountsVerifyphonenumber =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsVerifyphonenumber'{..}
          = go _avMerchantId _avAccountId _avXgafv
              _avUploadProtocol
              _avAccessToken
              _avUploadType
              _avCallback
              (Just AltJSON)
              _avPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsVerifyphonenumberResource)
                      mempty
