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
-- Module      : Network.Google.Resource.Content.Regions.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a region definition in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.regions.create@.
module Network.Google.Resource.Content.Regions.Create
    (
    -- * REST Resource
      RegionsCreateResource

    -- * Creating a Request
    , regionsCreate
    , RegionsCreate

    -- * Request Lenses
    , rc1Xgafv
    , rc1MerchantId
    , rc1UploadProtocol
    , rc1RegionId
    , rc1AccessToken
    , rc1UploadType
    , rc1Payload
    , rc1Callback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.regions.create@ method which the
-- 'RegionsCreate' request conforms to.
type RegionsCreateResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "regions" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "regionId" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Region :> Post '[JSON] Region

-- | Creates a region definition in your Merchant Center account.
--
-- /See:/ 'regionsCreate' smart constructor.
data RegionsCreate =
  RegionsCreate'
    { _rc1Xgafv :: !(Maybe Xgafv)
    , _rc1MerchantId :: !(Textual Int64)
    , _rc1UploadProtocol :: !(Maybe Text)
    , _rc1RegionId :: !(Maybe Text)
    , _rc1AccessToken :: !(Maybe Text)
    , _rc1UploadType :: !(Maybe Text)
    , _rc1Payload :: !Region
    , _rc1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rc1Xgafv'
--
-- * 'rc1MerchantId'
--
-- * 'rc1UploadProtocol'
--
-- * 'rc1RegionId'
--
-- * 'rc1AccessToken'
--
-- * 'rc1UploadType'
--
-- * 'rc1Payload'
--
-- * 'rc1Callback'
regionsCreate
    :: Int64 -- ^ 'rc1MerchantId'
    -> Region -- ^ 'rc1Payload'
    -> RegionsCreate
regionsCreate pRc1MerchantId_ pRc1Payload_ =
  RegionsCreate'
    { _rc1Xgafv = Nothing
    , _rc1MerchantId = _Coerce # pRc1MerchantId_
    , _rc1UploadProtocol = Nothing
    , _rc1RegionId = Nothing
    , _rc1AccessToken = Nothing
    , _rc1UploadType = Nothing
    , _rc1Payload = pRc1Payload_
    , _rc1Callback = Nothing
    }


-- | V1 error format.
rc1Xgafv :: Lens' RegionsCreate (Maybe Xgafv)
rc1Xgafv = lens _rc1Xgafv (\ s a -> s{_rc1Xgafv = a})

-- | Required. The id of the merchant for which to create region definition.
rc1MerchantId :: Lens' RegionsCreate Int64
rc1MerchantId
  = lens _rc1MerchantId
      (\ s a -> s{_rc1MerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rc1UploadProtocol :: Lens' RegionsCreate (Maybe Text)
rc1UploadProtocol
  = lens _rc1UploadProtocol
      (\ s a -> s{_rc1UploadProtocol = a})

-- | Required. The id of the region to create.
rc1RegionId :: Lens' RegionsCreate (Maybe Text)
rc1RegionId
  = lens _rc1RegionId (\ s a -> s{_rc1RegionId = a})

-- | OAuth access token.
rc1AccessToken :: Lens' RegionsCreate (Maybe Text)
rc1AccessToken
  = lens _rc1AccessToken
      (\ s a -> s{_rc1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rc1UploadType :: Lens' RegionsCreate (Maybe Text)
rc1UploadType
  = lens _rc1UploadType
      (\ s a -> s{_rc1UploadType = a})

-- | Multipart request metadata.
rc1Payload :: Lens' RegionsCreate Region
rc1Payload
  = lens _rc1Payload (\ s a -> s{_rc1Payload = a})

-- | JSONP
rc1Callback :: Lens' RegionsCreate (Maybe Text)
rc1Callback
  = lens _rc1Callback (\ s a -> s{_rc1Callback = a})

instance GoogleRequest RegionsCreate where
        type Rs RegionsCreate = Region
        type Scopes RegionsCreate =
             '["https://www.googleapis.com/auth/content"]
        requestClient RegionsCreate'{..}
          = go _rc1MerchantId _rc1Xgafv _rc1UploadProtocol
              _rc1RegionId
              _rc1AccessToken
              _rc1UploadType
              _rc1Callback
              (Just AltJSON)
              _rc1Payload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy RegionsCreateResource)
                      mempty
