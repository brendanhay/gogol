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
-- Module      : Network.Google.Resource.Books.Series.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns Series metadata for the given series ids.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.series.get@.
module Network.Google.Resource.Books.Series.Get
    (
    -- * REST Resource
      SeriesGetResource

    -- * Creating a Request
    , seriesGet
    , SeriesGet

    -- * Request Lenses
    , sgXgafv
    , sgUploadProtocol
    , sgAccessToken
    , sgUploadType
    , sgCallback
    , sgSeriesId
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.series.get@ method which the
-- 'SeriesGet' request conforms to.
type SeriesGetResource =
     "books" :>
       "v1" :>
         "series" :>
           "get" :>
             QueryParams "series_id" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Series

-- | Returns Series metadata for the given series ids.
--
-- /See:/ 'seriesGet' smart constructor.
data SeriesGet =
  SeriesGet'
    { _sgXgafv :: !(Maybe Xgafv)
    , _sgUploadProtocol :: !(Maybe Text)
    , _sgAccessToken :: !(Maybe Text)
    , _sgUploadType :: !(Maybe Text)
    , _sgCallback :: !(Maybe Text)
    , _sgSeriesId :: ![Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SeriesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgXgafv'
--
-- * 'sgUploadProtocol'
--
-- * 'sgAccessToken'
--
-- * 'sgUploadType'
--
-- * 'sgCallback'
--
-- * 'sgSeriesId'
seriesGet
    :: [Text] -- ^ 'sgSeriesId'
    -> SeriesGet
seriesGet pSgSeriesId_ =
  SeriesGet'
    { _sgXgafv = Nothing
    , _sgUploadProtocol = Nothing
    , _sgAccessToken = Nothing
    , _sgUploadType = Nothing
    , _sgCallback = Nothing
    , _sgSeriesId = _Coerce # pSgSeriesId_
    }


-- | V1 error format.
sgXgafv :: Lens' SeriesGet (Maybe Xgafv)
sgXgafv = lens _sgXgafv (\ s a -> s{_sgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgUploadProtocol :: Lens' SeriesGet (Maybe Text)
sgUploadProtocol
  = lens _sgUploadProtocol
      (\ s a -> s{_sgUploadProtocol = a})

-- | OAuth access token.
sgAccessToken :: Lens' SeriesGet (Maybe Text)
sgAccessToken
  = lens _sgAccessToken
      (\ s a -> s{_sgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgUploadType :: Lens' SeriesGet (Maybe Text)
sgUploadType
  = lens _sgUploadType (\ s a -> s{_sgUploadType = a})

-- | JSONP
sgCallback :: Lens' SeriesGet (Maybe Text)
sgCallback
  = lens _sgCallback (\ s a -> s{_sgCallback = a})

-- | String that identifies the series
sgSeriesId :: Lens' SeriesGet [Text]
sgSeriesId
  = lens _sgSeriesId (\ s a -> s{_sgSeriesId = a}) .
      _Coerce

instance GoogleRequest SeriesGet where
        type Rs SeriesGet = Series
        type Scopes SeriesGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient SeriesGet'{..}
          = go _sgSeriesId _sgXgafv _sgUploadProtocol
              _sgAccessToken
              _sgUploadType
              _sgCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient (Proxy :: Proxy SeriesGetResource)
                      mempty
