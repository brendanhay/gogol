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
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.campaigns.insert@.
module Network.Google.Resource.DFAReporting.Campaigns.Insert
    (
    -- * REST Resource
      CampaignsInsertResource

    -- * Creating a Request
    , campaignsInsert
    , CampaignsInsert

    -- * Request Lenses
    , camXgafv
    , camUploadProtocol
    , camAccessToken
    , camUploadType
    , camProFileId
    , camPayload
    , camCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.campaigns.insert@ method which the
-- 'CampaignsInsert' request conforms to.
type CampaignsInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "campaigns" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Campaign :> Post '[JSON] Campaign

-- | Inserts a new campaign.
--
-- /See:/ 'campaignsInsert' smart constructor.
data CampaignsInsert =
  CampaignsInsert'
    { _camXgafv :: !(Maybe Xgafv)
    , _camUploadProtocol :: !(Maybe Text)
    , _camAccessToken :: !(Maybe Text)
    , _camUploadType :: !(Maybe Text)
    , _camProFileId :: !(Textual Int64)
    , _camPayload :: !Campaign
    , _camCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CampaignsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'camXgafv'
--
-- * 'camUploadProtocol'
--
-- * 'camAccessToken'
--
-- * 'camUploadType'
--
-- * 'camProFileId'
--
-- * 'camPayload'
--
-- * 'camCallback'
campaignsInsert
    :: Int64 -- ^ 'camProFileId'
    -> Campaign -- ^ 'camPayload'
    -> CampaignsInsert
campaignsInsert pCamProFileId_ pCamPayload_ =
  CampaignsInsert'
    { _camXgafv = Nothing
    , _camUploadProtocol = Nothing
    , _camAccessToken = Nothing
    , _camUploadType = Nothing
    , _camProFileId = _Coerce # pCamProFileId_
    , _camPayload = pCamPayload_
    , _camCallback = Nothing
    }


-- | V1 error format.
camXgafv :: Lens' CampaignsInsert (Maybe Xgafv)
camXgafv = lens _camXgafv (\ s a -> s{_camXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
camUploadProtocol :: Lens' CampaignsInsert (Maybe Text)
camUploadProtocol
  = lens _camUploadProtocol
      (\ s a -> s{_camUploadProtocol = a})

-- | OAuth access token.
camAccessToken :: Lens' CampaignsInsert (Maybe Text)
camAccessToken
  = lens _camAccessToken
      (\ s a -> s{_camAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
camUploadType :: Lens' CampaignsInsert (Maybe Text)
camUploadType
  = lens _camUploadType
      (\ s a -> s{_camUploadType = a})

-- | User profile ID associated with this request.
camProFileId :: Lens' CampaignsInsert Int64
camProFileId
  = lens _camProFileId (\ s a -> s{_camProFileId = a})
      . _Coerce

-- | Multipart request metadata.
camPayload :: Lens' CampaignsInsert Campaign
camPayload
  = lens _camPayload (\ s a -> s{_camPayload = a})

-- | JSONP
camCallback :: Lens' CampaignsInsert (Maybe Text)
camCallback
  = lens _camCallback (\ s a -> s{_camCallback = a})

instance GoogleRequest CampaignsInsert where
        type Rs CampaignsInsert = Campaign
        type Scopes CampaignsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CampaignsInsert'{..}
          = go _camProFileId _camXgafv _camUploadProtocol
              _camAccessToken
              _camUploadType
              _camCallback
              (Just AltJSON)
              _camPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CampaignsInsertResource)
                      mempty
