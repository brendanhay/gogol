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
-- Module      : Network.Google.Resource.Content.Regions.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a region definition from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.regions.delete@.
module Network.Google.Resource.Content.Regions.Delete
    (
    -- * REST Resource
      RegionsDeleteResource

    -- * Creating a Request
    , regionsDelete
    , RegionsDelete

    -- * Request Lenses
    , rddXgafv
    , rddMerchantId
    , rddUploadProtocol
    , rddRegionId
    , rddAccessToken
    , rddUploadType
    , rddCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.regions.delete@ method which the
-- 'RegionsDelete' request conforms to.
type RegionsDeleteResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "regions" :>
             Capture "regionId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a region definition from your Merchant Center account.
--
-- /See:/ 'regionsDelete' smart constructor.
data RegionsDelete =
  RegionsDelete'
    { _rddXgafv :: !(Maybe Xgafv)
    , _rddMerchantId :: !(Textual Int64)
    , _rddUploadProtocol :: !(Maybe Text)
    , _rddRegionId :: !Text
    , _rddAccessToken :: !(Maybe Text)
    , _rddUploadType :: !(Maybe Text)
    , _rddCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rddXgafv'
--
-- * 'rddMerchantId'
--
-- * 'rddUploadProtocol'
--
-- * 'rddRegionId'
--
-- * 'rddAccessToken'
--
-- * 'rddUploadType'
--
-- * 'rddCallback'
regionsDelete
    :: Int64 -- ^ 'rddMerchantId'
    -> Text -- ^ 'rddRegionId'
    -> RegionsDelete
regionsDelete pRddMerchantId_ pRddRegionId_ =
  RegionsDelete'
    { _rddXgafv = Nothing
    , _rddMerchantId = _Coerce # pRddMerchantId_
    , _rddUploadProtocol = Nothing
    , _rddRegionId = pRddRegionId_
    , _rddAccessToken = Nothing
    , _rddUploadType = Nothing
    , _rddCallback = Nothing
    }


-- | V1 error format.
rddXgafv :: Lens' RegionsDelete (Maybe Xgafv)
rddXgafv = lens _rddXgafv (\ s a -> s{_rddXgafv = a})

-- | Required. The id of the merchant for which to delete region definition.
rddMerchantId :: Lens' RegionsDelete Int64
rddMerchantId
  = lens _rddMerchantId
      (\ s a -> s{_rddMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rddUploadProtocol :: Lens' RegionsDelete (Maybe Text)
rddUploadProtocol
  = lens _rddUploadProtocol
      (\ s a -> s{_rddUploadProtocol = a})

-- | Required. The id of the region to delete.
rddRegionId :: Lens' RegionsDelete Text
rddRegionId
  = lens _rddRegionId (\ s a -> s{_rddRegionId = a})

-- | OAuth access token.
rddAccessToken :: Lens' RegionsDelete (Maybe Text)
rddAccessToken
  = lens _rddAccessToken
      (\ s a -> s{_rddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rddUploadType :: Lens' RegionsDelete (Maybe Text)
rddUploadType
  = lens _rddUploadType
      (\ s a -> s{_rddUploadType = a})

-- | JSONP
rddCallback :: Lens' RegionsDelete (Maybe Text)
rddCallback
  = lens _rddCallback (\ s a -> s{_rddCallback = a})

instance GoogleRequest RegionsDelete where
        type Rs RegionsDelete = ()
        type Scopes RegionsDelete =
             '["https://www.googleapis.com/auth/content"]
        requestClient RegionsDelete'{..}
          = go _rddMerchantId _rddRegionId _rddXgafv
              _rddUploadProtocol
              _rddAccessToken
              _rddUploadType
              _rddCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy RegionsDeleteResource)
                      mempty
