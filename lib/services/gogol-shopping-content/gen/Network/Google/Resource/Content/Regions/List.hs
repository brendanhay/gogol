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
-- Module      : Network.Google.Resource.Content.Regions.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the regions in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.regions.list@.
module Network.Google.Resource.Content.Regions.List
    (
    -- * REST Resource
      RegionsListResource

    -- * Creating a Request
    , regionsList
    , RegionsList

    -- * Request Lenses
    , regeXgafv
    , regeMerchantId
    , regeUploadProtocol
    , regeAccessToken
    , regeUploadType
    , regePageToken
    , regePageSize
    , regeCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.regions.list@ method which the
-- 'RegionsList' request conforms to.
type RegionsListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "regions" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListRegionsResponse

-- | Lists the regions in your Merchant Center account.
--
-- /See:/ 'regionsList' smart constructor.
data RegionsList =
  RegionsList'
    { _regeXgafv :: !(Maybe Xgafv)
    , _regeMerchantId :: !(Textual Int64)
    , _regeUploadProtocol :: !(Maybe Text)
    , _regeAccessToken :: !(Maybe Text)
    , _regeUploadType :: !(Maybe Text)
    , _regePageToken :: !(Maybe Text)
    , _regePageSize :: !(Maybe (Textual Int32))
    , _regeCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'regeXgafv'
--
-- * 'regeMerchantId'
--
-- * 'regeUploadProtocol'
--
-- * 'regeAccessToken'
--
-- * 'regeUploadType'
--
-- * 'regePageToken'
--
-- * 'regePageSize'
--
-- * 'regeCallback'
regionsList
    :: Int64 -- ^ 'regeMerchantId'
    -> RegionsList
regionsList pRegeMerchantId_ =
  RegionsList'
    { _regeXgafv = Nothing
    , _regeMerchantId = _Coerce # pRegeMerchantId_
    , _regeUploadProtocol = Nothing
    , _regeAccessToken = Nothing
    , _regeUploadType = Nothing
    , _regePageToken = Nothing
    , _regePageSize = Nothing
    , _regeCallback = Nothing
    }


-- | V1 error format.
regeXgafv :: Lens' RegionsList (Maybe Xgafv)
regeXgafv
  = lens _regeXgafv (\ s a -> s{_regeXgafv = a})

-- | Required. The id of the merchant for which to list region definitions.
regeMerchantId :: Lens' RegionsList Int64
regeMerchantId
  = lens _regeMerchantId
      (\ s a -> s{_regeMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
regeUploadProtocol :: Lens' RegionsList (Maybe Text)
regeUploadProtocol
  = lens _regeUploadProtocol
      (\ s a -> s{_regeUploadProtocol = a})

-- | OAuth access token.
regeAccessToken :: Lens' RegionsList (Maybe Text)
regeAccessToken
  = lens _regeAccessToken
      (\ s a -> s{_regeAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
regeUploadType :: Lens' RegionsList (Maybe Text)
regeUploadType
  = lens _regeUploadType
      (\ s a -> s{_regeUploadType = a})

-- | A page token, received from a previous \`ListRegions\` call. Provide
-- this to retrieve the subsequent page. When paginating, all other
-- parameters provided to \`ListRegions\` must match the call that provided
-- the page token.
regePageToken :: Lens' RegionsList (Maybe Text)
regePageToken
  = lens _regePageToken
      (\ s a -> s{_regePageToken = a})

-- | The maximum number of regions to return. The service may return fewer
-- than this value. If unspecified, at most 50 rules will be returned. The
-- maximum value is 1000; values above 1000 will be coerced to 1000.
regePageSize :: Lens' RegionsList (Maybe Int32)
regePageSize
  = lens _regePageSize (\ s a -> s{_regePageSize = a})
      . mapping _Coerce

-- | JSONP
regeCallback :: Lens' RegionsList (Maybe Text)
regeCallback
  = lens _regeCallback (\ s a -> s{_regeCallback = a})

instance GoogleRequest RegionsList where
        type Rs RegionsList = ListRegionsResponse
        type Scopes RegionsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient RegionsList'{..}
          = go _regeMerchantId _regeXgafv _regeUploadProtocol
              _regeAccessToken
              _regeUploadType
              _regePageToken
              _regePageSize
              _regeCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy RegionsListResource)
                      mempty
