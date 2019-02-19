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
-- Module      : Network.Google.Resource.DFAReporting.Campaigns.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new campaign.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.campaigns.insert@.
module Network.Google.Resource.DFAReporting.Campaigns.Insert
    (
    -- * REST Resource
      CampaignsInsertResource

    -- * Creating a Request
    , campaignsInsert
    , CampaignsInsert

    -- * Request Lenses
    , camProFileId
    , camPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.campaigns.insert@ method which the
-- 'CampaignsInsert' request conforms to.
type CampaignsInsertResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "campaigns" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Campaign :> Post '[JSON] Campaign

-- | Inserts a new campaign.
--
-- /See:/ 'campaignsInsert' smart constructor.
data CampaignsInsert =
  CampaignsInsert'
    { _camProFileId :: !(Textual Int64)
    , _camPayload   :: !Campaign
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CampaignsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'camProFileId'
--
-- * 'camPayload'
campaignsInsert
    :: Int64 -- ^ 'camProFileId'
    -> Campaign -- ^ 'camPayload'
    -> CampaignsInsert
campaignsInsert pCamProFileId_ pCamPayload_ =
  CampaignsInsert'
    {_camProFileId = _Coerce # pCamProFileId_, _camPayload = pCamPayload_}


-- | User profile ID associated with this request.
camProFileId :: Lens' CampaignsInsert Int64
camProFileId
  = lens _camProFileId (\ s a -> s{_camProFileId = a})
      . _Coerce

-- | Multipart request metadata.
camPayload :: Lens' CampaignsInsert Campaign
camPayload
  = lens _camPayload (\ s a -> s{_camPayload = a})

instance GoogleRequest CampaignsInsert where
        type Rs CampaignsInsert = Campaign
        type Scopes CampaignsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CampaignsInsert'{..}
          = go _camProFileId (Just AltJSON) _camPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CampaignsInsertResource)
                      mempty
