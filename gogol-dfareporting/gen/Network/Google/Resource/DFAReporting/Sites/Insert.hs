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
-- Module      : Network.Google.Resource.DFAReporting.Sites.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new site.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSitesInsert@.
module Network.Google.Resource.DFAReporting.Sites.Insert
    (
    -- * REST Resource
      SitesInsertResource

    -- * Creating a Request
    , sitesInsert'
    , SitesInsert'

    -- * Request Lenses
    , siProFileId
    , siPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSitesInsert@ method which the
-- 'SitesInsert'' request conforms to.
type SitesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sites" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Site :> Post '[JSON] Site

-- | Inserts a new site.
--
-- /See:/ 'sitesInsert'' smart constructor.
data SitesInsert' = SitesInsert'
    { _siProFileId :: !Int64
    , _siPayload   :: !Site
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siProFileId'
--
-- * 'siPayload'
sitesInsert'
    :: Int64 -- ^ 'profileId'
    -> Site -- ^ 'payload'
    -> SitesInsert'
sitesInsert' pSiProFileId_ pSiPayload_ =
    SitesInsert'
    { _siProFileId = pSiProFileId_
    , _siPayload = pSiPayload_
    }

-- | User profile ID associated with this request.
siProFileId :: Lens' SitesInsert' Int64
siProFileId
  = lens _siProFileId (\ s a -> s{_siProFileId = a})

-- | Multipart request metadata.
siPayload :: Lens' SitesInsert' Site
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

instance GoogleRequest SitesInsert' where
        type Rs SitesInsert' = Site
        requestClient SitesInsert'{..}
          = go _siProFileId (Just AltJSON) _siPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SitesInsertResource)
                      mempty
