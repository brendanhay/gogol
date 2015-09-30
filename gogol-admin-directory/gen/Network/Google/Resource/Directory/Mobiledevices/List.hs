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
-- Module      : Network.Google.Resource.Directory.Mobiledevices.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve all Mobile Devices of a customer (paginated)
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMobiledevicesList@.
module Network.Google.Resource.Directory.Mobiledevices.List
    (
    -- * REST Resource
      MobiledevicesListResource

    -- * Creating a Request
    , mobiledevicesList'
    , MobiledevicesList'

    -- * Request Lenses
    , mQuotaUser
    , mPrettyPrint
    , mOrderBy
    , mUserIp
    , mCustomerId
    , mSortOrder
    , mKey
    , mQuery
    , mProjection
    , mPageToken
    , mOauthToken
    , mMaxResults
    , mFields
    , mAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMobiledevicesList@ which the
-- 'MobiledevicesList'' request conforms to.
type MobiledevicesListResource =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "mobile" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "orderBy"
                   DirectoryMobiledevicesListOrderBy
                   :>
                   QueryParam "userIp" Text :>
                     QueryParam "sortOrder"
                       DirectoryMobiledevicesListSortOrder
                       :>
                       QueryParam "key" Text :>
                         QueryParam "query" Text :>
                           QueryParam "projection"
                             DirectoryMobiledevicesListProjection
                             :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Int32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Alt :>
                                       Get '[JSON] MobileDevices

-- | Retrieve all Mobile Devices of a customer (paginated)
--
-- /See:/ 'mobiledevicesList'' smart constructor.
data MobiledevicesList' = MobiledevicesList'
    { _mQuotaUser   :: !(Maybe Text)
    , _mPrettyPrint :: !Bool
    , _mOrderBy     :: !(Maybe DirectoryMobiledevicesListOrderBy)
    , _mUserIp      :: !(Maybe Text)
    , _mCustomerId  :: !Text
    , _mSortOrder   :: !(Maybe DirectoryMobiledevicesListSortOrder)
    , _mKey         :: !(Maybe Text)
    , _mQuery       :: !(Maybe Text)
    , _mProjection  :: !(Maybe DirectoryMobiledevicesListProjection)
    , _mPageToken   :: !(Maybe Text)
    , _mOauthToken  :: !(Maybe Text)
    , _mMaxResults  :: !(Maybe Int32)
    , _mFields      :: !(Maybe Text)
    , _mAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobiledevicesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mQuotaUser'
--
-- * 'mPrettyPrint'
--
-- * 'mOrderBy'
--
-- * 'mUserIp'
--
-- * 'mCustomerId'
--
-- * 'mSortOrder'
--
-- * 'mKey'
--
-- * 'mQuery'
--
-- * 'mProjection'
--
-- * 'mPageToken'
--
-- * 'mOauthToken'
--
-- * 'mMaxResults'
--
-- * 'mFields'
--
-- * 'mAlt'
mobiledevicesList'
    :: Text -- ^ 'customerId'
    -> MobiledevicesList'
mobiledevicesList' pMCustomerId_ =
    MobiledevicesList'
    { _mQuotaUser = Nothing
    , _mPrettyPrint = True
    , _mOrderBy = Nothing
    , _mUserIp = Nothing
    , _mCustomerId = pMCustomerId_
    , _mSortOrder = Nothing
    , _mKey = Nothing
    , _mQuery = Nothing
    , _mProjection = Nothing
    , _mPageToken = Nothing
    , _mOauthToken = Nothing
    , _mMaxResults = Nothing
    , _mFields = Nothing
    , _mAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mQuotaUser :: Lens' MobiledevicesList' (Maybe Text)
mQuotaUser
  = lens _mQuotaUser (\ s a -> s{_mQuotaUser = a})

-- | Returns response with indentations and line breaks.
mPrettyPrint :: Lens' MobiledevicesList' Bool
mPrettyPrint
  = lens _mPrettyPrint (\ s a -> s{_mPrettyPrint = a})

-- | Column to use for sorting results
mOrderBy :: Lens' MobiledevicesList' (Maybe DirectoryMobiledevicesListOrderBy)
mOrderBy = lens _mOrderBy (\ s a -> s{_mOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mUserIp :: Lens' MobiledevicesList' (Maybe Text)
mUserIp = lens _mUserIp (\ s a -> s{_mUserIp = a})

-- | Immutable id of the Google Apps account
mCustomerId :: Lens' MobiledevicesList' Text
mCustomerId
  = lens _mCustomerId (\ s a -> s{_mCustomerId = a})

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
mSortOrder :: Lens' MobiledevicesList' (Maybe DirectoryMobiledevicesListSortOrder)
mSortOrder
  = lens _mSortOrder (\ s a -> s{_mSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mKey :: Lens' MobiledevicesList' (Maybe Text)
mKey = lens _mKey (\ s a -> s{_mKey = a})

-- | Search string in the format given at
-- http:\/\/support.google.com\/a\/bin\/answer.py?hl=en&answer=1408863#search
mQuery :: Lens' MobiledevicesList' (Maybe Text)
mQuery = lens _mQuery (\ s a -> s{_mQuery = a})

-- | Restrict information returned to a set of selected fields.
mProjection :: Lens' MobiledevicesList' (Maybe DirectoryMobiledevicesListProjection)
mProjection
  = lens _mProjection (\ s a -> s{_mProjection = a})

-- | Token to specify next page in the list
mPageToken :: Lens' MobiledevicesList' (Maybe Text)
mPageToken
  = lens _mPageToken (\ s a -> s{_mPageToken = a})

-- | OAuth 2.0 token for the current user.
mOauthToken :: Lens' MobiledevicesList' (Maybe Text)
mOauthToken
  = lens _mOauthToken (\ s a -> s{_mOauthToken = a})

-- | Maximum number of results to return. Default is 100
mMaxResults :: Lens' MobiledevicesList' (Maybe Int32)
mMaxResults
  = lens _mMaxResults (\ s a -> s{_mMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mFields :: Lens' MobiledevicesList' (Maybe Text)
mFields = lens _mFields (\ s a -> s{_mFields = a})

-- | Data format for the response.
mAlt :: Lens' MobiledevicesList' Alt
mAlt = lens _mAlt (\ s a -> s{_mAlt = a})

instance GoogleRequest MobiledevicesList' where
        type Rs MobiledevicesList' = MobileDevices
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MobiledevicesList'{..}
          = go _mQuotaUser (Just _mPrettyPrint) _mOrderBy
              _mUserIp
              _mCustomerId
              _mSortOrder
              _mKey
              _mQuery
              _mProjection
              _mPageToken
              _mOauthToken
              _mMaxResults
              _mFields
              (Just _mAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MobiledevicesListResource)
                      r
                      u
