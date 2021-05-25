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
-- Module      : Network.Google.Resource.Content.Accounts.Returncarrier.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists available return carriers in the merchant account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.returncarrier.list@.
module Network.Google.Resource.Content.Accounts.Returncarrier.List
    (
    -- * REST Resource
      AccountsReturncarrierListResource

    -- * Creating a Request
    , accountsReturncarrierList
    , AccountsReturncarrierList

    -- * Request Lenses
    , arlXgafv
    , arlUploadProtocol
    , arlAccessToken
    , arlUploadType
    , arlAccountId
    , arlCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.returncarrier.list@ method which the
-- 'AccountsReturncarrierList' request conforms to.
type AccountsReturncarrierListResource =
     "content" :>
       "v2.1" :>
         "accounts" :>
           Capture "accountId" (Textual Int64) :>
             "returncarrier" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListAccountReturnCarrierResponse

-- | Lists available return carriers in the merchant account.
--
-- /See:/ 'accountsReturncarrierList' smart constructor.
data AccountsReturncarrierList =
  AccountsReturncarrierList'
    { _arlXgafv :: !(Maybe Xgafv)
    , _arlUploadProtocol :: !(Maybe Text)
    , _arlAccessToken :: !(Maybe Text)
    , _arlUploadType :: !(Maybe Text)
    , _arlAccountId :: !(Textual Int64)
    , _arlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsReturncarrierList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arlXgafv'
--
-- * 'arlUploadProtocol'
--
-- * 'arlAccessToken'
--
-- * 'arlUploadType'
--
-- * 'arlAccountId'
--
-- * 'arlCallback'
accountsReturncarrierList
    :: Int64 -- ^ 'arlAccountId'
    -> AccountsReturncarrierList
accountsReturncarrierList pArlAccountId_ =
  AccountsReturncarrierList'
    { _arlXgafv = Nothing
    , _arlUploadProtocol = Nothing
    , _arlAccessToken = Nothing
    , _arlUploadType = Nothing
    , _arlAccountId = _Coerce # pArlAccountId_
    , _arlCallback = Nothing
    }


-- | V1 error format.
arlXgafv :: Lens' AccountsReturncarrierList (Maybe Xgafv)
arlXgafv = lens _arlXgafv (\ s a -> s{_arlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
arlUploadProtocol :: Lens' AccountsReturncarrierList (Maybe Text)
arlUploadProtocol
  = lens _arlUploadProtocol
      (\ s a -> s{_arlUploadProtocol = a})

-- | OAuth access token.
arlAccessToken :: Lens' AccountsReturncarrierList (Maybe Text)
arlAccessToken
  = lens _arlAccessToken
      (\ s a -> s{_arlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
arlUploadType :: Lens' AccountsReturncarrierList (Maybe Text)
arlUploadType
  = lens _arlUploadType
      (\ s a -> s{_arlUploadType = a})

-- | Required. The Merchant Center Account Id under which the Return Carrier
-- is to be linked.
arlAccountId :: Lens' AccountsReturncarrierList Int64
arlAccountId
  = lens _arlAccountId (\ s a -> s{_arlAccountId = a})
      . _Coerce

-- | JSONP
arlCallback :: Lens' AccountsReturncarrierList (Maybe Text)
arlCallback
  = lens _arlCallback (\ s a -> s{_arlCallback = a})

instance GoogleRequest AccountsReturncarrierList
         where
        type Rs AccountsReturncarrierList =
             ListAccountReturnCarrierResponse
        type Scopes AccountsReturncarrierList =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsReturncarrierList'{..}
          = go _arlAccountId _arlXgafv _arlUploadProtocol
              _arlAccessToken
              _arlUploadType
              _arlCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsReturncarrierListResource)
                      mempty
