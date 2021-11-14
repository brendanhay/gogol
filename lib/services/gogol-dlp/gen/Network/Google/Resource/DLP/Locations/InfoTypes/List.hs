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
-- Module      : Network.Google.Resource.DLP.Locations.InfoTypes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the sensitive information types that the DLP API
-- supports. See https:\/\/cloud.google.com\/dlp\/docs\/infotypes-reference
-- to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.locations.infoTypes.list@.
module Network.Google.Resource.DLP.Locations.InfoTypes.List
    (
    -- * REST Resource
      LocationsInfoTypesListResource

    -- * Creating a Request
    , locationsInfoTypesList
    , LocationsInfoTypesList

    -- * Request Lenses
    , litlParent
    , litlXgafv
    , litlLanguageCode
    , litlUploadProtocol
    , litlAccessToken
    , litlUploadType
    , litlFilter
    , litlLocationId
    , litlCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.locations.infoTypes.list@ method which the
-- 'LocationsInfoTypesList' request conforms to.
type LocationsInfoTypesListResource =
     "v2" :>
       Capture "parent" Text :>
         "infoTypes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "locationId" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] GooglePrivacyDlpV2ListInfoTypesResponse

-- | Returns a list of the sensitive information types that the DLP API
-- supports. See https:\/\/cloud.google.com\/dlp\/docs\/infotypes-reference
-- to learn more.
--
-- /See:/ 'locationsInfoTypesList' smart constructor.
data LocationsInfoTypesList =
  LocationsInfoTypesList'
    { _litlParent :: !Text
    , _litlXgafv :: !(Maybe Xgafv)
    , _litlLanguageCode :: !(Maybe Text)
    , _litlUploadProtocol :: !(Maybe Text)
    , _litlAccessToken :: !(Maybe Text)
    , _litlUploadType :: !(Maybe Text)
    , _litlFilter :: !(Maybe Text)
    , _litlLocationId :: !(Maybe Text)
    , _litlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsInfoTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'litlParent'
--
-- * 'litlXgafv'
--
-- * 'litlLanguageCode'
--
-- * 'litlUploadProtocol'
--
-- * 'litlAccessToken'
--
-- * 'litlUploadType'
--
-- * 'litlFilter'
--
-- * 'litlLocationId'
--
-- * 'litlCallback'
locationsInfoTypesList
    :: Text -- ^ 'litlParent'
    -> LocationsInfoTypesList
locationsInfoTypesList pLitlParent_ =
  LocationsInfoTypesList'
    { _litlParent = pLitlParent_
    , _litlXgafv = Nothing
    , _litlLanguageCode = Nothing
    , _litlUploadProtocol = Nothing
    , _litlAccessToken = Nothing
    , _litlUploadType = Nothing
    , _litlFilter = Nothing
    , _litlLocationId = Nothing
    , _litlCallback = Nothing
    }


-- | The parent resource name. The format of this value is as follows:
-- locations\/ LOCATION_ID
litlParent :: Lens' LocationsInfoTypesList Text
litlParent
  = lens _litlParent (\ s a -> s{_litlParent = a})

-- | V1 error format.
litlXgafv :: Lens' LocationsInfoTypesList (Maybe Xgafv)
litlXgafv
  = lens _litlXgafv (\ s a -> s{_litlXgafv = a})

-- | BCP-47 language code for localized infoType friendly names. If omitted,
-- or if localized strings are not available, en-US strings will be
-- returned.
litlLanguageCode :: Lens' LocationsInfoTypesList (Maybe Text)
litlLanguageCode
  = lens _litlLanguageCode
      (\ s a -> s{_litlLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
litlUploadProtocol :: Lens' LocationsInfoTypesList (Maybe Text)
litlUploadProtocol
  = lens _litlUploadProtocol
      (\ s a -> s{_litlUploadProtocol = a})

-- | OAuth access token.
litlAccessToken :: Lens' LocationsInfoTypesList (Maybe Text)
litlAccessToken
  = lens _litlAccessToken
      (\ s a -> s{_litlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
litlUploadType :: Lens' LocationsInfoTypesList (Maybe Text)
litlUploadType
  = lens _litlUploadType
      (\ s a -> s{_litlUploadType = a})

-- | filter to only return infoTypes supported by certain parts of the API.
-- Defaults to supported_by=INSPECT.
litlFilter :: Lens' LocationsInfoTypesList (Maybe Text)
litlFilter
  = lens _litlFilter (\ s a -> s{_litlFilter = a})

-- | Deprecated. This field has no effect.
litlLocationId :: Lens' LocationsInfoTypesList (Maybe Text)
litlLocationId
  = lens _litlLocationId
      (\ s a -> s{_litlLocationId = a})

-- | JSONP
litlCallback :: Lens' LocationsInfoTypesList (Maybe Text)
litlCallback
  = lens _litlCallback (\ s a -> s{_litlCallback = a})

instance GoogleRequest LocationsInfoTypesList where
        type Rs LocationsInfoTypesList =
             GooglePrivacyDlpV2ListInfoTypesResponse
        type Scopes LocationsInfoTypesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient LocationsInfoTypesList'{..}
          = go _litlParent _litlXgafv _litlLanguageCode
              _litlUploadProtocol
              _litlAccessToken
              _litlUploadType
              _litlFilter
              _litlLocationId
              _litlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy LocationsInfoTypesListResource)
                      mempty
