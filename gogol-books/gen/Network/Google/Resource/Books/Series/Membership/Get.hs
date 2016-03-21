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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns Series membership data given the series id.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.series.membership.get@.
module Network.Google.Resource.Books.Series.Membership.Get
    (
    -- * REST Resource
      SeriesMembershipGetResource

    -- * Creating a Request
    , seriesMembershipGet
    , SeriesMembershipGet

    -- * Request Lenses
    , smgPageToken
    , smgPageSize
    , smgSeriesId
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.series.membership.get@ method which the
-- 'SeriesMembershipGet' request conforms to.
type SeriesMembershipGetResource =
     "books" :>
       "v1" :>
         "series" :>
           "membership" :>
             "get" :>
               QueryParam "series_id" Text :>
                 QueryParam "page_token" Text :>
                   QueryParam "page_size" (Textual Word32) :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] Seriesmembership

-- | Returns Series membership data given the series id.
--
-- /See:/ 'seriesMembershipGet' smart constructor.
data SeriesMembershipGet = SeriesMembershipGet'
    { _smgPageToken :: !(Maybe Text)
    , _smgPageSize  :: !(Maybe (Textual Word32))
    , _smgSeriesId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SeriesMembershipGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smgPageToken'
--
-- * 'smgPageSize'
--
-- * 'smgSeriesId'
seriesMembershipGet
    :: Text -- ^ 'smgSeriesId'
    -> SeriesMembershipGet
seriesMembershipGet pSmgSeriesId_ =
    SeriesMembershipGet'
    { _smgPageToken = Nothing
    , _smgPageSize = Nothing
    , _smgSeriesId = pSmgSeriesId_
    }

-- | The value of the nextToken from the previous page.
smgPageToken :: Lens' SeriesMembershipGet (Maybe Text)
smgPageToken
  = lens _smgPageToken (\ s a -> s{_smgPageToken = a})

-- | Number of maximum results per page to be included in the response.
smgPageSize :: Lens' SeriesMembershipGet (Maybe Word32)
smgPageSize
  = lens _smgPageSize (\ s a -> s{_smgPageSize = a}) .
      mapping _Coerce

-- | String that identifies the series
smgSeriesId :: Lens' SeriesMembershipGet Text
smgSeriesId
  = lens _smgSeriesId (\ s a -> s{_smgSeriesId = a})

instance GoogleRequest SeriesMembershipGet where
        type Rs SeriesMembershipGet = Seriesmembership
        type Scopes SeriesMembershipGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient SeriesMembershipGet'{..}
          = go (Just _smgSeriesId) _smgPageToken _smgPageSize
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy SeriesMembershipGetResource)
                      mempty
