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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightConfigurations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of floodlight configurations, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightConfigurations.list@.
module Network.Google.Resource.DFAReporting.FloodlightConfigurations.List
    (
    -- * REST Resource
      FloodlightConfigurationsListResource

    -- * Creating a Request
    , floodlightConfigurationsList
    , FloodlightConfigurationsList

    -- * Request Lenses
    , fclXgafv
    , fclUploadProtocol
    , fclAccessToken
    , fclUploadType
    , fclIds
    , fclProFileId
    , fclCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightConfigurations.list@ method which the
-- 'FloodlightConfigurationsList' request conforms to.
type FloodlightConfigurationsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightConfigurations" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParams "ids" (Textual Int64) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] FloodlightConfigurationsListResponse

-- | Retrieves a list of floodlight configurations, possibly filtered.
--
-- /See:/ 'floodlightConfigurationsList' smart constructor.
data FloodlightConfigurationsList =
  FloodlightConfigurationsList'
    { _fclXgafv :: !(Maybe Xgafv)
    , _fclUploadProtocol :: !(Maybe Text)
    , _fclAccessToken :: !(Maybe Text)
    , _fclUploadType :: !(Maybe Text)
    , _fclIds :: !(Maybe [Textual Int64])
    , _fclProFileId :: !(Textual Int64)
    , _fclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightConfigurationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fclXgafv'
--
-- * 'fclUploadProtocol'
--
-- * 'fclAccessToken'
--
-- * 'fclUploadType'
--
-- * 'fclIds'
--
-- * 'fclProFileId'
--
-- * 'fclCallback'
floodlightConfigurationsList
    :: Int64 -- ^ 'fclProFileId'
    -> FloodlightConfigurationsList
floodlightConfigurationsList pFclProFileId_ =
  FloodlightConfigurationsList'
    { _fclXgafv = Nothing
    , _fclUploadProtocol = Nothing
    , _fclAccessToken = Nothing
    , _fclUploadType = Nothing
    , _fclIds = Nothing
    , _fclProFileId = _Coerce # pFclProFileId_
    , _fclCallback = Nothing
    }


-- | V1 error format.
fclXgafv :: Lens' FloodlightConfigurationsList (Maybe Xgafv)
fclXgafv = lens _fclXgafv (\ s a -> s{_fclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fclUploadProtocol :: Lens' FloodlightConfigurationsList (Maybe Text)
fclUploadProtocol
  = lens _fclUploadProtocol
      (\ s a -> s{_fclUploadProtocol = a})

-- | OAuth access token.
fclAccessToken :: Lens' FloodlightConfigurationsList (Maybe Text)
fclAccessToken
  = lens _fclAccessToken
      (\ s a -> s{_fclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fclUploadType :: Lens' FloodlightConfigurationsList (Maybe Text)
fclUploadType
  = lens _fclUploadType
      (\ s a -> s{_fclUploadType = a})

-- | Set of IDs of floodlight configurations to retrieve. Required field;
-- otherwise an empty list will be returned.
fclIds :: Lens' FloodlightConfigurationsList [Int64]
fclIds
  = lens _fclIds (\ s a -> s{_fclIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
fclProFileId :: Lens' FloodlightConfigurationsList Int64
fclProFileId
  = lens _fclProFileId (\ s a -> s{_fclProFileId = a})
      . _Coerce

-- | JSONP
fclCallback :: Lens' FloodlightConfigurationsList (Maybe Text)
fclCallback
  = lens _fclCallback (\ s a -> s{_fclCallback = a})

instance GoogleRequest FloodlightConfigurationsList
         where
        type Rs FloodlightConfigurationsList =
             FloodlightConfigurationsListResponse
        type Scopes FloodlightConfigurationsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightConfigurationsList'{..}
          = go _fclProFileId _fclXgafv _fclUploadProtocol
              _fclAccessToken
              _fclUploadType
              (_fclIds ^. _Default)
              _fclCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightConfigurationsListResource)
                      mempty
