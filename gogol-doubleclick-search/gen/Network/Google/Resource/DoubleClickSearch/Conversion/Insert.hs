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
-- Module      : Network.Google.Resource.DoubleClickSearch.Conversion.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a batch of new conversions into DoubleClick Search.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.conversion.insert@.
module Network.Google.Resource.DoubleClickSearch.Conversion.Insert
    (
    -- * REST Resource
      ConversionInsertResource

    -- * Creating a Request
    , conversionInsert
    , ConversionInsert

    -- * Request Lenses
    , ciXgafv
    , ciUploadProtocol
    , ciAccessToken
    , ciUploadType
    , ciPayload
    , ciCallback
    ) where

import Network.Google.DoubleClickSearch.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclicksearch.conversion.insert@ method which the
-- 'ConversionInsert' request conforms to.
type ConversionInsertResource =
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
                         Post '[JSON] ConversionList

-- | Inserts a batch of new conversions into DoubleClick Search.
--
-- /See:/ 'conversionInsert' smart constructor.
data ConversionInsert =
  ConversionInsert'
    { _ciXgafv :: !(Maybe Xgafv)
    , _ciUploadProtocol :: !(Maybe Text)
    , _ciAccessToken :: !(Maybe Text)
    , _ciUploadType :: !(Maybe Text)
    , _ciPayload :: !ConversionList
    , _ciCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConversionInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciXgafv'
--
-- * 'ciUploadProtocol'
--
-- * 'ciAccessToken'
--
-- * 'ciUploadType'
--
-- * 'ciPayload'
--
-- * 'ciCallback'
conversionInsert
    :: ConversionList -- ^ 'ciPayload'
    -> ConversionInsert
conversionInsert pCiPayload_ =
  ConversionInsert'
    { _ciXgafv = Nothing
    , _ciUploadProtocol = Nothing
    , _ciAccessToken = Nothing
    , _ciUploadType = Nothing
    , _ciPayload = pCiPayload_
    , _ciCallback = Nothing
    }


-- | V1 error format.
ciXgafv :: Lens' ConversionInsert (Maybe Xgafv)
ciXgafv = lens _ciXgafv (\ s a -> s{_ciXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ciUploadProtocol :: Lens' ConversionInsert (Maybe Text)
ciUploadProtocol
  = lens _ciUploadProtocol
      (\ s a -> s{_ciUploadProtocol = a})

-- | OAuth access token.
ciAccessToken :: Lens' ConversionInsert (Maybe Text)
ciAccessToken
  = lens _ciAccessToken
      (\ s a -> s{_ciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ciUploadType :: Lens' ConversionInsert (Maybe Text)
ciUploadType
  = lens _ciUploadType (\ s a -> s{_ciUploadType = a})

-- | Multipart request metadata.
ciPayload :: Lens' ConversionInsert ConversionList
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

-- | JSONP
ciCallback :: Lens' ConversionInsert (Maybe Text)
ciCallback
  = lens _ciCallback (\ s a -> s{_ciCallback = a})

instance GoogleRequest ConversionInsert where
        type Rs ConversionInsert = ConversionList
        type Scopes ConversionInsert =
             '["https://www.googleapis.com/auth/doubleclicksearch"]
        requestClient ConversionInsert'{..}
          = go _ciXgafv _ciUploadProtocol _ciAccessToken
              _ciUploadType
              _ciCallback
              (Just AltJSON)
              _ciPayload
              doubleClickSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy ConversionInsertResource)
                      mempty
