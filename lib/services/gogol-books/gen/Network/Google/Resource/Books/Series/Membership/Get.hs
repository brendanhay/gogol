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
-- Module      : Network.Google.Resource.Books.Series.Membership.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns Series membership data given the series id.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.series.membership.get@.
module Network.Google.Resource.Books.Series.Membership.Get
    (
    -- * REST Resource
      SeriesMembershipGetResource

    -- * Creating a Request
    , seriesMembershipGet
    , SeriesMembershipGet

    -- * Request Lenses
    , smgXgafv
    , smgPageToken
    , smgUploadProtocol
    , smgAccessToken
    , smgUploadType
    , smgPageSize
    , smgCallback
    , smgSeriesId
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.series.membership.get@ method which the
-- 'SeriesMembershipGet' request conforms to.
type SeriesMembershipGetResource =
     "books" :>
       "v1" :>
         "series" :>
           "membership" :>
             "get" :>
               QueryParam "series_id" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "page_token" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "page_size" (Textual Word32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] Seriesmembership

-- | Returns Series membership data given the series id.
--
-- /See:/ 'seriesMembershipGet' smart constructor.
data SeriesMembershipGet =
  SeriesMembershipGet'
    { _smgXgafv :: !(Maybe Xgafv)
    , _smgPageToken :: !(Maybe Text)
    , _smgUploadProtocol :: !(Maybe Text)
    , _smgAccessToken :: !(Maybe Text)
    , _smgUploadType :: !(Maybe Text)
    , _smgPageSize :: !(Maybe (Textual Word32))
    , _smgCallback :: !(Maybe Text)
    , _smgSeriesId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SeriesMembershipGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smgXgafv'
--
-- * 'smgPageToken'
--
-- * 'smgUploadProtocol'
--
-- * 'smgAccessToken'
--
-- * 'smgUploadType'
--
-- * 'smgPageSize'
--
-- * 'smgCallback'
--
-- * 'smgSeriesId'
seriesMembershipGet
    :: Text -- ^ 'smgSeriesId'
    -> SeriesMembershipGet
seriesMembershipGet pSmgSeriesId_ =
  SeriesMembershipGet'
    { _smgXgafv = Nothing
    , _smgPageToken = Nothing
    , _smgUploadProtocol = Nothing
    , _smgAccessToken = Nothing
    , _smgUploadType = Nothing
    , _smgPageSize = Nothing
    , _smgCallback = Nothing
    , _smgSeriesId = pSmgSeriesId_
    }


-- | V1 error format.
smgXgafv :: Lens' SeriesMembershipGet (Maybe Xgafv)
smgXgafv = lens _smgXgafv (\ s a -> s{_smgXgafv = a})

-- | The value of the nextToken from the previous page.
smgPageToken :: Lens' SeriesMembershipGet (Maybe Text)
smgPageToken
  = lens _smgPageToken (\ s a -> s{_smgPageToken = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
smgUploadProtocol :: Lens' SeriesMembershipGet (Maybe Text)
smgUploadProtocol
  = lens _smgUploadProtocol
      (\ s a -> s{_smgUploadProtocol = a})

-- | OAuth access token.
smgAccessToken :: Lens' SeriesMembershipGet (Maybe Text)
smgAccessToken
  = lens _smgAccessToken
      (\ s a -> s{_smgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
smgUploadType :: Lens' SeriesMembershipGet (Maybe Text)
smgUploadType
  = lens _smgUploadType
      (\ s a -> s{_smgUploadType = a})

-- | Number of maximum results per page to be included in the response.
smgPageSize :: Lens' SeriesMembershipGet (Maybe Word32)
smgPageSize
  = lens _smgPageSize (\ s a -> s{_smgPageSize = a}) .
      mapping _Coerce

-- | JSONP
smgCallback :: Lens' SeriesMembershipGet (Maybe Text)
smgCallback
  = lens _smgCallback (\ s a -> s{_smgCallback = a})

-- | String that identifies the series
smgSeriesId :: Lens' SeriesMembershipGet Text
smgSeriesId
  = lens _smgSeriesId (\ s a -> s{_smgSeriesId = a})

instance GoogleRequest SeriesMembershipGet where
        type Rs SeriesMembershipGet = Seriesmembership
        type Scopes SeriesMembershipGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient SeriesMembershipGet'{..}
          = go (Just _smgSeriesId) _smgXgafv _smgPageToken
              _smgUploadProtocol
              _smgAccessToken
              _smgUploadType
              _smgPageSize
              _smgCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy SeriesMembershipGetResource)
                      mempty
