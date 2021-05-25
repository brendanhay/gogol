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
-- Module      : Network.Google.Resource.Content.Regions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a region defined in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.regions.get@.
module Network.Google.Resource.Content.Regions.Get
    (
    -- * REST Resource
      RegionsGetResource

    -- * Creating a Request
    , regionsGet
    , RegionsGet

    -- * Request Lenses
    , regXgafv
    , regMerchantId
    , regUploadProtocol
    , regRegionId
    , regAccessToken
    , regUploadType
    , regCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.regions.get@ method which the
-- 'RegionsGet' request conforms to.
type RegionsGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] Region

-- | Retrieves a region defined in your Merchant Center account.
--
-- /See:/ 'regionsGet' smart constructor.
data RegionsGet =
  RegionsGet'
    { _regXgafv :: !(Maybe Xgafv)
    , _regMerchantId :: !(Textual Int64)
    , _regUploadProtocol :: !(Maybe Text)
    , _regRegionId :: !Text
    , _regAccessToken :: !(Maybe Text)
    , _regUploadType :: !(Maybe Text)
    , _regCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'regXgafv'
--
-- * 'regMerchantId'
--
-- * 'regUploadProtocol'
--
-- * 'regRegionId'
--
-- * 'regAccessToken'
--
-- * 'regUploadType'
--
-- * 'regCallback'
regionsGet
    :: Int64 -- ^ 'regMerchantId'
    -> Text -- ^ 'regRegionId'
    -> RegionsGet
regionsGet pRegMerchantId_ pRegRegionId_ =
  RegionsGet'
    { _regXgafv = Nothing
    , _regMerchantId = _Coerce # pRegMerchantId_
    , _regUploadProtocol = Nothing
    , _regRegionId = pRegRegionId_
    , _regAccessToken = Nothing
    , _regUploadType = Nothing
    , _regCallback = Nothing
    }


-- | V1 error format.
regXgafv :: Lens' RegionsGet (Maybe Xgafv)
regXgafv = lens _regXgafv (\ s a -> s{_regXgafv = a})

-- | Required. The id of the merchant for which to retrieve region
-- definition.
regMerchantId :: Lens' RegionsGet Int64
regMerchantId
  = lens _regMerchantId
      (\ s a -> s{_regMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
regUploadProtocol :: Lens' RegionsGet (Maybe Text)
regUploadProtocol
  = lens _regUploadProtocol
      (\ s a -> s{_regUploadProtocol = a})

-- | Required. The id of the region to retrieve.
regRegionId :: Lens' RegionsGet Text
regRegionId
  = lens _regRegionId (\ s a -> s{_regRegionId = a})

-- | OAuth access token.
regAccessToken :: Lens' RegionsGet (Maybe Text)
regAccessToken
  = lens _regAccessToken
      (\ s a -> s{_regAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
regUploadType :: Lens' RegionsGet (Maybe Text)
regUploadType
  = lens _regUploadType
      (\ s a -> s{_regUploadType = a})

-- | JSONP
regCallback :: Lens' RegionsGet (Maybe Text)
regCallback
  = lens _regCallback (\ s a -> s{_regCallback = a})

instance GoogleRequest RegionsGet where
        type Rs RegionsGet = Region
        type Scopes RegionsGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient RegionsGet'{..}
          = go _regMerchantId _regRegionId _regXgafv
              _regUploadProtocol
              _regAccessToken
              _regUploadType
              _regCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy RegionsGetResource)
                      mempty
