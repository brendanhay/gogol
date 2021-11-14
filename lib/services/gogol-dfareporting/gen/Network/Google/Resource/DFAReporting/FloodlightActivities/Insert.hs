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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivities.insert@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Insert
    (
    -- * REST Resource
      FloodlightActivitiesInsertResource

    -- * Creating a Request
    , floodlightActivitiesInsert
    , FloodlightActivitiesInsert

    -- * Request Lenses
    , faiXgafv
    , faiUploadProtocol
    , faiAccessToken
    , faiUploadType
    , faiProFileId
    , faiPayload
    , faiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivities.insert@ method which the
-- 'FloodlightActivitiesInsert' request conforms to.
type FloodlightActivitiesInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivities" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] FloodlightActivity :>
                             Post '[JSON] FloodlightActivity

-- | Inserts a new floodlight activity.
--
-- /See:/ 'floodlightActivitiesInsert' smart constructor.
data FloodlightActivitiesInsert =
  FloodlightActivitiesInsert'
    { _faiXgafv :: !(Maybe Xgafv)
    , _faiUploadProtocol :: !(Maybe Text)
    , _faiAccessToken :: !(Maybe Text)
    , _faiUploadType :: !(Maybe Text)
    , _faiProFileId :: !(Textual Int64)
    , _faiPayload :: !FloodlightActivity
    , _faiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightActivitiesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faiXgafv'
--
-- * 'faiUploadProtocol'
--
-- * 'faiAccessToken'
--
-- * 'faiUploadType'
--
-- * 'faiProFileId'
--
-- * 'faiPayload'
--
-- * 'faiCallback'
floodlightActivitiesInsert
    :: Int64 -- ^ 'faiProFileId'
    -> FloodlightActivity -- ^ 'faiPayload'
    -> FloodlightActivitiesInsert
floodlightActivitiesInsert pFaiProFileId_ pFaiPayload_ =
  FloodlightActivitiesInsert'
    { _faiXgafv = Nothing
    , _faiUploadProtocol = Nothing
    , _faiAccessToken = Nothing
    , _faiUploadType = Nothing
    , _faiProFileId = _Coerce # pFaiProFileId_
    , _faiPayload = pFaiPayload_
    , _faiCallback = Nothing
    }


-- | V1 error format.
faiXgafv :: Lens' FloodlightActivitiesInsert (Maybe Xgafv)
faiXgafv = lens _faiXgafv (\ s a -> s{_faiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
faiUploadProtocol :: Lens' FloodlightActivitiesInsert (Maybe Text)
faiUploadProtocol
  = lens _faiUploadProtocol
      (\ s a -> s{_faiUploadProtocol = a})

-- | OAuth access token.
faiAccessToken :: Lens' FloodlightActivitiesInsert (Maybe Text)
faiAccessToken
  = lens _faiAccessToken
      (\ s a -> s{_faiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
faiUploadType :: Lens' FloodlightActivitiesInsert (Maybe Text)
faiUploadType
  = lens _faiUploadType
      (\ s a -> s{_faiUploadType = a})

-- | User profile ID associated with this request.
faiProFileId :: Lens' FloodlightActivitiesInsert Int64
faiProFileId
  = lens _faiProFileId (\ s a -> s{_faiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
faiPayload :: Lens' FloodlightActivitiesInsert FloodlightActivity
faiPayload
  = lens _faiPayload (\ s a -> s{_faiPayload = a})

-- | JSONP
faiCallback :: Lens' FloodlightActivitiesInsert (Maybe Text)
faiCallback
  = lens _faiCallback (\ s a -> s{_faiCallback = a})

instance GoogleRequest FloodlightActivitiesInsert
         where
        type Rs FloodlightActivitiesInsert =
             FloodlightActivity
        type Scopes FloodlightActivitiesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightActivitiesInsert'{..}
          = go _faiProFileId _faiXgafv _faiUploadProtocol
              _faiAccessToken
              _faiUploadType
              _faiCallback
              (Just AltJSON)
              _faiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightActivitiesInsertResource)
                      mempty
