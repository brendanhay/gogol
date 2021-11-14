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
-- Module      : Network.Google.Resource.Content.Accounts.Updatelabels
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates labels that are assigned to the Merchant Center account by CSS
-- user.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.updatelabels@.
module Network.Google.Resource.Content.Accounts.Updatelabels
    (
    -- * REST Resource
      AccountsUpdatelabelsResource

    -- * Creating a Request
    , accountsUpdatelabels
    , AccountsUpdatelabels

    -- * Request Lenses
    , ausXgafv
    , ausMerchantId
    , ausUploadProtocol
    , ausAccessToken
    , ausUploadType
    , ausPayload
    , ausAccountId
    , ausCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.updatelabels@ method which the
-- 'AccountsUpdatelabels' request conforms to.
type AccountsUpdatelabelsResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounts" :>
             Capture "accountId" (Textual Word64) :>
               "updatelabels" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] AccountsUpdateLabelsRequest :>
                               Post '[JSON] AccountsUpdateLabelsResponse

-- | Updates labels that are assigned to the Merchant Center account by CSS
-- user.
--
-- /See:/ 'accountsUpdatelabels' smart constructor.
data AccountsUpdatelabels =
  AccountsUpdatelabels'
    { _ausXgafv :: !(Maybe Xgafv)
    , _ausMerchantId :: !(Textual Word64)
    , _ausUploadProtocol :: !(Maybe Text)
    , _ausAccessToken :: !(Maybe Text)
    , _ausUploadType :: !(Maybe Text)
    , _ausPayload :: !AccountsUpdateLabelsRequest
    , _ausAccountId :: !(Textual Word64)
    , _ausCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsUpdatelabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ausXgafv'
--
-- * 'ausMerchantId'
--
-- * 'ausUploadProtocol'
--
-- * 'ausAccessToken'
--
-- * 'ausUploadType'
--
-- * 'ausPayload'
--
-- * 'ausAccountId'
--
-- * 'ausCallback'
accountsUpdatelabels
    :: Word64 -- ^ 'ausMerchantId'
    -> AccountsUpdateLabelsRequest -- ^ 'ausPayload'
    -> Word64 -- ^ 'ausAccountId'
    -> AccountsUpdatelabels
accountsUpdatelabels pAusMerchantId_ pAusPayload_ pAusAccountId_ =
  AccountsUpdatelabels'
    { _ausXgafv = Nothing
    , _ausMerchantId = _Coerce # pAusMerchantId_
    , _ausUploadProtocol = Nothing
    , _ausAccessToken = Nothing
    , _ausUploadType = Nothing
    , _ausPayload = pAusPayload_
    , _ausAccountId = _Coerce # pAusAccountId_
    , _ausCallback = Nothing
    }


-- | V1 error format.
ausXgafv :: Lens' AccountsUpdatelabels (Maybe Xgafv)
ausXgafv = lens _ausXgafv (\ s a -> s{_ausXgafv = a})

-- | The ID of the managing account.
ausMerchantId :: Lens' AccountsUpdatelabels Word64
ausMerchantId
  = lens _ausMerchantId
      (\ s a -> s{_ausMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ausUploadProtocol :: Lens' AccountsUpdatelabels (Maybe Text)
ausUploadProtocol
  = lens _ausUploadProtocol
      (\ s a -> s{_ausUploadProtocol = a})

-- | OAuth access token.
ausAccessToken :: Lens' AccountsUpdatelabels (Maybe Text)
ausAccessToken
  = lens _ausAccessToken
      (\ s a -> s{_ausAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ausUploadType :: Lens' AccountsUpdatelabels (Maybe Text)
ausUploadType
  = lens _ausUploadType
      (\ s a -> s{_ausUploadType = a})

-- | Multipart request metadata.
ausPayload :: Lens' AccountsUpdatelabels AccountsUpdateLabelsRequest
ausPayload
  = lens _ausPayload (\ s a -> s{_ausPayload = a})

-- | The ID of the account whose labels are updated.
ausAccountId :: Lens' AccountsUpdatelabels Word64
ausAccountId
  = lens _ausAccountId (\ s a -> s{_ausAccountId = a})
      . _Coerce

-- | JSONP
ausCallback :: Lens' AccountsUpdatelabels (Maybe Text)
ausCallback
  = lens _ausCallback (\ s a -> s{_ausCallback = a})

instance GoogleRequest AccountsUpdatelabels where
        type Rs AccountsUpdatelabels =
             AccountsUpdateLabelsResponse
        type Scopes AccountsUpdatelabels =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsUpdatelabels'{..}
          = go _ausMerchantId _ausAccountId _ausXgafv
              _ausUploadProtocol
              _ausAccessToken
              _ausUploadType
              _ausCallback
              (Just AltJSON)
              _ausPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsUpdatelabelsResource)
                      mempty
