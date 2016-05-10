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
-- Module      : Network.Google.Resource.DFAReporting.CampaignCreativeAssociations.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a creative with the specified campaign. This method creates a
-- default ad with dimensions matching the creative in the campaign if such
-- a default ad does not exist already.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.campaignCreativeAssociations.insert@.
module Network.Google.Resource.DFAReporting.CampaignCreativeAssociations.Insert
    (
    -- * REST Resource
      CampaignCreativeAssociationsInsertResource

    -- * Creating a Request
    , campaignCreativeAssociationsInsert
    , CampaignCreativeAssociationsInsert

    -- * Request Lenses
    , ccaiCampaignId
    , ccaiProFileId
    , ccaiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.campaignCreativeAssociations.insert@ method which the
-- 'CampaignCreativeAssociationsInsert' request conforms to.
type CampaignCreativeAssociationsInsertResource =
     "dfareporting" :>
       "v2.5beta1" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "campaigns" :>
               Capture "campaignId" (Textual Int64) :>
                 "campaignCreativeAssociations" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CampaignCreativeAssociation :>
                       Post '[JSON] CampaignCreativeAssociation

-- | Associates a creative with the specified campaign. This method creates a
-- default ad with dimensions matching the creative in the campaign if such
-- a default ad does not exist already.
--
-- /See:/ 'campaignCreativeAssociationsInsert' smart constructor.
data CampaignCreativeAssociationsInsert = CampaignCreativeAssociationsInsert'
    { _ccaiCampaignId :: !(Textual Int64)
    , _ccaiProFileId  :: !(Textual Int64)
    , _ccaiPayload    :: !CampaignCreativeAssociation
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignCreativeAssociationsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccaiCampaignId'
--
-- * 'ccaiProFileId'
--
-- * 'ccaiPayload'
campaignCreativeAssociationsInsert
    :: Int64 -- ^ 'ccaiCampaignId'
    -> Int64 -- ^ 'ccaiProFileId'
    -> CampaignCreativeAssociation -- ^ 'ccaiPayload'
    -> CampaignCreativeAssociationsInsert
campaignCreativeAssociationsInsert pCcaiCampaignId_ pCcaiProFileId_ pCcaiPayload_ =
    CampaignCreativeAssociationsInsert'
    { _ccaiCampaignId = _Coerce # pCcaiCampaignId_
    , _ccaiProFileId = _Coerce # pCcaiProFileId_
    , _ccaiPayload = pCcaiPayload_
    }

-- | Campaign ID in this association.
ccaiCampaignId :: Lens' CampaignCreativeAssociationsInsert Int64
ccaiCampaignId
  = lens _ccaiCampaignId
      (\ s a -> s{_ccaiCampaignId = a})
      . _Coerce

-- | User profile ID associated with this request.
ccaiProFileId :: Lens' CampaignCreativeAssociationsInsert Int64
ccaiProFileId
  = lens _ccaiProFileId
      (\ s a -> s{_ccaiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
ccaiPayload :: Lens' CampaignCreativeAssociationsInsert CampaignCreativeAssociation
ccaiPayload
  = lens _ccaiPayload (\ s a -> s{_ccaiPayload = a})

instance GoogleRequest
         CampaignCreativeAssociationsInsert where
        type Rs CampaignCreativeAssociationsInsert =
             CampaignCreativeAssociation
        type Scopes CampaignCreativeAssociationsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CampaignCreativeAssociationsInsert'{..}
          = go _ccaiProFileId _ccaiCampaignId (Just AltJSON)
              _ccaiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CampaignCreativeAssociationsInsertResource)
                      mempty
