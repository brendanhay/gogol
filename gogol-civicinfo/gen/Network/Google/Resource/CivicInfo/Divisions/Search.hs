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
-- Module      : Network.Google.Resource.CivicInfo.Divisions.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for political divisions by their natural name or OCD ID.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference> for @civicinfo.divisions.search@.
module Network.Google.Resource.CivicInfo.Divisions.Search
    (
    -- * REST Resource
      DivisionsSearchResource

    -- * Creating a Request
    , divisionsSearch
    , DivisionsSearch

    -- * Request Lenses
    , dsQuery
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

-- | A resource alias for @civicinfo.divisions.search@ method which the
-- 'DivisionsSearch' request conforms to.
type DivisionsSearchResource =
     "civicinfo" :>
       "v2" :>
         "divisions" :>
           QueryParam "query" Text :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] DivisionSearchResponse

-- | Searches for political divisions by their natural name or OCD ID.
--
-- /See:/ 'divisionsSearch' smart constructor.
newtype DivisionsSearch = DivisionsSearch
    { _dsQuery :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DivisionsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsQuery'
divisionsSearch
    :: DivisionsSearch
divisionsSearch =
    DivisionsSearch
    { _dsQuery = Nothing
    }

-- | The search query. Queries can cover any parts of a OCD ID or a human
-- readable division name. All words given in the query are treated as
-- required patterns. In addition to that, most query operators of the
-- Apache Lucene library are supported. See
-- http:\/\/lucene.apache.org\/core\/2_9_4\/queryparsersyntax.html
dsQuery :: Lens' DivisionsSearch (Maybe Text)
dsQuery = lens _dsQuery (\ s a -> s{_dsQuery = a})

instance GoogleRequest DivisionsSearch where
        type Rs DivisionsSearch = DivisionSearchResponse
        requestClient DivisionsSearch{..}
          = go _dsQuery (Just AltJSON) civicInfoService
          where go
                  = buildClient
                      (Proxy :: Proxy DivisionsSearchResource)
                      mempty
