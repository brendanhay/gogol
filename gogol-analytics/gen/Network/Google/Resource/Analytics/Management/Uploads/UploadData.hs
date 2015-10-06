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
-- Module      : Network.Google.Resource.Analytics.Management.Uploads.UploadData
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Upload data for a custom data source.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementUploadsUploadData@.
module Network.Google.Resource.Analytics.Management.Uploads.UploadData
    (
    -- * REST Resource
      ManagementUploadsUploadDataResource

    -- * Creating a Request
    , managementUploadsUploadData'
    , ManagementUploadsUploadData'

    -- * Request Lenses
    , muudQuotaUser
    , muudPrettyPrint
    , muudWebPropertyId
    , muudUserIP
    , muudCustomDataSourceId
    , muudMedia
    , muudAccountId
    , muudKey
    , muudOAuthToken
    , muudFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementUploadsUploadData@ which the
-- 'ManagementUploadsUploadData'' request conforms to.
type ManagementUploadsUploadDataResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customDataSources" :>
                 Capture "customDataSourceId" Text :>
                   "uploads" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[OctetStream] Stream :>
                                     Post '[JSON] Upload

-- | Upload data for a custom data source.
--
-- /See:/ 'managementUploadsUploadData'' smart constructor.
data ManagementUploadsUploadData' = ManagementUploadsUploadData'
    { _muudQuotaUser          :: !(Maybe Text)
    , _muudPrettyPrint        :: !Bool
    , _muudWebPropertyId      :: !Text
    , _muudUserIP             :: !(Maybe Text)
    , _muudCustomDataSourceId :: !Text
    , _muudMedia              :: !Stream
    , _muudAccountId          :: !Text
    , _muudKey                :: !(Maybe AuthKey)
    , _muudOAuthToken         :: !(Maybe OAuthToken)
    , _muudFields             :: !(Maybe Text)
    }

-- | Creates a value of 'ManagementUploadsUploadData'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muudQuotaUser'
--
-- * 'muudPrettyPrint'
--
-- * 'muudWebPropertyId'
--
-- * 'muudUserIP'
--
-- * 'muudCustomDataSourceId'
--
-- * 'muudMedia'
--
-- * 'muudAccountId'
--
-- * 'muudKey'
--
-- * 'muudOAuthToken'
--
-- * 'muudFields'
managementUploadsUploadData'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'customDataSourceId'
    -> Stream -- ^ 'media'
    -> Text -- ^ 'accountId'
    -> ManagementUploadsUploadData'
managementUploadsUploadData' pMuudWebPropertyId_ pMuudCustomDataSourceId_ pMuudMedia_ pMuudAccountId_ =
    ManagementUploadsUploadData'
    { _muudQuotaUser = Nothing
    , _muudPrettyPrint = False
    , _muudWebPropertyId = pMuudWebPropertyId_
    , _muudUserIP = Nothing
    , _muudCustomDataSourceId = pMuudCustomDataSourceId_
    , _muudMedia = pMuudMedia_
    , _muudAccountId = pMuudAccountId_
    , _muudKey = Nothing
    , _muudOAuthToken = Nothing
    , _muudFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
muudQuotaUser :: Lens' ManagementUploadsUploadData' (Maybe Text)
muudQuotaUser
  = lens _muudQuotaUser
      (\ s a -> s{_muudQuotaUser = a})

-- | Returns response with indentations and line breaks.
muudPrettyPrint :: Lens' ManagementUploadsUploadData' Bool
muudPrettyPrint
  = lens _muudPrettyPrint
      (\ s a -> s{_muudPrettyPrint = a})

-- | Web property UA-string associated with the upload.
muudWebPropertyId :: Lens' ManagementUploadsUploadData' Text
muudWebPropertyId
  = lens _muudWebPropertyId
      (\ s a -> s{_muudWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
muudUserIP :: Lens' ManagementUploadsUploadData' (Maybe Text)
muudUserIP
  = lens _muudUserIP (\ s a -> s{_muudUserIP = a})

-- | Custom data source Id to which the data being uploaded belongs.
muudCustomDataSourceId :: Lens' ManagementUploadsUploadData' Text
muudCustomDataSourceId
  = lens _muudCustomDataSourceId
      (\ s a -> s{_muudCustomDataSourceId = a})

muudMedia :: Lens' ManagementUploadsUploadData' Stream
muudMedia
  = lens _muudMedia (\ s a -> s{_muudMedia = a})

-- | Account Id associated with the upload.
muudAccountId :: Lens' ManagementUploadsUploadData' Text
muudAccountId
  = lens _muudAccountId
      (\ s a -> s{_muudAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
muudKey :: Lens' ManagementUploadsUploadData' (Maybe AuthKey)
muudKey = lens _muudKey (\ s a -> s{_muudKey = a})

-- | OAuth 2.0 token for the current user.
muudOAuthToken :: Lens' ManagementUploadsUploadData' (Maybe OAuthToken)
muudOAuthToken
  = lens _muudOAuthToken
      (\ s a -> s{_muudOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
muudFields :: Lens' ManagementUploadsUploadData' (Maybe Text)
muudFields
  = lens _muudFields (\ s a -> s{_muudFields = a})

instance GoogleAuth ManagementUploadsUploadData'
         where
        authKey = muudKey . _Just
        authToken = muudOAuthToken . _Just

instance GoogleRequest ManagementUploadsUploadData'
         where
        type Rs ManagementUploadsUploadData' = Upload
        request = requestWith analyticsRequest
        requestWith rq ManagementUploadsUploadData'{..}
          = go _muudAccountId _muudWebPropertyId
              _muudCustomDataSourceId
              _muudQuotaUser
              (Just _muudPrettyPrint)
              _muudUserIP
              _muudFields
              _muudKey
              _muudOAuthToken
              (Just AltJSON)
              _muudMedia
          where go
                  = clientBuild
                      (Proxy :: Proxy ManagementUploadsUploadDataResource)
                      rq
