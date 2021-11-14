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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightConfigurations.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing floodlight configuration.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightConfigurations.update@.
module Network.Google.Resource.DFAReporting.FloodlightConfigurations.Update
    (
    -- * REST Resource
      FloodlightConfigurationsUpdateResource

    -- * Creating a Request
    , floodlightConfigurationsUpdate
    , FloodlightConfigurationsUpdate

    -- * Request Lenses
    , fcuXgafv
    , fcuUploadProtocol
    , fcuAccessToken
    , fcuUploadType
    , fcuProFileId
    , fcuPayload
    , fcuCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightConfigurations.update@ method which the
-- 'FloodlightConfigurationsUpdate' request conforms to.
type FloodlightConfigurationsUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightConfigurations" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] FloodlightConfiguration :>
                             Put '[JSON] FloodlightConfiguration

-- | Updates an existing floodlight configuration.
--
-- /See:/ 'floodlightConfigurationsUpdate' smart constructor.
data FloodlightConfigurationsUpdate =
  FloodlightConfigurationsUpdate'
    { _fcuXgafv :: !(Maybe Xgafv)
    , _fcuUploadProtocol :: !(Maybe Text)
    , _fcuAccessToken :: !(Maybe Text)
    , _fcuUploadType :: !(Maybe Text)
    , _fcuProFileId :: !(Textual Int64)
    , _fcuPayload :: !FloodlightConfiguration
    , _fcuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightConfigurationsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcuXgafv'
--
-- * 'fcuUploadProtocol'
--
-- * 'fcuAccessToken'
--
-- * 'fcuUploadType'
--
-- * 'fcuProFileId'
--
-- * 'fcuPayload'
--
-- * 'fcuCallback'
floodlightConfigurationsUpdate
    :: Int64 -- ^ 'fcuProFileId'
    -> FloodlightConfiguration -- ^ 'fcuPayload'
    -> FloodlightConfigurationsUpdate
floodlightConfigurationsUpdate pFcuProFileId_ pFcuPayload_ =
  FloodlightConfigurationsUpdate'
    { _fcuXgafv = Nothing
    , _fcuUploadProtocol = Nothing
    , _fcuAccessToken = Nothing
    , _fcuUploadType = Nothing
    , _fcuProFileId = _Coerce # pFcuProFileId_
    , _fcuPayload = pFcuPayload_
    , _fcuCallback = Nothing
    }


-- | V1 error format.
fcuXgafv :: Lens' FloodlightConfigurationsUpdate (Maybe Xgafv)
fcuXgafv = lens _fcuXgafv (\ s a -> s{_fcuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fcuUploadProtocol :: Lens' FloodlightConfigurationsUpdate (Maybe Text)
fcuUploadProtocol
  = lens _fcuUploadProtocol
      (\ s a -> s{_fcuUploadProtocol = a})

-- | OAuth access token.
fcuAccessToken :: Lens' FloodlightConfigurationsUpdate (Maybe Text)
fcuAccessToken
  = lens _fcuAccessToken
      (\ s a -> s{_fcuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fcuUploadType :: Lens' FloodlightConfigurationsUpdate (Maybe Text)
fcuUploadType
  = lens _fcuUploadType
      (\ s a -> s{_fcuUploadType = a})

-- | User profile ID associated with this request.
fcuProFileId :: Lens' FloodlightConfigurationsUpdate Int64
fcuProFileId
  = lens _fcuProFileId (\ s a -> s{_fcuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
fcuPayload :: Lens' FloodlightConfigurationsUpdate FloodlightConfiguration
fcuPayload
  = lens _fcuPayload (\ s a -> s{_fcuPayload = a})

-- | JSONP
fcuCallback :: Lens' FloodlightConfigurationsUpdate (Maybe Text)
fcuCallback
  = lens _fcuCallback (\ s a -> s{_fcuCallback = a})

instance GoogleRequest FloodlightConfigurationsUpdate
         where
        type Rs FloodlightConfigurationsUpdate =
             FloodlightConfiguration
        type Scopes FloodlightConfigurationsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightConfigurationsUpdate'{..}
          = go _fcuProFileId _fcuXgafv _fcuUploadProtocol
              _fcuAccessToken
              _fcuUploadType
              _fcuCallback
              (Just AltJSON)
              _fcuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FloodlightConfigurationsUpdateResource)
                      mempty
