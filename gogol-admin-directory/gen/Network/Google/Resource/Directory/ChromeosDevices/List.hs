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
-- Module      : Network.Google.Resource.Directory.ChromeosDevices.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve all Chrome OS Devices of a customer (paginated)
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryChromeosDevicesList@.
module Network.Google.Resource.Directory.ChromeosDevices.List
    (
    -- * REST Resource
      ChromeosDevicesListResource

    -- * Creating a Request
    , chromeosDevicesList'
    , ChromeosDevicesList'

    -- * Request Lenses
    , cdlQuotaUser
    , cdlPrettyPrint
    , cdlOrderBy
    , cdlUserIP
    , cdlCustomerId
    , cdlSortOrder
    , cdlKey
    , cdlQuery
    , cdlProjection
    , cdlPageToken
    , cdlOAuthToken
    , cdlMaxResults
    , cdlFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryChromeosDevicesList@ which the
-- 'ChromeosDevicesList'' request conforms to.
type ChromeosDevicesListResource =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "chromeos" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "orderBy"
                   DirectoryChromeosDevicesListOrderBy
                   :>
                   QueryParam "userIp" Text :>
                     QueryParam "sortOrder"
                       DirectoryChromeosDevicesListSortOrder
                       :>
                       QueryParam "key" Key :>
                         QueryParam "query" Text :>
                           QueryParam "projection"
                             DirectoryChromeosDevicesListProjection
                             :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "maxResults" Int32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] ChromeOSDevices

-- | Retrieve all Chrome OS Devices of a customer (paginated)
--
-- /See:/ 'chromeosDevicesList'' smart constructor.
data ChromeosDevicesList' = ChromeosDevicesList'
    { _cdlQuotaUser   :: !(Maybe Text)
    , _cdlPrettyPrint :: !Bool
    , _cdlOrderBy     :: !(Maybe DirectoryChromeosDevicesListOrderBy)
    , _cdlUserIP      :: !(Maybe Text)
    , _cdlCustomerId  :: !Text
    , _cdlSortOrder   :: !(Maybe DirectoryChromeosDevicesListSortOrder)
    , _cdlKey         :: !(Maybe Key)
    , _cdlQuery       :: !(Maybe Text)
    , _cdlProjection  :: !(Maybe DirectoryChromeosDevicesListProjection)
    , _cdlPageToken   :: !(Maybe Text)
    , _cdlOAuthToken  :: !(Maybe OAuthToken)
    , _cdlMaxResults  :: !(Maybe Int32)
    , _cdlFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeosDevicesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdlQuotaUser'
--
-- * 'cdlPrettyPrint'
--
-- * 'cdlOrderBy'
--
-- * 'cdlUserIP'
--
-- * 'cdlCustomerId'
--
-- * 'cdlSortOrder'
--
-- * 'cdlKey'
--
-- * 'cdlQuery'
--
-- * 'cdlProjection'
--
-- * 'cdlPageToken'
--
-- * 'cdlOAuthToken'
--
-- * 'cdlMaxResults'
--
-- * 'cdlFields'
chromeosDevicesList'
    :: Text -- ^ 'customerId'
    -> ChromeosDevicesList'
chromeosDevicesList' pCdlCustomerId_ =
    ChromeosDevicesList'
    { _cdlQuotaUser = Nothing
    , _cdlPrettyPrint = True
    , _cdlOrderBy = Nothing
    , _cdlUserIP = Nothing
    , _cdlCustomerId = pCdlCustomerId_
    , _cdlSortOrder = Nothing
    , _cdlKey = Nothing
    , _cdlQuery = Nothing
    , _cdlProjection = Nothing
    , _cdlPageToken = Nothing
    , _cdlOAuthToken = Nothing
    , _cdlMaxResults = Nothing
    , _cdlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdlQuotaUser :: Lens' ChromeosDevicesList' (Maybe Text)
cdlQuotaUser
  = lens _cdlQuotaUser (\ s a -> s{_cdlQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdlPrettyPrint :: Lens' ChromeosDevicesList' Bool
cdlPrettyPrint
  = lens _cdlPrettyPrint
      (\ s a -> s{_cdlPrettyPrint = a})

-- | Column to use for sorting results
cdlOrderBy :: Lens' ChromeosDevicesList' (Maybe DirectoryChromeosDevicesListOrderBy)
cdlOrderBy
  = lens _cdlOrderBy (\ s a -> s{_cdlOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdlUserIP :: Lens' ChromeosDevicesList' (Maybe Text)
cdlUserIP
  = lens _cdlUserIP (\ s a -> s{_cdlUserIP = a})

-- | Immutable id of the Google Apps account
cdlCustomerId :: Lens' ChromeosDevicesList' Text
cdlCustomerId
  = lens _cdlCustomerId
      (\ s a -> s{_cdlCustomerId = a})

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
cdlSortOrder :: Lens' ChromeosDevicesList' (Maybe DirectoryChromeosDevicesListSortOrder)
cdlSortOrder
  = lens _cdlSortOrder (\ s a -> s{_cdlSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdlKey :: Lens' ChromeosDevicesList' (Maybe Key)
cdlKey = lens _cdlKey (\ s a -> s{_cdlKey = a})

-- | Search string in the format given at
-- http:\/\/support.google.com\/chromeos\/a\/bin\/answer.py?hl=en&answer=1698333
cdlQuery :: Lens' ChromeosDevicesList' (Maybe Text)
cdlQuery = lens _cdlQuery (\ s a -> s{_cdlQuery = a})

-- | Restrict information returned to a set of selected fields.
cdlProjection :: Lens' ChromeosDevicesList' (Maybe DirectoryChromeosDevicesListProjection)
cdlProjection
  = lens _cdlProjection
      (\ s a -> s{_cdlProjection = a})

-- | Token to specify next page in the list
cdlPageToken :: Lens' ChromeosDevicesList' (Maybe Text)
cdlPageToken
  = lens _cdlPageToken (\ s a -> s{_cdlPageToken = a})

-- | OAuth 2.0 token for the current user.
cdlOAuthToken :: Lens' ChromeosDevicesList' (Maybe OAuthToken)
cdlOAuthToken
  = lens _cdlOAuthToken
      (\ s a -> s{_cdlOAuthToken = a})

-- | Maximum number of results to return. Default is 100
cdlMaxResults :: Lens' ChromeosDevicesList' (Maybe Int32)
cdlMaxResults
  = lens _cdlMaxResults
      (\ s a -> s{_cdlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
cdlFields :: Lens' ChromeosDevicesList' (Maybe Text)
cdlFields
  = lens _cdlFields (\ s a -> s{_cdlFields = a})

instance GoogleAuth ChromeosDevicesList' where
        authKey = cdlKey . _Just
        authToken = cdlOAuthToken . _Just

instance GoogleRequest ChromeosDevicesList' where
        type Rs ChromeosDevicesList' = ChromeOSDevices
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u ChromeosDevicesList'{..}
          = go _cdlQuotaUser (Just _cdlPrettyPrint) _cdlOrderBy
              _cdlUserIP
              _cdlCustomerId
              _cdlSortOrder
              _cdlKey
              _cdlQuery
              _cdlProjection
              _cdlPageToken
              _cdlOAuthToken
              _cdlMaxResults
              _cdlFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChromeosDevicesListResource)
                      r
                      u
