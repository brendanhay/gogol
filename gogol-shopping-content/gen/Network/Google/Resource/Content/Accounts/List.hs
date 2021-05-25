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
-- Module      : Network.Google.Resource.Content.Accounts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the sub-accounts in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.list@.
module Network.Google.Resource.Content.Accounts.List
    (
    -- * REST Resource
      AccountsListResource

    -- * Creating a Request
    , accountsList
    , AccountsList

    -- * Request Lenses
    , allXgafv
    , allMerchantId
    , allUploadProtocol
    , allAccessToken
    , allUploadType
    , allName
    , allView
    , allPageToken
    , allLabel
    , allMaxResults
    , allCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.list@ method which the
-- 'AccountsList' request conforms to.
type AccountsListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounts" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "name" Text :>
                       QueryParam "view" AccountsListView :>
                         QueryParam "pageToken" Text :>
                           QueryParam "label" (Textual Word64) :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] AccountsListResponse

-- | Lists the sub-accounts in your Merchant Center account.
--
-- /See:/ 'accountsList' smart constructor.
data AccountsList =
  AccountsList'
    { _allXgafv :: !(Maybe Xgafv)
    , _allMerchantId :: !(Textual Word64)
    , _allUploadProtocol :: !(Maybe Text)
    , _allAccessToken :: !(Maybe Text)
    , _allUploadType :: !(Maybe Text)
    , _allName :: !(Maybe Text)
    , _allView :: !(Maybe AccountsListView)
    , _allPageToken :: !(Maybe Text)
    , _allLabel :: !(Maybe (Textual Word64))
    , _allMaxResults :: !(Maybe (Textual Word32))
    , _allCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'allXgafv'
--
-- * 'allMerchantId'
--
-- * 'allUploadProtocol'
--
-- * 'allAccessToken'
--
-- * 'allUploadType'
--
-- * 'allName'
--
-- * 'allView'
--
-- * 'allPageToken'
--
-- * 'allLabel'
--
-- * 'allMaxResults'
--
-- * 'allCallback'
accountsList
    :: Word64 -- ^ 'allMerchantId'
    -> AccountsList
accountsList pAllMerchantId_ =
  AccountsList'
    { _allXgafv = Nothing
    , _allMerchantId = _Coerce # pAllMerchantId_
    , _allUploadProtocol = Nothing
    , _allAccessToken = Nothing
    , _allUploadType = Nothing
    , _allName = Nothing
    , _allView = Nothing
    , _allPageToken = Nothing
    , _allLabel = Nothing
    , _allMaxResults = Nothing
    , _allCallback = Nothing
    }


-- | V1 error format.
allXgafv :: Lens' AccountsList (Maybe Xgafv)
allXgafv = lens _allXgafv (\ s a -> s{_allXgafv = a})

-- | The ID of the managing account. This must be a multi-client account.
allMerchantId :: Lens' AccountsList Word64
allMerchantId
  = lens _allMerchantId
      (\ s a -> s{_allMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
allUploadProtocol :: Lens' AccountsList (Maybe Text)
allUploadProtocol
  = lens _allUploadProtocol
      (\ s a -> s{_allUploadProtocol = a})

-- | OAuth access token.
allAccessToken :: Lens' AccountsList (Maybe Text)
allAccessToken
  = lens _allAccessToken
      (\ s a -> s{_allAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
allUploadType :: Lens' AccountsList (Maybe Text)
allUploadType
  = lens _allUploadType
      (\ s a -> s{_allUploadType = a})

-- | If set, only the accounts with the given name (case sensitive) will be
-- returned.
allName :: Lens' AccountsList (Maybe Text)
allName = lens _allName (\ s a -> s{_allName = a})

-- | Controls which fields will be populated. Acceptable values are:
-- \"merchant\" and \"css\". The default value is \"merchant\".
allView :: Lens' AccountsList (Maybe AccountsListView)
allView = lens _allView (\ s a -> s{_allView = a})

-- | The token returned by the previous request.
allPageToken :: Lens' AccountsList (Maybe Text)
allPageToken
  = lens _allPageToken (\ s a -> s{_allPageToken = a})

-- | If view is set to \"css\", only return accounts that are assigned label
-- with given ID.
allLabel :: Lens' AccountsList (Maybe Word64)
allLabel
  = lens _allLabel (\ s a -> s{_allLabel = a}) .
      mapping _Coerce

-- | The maximum number of accounts to return in the response, used for
-- paging.
allMaxResults :: Lens' AccountsList (Maybe Word32)
allMaxResults
  = lens _allMaxResults
      (\ s a -> s{_allMaxResults = a})
      . mapping _Coerce

-- | JSONP
allCallback :: Lens' AccountsList (Maybe Text)
allCallback
  = lens _allCallback (\ s a -> s{_allCallback = a})

instance GoogleRequest AccountsList where
        type Rs AccountsList = AccountsListResponse
        type Scopes AccountsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsList'{..}
          = go _allMerchantId _allXgafv _allUploadProtocol
              _allAccessToken
              _allUploadType
              _allName
              _allView
              _allPageToken
              _allLabel
              _allMaxResults
              _allCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsListResource)
                      mempty
