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
-- Module      : Network.Google.Resource.Content.FreeListingsprogram.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the status and review eligibility for the free listing
-- program.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.freelistingsprogram.get@.
module Network.Google.Resource.Content.FreeListingsprogram.Get
    (
    -- * REST Resource
      FreeListingsprogramGetResource

    -- * Creating a Request
    , freeListingsprogramGet
    , FreeListingsprogramGet

    -- * Request Lenses
    , flgXgafv
    , flgMerchantId
    , flgUploadProtocol
    , flgAccessToken
    , flgUploadType
    , flgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.freelistingsprogram.get@ method which the
-- 'FreeListingsprogramGet' request conforms to.
type FreeListingsprogramGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "freelistingsprogram" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] FreeListingsProgramStatus

-- | Retrieves the status and review eligibility for the free listing
-- program.
--
-- /See:/ 'freeListingsprogramGet' smart constructor.
data FreeListingsprogramGet =
  FreeListingsprogramGet'
    { _flgXgafv :: !(Maybe Xgafv)
    , _flgMerchantId :: !(Textual Int64)
    , _flgUploadProtocol :: !(Maybe Text)
    , _flgAccessToken :: !(Maybe Text)
    , _flgUploadType :: !(Maybe Text)
    , _flgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FreeListingsprogramGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flgXgafv'
--
-- * 'flgMerchantId'
--
-- * 'flgUploadProtocol'
--
-- * 'flgAccessToken'
--
-- * 'flgUploadType'
--
-- * 'flgCallback'
freeListingsprogramGet
    :: Int64 -- ^ 'flgMerchantId'
    -> FreeListingsprogramGet
freeListingsprogramGet pFlgMerchantId_ =
  FreeListingsprogramGet'
    { _flgXgafv = Nothing
    , _flgMerchantId = _Coerce # pFlgMerchantId_
    , _flgUploadProtocol = Nothing
    , _flgAccessToken = Nothing
    , _flgUploadType = Nothing
    , _flgCallback = Nothing
    }


-- | V1 error format.
flgXgafv :: Lens' FreeListingsprogramGet (Maybe Xgafv)
flgXgafv = lens _flgXgafv (\ s a -> s{_flgXgafv = a})

-- | Required. The ID of the account.
flgMerchantId :: Lens' FreeListingsprogramGet Int64
flgMerchantId
  = lens _flgMerchantId
      (\ s a -> s{_flgMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flgUploadProtocol :: Lens' FreeListingsprogramGet (Maybe Text)
flgUploadProtocol
  = lens _flgUploadProtocol
      (\ s a -> s{_flgUploadProtocol = a})

-- | OAuth access token.
flgAccessToken :: Lens' FreeListingsprogramGet (Maybe Text)
flgAccessToken
  = lens _flgAccessToken
      (\ s a -> s{_flgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flgUploadType :: Lens' FreeListingsprogramGet (Maybe Text)
flgUploadType
  = lens _flgUploadType
      (\ s a -> s{_flgUploadType = a})

-- | JSONP
flgCallback :: Lens' FreeListingsprogramGet (Maybe Text)
flgCallback
  = lens _flgCallback (\ s a -> s{_flgCallback = a})

instance GoogleRequest FreeListingsprogramGet where
        type Rs FreeListingsprogramGet =
             FreeListingsProgramStatus
        type Scopes FreeListingsprogramGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient FreeListingsprogramGet'{..}
          = go _flgMerchantId _flgXgafv _flgUploadProtocol
              _flgAccessToken
              _flgUploadType
              _flgCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy FreeListingsprogramGetResource)
                      mempty
