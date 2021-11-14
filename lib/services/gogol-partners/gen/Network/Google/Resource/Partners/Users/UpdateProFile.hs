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
-- Module      : Network.Google.Resource.Partners.Users.UpdateProFile
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a user\'s profile. A user can only update their own profile and
-- should only be called within the context of a logged in user.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.users.updateProfile@.
module Network.Google.Resource.Partners.Users.UpdateProFile
    (
    -- * REST Resource
      UsersUpdateProFileResource

    -- * Creating a Request
    , usersUpdateProFile
    , UsersUpdateProFile

    -- * Request Lenses
    , uupfXgafv
    , uupfUploadProtocol
    , uupfAccessToken
    , uupfUploadType
    , uupfPayload
    , uupfRequestMetadataPartnersSessionId
    , uupfRequestMetadataLocale
    , uupfRequestMetadataExperimentIds
    , uupfRequestMetadataUserOverridesIPAddress
    , uupfRequestMetadataTrafficSourceTrafficSubId
    , uupfRequestMetadataUserOverridesUserId
    , uupfRequestMetadataTrafficSourceTrafficSourceId
    , uupfCallback
    ) where

import Network.Google.Partners.Types
import Network.Google.Prelude

-- | A resource alias for @partners.users.updateProfile@ method which the
-- 'UsersUpdateProFile' request conforms to.
type UsersUpdateProFileResource =
     "v2" :>
       "users" :>
         "profile" :>
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
                                     ReqBody '[JSON] UserProFile :>
                                       Patch '[JSON] UserProFile

-- | Updates a user\'s profile. A user can only update their own profile and
-- should only be called within the context of a logged in user.
--
-- /See:/ 'usersUpdateProFile' smart constructor.
data UsersUpdateProFile =
  UsersUpdateProFile'
    { _uupfXgafv :: !(Maybe Xgafv)
    , _uupfUploadProtocol :: !(Maybe Text)
    , _uupfAccessToken :: !(Maybe Text)
    , _uupfUploadType :: !(Maybe Text)
    , _uupfPayload :: !UserProFile
    , _uupfRequestMetadataPartnersSessionId :: !(Maybe Text)
    , _uupfRequestMetadataLocale :: !(Maybe Text)
    , _uupfRequestMetadataExperimentIds :: !(Maybe [Text])
    , _uupfRequestMetadataUserOverridesIPAddress :: !(Maybe Text)
    , _uupfRequestMetadataTrafficSourceTrafficSubId :: !(Maybe Text)
    , _uupfRequestMetadataUserOverridesUserId :: !(Maybe Text)
    , _uupfRequestMetadataTrafficSourceTrafficSourceId :: !(Maybe Text)
    , _uupfCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersUpdateProFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uupfXgafv'
--
-- * 'uupfUploadProtocol'
--
-- * 'uupfAccessToken'
--
-- * 'uupfUploadType'
--
-- * 'uupfPayload'
--
-- * 'uupfRequestMetadataPartnersSessionId'
--
-- * 'uupfRequestMetadataLocale'
--
-- * 'uupfRequestMetadataExperimentIds'
--
-- * 'uupfRequestMetadataUserOverridesIPAddress'
--
-- * 'uupfRequestMetadataTrafficSourceTrafficSubId'
--
-- * 'uupfRequestMetadataUserOverridesUserId'
--
-- * 'uupfRequestMetadataTrafficSourceTrafficSourceId'
--
-- * 'uupfCallback'
usersUpdateProFile
    :: UserProFile -- ^ 'uupfPayload'
    -> UsersUpdateProFile
usersUpdateProFile pUupfPayload_ =
  UsersUpdateProFile'
    { _uupfXgafv = Nothing
    , _uupfUploadProtocol = Nothing
    , _uupfAccessToken = Nothing
    , _uupfUploadType = Nothing
    , _uupfPayload = pUupfPayload_
    , _uupfRequestMetadataPartnersSessionId = Nothing
    , _uupfRequestMetadataLocale = Nothing
    , _uupfRequestMetadataExperimentIds = Nothing
    , _uupfRequestMetadataUserOverridesIPAddress = Nothing
    , _uupfRequestMetadataTrafficSourceTrafficSubId = Nothing
    , _uupfRequestMetadataUserOverridesUserId = Nothing
    , _uupfRequestMetadataTrafficSourceTrafficSourceId = Nothing
    , _uupfCallback = Nothing
    }


-- | V1 error format.
uupfXgafv :: Lens' UsersUpdateProFile (Maybe Xgafv)
uupfXgafv
  = lens _uupfXgafv (\ s a -> s{_uupfXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uupfUploadProtocol :: Lens' UsersUpdateProFile (Maybe Text)
uupfUploadProtocol
  = lens _uupfUploadProtocol
      (\ s a -> s{_uupfUploadProtocol = a})

-- | OAuth access token.
uupfAccessToken :: Lens' UsersUpdateProFile (Maybe Text)
uupfAccessToken
  = lens _uupfAccessToken
      (\ s a -> s{_uupfAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uupfUploadType :: Lens' UsersUpdateProFile (Maybe Text)
uupfUploadType
  = lens _uupfUploadType
      (\ s a -> s{_uupfUploadType = a})

-- | Multipart request metadata.
uupfPayload :: Lens' UsersUpdateProFile UserProFile
uupfPayload
  = lens _uupfPayload (\ s a -> s{_uupfPayload = a})

-- | Google Partners session ID.
uupfRequestMetadataPartnersSessionId :: Lens' UsersUpdateProFile (Maybe Text)
uupfRequestMetadataPartnersSessionId
  = lens _uupfRequestMetadataPartnersSessionId
      (\ s a ->
         s{_uupfRequestMetadataPartnersSessionId = a})

-- | Locale to use for the current request.
uupfRequestMetadataLocale :: Lens' UsersUpdateProFile (Maybe Text)
uupfRequestMetadataLocale
  = lens _uupfRequestMetadataLocale
      (\ s a -> s{_uupfRequestMetadataLocale = a})

-- | Experiment IDs the current request belongs to.
uupfRequestMetadataExperimentIds :: Lens' UsersUpdateProFile [Text]
uupfRequestMetadataExperimentIds
  = lens _uupfRequestMetadataExperimentIds
      (\ s a -> s{_uupfRequestMetadataExperimentIds = a})
      . _Default
      . _Coerce

-- | IP address to use instead of the user\'s geo-located IP address.
uupfRequestMetadataUserOverridesIPAddress :: Lens' UsersUpdateProFile (Maybe Text)
uupfRequestMetadataUserOverridesIPAddress
  = lens _uupfRequestMetadataUserOverridesIPAddress
      (\ s a ->
         s{_uupfRequestMetadataUserOverridesIPAddress = a})

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
uupfRequestMetadataTrafficSourceTrafficSubId :: Lens' UsersUpdateProFile (Maybe Text)
uupfRequestMetadataTrafficSourceTrafficSubId
  = lens _uupfRequestMetadataTrafficSourceTrafficSubId
      (\ s a ->
         s{_uupfRequestMetadataTrafficSourceTrafficSubId = a})

-- | Logged-in user ID to impersonate instead of the user\'s ID.
uupfRequestMetadataUserOverridesUserId :: Lens' UsersUpdateProFile (Maybe Text)
uupfRequestMetadataUserOverridesUserId
  = lens _uupfRequestMetadataUserOverridesUserId
      (\ s a ->
         s{_uupfRequestMetadataUserOverridesUserId = a})

-- | Identifier to indicate where the traffic comes from. An identifier has
-- multiple letters created by a team which redirected the traffic to us.
uupfRequestMetadataTrafficSourceTrafficSourceId :: Lens' UsersUpdateProFile (Maybe Text)
uupfRequestMetadataTrafficSourceTrafficSourceId
  = lens
      _uupfRequestMetadataTrafficSourceTrafficSourceId
      (\ s a ->
         s{_uupfRequestMetadataTrafficSourceTrafficSourceId =
             a})

-- | JSONP
uupfCallback :: Lens' UsersUpdateProFile (Maybe Text)
uupfCallback
  = lens _uupfCallback (\ s a -> s{_uupfCallback = a})

instance GoogleRequest UsersUpdateProFile where
        type Rs UsersUpdateProFile = UserProFile
        type Scopes UsersUpdateProFile = '[]
        requestClient UsersUpdateProFile'{..}
          = go _uupfXgafv _uupfUploadProtocol _uupfAccessToken
              _uupfUploadType
              _uupfRequestMetadataPartnersSessionId
              _uupfRequestMetadataLocale
              (_uupfRequestMetadataExperimentIds ^. _Default)
              _uupfRequestMetadataUserOverridesIPAddress
              _uupfRequestMetadataTrafficSourceTrafficSubId
              _uupfRequestMetadataUserOverridesUserId
              _uupfRequestMetadataTrafficSourceTrafficSourceId
              _uupfCallback
              (Just AltJSON)
              _uupfPayload
              partnersService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersUpdateProFileResource)
                      mempty
