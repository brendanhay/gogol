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
-- Module      : Network.Google.Resource.DFAReporting.MobileCarriers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of mobile carriers.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.mobileCarriers.list@.
module Network.Google.Resource.DFAReporting.MobileCarriers.List
    (
    -- * REST Resource
      MobileCarriersListResource

    -- * Creating a Request
    , mobileCarriersList
    , MobileCarriersList

    -- * Request Lenses
    , mclProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.mobileCarriers.list@ method which the
-- 'MobileCarriersList' request conforms to.
type MobileCarriersListResource =
     "dfareporting" :>
       "v3.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "mobileCarriers" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] MobileCarriersListResponse

-- | Retrieves a list of mobile carriers.
--
-- /See:/ 'mobileCarriersList' smart constructor.
newtype MobileCarriersList = MobileCarriersList'
    { _mclProFileId :: Textual Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileCarriersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mclProFileId'
mobileCarriersList
    :: Int64 -- ^ 'mclProFileId'
    -> MobileCarriersList
mobileCarriersList pMclProFileId_ =
    MobileCarriersList'
    { _mclProFileId = _Coerce # pMclProFileId_
    }

-- | User profile ID associated with this request.
mclProFileId :: Lens' MobileCarriersList Int64
mclProFileId
  = lens _mclProFileId (\ s a -> s{_mclProFileId = a})
      . _Coerce

instance GoogleRequest MobileCarriersList where
        type Rs MobileCarriersList =
             MobileCarriersListResponse
        type Scopes MobileCarriersList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient MobileCarriersList'{..}
          = go _mclProFileId (Just AltJSON) dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy MobileCarriersListResource)
                      mempty
