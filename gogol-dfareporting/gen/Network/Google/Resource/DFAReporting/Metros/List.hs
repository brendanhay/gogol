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
-- Module      : Network.Google.Resource.DFAReporting.Metros.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of metros.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.metros.list@.
module Network.Google.Resource.DFAReporting.Metros.List
    (
    -- * REST Resource
      MetrosListResource

    -- * Creating a Request
    , metrosList
    , MetrosList

    -- * Request Lenses
    , mlProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.metros.list@ method which the
-- 'MetrosList' request conforms to.
type MetrosListResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "metros" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] MetrosListResponse

-- | Retrieves a list of metros.
--
-- /See:/ 'metrosList' smart constructor.
newtype MetrosList =
  MetrosList'
    { _mlProFileId :: Textual Int64
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MetrosList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlProFileId'
metrosList
    :: Int64 -- ^ 'mlProFileId'
    -> MetrosList
metrosList pMlProFileId_ = MetrosList' {_mlProFileId = _Coerce # pMlProFileId_}

-- | User profile ID associated with this request.
mlProFileId :: Lens' MetrosList Int64
mlProFileId
  = lens _mlProFileId (\ s a -> s{_mlProFileId = a}) .
      _Coerce

instance GoogleRequest MetrosList where
        type Rs MetrosList = MetrosListResponse
        type Scopes MetrosList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient MetrosList'{..}
          = go _mlProFileId (Just AltJSON) dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy MetrosListResource)
                      mempty
