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
-- Module      : Network.Google.Resource.Content.Regions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a region definition in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.regions.patch@.
module Network.Google.Resource.Content.Regions.Patch
    (
    -- * REST Resource
      RegionsPatchResource

    -- * Creating a Request
    , regionsPatch
    , RegionsPatch

    -- * Request Lenses
    , rpXgafv
    , rpMerchantId
    , rpUploadProtocol
    , rpRegionId
    , rpUpdateMask
    , rpAccessToken
    , rpUploadType
    , rpPayload
    , rpCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.regions.patch@ method which the
-- 'RegionsPatch' request conforms to.
type RegionsPatchResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "regions" :>
             Capture "regionId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "updateMask" GFieldMask :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Region :> Patch '[JSON] Region

-- | Updates a region definition in your Merchant Center account.
--
-- /See:/ 'regionsPatch' smart constructor.
data RegionsPatch =
  RegionsPatch'
    { _rpXgafv :: !(Maybe Xgafv)
    , _rpMerchantId :: !(Textual Int64)
    , _rpUploadProtocol :: !(Maybe Text)
    , _rpRegionId :: !Text
    , _rpUpdateMask :: !(Maybe GFieldMask)
    , _rpAccessToken :: !(Maybe Text)
    , _rpUploadType :: !(Maybe Text)
    , _rpPayload :: !Region
    , _rpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpXgafv'
--
-- * 'rpMerchantId'
--
-- * 'rpUploadProtocol'
--
-- * 'rpRegionId'
--
-- * 'rpUpdateMask'
--
-- * 'rpAccessToken'
--
-- * 'rpUploadType'
--
-- * 'rpPayload'
--
-- * 'rpCallback'
regionsPatch
    :: Int64 -- ^ 'rpMerchantId'
    -> Text -- ^ 'rpRegionId'
    -> Region -- ^ 'rpPayload'
    -> RegionsPatch
regionsPatch pRpMerchantId_ pRpRegionId_ pRpPayload_ =
  RegionsPatch'
    { _rpXgafv = Nothing
    , _rpMerchantId = _Coerce # pRpMerchantId_
    , _rpUploadProtocol = Nothing
    , _rpRegionId = pRpRegionId_
    , _rpUpdateMask = Nothing
    , _rpAccessToken = Nothing
    , _rpUploadType = Nothing
    , _rpPayload = pRpPayload_
    , _rpCallback = Nothing
    }


-- | V1 error format.
rpXgafv :: Lens' RegionsPatch (Maybe Xgafv)
rpXgafv = lens _rpXgafv (\ s a -> s{_rpXgafv = a})

-- | Required. The id of the merchant for which to update region definition.
rpMerchantId :: Lens' RegionsPatch Int64
rpMerchantId
  = lens _rpMerchantId (\ s a -> s{_rpMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rpUploadProtocol :: Lens' RegionsPatch (Maybe Text)
rpUploadProtocol
  = lens _rpUploadProtocol
      (\ s a -> s{_rpUploadProtocol = a})

-- | Required. The id of the region to update.
rpRegionId :: Lens' RegionsPatch Text
rpRegionId
  = lens _rpRegionId (\ s a -> s{_rpRegionId = a})

-- | Optional. The comma-separated field mask indicating the fields to
-- update. Example: \`\"displayName,postalCodeArea.regionCode\"\`.
rpUpdateMask :: Lens' RegionsPatch (Maybe GFieldMask)
rpUpdateMask
  = lens _rpUpdateMask (\ s a -> s{_rpUpdateMask = a})

-- | OAuth access token.
rpAccessToken :: Lens' RegionsPatch (Maybe Text)
rpAccessToken
  = lens _rpAccessToken
      (\ s a -> s{_rpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rpUploadType :: Lens' RegionsPatch (Maybe Text)
rpUploadType
  = lens _rpUploadType (\ s a -> s{_rpUploadType = a})

-- | Multipart request metadata.
rpPayload :: Lens' RegionsPatch Region
rpPayload
  = lens _rpPayload (\ s a -> s{_rpPayload = a})

-- | JSONP
rpCallback :: Lens' RegionsPatch (Maybe Text)
rpCallback
  = lens _rpCallback (\ s a -> s{_rpCallback = a})

instance GoogleRequest RegionsPatch where
        type Rs RegionsPatch = Region
        type Scopes RegionsPatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient RegionsPatch'{..}
          = go _rpMerchantId _rpRegionId _rpXgafv
              _rpUploadProtocol
              _rpUpdateMask
              _rpAccessToken
              _rpUploadType
              _rpCallback
              (Just AltJSON)
              _rpPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy RegionsPatchResource)
                      mempty
