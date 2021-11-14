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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all in-app products - both managed products and subscriptions.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.list@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.List
    (
    -- * REST Resource
      InAppProductsListResource

    -- * Creating a Request
    , inAppProductsList
    , InAppProductsList

    -- * Request Lenses
    , iaplXgafv
    , iaplUploadProtocol
    , iaplPackageName
    , iaplAccessToken
    , iaplToken
    , iaplUploadType
    , iaplStartIndex
    , iaplMaxResults
    , iaplCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.inappproducts.list@ method which the
-- 'InAppProductsList' request conforms to.
type InAppProductsListResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "startIndex" (Textual Word32) :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] InAppProductsListResponse

-- | Lists all in-app products - both managed products and subscriptions.
--
-- /See:/ 'inAppProductsList' smart constructor.
data InAppProductsList =
  InAppProductsList'
    { _iaplXgafv :: !(Maybe Xgafv)
    , _iaplUploadProtocol :: !(Maybe Text)
    , _iaplPackageName :: !Text
    , _iaplAccessToken :: !(Maybe Text)
    , _iaplToken :: !(Maybe Text)
    , _iaplUploadType :: !(Maybe Text)
    , _iaplStartIndex :: !(Maybe (Textual Word32))
    , _iaplMaxResults :: !(Maybe (Textual Word32))
    , _iaplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InAppProductsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaplXgafv'
--
-- * 'iaplUploadProtocol'
--
-- * 'iaplPackageName'
--
-- * 'iaplAccessToken'
--
-- * 'iaplToken'
--
-- * 'iaplUploadType'
--
-- * 'iaplStartIndex'
--
-- * 'iaplMaxResults'
--
-- * 'iaplCallback'
inAppProductsList
    :: Text -- ^ 'iaplPackageName'
    -> InAppProductsList
inAppProductsList pIaplPackageName_ =
  InAppProductsList'
    { _iaplXgafv = Nothing
    , _iaplUploadProtocol = Nothing
    , _iaplPackageName = pIaplPackageName_
    , _iaplAccessToken = Nothing
    , _iaplToken = Nothing
    , _iaplUploadType = Nothing
    , _iaplStartIndex = Nothing
    , _iaplMaxResults = Nothing
    , _iaplCallback = Nothing
    }


-- | V1 error format.
iaplXgafv :: Lens' InAppProductsList (Maybe Xgafv)
iaplXgafv
  = lens _iaplXgafv (\ s a -> s{_iaplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iaplUploadProtocol :: Lens' InAppProductsList (Maybe Text)
iaplUploadProtocol
  = lens _iaplUploadProtocol
      (\ s a -> s{_iaplUploadProtocol = a})

-- | Package name of the app.
iaplPackageName :: Lens' InAppProductsList Text
iaplPackageName
  = lens _iaplPackageName
      (\ s a -> s{_iaplPackageName = a})

-- | OAuth access token.
iaplAccessToken :: Lens' InAppProductsList (Maybe Text)
iaplAccessToken
  = lens _iaplAccessToken
      (\ s a -> s{_iaplAccessToken = a})

-- | Pagination token. If empty, list starts at the first product.
iaplToken :: Lens' InAppProductsList (Maybe Text)
iaplToken
  = lens _iaplToken (\ s a -> s{_iaplToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iaplUploadType :: Lens' InAppProductsList (Maybe Text)
iaplUploadType
  = lens _iaplUploadType
      (\ s a -> s{_iaplUploadType = a})

-- | The index of the first element to return.
iaplStartIndex :: Lens' InAppProductsList (Maybe Word32)
iaplStartIndex
  = lens _iaplStartIndex
      (\ s a -> s{_iaplStartIndex = a})
      . mapping _Coerce

-- | How many results the list operation should return.
iaplMaxResults :: Lens' InAppProductsList (Maybe Word32)
iaplMaxResults
  = lens _iaplMaxResults
      (\ s a -> s{_iaplMaxResults = a})
      . mapping _Coerce

-- | JSONP
iaplCallback :: Lens' InAppProductsList (Maybe Text)
iaplCallback
  = lens _iaplCallback (\ s a -> s{_iaplCallback = a})

instance GoogleRequest InAppProductsList where
        type Rs InAppProductsList = InAppProductsListResponse
        type Scopes InAppProductsList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient InAppProductsList'{..}
          = go _iaplPackageName _iaplXgafv _iaplUploadProtocol
              _iaplAccessToken
              _iaplToken
              _iaplUploadType
              _iaplStartIndex
              _iaplMaxResults
              _iaplCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy InAppProductsListResource)
                      mempty
