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
-- Module      : Network.Google.Resource.Content.Accounts.Returncarrier.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a return carrier in the merchant account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.returncarrier.delete@.
module Network.Google.Resource.Content.Accounts.Returncarrier.Delete
    (
    -- * REST Resource
      AccountsReturncarrierDeleteResource

    -- * Creating a Request
    , accountsReturncarrierDelete
    , AccountsReturncarrierDelete

    -- * Request Lenses
    , ardXgafv
    , ardUploadProtocol
    , ardAccessToken
    , ardUploadType
    , ardAccountId
    , ardCarrierAccountId
    , ardCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.returncarrier.delete@ method which the
-- 'AccountsReturncarrierDelete' request conforms to.
type AccountsReturncarrierDeleteResource =
     "content" :>
       "v2.1" :>
         "accounts" :>
           Capture "accountId" (Textual Int64) :>
             "returncarrier" :>
               Capture "carrierAccountId" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a return carrier in the merchant account.
--
-- /See:/ 'accountsReturncarrierDelete' smart constructor.
data AccountsReturncarrierDelete =
  AccountsReturncarrierDelete'
    { _ardXgafv :: !(Maybe Xgafv)
    , _ardUploadProtocol :: !(Maybe Text)
    , _ardAccessToken :: !(Maybe Text)
    , _ardUploadType :: !(Maybe Text)
    , _ardAccountId :: !(Textual Int64)
    , _ardCarrierAccountId :: !(Textual Int64)
    , _ardCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsReturncarrierDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ardXgafv'
--
-- * 'ardUploadProtocol'
--
-- * 'ardAccessToken'
--
-- * 'ardUploadType'
--
-- * 'ardAccountId'
--
-- * 'ardCarrierAccountId'
--
-- * 'ardCallback'
accountsReturncarrierDelete
    :: Int64 -- ^ 'ardAccountId'
    -> Int64 -- ^ 'ardCarrierAccountId'
    -> AccountsReturncarrierDelete
accountsReturncarrierDelete pArdAccountId_ pArdCarrierAccountId_ =
  AccountsReturncarrierDelete'
    { _ardXgafv = Nothing
    , _ardUploadProtocol = Nothing
    , _ardAccessToken = Nothing
    , _ardUploadType = Nothing
    , _ardAccountId = _Coerce # pArdAccountId_
    , _ardCarrierAccountId = _Coerce # pArdCarrierAccountId_
    , _ardCallback = Nothing
    }


-- | V1 error format.
ardXgafv :: Lens' AccountsReturncarrierDelete (Maybe Xgafv)
ardXgafv = lens _ardXgafv (\ s a -> s{_ardXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ardUploadProtocol :: Lens' AccountsReturncarrierDelete (Maybe Text)
ardUploadProtocol
  = lens _ardUploadProtocol
      (\ s a -> s{_ardUploadProtocol = a})

-- | OAuth access token.
ardAccessToken :: Lens' AccountsReturncarrierDelete (Maybe Text)
ardAccessToken
  = lens _ardAccessToken
      (\ s a -> s{_ardAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ardUploadType :: Lens' AccountsReturncarrierDelete (Maybe Text)
ardUploadType
  = lens _ardUploadType
      (\ s a -> s{_ardUploadType = a})

-- | Required. The Merchant Center Account Id under which the Return Carrier
-- is to be linked.
ardAccountId :: Lens' AccountsReturncarrierDelete Int64
ardAccountId
  = lens _ardAccountId (\ s a -> s{_ardAccountId = a})
      . _Coerce

-- | Required. The Google-provided unique carrier ID, used to update the
-- resource.
ardCarrierAccountId :: Lens' AccountsReturncarrierDelete Int64
ardCarrierAccountId
  = lens _ardCarrierAccountId
      (\ s a -> s{_ardCarrierAccountId = a})
      . _Coerce

-- | JSONP
ardCallback :: Lens' AccountsReturncarrierDelete (Maybe Text)
ardCallback
  = lens _ardCallback (\ s a -> s{_ardCallback = a})

instance GoogleRequest AccountsReturncarrierDelete
         where
        type Rs AccountsReturncarrierDelete = ()
        type Scopes AccountsReturncarrierDelete =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsReturncarrierDelete'{..}
          = go _ardAccountId _ardCarrierAccountId _ardXgafv
              _ardUploadProtocol
              _ardAccessToken
              _ardUploadType
              _ardCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsReturncarrierDeleteResource)
                      mempty
