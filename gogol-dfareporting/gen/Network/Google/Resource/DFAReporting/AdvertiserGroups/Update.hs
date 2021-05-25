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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing advertiser group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertiserGroups.update@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.Update
    (
    -- * REST Resource
      AdvertiserGroupsUpdateResource

    -- * Creating a Request
    , advertiserGroupsUpdate
    , AdvertiserGroupsUpdate

    -- * Request Lenses
    , aguXgafv
    , aguUploadProtocol
    , aguAccessToken
    , aguUploadType
    , aguProFileId
    , aguPayload
    , aguCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserGroups.update@ method which the
-- 'AdvertiserGroupsUpdate' request conforms to.
type AdvertiserGroupsUpdateResource =
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
                             Put '[JSON] AdvertiserGroup

-- | Updates an existing advertiser group.
--
-- /See:/ 'advertiserGroupsUpdate' smart constructor.
data AdvertiserGroupsUpdate =
  AdvertiserGroupsUpdate'
    { _aguXgafv :: !(Maybe Xgafv)
    , _aguUploadProtocol :: !(Maybe Text)
    , _aguAccessToken :: !(Maybe Text)
    , _aguUploadType :: !(Maybe Text)
    , _aguProFileId :: !(Textual Int64)
    , _aguPayload :: !AdvertiserGroup
    , _aguCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertiserGroupsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aguXgafv'
--
-- * 'aguUploadProtocol'
--
-- * 'aguAccessToken'
--
-- * 'aguUploadType'
--
-- * 'aguProFileId'
--
-- * 'aguPayload'
--
-- * 'aguCallback'
advertiserGroupsUpdate
    :: Int64 -- ^ 'aguProFileId'
    -> AdvertiserGroup -- ^ 'aguPayload'
    -> AdvertiserGroupsUpdate
advertiserGroupsUpdate pAguProFileId_ pAguPayload_ =
  AdvertiserGroupsUpdate'
    { _aguXgafv = Nothing
    , _aguUploadProtocol = Nothing
    , _aguAccessToken = Nothing
    , _aguUploadType = Nothing
    , _aguProFileId = _Coerce # pAguProFileId_
    , _aguPayload = pAguPayload_
    , _aguCallback = Nothing
    }


-- | V1 error format.
aguXgafv :: Lens' AdvertiserGroupsUpdate (Maybe Xgafv)
aguXgafv = lens _aguXgafv (\ s a -> s{_aguXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aguUploadProtocol :: Lens' AdvertiserGroupsUpdate (Maybe Text)
aguUploadProtocol
  = lens _aguUploadProtocol
      (\ s a -> s{_aguUploadProtocol = a})

-- | OAuth access token.
aguAccessToken :: Lens' AdvertiserGroupsUpdate (Maybe Text)
aguAccessToken
  = lens _aguAccessToken
      (\ s a -> s{_aguAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aguUploadType :: Lens' AdvertiserGroupsUpdate (Maybe Text)
aguUploadType
  = lens _aguUploadType
      (\ s a -> s{_aguUploadType = a})

-- | User profile ID associated with this request.
aguProFileId :: Lens' AdvertiserGroupsUpdate Int64
aguProFileId
  = lens _aguProFileId (\ s a -> s{_aguProFileId = a})
      . _Coerce

-- | Multipart request metadata.
aguPayload :: Lens' AdvertiserGroupsUpdate AdvertiserGroup
aguPayload
  = lens _aguPayload (\ s a -> s{_aguPayload = a})

-- | JSONP
aguCallback :: Lens' AdvertiserGroupsUpdate (Maybe Text)
aguCallback
  = lens _aguCallback (\ s a -> s{_aguCallback = a})

instance GoogleRequest AdvertiserGroupsUpdate where
        type Rs AdvertiserGroupsUpdate = AdvertiserGroup
        type Scopes AdvertiserGroupsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserGroupsUpdate'{..}
          = go _aguProFileId _aguXgafv _aguUploadProtocol
              _aguAccessToken
              _aguUploadType
              _aguCallback
              (Just AltJSON)
              _aguPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserGroupsUpdateResource)
                      mempty
