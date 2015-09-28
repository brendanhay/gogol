{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Mobiledevices.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve all Mobile Devices of a customer (paginated)
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.mobiledevices.list@.
module Network.Google.API.Directory.Mobiledevices.List
    (
    -- * REST Resource
      MobiledevicesListAPI

    -- * Creating a Request
    , mobiledevicesList'
    , MobiledevicesList'

    -- * Request Lenses
    , mobQuotaUser
    , mobPrettyPrint
    , mobOrderBy
    , mobUserIp
    , mobCustomerId
    , mobSortOrder
    , mobKey
    , mobQuery
    , mobProjection
    , mobPageToken
    , mobOauthToken
    , mobMaxResults
    , mobFields
    , mobAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.mobiledevices.list which the
-- 'MobiledevicesList'' request conforms to.
type MobiledevicesListAPI =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "mobile" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "orderBy" MobiledevicesList'OrderBy :>
                   QueryParam "userIp" Text :>
                     QueryParam "sortOrder" MobiledevicesList'SortOrder :>
                       QueryParam "key" Text :>
                         QueryParam "query" Text :>
                           QueryParam "projection" MobiledevicesList'Projection
                             :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Nat :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Alt :>
                                       Get '[JSON] MobileDevices

-- | Retrieve all Mobile Devices of a customer (paginated)
--
-- /See:/ 'mobiledevicesList'' smart constructor.
data MobiledevicesList' = MobiledevicesList'
    { _mobQuotaUser   :: !(Maybe Text)
    , _mobPrettyPrint :: !Bool
    , _mobOrderBy     :: !(Maybe MobiledevicesList'OrderBy)
    , _mobUserIp      :: !(Maybe Text)
    , _mobCustomerId  :: !Text
    , _mobSortOrder   :: !(Maybe MobiledevicesList'SortOrder)
    , _mobKey         :: !(Maybe Text)
    , _mobQuery       :: !(Maybe Text)
    , _mobProjection  :: !(Maybe MobiledevicesList'Projection)
    , _mobPageToken   :: !(Maybe Text)
    , _mobOauthToken  :: !(Maybe Text)
    , _mobMaxResults  :: !(Maybe Nat)
    , _mobFields      :: !(Maybe Text)
    , _mobAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobiledevicesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mobQuotaUser'
--
-- * 'mobPrettyPrint'
--
-- * 'mobOrderBy'
--
-- * 'mobUserIp'
--
-- * 'mobCustomerId'
--
-- * 'mobSortOrder'
--
-- * 'mobKey'
--
-- * 'mobQuery'
--
-- * 'mobProjection'
--
-- * 'mobPageToken'
--
-- * 'mobOauthToken'
--
-- * 'mobMaxResults'
--
-- * 'mobFields'
--
-- * 'mobAlt'
mobiledevicesList'
    :: Text -- ^ 'customerId'
    -> MobiledevicesList'
mobiledevicesList' pMobCustomerId_ =
    MobiledevicesList'
    { _mobQuotaUser = Nothing
    , _mobPrettyPrint = True
    , _mobOrderBy = Nothing
    , _mobUserIp = Nothing
    , _mobCustomerId = pMobCustomerId_
    , _mobSortOrder = Nothing
    , _mobKey = Nothing
    , _mobQuery = Nothing
    , _mobProjection = Nothing
    , _mobPageToken = Nothing
    , _mobOauthToken = Nothing
    , _mobMaxResults = Nothing
    , _mobFields = Nothing
    , _mobAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mobQuotaUser :: Lens' MobiledevicesList' (Maybe Text)
mobQuotaUser
  = lens _mobQuotaUser (\ s a -> s{_mobQuotaUser = a})

-- | Returns response with indentations and line breaks.
mobPrettyPrint :: Lens' MobiledevicesList' Bool
mobPrettyPrint
  = lens _mobPrettyPrint
      (\ s a -> s{_mobPrettyPrint = a})

-- | Column to use for sorting results
mobOrderBy :: Lens' MobiledevicesList' (Maybe MobiledevicesList'OrderBy)
mobOrderBy
  = lens _mobOrderBy (\ s a -> s{_mobOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mobUserIp :: Lens' MobiledevicesList' (Maybe Text)
mobUserIp
  = lens _mobUserIp (\ s a -> s{_mobUserIp = a})

-- | Immutable id of the Google Apps account
mobCustomerId :: Lens' MobiledevicesList' Text
mobCustomerId
  = lens _mobCustomerId
      (\ s a -> s{_mobCustomerId = a})

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
mobSortOrder :: Lens' MobiledevicesList' (Maybe MobiledevicesList'SortOrder)
mobSortOrder
  = lens _mobSortOrder (\ s a -> s{_mobSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mobKey :: Lens' MobiledevicesList' (Maybe Text)
mobKey = lens _mobKey (\ s a -> s{_mobKey = a})

-- | Search string in the format given at
-- http:\/\/support.google.com\/a\/bin\/answer.py?hl=en&answer=1408863#search
mobQuery :: Lens' MobiledevicesList' (Maybe Text)
mobQuery = lens _mobQuery (\ s a -> s{_mobQuery = a})

-- | Restrict information returned to a set of selected fields.
mobProjection :: Lens' MobiledevicesList' (Maybe MobiledevicesList'Projection)
mobProjection
  = lens _mobProjection
      (\ s a -> s{_mobProjection = a})

-- | Token to specify next page in the list
mobPageToken :: Lens' MobiledevicesList' (Maybe Text)
mobPageToken
  = lens _mobPageToken (\ s a -> s{_mobPageToken = a})

-- | OAuth 2.0 token for the current user.
mobOauthToken :: Lens' MobiledevicesList' (Maybe Text)
mobOauthToken
  = lens _mobOauthToken
      (\ s a -> s{_mobOauthToken = a})

-- | Maximum number of results to return. Default is 100
mobMaxResults :: Lens' MobiledevicesList' (Maybe Natural)
mobMaxResults
  = lens _mobMaxResults
      (\ s a -> s{_mobMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
mobFields :: Lens' MobiledevicesList' (Maybe Text)
mobFields
  = lens _mobFields (\ s a -> s{_mobFields = a})

-- | Data format for the response.
mobAlt :: Lens' MobiledevicesList' Alt
mobAlt = lens _mobAlt (\ s a -> s{_mobAlt = a})

instance GoogleRequest MobiledevicesList' where
        type Rs MobiledevicesList' = MobileDevices
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MobiledevicesList'{..}
          = go _mobQuotaUser (Just _mobPrettyPrint) _mobOrderBy
              _mobUserIp
              _mobCustomerId
              _mobSortOrder
              _mobKey
              _mobQuery
              _mobProjection
              _mobPageToken
              _mobOauthToken
              _mobMaxResults
              _mobFields
              (Just _mobAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MobiledevicesListAPI)
                      r
                      u
