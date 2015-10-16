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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one site by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSitesGet@.
module Network.Google.Resource.DFAReporting.Sites.Get
    (
    -- * REST Resource
      SitesGetResource

    -- * Creating a Request
    , sitesGet'
    , SitesGet'

    -- * Request Lenses
    , sgProFileId
    , sgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSitesGet@ method which the
-- 'SitesGet'' request conforms to.
type SitesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sites" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :> Get '[JSON] Site

-- | Gets one site by ID.
--
-- /See:/ 'sitesGet'' smart constructor.
data SitesGet' = SitesGet'
    { _sgProFileId :: !Int64
    , _sgId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgProFileId'
--
-- * 'sgId'
sitesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SitesGet'
sitesGet' pSgProFileId_ pSgId_ =
    SitesGet'
    { _sgProFileId = pSgProFileId_
    , _sgId = pSgId_
    }

-- | User profile ID associated with this request.
sgProFileId :: Lens' SitesGet' Int64
sgProFileId
  = lens _sgProFileId (\ s a -> s{_sgProFileId = a})

-- | Site ID.
sgId :: Lens' SitesGet' Int64
sgId = lens _sgId (\ s a -> s{_sgId = a})

instance GoogleRequest SitesGet' where
        type Rs SitesGet' = Site
        requestClient SitesGet'{..}
          = go _sgProFileId _sgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SitesGetResource)
                      mempty
