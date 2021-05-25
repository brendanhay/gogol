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
-- Module      : Network.Google.Resource.Content.Datafeedstatuses.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the statuses of the datafeeds in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeedstatuses.list@.
module Network.Google.Resource.Content.Datafeedstatuses.List
    (
    -- * REST Resource
      DatafeedstatusesListResource

    -- * Creating a Request
    , datafeedstatusesList
    , DatafeedstatusesList

    -- * Request Lenses
    , dlXgafv
    , dlMerchantId
    , dlUploadProtocol
    , dlAccessToken
    , dlUploadType
    , dlPageToken
    , dlMaxResults
    , dlCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeedstatuses.list@ method which the
-- 'DatafeedstatusesList' request conforms to.
type DatafeedstatusesListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "datafeedstatuses" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] DatafeedstatusesListResponse

-- | Lists the statuses of the datafeeds in your Merchant Center account.
--
-- /See:/ 'datafeedstatusesList' smart constructor.
data DatafeedstatusesList =
  DatafeedstatusesList'
    { _dlXgafv :: !(Maybe Xgafv)
    , _dlMerchantId :: !(Textual Word64)
    , _dlUploadProtocol :: !(Maybe Text)
    , _dlAccessToken :: !(Maybe Text)
    , _dlUploadType :: !(Maybe Text)
    , _dlPageToken :: !(Maybe Text)
    , _dlMaxResults :: !(Maybe (Textual Word32))
    , _dlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedstatusesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlXgafv'
--
-- * 'dlMerchantId'
--
-- * 'dlUploadProtocol'
--
-- * 'dlAccessToken'
--
-- * 'dlUploadType'
--
-- * 'dlPageToken'
--
-- * 'dlMaxResults'
--
-- * 'dlCallback'
datafeedstatusesList
    :: Word64 -- ^ 'dlMerchantId'
    -> DatafeedstatusesList
datafeedstatusesList pDlMerchantId_ =
  DatafeedstatusesList'
    { _dlXgafv = Nothing
    , _dlMerchantId = _Coerce # pDlMerchantId_
    , _dlUploadProtocol = Nothing
    , _dlAccessToken = Nothing
    , _dlUploadType = Nothing
    , _dlPageToken = Nothing
    , _dlMaxResults = Nothing
    , _dlCallback = Nothing
    }


-- | V1 error format.
dlXgafv :: Lens' DatafeedstatusesList (Maybe Xgafv)
dlXgafv = lens _dlXgafv (\ s a -> s{_dlXgafv = a})

-- | The ID of the account that manages the datafeeds. This account cannot be
-- a multi-client account.
dlMerchantId :: Lens' DatafeedstatusesList Word64
dlMerchantId
  = lens _dlMerchantId (\ s a -> s{_dlMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dlUploadProtocol :: Lens' DatafeedstatusesList (Maybe Text)
dlUploadProtocol
  = lens _dlUploadProtocol
      (\ s a -> s{_dlUploadProtocol = a})

-- | OAuth access token.
dlAccessToken :: Lens' DatafeedstatusesList (Maybe Text)
dlAccessToken
  = lens _dlAccessToken
      (\ s a -> s{_dlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dlUploadType :: Lens' DatafeedstatusesList (Maybe Text)
dlUploadType
  = lens _dlUploadType (\ s a -> s{_dlUploadType = a})

-- | The token returned by the previous request.
dlPageToken :: Lens' DatafeedstatusesList (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | The maximum number of products to return in the response, used for
-- paging.
dlMaxResults :: Lens' DatafeedstatusesList (Maybe Word32)
dlMaxResults
  = lens _dlMaxResults (\ s a -> s{_dlMaxResults = a})
      . mapping _Coerce

-- | JSONP
dlCallback :: Lens' DatafeedstatusesList (Maybe Text)
dlCallback
  = lens _dlCallback (\ s a -> s{_dlCallback = a})

instance GoogleRequest DatafeedstatusesList where
        type Rs DatafeedstatusesList =
             DatafeedstatusesListResponse
        type Scopes DatafeedstatusesList =
             '["https://www.googleapis.com/auth/content"]
        requestClient DatafeedstatusesList'{..}
          = go _dlMerchantId _dlXgafv _dlUploadProtocol
              _dlAccessToken
              _dlUploadType
              _dlPageToken
              _dlMaxResults
              _dlCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedstatusesListResource)
                      mempty
