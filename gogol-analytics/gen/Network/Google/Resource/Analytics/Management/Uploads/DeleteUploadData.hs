{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.Uploads.DeleteUploadData
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete data associated with a previous upload.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementUploadsDeleteUploadData@.
module Network.Google.Resource.Analytics.Management.Uploads.DeleteUploadData
    (
    -- * REST Resource
      ManagementUploadsDeleteUploadDataResource

    -- * Creating a Request
    , managementUploadsDeleteUploadData'
    , ManagementUploadsDeleteUploadData'

    -- * Request Lenses
    , mududQuotaUser
    , mududPrettyPrint
    , mududWebPropertyId
    , mududUserIp
    , mududCustomDataSourceId
    , mududAccountId
    , mududKey
    , mududOauthToken
    , mududFields
    , mududAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementUploadsDeleteUploadData@ which the
-- 'ManagementUploadsDeleteUploadData'' request conforms to.
type ManagementUploadsDeleteUploadDataResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customDataSources" :>
                 Capture "customDataSourceId" Text :>
                   "deleteUploadData" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :> Post '[JSON] ()

-- | Delete data associated with a previous upload.
--
-- /See:/ 'managementUploadsDeleteUploadData'' smart constructor.
data ManagementUploadsDeleteUploadData' = ManagementUploadsDeleteUploadData'
    { _mududQuotaUser          :: !(Maybe Text)
    , _mududPrettyPrint        :: !Bool
    , _mududWebPropertyId      :: !Text
    , _mududUserIp             :: !(Maybe Text)
    , _mududCustomDataSourceId :: !Text
    , _mududAccountId          :: !Text
    , _mududKey                :: !(Maybe Text)
    , _mududOauthToken         :: !(Maybe Text)
    , _mududFields             :: !(Maybe Text)
    , _mududAlt                :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUploadsDeleteUploadData'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mududQuotaUser'
--
-- * 'mududPrettyPrint'
--
-- * 'mududWebPropertyId'
--
-- * 'mududUserIp'
--
-- * 'mududCustomDataSourceId'
--
-- * 'mududAccountId'
--
-- * 'mududKey'
--
-- * 'mududOauthToken'
--
-- * 'mududFields'
--
-- * 'mududAlt'
managementUploadsDeleteUploadData'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'customDataSourceId'
    -> Text -- ^ 'accountId'
    -> ManagementUploadsDeleteUploadData'
managementUploadsDeleteUploadData' pMududWebPropertyId_ pMududCustomDataSourceId_ pMududAccountId_ =
    ManagementUploadsDeleteUploadData'
    { _mududQuotaUser = Nothing
    , _mududPrettyPrint = False
    , _mududWebPropertyId = pMududWebPropertyId_
    , _mududUserIp = Nothing
    , _mududCustomDataSourceId = pMududCustomDataSourceId_
    , _mududAccountId = pMududAccountId_
    , _mududKey = Nothing
    , _mududOauthToken = Nothing
    , _mududFields = Nothing
    , _mududAlt = ALTJSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mududQuotaUser :: Lens' ManagementUploadsDeleteUploadData' (Maybe Text)
mududQuotaUser
  = lens _mududQuotaUser
      (\ s a -> s{_mududQuotaUser = a})

-- | Returns response with indentations and line breaks.
mududPrettyPrint :: Lens' ManagementUploadsDeleteUploadData' Bool
mududPrettyPrint
  = lens _mududPrettyPrint
      (\ s a -> s{_mududPrettyPrint = a})

-- | Web property Id for the uploads to be deleted.
mududWebPropertyId :: Lens' ManagementUploadsDeleteUploadData' Text
mududWebPropertyId
  = lens _mududWebPropertyId
      (\ s a -> s{_mududWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mududUserIp :: Lens' ManagementUploadsDeleteUploadData' (Maybe Text)
mududUserIp
  = lens _mududUserIp (\ s a -> s{_mududUserIp = a})

-- | Custom data source Id for the uploads to be deleted.
mududCustomDataSourceId :: Lens' ManagementUploadsDeleteUploadData' Text
mududCustomDataSourceId
  = lens _mududCustomDataSourceId
      (\ s a -> s{_mududCustomDataSourceId = a})

-- | Account Id for the uploads to be deleted.
mududAccountId :: Lens' ManagementUploadsDeleteUploadData' Text
mududAccountId
  = lens _mududAccountId
      (\ s a -> s{_mududAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mududKey :: Lens' ManagementUploadsDeleteUploadData' (Maybe Text)
mududKey = lens _mududKey (\ s a -> s{_mududKey = a})

-- | OAuth 2.0 token for the current user.
mududOauthToken :: Lens' ManagementUploadsDeleteUploadData' (Maybe Text)
mududOauthToken
  = lens _mududOauthToken
      (\ s a -> s{_mududOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mududFields :: Lens' ManagementUploadsDeleteUploadData' (Maybe Text)
mududFields
  = lens _mududFields (\ s a -> s{_mududFields = a})

-- | Data format for the response.
mududAlt :: Lens' ManagementUploadsDeleteUploadData' Alt
mududAlt = lens _mududAlt (\ s a -> s{_mududAlt = a})

instance GoogleRequest
         ManagementUploadsDeleteUploadData' where
        type Rs ManagementUploadsDeleteUploadData' = ()
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementUploadsDeleteUploadData'{..}
          = go _mududQuotaUser (Just _mududPrettyPrint)
              _mududWebPropertyId
              _mududUserIp
              _mududCustomDataSourceId
              _mududAccountId
              _mududKey
              _mududOauthToken
              _mududFields
              (Just _mududAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementUploadsDeleteUploadDataResource)
                      r
                      u
