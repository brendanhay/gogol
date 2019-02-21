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
-- Module      : Network.Google.Resource.Partners.UpdateCompanies
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update company. Should only be called within the context of an
-- authorized logged in user.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.updateCompanies@.
module Network.Google.Resource.Partners.UpdateCompanies
    (
    -- * REST Resource
      UpdateCompaniesResource

    -- * Creating a Request
    , updateCompanies
    , UpdateCompanies

    -- * Request Lenses
    , ucXgafv
    , ucUploadProtocol
    , ucUpdateMask
    , ucAccessToken
    , ucUploadType
    , ucPayload
    , ucRequestMetadataPartnersSessionId
    , ucRequestMetadataLocale
    , ucRequestMetadataExperimentIds
    , ucRequestMetadataUserOverridesIPAddress
    , ucRequestMetadataTrafficSourceTrafficSubId
    , ucRequestMetadataUserOverridesUserId
    , ucRequestMetadataTrafficSourceTrafficSourceId
    , ucCallback
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @partners.updateCompanies@ method which the
-- 'UpdateCompanies' request conforms to.
type UpdateCompaniesResource =
     "v2" :>
       "companies" :>
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
                                     ReqBody '[JSON] Company :>
                                       Patch '[JSON] Company

-- | Update company. Should only be called within the context of an
-- authorized logged in user.
--
-- /See:/ 'updateCompanies' smart constructor.
data UpdateCompanies =
  UpdateCompanies'
    { _ucXgafv                                       :: !(Maybe Xgafv)
    , _ucUploadProtocol                              :: !(Maybe Text)
    , _ucUpdateMask                                  :: !(Maybe GFieldMask)
    , _ucAccessToken                                 :: !(Maybe Text)
    , _ucUploadType                                  :: !(Maybe Text)
    , _ucPayload                                     :: !Company
    , _ucRequestMetadataPartnersSessionId            :: !(Maybe Text)
    , _ucRequestMetadataLocale                       :: !(Maybe Text)
    , _ucRequestMetadataExperimentIds                :: !(Maybe [Text])
    , _ucRequestMetadataUserOverridesIPAddress       :: !(Maybe Text)
    , _ucRequestMetadataTrafficSourceTrafficSubId    :: !(Maybe Text)
    , _ucRequestMetadataUserOverridesUserId          :: !(Maybe Text)
    , _ucRequestMetadataTrafficSourceTrafficSourceId :: !(Maybe Text)
    , _ucCallback                                    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateCompanies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucXgafv'
--
-- * 'ucUploadProtocol'
--
-- * 'ucUpdateMask'
--
-- * 'ucAccessToken'
--
-- * 'ucUploadType'
--
-- * 'ucPayload'
--
-- * 'ucRequestMetadataPartnersSessionId'
--
-- * 'ucRequestMetadataLocale'
--
-- * 'ucRequestMetadataExperimentIds'
--
-- * 'ucRequestMetadataUserOverridesIPAddress'
--
-- * 'ucRequestMetadataTrafficSourceTrafficSubId'
--
-- * 'ucRequestMetadataUserOverridesUserId'
--
-- * 'ucRequestMetadataTrafficSourceTrafficSourceId'
--
-- * 'ucCallback'
updateCompanies
    :: Company -- ^ 'ucPayload'
    -> UpdateCompanies
updateCompanies pUcPayload_ =
  UpdateCompanies'
    { _ucXgafv = Nothing
    , _ucUploadProtocol = Nothing
    , _ucUpdateMask = Nothing
    , _ucAccessToken = Nothing
    , _ucUploadType = Nothing
    , _ucPayload = pUcPayload_
    , _ucRequestMetadataPartnersSessionId = Nothing
    , _ucRequestMetadataLocale = Nothing
    , _ucRequestMetadataExperimentIds = Nothing
    , _ucRequestMetadataUserOverridesIPAddress = Nothing
    , _ucRequestMetadataTrafficSourceTrafficSubId = Nothing
    , _ucRequestMetadataUserOverridesUserId = Nothing
    , _ucRequestMetadataTrafficSourceTrafficSourceId = Nothing
    , _ucCallback = Nothing
    }


-- | V1 error format.
ucXgafv :: Lens' UpdateCompanies (Maybe Xgafv)
ucXgafv = lens _ucXgafv (\ s a -> s{_ucXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ucUploadProtocol :: Lens' UpdateCompanies (Maybe Text)
ucUploadProtocol
  = lens _ucUploadProtocol
      (\ s a -> s{_ucUploadProtocol = a})

-- | Standard field mask for the set of fields to be updated. Required with
-- at least 1 value in FieldMask\'s paths.
ucUpdateMask :: Lens' UpdateCompanies (Maybe GFieldMask)
ucUpdateMask
  = lens _ucUpdateMask (\ s a -> s{_ucUpdateMask = a})

-- | OAuth access token.
ucAccessToken :: Lens' UpdateCompanies (Maybe Text)
ucAccessToken
  = lens _ucAccessToken
      (\ s a -> s{_ucAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ucUploadType :: Lens' UpdateCompanies (Maybe Text)
ucUploadType
  = lens _ucUploadType (\ s a -> s{_ucUploadType = a})

-- | Multipart request metadata.
ucPayload :: Lens' UpdateCompanies Company
ucPayload
  = lens _ucPayload (\ s a -> s{_ucPayload = a})

-- | Google Partners session ID.
ucRequestMetadataPartnersSessionId :: Lens' UpdateCompanies (Maybe Text)
ucRequestMetadataPartnersSessionId
  = lens _ucRequestMetadataPartnersSessionId
      (\ s a -> s{_ucRequestMetadataPartnersSessionId = a})

-- | Locale to use for the current request.
ucRequestMetadataLocale :: Lens' UpdateCompanies (Maybe Text)
ucRequestMetadataLocale
  = lens _ucRequestMetadataLocale
      (\ s a -> s{_ucRequestMetadataLocale = a})

-- | Experiment IDs the current request belongs to.
ucRequestMetadataExperimentIds :: Lens' UpdateCompanies [Text]
ucRequestMetadataExperimentIds
  = lens _ucRequestMetadataExperimentIds
      (\ s a -> s{_ucRequestMetadataExperimentIds = a})
      . _Default
      . _Coerce

-- | IP address to use instead of the user\'s geo-located IP address.
ucRequestMetadataUserOverridesIPAddress :: Lens' UpdateCompanies (Maybe Text)
ucRequestMetadataUserOverridesIPAddress
  = lens _ucRequestMetadataUserOverridesIPAddress
      (\ s a ->
         s{_ucRequestMetadataUserOverridesIPAddress = a})

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
ucRequestMetadataTrafficSourceTrafficSubId :: Lens' UpdateCompanies (Maybe Text)
ucRequestMetadataTrafficSourceTrafficSubId
  = lens _ucRequestMetadataTrafficSourceTrafficSubId
      (\ s a ->
         s{_ucRequestMetadataTrafficSourceTrafficSubId = a})

-- | Logged-in user ID to impersonate instead of the user\'s ID.
ucRequestMetadataUserOverridesUserId :: Lens' UpdateCompanies (Maybe Text)
ucRequestMetadataUserOverridesUserId
  = lens _ucRequestMetadataUserOverridesUserId
      (\ s a ->
         s{_ucRequestMetadataUserOverridesUserId = a})

-- | Identifier to indicate where the traffic comes from. An identifier has
-- multiple letters created by a team which redirected the traffic to us.
ucRequestMetadataTrafficSourceTrafficSourceId :: Lens' UpdateCompanies (Maybe Text)
ucRequestMetadataTrafficSourceTrafficSourceId
  = lens _ucRequestMetadataTrafficSourceTrafficSourceId
      (\ s a ->
         s{_ucRequestMetadataTrafficSourceTrafficSourceId =
             a})

-- | JSONP
ucCallback :: Lens' UpdateCompanies (Maybe Text)
ucCallback
  = lens _ucCallback (\ s a -> s{_ucCallback = a})

instance GoogleRequest UpdateCompanies where
        type Rs UpdateCompanies = Company
        type Scopes UpdateCompanies = '[]
        requestClient UpdateCompanies'{..}
          = go _ucXgafv _ucUploadProtocol _ucUpdateMask
              _ucAccessToken
              _ucUploadType
              _ucRequestMetadataPartnersSessionId
              _ucRequestMetadataLocale
              (_ucRequestMetadataExperimentIds ^. _Default)
              _ucRequestMetadataUserOverridesIPAddress
              _ucRequestMetadataTrafficSourceTrafficSubId
              _ucRequestMetadataUserOverridesUserId
              _ucRequestMetadataTrafficSourceTrafficSourceId
              _ucCallback
              (Just AltJSON)
              _ucPayload
              partnersService
          where go
                  = buildClient
                      (Proxy :: Proxy UpdateCompaniesResource)
                      mempty
