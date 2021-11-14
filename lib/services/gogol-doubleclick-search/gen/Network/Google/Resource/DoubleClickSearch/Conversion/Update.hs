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
-- Module      : Network.Google.Resource.DoubleClickSearch.Conversion.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a batch of conversions in DoubleClick Search.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.conversion.update@.
module Network.Google.Resource.DoubleClickSearch.Conversion.Update
    (
    -- * REST Resource
      ConversionUpdateResource

    -- * Creating a Request
    , conversionUpdate
    , ConversionUpdate

    -- * Request Lenses
    , cuXgafv
    , cuUploadProtocol
    , cuAccessToken
    , cuUploadType
    , cuPayload
    , cuCallback
    ) where

import Network.Google.DoubleClickSearch.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclicksearch.conversion.update@ method which the
-- 'ConversionUpdate' request conforms to.
type ConversionUpdateResource =
     "doubleclicksearch" :>
       "v2" :>
         "conversion" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ConversionList :>
                         Put '[JSON] ConversionList

-- | Updates a batch of conversions in DoubleClick Search.
--
-- /See:/ 'conversionUpdate' smart constructor.
data ConversionUpdate =
  ConversionUpdate'
    { _cuXgafv :: !(Maybe Xgafv)
    , _cuUploadProtocol :: !(Maybe Text)
    , _cuAccessToken :: !(Maybe Text)
    , _cuUploadType :: !(Maybe Text)
    , _cuPayload :: !ConversionList
    , _cuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConversionUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuXgafv'
--
-- * 'cuUploadProtocol'
--
-- * 'cuAccessToken'
--
-- * 'cuUploadType'
--
-- * 'cuPayload'
--
-- * 'cuCallback'
conversionUpdate
    :: ConversionList -- ^ 'cuPayload'
    -> ConversionUpdate
conversionUpdate pCuPayload_ =
  ConversionUpdate'
    { _cuXgafv = Nothing
    , _cuUploadProtocol = Nothing
    , _cuAccessToken = Nothing
    , _cuUploadType = Nothing
    , _cuPayload = pCuPayload_
    , _cuCallback = Nothing
    }


-- | V1 error format.
cuXgafv :: Lens' ConversionUpdate (Maybe Xgafv)
cuXgafv = lens _cuXgafv (\ s a -> s{_cuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cuUploadProtocol :: Lens' ConversionUpdate (Maybe Text)
cuUploadProtocol
  = lens _cuUploadProtocol
      (\ s a -> s{_cuUploadProtocol = a})

-- | OAuth access token.
cuAccessToken :: Lens' ConversionUpdate (Maybe Text)
cuAccessToken
  = lens _cuAccessToken
      (\ s a -> s{_cuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cuUploadType :: Lens' ConversionUpdate (Maybe Text)
cuUploadType
  = lens _cuUploadType (\ s a -> s{_cuUploadType = a})

-- | Multipart request metadata.
cuPayload :: Lens' ConversionUpdate ConversionList
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | JSONP
cuCallback :: Lens' ConversionUpdate (Maybe Text)
cuCallback
  = lens _cuCallback (\ s a -> s{_cuCallback = a})

instance GoogleRequest ConversionUpdate where
        type Rs ConversionUpdate = ConversionList
        type Scopes ConversionUpdate =
             '["https://www.googleapis.com/auth/doubleclicksearch"]
        requestClient ConversionUpdate'{..}
          = go _cuXgafv _cuUploadProtocol _cuAccessToken
              _cuUploadType
              _cuCallback
              (Just AltJSON)
              _cuPayload
              doubleClickSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy ConversionUpdateResource)
                      mempty
