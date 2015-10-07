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
    , mududUserIP
    , mududCustomDataSourceId
    , mududPayload
    , mududAccountId
    , mududKey
    , mududOAuthToken
    , mududFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementUploadsDeleteUploadData@ method which the
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
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON]
                                     AnalyticsDataimportDeleteUploadDataRequest
                                     :> Post '[JSON] ()

-- | Delete data associated with a previous upload.
--
-- /See:/ 'managementUploadsDeleteUploadData'' smart constructor.
data ManagementUploadsDeleteUploadData' = ManagementUploadsDeleteUploadData'
    { _mududQuotaUser          :: !(Maybe Text)
    , _mududPrettyPrint        :: !Bool
    , _mududWebPropertyId      :: !Text
    , _mududUserIP             :: !(Maybe Text)
    , _mududCustomDataSourceId :: !Text
    , _mududPayload            :: !AnalyticsDataimportDeleteUploadDataRequest
    , _mududAccountId          :: !Text
    , _mududKey                :: !(Maybe AuthKey)
    , _mududOAuthToken         :: !(Maybe OAuthToken)
    , _mududFields             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mududUserIP'
--
-- * 'mududCustomDataSourceId'
--
-- * 'mududPayload'
--
-- * 'mududAccountId'
--
-- * 'mududKey'
--
-- * 'mududOAuthToken'
--
-- * 'mududFields'
managementUploadsDeleteUploadData'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'customDataSourceId'
    -> AnalyticsDataimportDeleteUploadDataRequest -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementUploadsDeleteUploadData'
managementUploadsDeleteUploadData' pMududWebPropertyId_ pMududCustomDataSourceId_ pMududPayload_ pMududAccountId_ =
    ManagementUploadsDeleteUploadData'
    { _mududQuotaUser = Nothing
    , _mududPrettyPrint = False
    , _mududWebPropertyId = pMududWebPropertyId_
    , _mududUserIP = Nothing
    , _mududCustomDataSourceId = pMududCustomDataSourceId_
    , _mududPayload = pMududPayload_
    , _mududAccountId = pMududAccountId_
    , _mududKey = Nothing
    , _mududOAuthToken = Nothing
    , _mududFields = Nothing
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
mududUserIP :: Lens' ManagementUploadsDeleteUploadData' (Maybe Text)
mududUserIP
  = lens _mududUserIP (\ s a -> s{_mududUserIP = a})

-- | Custom data source Id for the uploads to be deleted.
mududCustomDataSourceId :: Lens' ManagementUploadsDeleteUploadData' Text
mududCustomDataSourceId
  = lens _mududCustomDataSourceId
      (\ s a -> s{_mududCustomDataSourceId = a})

-- | Multipart request metadata.
mududPayload :: Lens' ManagementUploadsDeleteUploadData' AnalyticsDataimportDeleteUploadDataRequest
mududPayload
  = lens _mududPayload (\ s a -> s{_mududPayload = a})

-- | Account Id for the uploads to be deleted.
mududAccountId :: Lens' ManagementUploadsDeleteUploadData' Text
mududAccountId
  = lens _mududAccountId
      (\ s a -> s{_mududAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mududKey :: Lens' ManagementUploadsDeleteUploadData' (Maybe AuthKey)
mududKey = lens _mududKey (\ s a -> s{_mududKey = a})

-- | OAuth 2.0 token for the current user.
mududOAuthToken :: Lens' ManagementUploadsDeleteUploadData' (Maybe OAuthToken)
mududOAuthToken
  = lens _mududOAuthToken
      (\ s a -> s{_mududOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mududFields :: Lens' ManagementUploadsDeleteUploadData' (Maybe Text)
mududFields
  = lens _mududFields (\ s a -> s{_mududFields = a})

instance GoogleAuth
         ManagementUploadsDeleteUploadData' where
        _AuthKey = mududKey . _Just
        _AuthToken = mududOAuthToken . _Just

instance GoogleRequest
         ManagementUploadsDeleteUploadData' where
        type Rs ManagementUploadsDeleteUploadData' = ()
        request = requestWith analyticsRequest
        requestWith rq ManagementUploadsDeleteUploadData'{..}
          = go _mududAccountId _mududWebPropertyId
              _mududCustomDataSourceId
              _mududQuotaUser
              (Just _mududPrettyPrint)
              _mududUserIP
              _mududFields
              _mududKey
              _mududOAuthToken
              (Just AltJSON)
              _mududPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ManagementUploadsDeleteUploadDataResource)
                      rq
