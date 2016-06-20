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
-- Module      : Network.Google.Resource.DFAReporting.LandingPages.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing campaign landing page.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.landingPages.delete@.
module Network.Google.Resource.DFAReporting.LandingPages.Delete
    (
    -- * REST Resource
      LandingPagesDeleteResource

    -- * Creating a Request
    , landingPagesDelete
    , LandingPagesDelete

    -- * Request Lenses
    , lpdCampaignId
    , lpdProFileId
    , lpdId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.landingPages.delete@ method which the
-- 'LandingPagesDelete' request conforms to.
type LandingPagesDeleteResource =
     "dfareporting" :>
       "v2.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "campaigns" :>
               Capture "campaignId" (Textual Int64) :>
                 "landingPages" :>
                   Capture "id" (Textual Int64) :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing campaign landing page.
--
-- /See:/ 'landingPagesDelete' smart constructor.
data LandingPagesDelete = LandingPagesDelete'
    { _lpdCampaignId :: !(Textual Int64)
    , _lpdProFileId  :: !(Textual Int64)
    , _lpdId         :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpdCampaignId'
--
-- * 'lpdProFileId'
--
-- * 'lpdId'
landingPagesDelete
    :: Int64 -- ^ 'lpdCampaignId'
    -> Int64 -- ^ 'lpdProFileId'
    -> Int64 -- ^ 'lpdId'
    -> LandingPagesDelete
landingPagesDelete pLpdCampaignId_ pLpdProFileId_ pLpdId_ =
    LandingPagesDelete'
    { _lpdCampaignId = _Coerce # pLpdCampaignId_
    , _lpdProFileId = _Coerce # pLpdProFileId_
    , _lpdId = _Coerce # pLpdId_
    }

-- | Landing page campaign ID.
lpdCampaignId :: Lens' LandingPagesDelete Int64
lpdCampaignId
  = lens _lpdCampaignId
      (\ s a -> s{_lpdCampaignId = a})
      . _Coerce

-- | User profile ID associated with this request.
lpdProFileId :: Lens' LandingPagesDelete Int64
lpdProFileId
  = lens _lpdProFileId (\ s a -> s{_lpdProFileId = a})
      . _Coerce

-- | Landing page ID.
lpdId :: Lens' LandingPagesDelete Int64
lpdId
  = lens _lpdId (\ s a -> s{_lpdId = a}) . _Coerce

instance GoogleRequest LandingPagesDelete where
        type Rs LandingPagesDelete = ()
        type Scopes LandingPagesDelete =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient LandingPagesDelete'{..}
          = go _lpdProFileId _lpdCampaignId _lpdId
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy LandingPagesDeleteResource)
                      mempty
