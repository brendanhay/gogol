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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightConfigurations.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing floodlight configuration. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightConfigurations.patch@.
module Network.Google.Resource.DFAReporting.FloodlightConfigurations.Patch
    (
    -- * REST Resource
      FloodlightConfigurationsPatchResource

    -- * Creating a Request
    , floodlightConfigurationsPatch
    , FloodlightConfigurationsPatch

    -- * Request Lenses
    , fcpXgafv
    , fcpUploadProtocol
    , fcpAccessToken
    , fcpUploadType
    , fcpProFileId
    , fcpPayload
    , fcpId
    , fcpCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightConfigurations.patch@ method which the
-- 'FloodlightConfigurationsPatch' request conforms to.
type FloodlightConfigurationsPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightConfigurations" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] FloodlightConfiguration :>
                               Patch '[JSON] FloodlightConfiguration

-- | Updates an existing floodlight configuration. This method supports patch
-- semantics.
--
-- /See:/ 'floodlightConfigurationsPatch' smart constructor.
data FloodlightConfigurationsPatch =
  FloodlightConfigurationsPatch'
    { _fcpXgafv :: !(Maybe Xgafv)
    , _fcpUploadProtocol :: !(Maybe Text)
    , _fcpAccessToken :: !(Maybe Text)
    , _fcpUploadType :: !(Maybe Text)
    , _fcpProFileId :: !(Textual Int64)
    , _fcpPayload :: !FloodlightConfiguration
    , _fcpId :: !(Textual Int64)
    , _fcpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightConfigurationsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcpXgafv'
--
-- * 'fcpUploadProtocol'
--
-- * 'fcpAccessToken'
--
-- * 'fcpUploadType'
--
-- * 'fcpProFileId'
--
-- * 'fcpPayload'
--
-- * 'fcpId'
--
-- * 'fcpCallback'
floodlightConfigurationsPatch
    :: Int64 -- ^ 'fcpProFileId'
    -> FloodlightConfiguration -- ^ 'fcpPayload'
    -> Int64 -- ^ 'fcpId'
    -> FloodlightConfigurationsPatch
floodlightConfigurationsPatch pFcpProFileId_ pFcpPayload_ pFcpId_ =
  FloodlightConfigurationsPatch'
    { _fcpXgafv = Nothing
    , _fcpUploadProtocol = Nothing
    , _fcpAccessToken = Nothing
    , _fcpUploadType = Nothing
    , _fcpProFileId = _Coerce # pFcpProFileId_
    , _fcpPayload = pFcpPayload_
    , _fcpId = _Coerce # pFcpId_
    , _fcpCallback = Nothing
    }


-- | V1 error format.
fcpXgafv :: Lens' FloodlightConfigurationsPatch (Maybe Xgafv)
fcpXgafv = lens _fcpXgafv (\ s a -> s{_fcpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fcpUploadProtocol :: Lens' FloodlightConfigurationsPatch (Maybe Text)
fcpUploadProtocol
  = lens _fcpUploadProtocol
      (\ s a -> s{_fcpUploadProtocol = a})

-- | OAuth access token.
fcpAccessToken :: Lens' FloodlightConfigurationsPatch (Maybe Text)
fcpAccessToken
  = lens _fcpAccessToken
      (\ s a -> s{_fcpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fcpUploadType :: Lens' FloodlightConfigurationsPatch (Maybe Text)
fcpUploadType
  = lens _fcpUploadType
      (\ s a -> s{_fcpUploadType = a})

-- | User profile ID associated with this request.
fcpProFileId :: Lens' FloodlightConfigurationsPatch Int64
fcpProFileId
  = lens _fcpProFileId (\ s a -> s{_fcpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
fcpPayload :: Lens' FloodlightConfigurationsPatch FloodlightConfiguration
fcpPayload
  = lens _fcpPayload (\ s a -> s{_fcpPayload = a})

-- | FloodlightConfiguration ID.
fcpId :: Lens' FloodlightConfigurationsPatch Int64
fcpId
  = lens _fcpId (\ s a -> s{_fcpId = a}) . _Coerce

-- | JSONP
fcpCallback :: Lens' FloodlightConfigurationsPatch (Maybe Text)
fcpCallback
  = lens _fcpCallback (\ s a -> s{_fcpCallback = a})

instance GoogleRequest FloodlightConfigurationsPatch
         where
        type Rs FloodlightConfigurationsPatch =
             FloodlightConfiguration
        type Scopes FloodlightConfigurationsPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightConfigurationsPatch'{..}
          = go _fcpProFileId (Just _fcpId) _fcpXgafv
              _fcpUploadProtocol
              _fcpAccessToken
              _fcpUploadType
              _fcpCallback
              (Just AltJSON)
              _fcpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FloodlightConfigurationsPatchResource)
                      mempty
