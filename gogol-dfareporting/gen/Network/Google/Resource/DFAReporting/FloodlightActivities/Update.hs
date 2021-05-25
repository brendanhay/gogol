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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivities.update@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Update
    (
    -- * REST Resource
      FloodlightActivitiesUpdateResource

    -- * Creating a Request
    , floodlightActivitiesUpdate
    , FloodlightActivitiesUpdate

    -- * Request Lenses
    , fauXgafv
    , fauUploadProtocol
    , fauAccessToken
    , fauUploadType
    , fauProFileId
    , fauPayload
    , fauCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivities.update@ method which the
-- 'FloodlightActivitiesUpdate' request conforms to.
type FloodlightActivitiesUpdateResource =
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
                             Put '[JSON] FloodlightActivity

-- | Updates an existing floodlight activity.
--
-- /See:/ 'floodlightActivitiesUpdate' smart constructor.
data FloodlightActivitiesUpdate =
  FloodlightActivitiesUpdate'
    { _fauXgafv :: !(Maybe Xgafv)
    , _fauUploadProtocol :: !(Maybe Text)
    , _fauAccessToken :: !(Maybe Text)
    , _fauUploadType :: !(Maybe Text)
    , _fauProFileId :: !(Textual Int64)
    , _fauPayload :: !FloodlightActivity
    , _fauCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightActivitiesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fauXgafv'
--
-- * 'fauUploadProtocol'
--
-- * 'fauAccessToken'
--
-- * 'fauUploadType'
--
-- * 'fauProFileId'
--
-- * 'fauPayload'
--
-- * 'fauCallback'
floodlightActivitiesUpdate
    :: Int64 -- ^ 'fauProFileId'
    -> FloodlightActivity -- ^ 'fauPayload'
    -> FloodlightActivitiesUpdate
floodlightActivitiesUpdate pFauProFileId_ pFauPayload_ =
  FloodlightActivitiesUpdate'
    { _fauXgafv = Nothing
    , _fauUploadProtocol = Nothing
    , _fauAccessToken = Nothing
    , _fauUploadType = Nothing
    , _fauProFileId = _Coerce # pFauProFileId_
    , _fauPayload = pFauPayload_
    , _fauCallback = Nothing
    }


-- | V1 error format.
fauXgafv :: Lens' FloodlightActivitiesUpdate (Maybe Xgafv)
fauXgafv = lens _fauXgafv (\ s a -> s{_fauXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fauUploadProtocol :: Lens' FloodlightActivitiesUpdate (Maybe Text)
fauUploadProtocol
  = lens _fauUploadProtocol
      (\ s a -> s{_fauUploadProtocol = a})

-- | OAuth access token.
fauAccessToken :: Lens' FloodlightActivitiesUpdate (Maybe Text)
fauAccessToken
  = lens _fauAccessToken
      (\ s a -> s{_fauAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fauUploadType :: Lens' FloodlightActivitiesUpdate (Maybe Text)
fauUploadType
  = lens _fauUploadType
      (\ s a -> s{_fauUploadType = a})

-- | User profile ID associated with this request.
fauProFileId :: Lens' FloodlightActivitiesUpdate Int64
fauProFileId
  = lens _fauProFileId (\ s a -> s{_fauProFileId = a})
      . _Coerce

-- | Multipart request metadata.
fauPayload :: Lens' FloodlightActivitiesUpdate FloodlightActivity
fauPayload
  = lens _fauPayload (\ s a -> s{_fauPayload = a})

-- | JSONP
fauCallback :: Lens' FloodlightActivitiesUpdate (Maybe Text)
fauCallback
  = lens _fauCallback (\ s a -> s{_fauCallback = a})

instance GoogleRequest FloodlightActivitiesUpdate
         where
        type Rs FloodlightActivitiesUpdate =
             FloodlightActivity
        type Scopes FloodlightActivitiesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightActivitiesUpdate'{..}
          = go _fauProFileId _fauXgafv _fauUploadProtocol
              _fauAccessToken
              _fauUploadType
              _fauCallback
              (Just AltJSON)
              _fauPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightActivitiesUpdateResource)
                      mempty
