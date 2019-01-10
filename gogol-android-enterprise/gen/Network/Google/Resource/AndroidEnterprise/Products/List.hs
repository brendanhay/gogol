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
-- Module      : Network.Google.Resource.AndroidEnterprise.Products.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds approved products that match a query, or all approved products if
-- there is no query.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.products.list@.
module Network.Google.Resource.AndroidEnterprise.Products.List
    (
    -- * REST Resource
      ProductsListResource

    -- * Creating a Request
    , productsList
    , ProductsList

    -- * Request Lenses
    , plEnterpriseId
    , plToken
    , plQuery
    , plLanguage
    , plApproved
    , plMaxResults
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.products.list@ method which the
-- 'ProductsList' request conforms to.
type ProductsListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               QueryParam "token" Text :>
                 QueryParam "query" Text :>
                   QueryParam "language" Text :>
                     QueryParam "approved" Bool :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ProductsListResponse

-- | Finds approved products that match a query, or all approved products if
-- there is no query.
--
-- /See:/ 'productsList' smart constructor.
data ProductsList = ProductsList'
    { _plEnterpriseId :: !Text
    , _plToken        :: !(Maybe Text)
    , _plQuery        :: !(Maybe Text)
    , _plLanguage     :: !(Maybe Text)
    , _plApproved     :: !(Maybe Bool)
    , _plMaxResults   :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plEnterpriseId'
--
-- * 'plToken'
--
-- * 'plQuery'
--
-- * 'plLanguage'
--
-- * 'plApproved'
--
-- * 'plMaxResults'
productsList
    :: Text -- ^ 'plEnterpriseId'
    -> ProductsList
productsList pPlEnterpriseId_ =
    ProductsList'
    { _plEnterpriseId = pPlEnterpriseId_
    , _plToken = Nothing
    , _plQuery = Nothing
    , _plLanguage = Nothing
    , _plApproved = Nothing
    , _plMaxResults = Nothing
    }

-- | The ID of the enterprise.
plEnterpriseId :: Lens' ProductsList Text
plEnterpriseId
  = lens _plEnterpriseId
      (\ s a -> s{_plEnterpriseId = a})

-- | A pagination token is contained in a request\'\'s response when there
-- are more products. The token can be used in a subsequent request to
-- obtain more products, and so forth. This parameter cannot be used in the
-- initial request.
plToken :: Lens' ProductsList (Maybe Text)
plToken = lens _plToken (\ s a -> s{_plToken = a})

-- | The search query as typed in the Google Play store search box. If
-- omitted, all approved apps will be returned (using the pagination
-- parameters), including apps that are not available in the store (e.g.
-- unpublished apps).
plQuery :: Lens' ProductsList (Maybe Text)
plQuery = lens _plQuery (\ s a -> s{_plQuery = a})

-- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\",
-- \"de\"). Results are returned in the language best matching the
-- preferred language.
plLanguage :: Lens' ProductsList (Maybe Text)
plLanguage
  = lens _plLanguage (\ s a -> s{_plLanguage = a})

-- | Specifies whether to search among all products (false) or among only
-- products that have been approved (true). Only \"true\" is supported, and
-- should be specified.
plApproved :: Lens' ProductsList (Maybe Bool)
plApproved
  = lens _plApproved (\ s a -> s{_plApproved = a})

-- | Specifies the maximum number of products that can be returned per
-- request. If not specified, uses a default value of 100, which is also
-- the maximum retrievable within a single response.
plMaxResults :: Lens' ProductsList (Maybe Word32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ProductsList where
        type Rs ProductsList = ProductsListResponse
        type Scopes ProductsList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ProductsList'{..}
          = go _plEnterpriseId _plToken _plQuery _plLanguage
              _plApproved
              _plMaxResults
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy ProductsListResource)
                      mempty
