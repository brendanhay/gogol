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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing advertiser group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertiserGroups.delete@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.Delete
    (
    -- * REST Resource
      AdvertiserGroupsDeleteResource

    -- * Creating a Request
    , advertiserGroupsDelete
    , AdvertiserGroupsDelete

    -- * Request Lenses
    , agdXgafv
    , agdUploadProtocol
    , agdAccessToken
    , agdUploadType
    , agdProFileId
    , agdId
    , agdCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserGroups.delete@ method which the
-- 'AdvertiserGroupsDelete' request conforms to.
type AdvertiserGroupsDeleteResource =
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
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing advertiser group.
--
-- /See:/ 'advertiserGroupsDelete' smart constructor.
data AdvertiserGroupsDelete =
  AdvertiserGroupsDelete'
    { _agdXgafv :: !(Maybe Xgafv)
    , _agdUploadProtocol :: !(Maybe Text)
    , _agdAccessToken :: !(Maybe Text)
    , _agdUploadType :: !(Maybe Text)
    , _agdProFileId :: !(Textual Int64)
    , _agdId :: !(Textual Int64)
    , _agdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertiserGroupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agdXgafv'
--
-- * 'agdUploadProtocol'
--
-- * 'agdAccessToken'
--
-- * 'agdUploadType'
--
-- * 'agdProFileId'
--
-- * 'agdId'
--
-- * 'agdCallback'
advertiserGroupsDelete
    :: Int64 -- ^ 'agdProFileId'
    -> Int64 -- ^ 'agdId'
    -> AdvertiserGroupsDelete
advertiserGroupsDelete pAgdProFileId_ pAgdId_ =
  AdvertiserGroupsDelete'
    { _agdXgafv = Nothing
    , _agdUploadProtocol = Nothing
    , _agdAccessToken = Nothing
    , _agdUploadType = Nothing
    , _agdProFileId = _Coerce # pAgdProFileId_
    , _agdId = _Coerce # pAgdId_
    , _agdCallback = Nothing
    }


-- | V1 error format.
agdXgafv :: Lens' AdvertiserGroupsDelete (Maybe Xgafv)
agdXgafv = lens _agdXgafv (\ s a -> s{_agdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agdUploadProtocol :: Lens' AdvertiserGroupsDelete (Maybe Text)
agdUploadProtocol
  = lens _agdUploadProtocol
      (\ s a -> s{_agdUploadProtocol = a})

-- | OAuth access token.
agdAccessToken :: Lens' AdvertiserGroupsDelete (Maybe Text)
agdAccessToken
  = lens _agdAccessToken
      (\ s a -> s{_agdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agdUploadType :: Lens' AdvertiserGroupsDelete (Maybe Text)
agdUploadType
  = lens _agdUploadType
      (\ s a -> s{_agdUploadType = a})

-- | User profile ID associated with this request.
agdProFileId :: Lens' AdvertiserGroupsDelete Int64
agdProFileId
  = lens _agdProFileId (\ s a -> s{_agdProFileId = a})
      . _Coerce

-- | Advertiser group ID.
agdId :: Lens' AdvertiserGroupsDelete Int64
agdId
  = lens _agdId (\ s a -> s{_agdId = a}) . _Coerce

-- | JSONP
agdCallback :: Lens' AdvertiserGroupsDelete (Maybe Text)
agdCallback
  = lens _agdCallback (\ s a -> s{_agdCallback = a})

instance GoogleRequest AdvertiserGroupsDelete where
        type Rs AdvertiserGroupsDelete = ()
        type Scopes AdvertiserGroupsDelete =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserGroupsDelete'{..}
          = go _agdProFileId _agdId _agdXgafv
              _agdUploadProtocol
              _agdAccessToken
              _agdUploadType
              _agdCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserGroupsDeleteResource)
                      mempty
