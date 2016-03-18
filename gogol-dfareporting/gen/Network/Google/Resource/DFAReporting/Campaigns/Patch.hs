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
-- Module      : Network.Google.Resource.DFAReporting.Campaigns.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing campaign. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.campaigns.patch@.
module Network.Google.Resource.DFAReporting.Campaigns.Patch
    (
    -- * REST Resource
      CampaignsPatchResource

    -- * Creating a Request
    , campaignsPatch
    , CampaignsPatch

    -- * Request Lenses
    , cpProFileId
    , cpPayload
    , cpId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.campaigns.patch@ method which the
-- 'CampaignsPatch' request conforms to.
type CampaignsPatchResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "campaigns" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Campaign :> Patch '[JSON] Campaign

-- | Updates an existing campaign. This method supports patch semantics.
--
-- /See:/ 'campaignsPatch' smart constructor.
data CampaignsPatch = CampaignsPatch
    { _cpProFileId :: !(Textual Int64)
    , _cpPayload   :: !Campaign
    , _cpId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpProFileId'
--
-- * 'cpPayload'
--
-- * 'cpId'
campaignsPatch
    :: Int64 -- ^ 'cpProFileId'
    -> Campaign -- ^ 'cpPayload'
    -> Int64 -- ^ 'cpId'
    -> CampaignsPatch
campaignsPatch pCpProFileId_ pCpPayload_ pCpId_ =
    CampaignsPatch
    { _cpProFileId = _Coerce # pCpProFileId_
    , _cpPayload = pCpPayload_
    , _cpId = _Coerce # pCpId_
    }

-- | User profile ID associated with this request.
cpProFileId :: Lens' CampaignsPatch Int64
cpProFileId
  = lens _cpProFileId (\ s a -> s{_cpProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
cpPayload :: Lens' CampaignsPatch Campaign
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | Campaign ID.
cpId :: Lens' CampaignsPatch Int64
cpId = lens _cpId (\ s a -> s{_cpId = a}) . _Coerce

instance GoogleRequest CampaignsPatch where
        type Rs CampaignsPatch = Campaign
        requestClient CampaignsPatch{..}
          = go _cpProFileId (Just _cpId) (Just AltJSON)
              _cpPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy CampaignsPatchResource)
                      mempty
