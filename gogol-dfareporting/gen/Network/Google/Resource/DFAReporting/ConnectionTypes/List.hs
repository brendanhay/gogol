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
-- Module      : Network.Google.Resource.DFAReporting.ConnectionTypes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of connection types.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.connectionTypes.list@.
module Network.Google.Resource.DFAReporting.ConnectionTypes.List
    (
    -- * REST Resource
      ConnectionTypesListResource

    -- * Creating a Request
    , connectionTypesList
    , ConnectionTypesList

    -- * Request Lenses
    , ctlProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.connectionTypes.list@ method which the
-- 'ConnectionTypesList' request conforms to.
type ConnectionTypesListResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "connectionTypes" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ConnectionTypesListResponse

-- | Retrieves a list of connection types.
--
-- /See:/ 'connectionTypesList' smart constructor.
newtype ConnectionTypesList = ConnectionTypesList
    { _ctlProFileId :: Textual Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConnectionTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctlProFileId'
connectionTypesList
    :: Int64 -- ^ 'ctlProFileId'
    -> ConnectionTypesList
connectionTypesList pCtlProFileId_ =
    ConnectionTypesList
    { _ctlProFileId = _Coerce # pCtlProFileId_
    }

-- | User profile ID associated with this request.
ctlProFileId :: Lens' ConnectionTypesList Int64
ctlProFileId
  = lens _ctlProFileId (\ s a -> s{_ctlProFileId = a})
      . _Coerce

instance GoogleRequest ConnectionTypesList where
        type Rs ConnectionTypesList =
             ConnectionTypesListResponse
        requestClient ConnectionTypesList{..}
          = go _ctlProFileId (Just AltJSON) dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ConnectionTypesListResource)
                      mempty
