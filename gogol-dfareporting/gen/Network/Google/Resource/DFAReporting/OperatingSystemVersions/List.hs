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
-- Module      : Network.Google.Resource.DFAReporting.OperatingSystemVersions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of operating system versions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.operatingSystemVersions.list@.
module Network.Google.Resource.DFAReporting.OperatingSystemVersions.List
    (
    -- * REST Resource
      OperatingSystemVersionsListResource

    -- * Creating a Request
    , operatingSystemVersionsList
    , OperatingSystemVersionsList

    -- * Request Lenses
    , osvlProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.operatingSystemVersions.list@ method which the
-- 'OperatingSystemVersionsList' request conforms to.
type OperatingSystemVersionsListResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "operatingSystemVersions" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] OperatingSystemVersionsListResponse

-- | Retrieves a list of operating system versions.
--
-- /See:/ 'operatingSystemVersionsList' smart constructor.
newtype OperatingSystemVersionsList =
  OperatingSystemVersionsList'
    { _osvlProFileId :: Textual Int64
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OperatingSystemVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osvlProFileId'
operatingSystemVersionsList
    :: Int64 -- ^ 'osvlProFileId'
    -> OperatingSystemVersionsList
operatingSystemVersionsList pOsvlProFileId_ =
  OperatingSystemVersionsList' {_osvlProFileId = _Coerce # pOsvlProFileId_}

-- | User profile ID associated with this request.
osvlProFileId :: Lens' OperatingSystemVersionsList Int64
osvlProFileId
  = lens _osvlProFileId
      (\ s a -> s{_osvlProFileId = a})
      . _Coerce

instance GoogleRequest OperatingSystemVersionsList
         where
        type Rs OperatingSystemVersionsList =
             OperatingSystemVersionsListResponse
        type Scopes OperatingSystemVersionsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient OperatingSystemVersionsList'{..}
          = go _osvlProFileId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy OperatingSystemVersionsListResource)
                      mempty
