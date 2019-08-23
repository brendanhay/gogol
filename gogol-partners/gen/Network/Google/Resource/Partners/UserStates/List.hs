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
-- Module      : Network.Google.Resource.Partners.UserStates.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists states for current user.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.userStates.list@.
module Network.Google.Resource.Partners.UserStates.List
    (
    -- * REST Resource
      UserStatesListResource

    -- * Creating a Request
    , userStatesList
    , UserStatesList

    -- * Request Lenses
    , uslXgafv
    , uslUploadProtocol
    , uslAccessToken
    , uslUploadType
    , uslRequestMetadataPartnersSessionId
    , uslRequestMetadataLocale
    , uslRequestMetadataExperimentIds
    , uslRequestMetadataUserOverridesIPAddress
    , uslRequestMetadataTrafficSourceTrafficSubId
    , uslRequestMetadataUserOverridesUserId
    , uslRequestMetadataTrafficSourceTrafficSourceId
    , uslCallback
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @partners.userStates.list@ method which the
-- 'UserStatesList' request conforms to.
type UserStatesListResource =
     "v2" :>
       "userStates" :>
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
                                   Get '[JSON] ListUserStatesResponse

-- | Lists states for current user.
--
-- /See:/ 'userStatesList' smart constructor.
data UserStatesList =
  UserStatesList'
    { _uslXgafv                                       :: !(Maybe Xgafv)
    , _uslUploadProtocol                              :: !(Maybe Text)
    , _uslAccessToken                                 :: !(Maybe Text)
    , _uslUploadType                                  :: !(Maybe Text)
    , _uslRequestMetadataPartnersSessionId            :: !(Maybe Text)
    , _uslRequestMetadataLocale                       :: !(Maybe Text)
    , _uslRequestMetadataExperimentIds                :: !(Maybe [Text])
    , _uslRequestMetadataUserOverridesIPAddress       :: !(Maybe Text)
    , _uslRequestMetadataTrafficSourceTrafficSubId    :: !(Maybe Text)
    , _uslRequestMetadataUserOverridesUserId          :: !(Maybe Text)
    , _uslRequestMetadataTrafficSourceTrafficSourceId :: !(Maybe Text)
    , _uslCallback                                    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserStatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uslXgafv'
--
-- * 'uslUploadProtocol'
--
-- * 'uslAccessToken'
--
-- * 'uslUploadType'
--
-- * 'uslRequestMetadataPartnersSessionId'
--
-- * 'uslRequestMetadataLocale'
--
-- * 'uslRequestMetadataExperimentIds'
--
-- * 'uslRequestMetadataUserOverridesIPAddress'
--
-- * 'uslRequestMetadataTrafficSourceTrafficSubId'
--
-- * 'uslRequestMetadataUserOverridesUserId'
--
-- * 'uslRequestMetadataTrafficSourceTrafficSourceId'
--
-- * 'uslCallback'
userStatesList
    :: UserStatesList
userStatesList =
  UserStatesList'
    { _uslXgafv = Nothing
    , _uslUploadProtocol = Nothing
    , _uslAccessToken = Nothing
    , _uslUploadType = Nothing
    , _uslRequestMetadataPartnersSessionId = Nothing
    , _uslRequestMetadataLocale = Nothing
    , _uslRequestMetadataExperimentIds = Nothing
    , _uslRequestMetadataUserOverridesIPAddress = Nothing
    , _uslRequestMetadataTrafficSourceTrafficSubId = Nothing
    , _uslRequestMetadataUserOverridesUserId = Nothing
    , _uslRequestMetadataTrafficSourceTrafficSourceId = Nothing
    , _uslCallback = Nothing
    }


-- | V1 error format.
uslXgafv :: Lens' UserStatesList (Maybe Xgafv)
uslXgafv = lens _uslXgafv (\ s a -> s{_uslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uslUploadProtocol :: Lens' UserStatesList (Maybe Text)
uslUploadProtocol
  = lens _uslUploadProtocol
      (\ s a -> s{_uslUploadProtocol = a})

-- | OAuth access token.
uslAccessToken :: Lens' UserStatesList (Maybe Text)
uslAccessToken
  = lens _uslAccessToken
      (\ s a -> s{_uslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uslUploadType :: Lens' UserStatesList (Maybe Text)
uslUploadType
  = lens _uslUploadType
      (\ s a -> s{_uslUploadType = a})

-- | Google Partners session ID.
uslRequestMetadataPartnersSessionId :: Lens' UserStatesList (Maybe Text)
uslRequestMetadataPartnersSessionId
  = lens _uslRequestMetadataPartnersSessionId
      (\ s a ->
         s{_uslRequestMetadataPartnersSessionId = a})

-- | Locale to use for the current request.
uslRequestMetadataLocale :: Lens' UserStatesList (Maybe Text)
uslRequestMetadataLocale
  = lens _uslRequestMetadataLocale
      (\ s a -> s{_uslRequestMetadataLocale = a})

-- | Experiment IDs the current request belongs to.
uslRequestMetadataExperimentIds :: Lens' UserStatesList [Text]
uslRequestMetadataExperimentIds
  = lens _uslRequestMetadataExperimentIds
      (\ s a -> s{_uslRequestMetadataExperimentIds = a})
      . _Default
      . _Coerce

-- | IP address to use instead of the user\'s geo-located IP address.
uslRequestMetadataUserOverridesIPAddress :: Lens' UserStatesList (Maybe Text)
uslRequestMetadataUserOverridesIPAddress
  = lens _uslRequestMetadataUserOverridesIPAddress
      (\ s a ->
         s{_uslRequestMetadataUserOverridesIPAddress = a})

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
uslRequestMetadataTrafficSourceTrafficSubId :: Lens' UserStatesList (Maybe Text)
uslRequestMetadataTrafficSourceTrafficSubId
  = lens _uslRequestMetadataTrafficSourceTrafficSubId
      (\ s a ->
         s{_uslRequestMetadataTrafficSourceTrafficSubId = a})

-- | Logged-in user ID to impersonate instead of the user\'s ID.
uslRequestMetadataUserOverridesUserId :: Lens' UserStatesList (Maybe Text)
uslRequestMetadataUserOverridesUserId
  = lens _uslRequestMetadataUserOverridesUserId
      (\ s a ->
         s{_uslRequestMetadataUserOverridesUserId = a})

-- | Identifier to indicate where the traffic comes from. An identifier has
-- multiple letters created by a team which redirected the traffic to us.
uslRequestMetadataTrafficSourceTrafficSourceId :: Lens' UserStatesList (Maybe Text)
uslRequestMetadataTrafficSourceTrafficSourceId
  = lens
      _uslRequestMetadataTrafficSourceTrafficSourceId
      (\ s a ->
         s{_uslRequestMetadataTrafficSourceTrafficSourceId =
             a})

-- | JSONP
uslCallback :: Lens' UserStatesList (Maybe Text)
uslCallback
  = lens _uslCallback (\ s a -> s{_uslCallback = a})

instance GoogleRequest UserStatesList where
        type Rs UserStatesList = ListUserStatesResponse
        type Scopes UserStatesList = '[]
        requestClient UserStatesList'{..}
          = go _uslXgafv _uslUploadProtocol _uslAccessToken
              _uslUploadType
              _uslRequestMetadataPartnersSessionId
              _uslRequestMetadataLocale
              (_uslRequestMetadataExperimentIds ^. _Default)
              _uslRequestMetadataUserOverridesIPAddress
              _uslRequestMetadataTrafficSourceTrafficSubId
              _uslRequestMetadataUserOverridesUserId
              _uslRequestMetadataTrafficSourceTrafficSourceId
              _uslCallback
              (Just AltJSON)
              partnersService
          where go
                  = buildClient (Proxy :: Proxy UserStatesListResource)
                      mempty
