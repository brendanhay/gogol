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
-- Module      : Network.Google.Resource.Partners.Users.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a user.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.users.get@.
module Network.Google.Resource.Partners.Users.Get
    (
    -- * REST Resource
      UsersGetResource

    -- * Creating a Request
    , usersGet
    , UsersGet

    -- * Request Lenses
    , ugXgafv
    , ugUploadProtocol
    , ugAccessToken
    , ugUploadType
    , ugUserId
    , ugRequestMetadataPartnersSessionId
    , ugUserView
    , ugRequestMetadataLocale
    , ugRequestMetadataExperimentIds
    , ugRequestMetadataUserOverridesIPAddress
    , ugRequestMetadataTrafficSourceTrafficSubId
    , ugRequestMetadataUserOverridesUserId
    , ugRequestMetadataTrafficSourceTrafficSourceId
    , ugCallback
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @partners.users.get@ method which the
-- 'UsersGet' request conforms to.
type UsersGetResource =
     "v2" :>
       "users" :>
         Capture "userId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "requestMetadata.partnersSessionId" Text
                     :>
                     QueryParam "userView" Text :>
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
                                       Get '[JSON] User

-- | Gets a user.
--
-- /See:/ 'usersGet' smart constructor.
data UsersGet = UsersGet'
    { _ugXgafv                                       :: !(Maybe Xgafv)
    , _ugUploadProtocol                              :: !(Maybe Text)
    , _ugAccessToken                                 :: !(Maybe Text)
    , _ugUploadType                                  :: !(Maybe Text)
    , _ugUserId                                      :: !Text
    , _ugRequestMetadataPartnersSessionId            :: !(Maybe Text)
    , _ugUserView                                    :: !(Maybe Text)
    , _ugRequestMetadataLocale                       :: !(Maybe Text)
    , _ugRequestMetadataExperimentIds                :: !(Maybe [Text])
    , _ugRequestMetadataUserOverridesIPAddress       :: !(Maybe Text)
    , _ugRequestMetadataTrafficSourceTrafficSubId    :: !(Maybe Text)
    , _ugRequestMetadataUserOverridesUserId          :: !(Maybe Text)
    , _ugRequestMetadataTrafficSourceTrafficSourceId :: !(Maybe Text)
    , _ugCallback                                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugXgafv'
--
-- * 'ugUploadProtocol'
--
-- * 'ugAccessToken'
--
-- * 'ugUploadType'
--
-- * 'ugUserId'
--
-- * 'ugRequestMetadataPartnersSessionId'
--
-- * 'ugUserView'
--
-- * 'ugRequestMetadataLocale'
--
-- * 'ugRequestMetadataExperimentIds'
--
-- * 'ugRequestMetadataUserOverridesIPAddress'
--
-- * 'ugRequestMetadataTrafficSourceTrafficSubId'
--
-- * 'ugRequestMetadataUserOverridesUserId'
--
-- * 'ugRequestMetadataTrafficSourceTrafficSourceId'
--
-- * 'ugCallback'
usersGet
    :: Text -- ^ 'ugUserId'
    -> UsersGet
usersGet pUgUserId_ =
    UsersGet'
    { _ugXgafv = Nothing
    , _ugUploadProtocol = Nothing
    , _ugAccessToken = Nothing
    , _ugUploadType = Nothing
    , _ugUserId = pUgUserId_
    , _ugRequestMetadataPartnersSessionId = Nothing
    , _ugUserView = Nothing
    , _ugRequestMetadataLocale = Nothing
    , _ugRequestMetadataExperimentIds = Nothing
    , _ugRequestMetadataUserOverridesIPAddress = Nothing
    , _ugRequestMetadataTrafficSourceTrafficSubId = Nothing
    , _ugRequestMetadataUserOverridesUserId = Nothing
    , _ugRequestMetadataTrafficSourceTrafficSourceId = Nothing
    , _ugCallback = Nothing
    }

-- | V1 error format.
ugXgafv :: Lens' UsersGet (Maybe Xgafv)
ugXgafv = lens _ugXgafv (\ s a -> s{_ugXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ugUploadProtocol :: Lens' UsersGet (Maybe Text)
ugUploadProtocol
  = lens _ugUploadProtocol
      (\ s a -> s{_ugUploadProtocol = a})

-- | OAuth access token.
ugAccessToken :: Lens' UsersGet (Maybe Text)
ugAccessToken
  = lens _ugAccessToken
      (\ s a -> s{_ugAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ugUploadType :: Lens' UsersGet (Maybe Text)
ugUploadType
  = lens _ugUploadType (\ s a -> s{_ugUploadType = a})

-- | Identifier of the user. Can be set to 'me' to mean the currently
-- authenticated user.
ugUserId :: Lens' UsersGet Text
ugUserId = lens _ugUserId (\ s a -> s{_ugUserId = a})

-- | Google Partners session ID.
ugRequestMetadataPartnersSessionId :: Lens' UsersGet (Maybe Text)
ugRequestMetadataPartnersSessionId
  = lens _ugRequestMetadataPartnersSessionId
      (\ s a -> s{_ugRequestMetadataPartnersSessionId = a})

-- | Specifies what parts of the user information to return.
ugUserView :: Lens' UsersGet (Maybe Text)
ugUserView
  = lens _ugUserView (\ s a -> s{_ugUserView = a})

-- | Locale to use for the current request.
ugRequestMetadataLocale :: Lens' UsersGet (Maybe Text)
ugRequestMetadataLocale
  = lens _ugRequestMetadataLocale
      (\ s a -> s{_ugRequestMetadataLocale = a})

-- | Experiment IDs the current request belongs to.
ugRequestMetadataExperimentIds :: Lens' UsersGet [Text]
ugRequestMetadataExperimentIds
  = lens _ugRequestMetadataExperimentIds
      (\ s a -> s{_ugRequestMetadataExperimentIds = a})
      . _Default
      . _Coerce

-- | IP address to use instead of the user\'s geo-located IP address.
ugRequestMetadataUserOverridesIPAddress :: Lens' UsersGet (Maybe Text)
ugRequestMetadataUserOverridesIPAddress
  = lens _ugRequestMetadataUserOverridesIPAddress
      (\ s a ->
         s{_ugRequestMetadataUserOverridesIPAddress = a})

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
ugRequestMetadataTrafficSourceTrafficSubId :: Lens' UsersGet (Maybe Text)
ugRequestMetadataTrafficSourceTrafficSubId
  = lens _ugRequestMetadataTrafficSourceTrafficSubId
      (\ s a ->
         s{_ugRequestMetadataTrafficSourceTrafficSubId = a})

-- | Logged-in user ID to impersonate instead of the user\'s ID.
ugRequestMetadataUserOverridesUserId :: Lens' UsersGet (Maybe Text)
ugRequestMetadataUserOverridesUserId
  = lens _ugRequestMetadataUserOverridesUserId
      (\ s a ->
         s{_ugRequestMetadataUserOverridesUserId = a})

-- | Identifier to indicate where the traffic comes from. An identifier has
-- multiple letters created by a team which redirected the traffic to us.
ugRequestMetadataTrafficSourceTrafficSourceId :: Lens' UsersGet (Maybe Text)
ugRequestMetadataTrafficSourceTrafficSourceId
  = lens _ugRequestMetadataTrafficSourceTrafficSourceId
      (\ s a ->
         s{_ugRequestMetadataTrafficSourceTrafficSourceId =
             a})

-- | JSONP
ugCallback :: Lens' UsersGet (Maybe Text)
ugCallback
  = lens _ugCallback (\ s a -> s{_ugCallback = a})

instance GoogleRequest UsersGet where
        type Rs UsersGet = User
        type Scopes UsersGet = '[]
        requestClient UsersGet'{..}
          = go _ugUserId _ugXgafv _ugUploadProtocol
              _ugAccessToken
              _ugUploadType
              _ugRequestMetadataPartnersSessionId
              _ugUserView
              _ugRequestMetadataLocale
              (_ugRequestMetadataExperimentIds ^. _Default)
              _ugRequestMetadataUserOverridesIPAddress
              _ugRequestMetadataTrafficSourceTrafficSubId
              _ugRequestMetadataUserOverridesUserId
              _ugRequestMetadataTrafficSourceTrafficSourceId
              _ugCallback
              (Just AltJSON)
              partnersService
          where go
                  = buildClient (Proxy :: Proxy UsersGetResource)
                      mempty
