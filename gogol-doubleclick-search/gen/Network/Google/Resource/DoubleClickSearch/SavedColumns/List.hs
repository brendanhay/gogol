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
-- Module      : Network.Google.Resource.DoubleClickSearch.SavedColumns.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the list of saved columns for a specified advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleClicksearchSavedColumnsList@.
module Network.Google.Resource.DoubleClickSearch.SavedColumns.List
    (
    -- * REST Resource
      SavedColumnsListResource

    -- * Creating a Request
    , savedColumnsList'
    , SavedColumnsList'

    -- * Request Lenses
    , sclAgencyId
    , sclAdvertiserId
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClicksearchSavedColumnsList@ method which the
-- 'SavedColumnsList'' request conforms to.
type SavedColumnsListResource =
     "agency" :>
       Capture "agencyId" Int64 :>
         "advertiser" :>
           Capture "advertiserId" Int64 :>
             "savedcolumns" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] SavedColumnList

-- | Retrieve the list of saved columns for a specified advertiser.
--
-- /See:/ 'savedColumnsList'' smart constructor.
data SavedColumnsList' = SavedColumnsList'
    { _sclAgencyId     :: !Int64
    , _sclAdvertiserId :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SavedColumnsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclAgencyId'
--
-- * 'sclAdvertiserId'
savedColumnsList'
    :: Int64 -- ^ 'agencyId'
    -> Int64 -- ^ 'advertiserId'
    -> SavedColumnsList'
savedColumnsList' pSclAgencyId_ pSclAdvertiserId_ =
    SavedColumnsList'
    { _sclAgencyId = pSclAgencyId_
    , _sclAdvertiserId = pSclAdvertiserId_
    }

-- | DS ID of the agency.
sclAgencyId :: Lens' SavedColumnsList' Int64
sclAgencyId
  = lens _sclAgencyId (\ s a -> s{_sclAgencyId = a})

-- | DS ID of the advertiser.
sclAdvertiserId :: Lens' SavedColumnsList' Int64
sclAdvertiserId
  = lens _sclAdvertiserId
      (\ s a -> s{_sclAdvertiserId = a})

instance GoogleRequest SavedColumnsList' where
        type Rs SavedColumnsList' = SavedColumnList
        requestClient SavedColumnsList'{..}
          = go _sclAgencyId _sclAdvertiserId (Just AltJSON)
              doubleClickSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy SavedColumnsListResource)
                      mempty
