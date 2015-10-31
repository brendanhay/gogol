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
-- Module      : Network.Google.Resource.DFAReporting.Campaigns.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing campaign.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.campaigns.update@.
module Network.Google.Resource.DFAReporting.Campaigns.Update
    (
    -- * REST Resource
      CampaignsUpdateResource

    -- * Creating a Request
    , campaignsUpdate
    , CampaignsUpdate

    -- * Request Lenses
    , cuProFileId
    , cuPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.campaigns.update@ method which the
-- 'CampaignsUpdate' request conforms to.
type CampaignsUpdateResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "campaigns" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Campaign :> Put '[JSON] Campaign

-- | Updates an existing campaign.
--
-- /See:/ 'campaignsUpdate' smart constructor.
data CampaignsUpdate = CampaignsUpdate
    { _cuProFileId :: !(Textual Int64)
    , _cuPayload   :: !Campaign
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuProFileId'
--
-- * 'cuPayload'
campaignsUpdate
    :: Int64 -- ^ 'cuProFileId'
    -> Campaign -- ^ 'cuPayload'
    -> CampaignsUpdate
campaignsUpdate pCuProFileId_ pCuPayload_ =
    CampaignsUpdate
    { _cuProFileId = _Coerce # pCuProFileId_
    , _cuPayload = pCuPayload_
    }

-- | User profile ID associated with this request.
cuProFileId :: Lens' CampaignsUpdate Int64
cuProFileId
  = lens _cuProFileId (\ s a -> s{_cuProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
cuPayload :: Lens' CampaignsUpdate Campaign
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

instance GoogleRequest CampaignsUpdate where
        type Rs CampaignsUpdate = Campaign
        type Scopes CampaignsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CampaignsUpdate{..}
          = go _cuProFileId (Just AltJSON) _cuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CampaignsUpdateResource)
                      mempty
