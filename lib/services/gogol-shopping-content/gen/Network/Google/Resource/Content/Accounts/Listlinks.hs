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
-- Module      : Network.Google.Resource.Content.Accounts.Listlinks
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of accounts linked to your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.listlinks@.
module Network.Google.Resource.Content.Accounts.Listlinks
    (
    -- * REST Resource
      AccountsListlinksResource

    -- * Creating a Request
    , accountsListlinks
    , AccountsListlinks

    -- * Request Lenses
    , alsXgafv
    , alsMerchantId
    , alsUploadProtocol
    , alsAccessToken
    , alsUploadType
    , alsAccountId
    , alsPageToken
    , alsMaxResults
    , alsCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.listlinks@ method which the
-- 'AccountsListlinks' request conforms to.
type AccountsListlinksResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounts" :>
             Capture "accountId" (Textual Word64) :>
               "listlinks" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] AccountsListLinksResponse

-- | Returns the list of accounts linked to your Merchant Center account.
--
-- /See:/ 'accountsListlinks' smart constructor.
data AccountsListlinks =
  AccountsListlinks'
    { _alsXgafv :: !(Maybe Xgafv)
    , _alsMerchantId :: !(Textual Word64)
    , _alsUploadProtocol :: !(Maybe Text)
    , _alsAccessToken :: !(Maybe Text)
    , _alsUploadType :: !(Maybe Text)
    , _alsAccountId :: !(Textual Word64)
    , _alsPageToken :: !(Maybe Text)
    , _alsMaxResults :: !(Maybe (Textual Word32))
    , _alsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsListlinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alsXgafv'
--
-- * 'alsMerchantId'
--
-- * 'alsUploadProtocol'
--
-- * 'alsAccessToken'
--
-- * 'alsUploadType'
--
-- * 'alsAccountId'
--
-- * 'alsPageToken'
--
-- * 'alsMaxResults'
--
-- * 'alsCallback'
accountsListlinks
    :: Word64 -- ^ 'alsMerchantId'
    -> Word64 -- ^ 'alsAccountId'
    -> AccountsListlinks
accountsListlinks pAlsMerchantId_ pAlsAccountId_ =
  AccountsListlinks'
    { _alsXgafv = Nothing
    , _alsMerchantId = _Coerce # pAlsMerchantId_
    , _alsUploadProtocol = Nothing
    , _alsAccessToken = Nothing
    , _alsUploadType = Nothing
    , _alsAccountId = _Coerce # pAlsAccountId_
    , _alsPageToken = Nothing
    , _alsMaxResults = Nothing
    , _alsCallback = Nothing
    }


-- | V1 error format.
alsXgafv :: Lens' AccountsListlinks (Maybe Xgafv)
alsXgafv = lens _alsXgafv (\ s a -> s{_alsXgafv = a})

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- \`accountId\` must be the ID of a sub-account of this account.
alsMerchantId :: Lens' AccountsListlinks Word64
alsMerchantId
  = lens _alsMerchantId
      (\ s a -> s{_alsMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alsUploadProtocol :: Lens' AccountsListlinks (Maybe Text)
alsUploadProtocol
  = lens _alsUploadProtocol
      (\ s a -> s{_alsUploadProtocol = a})

-- | OAuth access token.
alsAccessToken :: Lens' AccountsListlinks (Maybe Text)
alsAccessToken
  = lens _alsAccessToken
      (\ s a -> s{_alsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alsUploadType :: Lens' AccountsListlinks (Maybe Text)
alsUploadType
  = lens _alsUploadType
      (\ s a -> s{_alsUploadType = a})

-- | The ID of the account for which to list links.
alsAccountId :: Lens' AccountsListlinks Word64
alsAccountId
  = lens _alsAccountId (\ s a -> s{_alsAccountId = a})
      . _Coerce

-- | The token returned by the previous request.
alsPageToken :: Lens' AccountsListlinks (Maybe Text)
alsPageToken
  = lens _alsPageToken (\ s a -> s{_alsPageToken = a})

-- | The maximum number of links to return in the response, used for
-- pagination. The minimum allowed value is 5 results per page. If provided
-- value is lower than 5, it will be automatically increased to 5.
alsMaxResults :: Lens' AccountsListlinks (Maybe Word32)
alsMaxResults
  = lens _alsMaxResults
      (\ s a -> s{_alsMaxResults = a})
      . mapping _Coerce

-- | JSONP
alsCallback :: Lens' AccountsListlinks (Maybe Text)
alsCallback
  = lens _alsCallback (\ s a -> s{_alsCallback = a})

instance GoogleRequest AccountsListlinks where
        type Rs AccountsListlinks = AccountsListLinksResponse
        type Scopes AccountsListlinks =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsListlinks'{..}
          = go _alsMerchantId _alsAccountId _alsXgafv
              _alsUploadProtocol
              _alsAccessToken
              _alsUploadType
              _alsPageToken
              _alsMaxResults
              _alsCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsListlinksResource)
                      mempty
