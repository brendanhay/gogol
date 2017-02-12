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
-- Module      : Network.Google.Resource.DFAReporting.OperatingSystems.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of operating systems.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.operatingSystems.list@.
module Network.Google.Resource.DFAReporting.OperatingSystems.List
    (
    -- * REST Resource
      OperatingSystemsListResource

    -- * Creating a Request
    , operatingSystemsList
    , OperatingSystemsList

    -- * Request Lenses
    , oslProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.operatingSystems.list@ method which the
-- 'OperatingSystemsList' request conforms to.
type OperatingSystemsListResource =
     "dfareporting" :>
       "v2.7" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "operatingSystems" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] OperatingSystemsListResponse

-- | Retrieves a list of operating systems.
--
-- /See:/ 'operatingSystemsList' smart constructor.
newtype OperatingSystemsList = OperatingSystemsList'
    { _oslProFileId :: Textual Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslProFileId'
operatingSystemsList
    :: Int64 -- ^ 'oslProFileId'
    -> OperatingSystemsList
operatingSystemsList pOslProFileId_ =
    OperatingSystemsList'
    { _oslProFileId = _Coerce # pOslProFileId_
    }

-- | User profile ID associated with this request.
oslProFileId :: Lens' OperatingSystemsList Int64
oslProFileId
  = lens _oslProFileId (\ s a -> s{_oslProFileId = a})
      . _Coerce

instance GoogleRequest OperatingSystemsList where
        type Rs OperatingSystemsList =
             OperatingSystemsListResponse
        type Scopes OperatingSystemsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient OperatingSystemsList'{..}
          = go _oslProFileId (Just AltJSON) dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy OperatingSystemsListResource)
                      mempty
