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
-- Module      : Network.Google.Resource.Content.Accounttax.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tax settings of the sub-accounts in your Merchant Center
-- account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounttax.list@.
module Network.Google.Resource.Content.Accounttax.List
    (
    -- * REST Resource
      AccounttaxListResource

    -- * Creating a Request
    , accounttaxList
    , AccounttaxList

    -- * Request Lenses
    , al1Xgafv
    , al1MerchantId
    , al1UploadProtocol
    , al1AccessToken
    , al1UploadType
    , al1PageToken
    , al1MaxResults
    , al1Callback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounttax.list@ method which the
-- 'AccounttaxList' request conforms to.
type AccounttaxListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounttax" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] AccounttaxListResponse

-- | Lists the tax settings of the sub-accounts in your Merchant Center
-- account.
--
-- /See:/ 'accounttaxList' smart constructor.
data AccounttaxList =
  AccounttaxList'
    { _al1Xgafv :: !(Maybe Xgafv)
    , _al1MerchantId :: !(Textual Word64)
    , _al1UploadProtocol :: !(Maybe Text)
    , _al1AccessToken :: !(Maybe Text)
    , _al1UploadType :: !(Maybe Text)
    , _al1PageToken :: !(Maybe Text)
    , _al1MaxResults :: !(Maybe (Textual Word32))
    , _al1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccounttaxList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'al1Xgafv'
--
-- * 'al1MerchantId'
--
-- * 'al1UploadProtocol'
--
-- * 'al1AccessToken'
--
-- * 'al1UploadType'
--
-- * 'al1PageToken'
--
-- * 'al1MaxResults'
--
-- * 'al1Callback'
accounttaxList
    :: Word64 -- ^ 'al1MerchantId'
    -> AccounttaxList
accounttaxList pAl1MerchantId_ =
  AccounttaxList'
    { _al1Xgafv = Nothing
    , _al1MerchantId = _Coerce # pAl1MerchantId_
    , _al1UploadProtocol = Nothing
    , _al1AccessToken = Nothing
    , _al1UploadType = Nothing
    , _al1PageToken = Nothing
    , _al1MaxResults = Nothing
    , _al1Callback = Nothing
    }


-- | V1 error format.
al1Xgafv :: Lens' AccounttaxList (Maybe Xgafv)
al1Xgafv = lens _al1Xgafv (\ s a -> s{_al1Xgafv = a})

-- | The ID of the managing account. This must be a multi-client account.
al1MerchantId :: Lens' AccounttaxList Word64
al1MerchantId
  = lens _al1MerchantId
      (\ s a -> s{_al1MerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
al1UploadProtocol :: Lens' AccounttaxList (Maybe Text)
al1UploadProtocol
  = lens _al1UploadProtocol
      (\ s a -> s{_al1UploadProtocol = a})

-- | OAuth access token.
al1AccessToken :: Lens' AccounttaxList (Maybe Text)
al1AccessToken
  = lens _al1AccessToken
      (\ s a -> s{_al1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
al1UploadType :: Lens' AccounttaxList (Maybe Text)
al1UploadType
  = lens _al1UploadType
      (\ s a -> s{_al1UploadType = a})

-- | The token returned by the previous request.
al1PageToken :: Lens' AccounttaxList (Maybe Text)
al1PageToken
  = lens _al1PageToken (\ s a -> s{_al1PageToken = a})

-- | The maximum number of tax settings to return in the response, used for
-- paging.
al1MaxResults :: Lens' AccounttaxList (Maybe Word32)
al1MaxResults
  = lens _al1MaxResults
      (\ s a -> s{_al1MaxResults = a})
      . mapping _Coerce

-- | JSONP
al1Callback :: Lens' AccounttaxList (Maybe Text)
al1Callback
  = lens _al1Callback (\ s a -> s{_al1Callback = a})

instance GoogleRequest AccounttaxList where
        type Rs AccounttaxList = AccounttaxListResponse
        type Scopes AccounttaxList =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccounttaxList'{..}
          = go _al1MerchantId _al1Xgafv _al1UploadProtocol
              _al1AccessToken
              _al1UploadType
              _al1PageToken
              _al1MaxResults
              _al1Callback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccounttaxListResource)
                      mempty
