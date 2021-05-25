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
-- Module      : Network.Google.Resource.Manufacturers.Accounts.Products.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the products in a Manufacturer Center account.
--
-- /See:/ <https://developers.google.com/manufacturers/ Manufacturer Center API Reference> for @manufacturers.accounts.products.list@.
module Network.Google.Resource.Manufacturers.Accounts.Products.List
    (
    -- * REST Resource
      AccountsProductsListResource

    -- * Creating a Request
    , accountsProductsList
    , AccountsProductsList

    -- * Request Lenses
    , aplParent
    , aplInclude
    , aplXgafv
    , aplUploadProtocol
    , aplAccessToken
    , aplUploadType
    , aplPageToken
    , aplPageSize
    , aplCallback
    ) where

import Network.Google.Manufacturers.Types
import Network.Google.Prelude

-- | A resource alias for @manufacturers.accounts.products.list@ method which the
-- 'AccountsProductsList' request conforms to.
type AccountsProductsListResource =
     "v1" :>
       Capture "parent" Text :>
         "products" :>
           QueryParams "include" AccountsProductsListInclude :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListProductsResponse

-- | Lists all the products in a Manufacturer Center account.
--
-- /See:/ 'accountsProductsList' smart constructor.
data AccountsProductsList =
  AccountsProductsList'
    { _aplParent :: !Text
    , _aplInclude :: !(Maybe [AccountsProductsListInclude])
    , _aplXgafv :: !(Maybe Xgafv)
    , _aplUploadProtocol :: !(Maybe Text)
    , _aplAccessToken :: !(Maybe Text)
    , _aplUploadType :: !(Maybe Text)
    , _aplPageToken :: !(Maybe Text)
    , _aplPageSize :: !(Maybe (Textual Int32))
    , _aplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsProductsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplParent'
--
-- * 'aplInclude'
--
-- * 'aplXgafv'
--
-- * 'aplUploadProtocol'
--
-- * 'aplAccessToken'
--
-- * 'aplUploadType'
--
-- * 'aplPageToken'
--
-- * 'aplPageSize'
--
-- * 'aplCallback'
accountsProductsList
    :: Text -- ^ 'aplParent'
    -> AccountsProductsList
accountsProductsList pAplParent_ =
  AccountsProductsList'
    { _aplParent = pAplParent_
    , _aplInclude = Nothing
    , _aplXgafv = Nothing
    , _aplUploadProtocol = Nothing
    , _aplAccessToken = Nothing
    , _aplUploadType = Nothing
    , _aplPageToken = Nothing
    , _aplPageSize = Nothing
    , _aplCallback = Nothing
    }


-- | Parent ID in the format \`accounts\/{account_id}\`. \`account_id\` - The
-- ID of the Manufacturer Center account.
aplParent :: Lens' AccountsProductsList Text
aplParent
  = lens _aplParent (\ s a -> s{_aplParent = a})

-- | The information to be included in the response. Only sections listed
-- here will be returned.
aplInclude :: Lens' AccountsProductsList [AccountsProductsListInclude]
aplInclude
  = lens _aplInclude (\ s a -> s{_aplInclude = a}) .
      _Default
      . _Coerce

-- | V1 error format.
aplXgafv :: Lens' AccountsProductsList (Maybe Xgafv)
aplXgafv = lens _aplXgafv (\ s a -> s{_aplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aplUploadProtocol :: Lens' AccountsProductsList (Maybe Text)
aplUploadProtocol
  = lens _aplUploadProtocol
      (\ s a -> s{_aplUploadProtocol = a})

-- | OAuth access token.
aplAccessToken :: Lens' AccountsProductsList (Maybe Text)
aplAccessToken
  = lens _aplAccessToken
      (\ s a -> s{_aplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aplUploadType :: Lens' AccountsProductsList (Maybe Text)
aplUploadType
  = lens _aplUploadType
      (\ s a -> s{_aplUploadType = a})

-- | The token returned by the previous request.
aplPageToken :: Lens' AccountsProductsList (Maybe Text)
aplPageToken
  = lens _aplPageToken (\ s a -> s{_aplPageToken = a})

-- | Maximum number of product statuses to return in the response, used for
-- paging.
aplPageSize :: Lens' AccountsProductsList (Maybe Int32)
aplPageSize
  = lens _aplPageSize (\ s a -> s{_aplPageSize = a}) .
      mapping _Coerce

-- | JSONP
aplCallback :: Lens' AccountsProductsList (Maybe Text)
aplCallback
  = lens _aplCallback (\ s a -> s{_aplCallback = a})

instance GoogleRequest AccountsProductsList where
        type Rs AccountsProductsList = ListProductsResponse
        type Scopes AccountsProductsList =
             '["https://www.googleapis.com/auth/manufacturercenter"]
        requestClient AccountsProductsList'{..}
          = go _aplParent (_aplInclude ^. _Default) _aplXgafv
              _aplUploadProtocol
              _aplAccessToken
              _aplUploadType
              _aplPageToken
              _aplPageSize
              _aplCallback
              (Just AltJSON)
              manufacturersService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsProductsListResource)
                      mempty
