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
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.campaignCreativeAssociations.insert@.
module Network.Google.Resource.DFAReporting.CampaignCreativeAssociations.Insert
    (
    -- * REST Resource
      CampaignCreativeAssociationsInsertResource

    -- * Creating a Request
    , campaignCreativeAssociationsInsert
    , CampaignCreativeAssociationsInsert

    -- * Request Lenses
    , ccaiXgafv
    , ccaiUploadProtocol
    , ccaiAccessToken
    , ccaiUploadType
    , ccaiCampaignId
    , ccaiProFileId
    , ccaiPayload
    , ccaiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.campaignCreativeAssociations.insert@ method which the
-- 'CampaignCreativeAssociationsInsert' request conforms to.
type CampaignCreativeAssociationsInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "campaigns" :>
               Capture "campaignId" (Textual Int64) :>
                 "campaignCreativeAssociations" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] CampaignCreativeAssociation :>
                                 Post '[JSON] CampaignCreativeAssociation

-- | Associates a creative with the specified campaign. This method creates a
-- default ad with dimensions matching the creative in the campaign if such
-- a default ad does not exist already.
--
-- /See:/ 'campaignCreativeAssociationsInsert' smart constructor.
data CampaignCreativeAssociationsInsert =
  CampaignCreativeAssociationsInsert'
    { _ccaiXgafv :: !(Maybe Xgafv)
    , _ccaiUploadProtocol :: !(Maybe Text)
    , _ccaiAccessToken :: !(Maybe Text)
    , _ccaiUploadType :: !(Maybe Text)
    , _ccaiCampaignId :: !(Textual Int64)
    , _ccaiProFileId :: !(Textual Int64)
    , _ccaiPayload :: !CampaignCreativeAssociation
    , _ccaiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CampaignCreativeAssociationsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccaiXgafv'
--
-- * 'ccaiUploadProtocol'
--
-- * 'ccaiAccessToken'
--
-- * 'ccaiUploadType'
--
-- * 'ccaiCampaignId'
--
-- * 'ccaiProFileId'
--
-- * 'ccaiPayload'
--
-- * 'ccaiCallback'
campaignCreativeAssociationsInsert
    :: Int64 -- ^ 'ccaiCampaignId'
    -> Int64 -- ^ 'ccaiProFileId'
    -> CampaignCreativeAssociation -- ^ 'ccaiPayload'
    -> CampaignCreativeAssociationsInsert
campaignCreativeAssociationsInsert pCcaiCampaignId_ pCcaiProFileId_ pCcaiPayload_ =
  CampaignCreativeAssociationsInsert'
    { _ccaiXgafv = Nothing
    , _ccaiUploadProtocol = Nothing
    , _ccaiAccessToken = Nothing
    , _ccaiUploadType = Nothing
    , _ccaiCampaignId = _Coerce # pCcaiCampaignId_
    , _ccaiProFileId = _Coerce # pCcaiProFileId_
    , _ccaiPayload = pCcaiPayload_
    , _ccaiCallback = Nothing
    }


-- | V1 error format.
ccaiXgafv :: Lens' CampaignCreativeAssociationsInsert (Maybe Xgafv)
ccaiXgafv
  = lens _ccaiXgafv (\ s a -> s{_ccaiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccaiUploadProtocol :: Lens' CampaignCreativeAssociationsInsert (Maybe Text)
ccaiUploadProtocol
  = lens _ccaiUploadProtocol
      (\ s a -> s{_ccaiUploadProtocol = a})

-- | OAuth access token.
ccaiAccessToken :: Lens' CampaignCreativeAssociationsInsert (Maybe Text)
ccaiAccessToken
  = lens _ccaiAccessToken
      (\ s a -> s{_ccaiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccaiUploadType :: Lens' CampaignCreativeAssociationsInsert (Maybe Text)
ccaiUploadType
  = lens _ccaiUploadType
      (\ s a -> s{_ccaiUploadType = a})

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

-- | JSONP
ccaiCallback :: Lens' CampaignCreativeAssociationsInsert (Maybe Text)
ccaiCallback
  = lens _ccaiCallback (\ s a -> s{_ccaiCallback = a})

instance GoogleRequest
           CampaignCreativeAssociationsInsert
         where
        type Rs CampaignCreativeAssociationsInsert =
             CampaignCreativeAssociation
        type Scopes CampaignCreativeAssociationsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CampaignCreativeAssociationsInsert'{..}
          = go _ccaiProFileId _ccaiCampaignId _ccaiXgafv
              _ccaiUploadProtocol
              _ccaiAccessToken
              _ccaiUploadType
              _ccaiCallback
              (Just AltJSON)
              _ccaiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CampaignCreativeAssociationsInsertResource)
                      mempty
