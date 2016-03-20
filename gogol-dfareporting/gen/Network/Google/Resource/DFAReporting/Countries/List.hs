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
-- Module      : Network.Google.Resource.DFAReporting.Countries.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of countries.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.countries.list@.
module Network.Google.Resource.DFAReporting.Countries.List
    (
    -- * REST Resource
      CountriesListResource

    -- * Creating a Request
    , countriesList
    , CountriesList

    -- * Request Lenses
    , couProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.countries.list@ method which the
-- 'CountriesList' request conforms to.
type CountriesListResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "countries" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] CountriesListResponse

-- | Retrieves a list of countries.
--
-- /See:/ 'countriesList' smart constructor.
newtype CountriesList = CountriesList
    { _couProFileId :: Textual Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CountriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'couProFileId'
countriesList
    :: Int64 -- ^ 'couProFileId'
    -> CountriesList
countriesList pCouProFileId_ =
    CountriesList
    { _couProFileId = _Coerce # pCouProFileId_
    }

-- | User profile ID associated with this request.
couProFileId :: Lens' CountriesList Int64
couProFileId
  = lens _couProFileId (\ s a -> s{_couProFileId = a})
      . _Coerce

instance GoogleRequest CountriesList where
        type Rs CountriesList = CountriesListResponse
        requestClient CountriesList{..}
          = go _couProFileId (Just AltJSON) dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy CountriesListResource)
                      mempty
