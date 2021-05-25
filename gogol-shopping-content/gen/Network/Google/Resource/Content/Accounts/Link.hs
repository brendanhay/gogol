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
-- Module      : Network.Google.Resource.Content.Accounts.Link
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs an action on a link between two Merchant Center accounts,
-- namely accountId and linkedAccountId.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.link@.
module Network.Google.Resource.Content.Accounts.Link
    (
    -- * REST Resource
      AccountsLinkResource

    -- * Creating a Request
    , accountsLink
    , AccountsLink

    -- * Request Lenses
    , alXgafv
    , alMerchantId
    , alUploadProtocol
    , alAccessToken
    , alUploadType
    , alPayload
    , alAccountId
    , alCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.link@ method which the
-- 'AccountsLink' request conforms to.
type AccountsLinkResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounts" :>
             Capture "accountId" (Textual Word64) :>
               "link" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] AccountsLinkRequest :>
                               Post '[JSON] AccountsLinkResponse

-- | Performs an action on a link between two Merchant Center accounts,
-- namely accountId and linkedAccountId.
--
-- /See:/ 'accountsLink' smart constructor.
data AccountsLink =
  AccountsLink'
    { _alXgafv :: !(Maybe Xgafv)
    , _alMerchantId :: !(Textual Word64)
    , _alUploadProtocol :: !(Maybe Text)
    , _alAccessToken :: !(Maybe Text)
    , _alUploadType :: !(Maybe Text)
    , _alPayload :: !AccountsLinkRequest
    , _alAccountId :: !(Textual Word64)
    , _alCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alXgafv'
--
-- * 'alMerchantId'
--
-- * 'alUploadProtocol'
--
-- * 'alAccessToken'
--
-- * 'alUploadType'
--
-- * 'alPayload'
--
-- * 'alAccountId'
--
-- * 'alCallback'
accountsLink
    :: Word64 -- ^ 'alMerchantId'
    -> AccountsLinkRequest -- ^ 'alPayload'
    -> Word64 -- ^ 'alAccountId'
    -> AccountsLink
accountsLink pAlMerchantId_ pAlPayload_ pAlAccountId_ =
  AccountsLink'
    { _alXgafv = Nothing
    , _alMerchantId = _Coerce # pAlMerchantId_
    , _alUploadProtocol = Nothing
    , _alAccessToken = Nothing
    , _alUploadType = Nothing
    , _alPayload = pAlPayload_
    , _alAccountId = _Coerce # pAlAccountId_
    , _alCallback = Nothing
    }


-- | V1 error format.
alXgafv :: Lens' AccountsLink (Maybe Xgafv)
alXgafv = lens _alXgafv (\ s a -> s{_alXgafv = a})

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- \`accountId\` must be the ID of a sub-account of this account.
alMerchantId :: Lens' AccountsLink Word64
alMerchantId
  = lens _alMerchantId (\ s a -> s{_alMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alUploadProtocol :: Lens' AccountsLink (Maybe Text)
alUploadProtocol
  = lens _alUploadProtocol
      (\ s a -> s{_alUploadProtocol = a})

-- | OAuth access token.
alAccessToken :: Lens' AccountsLink (Maybe Text)
alAccessToken
  = lens _alAccessToken
      (\ s a -> s{_alAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alUploadType :: Lens' AccountsLink (Maybe Text)
alUploadType
  = lens _alUploadType (\ s a -> s{_alUploadType = a})

-- | Multipart request metadata.
alPayload :: Lens' AccountsLink AccountsLinkRequest
alPayload
  = lens _alPayload (\ s a -> s{_alPayload = a})

-- | The ID of the account that should be linked.
alAccountId :: Lens' AccountsLink Word64
alAccountId
  = lens _alAccountId (\ s a -> s{_alAccountId = a}) .
      _Coerce

-- | JSONP
alCallback :: Lens' AccountsLink (Maybe Text)
alCallback
  = lens _alCallback (\ s a -> s{_alCallback = a})

instance GoogleRequest AccountsLink where
        type Rs AccountsLink = AccountsLinkResponse
        type Scopes AccountsLink =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsLink'{..}
          = go _alMerchantId _alAccountId _alXgafv
              _alUploadProtocol
              _alAccessToken
              _alUploadType
              _alCallback
              (Just AltJSON)
              _alPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsLinkResource)
                      mempty
