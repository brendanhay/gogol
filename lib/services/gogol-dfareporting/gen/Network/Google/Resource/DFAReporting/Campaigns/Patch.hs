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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing campaign. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.campaigns.patch@.
module Network.Google.Resource.DFAReporting.Campaigns.Patch
    (
    -- * REST Resource
      CampaignsPatchResource

    -- * Creating a Request
    , campaignsPatch
    , CampaignsPatch

    -- * Request Lenses
    , cpXgafv
    , cpUploadProtocol
    , cpAccessToken
    , cpUploadType
    , cpProFileId
    , cpPayload
    , cpId
    , cpCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.campaigns.patch@ method which the
-- 'CampaignsPatch' request conforms to.
type CampaignsPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "campaigns" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Campaign :> Patch '[JSON] Campaign

-- | Updates an existing campaign. This method supports patch semantics.
--
-- /See:/ 'campaignsPatch' smart constructor.
data CampaignsPatch =
  CampaignsPatch'
    { _cpXgafv :: !(Maybe Xgafv)
    , _cpUploadProtocol :: !(Maybe Text)
    , _cpAccessToken :: !(Maybe Text)
    , _cpUploadType :: !(Maybe Text)
    , _cpProFileId :: !(Textual Int64)
    , _cpPayload :: !Campaign
    , _cpId :: !(Textual Int64)
    , _cpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CampaignsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpXgafv'
--
-- * 'cpUploadProtocol'
--
-- * 'cpAccessToken'
--
-- * 'cpUploadType'
--
-- * 'cpProFileId'
--
-- * 'cpPayload'
--
-- * 'cpId'
--
-- * 'cpCallback'
campaignsPatch
    :: Int64 -- ^ 'cpProFileId'
    -> Campaign -- ^ 'cpPayload'
    -> Int64 -- ^ 'cpId'
    -> CampaignsPatch
campaignsPatch pCpProFileId_ pCpPayload_ pCpId_ =
  CampaignsPatch'
    { _cpXgafv = Nothing
    , _cpUploadProtocol = Nothing
    , _cpAccessToken = Nothing
    , _cpUploadType = Nothing
    , _cpProFileId = _Coerce # pCpProFileId_
    , _cpPayload = pCpPayload_
    , _cpId = _Coerce # pCpId_
    , _cpCallback = Nothing
    }


-- | V1 error format.
cpXgafv :: Lens' CampaignsPatch (Maybe Xgafv)
cpXgafv = lens _cpXgafv (\ s a -> s{_cpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpUploadProtocol :: Lens' CampaignsPatch (Maybe Text)
cpUploadProtocol
  = lens _cpUploadProtocol
      (\ s a -> s{_cpUploadProtocol = a})

-- | OAuth access token.
cpAccessToken :: Lens' CampaignsPatch (Maybe Text)
cpAccessToken
  = lens _cpAccessToken
      (\ s a -> s{_cpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpUploadType :: Lens' CampaignsPatch (Maybe Text)
cpUploadType
  = lens _cpUploadType (\ s a -> s{_cpUploadType = a})

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

-- | JSONP
cpCallback :: Lens' CampaignsPatch (Maybe Text)
cpCallback
  = lens _cpCallback (\ s a -> s{_cpCallback = a})

instance GoogleRequest CampaignsPatch where
        type Rs CampaignsPatch = Campaign
        type Scopes CampaignsPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CampaignsPatch'{..}
          = go _cpProFileId (Just _cpId) _cpXgafv
              _cpUploadProtocol
              _cpAccessToken
              _cpUploadType
              _cpCallback
              (Just AltJSON)
              _cpPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy CampaignsPatchResource)
                      mempty
