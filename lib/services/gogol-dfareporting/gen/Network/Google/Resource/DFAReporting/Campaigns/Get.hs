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
-- Module      : Network.Google.Resource.DFAReporting.Campaigns.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one campaign by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.campaigns.get@.
module Network.Google.Resource.DFAReporting.Campaigns.Get
    (
    -- * REST Resource
      CampaignsGetResource

    -- * Creating a Request
    , campaignsGet
    , CampaignsGet

    -- * Request Lenses
    , cggXgafv
    , cggUploadProtocol
    , cggAccessToken
    , cggUploadType
    , cggProFileId
    , cggId
    , cggCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.campaigns.get@ method which the
-- 'CampaignsGet' request conforms to.
type CampaignsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "campaigns" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Campaign

-- | Gets one campaign by ID.
--
-- /See:/ 'campaignsGet' smart constructor.
data CampaignsGet =
  CampaignsGet'
    { _cggXgafv :: !(Maybe Xgafv)
    , _cggUploadProtocol :: !(Maybe Text)
    , _cggAccessToken :: !(Maybe Text)
    , _cggUploadType :: !(Maybe Text)
    , _cggProFileId :: !(Textual Int64)
    , _cggId :: !(Textual Int64)
    , _cggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CampaignsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggXgafv'
--
-- * 'cggUploadProtocol'
--
-- * 'cggAccessToken'
--
-- * 'cggUploadType'
--
-- * 'cggProFileId'
--
-- * 'cggId'
--
-- * 'cggCallback'
campaignsGet
    :: Int64 -- ^ 'cggProFileId'
    -> Int64 -- ^ 'cggId'
    -> CampaignsGet
campaignsGet pCggProFileId_ pCggId_ =
  CampaignsGet'
    { _cggXgafv = Nothing
    , _cggUploadProtocol = Nothing
    , _cggAccessToken = Nothing
    , _cggUploadType = Nothing
    , _cggProFileId = _Coerce # pCggProFileId_
    , _cggId = _Coerce # pCggId_
    , _cggCallback = Nothing
    }


-- | V1 error format.
cggXgafv :: Lens' CampaignsGet (Maybe Xgafv)
cggXgafv = lens _cggXgafv (\ s a -> s{_cggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cggUploadProtocol :: Lens' CampaignsGet (Maybe Text)
cggUploadProtocol
  = lens _cggUploadProtocol
      (\ s a -> s{_cggUploadProtocol = a})

-- | OAuth access token.
cggAccessToken :: Lens' CampaignsGet (Maybe Text)
cggAccessToken
  = lens _cggAccessToken
      (\ s a -> s{_cggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cggUploadType :: Lens' CampaignsGet (Maybe Text)
cggUploadType
  = lens _cggUploadType
      (\ s a -> s{_cggUploadType = a})

-- | User profile ID associated with this request.
cggProFileId :: Lens' CampaignsGet Int64
cggProFileId
  = lens _cggProFileId (\ s a -> s{_cggProFileId = a})
      . _Coerce

-- | Campaign ID.
cggId :: Lens' CampaignsGet Int64
cggId
  = lens _cggId (\ s a -> s{_cggId = a}) . _Coerce

-- | JSONP
cggCallback :: Lens' CampaignsGet (Maybe Text)
cggCallback
  = lens _cggCallback (\ s a -> s{_cggCallback = a})

instance GoogleRequest CampaignsGet where
        type Rs CampaignsGet = Campaign
        type Scopes CampaignsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CampaignsGet'{..}
          = go _cggProFileId _cggId _cggXgafv
              _cggUploadProtocol
              _cggAccessToken
              _cggUploadType
              _cggCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy CampaignsGetResource)
                      mempty
