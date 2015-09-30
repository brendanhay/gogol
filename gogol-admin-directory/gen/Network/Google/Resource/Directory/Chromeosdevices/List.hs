{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Chromeosdevices.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve all Chrome OS Devices of a customer (paginated)
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryChromeosdevicesList@.
module Directory.Chromeosdevices.List
    (
    -- * REST Resource
      ChromeosdevicesListAPI

    -- * Creating a Request
    , chromeosdevicesList
    , ChromeosdevicesList

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clOrderBy
    , clUserIp
    , clCustomerId
    , clSortOrder
    , clKey
    , clQuery
    , clProjection
    , clPageToken
    , clOauthToken
    , clMaxResults
    , clFields
    , clAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryChromeosdevicesList@ which the
-- 'ChromeosdevicesList' request conforms to.
type ChromeosdevicesListAPI =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "chromeos" :>
             QueryParam "orderBy" Text :>
               QueryParam "sortOrder" Text :>
                 QueryParam "query" Text :>
                   QueryParam "projection" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Int32 :>
                         Get '[JSON] ChromeOsDevices

-- | Retrieve all Chrome OS Devices of a customer (paginated)
--
-- /See:/ 'chromeosdevicesList' smart constructor.
data ChromeosdevicesList = ChromeosdevicesList
    { _clQuotaUser   :: !(Maybe Text)
    , _clPrettyPrint :: !Bool
    , _clOrderBy     :: !(Maybe Text)
    , _clUserIp      :: !(Maybe Text)
    , _clCustomerId  :: !Text
    , _clSortOrder   :: !(Maybe Text)
    , _clKey         :: !(Maybe Text)
    , _clQuery       :: !(Maybe Text)
    , _clProjection  :: !(Maybe Text)
    , _clPageToken   :: !(Maybe Text)
    , _clOauthToken  :: !(Maybe Text)
    , _clMaxResults  :: !(Maybe Int32)
    , _clFields      :: !(Maybe Text)
    , _clAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeosdevicesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clOrderBy'
--
-- * 'clUserIp'
--
-- * 'clCustomerId'
--
-- * 'clSortOrder'
--
-- * 'clKey'
--
-- * 'clQuery'
--
-- * 'clProjection'
--
-- * 'clPageToken'
--
-- * 'clOauthToken'
--
-- * 'clMaxResults'
--
-- * 'clFields'
--
-- * 'clAlt'
chromeosdevicesList
    :: Text -- ^ 'customerId'
    -> ChromeosdevicesList
chromeosdevicesList pClCustomerId_ =
    ChromeosdevicesList
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clOrderBy = Nothing
    , _clUserIp = Nothing
    , _clCustomerId = pClCustomerId_
    , _clSortOrder = Nothing
    , _clKey = Nothing
    , _clQuery = Nothing
    , _clProjection = Nothing
    , _clPageToken = Nothing
    , _clOauthToken = Nothing
    , _clMaxResults = Nothing
    , _clFields = Nothing
    , _clAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' ChromeosdevicesList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' ChromeosdevicesList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | Column to use for sorting results
clOrderBy :: Lens' ChromeosdevicesList' (Maybe Text)
clOrderBy
  = lens _clOrderBy (\ s a -> s{_clOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIp :: Lens' ChromeosdevicesList' (Maybe Text)
clUserIp = lens _clUserIp (\ s a -> s{_clUserIp = a})

-- | Immutable id of the Google Apps account
clCustomerId :: Lens' ChromeosdevicesList' Text
clCustomerId
  = lens _clCustomerId (\ s a -> s{_clCustomerId = a})

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
clSortOrder :: Lens' ChromeosdevicesList' (Maybe Text)
clSortOrder
  = lens _clSortOrder (\ s a -> s{_clSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' ChromeosdevicesList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | Search string in the format given at
-- http:\/\/support.google.com\/chromeos\/a\/bin\/answer.py?hl=en&answer=1698333
clQuery :: Lens' ChromeosdevicesList' (Maybe Text)
clQuery = lens _clQuery (\ s a -> s{_clQuery = a})

-- | Restrict information returned to a set of selected fields.
clProjection :: Lens' ChromeosdevicesList' (Maybe Text)
clProjection
  = lens _clProjection (\ s a -> s{_clProjection = a})

-- | Token to specify next page in the list
clPageToken :: Lens' ChromeosdevicesList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' ChromeosdevicesList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | Maximum number of results to return. Default is 100
clMaxResults :: Lens' ChromeosdevicesList' (Maybe Int32)
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' ChromeosdevicesList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Data format for the response.
clAlt :: Lens' ChromeosdevicesList' Text
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest ChromeosdevicesList' where
        type Rs ChromeosdevicesList' = ChromeOsDevices
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u ChromeosdevicesList{..}
          = go _clQuotaUser _clPrettyPrint _clOrderBy _clUserIp
              _clCustomerId
              _clSortOrder
              _clKey
              _clQuery
              _clProjection
              _clPageToken
              _clOauthToken
              _clMaxResults
              _clFields
              _clAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChromeosdevicesListAPI)
                      r
                      u
