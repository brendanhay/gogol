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
-- Module      : Network.Google.Resource.Partners.GetPartnersstatus
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets Partners Status of the logged in user\'s agency. Should only be
-- called if the logged in user is the admin of the agency.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.getPartnersstatus@.
module Network.Google.Resource.Partners.GetPartnersstatus
    (
    -- * REST Resource
      GetPartnersstatusResource

    -- * Creating a Request
    , getPartnersstatus
    , GetPartnersstatus

    -- * Request Lenses
    , gpXgafv
    , gpUploadProtocol
    , gpAccessToken
    , gpUploadType
    , gpRequestMetadataPartnersSessionId
    , gpRequestMetadataLocale
    , gpRequestMetadataExperimentIds
    , gpRequestMetadataUserOverridesIPAddress
    , gpRequestMetadataTrafficSourceTrafficSubId
    , gpRequestMetadataUserOverridesUserId
    , gpRequestMetadataTrafficSourceTrafficSourceId
    , gpCallback
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @partners.getPartnersstatus@ method which the
-- 'GetPartnersstatus' request conforms to.
type GetPartnersstatusResource =
     "v2" :>
       "partnersstatus" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "requestMetadata.partnersSessionId" Text
                   :>
                   QueryParam "requestMetadata.locale" Text :>
                     QueryParams "requestMetadata.experimentIds" Text :>
                       QueryParam "requestMetadata.userOverrides.ipAddress"
                         Text
                         :>
                         QueryParam
                           "requestMetadata.trafficSource.trafficSubId"
                           Text
                           :>
                           QueryParam "requestMetadata.userOverrides.userId"
                             Text
                             :>
                             QueryParam
                               "requestMetadata.trafficSource.trafficSourceId"
                               Text
                               :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] GetPartnersStatusResponse

-- | Gets Partners Status of the logged in user\'s agency. Should only be
-- called if the logged in user is the admin of the agency.
--
-- /See:/ 'getPartnersstatus' smart constructor.
data GetPartnersstatus =
  GetPartnersstatus'
    { _gpXgafv                                       :: !(Maybe Xgafv)
    , _gpUploadProtocol                              :: !(Maybe Text)
    , _gpAccessToken                                 :: !(Maybe Text)
    , _gpUploadType                                  :: !(Maybe Text)
    , _gpRequestMetadataPartnersSessionId            :: !(Maybe Text)
    , _gpRequestMetadataLocale                       :: !(Maybe Text)
    , _gpRequestMetadataExperimentIds                :: !(Maybe [Text])
    , _gpRequestMetadataUserOverridesIPAddress       :: !(Maybe Text)
    , _gpRequestMetadataTrafficSourceTrafficSubId    :: !(Maybe Text)
    , _gpRequestMetadataUserOverridesUserId          :: !(Maybe Text)
    , _gpRequestMetadataTrafficSourceTrafficSourceId :: !(Maybe Text)
    , _gpCallback                                    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetPartnersstatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpXgafv'
--
-- * 'gpUploadProtocol'
--
-- * 'gpAccessToken'
--
-- * 'gpUploadType'
--
-- * 'gpRequestMetadataPartnersSessionId'
--
-- * 'gpRequestMetadataLocale'
--
-- * 'gpRequestMetadataExperimentIds'
--
-- * 'gpRequestMetadataUserOverridesIPAddress'
--
-- * 'gpRequestMetadataTrafficSourceTrafficSubId'
--
-- * 'gpRequestMetadataUserOverridesUserId'
--
-- * 'gpRequestMetadataTrafficSourceTrafficSourceId'
--
-- * 'gpCallback'
getPartnersstatus
    :: GetPartnersstatus
getPartnersstatus =
  GetPartnersstatus'
    { _gpXgafv = Nothing
    , _gpUploadProtocol = Nothing
    , _gpAccessToken = Nothing
    , _gpUploadType = Nothing
    , _gpRequestMetadataPartnersSessionId = Nothing
    , _gpRequestMetadataLocale = Nothing
    , _gpRequestMetadataExperimentIds = Nothing
    , _gpRequestMetadataUserOverridesIPAddress = Nothing
    , _gpRequestMetadataTrafficSourceTrafficSubId = Nothing
    , _gpRequestMetadataUserOverridesUserId = Nothing
    , _gpRequestMetadataTrafficSourceTrafficSourceId = Nothing
    , _gpCallback = Nothing
    }


-- | V1 error format.
gpXgafv :: Lens' GetPartnersstatus (Maybe Xgafv)
gpXgafv = lens _gpXgafv (\ s a -> s{_gpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gpUploadProtocol :: Lens' GetPartnersstatus (Maybe Text)
gpUploadProtocol
  = lens _gpUploadProtocol
      (\ s a -> s{_gpUploadProtocol = a})

-- | OAuth access token.
gpAccessToken :: Lens' GetPartnersstatus (Maybe Text)
gpAccessToken
  = lens _gpAccessToken
      (\ s a -> s{_gpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gpUploadType :: Lens' GetPartnersstatus (Maybe Text)
gpUploadType
  = lens _gpUploadType (\ s a -> s{_gpUploadType = a})

-- | Google Partners session ID.
gpRequestMetadataPartnersSessionId :: Lens' GetPartnersstatus (Maybe Text)
gpRequestMetadataPartnersSessionId
  = lens _gpRequestMetadataPartnersSessionId
      (\ s a -> s{_gpRequestMetadataPartnersSessionId = a})

-- | Locale to use for the current request.
gpRequestMetadataLocale :: Lens' GetPartnersstatus (Maybe Text)
gpRequestMetadataLocale
  = lens _gpRequestMetadataLocale
      (\ s a -> s{_gpRequestMetadataLocale = a})

-- | Experiment IDs the current request belongs to.
gpRequestMetadataExperimentIds :: Lens' GetPartnersstatus [Text]
gpRequestMetadataExperimentIds
  = lens _gpRequestMetadataExperimentIds
      (\ s a -> s{_gpRequestMetadataExperimentIds = a})
      . _Default
      . _Coerce

-- | IP address to use instead of the user\'s geo-located IP address.
gpRequestMetadataUserOverridesIPAddress :: Lens' GetPartnersstatus (Maybe Text)
gpRequestMetadataUserOverridesIPAddress
  = lens _gpRequestMetadataUserOverridesIPAddress
      (\ s a ->
         s{_gpRequestMetadataUserOverridesIPAddress = a})

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
gpRequestMetadataTrafficSourceTrafficSubId :: Lens' GetPartnersstatus (Maybe Text)
gpRequestMetadataTrafficSourceTrafficSubId
  = lens _gpRequestMetadataTrafficSourceTrafficSubId
      (\ s a ->
         s{_gpRequestMetadataTrafficSourceTrafficSubId = a})

-- | Logged-in user ID to impersonate instead of the user\'s ID.
gpRequestMetadataUserOverridesUserId :: Lens' GetPartnersstatus (Maybe Text)
gpRequestMetadataUserOverridesUserId
  = lens _gpRequestMetadataUserOverridesUserId
      (\ s a ->
         s{_gpRequestMetadataUserOverridesUserId = a})

-- | Identifier to indicate where the traffic comes from. An identifier has
-- multiple letters created by a team which redirected the traffic to us.
gpRequestMetadataTrafficSourceTrafficSourceId :: Lens' GetPartnersstatus (Maybe Text)
gpRequestMetadataTrafficSourceTrafficSourceId
  = lens _gpRequestMetadataTrafficSourceTrafficSourceId
      (\ s a ->
         s{_gpRequestMetadataTrafficSourceTrafficSourceId =
             a})

-- | JSONP
gpCallback :: Lens' GetPartnersstatus (Maybe Text)
gpCallback
  = lens _gpCallback (\ s a -> s{_gpCallback = a})

instance GoogleRequest GetPartnersstatus where
        type Rs GetPartnersstatus = GetPartnersStatusResponse
        type Scopes GetPartnersstatus = '[]
        requestClient GetPartnersstatus'{..}
          = go _gpXgafv _gpUploadProtocol _gpAccessToken
              _gpUploadType
              _gpRequestMetadataPartnersSessionId
              _gpRequestMetadataLocale
              (_gpRequestMetadataExperimentIds ^. _Default)
              _gpRequestMetadataUserOverridesIPAddress
              _gpRequestMetadataTrafficSourceTrafficSubId
              _gpRequestMetadataUserOverridesUserId
              _gpRequestMetadataTrafficSourceTrafficSourceId
              _gpCallback
              (Just AltJSON)
              partnersService
          where go
                  = buildClient
                      (Proxy :: Proxy GetPartnersstatusResource)
                      mempty
