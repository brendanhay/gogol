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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing campaign.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.campaigns.update@.
module Network.Google.Resource.DFAReporting.Campaigns.Update
    (
    -- * REST Resource
      CampaignsUpdateResource

    -- * Creating a Request
    , campaignsUpdate
    , CampaignsUpdate

    -- * Request Lenses
    , cuXgafv
    , cuUploadProtocol
    , cuAccessToken
    , cuUploadType
    , cuProFileId
    , cuPayload
    , cuCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.campaigns.update@ method which the
-- 'CampaignsUpdate' request conforms to.
type CampaignsUpdateResource =
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
                           ReqBody '[JSON] Campaign :> Put '[JSON] Campaign

-- | Updates an existing campaign.
--
-- /See:/ 'campaignsUpdate' smart constructor.
data CampaignsUpdate =
  CampaignsUpdate'
    { _cuXgafv :: !(Maybe Xgafv)
    , _cuUploadProtocol :: !(Maybe Text)
    , _cuAccessToken :: !(Maybe Text)
    , _cuUploadType :: !(Maybe Text)
    , _cuProFileId :: !(Textual Int64)
    , _cuPayload :: !Campaign
    , _cuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CampaignsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuXgafv'
--
-- * 'cuUploadProtocol'
--
-- * 'cuAccessToken'
--
-- * 'cuUploadType'
--
-- * 'cuProFileId'
--
-- * 'cuPayload'
--
-- * 'cuCallback'
campaignsUpdate
    :: Int64 -- ^ 'cuProFileId'
    -> Campaign -- ^ 'cuPayload'
    -> CampaignsUpdate
campaignsUpdate pCuProFileId_ pCuPayload_ =
  CampaignsUpdate'
    { _cuXgafv = Nothing
    , _cuUploadProtocol = Nothing
    , _cuAccessToken = Nothing
    , _cuUploadType = Nothing
    , _cuProFileId = _Coerce # pCuProFileId_
    , _cuPayload = pCuPayload_
    , _cuCallback = Nothing
    }


-- | V1 error format.
cuXgafv :: Lens' CampaignsUpdate (Maybe Xgafv)
cuXgafv = lens _cuXgafv (\ s a -> s{_cuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cuUploadProtocol :: Lens' CampaignsUpdate (Maybe Text)
cuUploadProtocol
  = lens _cuUploadProtocol
      (\ s a -> s{_cuUploadProtocol = a})

-- | OAuth access token.
cuAccessToken :: Lens' CampaignsUpdate (Maybe Text)
cuAccessToken
  = lens _cuAccessToken
      (\ s a -> s{_cuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cuUploadType :: Lens' CampaignsUpdate (Maybe Text)
cuUploadType
  = lens _cuUploadType (\ s a -> s{_cuUploadType = a})

-- | User profile ID associated with this request.
cuProFileId :: Lens' CampaignsUpdate Int64
cuProFileId
  = lens _cuProFileId (\ s a -> s{_cuProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
cuPayload :: Lens' CampaignsUpdate Campaign
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | JSONP
cuCallback :: Lens' CampaignsUpdate (Maybe Text)
cuCallback
  = lens _cuCallback (\ s a -> s{_cuCallback = a})

instance GoogleRequest CampaignsUpdate where
        type Rs CampaignsUpdate = Campaign
        type Scopes CampaignsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CampaignsUpdate'{..}
          = go _cuProFileId _cuXgafv _cuUploadProtocol
              _cuAccessToken
              _cuUploadType
              _cuCallback
              (Just AltJSON)
              _cuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CampaignsUpdateResource)
                      mempty
