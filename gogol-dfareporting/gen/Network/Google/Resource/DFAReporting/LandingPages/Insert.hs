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
-- Module      : Network.Google.Resource.DFAReporting.LandingPages.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new landing page for the specified campaign.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.landingPages.insert@.
module Network.Google.Resource.DFAReporting.LandingPages.Insert
    (
    -- * REST Resource
      LandingPagesInsertResource

    -- * Creating a Request
    , landingPagesInsert
    , LandingPagesInsert

    -- * Request Lenses
    , lpiCampaignId
    , lpiProFileId
    , lpiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.landingPages.insert@ method which the
-- 'LandingPagesInsert' request conforms to.
type LandingPagesInsertResource =
     "dfareporting" :>
       "v2.7" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "campaigns" :>
               Capture "campaignId" (Textual Int64) :>
                 "landingPages" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] LandingPage :>
                       Post '[JSON] LandingPage

-- | Inserts a new landing page for the specified campaign.
--
-- /See:/ 'landingPagesInsert' smart constructor.
data LandingPagesInsert = LandingPagesInsert'
    { _lpiCampaignId :: !(Textual Int64)
    , _lpiProFileId  :: !(Textual Int64)
    , _lpiPayload    :: !LandingPage
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpiCampaignId'
--
-- * 'lpiProFileId'
--
-- * 'lpiPayload'
landingPagesInsert
    :: Int64 -- ^ 'lpiCampaignId'
    -> Int64 -- ^ 'lpiProFileId'
    -> LandingPage -- ^ 'lpiPayload'
    -> LandingPagesInsert
landingPagesInsert pLpiCampaignId_ pLpiProFileId_ pLpiPayload_ =
    LandingPagesInsert'
    { _lpiCampaignId = _Coerce # pLpiCampaignId_
    , _lpiProFileId = _Coerce # pLpiProFileId_
    , _lpiPayload = pLpiPayload_
    }

-- | Landing page campaign ID.
lpiCampaignId :: Lens' LandingPagesInsert Int64
lpiCampaignId
  = lens _lpiCampaignId
      (\ s a -> s{_lpiCampaignId = a})
      . _Coerce

-- | User profile ID associated with this request.
lpiProFileId :: Lens' LandingPagesInsert Int64
lpiProFileId
  = lens _lpiProFileId (\ s a -> s{_lpiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
lpiPayload :: Lens' LandingPagesInsert LandingPage
lpiPayload
  = lens _lpiPayload (\ s a -> s{_lpiPayload = a})

instance GoogleRequest LandingPagesInsert where
        type Rs LandingPagesInsert = LandingPage
        type Scopes LandingPagesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient LandingPagesInsert'{..}
          = go _lpiProFileId _lpiCampaignId (Just AltJSON)
              _lpiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy LandingPagesInsertResource)
                      mempty
