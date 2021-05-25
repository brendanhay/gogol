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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightConfigurations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one floodlight configuration by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightConfigurations.get@.
module Network.Google.Resource.DFAReporting.FloodlightConfigurations.Get
    (
    -- * REST Resource
      FloodlightConfigurationsGetResource

    -- * Creating a Request
    , floodlightConfigurationsGet
    , FloodlightConfigurationsGet

    -- * Request Lenses
    , fcgXgafv
    , fcgUploadProtocol
    , fcgAccessToken
    , fcgUploadType
    , fcgProFileId
    , fcgId
    , fcgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightConfigurations.get@ method which the
-- 'FloodlightConfigurationsGet' request conforms to.
type FloodlightConfigurationsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightConfigurations" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] FloodlightConfiguration

-- | Gets one floodlight configuration by ID.
--
-- /See:/ 'floodlightConfigurationsGet' smart constructor.
data FloodlightConfigurationsGet =
  FloodlightConfigurationsGet'
    { _fcgXgafv :: !(Maybe Xgafv)
    , _fcgUploadProtocol :: !(Maybe Text)
    , _fcgAccessToken :: !(Maybe Text)
    , _fcgUploadType :: !(Maybe Text)
    , _fcgProFileId :: !(Textual Int64)
    , _fcgId :: !(Textual Int64)
    , _fcgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightConfigurationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcgXgafv'
--
-- * 'fcgUploadProtocol'
--
-- * 'fcgAccessToken'
--
-- * 'fcgUploadType'
--
-- * 'fcgProFileId'
--
-- * 'fcgId'
--
-- * 'fcgCallback'
floodlightConfigurationsGet
    :: Int64 -- ^ 'fcgProFileId'
    -> Int64 -- ^ 'fcgId'
    -> FloodlightConfigurationsGet
floodlightConfigurationsGet pFcgProFileId_ pFcgId_ =
  FloodlightConfigurationsGet'
    { _fcgXgafv = Nothing
    , _fcgUploadProtocol = Nothing
    , _fcgAccessToken = Nothing
    , _fcgUploadType = Nothing
    , _fcgProFileId = _Coerce # pFcgProFileId_
    , _fcgId = _Coerce # pFcgId_
    , _fcgCallback = Nothing
    }


-- | V1 error format.
fcgXgafv :: Lens' FloodlightConfigurationsGet (Maybe Xgafv)
fcgXgafv = lens _fcgXgafv (\ s a -> s{_fcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fcgUploadProtocol :: Lens' FloodlightConfigurationsGet (Maybe Text)
fcgUploadProtocol
  = lens _fcgUploadProtocol
      (\ s a -> s{_fcgUploadProtocol = a})

-- | OAuth access token.
fcgAccessToken :: Lens' FloodlightConfigurationsGet (Maybe Text)
fcgAccessToken
  = lens _fcgAccessToken
      (\ s a -> s{_fcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fcgUploadType :: Lens' FloodlightConfigurationsGet (Maybe Text)
fcgUploadType
  = lens _fcgUploadType
      (\ s a -> s{_fcgUploadType = a})

-- | User profile ID associated with this request.
fcgProFileId :: Lens' FloodlightConfigurationsGet Int64
fcgProFileId
  = lens _fcgProFileId (\ s a -> s{_fcgProFileId = a})
      . _Coerce

-- | Floodlight configuration ID.
fcgId :: Lens' FloodlightConfigurationsGet Int64
fcgId
  = lens _fcgId (\ s a -> s{_fcgId = a}) . _Coerce

-- | JSONP
fcgCallback :: Lens' FloodlightConfigurationsGet (Maybe Text)
fcgCallback
  = lens _fcgCallback (\ s a -> s{_fcgCallback = a})

instance GoogleRequest FloodlightConfigurationsGet
         where
        type Rs FloodlightConfigurationsGet =
             FloodlightConfiguration
        type Scopes FloodlightConfigurationsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightConfigurationsGet'{..}
          = go _fcgProFileId _fcgId _fcgXgafv
              _fcgUploadProtocol
              _fcgAccessToken
              _fcgUploadType
              _fcgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightConfigurationsGetResource)
                      mempty
