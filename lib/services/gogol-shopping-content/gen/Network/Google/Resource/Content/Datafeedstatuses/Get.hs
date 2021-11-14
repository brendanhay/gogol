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
-- Module      : Network.Google.Resource.Content.Datafeedstatuses.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the status of a datafeed from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeedstatuses.get@.
module Network.Google.Resource.Content.Datafeedstatuses.Get
    (
    -- * REST Resource
      DatafeedstatusesGetResource

    -- * Creating a Request
    , datafeedstatusesGet
    , DatafeedstatusesGet

    -- * Request Lenses
    , dggXgafv
    , dggMerchantId
    , dggUploadProtocol
    , dggCountry
    , dggAccessToken
    , dggUploadType
    , dggDatafeedId
    , dggLanguage
    , dggCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeedstatuses.get@ method which the
-- 'DatafeedstatusesGet' request conforms to.
type DatafeedstatusesGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "datafeedstatuses" :>
             Capture "datafeedId" (Textual Word64) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "country" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "language" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] DatafeedStatus

-- | Retrieves the status of a datafeed from your Merchant Center account.
--
-- /See:/ 'datafeedstatusesGet' smart constructor.
data DatafeedstatusesGet =
  DatafeedstatusesGet'
    { _dggXgafv :: !(Maybe Xgafv)
    , _dggMerchantId :: !(Textual Word64)
    , _dggUploadProtocol :: !(Maybe Text)
    , _dggCountry :: !(Maybe Text)
    , _dggAccessToken :: !(Maybe Text)
    , _dggUploadType :: !(Maybe Text)
    , _dggDatafeedId :: !(Textual Word64)
    , _dggLanguage :: !(Maybe Text)
    , _dggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedstatusesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dggXgafv'
--
-- * 'dggMerchantId'
--
-- * 'dggUploadProtocol'
--
-- * 'dggCountry'
--
-- * 'dggAccessToken'
--
-- * 'dggUploadType'
--
-- * 'dggDatafeedId'
--
-- * 'dggLanguage'
--
-- * 'dggCallback'
datafeedstatusesGet
    :: Word64 -- ^ 'dggMerchantId'
    -> Word64 -- ^ 'dggDatafeedId'
    -> DatafeedstatusesGet
datafeedstatusesGet pDggMerchantId_ pDggDatafeedId_ =
  DatafeedstatusesGet'
    { _dggXgafv = Nothing
    , _dggMerchantId = _Coerce # pDggMerchantId_
    , _dggUploadProtocol = Nothing
    , _dggCountry = Nothing
    , _dggAccessToken = Nothing
    , _dggUploadType = Nothing
    , _dggDatafeedId = _Coerce # pDggDatafeedId_
    , _dggLanguage = Nothing
    , _dggCallback = Nothing
    }


-- | V1 error format.
dggXgafv :: Lens' DatafeedstatusesGet (Maybe Xgafv)
dggXgafv = lens _dggXgafv (\ s a -> s{_dggXgafv = a})

-- | The ID of the account that manages the datafeed. This account cannot be
-- a multi-client account.
dggMerchantId :: Lens' DatafeedstatusesGet Word64
dggMerchantId
  = lens _dggMerchantId
      (\ s a -> s{_dggMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dggUploadProtocol :: Lens' DatafeedstatusesGet (Maybe Text)
dggUploadProtocol
  = lens _dggUploadProtocol
      (\ s a -> s{_dggUploadProtocol = a})

-- | The country for which to get the datafeed status. If this parameter is
-- provided then language must also be provided. Note that this parameter
-- is required for feeds targeting multiple countries and languages, since
-- a feed may have a different status for each target.
dggCountry :: Lens' DatafeedstatusesGet (Maybe Text)
dggCountry
  = lens _dggCountry (\ s a -> s{_dggCountry = a})

-- | OAuth access token.
dggAccessToken :: Lens' DatafeedstatusesGet (Maybe Text)
dggAccessToken
  = lens _dggAccessToken
      (\ s a -> s{_dggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dggUploadType :: Lens' DatafeedstatusesGet (Maybe Text)
dggUploadType
  = lens _dggUploadType
      (\ s a -> s{_dggUploadType = a})

-- | The ID of the datafeed.
dggDatafeedId :: Lens' DatafeedstatusesGet Word64
dggDatafeedId
  = lens _dggDatafeedId
      (\ s a -> s{_dggDatafeedId = a})
      . _Coerce

-- | The language for which to get the datafeed status. If this parameter is
-- provided then country must also be provided. Note that this parameter is
-- required for feeds targeting multiple countries and languages, since a
-- feed may have a different status for each target.
dggLanguage :: Lens' DatafeedstatusesGet (Maybe Text)
dggLanguage
  = lens _dggLanguage (\ s a -> s{_dggLanguage = a})

-- | JSONP
dggCallback :: Lens' DatafeedstatusesGet (Maybe Text)
dggCallback
  = lens _dggCallback (\ s a -> s{_dggCallback = a})

instance GoogleRequest DatafeedstatusesGet where
        type Rs DatafeedstatusesGet = DatafeedStatus
        type Scopes DatafeedstatusesGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient DatafeedstatusesGet'{..}
          = go _dggMerchantId _dggDatafeedId _dggXgafv
              _dggUploadProtocol
              _dggCountry
              _dggAccessToken
              _dggUploadType
              _dggLanguage
              _dggCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedstatusesGetResource)
                      mempty
