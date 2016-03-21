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
-- Module      : Network.Google.Resource.DFAReporting.Sites.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one site by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.sites.get@.
module Network.Google.Resource.DFAReporting.Sites.Get
    (
    -- * REST Resource
      SitesGetResource

    -- * Creating a Request
    , sitesGet
    , SitesGet

    -- * Request Lenses
    , sggProFileId
    , sggId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.sites.get@ method which the
-- 'SitesGet' request conforms to.
type SitesGetResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "sites" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Site

-- | Gets one site by ID.
--
-- /See:/ 'sitesGet' smart constructor.
data SitesGet = SitesGet'
    { _sggProFileId :: !(Textual Int64)
    , _sggId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sggProFileId'
--
-- * 'sggId'
sitesGet
    :: Int64 -- ^ 'sggProFileId'
    -> Int64 -- ^ 'sggId'
    -> SitesGet
sitesGet pSggProFileId_ pSggId_ =
    SitesGet'
    { _sggProFileId = _Coerce # pSggProFileId_
    , _sggId = _Coerce # pSggId_
    }

-- | User profile ID associated with this request.
sggProFileId :: Lens' SitesGet Int64
sggProFileId
  = lens _sggProFileId (\ s a -> s{_sggProFileId = a})
      . _Coerce

-- | Site ID.
sggId :: Lens' SitesGet Int64
sggId
  = lens _sggId (\ s a -> s{_sggId = a}) . _Coerce

instance GoogleRequest SitesGet where
        type Rs SitesGet = Site
        type Scopes SitesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SitesGet'{..}
          = go _sggProFileId _sggId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SitesGetResource)
                      mempty
