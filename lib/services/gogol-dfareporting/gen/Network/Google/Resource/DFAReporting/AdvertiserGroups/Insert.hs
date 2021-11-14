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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new advertiser group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertiserGroups.insert@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.Insert
    (
    -- * REST Resource
      AdvertiserGroupsInsertResource

    -- * Creating a Request
    , advertiserGroupsInsert
    , AdvertiserGroupsInsert

    -- * Request Lenses
    , agiXgafv
    , agiUploadProtocol
    , agiAccessToken
    , agiUploadType
    , agiProFileId
    , agiPayload
    , agiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserGroups.insert@ method which the
-- 'AdvertiserGroupsInsert' request conforms to.
type AdvertiserGroupsInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertiserGroups" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AdvertiserGroup :>
                             Post '[JSON] AdvertiserGroup

-- | Inserts a new advertiser group.
--
-- /See:/ 'advertiserGroupsInsert' smart constructor.
data AdvertiserGroupsInsert =
  AdvertiserGroupsInsert'
    { _agiXgafv :: !(Maybe Xgafv)
    , _agiUploadProtocol :: !(Maybe Text)
    , _agiAccessToken :: !(Maybe Text)
    , _agiUploadType :: !(Maybe Text)
    , _agiProFileId :: !(Textual Int64)
    , _agiPayload :: !AdvertiserGroup
    , _agiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertiserGroupsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agiXgafv'
--
-- * 'agiUploadProtocol'
--
-- * 'agiAccessToken'
--
-- * 'agiUploadType'
--
-- * 'agiProFileId'
--
-- * 'agiPayload'
--
-- * 'agiCallback'
advertiserGroupsInsert
    :: Int64 -- ^ 'agiProFileId'
    -> AdvertiserGroup -- ^ 'agiPayload'
    -> AdvertiserGroupsInsert
advertiserGroupsInsert pAgiProFileId_ pAgiPayload_ =
  AdvertiserGroupsInsert'
    { _agiXgafv = Nothing
    , _agiUploadProtocol = Nothing
    , _agiAccessToken = Nothing
    , _agiUploadType = Nothing
    , _agiProFileId = _Coerce # pAgiProFileId_
    , _agiPayload = pAgiPayload_
    , _agiCallback = Nothing
    }


-- | V1 error format.
agiXgafv :: Lens' AdvertiserGroupsInsert (Maybe Xgafv)
agiXgafv = lens _agiXgafv (\ s a -> s{_agiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agiUploadProtocol :: Lens' AdvertiserGroupsInsert (Maybe Text)
agiUploadProtocol
  = lens _agiUploadProtocol
      (\ s a -> s{_agiUploadProtocol = a})

-- | OAuth access token.
agiAccessToken :: Lens' AdvertiserGroupsInsert (Maybe Text)
agiAccessToken
  = lens _agiAccessToken
      (\ s a -> s{_agiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agiUploadType :: Lens' AdvertiserGroupsInsert (Maybe Text)
agiUploadType
  = lens _agiUploadType
      (\ s a -> s{_agiUploadType = a})

-- | User profile ID associated with this request.
agiProFileId :: Lens' AdvertiserGroupsInsert Int64
agiProFileId
  = lens _agiProFileId (\ s a -> s{_agiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
agiPayload :: Lens' AdvertiserGroupsInsert AdvertiserGroup
agiPayload
  = lens _agiPayload (\ s a -> s{_agiPayload = a})

-- | JSONP
agiCallback :: Lens' AdvertiserGroupsInsert (Maybe Text)
agiCallback
  = lens _agiCallback (\ s a -> s{_agiCallback = a})

instance GoogleRequest AdvertiserGroupsInsert where
        type Rs AdvertiserGroupsInsert = AdvertiserGroup
        type Scopes AdvertiserGroupsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserGroupsInsert'{..}
          = go _agiProFileId _agiXgafv _agiUploadProtocol
              _agiAccessToken
              _agiUploadType
              _agiCallback
              (Just AltJSON)
              _agiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserGroupsInsertResource)
                      mempty
