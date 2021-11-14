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
-- Module      : Network.Google.Resource.Content.Buyongoogleprograms.Activate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reactivates the BoG program in your Merchant Center account. Moves the
-- program to the active state when allowed, e.g. when paused. Important:
-- This method is only whitelisted for selected merchants.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.buyongoogleprograms.activate@.
module Network.Google.Resource.Content.Buyongoogleprograms.Activate
    (
    -- * REST Resource
      BuyongoogleprogramsActivateResource

    -- * Creating a Request
    , buyongoogleprogramsActivate
    , BuyongoogleprogramsActivate

    -- * Request Lenses
    , baXgafv
    , baMerchantId
    , baUploadProtocol
    , baRegionCode
    , baAccessToken
    , baUploadType
    , baPayload
    , baCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.buyongoogleprograms.activate@ method which the
-- 'BuyongoogleprogramsActivate' request conforms to.
type BuyongoogleprogramsActivateResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "buyongoogleprograms" :>
             Capture "regionCode" Text :>
               "activate" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ActivateBuyOnGoogleProgramRequest
                               :> Post '[JSON] ()

-- | Reactivates the BoG program in your Merchant Center account. Moves the
-- program to the active state when allowed, e.g. when paused. Important:
-- This method is only whitelisted for selected merchants.
--
-- /See:/ 'buyongoogleprogramsActivate' smart constructor.
data BuyongoogleprogramsActivate =
  BuyongoogleprogramsActivate'
    { _baXgafv :: !(Maybe Xgafv)
    , _baMerchantId :: !(Textual Int64)
    , _baUploadProtocol :: !(Maybe Text)
    , _baRegionCode :: !Text
    , _baAccessToken :: !(Maybe Text)
    , _baUploadType :: !(Maybe Text)
    , _baPayload :: !ActivateBuyOnGoogleProgramRequest
    , _baCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuyongoogleprogramsActivate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baXgafv'
--
-- * 'baMerchantId'
--
-- * 'baUploadProtocol'
--
-- * 'baRegionCode'
--
-- * 'baAccessToken'
--
-- * 'baUploadType'
--
-- * 'baPayload'
--
-- * 'baCallback'
buyongoogleprogramsActivate
    :: Int64 -- ^ 'baMerchantId'
    -> Text -- ^ 'baRegionCode'
    -> ActivateBuyOnGoogleProgramRequest -- ^ 'baPayload'
    -> BuyongoogleprogramsActivate
buyongoogleprogramsActivate pBaMerchantId_ pBaRegionCode_ pBaPayload_ =
  BuyongoogleprogramsActivate'
    { _baXgafv = Nothing
    , _baMerchantId = _Coerce # pBaMerchantId_
    , _baUploadProtocol = Nothing
    , _baRegionCode = pBaRegionCode_
    , _baAccessToken = Nothing
    , _baUploadType = Nothing
    , _baPayload = pBaPayload_
    , _baCallback = Nothing
    }


-- | V1 error format.
baXgafv :: Lens' BuyongoogleprogramsActivate (Maybe Xgafv)
baXgafv = lens _baXgafv (\ s a -> s{_baXgafv = a})

-- | Required. The ID of the account.
baMerchantId :: Lens' BuyongoogleprogramsActivate Int64
baMerchantId
  = lens _baMerchantId (\ s a -> s{_baMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
baUploadProtocol :: Lens' BuyongoogleprogramsActivate (Maybe Text)
baUploadProtocol
  = lens _baUploadProtocol
      (\ s a -> s{_baUploadProtocol = a})

-- | The program region code [ISO 3166-1
-- alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2).
-- Currently only US is available.
baRegionCode :: Lens' BuyongoogleprogramsActivate Text
baRegionCode
  = lens _baRegionCode (\ s a -> s{_baRegionCode = a})

-- | OAuth access token.
baAccessToken :: Lens' BuyongoogleprogramsActivate (Maybe Text)
baAccessToken
  = lens _baAccessToken
      (\ s a -> s{_baAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
baUploadType :: Lens' BuyongoogleprogramsActivate (Maybe Text)
baUploadType
  = lens _baUploadType (\ s a -> s{_baUploadType = a})

-- | Multipart request metadata.
baPayload :: Lens' BuyongoogleprogramsActivate ActivateBuyOnGoogleProgramRequest
baPayload
  = lens _baPayload (\ s a -> s{_baPayload = a})

-- | JSONP
baCallback :: Lens' BuyongoogleprogramsActivate (Maybe Text)
baCallback
  = lens _baCallback (\ s a -> s{_baCallback = a})

instance GoogleRequest BuyongoogleprogramsActivate
         where
        type Rs BuyongoogleprogramsActivate = ()
        type Scopes BuyongoogleprogramsActivate =
             '["https://www.googleapis.com/auth/content"]
        requestClient BuyongoogleprogramsActivate'{..}
          = go _baMerchantId _baRegionCode _baXgafv
              _baUploadProtocol
              _baAccessToken
              _baUploadType
              _baCallback
              (Just AltJSON)
              _baPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy BuyongoogleprogramsActivateResource)
                      mempty
