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
-- Module      : Network.Google.Resource.Content.Reports.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves merchant performance mertrics matching the search query and
-- optionally segmented by selected dimensions.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.reports.search@.
module Network.Google.Resource.Content.Reports.Search
    (
    -- * REST Resource
      ReportsSearchResource

    -- * Creating a Request
    , reportsSearch
    , ReportsSearch

    -- * Request Lenses
    , rsXgafv
    , rsMerchantId
    , rsUploadProtocol
    , rsAccessToken
    , rsUploadType
    , rsPayload
    , rsCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.reports.search@ method which the
-- 'ReportsSearch' request conforms to.
type ReportsSearchResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "reports" :>
             "search" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SearchRequest :>
                             Post '[JSON] SearchResponse

-- | Retrieves merchant performance mertrics matching the search query and
-- optionally segmented by selected dimensions.
--
-- /See:/ 'reportsSearch' smart constructor.
data ReportsSearch =
  ReportsSearch'
    { _rsXgafv :: !(Maybe Xgafv)
    , _rsMerchantId :: !(Textual Int64)
    , _rsUploadProtocol :: !(Maybe Text)
    , _rsAccessToken :: !(Maybe Text)
    , _rsUploadType :: !(Maybe Text)
    , _rsPayload :: !SearchRequest
    , _rsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsXgafv'
--
-- * 'rsMerchantId'
--
-- * 'rsUploadProtocol'
--
-- * 'rsAccessToken'
--
-- * 'rsUploadType'
--
-- * 'rsPayload'
--
-- * 'rsCallback'
reportsSearch
    :: Int64 -- ^ 'rsMerchantId'
    -> SearchRequest -- ^ 'rsPayload'
    -> ReportsSearch
reportsSearch pRsMerchantId_ pRsPayload_ =
  ReportsSearch'
    { _rsXgafv = Nothing
    , _rsMerchantId = _Coerce # pRsMerchantId_
    , _rsUploadProtocol = Nothing
    , _rsAccessToken = Nothing
    , _rsUploadType = Nothing
    , _rsPayload = pRsPayload_
    , _rsCallback = Nothing
    }


-- | V1 error format.
rsXgafv :: Lens' ReportsSearch (Maybe Xgafv)
rsXgafv = lens _rsXgafv (\ s a -> s{_rsXgafv = a})

-- | Required. Id of the merchant making the call. Must be a standalone
-- account or an MCA subaccount.
rsMerchantId :: Lens' ReportsSearch Int64
rsMerchantId
  = lens _rsMerchantId (\ s a -> s{_rsMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rsUploadProtocol :: Lens' ReportsSearch (Maybe Text)
rsUploadProtocol
  = lens _rsUploadProtocol
      (\ s a -> s{_rsUploadProtocol = a})

-- | OAuth access token.
rsAccessToken :: Lens' ReportsSearch (Maybe Text)
rsAccessToken
  = lens _rsAccessToken
      (\ s a -> s{_rsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rsUploadType :: Lens' ReportsSearch (Maybe Text)
rsUploadType
  = lens _rsUploadType (\ s a -> s{_rsUploadType = a})

-- | Multipart request metadata.
rsPayload :: Lens' ReportsSearch SearchRequest
rsPayload
  = lens _rsPayload (\ s a -> s{_rsPayload = a})

-- | JSONP
rsCallback :: Lens' ReportsSearch (Maybe Text)
rsCallback
  = lens _rsCallback (\ s a -> s{_rsCallback = a})

instance GoogleRequest ReportsSearch where
        type Rs ReportsSearch = SearchResponse
        type Scopes ReportsSearch =
             '["https://www.googleapis.com/auth/content"]
        requestClient ReportsSearch'{..}
          = go _rsMerchantId _rsXgafv _rsUploadProtocol
              _rsAccessToken
              _rsUploadType
              _rsCallback
              (Just AltJSON)
              _rsPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy ReportsSearchResource)
                      mempty
