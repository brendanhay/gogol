{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.Uploads.UploadData
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Upload data for a custom data source.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.uploads.uploadData@.
module Network.Google.API.Analytics.Management.Uploads.UploadData
    (
    -- * REST Resource
      ManagementUploadsUploadDataAPI

    -- * Creating a Request
    , managementUploadsUploadData'
    , ManagementUploadsUploadData'

    -- * Request Lenses
    , muudQuotaUser
    , muudPrettyPrint
    , muudWebPropertyId
    , muudUserIp
    , muudCustomDataSourceId
    , muudAccountId
    , muudKey
    , muudOauthToken
    , muudFields
    , muudAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.uploads.uploadData which the
-- 'ManagementUploadsUploadData'' request conforms to.
type ManagementUploadsUploadDataAPI =
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
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :> Post '[JSON] Upload

-- | Upload data for a custom data source.
--
-- /See:/ 'managementUploadsUploadData'' smart constructor.
data ManagementUploadsUploadData' = ManagementUploadsUploadData'
    { _muudQuotaUser          :: !(Maybe Text)
    , _muudPrettyPrint        :: !Bool
    , _muudWebPropertyId      :: !Text
    , _muudUserIp             :: !(Maybe Text)
    , _muudCustomDataSourceId :: !Text
    , _muudAccountId          :: !Text
    , _muudKey                :: !(Maybe Text)
    , _muudOauthToken         :: !(Maybe Text)
    , _muudFields             :: !(Maybe Text)
    , _muudAlt                :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'muudUserIp'
--
-- * 'muudCustomDataSourceId'
--
-- * 'muudAccountId'
--
-- * 'muudKey'
--
-- * 'muudOauthToken'
--
-- * 'muudFields'
--
-- * 'muudAlt'
managementUploadsUploadData'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'customDataSourceId'
    -> Text -- ^ 'accountId'
    -> ManagementUploadsUploadData'
managementUploadsUploadData' pMuudWebPropertyId_ pMuudCustomDataSourceId_ pMuudAccountId_ =
    ManagementUploadsUploadData'
    { _muudQuotaUser = Nothing
    , _muudPrettyPrint = False
    , _muudWebPropertyId = pMuudWebPropertyId_
    , _muudUserIp = Nothing
    , _muudCustomDataSourceId = pMuudCustomDataSourceId_
    , _muudAccountId = pMuudAccountId_
    , _muudKey = Nothing
    , _muudOauthToken = Nothing
    , _muudFields = Nothing
    , _muudAlt = JSON
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
muudUserIp :: Lens' ManagementUploadsUploadData' (Maybe Text)
muudUserIp
  = lens _muudUserIp (\ s a -> s{_muudUserIp = a})

-- | Custom data source Id to which the data being uploaded belongs.
muudCustomDataSourceId :: Lens' ManagementUploadsUploadData' Text
muudCustomDataSourceId
  = lens _muudCustomDataSourceId
      (\ s a -> s{_muudCustomDataSourceId = a})

-- | Account Id associated with the upload.
muudAccountId :: Lens' ManagementUploadsUploadData' Text
muudAccountId
  = lens _muudAccountId
      (\ s a -> s{_muudAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
muudKey :: Lens' ManagementUploadsUploadData' (Maybe Text)
muudKey = lens _muudKey (\ s a -> s{_muudKey = a})

-- | OAuth 2.0 token for the current user.
muudOauthToken :: Lens' ManagementUploadsUploadData' (Maybe Text)
muudOauthToken
  = lens _muudOauthToken
      (\ s a -> s{_muudOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
muudFields :: Lens' ManagementUploadsUploadData' (Maybe Text)
muudFields
  = lens _muudFields (\ s a -> s{_muudFields = a})

-- | Data format for the response.
muudAlt :: Lens' ManagementUploadsUploadData' Alt
muudAlt = lens _muudAlt (\ s a -> s{_muudAlt = a})

instance GoogleRequest ManagementUploadsUploadData'
         where
        type Rs ManagementUploadsUploadData' = Upload
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementUploadsUploadData'{..}
          = go _muudQuotaUser (Just _muudPrettyPrint)
              _muudWebPropertyId
              _muudUserIp
              _muudCustomDataSourceId
              _muudAccountId
              _muudKey
              _muudOauthToken
              _muudFields
              (Just _muudAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementUploadsUploadDataAPI)
                      r
                      u
