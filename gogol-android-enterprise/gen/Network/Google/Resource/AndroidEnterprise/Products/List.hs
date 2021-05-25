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
    , plXgafv
    , plUploadProtocol
    , plEnterpriseId
    , plAccessToken
    , plToken
    , plUploadType
    , plQuery
    , plLanguage
    , plApproved
    , plMaxResults
    , plCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.products.list@ method which the
-- 'ProductsList' request conforms to.
type ProductsListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "query" Text :>
                           QueryParam "language" Text :>
                             QueryParam "approved" Bool :>
                               QueryParam "maxResults" (Textual Word32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ProductsListResponse

-- | Finds approved products that match a query, or all approved products if
-- there is no query.
--
-- /See:/ 'productsList' smart constructor.
data ProductsList =
  ProductsList'
    { _plXgafv :: !(Maybe Xgafv)
    , _plUploadProtocol :: !(Maybe Text)
    , _plEnterpriseId :: !Text
    , _plAccessToken :: !(Maybe Text)
    , _plToken :: !(Maybe Text)
    , _plUploadType :: !(Maybe Text)
    , _plQuery :: !(Maybe Text)
    , _plLanguage :: !(Maybe Text)
    , _plApproved :: !(Maybe Bool)
    , _plMaxResults :: !(Maybe (Textual Word32))
    , _plCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plXgafv'
--
-- * 'plUploadProtocol'
--
-- * 'plEnterpriseId'
--
-- * 'plAccessToken'
--
-- * 'plToken'
--
-- * 'plUploadType'
--
-- * 'plQuery'
--
-- * 'plLanguage'
--
-- * 'plApproved'
--
-- * 'plMaxResults'
--
-- * 'plCallback'
productsList
    :: Text -- ^ 'plEnterpriseId'
    -> ProductsList
productsList pPlEnterpriseId_ =
  ProductsList'
    { _plXgafv = Nothing
    , _plUploadProtocol = Nothing
    , _plEnterpriseId = pPlEnterpriseId_
    , _plAccessToken = Nothing
    , _plToken = Nothing
    , _plUploadType = Nothing
    , _plQuery = Nothing
    , _plLanguage = Nothing
    , _plApproved = Nothing
    , _plMaxResults = Nothing
    , _plCallback = Nothing
    }


-- | V1 error format.
plXgafv :: Lens' ProductsList (Maybe Xgafv)
plXgafv = lens _plXgafv (\ s a -> s{_plXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plUploadProtocol :: Lens' ProductsList (Maybe Text)
plUploadProtocol
  = lens _plUploadProtocol
      (\ s a -> s{_plUploadProtocol = a})

-- | The ID of the enterprise.
plEnterpriseId :: Lens' ProductsList Text
plEnterpriseId
  = lens _plEnterpriseId
      (\ s a -> s{_plEnterpriseId = a})

-- | OAuth access token.
plAccessToken :: Lens' ProductsList (Maybe Text)
plAccessToken
  = lens _plAccessToken
      (\ s a -> s{_plAccessToken = a})

-- | Defines the token of the page to return, usually taken from
-- TokenPagination. This can only be used if token paging is enabled.
plToken :: Lens' ProductsList (Maybe Text)
plToken = lens _plToken (\ s a -> s{_plToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plUploadType :: Lens' ProductsList (Maybe Text)
plUploadType
  = lens _plUploadType (\ s a -> s{_plUploadType = a})

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

-- | Defines how many results the list operation should return. The default
-- number depends on the resource collection.
plMaxResults :: Lens' ProductsList (Maybe Word32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})
      . mapping _Coerce

-- | JSONP
plCallback :: Lens' ProductsList (Maybe Text)
plCallback
  = lens _plCallback (\ s a -> s{_plCallback = a})

instance GoogleRequest ProductsList where
        type Rs ProductsList = ProductsListResponse
        type Scopes ProductsList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ProductsList'{..}
          = go _plEnterpriseId _plXgafv _plUploadProtocol
              _plAccessToken
              _plToken
              _plUploadType
              _plQuery
              _plLanguage
              _plApproved
              _plMaxResults
              _plCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy ProductsListResource)
                      mempty
