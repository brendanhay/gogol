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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one advertiser group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertiserGroups.get@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.Get
    (
    -- * REST Resource
      AdvertiserGroupsGetResource

    -- * Creating a Request
    , advertiserGroupsGet
    , AdvertiserGroupsGet

    -- * Request Lenses
    , agggXgafv
    , agggUploadProtocol
    , agggAccessToken
    , agggUploadType
    , agggProFileId
    , agggId
    , agggCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserGroups.get@ method which the
-- 'AdvertiserGroupsGet' request conforms to.
type AdvertiserGroupsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertiserGroups" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] AdvertiserGroup

-- | Gets one advertiser group by ID.
--
-- /See:/ 'advertiserGroupsGet' smart constructor.
data AdvertiserGroupsGet =
  AdvertiserGroupsGet'
    { _agggXgafv :: !(Maybe Xgafv)
    , _agggUploadProtocol :: !(Maybe Text)
    , _agggAccessToken :: !(Maybe Text)
    , _agggUploadType :: !(Maybe Text)
    , _agggProFileId :: !(Textual Int64)
    , _agggId :: !(Textual Int64)
    , _agggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertiserGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agggXgafv'
--
-- * 'agggUploadProtocol'
--
-- * 'agggAccessToken'
--
-- * 'agggUploadType'
--
-- * 'agggProFileId'
--
-- * 'agggId'
--
-- * 'agggCallback'
advertiserGroupsGet
    :: Int64 -- ^ 'agggProFileId'
    -> Int64 -- ^ 'agggId'
    -> AdvertiserGroupsGet
advertiserGroupsGet pAgggProFileId_ pAgggId_ =
  AdvertiserGroupsGet'
    { _agggXgafv = Nothing
    , _agggUploadProtocol = Nothing
    , _agggAccessToken = Nothing
    , _agggUploadType = Nothing
    , _agggProFileId = _Coerce # pAgggProFileId_
    , _agggId = _Coerce # pAgggId_
    , _agggCallback = Nothing
    }


-- | V1 error format.
agggXgafv :: Lens' AdvertiserGroupsGet (Maybe Xgafv)
agggXgafv
  = lens _agggXgafv (\ s a -> s{_agggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agggUploadProtocol :: Lens' AdvertiserGroupsGet (Maybe Text)
agggUploadProtocol
  = lens _agggUploadProtocol
      (\ s a -> s{_agggUploadProtocol = a})

-- | OAuth access token.
agggAccessToken :: Lens' AdvertiserGroupsGet (Maybe Text)
agggAccessToken
  = lens _agggAccessToken
      (\ s a -> s{_agggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agggUploadType :: Lens' AdvertiserGroupsGet (Maybe Text)
agggUploadType
  = lens _agggUploadType
      (\ s a -> s{_agggUploadType = a})

-- | User profile ID associated with this request.
agggProFileId :: Lens' AdvertiserGroupsGet Int64
agggProFileId
  = lens _agggProFileId
      (\ s a -> s{_agggProFileId = a})
      . _Coerce

-- | Advertiser group ID.
agggId :: Lens' AdvertiserGroupsGet Int64
agggId
  = lens _agggId (\ s a -> s{_agggId = a}) . _Coerce

-- | JSONP
agggCallback :: Lens' AdvertiserGroupsGet (Maybe Text)
agggCallback
  = lens _agggCallback (\ s a -> s{_agggCallback = a})

instance GoogleRequest AdvertiserGroupsGet where
        type Rs AdvertiserGroupsGet = AdvertiserGroup
        type Scopes AdvertiserGroupsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserGroupsGet'{..}
          = go _agggProFileId _agggId _agggXgafv
              _agggUploadProtocol
              _agggAccessToken
              _agggUploadType
              _agggCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserGroupsGetResource)
                      mempty
