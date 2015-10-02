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
-- Module      : Network.Google.Resource.Directory.MobileDevices.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve all Mobile Devices of a customer (paginated)
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMobileDevicesList@.
module Network.Google.Resource.Directory.MobileDevices.List
    (
    -- * REST Resource
      MobileDevicesListResource

    -- * Creating a Request
    , mobileDevicesList'
    , MobileDevicesList'

    -- * Request Lenses
    , mdlQuotaUser
    , mdlPrettyPrint
    , mdlOrderBy
    , mdlUserIP
    , mdlCustomerId
    , mdlSortOrder
    , mdlKey
    , mdlQuery
    , mdlProjection
    , mdlPageToken
    , mdlOAuthToken
    , mdlMaxResults
    , mdlFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMobileDevicesList@ which the
-- 'MobileDevicesList'' request conforms to.
type MobileDevicesListResource =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "mobile" :>
             QueryParam "maxResults" Int32 :>
               QueryParam "orderBy"
                 DirectoryMobileDevicesListOrderBy
                 :>
                 QueryParam "pageToken" Text :>
                   QueryParam "projection"
                     DirectoryMobileDevicesListProjection
                     :>
                     QueryParam "query" Text :>
                       QueryParam "sortOrder"
                         DirectoryMobileDevicesListSortOrder
                         :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" Key :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] MobileDevices

-- | Retrieve all Mobile Devices of a customer (paginated)
--
-- /See:/ 'mobileDevicesList'' smart constructor.
data MobileDevicesList' = MobileDevicesList'
    { _mdlQuotaUser   :: !(Maybe Text)
    , _mdlPrettyPrint :: !Bool
    , _mdlOrderBy     :: !(Maybe DirectoryMobileDevicesListOrderBy)
    , _mdlUserIP      :: !(Maybe Text)
    , _mdlCustomerId  :: !Text
    , _mdlSortOrder   :: !(Maybe DirectoryMobileDevicesListSortOrder)
    , _mdlKey         :: !(Maybe Key)
    , _mdlQuery       :: !(Maybe Text)
    , _mdlProjection  :: !(Maybe DirectoryMobileDevicesListProjection)
    , _mdlPageToken   :: !(Maybe Text)
    , _mdlOAuthToken  :: !(Maybe OAuthToken)
    , _mdlMaxResults  :: !(Maybe Int32)
    , _mdlFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileDevicesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdlQuotaUser'
--
-- * 'mdlPrettyPrint'
--
-- * 'mdlOrderBy'
--
-- * 'mdlUserIP'
--
-- * 'mdlCustomerId'
--
-- * 'mdlSortOrder'
--
-- * 'mdlKey'
--
-- * 'mdlQuery'
--
-- * 'mdlProjection'
--
-- * 'mdlPageToken'
--
-- * 'mdlOAuthToken'
--
-- * 'mdlMaxResults'
--
-- * 'mdlFields'
mobileDevicesList'
    :: Text -- ^ 'customerId'
    -> MobileDevicesList'
mobileDevicesList' pMdlCustomerId_ =
    MobileDevicesList'
    { _mdlQuotaUser = Nothing
    , _mdlPrettyPrint = True
    , _mdlOrderBy = Nothing
    , _mdlUserIP = Nothing
    , _mdlCustomerId = pMdlCustomerId_
    , _mdlSortOrder = Nothing
    , _mdlKey = Nothing
    , _mdlQuery = Nothing
    , _mdlProjection = Nothing
    , _mdlPageToken = Nothing
    , _mdlOAuthToken = Nothing
    , _mdlMaxResults = Nothing
    , _mdlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mdlQuotaUser :: Lens' MobileDevicesList' (Maybe Text)
mdlQuotaUser
  = lens _mdlQuotaUser (\ s a -> s{_mdlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mdlPrettyPrint :: Lens' MobileDevicesList' Bool
mdlPrettyPrint
  = lens _mdlPrettyPrint
      (\ s a -> s{_mdlPrettyPrint = a})

-- | Column to use for sorting results
mdlOrderBy :: Lens' MobileDevicesList' (Maybe DirectoryMobileDevicesListOrderBy)
mdlOrderBy
  = lens _mdlOrderBy (\ s a -> s{_mdlOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mdlUserIP :: Lens' MobileDevicesList' (Maybe Text)
mdlUserIP
  = lens _mdlUserIP (\ s a -> s{_mdlUserIP = a})

-- | Immutable id of the Google Apps account
mdlCustomerId :: Lens' MobileDevicesList' Text
mdlCustomerId
  = lens _mdlCustomerId
      (\ s a -> s{_mdlCustomerId = a})

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
mdlSortOrder :: Lens' MobileDevicesList' (Maybe DirectoryMobileDevicesListSortOrder)
mdlSortOrder
  = lens _mdlSortOrder (\ s a -> s{_mdlSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdlKey :: Lens' MobileDevicesList' (Maybe Key)
mdlKey = lens _mdlKey (\ s a -> s{_mdlKey = a})

-- | Search string in the format given at
-- http:\/\/support.google.com\/a\/bin\/answer.py?hl=en&answer=1408863#search
mdlQuery :: Lens' MobileDevicesList' (Maybe Text)
mdlQuery = lens _mdlQuery (\ s a -> s{_mdlQuery = a})

-- | Restrict information returned to a set of selected fields.
mdlProjection :: Lens' MobileDevicesList' (Maybe DirectoryMobileDevicesListProjection)
mdlProjection
  = lens _mdlProjection
      (\ s a -> s{_mdlProjection = a})

-- | Token to specify next page in the list
mdlPageToken :: Lens' MobileDevicesList' (Maybe Text)
mdlPageToken
  = lens _mdlPageToken (\ s a -> s{_mdlPageToken = a})

-- | OAuth 2.0 token for the current user.
mdlOAuthToken :: Lens' MobileDevicesList' (Maybe OAuthToken)
mdlOAuthToken
  = lens _mdlOAuthToken
      (\ s a -> s{_mdlOAuthToken = a})

-- | Maximum number of results to return. Default is 100
mdlMaxResults :: Lens' MobileDevicesList' (Maybe Int32)
mdlMaxResults
  = lens _mdlMaxResults
      (\ s a -> s{_mdlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mdlFields :: Lens' MobileDevicesList' (Maybe Text)
mdlFields
  = lens _mdlFields (\ s a -> s{_mdlFields = a})

instance GoogleAuth MobileDevicesList' where
        authKey = mdlKey . _Just
        authToken = mdlOAuthToken . _Just

instance GoogleRequest MobileDevicesList' where
        type Rs MobileDevicesList' = MobileDevices
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MobileDevicesList'{..}
          = go _mdlMaxResults _mdlOrderBy _mdlPageToken
              _mdlProjection
              _mdlQuery
              _mdlSortOrder
              _mdlCustomerId
              _mdlQuotaUser
              (Just _mdlPrettyPrint)
              _mdlUserIP
              _mdlFields
              _mdlKey
              _mdlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MobileDevicesListResource)
                      r
                      u
