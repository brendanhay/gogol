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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one floodlight activity by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivities.get@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Get
    (
    -- * REST Resource
      FloodlightActivitiesGetResource

    -- * Creating a Request
    , floodlightActivitiesGet
    , FloodlightActivitiesGet

    -- * Request Lenses
    , fXgafv
    , fUploadProtocol
    , fAccessToken
    , fUploadType
    , fProFileId
    , fId
    , fCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivities.get@ method which the
-- 'FloodlightActivitiesGet' request conforms to.
type FloodlightActivitiesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivities" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] FloodlightActivity

-- | Gets one floodlight activity by ID.
--
-- /See:/ 'floodlightActivitiesGet' smart constructor.
data FloodlightActivitiesGet =
  FloodlightActivitiesGet'
    { _fXgafv :: !(Maybe Xgafv)
    , _fUploadProtocol :: !(Maybe Text)
    , _fAccessToken :: !(Maybe Text)
    , _fUploadType :: !(Maybe Text)
    , _fProFileId :: !(Textual Int64)
    , _fId :: !(Textual Int64)
    , _fCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightActivitiesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fXgafv'
--
-- * 'fUploadProtocol'
--
-- * 'fAccessToken'
--
-- * 'fUploadType'
--
-- * 'fProFileId'
--
-- * 'fId'
--
-- * 'fCallback'
floodlightActivitiesGet
    :: Int64 -- ^ 'fProFileId'
    -> Int64 -- ^ 'fId'
    -> FloodlightActivitiesGet
floodlightActivitiesGet pFProFileId_ pFId_ =
  FloodlightActivitiesGet'
    { _fXgafv = Nothing
    , _fUploadProtocol = Nothing
    , _fAccessToken = Nothing
    , _fUploadType = Nothing
    , _fProFileId = _Coerce # pFProFileId_
    , _fId = _Coerce # pFId_
    , _fCallback = Nothing
    }


-- | V1 error format.
fXgafv :: Lens' FloodlightActivitiesGet (Maybe Xgafv)
fXgafv = lens _fXgafv (\ s a -> s{_fXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fUploadProtocol :: Lens' FloodlightActivitiesGet (Maybe Text)
fUploadProtocol
  = lens _fUploadProtocol
      (\ s a -> s{_fUploadProtocol = a})

-- | OAuth access token.
fAccessToken :: Lens' FloodlightActivitiesGet (Maybe Text)
fAccessToken
  = lens _fAccessToken (\ s a -> s{_fAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fUploadType :: Lens' FloodlightActivitiesGet (Maybe Text)
fUploadType
  = lens _fUploadType (\ s a -> s{_fUploadType = a})

-- | User profile ID associated with this request.
fProFileId :: Lens' FloodlightActivitiesGet Int64
fProFileId
  = lens _fProFileId (\ s a -> s{_fProFileId = a}) .
      _Coerce

-- | Floodlight activity ID.
fId :: Lens' FloodlightActivitiesGet Int64
fId = lens _fId (\ s a -> s{_fId = a}) . _Coerce

-- | JSONP
fCallback :: Lens' FloodlightActivitiesGet (Maybe Text)
fCallback
  = lens _fCallback (\ s a -> s{_fCallback = a})

instance GoogleRequest FloodlightActivitiesGet where
        type Rs FloodlightActivitiesGet = FloodlightActivity
        type Scopes FloodlightActivitiesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightActivitiesGet'{..}
          = go _fProFileId _fId _fXgafv _fUploadProtocol
              _fAccessToken
              _fUploadType
              _fCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightActivitiesGetResource)
                      mempty
