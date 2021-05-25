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
-- Module      : Network.Google.Resource.Partners.UpdateLeads
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified lead.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.updateLeads@.
module Network.Google.Resource.Partners.UpdateLeads
    (
    -- * REST Resource
      UpdateLeadsResource

    -- * Creating a Request
    , updateLeads
    , UpdateLeads

    -- * Request Lenses
    , ulXgafv
    , ulUploadProtocol
    , ulUpdateMask
    , ulAccessToken
    , ulUploadType
    , ulPayload
    , ulRequestMetadataPartnersSessionId
    , ulRequestMetadataLocale
    , ulRequestMetadataExperimentIds
    , ulRequestMetadataUserOverridesIPAddress
    , ulRequestMetadataTrafficSourceTrafficSubId
    , ulRequestMetadataUserOverridesUserId
    , ulRequestMetadataTrafficSourceTrafficSourceId
    , ulCallback
    ) where

import Network.Google.Partners.Types
import Network.Google.Prelude

-- | A resource alias for @partners.updateLeads@ method which the
-- 'UpdateLeads' request conforms to.
type UpdateLeadsResource =
     "v2" :>
       "leads" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
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
                                     ReqBody '[JSON] Lead :> Patch '[JSON] Lead

-- | Updates the specified lead.
--
-- /See:/ 'updateLeads' smart constructor.
data UpdateLeads =
  UpdateLeads'
    { _ulXgafv :: !(Maybe Xgafv)
    , _ulUploadProtocol :: !(Maybe Text)
    , _ulUpdateMask :: !(Maybe GFieldMask)
    , _ulAccessToken :: !(Maybe Text)
    , _ulUploadType :: !(Maybe Text)
    , _ulPayload :: !Lead
    , _ulRequestMetadataPartnersSessionId :: !(Maybe Text)
    , _ulRequestMetadataLocale :: !(Maybe Text)
    , _ulRequestMetadataExperimentIds :: !(Maybe [Text])
    , _ulRequestMetadataUserOverridesIPAddress :: !(Maybe Text)
    , _ulRequestMetadataTrafficSourceTrafficSubId :: !(Maybe Text)
    , _ulRequestMetadataUserOverridesUserId :: !(Maybe Text)
    , _ulRequestMetadataTrafficSourceTrafficSourceId :: !(Maybe Text)
    , _ulCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateLeads' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulXgafv'
--
-- * 'ulUploadProtocol'
--
-- * 'ulUpdateMask'
--
-- * 'ulAccessToken'
--
-- * 'ulUploadType'
--
-- * 'ulPayload'
--
-- * 'ulRequestMetadataPartnersSessionId'
--
-- * 'ulRequestMetadataLocale'
--
-- * 'ulRequestMetadataExperimentIds'
--
-- * 'ulRequestMetadataUserOverridesIPAddress'
--
-- * 'ulRequestMetadataTrafficSourceTrafficSubId'
--
-- * 'ulRequestMetadataUserOverridesUserId'
--
-- * 'ulRequestMetadataTrafficSourceTrafficSourceId'
--
-- * 'ulCallback'
updateLeads
    :: Lead -- ^ 'ulPayload'
    -> UpdateLeads
updateLeads pUlPayload_ =
  UpdateLeads'
    { _ulXgafv = Nothing
    , _ulUploadProtocol = Nothing
    , _ulUpdateMask = Nothing
    , _ulAccessToken = Nothing
    , _ulUploadType = Nothing
    , _ulPayload = pUlPayload_
    , _ulRequestMetadataPartnersSessionId = Nothing
    , _ulRequestMetadataLocale = Nothing
    , _ulRequestMetadataExperimentIds = Nothing
    , _ulRequestMetadataUserOverridesIPAddress = Nothing
    , _ulRequestMetadataTrafficSourceTrafficSubId = Nothing
    , _ulRequestMetadataUserOverridesUserId = Nothing
    , _ulRequestMetadataTrafficSourceTrafficSourceId = Nothing
    , _ulCallback = Nothing
    }


-- | V1 error format.
ulXgafv :: Lens' UpdateLeads (Maybe Xgafv)
ulXgafv = lens _ulXgafv (\ s a -> s{_ulXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ulUploadProtocol :: Lens' UpdateLeads (Maybe Text)
ulUploadProtocol
  = lens _ulUploadProtocol
      (\ s a -> s{_ulUploadProtocol = a})

-- | Standard field mask for the set of fields to be updated. Required with
-- at least 1 value in FieldMask\'s paths. Only \`state\` and
-- \`adwords_customer_id\` are currently supported.
ulUpdateMask :: Lens' UpdateLeads (Maybe GFieldMask)
ulUpdateMask
  = lens _ulUpdateMask (\ s a -> s{_ulUpdateMask = a})

-- | OAuth access token.
ulAccessToken :: Lens' UpdateLeads (Maybe Text)
ulAccessToken
  = lens _ulAccessToken
      (\ s a -> s{_ulAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ulUploadType :: Lens' UpdateLeads (Maybe Text)
ulUploadType
  = lens _ulUploadType (\ s a -> s{_ulUploadType = a})

-- | Multipart request metadata.
ulPayload :: Lens' UpdateLeads Lead
ulPayload
  = lens _ulPayload (\ s a -> s{_ulPayload = a})

-- | Google Partners session ID.
ulRequestMetadataPartnersSessionId :: Lens' UpdateLeads (Maybe Text)
ulRequestMetadataPartnersSessionId
  = lens _ulRequestMetadataPartnersSessionId
      (\ s a -> s{_ulRequestMetadataPartnersSessionId = a})

-- | Locale to use for the current request.
ulRequestMetadataLocale :: Lens' UpdateLeads (Maybe Text)
ulRequestMetadataLocale
  = lens _ulRequestMetadataLocale
      (\ s a -> s{_ulRequestMetadataLocale = a})

-- | Experiment IDs the current request belongs to.
ulRequestMetadataExperimentIds :: Lens' UpdateLeads [Text]
ulRequestMetadataExperimentIds
  = lens _ulRequestMetadataExperimentIds
      (\ s a -> s{_ulRequestMetadataExperimentIds = a})
      . _Default
      . _Coerce

-- | IP address to use instead of the user\'s geo-located IP address.
ulRequestMetadataUserOverridesIPAddress :: Lens' UpdateLeads (Maybe Text)
ulRequestMetadataUserOverridesIPAddress
  = lens _ulRequestMetadataUserOverridesIPAddress
      (\ s a ->
         s{_ulRequestMetadataUserOverridesIPAddress = a})

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
ulRequestMetadataTrafficSourceTrafficSubId :: Lens' UpdateLeads (Maybe Text)
ulRequestMetadataTrafficSourceTrafficSubId
  = lens _ulRequestMetadataTrafficSourceTrafficSubId
      (\ s a ->
         s{_ulRequestMetadataTrafficSourceTrafficSubId = a})

-- | Logged-in user ID to impersonate instead of the user\'s ID.
ulRequestMetadataUserOverridesUserId :: Lens' UpdateLeads (Maybe Text)
ulRequestMetadataUserOverridesUserId
  = lens _ulRequestMetadataUserOverridesUserId
      (\ s a ->
         s{_ulRequestMetadataUserOverridesUserId = a})

-- | Identifier to indicate where the traffic comes from. An identifier has
-- multiple letters created by a team which redirected the traffic to us.
ulRequestMetadataTrafficSourceTrafficSourceId :: Lens' UpdateLeads (Maybe Text)
ulRequestMetadataTrafficSourceTrafficSourceId
  = lens _ulRequestMetadataTrafficSourceTrafficSourceId
      (\ s a ->
         s{_ulRequestMetadataTrafficSourceTrafficSourceId =
             a})

-- | JSONP
ulCallback :: Lens' UpdateLeads (Maybe Text)
ulCallback
  = lens _ulCallback (\ s a -> s{_ulCallback = a})

instance GoogleRequest UpdateLeads where
        type Rs UpdateLeads = Lead
        type Scopes UpdateLeads = '[]
        requestClient UpdateLeads'{..}
          = go _ulXgafv _ulUploadProtocol _ulUpdateMask
              _ulAccessToken
              _ulUploadType
              _ulRequestMetadataPartnersSessionId
              _ulRequestMetadataLocale
              (_ulRequestMetadataExperimentIds ^. _Default)
              _ulRequestMetadataUserOverridesIPAddress
              _ulRequestMetadataTrafficSourceTrafficSubId
              _ulRequestMetadataUserOverridesUserId
              _ulRequestMetadataTrafficSourceTrafficSourceId
              _ulCallback
              (Just AltJSON)
              _ulPayload
              partnersService
          where go
                  = buildClient (Proxy :: Proxy UpdateLeadsResource)
                      mempty
