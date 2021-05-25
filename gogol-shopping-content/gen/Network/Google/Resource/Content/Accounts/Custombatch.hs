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
-- Module      : Network.Google.Resource.Content.Accounts.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves, inserts, updates, and deletes multiple Merchant Center
-- (sub-)accounts in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.custombatch@.
module Network.Google.Resource.Content.Accounts.Custombatch
    (
    -- * REST Resource
      AccountsCustombatchResource

    -- * Creating a Request
    , accountsCustombatch
    , AccountsCustombatch

    -- * Request Lenses
    , accXgafv
    , accUploadProtocol
    , accAccessToken
    , accUploadType
    , accPayload
    , accCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.custombatch@ method which the
-- 'AccountsCustombatch' request conforms to.
type AccountsCustombatchResource =
     "content" :>
       "v2.1" :>
         "accounts" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AccountsCustomBatchRequest :>
                           Post '[JSON] AccountsCustomBatchResponse

-- | Retrieves, inserts, updates, and deletes multiple Merchant Center
-- (sub-)accounts in a single request.
--
-- /See:/ 'accountsCustombatch' smart constructor.
data AccountsCustombatch =
  AccountsCustombatch'
    { _accXgafv :: !(Maybe Xgafv)
    , _accUploadProtocol :: !(Maybe Text)
    , _accAccessToken :: !(Maybe Text)
    , _accUploadType :: !(Maybe Text)
    , _accPayload :: !AccountsCustomBatchRequest
    , _accCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accXgafv'
--
-- * 'accUploadProtocol'
--
-- * 'accAccessToken'
--
-- * 'accUploadType'
--
-- * 'accPayload'
--
-- * 'accCallback'
accountsCustombatch
    :: AccountsCustomBatchRequest -- ^ 'accPayload'
    -> AccountsCustombatch
accountsCustombatch pAccPayload_ =
  AccountsCustombatch'
    { _accXgafv = Nothing
    , _accUploadProtocol = Nothing
    , _accAccessToken = Nothing
    , _accUploadType = Nothing
    , _accPayload = pAccPayload_
    , _accCallback = Nothing
    }


-- | V1 error format.
accXgafv :: Lens' AccountsCustombatch (Maybe Xgafv)
accXgafv = lens _accXgafv (\ s a -> s{_accXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
accUploadProtocol :: Lens' AccountsCustombatch (Maybe Text)
accUploadProtocol
  = lens _accUploadProtocol
      (\ s a -> s{_accUploadProtocol = a})

-- | OAuth access token.
accAccessToken :: Lens' AccountsCustombatch (Maybe Text)
accAccessToken
  = lens _accAccessToken
      (\ s a -> s{_accAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
accUploadType :: Lens' AccountsCustombatch (Maybe Text)
accUploadType
  = lens _accUploadType
      (\ s a -> s{_accUploadType = a})

-- | Multipart request metadata.
accPayload :: Lens' AccountsCustombatch AccountsCustomBatchRequest
accPayload
  = lens _accPayload (\ s a -> s{_accPayload = a})

-- | JSONP
accCallback :: Lens' AccountsCustombatch (Maybe Text)
accCallback
  = lens _accCallback (\ s a -> s{_accCallback = a})

instance GoogleRequest AccountsCustombatch where
        type Rs AccountsCustombatch =
             AccountsCustomBatchResponse
        type Scopes AccountsCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsCustombatch'{..}
          = go _accXgafv _accUploadProtocol _accAccessToken
              _accUploadType
              _accCallback
              (Just AltJSON)
              _accPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsCustombatchResource)
                      mempty
