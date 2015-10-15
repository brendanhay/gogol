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
-- Module      : Network.Google.Resource.DFAReporting.Campaigns.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one campaign by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCampaignsGet@.
module Network.Google.Resource.DFAReporting.Campaigns.Get
    (
    -- * REST Resource
      CampaignsGetResource

    -- * Creating a Request
    , campaignsGet'
    , CampaignsGet'

    -- * Request Lenses
    , camaProFileId
    , camaId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCampaignsGet@ method which the
-- 'CampaignsGet'' request conforms to.
type CampaignsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :> Get '[JSON] Campaign

-- | Gets one campaign by ID.
--
-- /See:/ 'campaignsGet'' smart constructor.
data CampaignsGet' = CampaignsGet'
    { _camaProFileId :: !Int64
    , _camaId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'camaProFileId'
--
-- * 'camaId'
campaignsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CampaignsGet'
campaignsGet' pCamaProFileId_ pCamaId_ =
    CampaignsGet'
    { _camaProFileId = pCamaProFileId_
    , _camaId = pCamaId_
    }

-- | User profile ID associated with this request.
camaProFileId :: Lens' CampaignsGet' Int64
camaProFileId
  = lens _camaProFileId
      (\ s a -> s{_camaProFileId = a})

-- | Campaign ID.
camaId :: Lens' CampaignsGet' Int64
camaId = lens _camaId (\ s a -> s{_camaId = a})

instance GoogleRequest CampaignsGet' where
        type Rs CampaignsGet' = Campaign
        requestClient CampaignsGet'{..}
          = go _camaProFileId _camaId (Just AltJSON)
              dFAReporting
          where go
                  = buildClient (Proxy :: Proxy CampaignsGetResource)
                      mempty
