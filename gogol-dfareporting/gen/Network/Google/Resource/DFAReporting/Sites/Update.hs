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
-- Module      : Network.Google.Resource.DFAReporting.Sites.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing site.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.sites.update@.
module Network.Google.Resource.DFAReporting.Sites.Update
    (
    -- * REST Resource
      SitesUpdateResource

    -- * Creating a Request
    , sitesUpdate
    , SitesUpdate

    -- * Request Lenses
    , suProFileId
    , suPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.sites.update@ method which the
-- 'SitesUpdate' request conforms to.
type SitesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sites" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Site :> Put '[JSON] Site

-- | Updates an existing site.
--
-- /See:/ 'sitesUpdate' smart constructor.
data SitesUpdate = SitesUpdate
    { _suProFileId :: !Int64
    , _suPayload   :: !Site
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suProFileId'
--
-- * 'suPayload'
sitesUpdate
    :: Int64 -- ^ 'suProFileId'
    -> Site -- ^ 'suPayload'
    -> SitesUpdate
sitesUpdate pSuProFileId_ pSuPayload_ =
    SitesUpdate
    { _suProFileId = pSuProFileId_
    , _suPayload = pSuPayload_
    }

-- | User profile ID associated with this request.
suProFileId :: Lens' SitesUpdate Int64
suProFileId
  = lens _suProFileId (\ s a -> s{_suProFileId = a})

-- | Multipart request metadata.
suPayload :: Lens' SitesUpdate Site
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

instance GoogleRequest SitesUpdate where
        type Rs SitesUpdate = Site
        requestClient SitesUpdate{..}
          = go _suProFileId (Just AltJSON) _suPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SitesUpdateResource)
                      mempty
