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
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.campaigns.insert@.
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
    , camDefaultLandingPageURL
    , camDefaultLandingPageName
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.campaigns.insert@ method which the
-- 'CampaignsInsert' request conforms to.
type CampaignsInsertResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "campaigns" :>
               QueryParam "defaultLandingPageName" Text :>
                 QueryParam "defaultLandingPageUrl" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Campaign :> Post '[JSON] Campaign

-- | Inserts a new campaign.
--
-- /See:/ 'campaignsInsert' smart constructor.
data CampaignsInsert = CampaignsInsert
    { _camProFileId              :: !(Textual Int64)
    , _camPayload                :: !Campaign
    , _camDefaultLandingPageURL  :: !Text
    , _camDefaultLandingPageName :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'camProFileId'
--
-- * 'camPayload'
--
-- * 'camDefaultLandingPageURL'
--
-- * 'camDefaultLandingPageName'
campaignsInsert
    :: Int64 -- ^ 'camProFileId'
    -> Campaign -- ^ 'camPayload'
    -> Text -- ^ 'camDefaultLandingPageURL'
    -> Text -- ^ 'camDefaultLandingPageName'
    -> CampaignsInsert
campaignsInsert pCamProFileId_ pCamPayload_ pCamDefaultLandingPageURL_ pCamDefaultLandingPageName_ =
    CampaignsInsert
    { _camProFileId = _Coerce # pCamProFileId_
    , _camPayload = pCamPayload_
    , _camDefaultLandingPageURL = pCamDefaultLandingPageURL_
    , _camDefaultLandingPageName = pCamDefaultLandingPageName_
    }

-- | User profile ID associated with this request.
camProFileId :: Lens' CampaignsInsert Int64
camProFileId
  = lens _camProFileId (\ s a -> s{_camProFileId = a})
      . _Coerce

-- | Multipart request metadata.
camPayload :: Lens' CampaignsInsert Campaign
camPayload
  = lens _camPayload (\ s a -> s{_camPayload = a})

-- | Default landing page URL for this new campaign.
camDefaultLandingPageURL :: Lens' CampaignsInsert Text
camDefaultLandingPageURL
  = lens _camDefaultLandingPageURL
      (\ s a -> s{_camDefaultLandingPageURL = a})

-- | Default landing page name for this new campaign. Must be less than 256
-- characters long.
camDefaultLandingPageName :: Lens' CampaignsInsert Text
camDefaultLandingPageName
  = lens _camDefaultLandingPageName
      (\ s a -> s{_camDefaultLandingPageName = a})

instance GoogleRequest CampaignsInsert where
        type Rs CampaignsInsert = Campaign
        requestClient CampaignsInsert{..}
          = go _camProFileId (Just _camDefaultLandingPageName)
              (Just _camDefaultLandingPageURL)
              (Just AltJSON)
              _camPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CampaignsInsertResource)
                      mempty
