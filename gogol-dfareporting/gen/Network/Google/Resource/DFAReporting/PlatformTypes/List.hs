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
-- Module      : Network.Google.Resource.DFAReporting.PlatformTypes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of platform types.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.platformTypes.list@.
module Network.Google.Resource.DFAReporting.PlatformTypes.List
    (
    -- * REST Resource
      PlatformTypesListResource

    -- * Creating a Request
    , platformTypesList'
    , PlatformTypesList'

    -- * Request Lenses
    , ptlProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.platformTypes.list@ method which the
-- 'PlatformTypesList'' request conforms to.
type PlatformTypesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "platformTypes" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] PlatformTypesListResponse

-- | Retrieves a list of platform types.
--
-- /See:/ 'platformTypesList'' smart constructor.
newtype PlatformTypesList' = PlatformTypesList'
    { _ptlProFileId :: Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlatformTypesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptlProFileId'
platformTypesList'
    :: Int64 -- ^ 'ptlProFileId'
    -> PlatformTypesList'
platformTypesList' pPtlProFileId_ =
    PlatformTypesList'
    { _ptlProFileId = pPtlProFileId_
    }

-- | User profile ID associated with this request.
ptlProFileId :: Lens' PlatformTypesList' Int64
ptlProFileId
  = lens _ptlProFileId (\ s a -> s{_ptlProFileId = a})

instance GoogleRequest PlatformTypesList' where
        type Rs PlatformTypesList' =
             PlatformTypesListResponse
        requestClient PlatformTypesList'{..}
          = go _ptlProFileId (Just AltJSON) dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlatformTypesListResource)
                      mempty
