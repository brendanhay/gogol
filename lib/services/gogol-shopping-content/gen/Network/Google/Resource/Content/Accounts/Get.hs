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
-- Module      : Network.Google.Resource.Content.Accounts.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.get@.
module Network.Google.Resource.Content.Accounts.Get
    (
    -- * REST Resource
      AccountsGetResource

    -- * Creating a Request
    , accountsGet
    , AccountsGet

    -- * Request Lenses
    , agXgafv
    , agMerchantId
    , agUploadProtocol
    , agAccessToken
    , agUploadType
    , agAccountId
    , agView
    , agCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.get@ method which the
-- 'AccountsGet' request conforms to.
type AccountsGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounts" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "view" AccountsGetView :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Account

-- | Retrieves a Merchant Center account.
--
-- /See:/ 'accountsGet' smart constructor.
data AccountsGet =
  AccountsGet'
    { _agXgafv :: !(Maybe Xgafv)
    , _agMerchantId :: !(Textual Word64)
    , _agUploadProtocol :: !(Maybe Text)
    , _agAccessToken :: !(Maybe Text)
    , _agUploadType :: !(Maybe Text)
    , _agAccountId :: !(Textual Word64)
    , _agView :: !(Maybe AccountsGetView)
    , _agCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agXgafv'
--
-- * 'agMerchantId'
--
-- * 'agUploadProtocol'
--
-- * 'agAccessToken'
--
-- * 'agUploadType'
--
-- * 'agAccountId'
--
-- * 'agView'
--
-- * 'agCallback'
accountsGet
    :: Word64 -- ^ 'agMerchantId'
    -> Word64 -- ^ 'agAccountId'
    -> AccountsGet
accountsGet pAgMerchantId_ pAgAccountId_ =
  AccountsGet'
    { _agXgafv = Nothing
    , _agMerchantId = _Coerce # pAgMerchantId_
    , _agUploadProtocol = Nothing
    , _agAccessToken = Nothing
    , _agUploadType = Nothing
    , _agAccountId = _Coerce # pAgAccountId_
    , _agView = Nothing
    , _agCallback = Nothing
    }


-- | V1 error format.
agXgafv :: Lens' AccountsGet (Maybe Xgafv)
agXgafv = lens _agXgafv (\ s a -> s{_agXgafv = a})

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- \`accountId\` must be the ID of a sub-account of this account.
agMerchantId :: Lens' AccountsGet Word64
agMerchantId
  = lens _agMerchantId (\ s a -> s{_agMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agUploadProtocol :: Lens' AccountsGet (Maybe Text)
agUploadProtocol
  = lens _agUploadProtocol
      (\ s a -> s{_agUploadProtocol = a})

-- | OAuth access token.
agAccessToken :: Lens' AccountsGet (Maybe Text)
agAccessToken
  = lens _agAccessToken
      (\ s a -> s{_agAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agUploadType :: Lens' AccountsGet (Maybe Text)
agUploadType
  = lens _agUploadType (\ s a -> s{_agUploadType = a})

-- | The ID of the account.
agAccountId :: Lens' AccountsGet Word64
agAccountId
  = lens _agAccountId (\ s a -> s{_agAccountId = a}) .
      _Coerce

-- | Controls which fields will be populated. Acceptable values are:
-- \"merchant\" and \"css\". The default value is \"merchant\".
agView :: Lens' AccountsGet (Maybe AccountsGetView)
agView = lens _agView (\ s a -> s{_agView = a})

-- | JSONP
agCallback :: Lens' AccountsGet (Maybe Text)
agCallback
  = lens _agCallback (\ s a -> s{_agCallback = a})

instance GoogleRequest AccountsGet where
        type Rs AccountsGet = Account
        type Scopes AccountsGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsGet'{..}
          = go _agMerchantId _agAccountId _agXgafv
              _agUploadProtocol
              _agAccessToken
              _agUploadType
              _agView
              _agCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsGetResource)
                      mempty
