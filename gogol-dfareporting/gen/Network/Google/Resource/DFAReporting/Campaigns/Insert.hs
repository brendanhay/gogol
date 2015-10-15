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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new campaign.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCampaignsInsert@.
module Network.Google.Resource.DFAReporting.Campaigns.Insert
    (
    -- * REST Resource
      CampaignsInsertResource

    -- * Creating a Request
    , campaignsInsert'
    , CampaignsInsert'

    -- * Request Lenses
    , ciProFileId
    , ciPayload
    , ciDefaultLandingPageURL
    , ciDefaultLandingPageName
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCampaignsInsert@ method which the
-- 'CampaignsInsert'' request conforms to.
type CampaignsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           QueryParam "defaultLandingPageName" Text :>
             QueryParam "defaultLandingPageUrl" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Campaign :> Post '[JSON] Campaign

-- | Inserts a new campaign.
--
-- /See:/ 'campaignsInsert'' smart constructor.
data CampaignsInsert' = CampaignsInsert'
    { _ciProFileId              :: !Int64
    , _ciPayload                :: !Campaign
    , _ciDefaultLandingPageURL  :: !Text
    , _ciDefaultLandingPageName :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciProFileId'
--
-- * 'ciPayload'
--
-- * 'ciDefaultLandingPageURL'
--
-- * 'ciDefaultLandingPageName'
campaignsInsert'
    :: Int64 -- ^ 'profileId'
    -> Campaign -- ^ 'payload'
    -> Text -- ^ 'defaultLandingPageUrl'
    -> Text -- ^ 'defaultLandingPageName'
    -> CampaignsInsert'
campaignsInsert' pCiProFileId_ pCiPayload_ pCiDefaultLandingPageURL_ pCiDefaultLandingPageName_ =
    CampaignsInsert'
    { _ciProFileId = pCiProFileId_
    , _ciPayload = pCiPayload_
    , _ciDefaultLandingPageURL = pCiDefaultLandingPageURL_
    , _ciDefaultLandingPageName = pCiDefaultLandingPageName_
    }

-- | User profile ID associated with this request.
ciProFileId :: Lens' CampaignsInsert' Int64
ciProFileId
  = lens _ciProFileId (\ s a -> s{_ciProFileId = a})

-- | Multipart request metadata.
ciPayload :: Lens' CampaignsInsert' Campaign
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

-- | Default landing page URL for this new campaign.
ciDefaultLandingPageURL :: Lens' CampaignsInsert' Text
ciDefaultLandingPageURL
  = lens _ciDefaultLandingPageURL
      (\ s a -> s{_ciDefaultLandingPageURL = a})

-- | Default landing page name for this new campaign. Must be less than 256
-- characters long.
ciDefaultLandingPageName :: Lens' CampaignsInsert' Text
ciDefaultLandingPageName
  = lens _ciDefaultLandingPageName
      (\ s a -> s{_ciDefaultLandingPageName = a})

instance GoogleRequest CampaignsInsert' where
        type Rs CampaignsInsert' = Campaign
        requestClient CampaignsInsert'{..}
          = go _ciProFileId (Just _ciDefaultLandingPageName)
              (Just _ciDefaultLandingPageURL)
              (Just AltJSON)
              _ciPayload
              dFAReporting
          where go
                  = buildClient
                      (Proxy :: Proxy CampaignsInsertResource)
                      mempty
